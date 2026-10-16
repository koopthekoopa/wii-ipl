#include "channelScript/iplCSLibrary.h"

#include "iplSystem.h"

#include <revolution/gx/GXTexture.h>
#include <utility/iplTPLValidity.h>

extern "C" BOOL CHANSVmCheckNativeInstance(CHANSVmObjHdr* obj, const char* className);

namespace ipl {
    namespace cs {
        namespace texture {
            BOOL is_valid_fmt(const CHANSVmObjHdr* obj) {
                BOOL result = FALSE;
                if (obj != NULL) {
                    BOOL found;
                    u64 iv = (u64)obj->value.int_v;
                    u32 len = (u32)iv;

                    found = FALSE;
                    // Cleaning this part breaks the match...
                    if (!(iv > 14)) {
                        if (1 << len & 0x407F) {
                            found = TRUE;
                        }
                    }
                    if (found) {
                        result = TRUE;
                    }
                }
                return result;
            }

            BOOL is_valid_wrap(const CHANSVmObjHdr* obj) {
                BOOL result = FALSE;
                if (obj != NULL && obj->value.int_v <= 2ULL) {
                    result = TRUE;
                }
                return result;
            }

            BOOL init_tpl(CHANSVm* vm, CHANSVmObjHdr* hdr) {
                BOOL result = FALSE;

                CHANSVmObjHdr* arg0 = CHANSVmGetArgInteger(vm, 0);
                CHANSVmObjHdr* arg1 = CHANSVmGetArgInteger(vm, 1);
                u32 palette = arg0 != NULL ? arg0->value.int_v : 0;
                u32 tplSize = arg1 != NULL ? arg1->value.int_v : 0;

                utility::tpl_validity tpl(reinterpret_cast<TPLPalette*>(palette), tplSize);

                channel::ChannelScriptManager* mgr = System::getCSManager();
                if (mgr->isValidAddr((void*)palette) && (palette & 0x1F) == 0 && tpl.is_valid()) {
                    // TODO:
                    u32* data = static_cast<u32*>(CHANSVmNewObjData(vm, hdr, 0x24));
                    if (data != NULL) {
                        result = TRUE;
                        data[0] = 0;
                        data[1] = palette;
                    }
                }

                return result;
            }

            BOOL init_texobj(CHANSVm* vm, CHANSVmObjHdr* hdr, u32 addr) {
                BOOL result = FALSE;

                CHANSVmObjHdr* arg1 = CHANSVmGetArgInteger(vm, 1);
                CHANSVmObjHdr* arg2 = CHANSVmGetArgInteger(vm, 2);
                CHANSVmObjHdr* arg3 = CHANSVmGetArgInteger(vm, 3);
                CHANSVmObjHdr* arg4 = CHANSVmGetArgInteger(vm, 4);
                CHANSVmObjHdr* arg5 = CHANSVmGetArgInteger(vm, 5);

                if (System::getCSManager()->isValidAddr((void*)addr) && (addr & 0x1F) == 0) {
                    // TODO: This was an inlined function but I wasn't able to get it to match after extracting it
                    BOOL arg1Valid = FALSE;
                    if (arg1 != NULL) {
                        BOOL isValid = FALSE;
                        u64 val1 = (u64)arg1->value.int_v;
                        if (val1 != 0 && val1 < 0x400) {
                            isValid = TRUE;
                        }
                        if (isValid) {
                            arg1Valid = TRUE;
                        }
                    }
                    if (arg1Valid) {
                        BOOL arg2Valid = FALSE;
                        if (arg2 != NULL) {
                            BOOL isValid = FALSE;
                            u64 val2 = (u64)arg2->value.int_v;
                            if (val2 != 0 && val2 < 0x400) {
                                isValid = TRUE;
                            }
                            if (isValid) {
                                arg2Valid = TRUE;
                            }
                        }
                        if (arg2Valid && is_valid_fmt(arg3) && is_valid_wrap(arg4) && is_valid_wrap(arg5)) {
                            u32* data = static_cast<u32*>(CHANSVmNewObjData(vm, hdr, sizeof(GXTexObj) + sizeof(u32)));

                            if (data != NULL) {
                                // What is this value?
                                data[0] = 1;
                                u16 width = (u16)arg1->value.int_v;
                                u16 height = (u16)arg2->value.int_v;
                                // Access the GXTexObj area in the newly allocated objdata with a 4byte offset. Using struct member access does not match
                                GXInitTexObj((GXTexObj*)(data + 1), (void*)addr, width, height, (GXTexFmt)arg3->value.int_v,
                                             (GXTexWrapMode)arg4->value.int_v, (GXTexWrapMode)arg5->value.int_v, GX_FALSE);
                                result = TRUE;
                            }
                        }
                    }
                }
                return result;
            }

            CHANSVmDefineMethod(ctor) {
                BOOL result = FALSE;

                u32 argc = CHANSVmGetArgc(VmInst);
                if (argc == 2) {
                    result = init_tpl(VmInst, VmReturnObj);
                } else if (argc == 6) {
                    CHANSVmObjHdr* arg0 = CHANSVmGetArg(VmInst, 0);
                    if (CHANSVmCheckNativeInstance(arg0, "Image")) {
                        if (util::is_valid_datap(arg0)) {
                            u32 addr = *(u32*)*arg0->value.ptr_v;
                            result = init_texobj(VmInst, VmReturnObj, addr);
                        }
                    } else {
                        CHANSVmObjHdr* intArg = CHANSVmGetArgInteger(VmInst, 0);
                        u32 addr;
                        if (intArg != NULL) {
                            addr = intArg->value.data.len;
                        } else {
                            addr = 0;
                        }
                        result = init_texobj(VmInst, VmReturnObj, addr);
                    }
                }

                return result;
            }

            BOOL init(CHANSVm* vm) {
                return CHANSVmAddNativeClass(vm, "Texture", ctor, NULL) != NULL;
            }
        }  // namespace texture
    }  // namespace cs
}  // namespace ipl
