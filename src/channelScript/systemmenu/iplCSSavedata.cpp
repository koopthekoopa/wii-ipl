#include "channelScript/iplCSLibrary.h"
#include "iplSystem.h"

#include "system/iplNandWrapper.h"
#include "system/odh.h"

#include <revolution/cx.h>
#include <revolution/net/NETDigest.h>
#include <revolution/vf.h>

#define MAX_PATH_LENGTH (sizeof(wchar_t) * 32)
#define METHOD_COUNT 21
#define PROPERTY_COUNT 3

namespace ipl {
    namespace cs {
        namespace savedata {
            struct data {
                char unk_0x00[MAX_PATH_LENGTH + sizeof(wchar_t)]; // 0x00
                char sPath[MAX_PATH_LENGTH + sizeof(wchar_t)];    // 0x42
                u8 flag;                                          // 0x84
                u8* pData;                                        // 0x88
                u32 size;                                         // 0x8B
            };

            enum {
                COMPRESSION_LZ = 0x10,
                COMPRESSION_HUFFMAN = 0x20,
                COMPRESSION_RL = 0x30,
            };

            BOOL load_(CHANSVm* vm, CHANSVmObjHdr* hdr, CHANSVmObjHdr* hdr2, EGG::Heap* heap);
            BOOL load_nand_(CHANSVm* vm, data* data, EGG::Heap* heap, long offset, u32 size, int align);
            BOOL load_vf_(CHANSVm* vm, data* data, EGG::Heap* heap, long offset, u32 size, int align);
            BOOL uncompress_all_(data* data, EGG::Heap* heap, int compressionType);
            BOOL uncompress_front_(data* data, EGG::Heap* heap, u32 outSize, int compressionType);
            BOOL uncompress_(CHANSVm* vm, CHANSVmObjHdr* hdr, CHANSVmObjHdr* hdr2, EGG::Heap* heap);
            u8* get_(CHANSVm* vm, CHANSVmObjHdr* hdr);

            void get_fullpath(char* dest, const char* src) {
                if (src[0] != '/') {
                    u64 tid = System::getCSManager()->getData().titleId;
                    snprintf(dest, MAX_PATH_LENGTH, "/title/%08x/%08x/data/%s", (u32)(tid >> 32 & 0xFFFFFFFF), (u32)(tid & 0xFFFFFFFF), src);
                } else {
                    strncpy(dest, src, MAX_PATH_LENGTH);
                }
                dest[MAX_PATH_LENGTH] = '\0';
            }

            BOOL load_to_work(CHANSVm* vm, CHANSVmObjHdr* hdr, CHANSVmObjHdr* hdr2) {
                return load_(vm, hdr, hdr2, System::getCSManager()->getHeap());
            }

            BOOL load_to_heap(CHANSVm* vm, CHANSVmObjHdr* hdr, CHANSVmObjHdr* hdr2) {
                return load_(vm, hdr, hdr2, System::getCSManager()->getData().heap);
            }

            BOOL load_(CHANSVm* vm, CHANSVmObjHdr* hdr, CHANSVmObjHdr* hdr2, EGG::Heap* heap) {
                BOOL result = FALSE;
                int error = 2;

                if (util::is_valid_datap(hdr)) {
                    CHANSVmObjHdr* arg0 = CHANSVmGetArgInteger(vm, 0);
                    CHANSVmObjHdr* arg1 = CHANSVmGetArgInteger(vm, 1);
                    s64 offset = (arg0 != NULL) ? arg0->value.data.len : 0;
                    u32 size = (arg1 != NULL) ? arg1->value.data.len : 0;
                    data* data = static_cast<savedata::data*>(*hdr->value.ptr_v);

                    if (data->pData == NULL && data->size == 0) {
                        if (data->unk_0x00[0] == 0) {
                            error = load_nand_(vm, data, heap, offset, size, 0x20);
                        } else {
                            error = load_vf_(vm, data, heap, offset, size, 0x20);
                        }

                        result = (u32)(error - 2) != 0;
                        if (result) {
                            if (data->pData != NULL || data->size != 0) {
                                data->flag = 0;
                            }
                        }
                    }
                }
                CHANSVmSetInteger(vm, hdr2, (u32)(error == 0 ? 1 : 0));
                return result;
            }

            BOOL uncomp_to_work(CHANSVm* vm, CHANSVmObjHdr* hdr, CHANSVmObjHdr* hdr2) {
                return uncompress_(vm, hdr, hdr2, System::getCSManager()->getHeap());
            }

            BOOL uncomp_to_heap(CHANSVm* vm, CHANSVmObjHdr* hdr, CHANSVmObjHdr* hdr2) {
                return uncompress_(vm, hdr, hdr2, System::getCSManager()->getData().heap);
            }

            BOOL uncompress_(CHANSVm* vm, CHANSVmObjHdr* hdr, CHANSVmObjHdr* hdr2, EGG::Heap* heap) {
                int error;
                BOOL result = FALSE;

                error = 2;
                if (util::is_valid_datap(hdr)) {
                    data* data = static_cast<savedata::data*>(*hdr->value.ptr_v);

                    if (data->pData == NULL && data->size == 0) {
                        EGG::Heap* csHeap = System::getCSManager()->getHeap();
                        int compressionType = -1;
                        u32 size = 0;
                        u32 outSize = 0;

                        u32 argc = CHANSVmGetArgc(vm);
                        CHANSVmObjHdr* arg0 = CHANSVmGetArgInteger(vm, 0);

                        if (arg0 != NULL) {
                            compressionType = arg0->value.int_v;
                        }

                        if (argc == 3) {
                            CHANSVmObjHdr* arg1 = CHANSVmGetArgInteger(vm, 1);
                            CHANSVmObjHdr* arg2 = CHANSVmGetArgInteger(vm, 2);

                            if (arg1 != NULL) {
                                size = arg1->value.int_v;
                            }

                            if (arg2 != NULL) {
                                outSize = arg2->value.int_v;
                            }
                        }

                        if (data->unk_0x00[0] == '\0') {
                            error = load_nand_(vm, data, csHeap, 0, size, -0x20);
                        } else {
                            error = load_vf_(vm, data, csHeap, 0, size, -0x20);
                        }

                        if (error == 0) {
                            u8* oldBuf = data->pData;

                            if (outSize != 0) {
                                error = uncompress_front_(data, heap, outSize, compressionType);
                            } else {
                                error = uncompress_all_(data, heap, compressionType);
                            }

                            delete[] oldBuf;
                        }

                        result = (error - 2) != 0;
                    }

                    CHANSVmSetInteger(vm, hdr2, error == 0);
                }

                return result;
            }

            BOOL load_nand_(CHANSVm* vm, data* data, EGG::Heap* heap, long offset, u32 size, int align) {
                BOOL result = 1;
                u32 fileSize;
                char pathBuf[0x42];
                NANDFileInfo fileInfo;

                memset(pathBuf, 0, sizeof(pathBuf));
                get_fullpath(pathBuf, data->sPath);
                fileSize = 0;

                if (nand::wrapper::PrivateOpen(pathBuf, &fileInfo, 1) == 0) {
                    if (nand::wrapper::GetLength(&fileInfo, &fileSize) == 0) {
                        if (offset == 0 || (offset > 0 && offset < fileSize && nand::wrapper::Seek(&fileInfo, offset, 0) > 0)) {
                            if (size != 0 && size + offset <= fileSize) {
                                fileSize = size;
                            } else {
                                fileSize = fileSize - offset;
                            }

                            fileSize = ROUNDUP(fileSize, 32);
                            u8* buf = new (heap, align) u8[fileSize];

                            if (buf != NULL && nand::wrapper::Read(&fileInfo, buf, fileSize) > 0) {
                                DCStoreRange(buf, fileSize);
                                data->pData = buf;
                                data->size = fileSize;
                                result = 0;
                            }
                        }
                    } else {
                        result = 2;
                    }

                    if (nand::wrapper::Close(&fileInfo) != 0) {
                        result = 2;
                    }
                }

                return result;
            }

            BOOL load_vf_(CHANSVm* vm, data* data, EGG::Heap* heap, long offset, u32 size, int align) {
                BOOL result = 1;
                char mountBuf[MAX_PATH_LENGTH + sizeof(wchar_t)];
                char vfPath[0x104];
                VFFile* fd;
                u32 readSize = size;
                s32 fileSize;

                memset(mountBuf, 0, sizeof(mountBuf));
                get_fullpath(mountBuf, (const char*)data);
                if (VFMountDriveNANDFlashEx("@CS", mountBuf) == 0) {
                    memset(vfPath, 0, sizeof(vfPath));
                    snprintf(vfPath, 0x103, "%s:/%s", "@CS", data->sPath);
                    fd = VFOpenFile(vfPath, "r", 0);
                    if (fd != NULL) {
                        fileSize = VFGetFileSizeByFd(fd);
                        if (fileSize > 0) {
                            if (offset == 0 || offset > 0 && (u32)offset < fileSize && VFSeekFile(fd, offset, 0) == 0) {
                                if (readSize != 0) {
                                    if (readSize + offset <= fileSize) {
                                        fileSize = readSize;
                                    }
                                }

                                u8* buf = new (heap, align) u8[fileSize];
                                if (buf != NULL && VFReadFile(fd, buf, fileSize, &readSize) == 0) {
                                    DCStoreRange(buf, readSize);
                                    data->pData = buf;

                                    result = 0;
                                    data->size = readSize;
                                }
                            } else {
                                result = 2;
                            }
                        } else {
                            result = 2;
                        }

                        if (VFCloseFile(fd) != 0) {
                            result = 2;
                        }
                    }
                    if (VFUnmountDrive("@CS") != 0) {
                        result = 2;
                    }
                }
                return result;
            }

            BOOL uncompress_all_(data* data, EGG::Heap* heap, int compressionType) {
                BOOL result = TRUE;
                u8* src = data->pData;
                u32 uncompSize = CXGetUncompressedSize(src);

                if (uncompSize == 0) {
                    result = 2;
                } else {
                    u8* dst = new (heap, 32) u8[uncompSize];

                    if (dst != NULL) {
                        memset(dst, 0, uncompSize);

                        if (compressionType == -1) {
                            compressionType = *src & 0xF0;
                        }

                        int cxResult = -1;
                        switch (compressionType) {
                            case COMPRESSION_RL:
                                cxResult = CXSecureUncompressRL(src, data->size, dst);
                                break;
                            case COMPRESSION_LZ:
                                cxResult = CXSecureUncompressLZ(src, data->size, dst);
                                break;
                            case COMPRESSION_HUFFMAN:
                                cxResult = CXSecureUncompressHuffman(src, data->size, dst);
                                break;
                        }

                        if (cxResult == 0) {
                            DCStoreRange(dst, uncompSize);
                            data->pData = dst;
                            result = 0;
                            data->size = uncompSize;
                        } else {
                            delete[] dst;
                            result = 2;
                            data->pData = NULL;
                            data->size = 0;
                        }
                    }
                }

                return result;
            }

            BOOL uncompress_front_(data* data, EGG::Heap* heap, u32 outSize, int compressionType) {
                BOOL result = TRUE;
                u8* src = data->pData;
                u32 uncompSize = CXGetUncompressedSize(src);

                if (uncompSize < outSize) {
                    outSize = uncompSize;
                }

                if (outSize == 0) {
                    result = 2;
                } else {
                    u8* dst = new (heap, 32) u8[outSize];

                    if (dst != NULL) {
                        memset(dst, 0, outSize);

                        void* context = new (System::getCSManager()->getHeap(), 4) CXUncompContextHuffman;
                        if (context != NULL) {
                            result = FALSE;

                            if (compressionType == -1) {
                                compressionType = *src & 0xF0;
                            }

                            s32 readResult = -1;
                            switch (compressionType) {
                                case COMPRESSION_RL: {
                                    CXUncompContextRL* ctx = static_cast<CXUncompContextRL*>(context);
                                    CXInitUncompContextRL(ctx, dst);
                                    ctx->size = outSize;
                                    result = CXReadUncompRL(ctx, src, data->size);
                                    readResult = result;
                                    break;
                                }
                                case COMPRESSION_LZ: {
                                    CXUncompContextLZ* ctx = static_cast<CXUncompContextLZ*>(context);
                                    CXInitUncompContextLZ(ctx, dst);
                                    ctx->size = outSize;
                                    result = CXReadUncompLZ(ctx, src, data->size);
                                    readResult = result;
                                    break;
                                }
                                case COMPRESSION_HUFFMAN: {
                                    CXUncompContextHuffman* ctx = static_cast<CXUncompContextHuffman*>(context);
                                    CXInitUncompContextHuffman(ctx, dst);
                                    ctx->size = outSize;
                                    result = CXReadUncompHuffman(ctx, src, data->size);
                                    readResult = result;
                                    break;
                                }
                            }

                            if (readResult >= 0) {
                                DCStoreRange(dst, outSize);

                                if (result > 0) {
                                    outSize -= result;
                                }

                                data->pData = dst;
                                result = 0;
                                data->size = outSize;
                            } else {
                                delete[] dst;
                                result = 2;
                                data->pData = NULL;
                                data->size = 0;
                            }

                            delete static_cast<CXUncompContextHuffman*>(context);
                        } else {
                            delete[] dst;
                        }
                    }
                }

                return result;
            }

            BOOL copy_to_heap(CHANSVm* vm, CHANSVmObjHdr* hdr, CHANSVmObjHdr* hdr2) {
                BOOL result = FALSE;
                if (util::is_valid_datap(hdr)) {
                    data* data = static_cast<savedata::data*>(*hdr->value.ptr_v);
                    CHANSVmObjHdr* arg0 = CHANSVmGetArgInteger(vm, 0);
                    CHANSVmObjHdr* arg1 = CHANSVmGetArgInteger(vm, 1);
                    u32 offset = (arg0 != NULL) ? arg0->value.data.len : 0;
                    u32 size = (arg1 != NULL) ? arg1->value.data.len : 0;

                    if (size != 0) {
                        u32 bufSize = data->size;
                        if (bufSize > offset + size) {
                            EGG::Heap* chHeap = System::getCSManager()->getData().heap;
                            u8* buf = new (chHeap, 32) u8[size];
                            if (buf != NULL) {
                                memcpy(buf, data->pData + offset, size);
                                DCStoreRange(buf, size);
                                result = _ctor(vm, hdr2, (u32)buf, size);
                            }
                        }
                    }
                }
                return result;
            }

            BOOL create_blob(CHANSVm* vm, CHANSVmObjHdr* hdr, CHANSVmObjHdr* hdr2) {
                BOOL result = FALSE;
                if (util::is_valid_datap(hdr)) {
                    data* data = static_cast<savedata::data*>(*hdr->value.ptr_v);
                    if (CHANSVmNewBlobObject(vm, hdr2, data->size, data->pData, data->size) != NULL) {
                        result = TRUE;
                    }
                }
                return result;
            }

            BOOL decode_odh(CHANSVm* vm, CHANSVmObjHdr* hdr, CHANSVmObjHdr* hdr2) {
                BOOL result = FALSE;
                CHANSVmImage* image;
                if (util::is_valid_datap(hdr)) {
                    data* data = static_cast<savedata::data*>(*hdr->value.ptr_v);
                    CHANSVmObjHdr* arg0 = CHANSVmGetArgInteger(vm, 0);
                    CHANSVmObjHdr* arg1 = CHANSVmGetArgInteger(vm, 1);
                    CHANSVmObjHdr* arg2 = CHANSVmGetArgInteger(vm, 2);

                    if (arg0 == NULL) {
                        goto exit;
                    }

                    u32 format = arg0->value.int_v;
                    u32 pitch = (arg1 != NULL) ? arg1->value.int_v : 0;
                    u32 bufSize = (arg2 != NULL) ? arg2->value.data.len : data->size;

                    u8* src = data->pData + pitch;

                    if (format != 4 && format != 6) {
                        goto exit;
                    }

                    if (!System::getCSManager()->isValidAddr(src) || !System::getCSManager()->isValidAddr(src + bufSize - 1)) {
                        goto exit;
                    }

                    int width = ODHGetWidth(src);
                    int height = ODHGetHeight(src);
                    if (width < 0 || height < 0) {
                        goto exit;
                    }

                    u32 workSize = width * height * 3;

                    if (CHANSVmNewImageObject(vm, hdr2, NULL, (u16)width, (u16)height, (s32)(u8)format) == NULL) {
                        goto exit;
                    }
                    image = static_cast<CHANSVmImage*>(*hdr2->value.ptr_v);

                    u8* workBuf = new (System::getCSManager()->getHeap(), 0x20) u8[workSize];
                    if (workBuf != NULL) {
                        int ret;
                        if (format == 4) {
                            ret = ODHDecodeRGB565(src, bufSize, image->pData, image->size, workBuf, workSize);
                        } else {
                            ret = ODHDecodeRGBA8(src, bufSize, image->pData, image->size, workBuf, workSize);
                        }
                        if (ret == ((height << 16) | width)) {
                            result = TRUE;
                        }
                        delete[] workBuf;
                    }
                }
            exit:
                return result;
            }

            BOOL get_size(CHANSVm* vm, CHANSVmObjHdr* hdr, CHANSVmObjHdr* hdr2) {
                BOOL result = FALSE;
                if (util::is_valid_datap(hdr)) {
                    data* data = static_cast<savedata::data*>(*hdr->value.ptr_v);
                    result = CHANSVmSetInteger(vm, hdr2, data->size) == CHANS_VM_OK;
                }
                return result;
            }

            BOOL get_addr(CHANSVm* vm, CHANSVmObjHdr* hdr, CHANSVmObjHdr* hdr2) {
                BOOL result = FALSE;
                u8* ptr = get_(vm, hdr);
                if (ptr != NULL) {
                    result = CHANSVmSetInteger(vm, hdr2, reinterpret_cast<vmInteger>(ptr)) == CHANS_VM_OK;
                }
                return result;
            }

            template <typename T>
            BOOL get(CHANSVm* vm, CHANSVmObjHdr* hdr, CHANSVmObjHdr* hdr2) {
                BOOL result = FALSE;
                u8* ptr = get_(vm, hdr);
                if (ptr != NULL) {
                    if ((u32)ptr & (sizeof(T) - 1)) {
                    } else {
                        result = CHANSVmSetInteger(vm, hdr2, static_cast<vmInteger>(*(const T*)ptr)) == CHANS_VM_OK;
                    }
                }
                return result;
            }

            template <>
            BOOL get<float>(CHANSVm* vm, CHANSVmObjHdr* hdr, CHANSVmObjHdr* hdr2) {
                BOOL result = FALSE;
                u8* ptr = get_(vm, hdr);
                if (ptr != NULL && ((u32)ptr & 3) == 0) {
                    result = CHANSVmSetFloat(vm, hdr2, *reinterpret_cast<f32*>(ptr)) == CHANS_VM_OK;
                }
                return result;
            }

            BOOL get_str(CHANSVm* vm, CHANSVmObjHdr* hdr, CHANSVmObjHdr* hdr2) {
                BOOL result = FALSE;
                CHANSVmObjHdr* arg1 = CHANSVmGetArgInteger(vm, 1);
                u8* ptr = get_(vm, hdr);
                if (ptr != NULL && arg1 != NULL) {
                    result = CHANSVmSetU16StringFromU8(vm, hdr2, reinterpret_cast<char*>(ptr), arg1->value.int_v) == CHANS_VM_OK;
                }
                return result;
            }

            BOOL get_wstr(CHANSVm* vm, CHANSVmObjHdr* hdr, CHANSVmObjHdr* hdr2) {
                BOOL result = FALSE;
                CHANSVmObjHdr* arg1 = CHANSVmGetArgInteger(vm, 1);
                u8* ptr = get_(vm, hdr);
                if (ptr != NULL && arg1 != NULL) {
                    result = CHANSVmSetU16String(vm, hdr2, (wchar_t*)ptr, arg1->value.int_v * 2) == CHANS_VM_OK;
                }
                return result;
            }

            u8* get_(CHANSVm* vm, CHANSVmObjHdr* hdr) {
                u8* buf = NULL;
                if (util::is_valid_datap(hdr)) {
                    data* data = static_cast<savedata::data*>(*hdr->value.ptr_v);
                    buf = data->pData;
                    CHANSVmObjHdr* arg0 = CHANSVmGetArgInteger(vm, 0);
                    if (buf != NULL && arg0 != NULL) {
                        buf += arg0->value.int_v;
                    }
                }
                return buf;
            }

            BOOL calc_crc16(CHANSVm* vm, CHANSVmObjHdr* hdr, CHANSVmObjHdr* hdr2) {
                BOOL result = FALSE;
                CHANSVmObjHdr* arg1 = CHANSVmGetArgInteger(vm, 1);
                u8* ptr = get_(vm, hdr);
                if (ptr != NULL) {
                    if (arg1 != NULL) {
                        u16 crc = NETCalcCRC16(ptr, arg1->value.int_v);
                        result = CHANSVmSetInteger(vm, hdr2, crc) == CHANS_VM_OK;
                    }
                }
                return result;
            }

            BOOL calc_crc32(CHANSVm* vm, CHANSVmObjHdr* hdr, CHANSVmObjHdr* hdr2) {
                BOOL result = FALSE;
                CHANSVmObjHdr* arg1 = CHANSVmGetArgInteger(vm, 1);
                u8* ptr = get_(vm, hdr);
                if (ptr != NULL) {
                    if (arg1 != NULL) {
                        u32 crc = NETCalcCRC32(ptr, arg1->value.int_v);
                        result = CHANSVmSetInteger(vm, hdr2, crc) == CHANS_VM_OK;
                    }
                }
                return result;
            }

            BOOL _ctor(CHANSVm* vm, CHANSVmObjHdr* obj, u32 bufAddr, u32 bufSize) {
                BOOL flag = FALSE;
                data* data = static_cast<savedata::data*>(CHANSVmNewObjData(vm, obj, sizeof(savedata::data)));
                if (data != NULL) {
                    memset(data, 0, sizeof(savedata::data));
                    data->pData = reinterpret_cast<u8*>(bufAddr);
                    data->size = bufSize;
                    obj->type = CHANS_VM_TYPE_OBJECT;
                    obj->parentCls = CHANSVmFindNativeClass(vm, "SaveData");
                    flag = obj->parentCls != NULL;
                }
                return flag;
            }

            BOOL ctor(CHANSVm* vm, CHANSVmObjHdr* hdr, CHANSVmObjHdr* hdr2) {
                BOOL result = FALSE;
                CHANSVmObjHdr* arg0 = CHANSVmGetArgString(vm, 0);
                CHANSVmObjHdr* arg1 = CHANSVmGetArgString(vm, 1);
                if (arg0 != NULL) {
                    data* data = static_cast<savedata::data*>(CHANSVmNewObjData(vm, hdr2, sizeof(savedata::data)));
                    if (data != NULL) {
                        wchar_t temp[MAX_PATH_LENGTH + sizeof(wchar_t)];
                        memset(data, 0, sizeof(savedata::data));
                        memset(temp, 0, sizeof(temp));
                        if (arg1 != NULL) {
                            util::utf16_to_ascii(data->unk_0x00, temp, MAX_PATH_LENGTH, arg0);
                            memset(temp, 0, sizeof(temp));
                            util::utf16_to_ascii(data->sPath, temp, MAX_PATH_LENGTH, arg1);
                        } else {
                            util::utf16_to_ascii(data->sPath, temp, MAX_PATH_LENGTH, arg0);
                        }
                        data->flag = 1;
                        result = TRUE;
                    }
                }
                return result;
            }

            extern const CHANSVmMethodList cMethodList[METHOD_COUNT];
            extern const CHANSVmPropertyList cPropertyList[PROPERTY_COUNT];

            BOOL init(CHANSVm* vm) {
                BOOL result = FALSE;
                CHANSVmNativeClass* cls = CHANSVmAddNativeClass(vm, "SaveData", ctor, NULL);
                if (cls != NULL) {
                    result = CHANSVmAddNativeMethodList(vm, cls, cMethodList, CHANSVmMethodCount(cMethodList)) == CHANS_VM_OK;
                    result =
                        result & (CHANSVmAddNativePropertyAccessorsList(vm, cls, cPropertyList, CHANSVmPropertyCount(cPropertyList)) == CHANS_VM_OK);
                }
                return result;
            }

            // Force get_int<N> specializations to be emitted here
            DECOMP_FORCE_LITERAL(iplCSSavedata_cpp, util::get_int<COMPRESSION_LZ>)
            DECOMP_FORCE_LITERAL(iplCSSavedata_cpp, util::get_int<COMPRESSION_HUFFMAN>)
            DECOMP_FORCE_LITERAL(iplCSSavedata_cpp, util::get_int<COMPRESSION_RL>)

            template <>
            BOOL get<s8>(CHANSVm* vm, CHANSVmObjHdr* hdr, CHANSVmObjHdr* hdr2);

            // clang-format off
            const CHANSVmMethodList cMethodList[METHOD_COUNT] = {
                {"load", load_to_work},
                {"loadToHeap", load_to_heap},
                {"uncompress", uncomp_to_work},
                {"uncompressToHeap", uncomp_to_heap},
                {"copyToHeap", copy_to_heap},
                {"createBlob", create_blob},
                {"decodeODH", decode_odh},
                {"getSize", get_size},
                {"getS64", get<s64>},
                {"getU32", get<u32>},
                {"getS32", get<s32>},
                {"getF32", get<float>},
                {"getU16", get<u16>},
                {"getS16", get<s16>},
                {"getU8", get<u8>},
                {"getS8", get<s8>},
                {"getStr", get_str},
                {"getWStr", get_wstr},
                {"getAddr", get_addr},
                {"NETCalcCRC16", calc_crc16},
                {"NETCalcCRC32", calc_crc32},
            };
            // clang-format on

            const CHANSVmPropertyList cPropertyList[PROPERTY_COUNT] = {
                {"*CX_COMPRESSION_LZ", util::get_int<COMPRESSION_LZ>, NULL},
                {"*CX_COMPRESSION_HUFFMAN", util::get_int<COMPRESSION_HUFFMAN>, NULL},
                {"*CX_COMPRESSION_RL", util::get_int<COMPRESSION_RL>, NULL},
            };


            template <>
                BOOL get<s8>(CHANSVm* vm, CHANSVmObjHdr* hdr, CHANSVmObjHdr* hdr2) {
                BOOL result = FALSE;
                u8* ptr = get_(vm, hdr);
                if (ptr != NULL) {
                    s8 val = *ptr;
                    result = CHANSVmSetInteger(vm, hdr2, val) == CHANS_VM_OK;
                }
                return result;
            }
        }  // namespace savedata
    }  // namespace cs
}  // namespace ipl
