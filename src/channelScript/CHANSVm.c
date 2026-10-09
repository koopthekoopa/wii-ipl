#include "channelScript/CHANSVm.h"
#include "channelScript/CHANSVm/CHANSVmInternal.h"
#include "channelScript/CHANSVmPrivate.h"

#include <stdarg.h>
#include <stdio.h>
#include <string.h>

#include <math.h>
#include <stdlib.h>

#include <private/sc.h>
#include <revolution.h>
#include <revolution/enc.h>
#include <revolution/net/NETDigest.h>
#include <revolution/net/NETMisc.h>

#define CHANSVmDebugLength 1024
#define VM_FRAME_ARENA_SIZE 8192
#define VM_STRING_SIZE 128

CHANSVmImageCtorCallback VmImageCtorCallback = NULL;
CHANSVmImageAllocatorCallback VmImageAllocCallback = NULL;

BOOL CHANSVmDebugVerboseMode = FALSE;

#define VM_STR_LENGTH(str) (str * sizeof(wchar_t))

#define VM_ALIGNED(x) ((x & (DEFAULT_ALIGN - 1)) == 0)

const u64 _VmNan = 0x7FFFFFFFFFFFFFFFULL;
const u64 _VmNZero = 0x8000000000000000ULL;
const u64 _VmInf = 0x7FF0000000000000ULL;
const u64 _VmNInf = 0xFFF0000000000000ULL;
#define VmNan *(f64*)&_VmNan
#define VmNZero *(f64*)&_VmNZero
#define VmInf *(f64*)&_VmInf
#define VmNInf *(f64*)&_VmNInf

#define VM_READ_LE_U16(x, i) ((u16)((x)[(i)] << 8 | (x)[(i) + 1]))
#define VM_READ_LE_U24(x, i) ((u32)((x)[(i)] << 16 | (x)[(i) + 1] << 8 | (x)[(i) + 2]))
#define VM_U32_TO_U64(hi, lo) ((u64)(u32)(hi) << 32 | (u64)(lo))
#define VM_U64_TO_S64(v) ((s64)(u32)((v) >> 32) << 32 | (u64)(u32)(v))

void CHANSVmDebugPrintf(const char* format, ...) {
    va_list args;
    char str[CHANSVmDebugLength];

    va_start(args, format);
    vsnprintf(str, CHANSVmDebugLength - 2, format, args);
    va_end(args);

    str[CHANSVmDebugLength - 1] = str[CHANSVmDebugLength - 2] = 0;

    OSReport("%s", str);
}

#define CHANSVmPrintf(line, msg, ...)                                                                                                                \
    if (CHANSVmDebugVerboseMode)                                                                                                                     \
    CHANSVmDebugPrintf("%s %d" msg, __FUNCTION__, line, __VA_ARGS__)
#define CHANSVmPrintfEx(msg, ...)                                                                                                                    \
    if (CHANSVmDebugVerboseMode)                                                                                                                     \
        CHANSVmDebugPrintf(msg, __VA_ARGS__);

u16 CHANSVmGetSourceLine(CHANSVm* vm) {
    CHANSVmPrivate* pVm = (CHANSVmPrivate*)vm;
    CHANSVmExeContext* context = pVm->pCurContext;

    if (context && context->pDebug && context->pDebug->pLineTbl && context->pc < context->pDebug->codeSize) {
        VmSrcLineEntry* curEntry = &context->pDebug->pLineTbl[context->pc / 256];
        s32 lineOffset = curEntry->baseLine;
        u8* bitfield = curEntry->bitfield;
        u32 i = 0;

        for (i = 0; i <= (u8)context->pc; i++) {
            if (bitfield[i / 8] & (128 >> (i & 0b111))) {
                lineOffset += sizeof(u16);
            }
        }

        if ((u8*)curEntry + lineOffset + 1 < (u8*)context->pDebug + context->pDebug->regionSize) {
            u8* lineData = (u8*)curEntry + lineOffset;
            return VM_READ_LE_U16(lineData, 0);
        }
    }

    return 0;
}

static void* VmAllocFromGarbage(CHANSVm* vm, u32 size) {
    CHANSVmPrivate* pVm = (CHANSVmPrivate*)vm;

    VmFreeBlock* allocBuf;
    VmFreeBlock* prevPtr;
    VmFreeBlock* ptr;
    u32 alignOff;
    u32 remaining;

    for (prevPtr = NULL, ptr = pVm->pFreeList; ptr != NULL; prevPtr = ptr, ptr = ptr->pNext) {
        alignOff = OSRoundUp32B((u32)ptr) - (u32)ptr;
        if (ptr->size >= (size + alignOff)) {
            remaining = ptr->size - (size + alignOff);
            allocBuf = (void*)((u32)ptr + alignOff);

            if (remaining < 8) {
                if (prevPtr == NULL) {
                    pVm->pFreeList = ptr->pNext;
                } else {
                    prevPtr->pNext = ptr->pNext;
                }
            } else {
                ptr->size = remaining;
                if (prevPtr == NULL) {
                    pVm->pFreeList = (VmFreeBlock*)((u32)allocBuf + size);
                    ((VmFreeBlock*)((u32)allocBuf + size))->pNext = ptr->pNext;
                    pVm->pFreeList->size = ptr->size;
                } else {
                    prevPtr->pNext = (VmFreeBlock*)((u32)allocBuf + size);
                    ((VmFreeBlock*)((u32)allocBuf + size))->pNext = ptr->pNext;
                    prevPtr->pNext->size = ptr->size;
                }
                ptr->size = ptr->size - size;
            }

            memset(allocBuf, 0, size);
            return allocBuf;
        }
    }
    return NULL;
}

static void VmUpdateMinFreeHeapSize(CHANSVm* vm) {
    CHANSVmPrivate* pVm = (CHANSVmPrivate*)vm;

    u32 unk = (u32)pVm->pObjStackTopBuf - (u32)pVm->pFreeExeBuf;
    if (pVm->minFreeHeapSize <= unk) {
        return;
    }
    pVm->minFreeHeapSize = unk;
}

static CHANSVmObjHdr* VmNewObjHdr(CHANSVm* vm, BOOL noAlloc) {
    CHANSVmPrivate* pVm = (CHANSVmPrivate*)vm;
    CHANSVmObjHdr* object = NULL;

    if (!noAlloc) {
        object = (CHANSVmObjHdr*)VmAllocFromGarbage(vm, OSRoundUp32B(sizeof(CHANSVmObjHdr)));
    }

    if (object == NULL) {
        u8* ptr = pVm->pFreeExeBuf;
        if ((u32)pVm->pObjStackTopBuf - (u32)ptr >= OSRoundUp32B(sizeof(CHANSVmObjHdr))) {
            if (!noAlloc) {
                pVm->pFreeExeBuf = (ptr + OSRoundUp32B(sizeof(CHANSVmObjHdr)));
                object = (CHANSVmObjHdr*)ptr;
            } else {
                ptr = pVm->pObjStackTopBuf - sizeof(CHANSVmObjHdr);
                pVm->pObjStackTopBuf = ptr;
                object = (CHANSVmObjHdr*)ptr;
            }

            VmUpdateMinFreeHeapSize(vm);
        }
    }

    if (object != NULL) {
        memset(object, 0, sizeof(CHANSVmObjHdr));
    }

    return object;
}

void* VmAlloc(CHANSVm* vm, u32 size) {
    CHANSVmPrivate* pVm = (CHANSVmPrivate*)vm;
    u8* ptr;
    void* buf = NULL;

    if (size != 0 && VM_ALIGNED(size)) {
        buf = VmAllocFromGarbage(vm, size);

        if (buf == NULL) {
            ptr = pVm->pFreeExeBuf;
            if ((u32)pVm->pObjStackTopBuf - (u32)ptr >= size) {
                buf = ptr;
                pVm->pFreeExeBuf = ptr + size;

                VmUpdateMinFreeHeapSize(vm);
                memset(ptr, 0, size);
            }
        }
    }

    return buf;
}

void VmFree(CHANSVm* vm, void* ptr, u32 size) NO_INLINE {
    CHANSVmPrivate* pVm = (CHANSVmPrivate*)vm;
    VmFreeBlock* head;
    VmFreeBlock* current;
    VmFreeBlock* buffer = ptr;

    if ((VmFreeBlock*)pVm->pHeapStart > buffer) {
        return;
    }
    if (buffer >= (VmFreeBlock*)pVm->pFreeExeBuf) {
        return;
    }
    if (size <= 8) {
        return;
    }

    memset(buffer, 0, size);
    buffer->size = size;

    head = pVm->pFreeList;
    if (head == NULL) {
        pVm->pFreeList = buffer;
    } else if (buffer < head) {
        pVm->pFreeList = buffer;
        if ((VmFreeBlock*)((u32)buffer + buffer->size) == head) {
            buffer->pNext = head->pNext;
            buffer->size = buffer->size + head->size;
            memset(head, 0, sizeof(VmFreeBlock));
        } else {
            buffer->pNext = head;
        }
    } else {
        while ((current = head->pNext) != NULL) {
            if (buffer < current) {
                if ((VmFreeBlock*)((u32)buffer + buffer->size) == current) {
                    buffer->pNext = current->pNext;
                    buffer->size = buffer->size + head->pNext->size;
                    memset(*(void**)head, 0, sizeof(VmFreeBlock));
                } else {
                    buffer->pNext = current;
                }
                break;
            }
            head = current;
        }

        if ((VmFreeBlock*)((u32)head + head->size) == buffer) {
            head->pNext = NULL;
            head->size = head->size + buffer->size;
            memset(buffer, 0, sizeof(VmFreeBlock));
        } else {
            head->pNext = buffer;
        }
    }

    while (pVm->pFreeList != NULL) {
        current = NULL;
        head = pVm->pFreeList;
        while (head->pNext != NULL) {
            current = head;
            head = head->pNext;
        }

        if (pVm->pFreeExeBuf != (u8*)((u32)head + head->size)) {
            return;
        }

        memset(head, 0, sizeof(VmFreeBlock));
        pVm->pFreeExeBuf = (u8*)head;

        if (current == NULL) {
            pVm->pFreeList = NULL;
        } else {
            current->pNext = NULL;
        }
    }
}

CHANSVmErr CHANSVmDeleteObject(CHANSVm* vm, CHANSVmObjHdr* object) {
    if (object != NULL) {
        if (!(object->flags.raw & CHANSVM_OBJ_FLAG_READONLY)) {
            if (object->hasData) {
                ChunkEntry* unk = (ChunkEntry*)object->value.ptr_v;
                int val;

                if (unk->allocSize == 0) {
                    val = 1;
                } else {
                    if (unk->inUse != 0) {
                        val = unk->inUse - 1;
                        unk->inUse = val;
                    } else {
                        val = -1;
                    }
                }

                if (val == 0) {
                    if (object->parentCls == NULL || object->parentCls->dtor == NULL || object->parentCls->dtor(vm, object, NULL)) {
                        VmFree(vm, unk->pData, unk->allocSize);
                        memset(unk, 0, sizeof(ChunkEntry));
                    } else {
                        goto error;
                    }
                }
            }
            memset(object, 0, sizeof(CHANSVmObjHdr));
        }

        return CHANS_VM_OK;
    }

error:
    return CHANS_VM_ERR_DELETE_OBJECT;
}

void* CHANSVmNewObjData(CHANSVm* vm, CHANSVmObjHdr* object, u32 length) {
    CHANSVmPrivate* pVm = (CHANSVmPrivate*)vm;
    u32 idx;
    u32 chunkIdx;
    union {
        u32 offset;
        ChunkEntry* entry;
    } u;
    ChunkEntry* chunk;
    u32 memSize;

    if (object == NULL || object->hasData != FALSE || length == 0) {
        goto error;
    }

    idx = pVm->nextChunkIdx;
    chunk = pVm->pChunks[idx / 1024];
    if (chunk == NULL || chunk[idx & 0x3FF].inUse != 0) {
        chunkIdx = 0;
        u.offset = 0;
        while (chunkIdx < 0x80) {
            chunk = pVm->pChunks[chunkIdx];
            if (chunk == NULL) {
                chunk = VmAlloc(vm, 0x4000);
                if (chunk == NULL) {
                    goto error;
                }
                pVm->pChunks[chunkIdx] = chunk;
            }

            idx = 0;
            while (idx < 0x400) {
                if (chunk[idx].inUse == 0) {
                    u.offset = idx + (chunkIdx << 10);
                    idx = u.offset;
                    goto found;
                }
                idx++;
            }

            chunkIdx++;
            u.offset += 4;
        }
        u.offset = 0;
        goto check_entry;
    }

found:
    pVm->nextChunkIdx = (idx + 1 > 0x1FFFF) ? 0 : idx + 1;
    u.entry = &chunk[idx & 0x3FF];
    memset(u.entry, 0, sizeof(CHANSVmObjHdr));
    u.entry->inUse = 1;

check_entry:
    if (u.entry == NULL) {
        goto error;
    }

    memSize = OSRoundUp32B(length);
    {
        void* pData = VmAlloc(vm, memSize);
        if (pData != NULL) {
            *(u32*)(u8*)object = (u32)u.entry;
            object->hasData = TRUE;
            u.entry->pData = pData;
            u.entry->size = length;
            u.entry->allocSize = memSize;
            return pData;
        }
    }

error:
    return NULL;
}

extern const CHANSVmObjHdr VmStrObj_Empty;

CHANSVmObjHdr* CHANSVmNewObject(CHANSVm* vm, BOOL noAlloc, CHANSVmObjHdr* object, CHANSVmObjType type, u32 len) {
    CHANSVmObjHdr* header;

    if (object != NULL) {
        memset(object, 0, sizeof(CHANSVmObjHdr));
    } else {
        header = VmNewObjHdr(vm, noAlloc);
        object = header;
        if (header == NULL) {
            goto error;
        }
    }

    if (len != 0) {
        if (CHANSVmNewObjData(vm, object, len) == 0) {
            goto error;
        }
    } else {
        if (type == (u32)CHANS_VM_OBJ_TYPE_STRING) {
            object->value.string_v = (void*)&VmStrObj_Empty.value.string_v;
        }
    }

    object->type = type;
    return object;

error:
    return NULL;
}

CHANSVmObjHdr* CHANSVmNewStringObject(CHANSVm* vm, CHANSVmObjHdr* obj, u32 len) {
    return CHANSVmNewObject(vm, FALSE, obj, CHANS_VM_OBJ_TYPE_STRING, len);
}

CHANSVmObjHdr* CHANSVmCopyObject(CHANSVm* vm, CHANSVmObjHdr* outObj, CHANSVmObjHdr* inObj) {
    if (inObj != NULL) {
        if (outObj != NULL) {
            memset(outObj, 0, sizeof(CHANSVmObjHdr));
        } else {
            outObj = VmNewObjHdr(vm, 0);
            if (outObj == NULL) {
                goto error;
            }
        }
        memcpy(outObj, inObj, sizeof(CHANSVmObjHdr));

        outObj->flags.raw = outObj->flags.reserved;
        if (outObj->hasData != FALSE) {
            ChunkEntry* unk = (ChunkEntry*)outObj->value.ptr_v;
            int val;

            if (unk->allocSize == 0) {
                val = 1;
            } else {
                if (unk->inUse < -1) {
                    val = unk->inUse + 1;
                    unk->inUse = val;
                } else {
                    val = 0;
                }
            }

            if (val == 0) {
                goto error;
            }
        }
        return outObj;
    }

error:
    return NULL;
}

CHANSVmErr CHANSVmPopObject(CHANSVm* vm, CHANSVmObjHdr* object) {
    CHANSVmPrivate* pVm = (CHANSVmPrivate*)vm;
    CHANSVmObjHdr* nextUnk;
    CHANSVmErr err = CHANS_VM_ERR_POP_OBJECT;
    CHANSVmObjHdr* stackTop = (CHANSVmObjHdr*)pVm->pObjStackTopBuf;

    if (pVm->pCurContext->stackDepth != 0) {
        nextUnk = (CHANSVmObjHdr*)((u8*)stackTop + sizeof(CHANSVmObjHdr));
        if ((u8*)nextUnk <= pVm->pHeapEnd) {
            err = CHANS_VM_OK;

            if (object != NULL) {
                if (object == &pVm->accumulator) {
                    err = CHANSVmDeleteObject(vm, object);
                }
                if (err == CHANS_VM_OK) {
                    memcpy(object, stackTop, sizeof(CHANSVmObjHdr));
                    object->flags.raw = object->flags.reserved;
                    memset(stackTop, 0, sizeof(CHANSVmObjHdr));
                }
            } else {
                err = CHANSVmDeleteObject(vm, stackTop);
            }

            if (err == CHANS_VM_OK) {
                pVm->pCurContext->stackDepth--;
                pVm->pObjStackTopBuf = (u8*)nextUnk;
            }
        }
    }

    return err;
}

void CHANSVmStrCpyToU16FromU8(wchar_t* output, char* input, u32 length) {
    u8* src = (u8*)input + length;
    u32 offset = VM_STR_LENGTH(length);

    while (length > 0) {
        u8 val;
        offset -= 2;
        val = *--src;
        ((u8*)output)[offset + 1] = val;
        ((u8*)output)[offset] = 0;
        length--;
    }
}

u8* CHANSVmStrCpyToU8FromU16(u8* dest, u8* src, u32 len) {
    u32 i;
    u8* out = dest;

    for (i = 0; i < len; i++) {
        if (src[VM_STR_LENGTH(i)] != 0) {
            return NULL;
        }

        *out = src[VM_STR_LENGTH(i) + 1];
        out++;
    }

    return dest;
}

u32 CHANSVmStrCpyToU8FromStringObject(u8* output, CHANSVmObjHdr* stringObj, u32 length) {
    u32 offset, result;
    result = 0;
    offset = 0;

    if (output != NULL && length != 0) {
        memset(output, 0, length);

        if (stringObj != NULL && stringObj->type == CHANS_VM_OBJ_TYPE_STRING) {
            vmStringObjVal* objValue = stringObj->value.string_v;
            u32 charCount = objValue->len / 2;
            char* stringData;
            u32 i;

            if (charCount > length) {
                charCount = length;
            }

            stringData = objValue->spData;

            for (i = 0; i < charCount; i++) {
                *output = stringData[offset + 1];
                result++;
                offset += 2;
                output++;
            }
        }
    }

    return result;
}

static BOOL VmIsNan(f64 value) {
    return isnan(value) || value == VmNan;
}

static f64 VmClamp(f64 value) {
    // Clamp to -1.0~1.0
    return value < 0.0 ? -1.0 : value > 0.0 ? 1.0 : value;
}

f64 VmIntToFloat(u64 integer) {
    f64 result;
    if ((integer & 0x8000000000000000ULL) != 0) {
        result = -(f64)(~integer + 1);
    } else {
        result = (f64)integer;
    }
    return result;
}

static s32 CHANSVmParseInt(CHANSVmObjHdr* obj, s32 base, u64* out) {
    u8 type = obj->type;
    u32 stringLength;
    u32 charCount;
    u64 number;
    char buf[0x40];
    char* endPtr;

    endPtr = NULL;
    if (type == CHANS_VM_OBJ_TYPE_STRING) {
        stringLength = obj->value.wstring_v->len;

        if (stringLength != 0 && stringLength <= VM_STRING_SIZE) {
            charCount = stringLength / 2;

            if (CHANSVmStrCpyToU8FromU16((u8*)buf, (u8*)obj->value.wstring_v->spData, charCount) != NULL) {
                buf[charCount] = '\0';
                number = strtoull(buf, &endPtr, base);
                if (endPtr == buf) {
                    number = 0;
                }
                if (out != NULL) {
                    *out = number;
                }
                return 1;
            }
        }
    }
    return 0;
}

CHANSVmObjHdr* CHANSVm_8144B30C(CHANSVm* vm, CHANSVmObjType type, CHANSVmObjHdr* object) {
    // Convert to int from float
    CHANSVmObjHdr* newObj = CHANSVmNewObject(vm, FALSE, NULL, CHANS_VM_OBJ_TYPE_INTEGER, 0);
    if (newObj != NULL) {
        if (VmIsNan(object->value.float_v)) {
            newObj->value.int_v = 0;
        } else {
            newObj->value.int_v = (u64)(VmClamp(object->value.float_v) * floor(fabs(object->value.float_v)));
        }
    }
    return newObj;
}

CHANSVmObjHdr* CHANSVmConvertToIntFromStr(CHANSVm* vm, CHANSVmObjType type, CHANSVmObjHdr* object) {
    CHANSVmObjHdr* newObj = CHANSVmNewObject(vm, FALSE, NULL, CHANS_VM_OBJ_TYPE_INTEGER, 0);
    if (newObj != NULL && !CHANSVmParseInt(object, 0, (u64*)&newObj->value.int_v)) {
        newObj = NULL;
    }
    return newObj;
}

CHANSVmObjHdr* CHANSVmConvertToIntFromArray(CHANSVm* vm, CHANSVmObjType type, CHANSVmObjHdr* object) {
    return NULL;
}

CHANSVmObjHdr* CHANSVm_8144B430(CHANSVm* vm, CHANSVmObjType type, CHANSVmObjHdr* object) {
    CHANSVmObjHdr* result = CHANSVmNewObject(vm, FALSE, NULL, CHANS_VM_OBJ_TYPE_FLOAT, 0);
    if (result != NULL) {
        result->value.float_v = VmNan;
    }
    return result;
}

CHANSVmObjHdr* CHANSVm_8144B470(CHANSVm* vm, CHANSVmObjType type, CHANSVmObjHdr* intObj) {
    CHANSVmObjHdr* result = CHANSVmNewObject(vm, FALSE, NULL, CHANS_VM_OBJ_TYPE_FLOAT, 0);
    if (result != NULL) {
        result->value.float_v = VmIntToFloat(intObj->value.int_v);
    }
    return result;
}

// These wide strings use a single NULL byte for termination for some reason... How???
u8 lbl_81669070[] = {0x00, 'u', 0x00, 'n', 0x00, 'd', 0x00, 'e', 0x00, 'f', 0x00, 'i', 0x00, 'n', 0x00, 'e', 0x00, 'd', 0x00};
u8 lbl_81669083[] = {0x00, 'I', 0x00, 'n', 0x00, 'f', 0x00, 'i', 0x00, 'n', 0x00, 'i', 0x00, 't', 0x00, 'y', 0x00};
u8 lbl_81669094[] = {0x00, '-', 0x00, 'I', 0x00, 'n', 0x00, 'f', 0x00, 'i', 0x00, 'n', 0x00, 'i', 0x00, 't', 0x00, 'y', 0x00};

// clang-format off
const CHANSVmObjHdr VmStrObj_Undefined = {{(wchar_t*)lbl_81669070, 18}, {0}, NULL};
const CHANSVmObjHdr VmStrObj_Nan = {{L"NaN", 6}, {0}, NULL};
const CHANSVmObjHdr VmStrObj_Inf = {{(wchar_t*)lbl_81669083, 16}, {0}, NULL};
const CHANSVmObjHdr VmStrObj_NInf = {{lbl_81669094, 18}, {0}, NULL};
const CHANSVmObjHdr VmStrObj_Seperator = {{L",", 2}, {0}, NULL};
const CHANSVmObjHdr VmStrObj_Empty = {{L"", 2}, {0}, NULL};
const CHANSVmObjHdr VmStrMathConstants[] = {{{(void*)&VmStrObj_Undefined, 0}, 0x03800100, NULL},
                                                            {{(void*)&VmStrObj_Nan, 0}, 0x03800100, NULL},
                                                            {{(void*)&VmStrObj_Nan, 0}, 0x03800100, NULL},
                                                            {{(void*)&VmStrObj_NInf, 0}, 0x03800100, NULL},
                                                            {{(void*)&VmStrObj_Seperator, 0}, 0x00800000, NULL}};

const CHANSVmFloatConstantList VmMathConstants[] = {
    { "Infinity", (f64*)&_VmInf },
    { "+Infinity", (f64*)&_VmInf },
    { "-Infinity", (f64*)&_VmNInf },
    { "Infinity", (f64*)&_VmNan }
};
// clang-format on

CHANSVmObjHdr* CHANSVm_8144B4D4(CHANSVm* vm, CHANSVmObjType type, CHANSVmObjHdr* object) {
    // Convert string keyword into float value
    CHANSVmObjHdr* newObj;
    u32 charCount;
    volatile u32 endPtr;
    f64 result;
    bool r;

    newObj = CHANSVmNewObject(vm, FALSE, NULL, CHANS_VM_OBJ_TYPE_FLOAT, 0);
    if (newObj != NULL) {
        u32 inType = object->type;
        endPtr = 0;

        if (inType == CHANS_VM_OBJ_TYPE_STRING) {
            u32 stringLength = object->value.wstring_v->len;
            if (stringLength != 0 && stringLength <= VM_STRING_SIZE) {
                u8 buf[0x40];
                u8* p;

                charCount = stringLength / 2;
                if (CHANSVmStrCpyToU8FromU16(buf, (u8*)object->value.wstring_v->spData, charCount) != NULL) {
                    p = buf + charCount;
                    *p = 0;

                    charCount = 0;
                    while (charCount < 4) {
                        if (strcmp((char*)buf, VmMathConstants[charCount].spName) == 0) {
                            result = *VmMathConstants[charCount].pValue;
                            goto store;
                        }

                        charCount++;
                    }

                    {
                        u64 val = strtoull((char*)buf, (char**)&endPtr, 0);
                        if ((char*)endPtr == (char*)p) {
                            result = VmIntToFloat(val);
                            goto store;
                        }
                    }

                    result = strtod((char*)buf, (char**)&endPtr);
                    if ((char*)endPtr == (char*)buf) {
                        result = VmNan;
                    }

                store:
                    if (newObj != NULL) {
                        newObj->value.float_v = result;
                    }
                    r = 1;
                    goto exit;
                }
            }
        }
        r = 0;

    exit:
        if (r == 0) {
            newObj = NULL;
        }
    }
    return newObj;
}

CHANSVmObjHdr* CHANSVmConvertToStrFromUndefined(CHANSVm* vm, CHANSVmObjType type, CHANSVmObjHdr* object) {
    return (CHANSVmObjHdr*)VmStrMathConstants;
}

s32 CHANSVm_8144B62C(wchar_t* buf, u32 len, f64 val) NO_INLINE {
    s32 result = snprintf((char*)buf, len / 2, "%.16lg", val);
    CHANSVmStrCpyToU16FromU8(buf, (char*)buf, result);
    return VM_STR_LENGTH(result);
}

static int VmToStrFromInt(wchar_t* output, u32 length, vmInteger integer) {
    s32 len = snprintf((char*)output, length, "%lld", integer);
    CHANSVmStrCpyToU16FromU8(output, (char*)output, len);
    return len;
}

CHANSVmObjHdr* CHANSVmConvertToStrFromInt(CHANSVm* vm, CHANSVmObjType type, CHANSVmObjHdr* object) {
    CHANSVmObjHdr* newObject = CHANSVmNewObject(vm, FALSE, NULL, CHANS_VM_OBJ_TYPE_STRING, VM_STR_LENGTH(64));
    if (newObject) {
        s32 len = VmToStrFromInt(newObject->value.wstring_v->spData, 64, object->value.int_v);

        newObject->value.wstring_v->len = VM_STR_LENGTH(len);
        if (newObject->value.wstring_v->len == 0) {
            goto error;
        }
    }
    return newObject;

error:
    return NULL;
}

CHANSVmObjHdr* CHANSVm_8144B734(CHANSVm* vm, CHANSVmObjType type, CHANSVmObjHdr* value) {
    CHANSVmObjHdr* newObj;
    s32 result;

// FAKEMATCH: Accessing VmStrMathConstants normally doesn't match, so it needs this disgusting hack of loading the first rodata symbol...
// this TU is a train wreck :(
#ifdef NON_MATCHING
    if (VmIsNan(value->value.float_v)) {
        return (CHANSVmObjHdr*)&VmStrMathConstants[1];
    }
    if (value->value.float_v == VmInf) {
        return (CHANSVmObjHdr*)&VmStrMathConstants[2];
    }
    if (value->value.float_v == VmNInf) {
        return (CHANSVmObjHdr*)&VmStrMathConstants[3];
    }
#else
    const CHANSVmObjHdr* base;
    base = &VmStrObj_Undefined;
    if (VmIsNan(value->value.float_v)) {
        return (CHANSVmObjHdr*)&base[7];
    }
    if (value->value.float_v == VmInf) {
        return (CHANSVmObjHdr*)&base[8];
    }
    if (value->value.float_v == VmNInf) {
        return (CHANSVmObjHdr*)&base[9];
    }
#endif

    newObj = CHANSVmNewObject(vm, FALSE, NULL, CHANS_VM_OBJ_TYPE_STRING, VM_STRING_SIZE);
    if (newObj != NULL) {
        result = CHANSVm_8144B62C(newObj->value.wstring_v->spData, VM_STRING_SIZE, value->value.float_v);
        newObj->value.wstring_v->len = result;
        if (newObj->value.wstring_v->len == 0) {
            goto error;
        }
    }
    return newObj;
error:
    return NULL;
}

static CHANSVmObjHdr* VmArrayJoinCommon(CHANSVm* vm, u32 retObjAddr, CHANSVmObjHdr* object, u32 separatorAddr, u32 separatorLen);

CHANSVmObjHdr* CHANSVmConvertToStrFromArray(CHANSVm* vm, CHANSVmObjType type, CHANSVmObjHdr* object) {
    return VmArrayJoinCommon(vm, 0, object, 0, 0);
}

CHANSVmObjHdr* CHANSVmConvertObjectTypeError(CHANSVm* vm, CHANSVmObjType type, CHANSVmObjHdr* object) {
    CHANSVmPrintf(1176, ", type to %d from %d\n", type, object->type);
    return NULL;
}

BOOL CHANSVmGetEnumedType(CHANSVmObjType* eType, u32 iType) NO_INLINE {
    CHANSVmObjType type;
    switch (iType) {
        case CHANS_VM_OBJ_TYPE_BLANK: {
            type = 0;
            break;
        }
        case CHANS_VM_OBJ_TYPE_INTEGER: {
            type = 1;
            break;
        }
        case CHANS_VM_OBJ_TYPE_FLOAT: {
            type = 2;
            break;
        }
        case CHANS_VM_OBJ_TYPE_STRING: {
            type = 3;
            break;
        }
        case CHANS_VM_OBJ_TYPE_ARRAY: {
            type = 4;
            break;
        }
        case CHANS_VM_OBJ_TYPE_GLOBAL_REF:
        case CHANS_VM_OBJ_TYPE_CLASS_REF:
        case CHANS_VM_OBJ_TYPE_METHOD_REF: {
            type = 5;
            break;
        }
        default: {
            return FALSE;
        }
    }

    if (eType) {
        *eType = type;
    }

    return TRUE;
}

// TODO: Here was a function defined that was inlined into VmStep.
char lbl_81669128[] = "VmGetResultType";

// clang-format off
const VmConvertEntry VmTypeConvertFuncTbl[] = {
    {CHANSVmConvertObjectTypeError, CHANSVmConvertObjectTypeError, CHANSVmConvertObjectTypeError, CHANSVmConvertObjectTypeError, CHANSVmConvertObjectTypeError, CHANSVmConvertObjectTypeError},
    {CHANSVm_8144B30C, CHANSVmConvertToIntFromStr, CHANSVmConvertToIntFromArray, CHANSVmConvertObjectTypeError, CHANSVm_8144B430, CHANSVm_8144B470},
    {CHANSVm_8144B4D4, CHANSVmConvertObjectTypeError, CHANSVmConvertObjectTypeError, CHANSVmConvertToStrFromUndefined, CHANSVmConvertToStrFromInt, CHANSVm_8144B734},
    {CHANSVmConvertToStrFromArray, CHANSVmConvertObjectTypeError, CHANSVmConvertObjectTypeError, CHANSVmConvertObjectTypeError, CHANSVmConvertObjectTypeError, CHANSVmConvertObjectTypeError},
    {CHANSVmConvertObjectTypeError, CHANSVmConvertObjectTypeError, CHANSVmConvertObjectTypeError, CHANSVmConvertObjectTypeError, CHANSVmConvertObjectTypeError, CHANSVmConvertObjectTypeError},
    {CHANSVmConvertObjectTypeError, CHANSVmConvertObjectTypeError, CHANSVmConvertObjectTypeError, CHANSVmConvertObjectTypeError, CHANSVmConvertObjectTypeError, CHANSVmConvertObjectTypeError}};
// clang-format on

// Each table is a 6x6 u8 matrix indexed [left_enumed][right_enumed].
// left/right are CHANSVmObjType mapped to 0-5 by CHANSVmGetEnumedType.
// The table value determines to the type of the result of an operation with two operands.
typedef u8 VmResultTypeMatrix[6][6];

typedef struct {
    VmResultTypeMatrix add;       // 0x00
    VmResultTypeMatrix arith;     // 0x24
    VmResultTypeMatrix cmp;       // 0x48
    VmResultTypeMatrix eq;        // 0x6C
    VmResultTypeMatrix bitShift;  // 0x90
} VmResultTypeData;

// clang-format off
const VmResultTypeData VmResultTypeTbl = {
    /* add[6][6] = */ {
        0x00, 0x02, 0x02, 0x03, 0x00, 0x00,
        0x02, 0x01, 0x02, 0x03, 0x03, 0x00,
        0x02, 0x02, 0x02, 0x03, 0x03, 0x00,
        0x03, 0x03, 0x03, 0x03, 0x03, 0x00,
        0x00, 0x03, 0x03, 0x03, 0x03, 0x00,
        0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    },
    /* arith[6][6] = */
    {
        0x00, 0x02, 0x02, 0x02, 0x00, 0x00,
        0x02, 0x01, 0x02, 0x02, 0x00, 0x00,
        0x02, 0x02, 0x02, 0x02, 0x00, 0x00,
        0x02, 0x02, 0x02, 0x02, 0x00, 0x00,
        0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
        0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    },
    /* cmp[6][6] = */
    {
        0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
        0x00, 0x01, 0x02, 0x02, 0x00, 0x00,
        0x00, 0x02, 0x02, 0x02, 0x00, 0x00,
        0x00, 0x02, 0x02, 0x03, 0x03, 0x00,
        0x00, 0x00, 0x00, 0x03, 0x03, 0x00,
        0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    },
    /* eq[6][6] = */
    {
        0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
        0x00, 0x01, 0x02, 0x02, 0x00, 0x00,
        0x00, 0x02, 0x02, 0x02, 0x00, 0x00,
        0x00, 0x02, 0x02, 0x03, 0x03, 0x00,
        0x00, 0x00, 0x00, 0x03, 0x04, 0x00,
        0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    },
    /* bitShift[6][6] = */
    {
        0x00, 0x01, 0x01, 0x01, 0x00, 0x00,
        0x01, 0x01, 0x01, 0x01, 0x00, 0x00,
        0x01, 0x01, 0x01, 0x01, 0x00, 0x00,
        0x01, 0x01, 0x01, 0x01, 0x00, 0x00,
        0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
        0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    },
};
// clang-format on

CHANSVmObjHdr* CHANSVmConvertObjectType(CHANSVm* vm, u32 type, CHANSVmObjHdr* object) {
    CHANSVmObjType old, new;

    if (object == NULL) {
        return NULL;
    }

    if (type == object->type) {
        return object;
    }

    if (!CHANSVmGetEnumedType(&old, type) || !CHANSVmGetEnumedType(&new, object->type)) {
        return NULL;
    }

    return ((const VmConvertEntry*)VmTypeConvertFuncTbl)[old].convFunc[new](vm, type, object);
}

CHANSVmErr CHANSVmSetInteger(CHANSVm* vm, CHANSVmObjHdr* object, vmInteger val) {
    CHANSVmErr ret = CHANSVmDeleteObject(vm, object);
    if (ret == CHANS_VM_OK) {
        object->type = CHANS_VM_OBJ_TYPE_INTEGER;
        object->value.int_v = val;
    }
    return ret;
}

CHANSVmErr CHANSVmSetFloat(CHANSVm* vm, CHANSVmObjHdr* object, f64 value) {
    CHANSVmErr ret = CHANSVmDeleteObject(vm, object);
    if (ret == CHANS_VM_OK) {
        object->type = CHANS_VM_OBJ_TYPE_FLOAT;
        if (value == VmNZero) {
            value = 0.0f;
        }
        object->value.float_v = value;
    }
    return ret;
}

CHANSVmErr CHANSVmSetU16String(CHANSVm* vm, CHANSVmObjHdr* object, wchar_t* str, u32 strLen) {
    CHANSVmErr ret = CHANSVmDeleteObject(vm, object);
    if (ret == CHANS_VM_OK) {
        if (CHANSVmNewObject(vm, FALSE, object, CHANS_VM_OBJ_TYPE_STRING, strLen) == NULL) {
            return CHANS_VM_ERR_SET_STRING;
        }

        if (strLen != 0) {
            memcpy(object->value.wstring_v->spData, str, strLen);
        }
    }
    return ret;
}

CHANSVmErr CHANSVmSetU16StringFromU8(CHANSVm* vm, CHANSVmObjHdr* object, char* str, u32 strLen) {
    CHANSVmErr ret = CHANSVmDeleteObject(vm, object);
    if (ret == CHANS_VM_OK) {
        if (CHANSVmNewObject(vm, FALSE, object, CHANS_VM_OBJ_TYPE_STRING, VM_STR_LENGTH(strLen)) == NULL) {
            return CHANS_VM_ERR_SET_STRING;
        }

        if (strLen != 0) {
            CHANSVmStrCpyToU16FromU8(object->value.wstring_v->spData, str, strLen);
        }
    }
    return ret;
}

CHANSVmErr VmStore(CHANSVm* vm, CHANSVmObjHdr* dest, CHANSVmObjHdr* src);

CHANSVmErr VmAdd(CHANSVm* vm, CHANSVmObjType type, CHANSVmObjHdr* ret, CHANSVmObjHdr* left, CHANSVmObjHdr* right) {
    CHANSVmObjHdr* obj;
    CHANSVmObjHdr temp;
    CHANSVmErr err = CHANS_VM_ERR_ADD;

    switch (type) {
        case CHANS_VM_OBJ_TYPE_INTEGER: {
            err = CHANSVmSetInteger(vm, ret, left->value.int_v + right->value.int_v);
            break;
        }
        case CHANS_VM_OBJ_TYPE_FLOAT: {
            err = CHANSVmSetFloat(vm, ret, left->value.float_v + right->value.float_v);
            break;
        }
        case CHANS_VM_OBJ_TYPE_STRING: {
            err = CHANS_VM_ERR_STRCAT;
            obj = CHANSVmNewObject(vm, FALSE, &temp, CHANS_VM_OBJ_TYPE_STRING, left->value.string_v->len + right->value.string_v->len);
            if (obj != NULL) {
                u32 len;

                len = left->value.string_v->len;
                if (len != 0) {
                    memcpy(*obj->value.ptr_v, *left->value.ptr_v, len);
                }
                len = right->value.string_v->len;
                if (len != 0) {
                    memcpy((void*)((u32)*obj->value.ptr_v + (left->value.string_v)->len), *right->value.ptr_v, len);
                }
                err = VmStore(vm, ret, obj);
                if (err == CHANS_VM_OK) {
                    err = CHANSVmDeleteObject(vm, obj);
                }
            }
            break;
        }
        default: {
            break;
        }
    }
    return err;
}

CHANSVmErr VmSub(CHANSVm* vm, CHANSVmObjType type, CHANSVmObjHdr* ret, CHANSVmObjHdr* left, CHANSVmObjHdr* right) {
    CHANSVmErr err = CHANS_VM_ERR_SUB;

    switch (type) {
        case CHANS_VM_OBJ_TYPE_INTEGER: {
            err = CHANSVmSetInteger(vm, ret, left->value.int_v - right->value.int_v);
            break;
        }
        case CHANS_VM_OBJ_TYPE_FLOAT: {
            err = CHANSVmSetFloat(vm, ret, left->value.float_v - right->value.float_v);
            break;
        }
        default: {
            break;
        }
    }
    return err;
}

CHANSVmErr VmMul(CHANSVm* vm, CHANSVmObjType type, CHANSVmObjHdr* ret, CHANSVmObjHdr* left, CHANSVmObjHdr* right) {
    CHANSVmErr err = CHANS_VM_ERR_MUL;

    switch (type) {
        case CHANS_VM_OBJ_TYPE_INTEGER: {
            err = CHANSVmSetInteger(vm, ret, left->value.int_v * right->value.int_v);
            break;
        }
        case CHANS_VM_OBJ_TYPE_FLOAT: {
            err = CHANSVmSetFloat(vm, ret, left->value.float_v * right->value.float_v);
            break;
        }
        default: {
            break;
        }
    }
    return err;
}

CHANSVmErr VmDiv(CHANSVm* vm, CHANSVmObjType type, CHANSVmObjHdr* ret, CHANSVmObjHdr* left, CHANSVmObjHdr* right) {
    CHANSVmErr err = CHANS_VM_ERR_DIV;
    f64 rightFloat;
    f64 leftFloat;

    switch (type) {
        case CHANS_VM_OBJ_TYPE_INTEGER: {
            rightFloat = VmIntToFloat(right->value.int_v);
            leftFloat = VmIntToFloat(left->value.int_v);
            err = CHANSVmSetFloat(vm, ret, leftFloat / rightFloat);
            break;
        }
        case CHANS_VM_OBJ_TYPE_FLOAT: {
            err = CHANSVmSetFloat(vm, ret, left->value.float_v / right->value.float_v);
            break;
        }
        default: {
            break;
        }
    }
    return err;
}

CHANSVmErr VmMod(CHANSVm* vm, CHANSVmObjType type, CHANSVmObjHdr* ret, CHANSVmObjHdr* left, CHANSVmObjHdr* right) {
    CHANSVmErr err = CHANS_VM_ERR_MOD;
    f64 rightFloat;
    f64 leftFloat;

    switch (type) {
        case CHANS_VM_OBJ_TYPE_INTEGER: {
            rightFloat = VmIntToFloat(right->value.int_v);
            leftFloat = VmIntToFloat(left->value.int_v);
            err = CHANSVmSetFloat(vm, ret, fmod(leftFloat, rightFloat));
            break;
        }
        case CHANS_VM_OBJ_TYPE_FLOAT: {
            err = CHANSVmSetFloat(vm, ret, fmod(left->value.float_v, right->value.float_v));
            break;
        }
        default: {
            break;
        }
    }
    return err;
}

CHANSVmErr VmULShift(CHANSVm* vm, CHANSVmObjType type, CHANSVmObjHdr* ret, CHANSVmObjHdr* left, CHANSVmObjHdr* right) {
    CHANSVmErr err = CHANS_VM_ERR_ULSHIFT;
    u64 temp;
    switch (type) {
        case CHANS_VM_OBJ_TYPE_INTEGER: {
            temp = right->value.int_v;
            if (temp < 0x40) {
                temp = left->value.int_v << right->value.int_v;
            } else {
                temp = 0;
            }
            err = CHANSVmSetInteger(vm, ret, temp);
            break;
        }
        default: {
            break;
        }
    }
    return err;
}

CHANSVmErr VmARShift(CHANSVm* vm, CHANSVmObjType type, CHANSVmObjHdr* ret, CHANSVmObjHdr* left, CHANSVmObjHdr* right) {
    CHANSVmErr err = CHANS_VM_ERR_ARSHIFT;

    switch (type) {
        case CHANS_VM_OBJ_TYPE_INTEGER: {
            u64 val = right->value.int_v;
            if (val < 0x40) {
                val = left->value.int_v >> right->value.int_v;
            } else {
                val = left->value.int_v >> 63;
            }
            err = CHANSVmSetInteger(vm, ret, val);
            break;
        }
        default: {
            break;
        }
    }
    return err;
}

CHANSVmErr VmBitAnd(CHANSVm* vm, CHANSVmObjType type, CHANSVmObjHdr* ret, CHANSVmObjHdr* left, CHANSVmObjHdr* right) {
    CHANSVmErr err = CHANS_VM_ERR_BIT_AND;
    switch (type) {
        case CHANS_VM_OBJ_TYPE_INTEGER: {
            err = CHANSVmSetInteger(vm, ret, left->value.int_v & right->value.int_v);
            break;
        }
        default: {
            break;
        }
    }
    return err;
}

CHANSVmErr VmBitOr(CHANSVm* vm, CHANSVmObjType type, CHANSVmObjHdr* ret, CHANSVmObjHdr* left, CHANSVmObjHdr* right) {
    CHANSVmErr err = CHANS_VM_ERR_BIT_OR;
    switch (type) {
        case CHANS_VM_OBJ_TYPE_INTEGER: {
            err = CHANSVmSetInteger(vm, ret, left->value.int_v | right->value.int_v);
            break;
        }
        default: {
            break;
        }
    }
    return err;
}

CHANSVmErr VmBitXor(CHANSVm* vm, CHANSVmObjType type, CHANSVmObjHdr* ret, CHANSVmObjHdr* left, CHANSVmObjHdr* right) {
    CHANSVmErr err = CHANS_VM_ERR_BIT_XOR;
    switch (type) {
        case CHANS_VM_OBJ_TYPE_INTEGER: {
            err = CHANSVmSetInteger(vm, ret, left->value.int_v ^ right->value.int_v);
            break;
        }
        default: {
            break;
        }
    }
    return err;
}

CHANSVmErr VmCmpEq(CHANSVm* vm, CHANSVmObjType type, CHANSVmObjHdr* ret, CHANSVmObjHdr* left, CHANSVmObjHdr* right) {
    BOOL bVar1;
    BOOL isEqual;
    CHANSVmErr err;

    switch (type) {
        case CHANS_VM_OBJ_TYPE_BLANK: {
            u8 tmpType = left->type;
            if (tmpType == right->type) {
                if (tmpType == CHANS_VM_OBJ_TYPE_CLASS_REF || tmpType == CHANS_VM_OBJ_TYPE_OBJECT)
                    goto handle_object_type;
                if (tmpType == CHANS_VM_OBJ_TYPE_METHOD_REF) {
                    isEqual = left->value.ptr_v == right->value.ptr_v;
                    break;
                }
                if (tmpType == CHANS_VM_OBJ_TYPE_BLANK) {
                    isEqual = TRUE;
                    break;
                }
            }
            isEqual = FALSE;
            break;
        }
        case CHANS_VM_OBJ_TYPE_INTEGER: {
            isEqual = left->value.int_v == right->value.int_v;
            break;
        }
        case CHANS_VM_OBJ_TYPE_FLOAT: {
            isEqual = left->value.float_v == right->value.float_v;
            break;
        }
        case CHANS_VM_OBJ_TYPE_STRING: {
            isEqual = FALSE;
            if (left->value.string_v->len == right->value.string_v->len) {
                bVar1 = FALSE;
                if (left->value.string_v->len == 0 || memcmp(*left->value.ptr_v, *right->value.ptr_v, left->value.string_v->len) == 0) {
                    bVar1 = TRUE;
                }
                if (bVar1) {
                    isEqual = TRUE;
                }
            }
            break;
        }
        case CHANS_VM_OBJ_TYPE_ARRAY: {
        handle_object_type:
            isEqual = FALSE;
            if (left->parentCls == right->parentCls && left->hasData == right->hasData &&
                (left->hasData == FALSE || left->value.ptr_v == right->value.ptr_v)) {
                isEqual = TRUE;
            }
            break;
        }
        default:
            return CHANS_VM_ERR_CMP;
    }

    err = CHANSVmSetInteger(vm, ret, isEqual != 0);
    return err;
}

CHANSVmErr VmCmpNeq(CHANSVm* vm, CHANSVmObjType type, CHANSVmObjHdr* ret, CHANSVmObjHdr* left, CHANSVmObjHdr* right) {
    CHANSVmErr err = VmCmpEq(vm, type, ret, left, right);
    if (err == CHANS_VM_OK) {
        ret->value.int_v = !ret->value.int_v;
    }
    return err;
}

CHANSVmErr VmCmpLt(CHANSVm* vm, CHANSVmObjType type, CHANSVmObjHdr* ret, CHANSVmObjHdr* left, CHANSVmObjHdr* right) {
    int result;
    int match;
    u32 leftLen, rightLen, maxLen;
    switch (type) {
        case CHANS_VM_OBJ_TYPE_BLANK:
        case CHANS_VM_OBJ_TYPE_ARRAY:
        case CHANS_VM_OBJ_TYPE_OBJECT: {
            result = FALSE;
            break;
        }
        case CHANS_VM_OBJ_TYPE_INTEGER: {
            result = left->value.int_v < right->value.int_v;
            break;
        }
        case CHANS_VM_OBJ_TYPE_FLOAT: {
            result = left->value.float_v < right->value.float_v;
            break;
        }
        case CHANS_VM_OBJ_TYPE_STRING: {
            rightLen = right->value.string_v->len;
            leftLen = left->value.string_v->len;
            maxLen = rightLen;
            if (leftLen < rightLen)
                maxLen = leftLen;
            if (maxLen != 0) {
                match = memcmp(left->value.string_v->spData, right->value.string_v->spData, maxLen);
            } else {
                match = 0;
            }
            result = FALSE;
            if (match < 0 || (match == 0 && leftLen < rightLen))
                result = TRUE;
            break;
        }
        default: {
            return CHANS_VM_ERR_CMP;
        }
    }
    return CHANSVmSetInteger(vm, ret, result != 0);
}

CHANSVmErr VmCmpGt(CHANSVm* vm, CHANSVmObjType type, CHANSVmObjHdr* ret, CHANSVmObjHdr* left, CHANSVmObjHdr* right) {
    return VmCmpLt(vm, type, ret, right, left);
}

CHANSVmErr VmCmpLeq(CHANSVm* vm, CHANSVmObjType type, CHANSVmObjHdr* ret, CHANSVmObjHdr* left, CHANSVmObjHdr* right) {
    BOOL result;
    BOOL match;
    u32 leftLen, rightLen, maxLen;
    switch (type) {
        case CHANS_VM_OBJ_TYPE_BLANK:
        case CHANS_VM_OBJ_TYPE_ARRAY:
        case CHANS_VM_OBJ_TYPE_OBJECT: {
            result = FALSE;
            break;
        }
        case CHANS_VM_OBJ_TYPE_INTEGER: {
            result = left->value.int_v <= right->value.int_v;
            break;
        }
        case CHANS_VM_OBJ_TYPE_FLOAT: {
            result = left->value.float_v <= right->value.float_v;
            break;
        }
        case CHANS_VM_OBJ_TYPE_STRING: {
            rightLen = right->value.string_v->len;
            leftLen = left->value.string_v->len;
            maxLen = rightLen;
            if (leftLen < rightLen)
                maxLen = leftLen;
            if (maxLen != 0) {
                match = memcmp(left->value.string_v->spData, right->value.string_v->spData, maxLen);
            } else {
                match = 0;
            }
            result = FALSE;
            if (match < 0 || (match == 0 && leftLen <= rightLen))
                result = TRUE;
            break;
        }
        default: {
            return CHANS_VM_ERR_CMP;
        }
    }
    return CHANSVmSetInteger(vm, ret, result != 0);
}

CHANSVmErr VmCmpGeq(CHANSVm* vm, CHANSVmObjType type, CHANSVmObjHdr* ret, CHANSVmObjHdr* left, CHANSVmObjHdr* right) {
    return VmCmpLeq(vm, type, ret, right, left);
}

CHANSVmErr CHANSVmGetBoolean(CHANSVmObjHdr* ret, CHANSVmObjHdr* val) {
    BOOL result;
    switch (val->type) {
        case CHANS_VM_OBJ_TYPE_BLANK: {
            result = FALSE;
            break;
        }
        case CHANS_VM_OBJ_TYPE_INTEGER: {
            result = val->value.int_v != 0;
            break;
        }
        case CHANS_VM_OBJ_TYPE_FLOAT: {
            result = FALSE;
            if (!VmIsNan(val->value.float_v) && (val->value.float_v != 0)) {
                result = TRUE;
            }
            break;
        }
        case CHANS_VM_OBJ_TYPE_STRING: {
            result = val->value.string_v->len != 0;
            break;
        }
        case CHANS_VM_OBJ_TYPE_ARRAY:
        case CHANS_VM_OBJ_TYPE_CLASS_REF:
        case CHANS_VM_OBJ_TYPE_OBJECT:
        case CHANS_VM_OBJ_TYPE_METHOD_REF: {
            result = TRUE;
            break;
        }
        default: {
            return CHANS_VM_ERR_GET_BOOLEAN;
        }
    }
    if (ret != NULL) {
        ret->value.bool_v = result;
    }
    return CHANS_VM_OK;
}

u32 CHANSVmGetArgc(CHANSVm* vm) {
    return ((CHANSVmPrivate*)vm)->pCurContext->argc;
}

CHANSVmObjHdr* CHANSVmGetArg(CHANSVm* vm, u32 argIdx) {
    CHANSVmPrivate* pVm = (CHANSVmPrivate*)vm;

    if (argIdx >= pVm->pCurContext->argc) {
        return NULL;
    }

    return (CHANSVmObjHdr*)pVm->pCurContext->pArgv + (pVm->pCurContext->argc - 1 - argIdx);
}

CHANSVmObjHdr* CHANSVmGetArgInteger(CHANSVm* vm, u32 argIdx) {
    return CHANSVmConvertObjectType(vm, CHANS_VM_OBJ_TYPE_INTEGER, CHANSVmGetArg(vm, argIdx));
}

CHANSVmObjHdr* CHANSVmGetArgFloat(CHANSVm* vm, u32 argIdx) {
    return CHANSVmConvertObjectType(vm, CHANS_VM_OBJ_TYPE_FLOAT, CHANSVmGetArg(vm, argIdx));
}

CHANSVmObjHdr* CHANSVmGetArgString(CHANSVm* vm, u32 argIdx) {
    return CHANSVmConvertObjectType(vm, CHANS_VM_OBJ_TYPE_STRING, CHANSVmGetArg(vm, argIdx));
}

// === vmErrorList: maps error codes to strings ===
const char* vmErrorList[] = {
    "CHANS_VM_ERR_NO_1000",
    "CHANS_VM_ERR_EXIT",                            /* -999 */
    "CHANS_VM_ERR_NO_MEMORY",                       /* -998 */
    "CHANS_VM_ERR_INVALID_EXE_FORMAT",              /* -997 */
    "CHANS_VM_ERR_ARG",                             /* -996 */
    "CHANS_VM_ERR_CODE_RANGE",                      /* -995 */
    "CHANS_VM_ERR_HEAP_RANGE",                      /* -994 */
    "CHANS_VM_ERR_OBJECT_NOT_FOUND",                /* -993 */
    "CHANS_VM_ERR_ALIGNMENT",                       /* -992 */
    "CHANS_VM_ERR_RESULT_TYPE",                     /* -991 */
    "CHANS_VM_ERR_TOO_MANY_DEFINED",                /* -990 */
    "CHANS_VM_ERR_ALREADY_DEFINED",                 /* -989 */
    "CHANS_VM_ERR_LINK_FAILED",                     /* -988 */
    "CHANS_VM_ERR_IN_METHOD_OR_PROPERTY",           /* -987 */
    "CHANS_VM_ERR_NATIVE_METHOD_INIT",              /* -986 */
    "CHANS_VM_ERR_LOAD_OBJECT",                     /* -985 */
    "CHANS_VM_ERR_STORE_OBJECT",                    /* -984 */
    "CHANS_VM_ERR_DIVISION_BY_ZERO",                /* -983 */
    "CHANS_VM_ERR_DELETE_OBJECT",                   /* -982 */
    "CHANS_VM_ERR_DELETE_OBJHDR",                   /* -981 */
    "CHANS_VM_ERR_DELETE_OBJDATA",                  /* -980 */
    "CHANS_VM_ERR_POP_OBJECT",                      /* -979 */
    "CHANS_VM_ERR_STR_U8_TO_U16",                   /* -978 */
    "CHANS_VM_ERR_SET_INTEGER",                     /* -977 */
    "CHANS_VM_ERR_SET_FLOAT",                       /* -976 */
    "CHANS_VM_ERR_ADD",                             /* -975 */
    "CHANS_VM_ERR_SUB",                             /* -974 */
    "CHANS_VM_ERR_MUL",                             /* -973 */
    "CHANS_VM_ERR_DIV",                             /* -972 */
    "CHANS_VM_ERR_MOD",                             /* -971 */
    "CHANS_VM_ERR_ULSHIFT",                         /* -970 */
    "CHANS_VM_ERR_ARSHIFT",                         /* -969 */
    "CHANS_VM_ERR_BIT_AND",                         /* -968 */
    "CHANS_VM_ERR_BIT_OR",                          /* -967 */
    "CHANS_VM_ERR_BIT_XOR",                         /* -966 */
    "CHANS_VM_ERR_CMP",                             /* -965 */
    "CHANS_VM_ERR_ADD_NATIVE_METHOD",               /* -964 */
    "CHANS_VM_ERR_SET_LOCAL_FUNCTION",              /* -963 */
    "CHANS_VM_ERR_PUSH_FUNC_RETURN_INFO",           /* -962 */
    "CHANS_VM_ERR_LOAD_IMM",                        /* -961 */
    "CHANS_VM_ERR_LOAD_CONST",                      /* -960 */
    "CHANS_VM_ERR_RETURN",                          /* -959 */
    "CHANS_VM_ERR_STRCAT",                          /* -958 */
    "CHANS_VM_ERR_SET_OBJECT_NATIVE_CLASS",         /* -957 */
    "CHANS_VM_ERR_RESOLVE_NATIVE_METHOD_CALL",      /* -956 */
    "CHANS_VM_ERR_RESOLVE_GLOBAL_OBJECT_REFERENCE", /* -955 */
    "CHANS_VM_ERR_NEW",                             /* -954 */
    "CHANS_VM_ERR_ADD_NATIVE_PROPERTY",             /* -953 */
    "CHANS_VM_ERR_GET_BOOLEAN",                     /* -952 */
    "CHANS_VM_ERR_CASE",                            /* -951 */
    "CHANS_VM_ERR_CHECK_STRICT_EQUALITY",           /* -950 */
    "CHANS_VM_ERR_ADD_REFERENCE",                   /* -949 */
    "CHANS_VM_ERR_LOAD_INDIRECT",                   /* -948 */
    "CHANS_VM_ERR_CALL_METHOD",                     /* -947 */
    "CHANS_VM_ERR_STORE_INDIRECT",                  /* -946 */
    "CHANS_VM_ERR_LOAD_STRING_CONST",               /* -945 */
    "CHANS_VM_ERR_SIGNAL",                          /* -944 */
    "CHANS_VM_ERR_STORE_READONLY",                  /* -943 */
    "CHANS_VM_ERR_SET_INDEX",                       /* -942 */
    "CHANS_VM_ERR_GET_PROPERTY_NAME",               /* -941 */
    "CHANS_VM_ERR_SET_STRING",                      /* -940 */
    "CHANS_VM_ERR_CALL_NEW_ARRAY",                  /* -939 */
    "CHANS_VM_ERR_OPCODE_VERSION",                  /* -938 */
    "CHANS_VM_ERR_NOT_SUPPORTED_FLOAT",             /* -937 */
    "CHANS_VM_ERR_NOT_CONSTRUCTOR",                 /* -936 */
    "CHANS_VM_ERR_DELETE_INDIRECT",                 /* -935 */
    "CHANS_VM_ERR_FORBIDDEN_CLASS_PROPERTY",        /* -934 */
    "CHANS_VM_ERR_FORBIDDEN_CLASS_METHOD",          /* -933 */
    "CHANS_VM_ERR_NEED_NEW",                        /* -932 */
    "CHANS_VM_ERR_INVALID_OBJECT",                  /* -931 */
    "CHANS_VM_ERR_INVALID_OBJECT_TYPE",             /* -930 */
    "CHANS_VM_ERR_NO_SUCH_PROPERTY",                /* -929 */
    "CHANS_VM_ERR_NO_SUCH_METHOD",                  /* -928 */
    "CHANS_VM_ERR_NOT_READABLE_PROPERTY",           /* -927 */
    "CHANS_VM_ERR_NOT_WRITABLE_PROPERTY",           /* -926 */
    "CHANS_VM_ERR_INVALID_EXE_TYPE",                /* -925 */
    "CHANS_VM_ERR_NO_SUCH_FUNCTION",                /* -924 */
    "CHANS_VM_ERR_RESERVED_OPCODE",                 /* -923 */
};

const char* vmNoError = "CHANS_VM_OK";
const char* vmUnknownError = "(unknown)";

CHANSVmNativeClass* CHANSVmFindNativeClass(CHANSVm* vm, const char* clsName) {
    CHANSVmPrivate* pVm = (CHANSVmPrivate*)vm;

    CHANSVmNativeClass* cls;
    s32 clsNameLen = strlen(clsName);

    if (clsNameLen != 0) {
        for (cls = pVm->pNativeClasses; cls != NULL; cls = cls->pNext) {
            if (clsNameLen == cls->nameLength && memcmp(clsName, &cls->sName, clsNameLen) == 0) {
                return cls;
            }
        }
    }

    return NULL;
}

CHANSVmNativeClass* CHANSVmAddNativeClass2(CHANSVm* vm, const char* clsName, CHANSVmFunction clsCtor, CHANSVmFunction clsDtor,
                                           CHANSVmFunction clsInit) {
    CHANSVmPrivate* pVm = (CHANSVmPrivate*)vm;

    CHANSVmNativeClass* cls;
    s32 clsNameLen;

    if (CHANSVmFindNativeClass(vm, clsName) == NULL) {
        clsNameLen = strlen(clsName);
        if (clsNameLen != 0) {
            cls = (CHANSVmNativeClass*)VmAlloc(vm, OSRoundUp32B(clsNameLen + sizeof(CHANSVmNativeClass) - 0x20));
            if (cls != NULL) {
                if (pVm->pNativeClasses == NULL) {
                    pVm->pNativeClasses = cls;
                } else {
                    CHANSVmNativeClass* prev = pVm->pNativeClasses;
                    while (prev->pNext != NULL) {
                        prev = prev->pNext;
                    }
                    prev->pNext = cls;
                }

                cls->ctor = clsCtor;
                cls->dtor = clsDtor;
                cls->init = clsInit;
                cls->nameLength = clsNameLen;
                memcpy(&cls->sName, clsName, clsNameLen);
                return cls;
            }
        }
    }
    return NULL;
}

CHANSVmNativeClass* CHANSVmAddNativeClass(CHANSVm* vm, const char* clsName, CHANSVmFunction clsCtor, CHANSVmFunction clsDtor) {
    return CHANSVmAddNativeClass2(vm, clsName, clsCtor, clsDtor, NULL);
}

u32 CHANSVmAddNativeMethodName(CHANSVm* vm, const char* methodName, u32 nameLength) {
    CHANSVmPrivate* pVm = (CHANSVmPrivate*)vm;
    MethodListNode* listPtr;
    MethodListNode* allocPtr;
    u32 allocSize;
    u32 index = 1;

    if (nameLength == 0) {
        goto error;
    }

    listPtr = pVm->pMethodNameList;
    if (listPtr == NULL) {
        listPtr = (MethodListNode*)&pVm->pMethodNameList;
    } else {
        while (TRUE) {
            if (nameLength == listPtr->nameLength) {
                if (memcmp(methodName, listPtr->sName, nameLength) == 0) {
                    return index;
                }
            }
            if (index >= 0xFFFF) {
                goto error;
            }
            index++;
            if (listPtr->pNext != NULL) {
                listPtr = listPtr->pNext;
            } else {
                break;
            }
        }
    }

    allocSize = OSRoundUp32B(nameLength + sizeof(MethodListNode));
    allocPtr = (MethodListNode*)VmAlloc(vm, allocSize);
    listPtr->pNext = allocPtr;
    if (allocPtr != NULL) {
        allocPtr->nameLength = nameLength;
        memcpy(listPtr->pNext->sName, methodName, nameLength);
        return index;
    }

error:
    return 0;
}

CHANSVmErr CHANSVmFindAndAddNativeProperty(CHANSVmNativeClass* cls, void* property, u32 propIndex) {
    CHANSVmNativeProperty** head = &cls->pNativeProperties;
    CHANSVmNativeProperty* node = *head;

    if (node == NULL) {
        if (property != NULL) {
            *head = (CHANSVmNativeProperty*)property;
        }
    } else {
        while (TRUE) {
            if (propIndex == node->index) {
                return CHANS_VM_ERR_ALREADY_DEFINED;
            }
            if (node->pNext == NULL) {
                break;
            }
            node = node->pNext;
        }

        if (property != NULL) {
            node->pNext = (CHANSVmNativeProperty*)property;
        }
    }

    return 0;
}

CHANSVmErr CHANSVmFindAndAddNativeMethod(CHANSVmNativeClass* cls, CHANSVmNativeMethod* method, u32 methodIndex) {
    CHANSVmNativeMethod** head = &cls->pNativeMethods;
    CHANSVmNativeMethod* node = *head;

    if (node == NULL) {
        if (method != NULL) {
            *head = method;
        }
    } else {
        while (TRUE) {
            if (methodIndex == node->index) {
                return CHANS_VM_ERR_ALREADY_DEFINED;
            }
            if (node->pNext == NULL) {
                break;
            }
            node = node->pNext;
        }

        if (method != NULL) {
            node->pNext = method;
        }
    }

    return 0;
}

CHANSVmErr CHANSVmAddNativeMethodList(CHANSVm* vm, CHANSVmNativeClass* cls, const CHANSVmMethodList* methods, u32 methodCount) {
    u32 methodIndex;
    const char* name;
    CHANSVmFunction methodFunc;

    CHANSVmErr result = 0;
    u32 hasStar;

    for (; methodCount != 0 && methods != NULL && result == 0; methods++, methodCount--) {
        hasStar = 0;
        methodFunc = methods->method;
        name = methods->spName;

        if (cls != NULL) {
            if (*name == '*') {
                hasStar = 1;
                name++;
            }

            methodIndex = CHANSVmAddNativeMethodName(vm, name, strlen(name));

            if (methodIndex != 0) {
                result = CHANSVmFindAndAddNativeProperty(cls, NULL, methodIndex);
                if (result != 0) {
                    continue;
                }

                {
                    CHANSVmNativeMethod* node = VmAlloc(vm, OSRoundUp32B(sizeof(CHANSVmNativeMethod)));
                    if (node == NULL) {
                        result = CHANS_VM_ERR_NO_MEMORY;
                    } else {
                        node->index = methodIndex;
                        node->func = methodFunc;
                        node->hasStar = hasStar;
                        result = CHANSVmFindAndAddNativeMethod(cls, node, methodIndex);
                    }
                    continue;
                }
            }
        }
        result = CHANS_VM_ERR_ADD_NATIVE_METHOD;
    }
    return result;
}

CHANSVmErr CHANSVmAddNativePropertyAccessors(CHANSVm* vm, CHANSVmNativeClass* cls, const char* name, CHANSVmFunction getter, CHANSVmFunction setter) {
    u32 methodIndex;
    CHANSVmErr result;
    u8 flag = 0;

    if (cls == NULL) {
        goto error;
    }

    if (*name == '*') {
        flag = 1;
        name++;
    }

    methodIndex = CHANSVmAddNativeMethodName(vm, name, strlen(name));
    if (methodIndex == 0) {
        goto error;
    }

    result = CHANSVmFindAndAddNativeMethod(cls, NULL, methodIndex);
    if (result == 0) {
        CHANSVmNativeProperty* node = VmAlloc(vm, OSRoundUp32B(sizeof(CHANSVmNativeProperty)));
        if (node == NULL) {
            return CHANS_VM_ERR_NO_MEMORY;
        }
        node->index = methodIndex;
        node->getter = getter;
        node->setter = setter;
        node->flag = flag;
        return CHANSVmFindAndAddNativeProperty(cls, node, methodIndex);
    error:
        return CHANS_VM_ERR_ADD_NATIVE_PROPERTY;
    }
    return result;
}

CHANSVmErr CHANSVmAddNativePropertyAccessorsList(CHANSVm* vm, CHANSVmNativeClass* cls, const CHANSVmPropertyList* properties, u32 propertyCount) {
    CHANSVmErr result = CHANS_VM_OK;
    u32 count = propertyCount;
    while (count != 0 && properties != NULL && result == CHANS_VM_OK) {
        result = CHANSVmAddNativePropertyAccessors(vm, cls, properties->spName, properties->get, properties->set);
        properties++;
        count--;
    }
    return result;
}

void* CHANSVmAddGlobalObject(CHANSVm* vm, const char* globalName, bool allocateNewNode) {
    CHANSVmPrivate* pVm = (CHANSVmPrivate*)vm;
    GlobalObjListNode* listPtr;
    GlobalObjListNode* newNode;
    u32 nameLength = strlen(globalName);

    if (nameLength != 0) {
        listPtr = pVm->pGlobalObjList;

        while (listPtr != NULL) {
            if (nameLength == listPtr->nameLength) {
                if (memcmp(globalName, listPtr->name, nameLength) == 0) {
                    return listPtr;
                }
            }
            if (listPtr->next == NULL) {
                break;
            }
            listPtr = listPtr->next;
        }

        if (allocateNewNode) {
            u32 allocSize = OSRoundUp32B(nameLength + sizeof(GlobalObjListNode));
            newNode = VmAlloc(vm, allocSize);
            if (newNode != NULL) {
                newNode->nameLength = nameLength;
                memcpy(newNode->name, globalName, nameLength);
                memset(newNode, 0, sizeof(CHANSVmObjHdr));
                newNode->hdr.flags.raw = CHANSVM_OBJ_FLAG_READONLY;

                if (listPtr == NULL) {
                    pVm->pGlobalObjList = newNode;
                } else {
                    listPtr->next = newNode;
                }
                return newNode;
            }
        }
    }
    return NULL;
}

CHANSVmErr CHANSVmSetObjectAsNativeInstance(CHANSVm* vm, CHANSVmObjHdr* obj, CHANSVmNativeClass* cls, const char* className) {
    CHANSVmErr result = CHANS_VM_ERR_SET_OBJECT_NATIVE_CLASS;
    if (obj != NULL) {
        if (cls == NULL && className != NULL) {
            cls = CHANSVmFindNativeClass(vm, className);
        }

        if (cls != NULL) {
            if (obj->type == CHANS_VM_OBJ_TYPE_BLANK || obj->type == CHANS_VM_OBJ_TYPE_OBJECT && (obj->parentCls == NULL || obj->parentCls == cls)) {
                obj->type = CHANS_VM_OBJ_TYPE_OBJECT;
                obj->parentCls = cls;
                result = CHANS_VM_OK;
            } else {
                result = CHANS_VM_ERR_ALREADY_DEFINED;
            }
        }
    }
    return result;
}

CHANSVmObjHdr* CHANSVmConstructGlobalObject(CHANSVm* vm, const char* name, CHANSVmNativeClass* cls, CHANSVmFunction ctor) {
    CHANSVmObjHdr* obj = NULL;
    if (cls != NULL) {
        obj = CHANSVmAddGlobalObject(vm, name, TRUE);
        if (obj != NULL) {
            if (CHANSVmSetObjectAsNativeInstance(vm, obj, cls, NULL) != CHANS_VM_OK || ctor != NULL && !ctor(vm, NULL, obj)) {
                obj = NULL;
            }
        }
    }
    return obj;
}

BOOL CHANSVmNewBuiltinObject(CHANSVm* vm, const char* className, CHANSVmFunction clsCtor, CHANSVmFunction clsDtor, CHANSVmFunction clsInit,
                             const char* globalName, CHANSVmFunction globalCtor, const CHANSVmPropertyList* propAccessors, u32 propCount,
                             const CHANSVmMethodList* methods, u32 methodCount) {
    CHANSVmNativeClass* cls = CHANSVmAddNativeClass2(vm, className, clsCtor, clsDtor, clsInit);
    if (cls != NULL &&
        (propAccessors == NULL || propCount == 0 || CHANSVmAddNativePropertyAccessorsList(vm, cls, propAccessors, propCount) == CHANS_VM_OK) &&
        (methods == NULL || methodCount == 0 || CHANSVmAddNativeMethodList(vm, cls, methods, methodCount) == CHANS_VM_OK) &&
        (globalName == NULL || CHANSVmConstructGlobalObject(vm, globalName, cls, globalCtor) != NULL)) {
        return TRUE;
    }
    return FALSE;
}

BOOL CHANSVmCheckNativeInstance(CHANSVmObjHdr* obj, const char* className) {
    if (obj != NULL && obj->type == CHANS_VM_OBJ_TYPE_OBJECT) {
        CHANSVmNativeClass* nativeClass = obj->parentCls;
        if (nativeClass != NULL && className != NULL && nativeClass->nameLength == strlen(className) &&
            strncmp(nativeClass->sName, className, nativeClass->nameLength) == 0) {
            return TRUE;
        }
    }
    return FALSE;
}

static CHANSVmErr VmArrayExpandCommon(CHANSVm* vm, CHANSVmObjHdr* obj, u32 startCount, u32 endCount, u32 fillFromArgs) {
    u32 total;
    u32 allocSize;
    ArrayChunk* chunk;
    ArrayChunk* current;
    u32 i;

    total = startCount + endCount;

    if (total == 0) {
        return TRUE;
    }

    allocSize = OSRoundUp32B(total * sizeof(CHANSVmObjHdr) + sizeof(ArrayChunk));
    chunk = (ArrayChunk*)VmAlloc(vm, allocSize);
    if (chunk == NULL) {
        goto error;
    }

    chunk->capacity = allocSize;
    chunk->count = total;

    current = *(ArrayChunk**)obj->value.ptr_v;
    if (startCount != 0) {
        while (current->pNext != NULL) {
            current = current->pNext;
        }
        current->pNext = chunk;
        chunk->pPrev = current;
    } else {
        while (current->pPrev != NULL) {
            current = current->pPrev;
        }
        current->pPrev = chunk;
        chunk->pNext = current;
    }

    for (i = 0, allocSize = 0; i < total; i++, allocSize += sizeof(CHANSVmObjHdr)) {
        if (fillFromArgs != 0 && i < ((CHANSVmPrivate*)vm)->pCurContext->argc && CHANSVmGetArg(vm, i) != NULL) {
            CHANSVmObjHdr* arg = CHANSVmGetArg(vm, i);
            if (CHANSVmCopyObject(vm, (CHANSVmObjHdr*)((u8*)chunk + sizeof(ArrayChunk) + allocSize), arg) == NULL) {
                goto error;
            }
            continue;
        }
        memset((u8*)chunk + sizeof(ArrayChunk) + allocSize, 0, sizeof(CHANSVmObjHdr));
    }

    return TRUE;

error:
    return FALSE;
}

static ArrayChunk* VmArraySeekTop(CHANSVmObjHdr* array) {
    ArrayChunk* cur = NULL;
    if (array != NULL) {
        cur = *(ArrayChunk**)array->value.ptr_v;
        while (cur->pNext != NULL) {
            cur = cur->pNext;
        }
    }
    return cur;
}

static u32 VmArrayGetLengthInternal(CHANSVmObjHdr* array) {
    u32 len = 0;
    ArrayChunk* chunk = VmArraySeekTop(array);
    while (chunk != NULL) {
        len += chunk->count;
        chunk = chunk->pPrev;
    }
    return len;
}

static CHANSVmObjHdr* VmGetArrayElement(CHANSVm* vm, CHANSVmObjHdr* array, u32 index, s32 autoExpand) {
    ArrayChunk* chunk;
    u32 total;

    while (TRUE) {
        total = 0;
        chunk = VmArraySeekTop(array);
        while (chunk != NULL) {
            u32 count = chunk->count;
            u32 tmp = total + count;
            if (index < tmp) {
                u32 offset = chunk->start + index - total;
                return (CHANSVmObjHdr*)((u8*)chunk + (offset * sizeof(CHANSVmObjHdr)) + sizeof(ArrayChunk));
            }
            total += count;
            chunk = chunk->pPrev;
        }
        if (autoExpand != 0) {
            if (VmArrayExpandCommon(vm, array, 0, index - total + 1, FALSE)) {
                autoExpand = 0;
                continue;
            }
        }
        return NULL;
    }
}

CHANSVmObjHdr* CHANSVmGetArrayElement(CHANSVm* vm, CHANSVmObjHdr* array, u32 index) {
    if (array != NULL && array->type == CHANS_VM_OBJ_TYPE_ARRAY) {
        CHANSVmObjHdr* result = VmGetArrayElement(vm, array, index, FALSE);
        if (result != NULL) {
            return result;
        }
    }

    return NULL;
}

const static char VmArrayClassName[] = "Array";

VmCtorDefine(Array) {
    CHANSVmPrivate* pVm = (CHANSVmPrivate*)VmInst;
    CHANSVmObjHdr* arg;
    u32 value = pVm->pCurContext->argc;
    BOOL fillArgs = TRUE;

    if (value == 1) {
        arg = CHANSVmGetArg(VmInst, 0);
        if (arg != NULL && arg->type == CHANS_VM_OBJ_TYPE_INTEGER) {
            if (arg->value.int_v <= (u64)~1U) {
                value = (u32)arg->value.int_v;
                fillArgs = FALSE;
            }
        }
    }

    VmReturnObj->type = CHANS_VM_OBJ_TYPE_ARRAY;
    VmReturnObj->parentCls = pVm->pArrayCls;

    if (CHANSVmNewObjData(VmInst, VmReturnObj, sizeof(ArrayChunk)) != NULL) {
        if (value == 0 || VmArrayExpandCommon(VmInst, VmReturnObj, value, 0, (u32)fillArgs)) {
            return TRUE;
        }
    }
    return FALSE;
}

VmDtorDefine(Array) {
    u32 len;
    u32 i;
    CHANSVmObjHdr* elem;

    len = VmArrayGetLengthInternal(VmParentObj);
    for (i = 0; i < len; i++) {
        elem = VmGetArrayElement(VmInst, VmParentObj, i, FALSE);
        if (CHANSVmDeleteObject(VmInst, elem) != CHANS_VM_OK) {
            goto error;
        }
    }
    return TRUE;
error:
    return FALSE;
}

CHANSVmObjHdr* CHANSVmGetArrayElement2D(CHANSVm* vm, void* array, s32 dimension0, s32 dimension1) {
    CHANSVmObjHdr* elem = CHANSVmGetArrayElement(vm, array, dimension0);
    if (elem != NULL) {
        elem = VmGetArrayElement(vm, elem, dimension1, FALSE);
        if (elem != NULL) {
            return elem;
        }
    }
    return NULL;
}

CHANSVmObjHdr* CHANSVmGetArrayElement2DFloat(CHANSVm* vm, f64* array, s32 dimension0, s32 dimension1) {
    return CHANSVmConvertObjectType(vm, CHANS_VM_OBJ_TYPE_FLOAT, CHANSVmGetArrayElement2D(vm, array, dimension0, dimension1));
}

u32 CHANSVmGetArrayLength(CHANSVm* vm, CHANSVmObjHdr* array) {
    if (array != NULL && array->type == CHANS_VM_OBJ_TYPE_ARRAY) {
        return VmArrayGetLengthInternal(array);
    }
    return 0;
}

static u32 VmArrayJoinEstimateStrSize(CHANSVmObjHdr* object, u32 sepLen) {
    ArrayChunk* chunk;
    u32 total;
    u32 countInChunk;
    s32 type;

    total = 0;
    chunk = VmArraySeekTop(object);
    while (chunk != NULL) {
        countInChunk = chunk->start;
        while (countInChunk < chunk->start + chunk->count) {
            type = (s32)chunk->elements[countInChunk].type;

            switch (type) {
                case CHANS_VM_OBJ_TYPE_STRING: {
                    u32 strLen = chunk->elements[countInChunk].value.string_v->len;
                    total += strLen;
                    break;
                }
                case CHANS_VM_OBJ_TYPE_INTEGER:
                case CHANS_VM_OBJ_TYPE_FLOAT: {
                    total += 0x80;
                    break;
                }
                case CHANS_VM_OBJ_TYPE_ARRAY: {
                    u32 strLen = VmArrayJoinEstimateStrSize(&chunk->elements[countInChunk], sepLen);
                    total += strLen;
                    break;
                }
                case CHANS_VM_OBJ_TYPE_BLANK: {
                    break;
                }
                default: {
                    CHANSVmPrintf(318, ": unsupported type 0x%x\n", type);
                    goto error;
                }
            }
            total += sepLen;
            countInChunk++;
        }
        chunk = chunk->pPrev;
    }
    return total;

error:
    return 0;
}

static u32 VmArrayJoinSub(CHANSVmObjHdr* obj, CHANSVmObjHdr* array, wchar_t* separator, u32 sepLen, u32 bufSize, u32 offset) {
    ArrayChunk* chunk;
    u32 countInChunk;
    u32 savedOffset;
    char* strBuf;
    u32 elemLen;

    savedOffset = offset;
    chunk = VmArraySeekTop(array);

    while (chunk != NULL) {
        countInChunk = chunk->start;
        while (countInChunk < chunk->start + chunk->count) {
            s32 type = chunk->elements[countInChunk].type;

            switch (type) {
                case CHANS_VM_OBJ_TYPE_BLANK: {
                    elemLen = 0;
                    break;
                }
                case CHANS_VM_OBJ_TYPE_STRING: {
                    vmStringObjVal* strObj = chunk->elements[countInChunk].value.string_v;
                    elemLen = strObj->len;
                    if (offset + elemLen > bufSize) {
                        goto error;
                    }
                    memcpy((u8*)*obj->value.ptr_v + offset, (void*)*(u32*)strObj, elemLen);
                    break;
                }
                case CHANS_VM_OBJ_TYPE_INTEGER: {
                    if (offset + 0x80 > bufSize) {
                        goto error;
                    }
                    strBuf = (char*)(*obj->value.ptr_v) + offset;
                    elemLen = snprintf(strBuf, 0x40, "%lld", chunk->elements[countInChunk].value.int_v);
                    CHANSVmStrCpyToU16FromU8((wchar_t*)strBuf, strBuf, elemLen);
                    elemLen = elemLen << 1;
                    break;
                }
                case CHANS_VM_OBJ_TYPE_FLOAT: {
                    if (offset + 0x80 > bufSize) {
                        goto error;
                    }
                    elemLen = CHANSVm_8144B62C((wchar_t*)((u8*)(*obj->value.ptr_v) + offset), 0x80, chunk->elements[countInChunk].value.float_v);
                    break;
                }
                case CHANS_VM_OBJ_TYPE_ARRAY: {
                    elemLen = 0;
                    offset = VmArrayJoinSub(obj, &chunk->elements[countInChunk], separator, sepLen, bufSize, offset);
                    break;
                }
                default: {
                    CHANSVmPrintf(389, ": unsupported type 0x%x\n", type);
                    goto error;
                }
            }

            offset += elemLen;
            if (separator != NULL) {
                if (offset + sepLen > bufSize) {
                    goto error;
                }
                memcpy((u8*)*obj->value.ptr_v + offset, separator, sepLen);
                offset += sepLen;
            }
            countInChunk++;
        }
        chunk = chunk->pPrev;
    }

    if (separator != NULL && savedOffset < offset) {
        offset -= sepLen;
        memset((u8*)*obj->value.ptr_v + offset, 0, sepLen);
    }
    return offset;
error:
    return 0;
}

CHANSVmObjHdr* VmArrayJoinCommon(CHANSVm* vm, u32 retObjAddr, CHANSVmObjHdr* object, u32 separatorAddr, u32 separatorLen) {
    CHANSVmObjHdr* result;
    u32 estSize;
    u32 actualLen;

    if (separatorAddr == 0) {
        separatorAddr = *(u32*)&VmStrObj_Seperator;
        separatorLen = 2;
    }

    estSize = VmArrayJoinEstimateStrSize(object, separatorLen);
    result = CHANSVmNewObject(vm, 0, (CHANSVmObjHdr*)retObjAddr, CHANS_VM_OBJ_TYPE_STRING, estSize);
    if (result != NULL && estSize != 0) {
        actualLen = VmArrayJoinSub(result, object, (wchar_t*)separatorAddr, separatorLen, estSize, 0);
        result->value.string_v->len = actualLen;
    }
    return result;
}

VmMethodDefine(Array, Join) {
    CHANSVmObjHdr* arg;
    CHANSVmObjHdr* sepObj;
    u32 sepLen;
    u32 arg2;

    arg = CHANSVmGetArg(VmInst, 0);
    sepObj = CHANSVmConvertObjectType(VmInst, CHANS_VM_OBJ_TYPE_STRING, arg);
    sepLen = sepObj != NULL ? sepObj->value.string_v->len : 0;
    arg2 = sepObj != NULL ? *(u32*)sepObj->value.ptr_v : 0;
    return VmArrayJoinCommon(VmInst, (u32)VmReturnObj, VmParentObj, arg2, sepLen) != 0;
}

VmMethodDefine(Array, Slice) {
    u32 start;
    u32 len;
    u32 end;
    u32 i;
    u32 newLen;
    CHANSVmObjHdr* arg0;
    CHANSVmObjHdr* arg1;

    arg0 = CHANSVmConvertObjectType(VmInst, CHANS_VM_OBJ_TYPE_INTEGER, CHANSVmGetArg(VmInst, 0));
    arg1 = CHANSVmConvertObjectType(VmInst, CHANS_VM_OBJ_TYPE_INTEGER, CHANSVmGetArg(VmInst, 1));
    start = 0;
    len = VmArrayGetLengthInternal(VmParentObj);

    if (arg0 != NULL) {
        if (arg0->value.int_v > len) {
            start = len;
        } else if (arg0->value.int_v < 0) {
            start = arg0->value.int_v + len;
            if (arg0->value.int_v + len < 0)
                start = 0;
        } else {
            start = arg0->value.int_v;
        }
    }
    end = len;

    if (arg1 != NULL) {
        if (arg1->value.int_v > len) {
            end = len;
        } else if (arg1->value.int_v < 0) {
            end = (u32)(arg1->value.int_v + len);
            if (arg1->value.int_v + len < 0)
                end = 0;
        } else {
            end = arg1->value.int_v;
        }
    }
    newLen = end <= start ? 0 : end - start;

    if (CHANSVmNewArrayObject(VmInst, VmReturnObj, 1, &newLen) != NULL) {
        for (i = 0; i < newLen; i++) {
            CHANSVmObjHdr* dstElem = CHANSVmGetArrayElement(VmInst, VmReturnObj, i);
            CHANSVmObjHdr* srcElem = CHANSVmGetArrayElement(VmInst, VmParentObj, start + i);
            if (dstElem == NULL || srcElem == NULL || CHANSVmCopyObject(VmInst, dstElem, srcElem) == NULL) {
                goto error;
            }
        }
        return TRUE;
    }
error:
    return FALSE;
}

CHANSVmObjHdr* CHANSVmNewArrayObject(CHANSVm* vm, CHANSVmObjHdr* object, u32 dimensions, u32* sizeEachDimension) {
    if (dimensions == 0 || sizeEachDimension == NULL) {
        goto error;
    }

    object = CHANSVmNewObject(vm, 0, object, CHANS_VM_OBJ_TYPE_ARRAY, 0x18);
    if (object == NULL) {
        goto error;
    }

    object->parentCls = ((CHANSVmPrivate*)vm)->pArrayCls;
    if (object->parentCls == NULL) {
        goto error;
    }
    if (sizeEachDimension[0] != 0 && VmArrayExpandCommon(vm, object, sizeEachDimension[0], 0, FALSE) == 0) {
        goto error;
    }
    if (dimensions > 1) {
        u32 i;
        for (i = 0; i < sizeEachDimension[0]; i++) {
            CHANSVmObjHdr* elem = VmGetArrayElement(vm, object, i, FALSE);
            if (elem == NULL || CHANSVmNewArrayObject(vm, elem, dimensions - 1, sizeEachDimension + 1) == NULL) {
                goto error;
            }
        }
    }

    return object;
error:
    return NULL;
}

VmMethodDefine(Array, New2d) {
    CHANSVmPrivate* pVm = (CHANSVmPrivate*)VmInst;
    u32 sizes[2];
    u32 i;

    if (VmReturnObj == NULL || pVm->pCurContext->argc != 2) {
        goto error;
    }

    for (i = 0; i < 2; i++) {
        CHANSVmObjHdr* arg = CHANSVmConvertObjectType(VmInst, CHANS_VM_OBJ_TYPE_INTEGER, CHANSVmGetArg(VmInst, i));
        if (arg == NULL || arg->value.int_v > 0xFFFFFFFEULL) {
            goto error;
        }
        sizes[i] = (u32)arg->value.int_v;
    }

    return (s32)CHANSVmNewArrayObject(VmInst, VmReturnObj, 2, sizes) != 0;
error:
    return FALSE;
}

VmMethodDefine(Array, Shift) {
    ArrayChunk* chunk;
    CHANSVmObjHdr* elemPtr;

    chunk = VmArraySeekTop(VmParentObj);
    while (chunk != NULL && chunk->count == 0) {
        chunk = chunk->pPrev;
    }

    if (chunk != NULL && chunk->count != 0) {
        elemPtr = (CHANSVmObjHdr*)((u8*)chunk + chunk->start * 16 + sizeof(ArrayChunk));

        if (CHANSVmCopyObject(VmInst, VmReturnObj, elemPtr) == NULL || CHANSVmDeleteObject(VmInst, elemPtr) != CHANS_VM_OK) {
            goto error;
        }
        chunk->start++;
        chunk->count--;
    }
    return TRUE;
error:
    return FALSE;
}

VmMethodDefine(Array, Unshift) {
    CHANSVmPrivate* pVm = (CHANSVmPrivate*)VmInst;
    u32 argc = pVm->pCurContext->argc;

    if (VmArrayExpandCommon(VmInst, VmParentObj, argc, 0, TRUE)) {
        u32 len = VmArrayGetLengthInternal(VmParentObj);
        return CHANSVmSetInteger(VmInst, VmReturnObj, len) == CHANS_VM_OK;
    }
    return FALSE;
}

VmMethodDefine(Array, Push) {
    CHANSVmPrivate* pVm = (CHANSVmPrivate*)VmInst;
    u32 argc = pVm->pCurContext->argc;

    if (VmArrayExpandCommon(VmInst, VmParentObj, 0, argc, TRUE)) {
        u32 len = VmArrayGetLengthInternal(VmParentObj);
        return CHANSVmSetInteger(VmInst, VmReturnObj, len) == CHANS_VM_OK;
    }
    return FALSE;
}

VmMethodDefine(Array, Pop) {
    ArrayChunk* chunk = VmArraySeekTop(VmParentObj);
    ArrayChunk* lastChunk = NULL;

    while (chunk != NULL) {
        if (chunk->count != 0) {
            lastChunk = chunk;
        }
        chunk = chunk->pPrev;
    }

    if (lastChunk != NULL) {
        u8* elemPtr = (u8*)lastChunk + (lastChunk->start + lastChunk->count - 1) * sizeof(CHANSVmObjHdr) + sizeof(ArrayChunk);
        if (VmReturnObj != NULL) {
            memcpy(VmReturnObj, elemPtr, sizeof(CHANSVmObjHdr));
            VmReturnObj->flags.raw &= ~CHANSVM_OBJ_FLAG_READONLY;
            memset(elemPtr, 0, sizeof(CHANSVmObjHdr));
        } else if (CHANSVmDeleteObject(VmInst, (CHANSVmObjHdr*)elemPtr) != CHANS_VM_OK) {
            goto error;
        }
        lastChunk->count--;
    }
    return TRUE;
error:
    return FALSE;
}

VmMethodDefine(Array, GetLength) {
    u32 len = VmArrayGetLengthInternal(VmParentObj);
    return CHANSVmSetInteger(VmInst, VmReturnObj, len) == CHANS_VM_OK;
}

VmMethodDefine(Array, SetLength) {
    BOOL result = FALSE;
    u32 oldLen = VmArrayGetLengthInternal(VmParentObj);
    u32 newLen;
    CHANSVmObjHdr* arg = CHANSVmConvertObjectType(VmInst, CHANS_VM_OBJ_TYPE_INTEGER, CHANSVmGetArg(VmInst, 0));

    if (arg != NULL) {
        if (arg->value.int_v <= 0xFFFFFFFEULL) {
            newLen = arg->value.int_v;
            if (newLen < oldLen) {
                do {
                    if (VmArrayPop(VmInst, VmParentObj, NULL) == 0) {
                        goto error;
                    }
                    oldLen--;
                } while (oldLen > newLen);
            } else if (newLen > oldLen) {
                if (VmGetArrayElement(VmInst, VmParentObj, newLen - 1, TRUE) == NULL) {
                    goto error;
                }
            }
            result = TRUE;
        }
    }
    return result;
error:
    return FALSE;
}

const CHANSVmPropertyList VmArrayPropertyTbl[] = {
    {"length", VmArrayGetLength, VmArraySetLength},
};
const CHANSVmMethodList VmArrayMethodTbl[] = {
    {"join", VmArrayJoin},   {"new2d", VmArrayNew2d}, {"pop", VmArrayPop},         {"push", VmArrayPush},
    {"shift", VmArrayShift}, {"slice", VmArraySlice}, {"unshift", VmArrayUnshift},
};

const CHANSVmIntConstantList VmDateConstantTbl[] = {
    // Avoid L".." because it inserts two null terminator bytes, but the original only used one, despite it being a wide string.
    {(const char*)"\0U\0T\0C", 6},
    {NULL, 0}};

BOOL VmDateCommon(CHANSVm* vm, OSCalendarTime* out) {
    u32 argc;
    u32 i;
    OSCalendarTime nettime;
    u64 time;

    if (out != NULL) {
        argc = ((CHANSVmPrivate*)vm)->pCurContext->argc;

        if (argc == 0) {
            goto osgettime;
        }
        if (argc == 1) {
            CHANSVmObjHdr* arg = CHANSVmGetArg(vm, 0);

            if (arg && arg->type == CHANS_VM_OBJ_TYPE_STRING) {
                if (arg->value.wstring_v->len == 6 && memcmp(arg->value.wstring_v->spData, VmDateConstantTbl[0].spName, 6) == 0) {
                    NETGetUniversalCalendar(&nettime);
                    time = OSCalendarTimeToTicks(&nettime);
                    time = (u64)((s64)time / (__OSBusClock / 4 / 1000));
                    goto finalize;
                }
            }

            arg = CHANSVmGetArg(vm, 0);
            arg = CHANSVmConvertObjectType(vm, CHANS_VM_OBJ_TYPE_INTEGER, arg);
            if (arg) {
                time = arg->value.int_v;
                goto finalize;
            }
        }

        memset(&nettime, 0, sizeof(nettime));

        if (argc > 7) {
            argc = 7;
        }

        for (i = 0; i < argc; i++) {
            int* dst;
            CHANSVmObjHdr* arg = CHANSVmGetArg(vm, i);
            arg = CHANSVmConvertObjectType(vm, CHANS_VM_OBJ_TYPE_INTEGER, arg);
            if (arg == NULL) {
                break;
            }

            switch (i) {
                case 0:
                    dst = &nettime.year;
                    break;
                case 1:
                    dst = &nettime.mon;
                    break;
                case 2:
                    dst = &nettime.mday;
                    break;
                case 3:
                    dst = &nettime.hour;
                    break;
                case 4:
                    dst = &nettime.min;
                    break;
                case 5:
                    dst = &nettime.sec;
                    break;
                case 6:
                    dst = &nettime.msec;
                    break;
                default:
                    CHANSVmPrintfEx("internal error in %s line %d\n", 211, __FUNCTION__);
                    return FALSE;
            }

            *dst = (s32)arg->value.int_v;
        }

        if (nettime.year < 2000) {
            nettime.year = 2000;
        }
        if (nettime.mday < 1) {
            nettime.mday = 1;
        }

        time = OSCalendarTimeToTicks(&nettime);
        time = (u64)((s64)time / (__OSBusClock / 4 / 1000));
        goto finalize;

    osgettime:
        time = OSGetTime();
        time = (u64)((s64)time / (__OSBusClock / 4 / 1000));

    finalize:
        time = time * (__OSBusClock / 4 / 1000);
        OSTicksToCalendarTime((s64)time, out);
        return TRUE;
    }
    return FALSE;
}

VmCtorDefine(Date) {
    return VmDateCommon(VmInst, CHANSVmNewObjData(VmInst, VmReturnObj, 0x28));
}

#define RANGE(val, min, max) ((val) >= (min) && (val) <= (max))

const char* VmDateDayTbl[] = {"Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"};
const char* VmDateMonthTbl[] = {"Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"};

VmDtorDefine(Date) {
    char buffer[32];
    unsigned int uv;
    OSCalendarTime date;
    OSCalendarTime* datePtr;

    datePtr = &date;
    memset(datePtr, 0, sizeof(OSCalendarTime));

    if (VmDateCommon(VmInst, datePtr) && RANGE(datePtr->sec, 0, 61) && RANGE(datePtr->min, 0, 59) && RANGE(datePtr->hour, 0, 23) &&
        RANGE(datePtr->mday, 1, 31) && RANGE(datePtr->mon, 0, 11) && RANGE(datePtr->year, 1900, 9999) && RANGE(datePtr->wday, 0, 6)) {
        uv = snprintf(buffer, 0x20, "%s %s %02d %02d:%02d:%02d %04d", VmDateDayTbl[datePtr->wday], VmDateMonthTbl[datePtr->mon], datePtr->mday,
                      datePtr->hour, datePtr->min, datePtr->sec, datePtr->year);

        if (uv <= 0x20) {
            return CHANSVmSetU16StringFromU8(VmInst, VmReturnObj, buffer, uv) == CHANS_VM_OK;
        }
    }

    return (CHANSVmNewObject(VmInst, FALSE, VmReturnObj, CHANS_VM_OBJ_TYPE_STRING, 0) != 0);
}

VmMethodDefine(Date, GetDate) {
    OSCalendarTime* cal = *(OSCalendarTime**)VmParentObj->value.ptr_v;
    return CHANSVmSetInteger(VmInst, VmReturnObj, cal->mday) == CHANS_VM_OK;
}

VmMethodDefine(Date, GetDay) {
    OSCalendarTime* cal = *(OSCalendarTime**)VmParentObj->value.ptr_v;
    return CHANSVmSetInteger(VmInst, VmReturnObj, cal->wday) == CHANS_VM_OK;
}

VmMethodDefine(Date, GetFullYear) {
    OSCalendarTime* cal = *(OSCalendarTime**)VmParentObj->value.ptr_v;
    return CHANSVmSetInteger(VmInst, VmReturnObj, cal->year) == CHANS_VM_OK;
}

VmMethodDefine(Date, GetHours) {
    OSCalendarTime* cal = *(OSCalendarTime**)VmParentObj->value.ptr_v;
    return CHANSVmSetInteger(VmInst, VmReturnObj, cal->hour) == CHANS_VM_OK;
}

VmMethodDefine(Date, GetMilliseconds) {
    OSCalendarTime* cal = *(OSCalendarTime**)VmParentObj->value.ptr_v;
    return CHANSVmSetInteger(VmInst, VmReturnObj, cal->msec) == CHANS_VM_OK;
}

VmMethodDefine(Date, GetMinutes) {
    OSCalendarTime* cal = *(OSCalendarTime**)VmParentObj->value.ptr_v;
    return CHANSVmSetInteger(VmInst, VmReturnObj, cal->min) == CHANS_VM_OK;
}

VmMethodDefine(Date, GetMonth) {
    OSCalendarTime* cal = *(OSCalendarTime**)VmParentObj->value.ptr_v;
    return CHANSVmSetInteger(VmInst, VmReturnObj, cal->mon) == CHANS_VM_OK;
}

VmMethodDefine(Date, GetSeconds) {
    OSCalendarTime* cal = *(OSCalendarTime**)VmParentObj->value.ptr_v;
    return CHANSVmSetInteger(VmInst, VmReturnObj, cal->sec) == CHANS_VM_OK;
}

VmMethodDefine(Date, GetTime) {
    s64 time = OSCalendarTimeToTicks(*(OSCalendarTime**)VmParentObj->value.ptr_v);
    s64 t = time / (__OSBusClock / 4 / 1000);
    return CHANSVmSetInteger(VmInst, VmReturnObj, t) == CHANS_VM_OK;
}

VmMethodDefine(Date, GetRTC) {
    OSCalendarTime* cal = *(OSCalendarTime**)VmParentObj->value.ptr_v;
    u32 bias = SCGetCounterBias();
    s64 ticks = OSCalendarTimeToTicks(cal);
    u64 t = ticks / (__OSBusClock / 4 / 1000);
    u32 val;
    t = t / 1000;
    val = (u32)(t - (unsigned int)bias);
    return CHANSVmSetInteger(VmInst, VmReturnObj, val) == CHANS_VM_OK;
}

const CHANSVmMethodList VmDateMethodTbl[] = {
    {"getDate", VmDateGetDate},
    {"getDay", VmDateGetDay},
    {"getFullYear", VmDateGetFullYear},
    {"getHours", VmDateGetHours},
    {"getMilliseconds", VmDateGetMilliseconds},
    {"getMinutes", VmDateGetMinutes},
    {"getMonth", VmDateGetMonth},
    {"getSeconds", VmDateGetSeconds},
    {"getTime", VmDateGetTime},
    {"getRTC", VmDateGetRTC},
};

VmMethodDefine(Math, E) {
    return CHANSVmSetFloat(VmInst, VmReturnObj, M_E) == CHANS_VM_OK;
}
VmMethodDefine(Math, LN10) {
    return CHANSVmSetFloat(VmInst, VmReturnObj, M_LN10) == CHANS_VM_OK;
}
VmMethodDefine(Math, LN2) {
    return CHANSVmSetFloat(VmInst, VmReturnObj, M_LN2) == CHANS_VM_OK;
}
VmMethodDefine(Math, LOG2E) {
    return CHANSVmSetFloat(VmInst, VmReturnObj, M_LOG2E) == CHANS_VM_OK;
}
VmMethodDefine(Math, LOG10E) {
    return CHANSVmSetFloat(VmInst, VmReturnObj, M_LOG10E) == CHANS_VM_OK;
}
VmMethodDefine(Math, PI) {
    return CHANSVmSetFloat(VmInst, VmReturnObj, M_PI) == CHANS_VM_OK;
}
VmMethodDefine(Math, SQRT1_2) {
    return CHANSVmSetFloat(VmInst, VmReturnObj, M_SQRT1_2) == CHANS_VM_OK;
}
VmMethodDefine(Math, SQRT2) {
    return CHANSVmSetFloat(VmInst, VmReturnObj, M_SQRT2) == CHANS_VM_OK;
}
VmMethodDefine(Math, abs) {
    // u32 cast needed to avoid extra neg-instruction.
    u32 arg = (u32)CHANSVmGetArgFloat(VmInst, 0);
    return (arg != 0 && CHANSVmSetFloat(VmInst, VmReturnObj, fabs(((CHANSVmObjHdr*)arg)->value.float_v)) == CHANS_VM_OK);
}
VmMethodDefine(Math, acos) {
    CHANSVmObjHdr* arg = CHANSVmGetArgFloat(VmInst, 0);
    if (arg != NULL) {
        f64 val = arg->value.float_v;
        f64 newVal;

        if (-1.0 <= val && val <= 1.0) {
            newVal = acos(val);
        } else {
            newVal = VmNan;
        }
        return CHANSVmSetFloat(VmInst, VmReturnObj, newVal) == CHANS_VM_OK;
    }
    return FALSE;
}
VmMethodDefine(Math, asin) {
    CHANSVmObjHdr* arg = CHANSVmGetArgFloat(VmInst, 0);
    if (arg != NULL) {
        f64 val = arg->value.float_v;
        f64 newVal;

        if (-1.0 <= val && val <= 1.0) {
            newVal = asin(val);
        } else {
            newVal = VmNan;
        }
        return CHANSVmSetFloat(VmInst, VmReturnObj, newVal) == CHANS_VM_OK;
    }
    return FALSE;
}
VmMethodDefine(Math, atan) {
    CHANSVmObjHdr* arg = CHANSVmGetArgFloat(VmInst, 0);
    return arg != NULL && CHANSVmSetFloat(VmInst, VmReturnObj, atan(arg->value.float_v)) == CHANS_VM_OK;
}
VmMethodDefine(Math, atan2) {
    CHANSVmObjHdr* arg0 = CHANSVmGetArgFloat(VmInst, 0);
    CHANSVmObjHdr* arg1 = CHANSVmGetArgFloat(VmInst, 1);
    return arg0 != NULL && arg1 != NULL && CHANSVmSetFloat(VmInst, VmReturnObj, atan2(arg0->value.float_v, arg1->value.float_v)) == CHANS_VM_OK;
}
VmMethodDefine(Math, ceil) {
    CHANSVmObjHdr* arg = CHANSVmGetArgFloat(VmInst, 0);
    return arg != NULL && CHANSVmSetFloat(VmInst, VmReturnObj, ceil(arg->value.float_v)) == CHANS_VM_OK;
}
VmMethodDefine(Math, cos) {
    CHANSVmObjHdr* arg = CHANSVmGetArgFloat(VmInst, 0);
    return arg != NULL && CHANSVmSetFloat(VmInst, VmReturnObj, cos(arg->value.float_v)) == CHANS_VM_OK;
}
VmMethodDefine(Math, exp) {
    CHANSVmObjHdr* arg = CHANSVmGetArgFloat(VmInst, 0);
    return arg != NULL && CHANSVmSetFloat(VmInst, VmReturnObj, exp(arg->value.float_v)) == CHANS_VM_OK;
}
VmMethodDefine(Math, floor) {
    CHANSVmObjHdr* arg = CHANSVmGetArgFloat(VmInst, 0);
    return arg != NULL && CHANSVmSetFloat(VmInst, VmReturnObj, floor(arg->value.float_v)) == CHANS_VM_OK;
}
VmMethodDefine(Math, log) {
    CHANSVmObjHdr* arg = CHANSVmGetArgFloat(VmInst, 0);
    return arg != NULL && CHANSVmSetFloat(VmInst, VmReturnObj, log(arg->value.float_v)) == CHANS_VM_OK;
}
inline VmMethodDefine(Math, fmax) {
    CHANSVmObjHdr* arg0 = CHANSVmGetArgFloat(VmInst, 0);
    CHANSVmObjHdr* arg1 = CHANSVmGetArgFloat(VmInst, 1);
    return arg0 != NULL && arg1 != NULL && CHANSVmSetFloat(VmInst, VmReturnObj, fmax(arg0->value.float_v, arg1->value.float_v)) == CHANS_VM_OK;
}
VmMethodDefine(Math, max) {
    CHANSVmObjHdr* arg0 = CHANSVmGetArg(VmInst, 0);
    CHANSVmObjHdr* arg1 = CHANSVmGetArg(VmInst, 1);
    if (arg0 != NULL && arg1 != NULL) {
        if (arg0->type == arg1->type && arg0->type == CHANS_VM_OBJ_TYPE_INTEGER) {
            if (arg0->value.int_v < arg1->value.int_v) {
                arg0 = arg1;
            }

            return CHANSVmSetInteger(VmInst, VmReturnObj, arg0->value.int_v) == CHANS_VM_OK;
        } else {
            return (VmMethod(Math, fmax))(VmInst, VmParentObj, VmReturnObj);
        }
    } else {
        return FALSE;
    }
}
inline VmMethodDefine(Math, fmin) {
    CHANSVmObjHdr* arg0 = CHANSVmGetArgFloat(VmInst, 0);
    CHANSVmObjHdr* arg1 = CHANSVmGetArgFloat(VmInst, 1);
    return arg0 != NULL && arg1 != NULL && CHANSVmSetFloat(VmInst, VmReturnObj, fmin(arg0->value.float_v, arg1->value.float_v)) == CHANS_VM_OK;
}
VmMethodDefine(Math, min) {
    CHANSVmObjHdr* arg0 = CHANSVmGetArg(VmInst, 0);
    CHANSVmObjHdr* arg1 = CHANSVmGetArg(VmInst, 1);
    if (arg0 != NULL && arg1 != NULL) {
        if (arg0->type == arg1->type && arg0->type == CHANS_VM_OBJ_TYPE_INTEGER) {
            if (arg0->value.int_v > arg1->value.int_v) {
                arg0 = arg1;
            }

            return CHANSVmSetInteger(VmInst, VmReturnObj, arg0->value.int_v) == CHANS_VM_OK;
        } else {
            return (VmMethod(Math, fmin))(VmInst, VmParentObj, VmReturnObj);
        }
    } else {
        return FALSE;
    }
}
VmMethodDefine(Math, pow) {
    CHANSVmObjHdr* arg0 = CHANSVmGetArgFloat(VmInst, 0);
    CHANSVmObjHdr* arg1 = CHANSVmGetArgFloat(VmInst, 1);
    return arg0 != NULL && arg1 != NULL && CHANSVmSetFloat(VmInst, VmReturnObj, pow(arg0->value.float_v, arg1->value.float_v)) == CHANS_VM_OK;
}
VmMethodDefine(Math, random) {
    return CHANSVmSetFloat(VmInst, VmReturnObj, rand() / 32767.0) == CHANS_VM_OK;
}
VmMethodDefine(Math, round) {
    CHANSVmObjHdr* arg = CHANSVmGetArgFloat(VmInst, 0);
    if (arg != NULL) {
        f64 val = arg->value.float_v;
        f64 newVal;

        if (val > 0.0) {
            newVal = floor(val + 0.5);
        } else {
            newVal = ceil(val - 0.5);
        }
        return CHANSVmSetFloat(VmInst, VmReturnObj, newVal) == CHANS_VM_OK;
    } else {
        return FALSE;
    }
}
VmMethodDefine(Math, sin) {
    CHANSVmObjHdr* arg = CHANSVmGetArgFloat(VmInst, 0);
    return arg != NULL && CHANSVmSetFloat(VmInst, VmReturnObj, sin(arg->value.float_v)) == CHANS_VM_OK;
}
VmMethodDefine(Math, sqrt) {
    CHANSVmObjHdr* arg = CHANSVmGetArgFloat(VmInst, 0);
    if (arg != NULL) {
        f64 val = arg->value.float_v;
        f64 newVal;

        if (arg->value.float_v < 0.0) {
            newVal = VmNan;
        } else {
            newVal = sqrt(val);
        }
        return CHANSVmSetFloat(VmInst, VmReturnObj, newVal) == CHANS_VM_OK;
    } else {
        return FALSE;
    }
}
VmMethodDefine(Math, tan) {
    CHANSVmObjHdr* arg = CHANSVmGetArgFloat(VmInst, 0);
    return arg != NULL && CHANSVmSetFloat(VmInst, VmReturnObj, tan(arg->value.float_v)) == CHANS_VM_OK;
}

const CHANSVmPropertyList VmMathPropertyTbl[] = {
    {"E", VmMathE, NULL},           {"LN10", VmMathLN10, NULL}, {"LN2", VmMathLN2, NULL},         {"LOG2E", VmMathLOG2E, NULL},
    {"LOG10E", VmMathLOG10E, NULL}, {"PI", VmMathPI, NULL},     {"SQRT1_2", VmMathSQRT1_2, NULL}, {"SQRT2", VmMathSQRT2, NULL},
};
const CHANSVmMethodList VmMathMethodTbl[] = {
    {"abs", VmMathabs}, {"acos", VmMathacos},     {"asin", VmMathasin},   {"atan", VmMathatan}, {"atan2", VmMathatan2}, {"ceil", VmMathceil},
    {"cos", VmMathcos}, {"exp", VmMathexp},       {"floor", VmMathfloor}, {"log", VmMathlog},   {"max", VmMathmax},     {"min", VmMathmin},
    {"pow", VmMathpow}, {"random", VmMathrandom}, {"round", VmMathround}, {"sin", VmMathsin},   {"sqrt", VmMathsqrt},   {"tan", VmMathtan},
};

const static char VmStringClassName[] = "String";

VmCtorDefine(String) {
    BOOL ok;
    CHANSVmObjHdr* obj;

    if (((CHANSVmPrivate*)VmInst)->pCurContext->argc != 0) {
        obj = CHANSVmConvertObjectType(VmInst, CHANS_VM_OBJ_TYPE_STRING, CHANSVmGetArg(VmInst, 0));
        ok = FALSE;
        if (obj && CHANSVmCopyObject(VmInst, VmReturnObj, obj)) {
            ok = TRUE;
        }
        return ok;
    }
    obj = CHANSVmNewObject(VmInst, FALSE, VmReturnObj, CHANS_VM_OBJ_TYPE_STRING, 0);
    ok = !!obj;
    return ok;
}

VmMethodDefine(String, FromCharCode) {
    CHANSVmObjHdr* arg;
    u32 offs;
    u32 argc;
    u32 ch;
    u32 i;

    if (VmParentObj != NULL && VmParentObj->type == CHANS_VM_OBJ_TYPE_CLASS_REF) {
        argc = ((CHANSVmPrivate*)VmInst)->pCurContext->argc;
        if (CHANSVmNewObject(VmInst, FALSE, VmReturnObj, CHANS_VM_OBJ_TYPE_STRING, argc * 2)) {
            i = 0;
            offs = 0;
            while (i < argc) {
                arg = CHANSVmGetArg(VmInst, i);
                arg = CHANSVmConvertObjectType(VmInst, CHANS_VM_OBJ_TYPE_INTEGER, arg);
                ch = arg != NULL ? (u32)(arg->value.int_v & 0xFFFF) : 0;
                VmReturnObj->value.string_v->spData[offs] = (u8)(ch >> 8);
                VmReturnObj->value.string_v->spData[offs + 1] = (u8)ch;
                offs += 2;
                i++;
            }
            return 1;
        }
    }
    return 0;
}

VmMethodDefine(String, GetLength) {
    return CHANSVmSetInteger(VmInst, VmReturnObj, VmParentObj->value.string_v->len >> 1) == CHANS_VM_OK;
}

VmMethodDefine(String, CharAt) {
    CHANSVmObjHdr* arg;
    s64 charIndex;
    u32 size = 0;

    arg = CHANSVmGetArg(VmInst, 0);
    arg = CHANSVmConvertObjectType(VmInst, CHANS_VM_OBJ_TYPE_INTEGER, arg);
    if (arg != NULL) {
        charIndex = arg->value.int_v;

        if ((u64)(charIndex * 2) < VmParentObj->value.string_v->len) {
            size = 2;
        }

        if (CHANSVmNewObject(VmInst, FALSE, VmReturnObj, CHANS_VM_OBJ_TYPE_STRING, size)) {
            if (size != 0) {
                memcpy(VmReturnObj->value.string_v->spData, VmParentObj->value.string_v->spData + (u32)charIndex * 2, size);
            }
            return TRUE;
        }
    }
    return FALSE;
}

VmMethodDefine(String, CharCodeAt) {
    u32 ch = 0;
    CHANSVmObjHdr* arg;
    s64 charIndex;
    vmStringObjVal* parentStr;

    arg = CHANSVmGetArg(VmInst, 0);
    arg = CHANSVmConvertObjectType(VmInst, CHANS_VM_OBJ_TYPE_INTEGER, arg);
    if (arg == NULL) {
        goto error;
    }

    parentStr = VmParentObj->value.string_v;
    charIndex = arg->value.int_v;
    if ((u64)(charIndex * 2) < (u64)(parentStr->len)) {
        ch = (u8)parentStr->spData[(u32)(charIndex * 2)] << 8 | (u8)parentStr->spData[(u32)(charIndex * 2) + 1];
    }

    return CHANSVmSetInteger(VmInst, VmReturnObj, (vmInteger)(u64)ch) == CHANS_VM_OK;

error:
    return 0;
}

static CHANSVmObjHdr* VmStringObjectDup(CHANSVm* VmInst, CHANSVmObjHdr* outObj, CHANSVmObjHdr* inObj) {
    CHANSVmObjHdr* result = NULL;
    if (inObj != NULL && inObj->type == CHANS_VM_OBJ_TYPE_STRING) {
        result = CHANSVmNewObject(VmInst, FALSE, outObj, CHANS_VM_OBJ_TYPE_STRING, inObj->value.string_v->len);
        if (result != NULL) {
            memcpy(result->value.string_v->spData, inObj->value.string_v->spData, result->value.string_v->len);
        }
    }
    return result;
}

static BOOL VmStringObjectIndex(CHANSVm* VmInst, CHANSVmObjHdr* VmParentObj, CHANSVmObjHdr* VmReturnObj, u32 searchForward, u32 skipStartArg) {
    CHANSVmObjHdr* arg0;
    CHANSVmObjHdr* arg1;
    vmStringObjVal* parentStrVal;
    vmStringObjVal* searchStrVal;
    u32 parentLen;
    u32 searchLen;
    char* parentStr;
    char* searchStr;
    u32 pos;
    s64 retVal;

    pos = 0;
    arg1 = NULL;
    arg0 = CHANSVmGetArg(VmInst, 0);
    arg0 = CHANSVmConvertObjectType(VmInst, CHANS_VM_OBJ_TYPE_STRING, arg0);

    if (arg0 != NULL) {
        if (skipStartArg == 0) {
            arg1 = CHANSVmGetArg(VmInst, 1);
            arg1 = CHANSVmConvertObjectType(VmInst, CHANS_VM_OBJ_TYPE_INTEGER, arg1);
        }

        parentStrVal = VmParentObj->value.string_v;
        parentLen = parentStrVal->len;
        pos = searchForward ? 0 : parentLen;

        if (arg1 != NULL) {
            if (arg1->value.int_v <= 0x7FFFFFFFULL) {
                pos = (u32)(arg1->value.int_v * 2);
                if (pos > parentLen) {
                    pos = parentLen;
                }
            } else {
                pos = 0;
            }
        }

        searchStrVal = arg0->value.string_v;
        searchLen = searchStrVal->len;

        if (searchLen == 0) {
            goto found_result;
        }

        if (parentLen >= searchLen) {
            parentStr = parentStrVal->spData;
            searchStr = searchStrVal->spData;

            if (searchForward) {
                while (pos + searchLen <= parentLen) {
                    if (memcmp(parentStr + pos, searchStr, searchLen) == 0) {
                        goto found_result;
                    }
                    pos += 2;
                }
            } else {
                if (pos + searchLen > parentLen) {
                    pos = parentLen - searchLen;
                }
                do {
                    if (memcmp(parentStr + pos, searchStr, searchLen) == 0) {
                        goto found_result;
                    }
                    if (pos < 2) {
                        break;
                    }
                    pos -= 2;
                } while (TRUE);
            }
        }
    }

    retVal = -1;
    goto exit;

found_result:
    retVal = pos / 2;

exit:
    return CHANSVmSetInteger(VmInst, VmReturnObj, retVal) == CHANS_VM_OK;
}

VmMethodDefine(String, IndexOf) {
    return VmStringObjectIndex(VmInst, VmParentObj, VmReturnObj, 1, 0);
}

VmMethodDefine(String, LastIndexOf) {
    return VmStringObjectIndex(VmInst, VmParentObj, VmReturnObj, 0, 0);
}

VmMethodDefine(String, Search) {
    return VmStringObjectIndex(VmInst, VmParentObj, VmReturnObj, 1, 1);
}

VmMethodDefine(String, Replace) {
    CHANSVmObjHdr* arg0;
    CHANSVmObjHdr* arg1;
    char* parentStr;
    char* searchStr;
    char* replaceStr;
    u32 parentLen;
    u32 srcOffs;
    u32 dstOffs;
    u32 searchLen;
    u32 replaceLen;
    u32 dstBufLen;
    char* newStr;
    u32 segLen;

    if (((CHANSVmPrivate*)VmInst)->pCurContext->argc < 2) {
        goto return_input;
    }

    arg0 = CHANSVmGetArg(VmInst, 0);
    arg0 = CHANSVmConvertObjectType(VmInst, CHANS_VM_OBJ_TYPE_STRING, arg0);
    arg1 = CHANSVmGetArg(VmInst, 1);
    arg1 = CHANSVmConvertObjectType(VmInst, CHANS_VM_OBJ_TYPE_STRING, arg1);

    if (arg0 == NULL || arg1 == NULL) {
        goto return_input;
    }

    parentLen = VmParentObj->value.string_v->len;
    searchLen = arg0->value.string_v->len;
    parentStr = VmParentObj->value.string_v->spData;
    replaceLen = arg1->value.string_v->len;
    searchStr = arg0->value.string_v->spData;
    replaceStr = arg1->value.string_v->spData;

    if (parentLen < searchLen) {
        goto return_input;
    }

    newStr = NULL;
    dstBufLen = 0;

    while (TRUE) {
        srcOffs = 0;
        dstOffs = 0;

        while (srcOffs + searchLen <= parentLen) {
            if (searchLen == 0 || memcmp(parentStr + srcOffs, searchStr, searchLen) == 0) {
                if (replaceLen != 0) {
                    if (newStr != NULL) {
                        if (dstOffs + replaceLen > dstBufLen) {
                            goto error;
                        }
                        memcpy(newStr + dstOffs, replaceStr, replaceLen);
                    }
                    dstOffs += replaceLen;
                }

                if (searchLen == 0) {
                    break;
                }
                srcOffs += searchLen;
            } else {
                if (newStr != NULL) {
                    if (dstOffs + 2 > dstBufLen) {
                        goto error;
                    }
                    memcpy(newStr + dstOffs, parentStr + srcOffs, 2);
                }
                srcOffs += 2;
                dstOffs += 2;
            }
        }

        if (srcOffs < parentLen) {
            segLen = parentLen - srcOffs;
            if (newStr != NULL) {
                if (dstOffs + segLen > dstBufLen) {
                    goto error;
                }
                memcpy(newStr + dstOffs, parentStr + srcOffs, segLen);
            }
            dstOffs += segLen;
        }

        if (newStr == NULL) {
            dstBufLen = dstOffs;
            if (!CHANSVmNewObject(VmInst, FALSE, VmReturnObj, CHANS_VM_OBJ_TYPE_STRING, dstBufLen)) {
                goto error;
            }
            newStr = VmReturnObj->value.string_v->spData;
        } else {
            break;
        }
    }

    return VmReturnObj->value.string_v->len == dstOffs ? TRUE : FALSE;

return_input:
    return VmStringObjectDup(VmInst, VmReturnObj, VmParentObj) ? TRUE : FALSE;

error:
    return 0;
}

VmMethodDefine(String, Splice) {
    CHANSVmObjHdr* arg0;
    CHANSVmObjHdr* arg1;
    u32 length;
    u32 start;
    u32 newLen;

    arg0 = CHANSVmGetArg(VmInst, 0);
    arg0 = CHANSVmConvertObjectType(VmInst, 1, arg0);
    arg1 = CHANSVmGetArg(VmInst, 1);
    arg1 = CHANSVmConvertObjectType(VmInst, 1, arg1);

    start = 0;
    length = VmParentObj->value.string_v->len;

    if (arg0 != NULL) {
        s64 byteOffs0 = arg0->value.int_v * 2;
        if (byteOffs0 > length) {
            start = length;
        } else {
            start = byteOffs0;
            if (byteOffs0 < 0) {
                s64 t0 = byteOffs0 + length;
                start = t0;
                if (t0 < 0) {
                    start = 0;
                }
            }
        }
    }

    if (arg1 != NULL) {
        u32 tempLen;
        s64 byteOffs1 = arg1->value.int_v * 2;
        if (byteOffs1 > length) {
            tempLen = length;
        } else {
            tempLen = byteOffs1;
            if (byteOffs1 < 0) {
                s64 t1 = byteOffs1 + length;
                tempLen = t1;
                if (t1 < 0) {
                    tempLen = 0;
                }
            }
        }
        length = tempLen;
    }

    newLen = length - start & ~-(s32)(start >= length);

    if (CHANSVmNewObject(VmInst, FALSE, VmReturnObj, CHANS_VM_OBJ_TYPE_STRING, newLen) != NULL) {
        if (newLen != 0) {
            memcpy(VmReturnObj->value.string_v->spData, VmParentObj->value.string_v->spData + start, newLen);
        }
        return TRUE;
    }
    return FALSE;
}

VmMethodDefine(String, Split) {
    CHANSVmObjHdr* arg0;
    CHANSVmObjHdr* arg1;
    u32 limit;
    CHANSVmObjHdr* array;
    char* parentStr;
    char* delimStr;
    u32 parentLen;
    u32 delimLen;
    u32 count;
    u32 srcOffs;
    u32 segStart;
    u32 arrayCount;
    u32 segLen;
    u32 remaining;
    CHANSVmObjHdr* elem;
    u32 i;

    arrayCount = 0;
    arg0 = CHANSVmGetArg(VmInst, 0);
    arg0 = CHANSVmConvertObjectType(VmInst, CHANS_VM_OBJ_TYPE_STRING, arg0);
    if (arg0 == NULL) {
        arrayCount = 1;
        goto create_array;
    }

    limit = -1;
    if (((CHANSVmPrivate*)VmInst)->pCurContext->argc > 1) {
        arg1 = CHANSVmGetArg(VmInst, 1);
        arg1 = CHANSVmConvertObjectType(VmInst, CHANS_VM_OBJ_TYPE_INTEGER, arg1);
        if (arg1 != NULL) {
            if (arg1->value.int_v > (u64)0xFFFFFFFF) {
                limit = (u32)arg1->value.int_v;
                if (limit == 0) {
                    goto create_array;
                }
            }
        }
    }

    parentStr = VmParentObj->value.string_v->spData;
    parentLen = VmParentObj->value.string_v->len;
    delimStr = arg0->value.string_v->spData;
    delimLen = arg0->value.string_v->len;

    if (delimLen == 0) {
        if (parentLen != 0) {
            goto zero_delim_loop;
        }
        goto create_array;
    }

    array = NULL;

    while (TRUE) {
        srcOffs = 0;
        segStart = 0;
        count = 0;
        while (srcOffs + delimLen <= parentLen) {
            if (memcmp(parentStr + srcOffs, delimStr, delimLen) == 0) {
                segLen = srcOffs - segStart;
                if (array != NULL) {
                    elem = CHANSVmGetArrayElement(VmInst, array, count);
                    if (elem == NULL || !CHANSVmNewObject(VmInst, FALSE, elem, CHANS_VM_OBJ_TYPE_STRING, segLen)) {
                        goto error;
                    }
                    memcpy(elem->value.string_v->spData, parentStr + segStart, segLen);
                }
                count++;
                srcOffs += delimLen;
                segStart = srcOffs;
                if (count >= limit) {
                    break;
                }
            } else {
                srcOffs += 2;
            }
        }

        if (count < limit) {
            remaining = parentLen - segStart;
            if (array != NULL) {
                elem = CHANSVmGetArrayElement(VmInst, array, count);
                if (elem == NULL || !CHANSVmNewObject(VmInst, 0, elem, CHANS_VM_OBJ_TYPE_STRING, remaining)) {
                    goto error;
                }
                memcpy(elem->value.string_v->spData, parentStr + segStart, remaining);
            }
            count++;
        }

        if (array == NULL) {
            arrayCount = count;
            array = CHANSVmNewArrayObject(VmInst, VmReturnObj, 1, &arrayCount);
            if (array == NULL) {
                goto error;
            }
        } else {
            return count == arrayCount ? TRUE : FALSE;
        }
    }

create_array:
    array = CHANSVmNewArrayObject(VmInst, VmReturnObj, 1, &arrayCount);
    if (arrayCount != 0) {
        elem = CHANSVmGetArrayElement(VmInst, array, 0);
    } else {
        elem = NULL;
    }
    if (array != NULL && (arrayCount == 0 || (elem != NULL && VmStringObjectDup(VmInst, elem, VmParentObj) != NULL))) {
        return TRUE;
    }
    return FALSE;

zero_delim_loop:
    arrayCount = parentLen / 2;
    array = CHANSVmNewArrayObject(VmInst, VmReturnObj, 1, &arrayCount);
    i = 0;
    segStart = 0;
    while (i < arrayCount) {
        elem = CHANSVmGetArrayElement(VmInst, array, i);
        if (elem == NULL || !CHANSVmNewObject(VmInst, 0, elem, CHANS_VM_OBJ_TYPE_STRING, 2)) {
            goto error;
        }
        memcpy(elem->value.string_v->spData, parentStr + segStart, 2);
        i++;
        segStart += 2;
    }
    return TRUE;

error:
    return FALSE;
}

VmMethodDefine(String, ToLowerCase) {
    if (VmStringObjectDup(VmInst, VmReturnObj, VmParentObj) != NULL) {
        u32 i = 0;
        while (i < VmReturnObj->value.string_v->len) {
            u32 ch = (u32)(u8)VmReturnObj->value.string_v->spData[i] << 8 | (u8)VmReturnObj->value.string_v->spData[i + 1];
            if (ch >= 'A' && ch <= 'Z') {
                VmReturnObj->value.string_v->spData[i + 1] = (u8)(ch | 0x20);
            } else if (ch >= (0xFF00 | '!') && ch <= (0xFF00 | ':')) {
                VmReturnObj->value.string_v->spData[i + 1] += 0x20;
            }
            i += 2;
        }
        return TRUE;
    }
    return FALSE;
}

VmMethodDefine(String, ToUpperCase) {
    if (VmStringObjectDup(VmInst, VmReturnObj, VmParentObj) != NULL) {
        u32 i = 0;
        while (i < VmReturnObj->value.string_v->len) {
            u32 ch = (u32)(u8)VmReturnObj->value.string_v->spData[i] << 8 | (u8)VmReturnObj->value.string_v->spData[i + 1];
            if (ch >= 'a' && ch <= 'z') {
                VmReturnObj->value.string_v->spData[i + 1] = (u8)(ch & 0xDF);
            } else if (ch >= (0xFF00 | 'A') && ch <= (0xFF00 | 'Z')) {
                VmReturnObj->value.string_v->spData[i + 1] -= 0x20;
            }
            i += 2;
        }
        return TRUE;
    }
    return FALSE;
}

CHANSVmObjHdr* CHANSVm_8145049C(CHANSVm* vm, CHANSVmObjHdr* obj, u32 arg) {
    u8 pad0[8];
    u8 tempBuf[16];
    u8 fmtBufData[32];
    u8* fmtBuf;
    wchar_t wideFmt[32];
    u32 halfMaxSize;
    BOOL flag;
    CHANSVmObjHdr* tempObj;
    u32 argIdxCounter;
    u32 totalLen;
    u8* str;
    u32 strLen;
    u32 strPos;
    u32 segStart;
    u32 fmtBufPos;
    u8* tmpBuf;
    u32 maxSize;
    u8* outputBuf;
    u32 outputPos;
    u32 maxLitLen;
    u32 litLen;
    u32 isEscaped;
    CHANSVmObjHdr* cv;
    CHANSVmPrivate* pVm;
    CHANSVmObjHdr* argObj;

    pVm = (CHANSVmPrivate*)vm;
    memset(tempBuf, 0, sizeof(tempBuf));

    if (pVm->pCurContext->argc == 0) {
        goto empty_create;
    }

    argObj = CHANSVmGetArg(vm, arg);
    if (argObj == NULL || argObj->type != CHANS_VM_OBJ_TYPE_STRING) {
        goto null_return;
    }

    fmtBuf = fmtBufData;
    maxSize = (u32)pVm->minWorkSize;
    outputBuf = NULL;
    outputPos = 0;
    halfMaxSize = maxSize >> 1;
    str = (u8*)argObj->value.string_v->spData;
    strLen = argObj->value.string_v->len & ~1U;
    tmpBuf = pVm->pBase;
    totalLen = 0;
    maxLitLen = 0;

    while (TRUE) {
        strPos = 0;
        segStart = 0;
        argIdxCounter = 1;

        while (strPos < strLen) {
        // Label allows to continue without checking the condition
        format_continue:;
            if (str[strPos] != 0 || str[strPos + 1] != '%') {
                strPos += 2;
                if (strPos < strLen) {
                    continue;
                }
            }

            if (strPos + 2 < strLen && str[strPos + 2] == 0 && str[strPos + 3] == '%') {
                isEscaped = 1;
                strPos += 2;
            } else {
                isEscaped = 0;
            }

            litLen = strPos - segStart;

            if (outputBuf != NULL) {
                if (outputPos + litLen > totalLen) {
                    goto null_return;
                }
                memcpy(outputBuf + outputPos, str + segStart, litLen);
                outputPos += litLen;
            } else {
                totalLen += litLen;
            }

            segStart = strPos;
            if (strPos >= strLen) {
                break;
            }

            if (isEscaped != 0) {
                strPos += 2;
            } else {
                fmtBuf[0] = '%';
                litLen = 0;
                fmtBufPos = 1;
                flag = FALSE;
                strPos += 2;

                while (strPos < strLen && str[strPos] == 0) {
                    switch (str[strPos + 1] - 32) {
                        case 32: {
                            goto format_continue;
                        }
                        case 3: {
                            flag = TRUE;
                        }
                        case 0:
                        case 11:
                        case 13:
                        case 16: {
                            if (fmtBufPos + 1 >= sizeof(fmtBufData))
                                goto format_continue;
                            fmtBuf[fmtBufPos++] = str[strPos + 1];
                            strPos += 2;
                            continue;
                        }
                    }
                    break;
                }

                while (strPos < strLen && str[strPos] == 0 && str[strPos + 1] >= '0' && str[strPos + 1] <= '9') {
                    if (fmtBufPos + 1 >= sizeof(fmtBufData)) {
                        goto format_continue;
                    }
                    fmtBuf[fmtBufPos++] = str[strPos + 1];
                    strPos += 2;
                }

                if (strPos < strLen && str[strPos] == 0 && str[strPos + 1] == '.') {
                    if (fmtBufPos + 1 >= sizeof(fmtBufData)) {
                        goto format_continue;
                    }
                    fmtBuf[fmtBufPos++] = str[strPos + 1];
                    strPos += 2;

                    while (strPos < strLen && str[strPos] == 0 && str[strPos + 1] >= '0' && str[strPos + 1] <= '9') {
                        if (fmtBufPos + 1 >= sizeof(fmtBufData)) {
                            goto format_continue;
                        }
                        fmtBuf[fmtBufPos++] = str[strPos + 1];
                        strPos += 2;
                    }
                }

                while (strPos < strLen && str[strPos] == 0 &&
                       (str[strPos + 1] == 'h' || str[strPos + 1] == 'l' || str[strPos + 1] == 'L' || str[strPos + 1] == 'v')) {
                    strPos += 2;
                }

                if (strPos >= strLen || str[strPos] != 0) {
                    continue;
                }

                {
                    u8 tc = str[strPos + 1];
                    switch (tc) {
                        case 'A':
                        case 'B':
                        case 'C':
                        case 'D': {
                            continue;
                        }
                        case 'd':
                        case 'i':
                        case 'o':
                        case 'u':
                        case 'x':
                        case 'X': {
                            strPos += 2;
                            goto int_body;
                        }
                        case 'E':
                        case 'F':
                        case 'G':
                        case 'e':
                        case 'f':
                        case 'g': {
                            strPos += 2;
                            goto float_body;
                        }
                        case 'c': {
                            strPos += 2;
                            goto char_body;
                        }
                        case 's': {
                            strPos += 2;
                            goto string_body;
                        }
                        default: {
                            continue;
                        }
                    }

                int_body: {
                    if (fmtBufPos + 3 >= (s32)sizeof(fmtBufData)) {
                        goto format_continue;
                    }
                    fmtBuf[fmtBufPos++] = 'l';
                    fmtBuf[fmtBufPos++] = 'l';
                    fmtBuf[fmtBufPos++] = tc;
                    fmtBuf[fmtBufPos] = 0;
                    cv = CHANSVmConvertObjectType(vm, CHANS_VM_OBJ_TYPE_INTEGER, CHANSVmGetArg(vm, arg + argIdxCounter));
                }

                common_number_format: {
                    argIdxCounter++;
                    if (cv == NULL) {
                        goto loop_hint;
                    }
                    if (litLen != 0) {
                        isEscaped = snprintf((char*)tmpBuf, maxSize, (char*)fmtBufData, cv->value.float_v);
                    } else {
                        isEscaped = snprintf((char*)tmpBuf, maxSize, (char*)fmtBufData, cv->value.int_v);
                    }

                    if ((s32)isEscaped < 0) {
                        goto format_continue;
                    }
                    litLen = isEscaped * 2;
                    if (outputBuf != NULL) {
                        if (outputPos + litLen > totalLen) {
                            goto null_return;
                        }
                        CHANSVmStrCpyToU16FromU8((wchar_t*)(outputBuf + outputPos), (char*)tmpBuf, litLen >> 1);
                        outputPos += litLen;
                    } else {
                        if (maxLitLen < litLen)
                            maxLitLen = litLen;
                        totalLen += litLen;
                    }
                    goto loop_hint;
                }

                float_body: {
                    if (fmtBufPos + 2 >= sizeof(fmtBufData))
                        goto format_continue;
                    fmtBuf[fmtBufPos++] = 'l';
                    fmtBuf[fmtBufPos++] = tc;
                    fmtBuf[fmtBufPos] = 0;
                    cv = CHANSVmConvertObjectType(vm, CHANS_VM_OBJ_TYPE_FLOAT, CHANSVmGetArg(vm, arg + argIdxCounter));
                    litLen = 1;
                    goto common_number_format;
                }

                char_body: {
                    cv = CHANSVmConvertObjectType(vm, CHANS_VM_OBJ_TYPE_INTEGER, CHANSVmGetArg(vm, arg + argIdxCounter));
                    argIdxCounter++;
                    if (cv == NULL) {
                        goto loop_hint;
                    }
                    isEscaped = (u32)pad0;
                    litLen = 0;
                    *(u16*)pad0 = cv->value.int_v;
                    *(u16*)(pad0 + 2) = 0;
                    goto common_string_format;
                }

                string_body: {
                    u32 objLen;
                    tempObj = CHANSVmConvertObjectType(vm, CHANS_VM_OBJ_TYPE_STRING, CHANSVmGetArg(vm, arg + argIdxCounter));
                    argIdxCounter++;
                    if (tempObj == NULL) {
                        goto loop_hint;
                    }

                    objLen = tempObj->value.string_v->len & ~1U;
                    {
                        CHANSVmObjHdr* nObj = CHANSVmNewObject(vm, 0, (CHANSVmObjHdr*)tempBuf, CHANS_VM_OBJ_TYPE_STRING, objLen + 2);
                        if (nObj == NULL) {
                            goto null_return;
                        }
                        memcpy(nObj->value.string_v->spData, tempObj->value.string_v->spData, objLen);
                        isEscaped = (u32)nObj->value.string_v->spData;
                        litLen = (u32)nObj;
                    }
                }

                common_string_format:
                    if (flag || fmtBufPos + 2 >= sizeof(fmtBufData)) {
                        goto format_continue;
                    }
                    fmtBuf[fmtBufPos++] = 'l';
                    fmtBuf[fmtBufPos++] = 's';
                    fmtBuf[fmtBufPos] = 0;

                    CHANSVmStrCpyToU16FromU8(wideFmt, (char*)fmtBuf, fmtBufPos);
                    wideFmt[fmtBufPos] = 0;

                    isEscaped = swprintf((wchar_t*)tmpBuf, halfMaxSize, wideFmt, (void*)isEscaped);
                    if ((s32)isEscaped < 0) {
                        goto format_continue;
                    }

                    if (litLen != 0) {
                        if (CHANSVmDeleteObject(vm, (CHANSVmObjHdr*)litLen) != CHANS_VM_OK) {
                            goto null_return;
                        }
                    }

                    litLen = isEscaped * 2;
                    if (outputBuf != NULL) {
                        if (outputPos + litLen > totalLen) {
                            goto null_return;
                        }
                        memcpy(outputBuf + outputPos, tmpBuf, litLen);
                        outputPos += litLen;
                    } else {
                        if (maxLitLen < litLen) {
                            maxLitLen = litLen;
                        }
                        totalLen += litLen;
                    }
                }
            }

        loop_hint:
            segStart = strPos;
        }

        if (outputBuf == NULL) {
            obj = CHANSVmNewObject(vm, 0, obj, CHANS_VM_OBJ_TYPE_STRING, totalLen);
            if (obj == NULL) {
                goto null_return;
            }
            outputBuf = (u8*)obj->value.string_v->spData;
        } else {
            break;
        }
    }

    if (outputPos != totalLen) {
        goto null_return;
    }
    return obj;

empty_create:
    return CHANSVmNewObject(vm, 0, obj, CHANS_VM_OBJ_TYPE_STRING, 0);

null_return:
    return NULL;
}

VmMethodDefine(String, Format) {
    u32 result;
    if (VmParentObj != NULL && VmParentObj->type == CHANS_VM_OBJ_TYPE_CLASS_REF) {
        result = (u32)CHANSVm_8145049C(VmInst, VmReturnObj, 0);
        return result != 0;
    }
    return 0;
}

const CHANSVmPropertyList VmStringPropertyTbl[] = {
    {"length", VmStringGetLength, NULL},
};
const CHANSVmMethodList VmStringMethodTbl[] = {
    {"charAt", VmStringCharAt},   {"charCodeAt", VmStringCharCodeAt},   {"*fromCharCode", VmStringFromCharCode},
    {"*format", VmStringFormat},  {"indexOf", VmStringIndexOf},         {"lastIndexOf", VmStringLastIndexOf},
    {"replace", VmStringReplace}, {"search", VmStringSearch},           {"slice", VmStringSplice},
    {"split", VmStringSplit},     {"toLowerCase", VmStringToLowerCase}, {"toUpperCase", VmStringToUpperCase},
};

char* VmGetStrFromObjHdr(CHANSVmObjHdr* object) {
    if (object != NULL && object->value.string_v != NULL) {
        return object->value.string_v->spData;
    }
    return NULL;
}

int VmGetIntFromObjHdr(CHANSVmObjHdr* object) {
    if (object != NULL && object->value.int32_v) {
        return object->value.int32_v->val;
    }
    return 0;
}

u32 CHANSVm_81451314(BlobHeader* blob, CHANSVmObjHdr* ptr, u32 limit);
BOOL CHANSVm_81451348(BlobHeader* blob, s64 size);
CHANSVmObjHdr* CHANSVmNewBlobObject(CHANSVm* VmInst, CHANSVmObjHdr* obj, u32 size, void* src, u32 count);
static u64 CHANSVm_814540E0(u32 upper, u32 lower);

static void VmBlobInitValue(BlobHeader* blob, u32 size) {
    if (blob != NULL) {
        blob->offset = 0;
        blob->size = size;
        blob->pData = (u8*)(blob + 1);
    }
}

static const char VmBlobClassName[] = "Blob";

char lbl_81669DF5[] = "0123456789abcdef";
char* lbl_816976E4 = lbl_81669DF5;
char* lbl_816976E8 = lbl_81669DF5;

static CHANSVmObjHdr* VmBlobCreateDirect(CHANSVm* vm, CHANSVmObjHdr* obj, u32 size) NO_INLINE {
    CHANSVmNativeClass* cls;

    if (obj != NULL && CHANSVmDeleteObject(vm, obj) != CHANS_VM_OK) {
        return NULL;
    }

    obj = CHANSVmNewObject(vm, FALSE, obj, CHANS_VM_OBJ_TYPE_OBJECT, size + sizeof(BlobHeader));
    if (obj != NULL) {
        cls = CHANSVmFindNativeClass(vm, VmBlobClassName);
        obj->parentCls = cls;
    } else {
        goto ret_null;
    }

    if (cls == NULL) {
    ret_null:
        return NULL;
    }

    VmBlobInitValue((BlobHeader*)VmGetStrFromObjHdr(obj), size);
    return obj;
}

static u8* VmBlobGetDataBufferDirect(CHANSVmObjHdr* obj) {
    BlobHeader* blob;

    if (CHANSVmCheckNativeInstance(obj, VmBlobClassName)) {
        blob = (BlobHeader*)VmGetStrFromObjHdr(obj);
    } else {
        blob = NULL;
    }

    if (blob != NULL) {
        return blob->pData;
    }

    return NULL;
}

BOOL CHANSVm_81450D14(BlobHeader* blob, s64 val, u32* out) {
    if (blob == NULL) {
        return FALSE;
    }

    if (val < 0 || val > blob->size) {
        if (val >= -(s64)blob->size && val < 0) {
            val += blob->size;
        } else {
            return FALSE;
        }
    }

    if (out != NULL) {
        *out = (u32)val;
    }
    return TRUE;
}

VmCtorDefine(Blob) {
    CHANSVmObjHdr* arg = CHANSVmGetArg(VmInst, 0);
    CHANSVmObjHdr* obj = CHANSVmConvertObjectType(VmInst, CHANS_VM_OBJ_TYPE_INTEGER, arg);
    u32 size = 0;
    BlobHeader* blob;

    if (obj != NULL && obj->value.int_v != 0) {
        size = (u32)obj->value.int_v;
    }

    if (size == 0) {
        return FALSE;
    }

    blob = (BlobHeader*)CHANSVmNewObjData(VmInst, VmReturnObj, size + sizeof(BlobHeader));
    if (blob == NULL) {
        return FALSE;
    }

    VmBlobInitValue(blob, size);
    return TRUE;
}

VmDtorDefine(Blob) {
    VmGetStrFromObjHdr(VmParentObj);
    return TRUE;
}

VmMethodDefine(Blob, GetOffset) {
    BlobHeader* blob = (BlobHeader*)VmGetStrFromObjHdr(VmParentObj);
    if (blob != NULL) {
        return CHANSVmSetInteger(VmInst, VmReturnObj, blob->offset) == CHANS_VM_OK;
    }
    return FALSE;
}

VmMethodDefine(Blob, Seek) {
    BlobHeader* blob = (BlobHeader*)VmGetStrFromObjHdr(VmParentObj);
    CHANSVmObjHdr* arg = CHANSVmGetArg(VmInst, 0);
    CHANSVmObjHdr* val = CHANSVmConvertObjectType(VmInst, 1, arg);
    u32 tmp;

    if (blob == NULL || val == NULL) {
        return 0;
    }

    if (CHANSVm_81450D14(blob, val->value.int_v, &tmp)) {
        blob->offset = tmp;
    } else {
        return 0;
    }

    return (u32)CHANSVmCopyObject(VmInst, VmReturnObj, VmParentObj) != 0;
}

VmMethodDefine(Blob, Skip) {
    BlobHeader* blob = (BlobHeader*)VmGetStrFromObjHdr(VmParentObj);
    CHANSVmObjHdr* arg = CHANSVmGetArg(VmInst, 0);
    CHANSVmObjHdr* val = CHANSVmConvertObjectType(VmInst, 1, arg);
    u32 offset;
    s64 newOff;

    if (blob == NULL || val == NULL) {
        return 0;
    }

    offset = blob->offset;
    newOff = (s64)offset + val->value.int_v;

    if (newOff >= 0 && newOff <= (s64)(blob->size)) {
        blob->offset = (u32)newOff;
    } else {
        return 0;
    }

    return (u32)CHANSVmCopyObject(VmInst, VmReturnObj, VmParentObj) != 0;
}

VmMethodDefine(Blob, GetLength) {
    BlobHeader* blob = (BlobHeader*)VmGetStrFromObjHdr(VmParentObj);
    if (blob != NULL) {
        return CHANSVmSetInteger(VmInst, VmReturnObj, blob->size) == CHANS_VM_OK;
    }

    return FALSE;
}

VmMethodDefine(Blob, SetLength) {
    BlobHeader* blob = (BlobHeader*)VmGetStrFromObjHdr(VmParentObj);
    CHANSVmObjHdr* arg = CHANSVmGetArg(VmInst, 0);
    CHANSVmObjHdr* val = CHANSVmConvertObjectType(VmInst, 1, arg);
    u32 newSize;
    int intVal;

    if (blob == NULL || val == NULL) {
        return 0;
    }

    newSize = (u32)val->value.int_v;
    if (newSize <= blob->size) {
        if (CHANSVmCheckNativeInstance(VmParentObj, VmBlobClassName)) {
            blob = (BlobHeader*)VmGetStrFromObjHdr(VmParentObj);
        } else {
            blob = NULL;
        }

        intVal = VmGetIntFromObjHdr(VmParentObj);
        if (blob == NULL) {
            return 0;
        }

        if ((s32)newSize <= intVal - (s32)sizeof(BlobHeader)) {
            blob->size = newSize;
            if (newSize < blob->offset) {
                blob->offset = newSize;
            }
            return 1;
        }
        return 0;
    }
    return 0;
}

VmMethodDefine(Blob, Fill) {
    BlobHeader* blob = (BlobHeader*)VmGetStrFromObjHdr(VmParentObj);
    CHANSVmObjHdr* val = CHANSVmConvertObjectType(VmInst, 1, CHANSVmGetArg(VmInst, 0));
    CHANSVmObjHdr* fill = CHANSVmConvertObjectType(VmInst, 1, CHANSVmGetArg(VmInst, 1));
    u32 count;

    if (blob == NULL || val == NULL) {
        return 0;
    }

    count = blob != NULL ? CHANSVm_81451314(blob, fill, blob->offset) : 0;

    if (CHANSVm_81451348(blob, count)) {
        memset(blob->pData + blob->offset, (u8)val->value.int_v, count);
        blob->offset += count;
        return 1;
    }

    return 0;
}

u32 CHANSVm_81451314(BlobHeader* blob, CHANSVmObjHdr* ptr, u32 limit) {
    if (ptr != NULL) {
        return *(u32*)((u8*)ptr + 4);
    }

    if (blob != NULL) {
        if (blob->size >= limit) {
            return blob->size - limit;
        }
    }

    return 0;
}

BOOL CHANSVm_81451348(BlobHeader* blob, s64 size) {
    u32 curOff = blob->offset;
    return size >= 0 && (s64)(blob->size - curOff) >= size;
}

VmMethodDefine(Blob, GetString) {
    BlobHeader* blob = (BlobHeader*)VmGetStrFromObjHdr(VmParentObj);
    CHANSVmObjHdr* arg = CHANSVmConvertObjectType(VmInst, CHANS_VM_OBJ_TYPE_INTEGER, CHANSVmGetArg(VmInst, 0));
    u32 size;

    if (blob == NULL || arg == NULL) {
        return 0;
    }

    size = (u32)arg->value.int_v;
    if (CHANSVm_81451348(blob, size)) {
        CHANSVmErr err = CHANSVmSetU16StringFromU8(VmInst, VmReturnObj, (char*)(blob->pData + blob->offset), size);
        blob->offset += size;
        return err == CHANS_VM_OK;
    }

    return 0;
}

VmMethodDefine(Blob, SetString) {
    BlobHeader* blob = (BlobHeader*)VmGetStrFromObjHdr(VmParentObj);
    CHANSVmObjHdr* strObj = CHANSVmConvertObjectType(VmInst, CHANS_VM_OBJ_TYPE_STRING, CHANSVmGetArg(VmInst, 0));
    u8* strData = (u8*)VmGetStrFromObjHdr(strObj);
    u32 charCount = (u32)VmGetIntFromObjHdr(strObj) / 2;
    CHANSVmObjHdr* sizeArg = CHANSVmConvertObjectType(VmInst, CHANS_VM_OBJ_TYPE_INTEGER, CHANSVmGetArg(VmInst, 1));
    u32 size;

    if (blob == NULL || strObj == NULL || strData == NULL) {
        return 0;
    }

    if (sizeArg == NULL) {
        size = charCount;
    } else {
        size = (u32)sizeArg->value.int_v;
        if (size < charCount) {
            charCount = size;
        }
    }

    if (CHANSVm_81451348(blob, size)) {
        memset(blob->pData + blob->offset, 0, size);
        CHANSVmStrCpyToU8FromU16(blob->pData + blob->offset, strData, charCount);
        blob->offset += size;
        return 1;
    }

    return 0;
}

VmMethodDefine(Blob, GetWString) {
    BlobHeader* blob = (BlobHeader*)VmGetStrFromObjHdr(VmParentObj);
    CHANSVmObjHdr* arg = CHANSVmConvertObjectType(VmInst, CHANS_VM_OBJ_TYPE_INTEGER, CHANSVmGetArg(VmInst, 0));

    if (blob == NULL || arg == NULL) {
        return 0;
    }

    if (CHANSVm_81451348(blob, VM_STR_LENGTH(arg->value.int_v))) {
        CHANSVmErr err = CHANSVmSetU16String(VmInst, VmReturnObj, (wchar_t*)(blob->pData + blob->offset), (u32)arg->value.int_v << 1);
        blob->offset += VM_STR_LENGTH(arg->value.int_v);
        return err == CHANS_VM_OK;
    }

    return 0;
}

VmMethodDefine(Blob, SetWString) {
    BlobHeader* blob = (BlobHeader*)VmGetStrFromObjHdr(VmParentObj);
    CHANSVmObjHdr* strObj = CHANSVmConvertObjectType(VmInst, CHANS_VM_OBJ_TYPE_STRING, CHANSVmGetArg(VmInst, 0));
    u8* strData = (u8*)VmGetStrFromObjHdr(strObj);
    u32 strLen = (u32)VmGetIntFromObjHdr(strObj);
    CHANSVmObjHdr* sizeArg = CHANSVmConvertObjectType(VmInst, CHANS_VM_OBJ_TYPE_INTEGER, CHANSVmGetArg(VmInst, 1));
    u32 size;

    if (blob == NULL || strObj == NULL || strData == NULL) {
        return 0;
    }

    if (sizeArg == NULL) {
        size = strLen;
    } else {
        s64 charCount = VM_STR_LENGTH(sizeArg->value.int_v);
        if (sizeArg->value.int_v < 0 || charCount < 0) {
            return 0;
        }

        size = (u32)charCount;
        if (charCount < (s64)strLen) {
            strLen = size;
        }
    }

    if (CHANSVm_81451348(blob, size)) {
        memcpy(blob->pData + blob->offset, strData, strLen);
        if (strLen < size) {
            memset(blob->pData + blob->offset + strLen, 0, size - strLen);
        }
        blob->offset += size;
        return 1;
    }

    return 0;
}

VmMethodDefine(Blob, IsEqual) {
    BlobHeader* blob = (BlobHeader*)VmGetStrFromObjHdr(VmParentObj);
    CHANSVmObjHdr* arg = CHANSVmGetArg(VmInst, 0);
    BlobHeader* other;
    BOOL result;

    if (CHANSVmCheckNativeInstance(arg, VmBlobClassName)) {
        other = (BlobHeader*)VmGetStrFromObjHdr(arg);
    } else {
        other = NULL;
    }

    if (blob == NULL || other == NULL) {
        return 0;
    }

    result = FALSE;

    if (blob->size == other->size) {
        if (memcmp(blob->pData, other->pData, blob->size) == 0) {
            result = TRUE;
        }
    }

    return CHANSVmSetInteger(VmInst, VmReturnObj, result) == CHANS_VM_OK;
}

VmMethodDefine(Blob, CopyRangeFrom) {
    BlobHeader* srcBlob;
    BlobHeader* destBlob;
    u32 srcOff;
    u32 destOff;
    u32 count;
    BOOL okFlag;
    CHANSVmObjHdr* destOffObj;
    CHANSVmObjHdr* srcObj;
    CHANSVmObjHdr* srcOffObj;
    CHANSVmObjHdr* countObj;

    destBlob = (BlobHeader*)VmGetStrFromObjHdr(VmParentObj);
    destOffObj = CHANSVmConvertObjectType(VmInst, CHANS_VM_OBJ_TYPE_INTEGER, CHANSVmGetArg(VmInst, 0));
    srcObj = CHANSVmGetArg(VmInst, 1);
    srcOffObj = CHANSVmConvertObjectType(VmInst, CHANS_VM_OBJ_TYPE_INTEGER, CHANSVmGetArg(VmInst, 2));
    countObj = CHANSVmConvertObjectType(VmInst, CHANS_VM_OBJ_TYPE_INTEGER, CHANSVmGetArg(VmInst, 3));

    if (CHANSVmCheckNativeInstance(srcObj, VmBlobClassName)) {
        srcBlob = (BlobHeader*)VmGetStrFromObjHdr(srcObj);
    } else {
        srcBlob = NULL;
    }

    if (destBlob == NULL || destOffObj == NULL || srcBlob == NULL || srcOffObj == NULL) {
        return 0;
    }

    okFlag = FALSE;
    srcOff = 0;
    destOff = 0;

    if (CHANSVm_81450D14(destBlob, destOffObj->value.int_v, &destOff) != 0 && CHANSVm_81450D14(srcBlob, srcOffObj->value.int_v, &srcOff) != 0) {
        count = CHANSVm_81451314(srcBlob, countObj, srcOff);
        if ((s64)destBlob->size >= (s64)count) {
            u32 available = destBlob->size - destOff;
            if ((s64)count >= (s64)available) {
                okFlag = TRUE;
            }
        }

        if (okFlag) {
            okFlag = FALSE;
            if ((s64)count >= 0) {
                u32 available = srcBlob->size - srcOff;
                if ((s64)count >= (s64)available) {
                    okFlag = TRUE;
                }
            }

            if (okFlag) {
                memmove(destBlob->pData + destOff, srcBlob->pData + srcOff, count);
                return CHANSVmSetInteger(VmInst, VmReturnObj, (vmInteger)(u64)count) == CHANS_VM_OK;
            }
        }
    }
    return 0;
}

VmMethodDefine(Blob, GetBlob) {
    BlobHeader* blob = (BlobHeader*)VmGetStrFromObjHdr(VmParentObj);
    CHANSVmObjHdr* arg = CHANSVmConvertObjectType(VmInst, CHANS_VM_OBJ_TYPE_INTEGER, CHANSVmGetArg(VmInst, 0));
    u32 count;

    if (blob == NULL)
        return 0;

    count = blob != NULL ? CHANSVm_81451314(blob, arg, blob->offset) : 0;

    if (CHANSVm_81451348(blob, count)) {
        if (CHANSVmNewBlobObject(VmInst, VmReturnObj, count, blob->offset + blob->pData, count) != NULL) {
            blob->offset += count;
            return 1;
        }
    }

    return 0;
}

VmMethodDefine(Blob, SetBlob) {
    BlobHeader* destBlob = (BlobHeader*)VmGetStrFromObjHdr(VmParentObj);
    BlobHeader* srcBlob;
    CHANSVmObjHdr* srcObj = CHANSVmGetArg(VmInst, 0);
    CHANSVmObjHdr* countObj = CHANSVmConvertObjectType(VmInst, CHANS_VM_OBJ_TYPE_INTEGER, CHANSVmGetArg(VmInst, 1));
    u32 logicalSize;
    u32 copySize;
    u32 srcAvailable;

    if (CHANSVmCheckNativeInstance(srcObj, VmBlobClassName)) {
        srcObj = (CHANSVmObjHdr*)VmGetStrFromObjHdr(srcObj);
    } else {
        srcObj = NULL;
    }

    if (destBlob == NULL || srcObj == NULL) {
        return 0;
    }
    if (srcObj == NULL) {
        return 0;
    }

    srcBlob = (BlobHeader*)srcObj;
    srcAvailable = srcBlob->size - srcBlob->offset;

    if (countObj == NULL) {
        logicalSize = srcAvailable;
        copySize = srcAvailable;
    } else {
        logicalSize = countObj->value.int_v;
        if (logicalSize < srcAvailable) {
            copySize = logicalSize;
        } else {
            copySize = srcAvailable;
        }
    }

    if (CHANSVm_81451348(destBlob, logicalSize)) {
        memmove(destBlob->offset + destBlob->pData, srcBlob->pData + srcBlob->offset, copySize);
        if (copySize < logicalSize) {
            memset(destBlob->offset + destBlob->pData + copySize, 0, logicalSize - copySize);
        }

        destBlob->offset += logicalSize;
        return 1;
    }

    return 0;
}

VmMethodDefine(Blob, GetHexString) {
    BlobHeader* blob = (BlobHeader*)VmGetStrFromObjHdr(VmParentObj);
    CHANSVmObjHdr* arg = CHANSVmConvertObjectType(VmInst, CHANS_VM_OBJ_TYPE_INTEGER, CHANSVmGetArg(VmInst, 0));
    u32 count;

    if (blob == NULL) {
        return FALSE;
    }

    count = blob != NULL ? CHANSVm_81451314(blob, arg, blob->offset) : 0;

    if (CHANSVm_81451348(blob, count) && CHANSVmNewObject(VmInst, FALSE, VmReturnObj, CHANS_VM_OBJ_TYPE_STRING, count * 4) != NULL) {
        wchar_t* dest = (wchar_t*)VmGetStrFromObjHdr(VmReturnObj);
        u8* src = blob->pData;
        u32 offset = blob->offset;
        u32 destOff = 0;
        u32 i = 0;
        char* hexTbl = lbl_816976E4;
        u32 loop_i;

        src += offset;

        for (loop_i = 0; loop_i < count; loop_i++) {
            u32 idx2 = i + 1;
            i += 2;
            dest[destOff] = (wchar_t)(s8)hexTbl[(u32)*src >> 4 & 0xF];
            destOff += 2;
            dest[idx2] = (wchar_t)(s8)hexTbl[(u32)*src & 0xF];
            src++;
        }
        blob->offset += count;
        return TRUE;
    }
    return FALSE;
}

VmMethodDefine(Blob, CalcSHA1Digest) {
    BlobHeader* blob = (BlobHeader*)VmGetStrFromObjHdr(VmParentObj);
    NETSHA1Context context;
    u32 len;
    u8* data;
    CHANSVmObjHdr* newObj;
    u8* digest;

    if (blob == NULL) {
        return 0;
    }

    newObj = VmBlobCreateDirect(VmInst, VmReturnObj, 20);
    digest = VmBlobGetDataBufferDirect(newObj);
    if (newObj == NULL || digest == NULL) {
        return 0;
    }

    len = blob->size;
    data = blob->pData;
    NETSHA1Init(&context);
    NETSHA1Update(&context, data, len);
    NETSHA1GetDigest(&context, digest);
    return 1;
}

VmMethodDefine(Blob, CalcRangeSHA1Digest) {
    BlobHeader* blob = (BlobHeader*)VmGetStrFromObjHdr(VmParentObj);
    CHANSVmObjHdr* arg0 = CHANSVmConvertObjectType(VmInst, CHANS_VM_OBJ_TYPE_INTEGER, CHANSVmGetArg(VmInst, 0));
    CHANSVmObjHdr* arg1 = CHANSVmConvertObjectType(VmInst, CHANS_VM_OBJ_TYPE_INTEGER, CHANSVmGetArg(VmInst, 1));
    u32 offset = 0;
    u32 size;
    u8* data;
    NETSHA1Context context;
    u8* digest;
    CHANSVmObjHdr* newObj;

    if (blob == NULL || arg0 == NULL) {
        return 0;
    }

    if (CHANSVm_81450D14(blob, arg0->value.int_v, &offset) != 0) {
        size = CHANSVm_81451314(blob, arg1, offset);

        if (((s64)size >= 0LL && (s64)(blob->size - offset) >= (s64)size) != FALSE) {
            newObj = VmBlobCreateDirect(VmInst, VmReturnObj, 20);
            digest = VmBlobGetDataBufferDirect(newObj);

            if (newObj == NULL || digest == NULL) {
                return 0;
            }

            data = blob->pData + offset;
            NETSHA1Init(&context);
            NETSHA1Update(&context, data, size);
            NETSHA1GetDigest(&context, digest);
            return 1;
        }
    }
    return 0;
}

VmMethodDefine(Blob, CalcMD5Digest) {
    BlobHeader* blob = (BlobHeader*)VmGetStrFromObjHdr(VmParentObj);
    NETMD5Context context;
    u32 len;
    u8* data;
    CHANSVmObjHdr* newObj;
    u8* digest;

    if (blob == NULL) {
        return 0;
    }

    newObj = VmBlobCreateDirect(VmInst, VmReturnObj, 16);
    digest = VmBlobGetDataBufferDirect(newObj);
    if (newObj == NULL || digest == NULL) {
        return 0;
    }

    len = blob->size;
    data = blob->pData;
    NETMD5Init(&context);
    NETMD5Update(&context, data, len);
    NETMD5GetDigest(&context, digest);
    return 1;
}

VmMethodDefine(Blob, CalcRangeMD5Digest) {
    BlobHeader* blob = (BlobHeader*)VmGetStrFromObjHdr(VmParentObj);
    CHANSVmObjHdr* arg0 = CHANSVmConvertObjectType(VmInst, CHANS_VM_OBJ_TYPE_INTEGER, CHANSVmGetArg(VmInst, 0));
    CHANSVmObjHdr* arg1 = CHANSVmConvertObjectType(VmInst, CHANS_VM_OBJ_TYPE_INTEGER, CHANSVmGetArg(VmInst, 1));
    u32 offset = 0;
    u32 size;
    u8* data;
    NETMD5Context context;
    u8* digest;
    CHANSVmObjHdr* newObj;

    if (blob == NULL || arg0 == NULL) {
        return 0;
    }

    if (CHANSVm_81450D14(blob, arg0->value.int_v, &offset) != 0) {
        size = CHANSVm_81451314(blob, arg1, offset);

        {
            u32 off = offset;
            if (((s64)size >= 0LL && (s64)(blob->size - off) >= (s64)size) != FALSE) {
                newObj = VmBlobCreateDirect(VmInst, VmReturnObj, 16);
                digest = VmBlobGetDataBufferDirect(newObj);

                if (newObj == NULL || digest == NULL) {
                    return 0;
                }

                data = blob->pData + offset;
                NETMD5Init(&context);
                NETMD5Update(&context, data, size);
                NETMD5GetDigest(&context, digest);
                return 1;
            }
        }
    }
    return 0;
}

VmMethodDefine(Blob, CalcCRC16) {
    BlobHeader* blob = (BlobHeader*)VmGetStrFromObjHdr(VmParentObj);
    u16 crc;

    if (blob == NULL) {
        return 0;
    }

    crc = NETCalcCRC16(blob->pData, blob->size);
    return CHANSVmSetInteger(VmInst, VmReturnObj, (vmInteger)(u64)crc) == CHANS_VM_OK;
}

VmMethodDefine(Blob, CalcRangeCRC16) {
    BlobHeader* blob = (BlobHeader*)VmGetStrFromObjHdr(VmParentObj);
    CHANSVmObjHdr* arg0 = CHANSVmConvertObjectType(VmInst, CHANS_VM_OBJ_TYPE_INTEGER, CHANSVmGetArg(VmInst, 0));
    CHANSVmObjHdr* arg1 = CHANSVmConvertObjectType(VmInst, CHANS_VM_OBJ_TYPE_INTEGER, CHANSVmGetArg(VmInst, 1));
    u32 offset = 0;
    u32 size;

    if (blob == NULL || arg0 == NULL) {
        return 0;
    }

    if (CHANSVm_81450D14(blob, arg0->value.int_v, &offset) != 0) {
        size = CHANSVm_81451314(blob, arg1, offset);
        {
            u32 off = offset;
            if (((s64)size >= 0LL && (s64)(blob->size - off) >= (s64)size) != FALSE) {
                u16 crc = NETCalcCRC16(blob->pData + off, size);
                return CHANSVmSetInteger(VmInst, VmReturnObj, (vmInteger)(u64)crc) == CHANS_VM_OK;
            }
        }
    }
    return 0;
}

VmMethodDefine(Blob, CalcCRC32) {
    BlobHeader* blob = (BlobHeader*)VmGetStrFromObjHdr(VmParentObj);
    u32 crc;

    if (blob == NULL) {
        return 0;
    }

    crc = NETCalcCRC32(blob->pData, blob->size);
    return CHANSVmSetInteger(VmInst, VmReturnObj, (vmInteger)(u64)crc) == CHANS_VM_OK;
}

VmMethodDefine(Blob, CalcRangeCRC32) {
    BlobHeader* blob = (BlobHeader*)VmGetStrFromObjHdr(VmParentObj);
    CHANSVmObjHdr* arg0 = CHANSVmConvertObjectType(VmInst, CHANS_VM_OBJ_TYPE_INTEGER, CHANSVmGetArg(VmInst, 0));
    CHANSVmObjHdr* arg1 = CHANSVmConvertObjectType(VmInst, CHANS_VM_OBJ_TYPE_INTEGER, CHANSVmGetArg(VmInst, 1));
    u32 offset = 0;
    u32 size;

    if (blob == NULL || arg0 == NULL) {
        return 0;
    }

    if (CHANSVm_81450D14(blob, arg0->value.int_v, &offset) != 0) {
        size = CHANSVm_81451314(blob, arg1, offset);
        {
            u32 off = offset;

            if (((s64)size >= 0LL && (s64)(blob->size - off) >= (s64)size) != FALSE) {
                u32 crc = NETCalcCRC32(blob->pData + off, size);
                return CHANSVmSetInteger(VmInst, VmReturnObj, (vmInteger)(u64)crc) == CHANS_VM_OK;
            }
        }
    }
    return 0;
}

VmMethodDefine(Blob, CalcHMAC) {
    BlobHeader* blob = (BlobHeader*)VmGetStrFromObjHdr(VmParentObj);
    CHANSVmObjHdr* arg0 = CHANSVmGetArg(VmInst, 0);
    BlobHeader* keyBlob;
    NETHMACContext context;
    u32 blobSize;
    u8* blobData;
    u8* digest;
    CHANSVmObjHdr* newObj;

    if (CHANSVmCheckNativeInstance(arg0, VmBlobClassName)) {
        keyBlob = (BlobHeader*)VmGetStrFromObjHdr(arg0);
    } else {
        keyBlob = NULL;
    }

    if (blob == NULL || keyBlob == NULL) {
        return 0;
    }

    newObj = VmBlobCreateDirect(VmInst, VmReturnObj, 20);
    digest = VmBlobGetDataBufferDirect(newObj);

    if (newObj == NULL || digest == NULL) {
        return 0;
    }

    blobSize = blob->size;
    blobData = blob->pData;

    NETHMACInit(&context, NETGetSHA1Interface(), keyBlob->pData, keyBlob->size);
    NETHMACUpdate(&context, blobData, blobSize);
    NETHMACGetDigest(&context, digest);
    return 1;
}

VmMethodDefine(Blob, CalcRangeHMAC) {
    BlobHeader* blob = (BlobHeader*)VmGetStrFromObjHdr(VmParentObj);
    CHANSVmObjHdr* argKey = CHANSVmGetArg(VmInst, 0);
    BlobHeader* keyBlob;
    CHANSVmObjHdr* arg0 = CHANSVmConvertObjectType(VmInst, CHANS_VM_OBJ_TYPE_INTEGER, CHANSVmGetArg(VmInst, 1));
    CHANSVmObjHdr* arg1 = CHANSVmConvertObjectType(VmInst, CHANS_VM_OBJ_TYPE_INTEGER, CHANSVmGetArg(VmInst, 2));

    if (CHANSVmCheckNativeInstance(argKey, VmBlobClassName)) {
        keyBlob = (BlobHeader*)VmGetStrFromObjHdr(argKey);
    } else {
        keyBlob = NULL;
    }

    {
        u32 offset = 0;
        u32 size;
        u32 off;

        if (blob == NULL || keyBlob == NULL || arg0 == NULL) {
            return 0;
        }

        if (CHANSVm_81450D14(blob, arg0->value.int_v, &offset) != 0) {
            size = CHANSVm_81451314(blob, arg1, offset);
            off = offset;
            if (((s64)size >= 0LL && (s64)(blob->size - off) >= (s64)size) != FALSE) {
                NETHMACContext context;
                u8* digest;
                CHANSVmObjHdr* newObj;
                u8* blobData;

                newObj = VmBlobCreateDirect(VmInst, VmReturnObj, 20);
                digest = VmBlobGetDataBufferDirect(newObj);

                if (keyBlob == NULL || newObj == NULL || digest == NULL) {
                    return 0;
                }

                blobData = blob->pData + offset;
                NETHMACInit(&context, NETGetSHA1Interface(), keyBlob->pData, keyBlob->size);
                NETHMACUpdate(&context, blobData, size);
                NETHMACGetDigest(&context, digest);
                return 1;
            }
        }
        return 0;
    }
}

VmMethodDefine(Blob, GetU8) {
    BlobHeader* blob = (BlobHeader*)VmGetStrFromObjHdr(VmParentObj);
    if (blob == NULL) {
        return 0;
    }

    if ((s64)(blob->size - blob->offset) >= 1) {
        u8 val;
        memcpy(&val, blob->pData + blob->offset, 1);

        blob->offset += 1;
        return CHANSVmSetInteger(VmInst, VmReturnObj, (vmInteger)(u64)val) == CHANS_VM_OK;
    }

    return 0;
}

VmMethodDefine(Blob, GetU16) {
    BlobHeader* blob = (BlobHeader*)VmGetStrFromObjHdr(VmParentObj);
    u16 val;
    if (blob == NULL) {
        return 0;
    }

    if ((s64)(blob->size - blob->offset) >= 2) {
        memcpy(&val, blob->pData + blob->offset, 2);
        blob->offset += 2;
        return CHANSVmSetInteger(VmInst, VmReturnObj, (vmInteger)(u64)val) == CHANS_VM_OK;
    }
    return 0;
}

VmMethodDefine(Blob, GetU32) {
    BlobHeader* blob = (BlobHeader*)VmGetStrFromObjHdr(VmParentObj);
    u32 val;
    if (blob == NULL) {
        return 0;
    }

    if ((s64)(blob->size - blob->offset) >= 4) {
        memcpy(&val, blob->pData + blob->offset, 4);
        blob->offset += 4;
        return CHANSVmSetInteger(VmInst, VmReturnObj, (vmInteger)(u64)val) == CHANS_VM_OK;
    }
    return 0;
}

VmMethodDefine(Blob, GetS8) {
    BlobHeader* blob = (BlobHeader*)VmGetStrFromObjHdr(VmParentObj);
    s8 val;
    if (blob == NULL) {
        return 0;
    }

    if ((s64)(blob->size - blob->offset) >= 1) {
        memcpy(&val, blob->pData + blob->offset, 1);
        blob->offset += 1;
        return CHANSVmSetInteger(VmInst, VmReturnObj, val) == CHANS_VM_OK;
    }
    return 0;
}

VmMethodDefine(Blob, GetS16) {
    BlobHeader* blob = (BlobHeader*)VmGetStrFromObjHdr(VmParentObj);
    s16 val;
    if (blob == NULL) {
        return 0;
    }

    if ((s64)(blob->size - blob->offset) >= 2) {
        memcpy(&val, blob->pData + blob->offset, 2);
        blob->offset += 2;
        return CHANSVmSetInteger(VmInst, VmReturnObj, val) == CHANS_VM_OK;
    }
    return 0;
}

VmMethodDefine(Blob, GetS32) {
    BlobHeader* blob = (BlobHeader*)VmGetStrFromObjHdr(VmParentObj);
    s32 val;
    if (blob == NULL) {
        return 0;
    }

    if ((s64)(blob->size - blob->offset) >= 4) {
        memcpy(&val, blob->pData + blob->offset, 4);
        blob->offset += 4;
        return CHANSVmSetInteger(VmInst, VmReturnObj, val) == CHANS_VM_OK;
    }
    return 0;
}

VmMethodDefine(Blob, GetS64) {
    BlobHeader* blob = (BlobHeader*)VmGetStrFromObjHdr(VmParentObj);
    s64 val;
    if (blob == NULL) {
        return 0;
    }

    if ((s64)(blob->size - blob->offset) >= 8) {
        memcpy(&val, blob->pData + blob->offset, 8);
        blob->offset += 8;
        return CHANSVmSetInteger(VmInst, VmReturnObj, val) == CHANS_VM_OK;
    }
    return 0;
}

VmMethodDefine(Blob, SetU8) {
    BlobHeader* blob = (BlobHeader*)VmGetStrFromObjHdr(VmParentObj);
    CHANSVmObjHdr* arg = CHANSVmConvertObjectType(VmInst, CHANS_VM_OBJ_TYPE_INTEGER, CHANSVmGetArg(VmInst, 0));
    u8 val = 0;

    if (blob == NULL || arg == NULL) {
        return 0;
    }

    if ((s64)(blob->size - blob->offset) >= 1) {
        val = (u8)arg->value.int_v;
        memcpy(blob->pData + blob->offset, &val, 1);
        blob->offset += 1;
        return 1;
    }
    return 0;
}

VmMethodDefine(Blob, SetU16) {
    BlobHeader* blob = (BlobHeader*)VmGetStrFromObjHdr(VmParentObj);
    CHANSVmObjHdr* arg = CHANSVmConvertObjectType(VmInst, CHANS_VM_OBJ_TYPE_INTEGER, CHANSVmGetArg(VmInst, 0));
    u16 val = 0;

    if (blob == NULL || arg == NULL) {
        return 0;
    }

    if ((s64)(blob->size - blob->offset) >= 2) {
        val = (u16)arg->value.int_v;
        memcpy(blob->pData + blob->offset, &val, 2);
        blob->offset += 2;
        return 1;
    }
    return 0;
}

VmMethodDefine(Blob, SetU32) {
    BlobHeader* blob = (BlobHeader*)VmGetStrFromObjHdr(VmParentObj);
    CHANSVmObjHdr* arg = CHANSVmConvertObjectType(VmInst, CHANS_VM_OBJ_TYPE_INTEGER, CHANSVmGetArg(VmInst, 0));
    u32 val = 0;

    if (blob == NULL || arg == NULL) {
        return 0;
    }

    if ((s64)(blob->size - blob->offset) >= 4) {
        val = (u32)arg->value.int_v;
        memcpy(blob->pData + blob->offset, &val, 4);
        blob->offset += 4;
        return 1;
    }
    return 0;
}

VmMethodDefine(Blob, SetS8) {
    BlobHeader* blob = (BlobHeader*)VmGetStrFromObjHdr(VmParentObj);
    CHANSVmObjHdr* arg = CHANSVmConvertObjectType(VmInst, CHANS_VM_OBJ_TYPE_INTEGER, CHANSVmGetArg(VmInst, 0));
    s8 val = 0;

    if (blob == NULL || arg == NULL) {
        return 0;
    }

    if ((s64)(blob->size - blob->offset) >= 1) {
        val = (s8)arg->value.int_v;
        memcpy(blob->pData + blob->offset, &val, 1);
        blob->offset += 1;
        return 1;
    }
    return 0;
}

VmMethodDefine(Blob, SetS16) {
    BlobHeader* blob = (BlobHeader*)VmGetStrFromObjHdr(VmParentObj);
    CHANSVmObjHdr* arg = CHANSVmConvertObjectType(VmInst, CHANS_VM_OBJ_TYPE_INTEGER, CHANSVmGetArg(VmInst, 0));
    s16 val = 0;

    if (blob == NULL || arg == NULL) {
        return 0;
    }

    if ((s64)(blob->size - blob->offset) >= 2) {
        val = (s16)arg->value.int_v;
        memcpy(blob->pData + blob->offset, &val, 2);
        blob->offset += 2;
        return 1;
    }
    return 0;
}

VmMethodDefine(Blob, SetS32) {
    BlobHeader* blob = (BlobHeader*)VmGetStrFromObjHdr(VmParentObj);
    CHANSVmObjHdr* arg = CHANSVmConvertObjectType(VmInst, CHANS_VM_OBJ_TYPE_INTEGER, CHANSVmGetArg(VmInst, 0));
    s32 val = 0;

    if (blob == NULL || arg == NULL) {
        return 0;
    }

    if ((s64)(blob->size - blob->offset) >= 4) {
        val = (s32)arg->value.int_v;
        memcpy(blob->pData + blob->offset, &val, 4);
        blob->offset += 4;
        return 1;
    }
    return 0;
}

VmMethodDefine(Blob, SetS64) {
    BlobHeader* blob = (BlobHeader*)VmGetStrFromObjHdr(VmParentObj);
    CHANSVmObjHdr* arg = CHANSVmConvertObjectType(VmInst, CHANS_VM_OBJ_TYPE_INTEGER, CHANSVmGetArg(VmInst, 0));
    s64 val = 0;

    if (blob == NULL || arg == NULL) {
        return 0;
    }

    if ((s64)(blob->size - blob->offset) >= 8) {
        val = arg->value.int_v;
        memcpy(blob->pData + blob->offset, &val, 8);
        blob->offset += 8;
        return 1;
    }
    return 0;
}

static CHANSVmBlobPackFormatList vmBlobPackFormatList[25] = {
    {0x44, 1, 4, 1},   // 'D'
    {0x78, 1, 5, 0},   // 'x'
    {0x63, 1, 6, 1},   // 'c'
    {0x43, 1, 7, 1},   // 'C'
    {0x73, 2, 6, 1},   // 's'
    {0x53, 2, 7, 1},   // 'S'
    {0x69, 4, 6, 1},   // 'i'
    {0x49, 4, 7, 1},   // 'I'
    {0x6C, 4, 6, 1},   // 'l'
    {0x4C, 4, 7, 1},   // 'L'
    {0x71, 8, 6, 1},   // 'q'
    {0x6E, 2, 7, 1},   // 'n'
    {0x4E, 4, 7, 1},   // 'N'
    {0x76, 2, 9, 1},   // 'v'
    {0x56, 4, 9, 1},   // 'V'
    {0x61, 1, 10, 1},  // 'a'
    {0x77, 2, 12, 1},  // 'w'
    {0x5A, 1, 11, 1},  // 'Z'
    {0x57, 2, 13, 1},  // 'W'
    {0x48, 1, 14, 1},  // 'H'
    {0x23, 1, 3, 0},   // '#'
    {0x20, 1, 2, 0},   // ' '
    {0x09, 1, 2, 0},   // '\t'
    {0x0D, 1, 2, 0},   // '\r'
    {0x0A, 1, 2, 0},   // '\n'
};

static u32 vmBlobParsePackFormatString(u32* out_nextPos, u32* out_elemType, u32* out_elemSize, u32* out_paramValue, const wchar_t* fmtStr, u32 fmtLen,
                                       u32 curPos) {
    wchar_t curChar;
    u32 elemType;
    u32 elemSize;
    u32 hasStar;
    s32 paramValue;
    u32 hasParam;
    u32 i;
    const CHANSVmBlobPackFormatList* p;

    elemSize = 1;
    hasStar = 0;
    paramValue = 0;

    while (curPos < fmtLen) {
        curChar = fmtStr[curPos];
        p = vmBlobPackFormatList;

        for (i = 0; i < 25; i++, p++) {
            if (curChar == p->charCode) {
                elemType = p->type;
                elemSize = p->size;
                hasStar = p->flags;
                break;
            }
        }

        if (i >= 25) {
            elemSize = 1;
            elemType = 0;
            goto exit;
        }

        if (elemType != 2 && elemType != 3) {
            goto param_processing;
        }
        if (elemType == 3) {
            for (; curPos < fmtLen; curPos++) {
                u32 c = fmtStr[curPos];
                if (c == L'\r' || c == L'\n')
                    break;
            }
        }
        curPos++;
    }

    elemType = 1;
    curChar = 0;
    goto exit;

param_processing:
    curPos++;
    hasParam = 0;

    for (paramValue = 0; curPos < fmtLen; curPos++) {
        curChar = fmtStr[curPos];

        if (!hasParam) {
            if (curChar == '*') {
                if (hasStar & 1) {
                    paramValue = -1;
                    curPos++;
                    goto exit;
                } else {
                    elemSize = 1;
                    elemType = 0;
                    paramValue = 0;
                    goto exit;
                }
            }
        }

        if (curChar >= 0x30 && curChar <= 0x39) {
            hasParam = 1;
            paramValue = paramValue * 10 + curChar - 0x30;
            if (paramValue < 0) {
                elemSize = 1;
                elemType = 0;
                paramValue = 0;
                goto exit;
            }
        } else {
            break;
        }
    }

    if (hasParam == 0) {
        paramValue = 1;
    }

exit:
    if (out_nextPos != NULL) {
        *out_nextPos = curChar;
    }
    if (out_elemType != NULL) {
        *out_elemType = elemType;
    }
    if (out_elemSize != NULL) {
        *out_elemSize = elemSize;
    }
    if (out_paramValue != NULL) {
        *out_paramValue = paramValue;
    }

    return curPos;
}

static BOOL VmBlobPackCommon(CHANSVm* VmInst, CHANSVmObjHdr* VmParentObj, CHANSVmObjHdr* VmReturnObj, u32 flag) {
    BlobHeader* parentBlob;
    CHANSVmObjHdr* argStr;
    const wchar_t* fmtStr;
    u32 fmtLen;
    CHANSVmObjHdr* argArr;
    u32 fmtPos;
    u32 argCount;
    u32 totalSize;
    u32 elemType;
    s32 count;
    u32 i;
    CHANSVmObjHdr* obj;
    BlobHeader* destBlob;
    BlobHeader* srcBlob;
    s32 copySize;
    u32 dataSize;
    u32 srcOff;
    CHANSVmObjHdr* strObj;
    u8* srcData;
    u32 charCount;
    u32 strLen;
    CHANSVmObjHdr* intObj;
    u32 valLow;
    u32 valHigh;
    u32 bufSize;
    u8* dest;
    u32 ch;
    CHANSVmExeContext* execCtx;
    u32 nextPos;
    u32 elemSize;
    s32 paramValue;
    u32 packBuf[2];

    parentBlob = (BlobHeader*)VmGetStrFromObjHdr(VmParentObj);
    argStr = CHANSVmConvertObjectType(VmInst, CHANS_VM_OBJ_TYPE_STRING, CHANSVmGetArg(VmInst, 0));
    fmtStr = (const wchar_t*)VmGetStrFromObjHdr(argStr);
    fmtLen = (u32)VmGetIntFromObjHdr(argStr) / 2;
    argArr = CHANSVmConvertObjectType(VmInst, CHANS_VM_OBJ_TYPE_ARRAY, CHANSVmGetArg(VmInst, 1));

    if (fmtStr == NULL) {
        return FALSE;
    }

    if (flag == 0 && parentBlob == NULL) {
        goto error;
    }

    argCount = 0;
    fmtPos = 0;
    totalSize = flag != 0 ? 0 : parentBlob->offset;

    while (TRUE) {
        nextPos = 0;
        elemSize = 1;
        paramValue = 1;
        fmtPos = vmBlobParsePackFormatString(&nextPos, &elemType, &elemSize, (void*)&paramValue, fmtStr, fmtLen, fmtPos);

        if (elemType == 1) {
            break;
        }

        if (elemType == 0) {
            goto error;
        }

        switch (elemType) {
            case 4: {
                if (paramValue < 0) {
                    if (argArr != NULL) {
                        obj = CHANSVmGetArrayElement(VmInst, argArr, argCount);
                    } else {
                        obj = CHANSVmGetArg(VmInst, argCount + 1);
                    }
                    if (CHANSVmCheckNativeInstance(obj, VmBlobClassName)) {
                        srcBlob = (BlobHeader*)VmGetStrFromObjHdr(obj);
                    } else {
                        srcBlob = NULL;
                    }
                    if (srcBlob == NULL) {
                        goto error;
                    }
                    count = srcBlob->size - srcBlob->offset;
                } else {
                    count = paramValue;
                }
                if (count < 0) {
                    goto error;
                }
                totalSize += count;
                argCount++;
                break;
            }
            case 5: {
                if (paramValue < 0) {
                    goto error;
                }
                totalSize += paramValue;
                break;
            }
            case 6:
            case 7:
            case 8:
            case 9: {
                if (paramValue < 0) {
                    if (argArr != NULL) {
                        count = CHANSVmGetArrayLength(VmInst, argArr);
                        count = count - argCount;
                    } else {
                        execCtx = ((CHANSVmPrivate*)VmInst)->pCurContext;
                        count = execCtx->argc - argCount - 1;
                    }
                } else {
                    count = paramValue;
                }
                if (count < 0) {
                    goto error;
                }
                argCount += count;
                totalSize += elemSize * count;
                break;
            }
            case 10:
            case 11:
            case 12:
            case 13: {
                if (paramValue < 0) {
                    if (argArr != NULL) {
                        obj = CHANSVmGetArrayElement(VmInst, argArr, argCount);
                        obj = CHANSVmConvertObjectType(VmInst, CHANS_VM_OBJ_TYPE_STRING, obj);
                    } else {
                        obj = CHANSVmGetArg(VmInst, argCount + 1);
                        obj = CHANSVmConvertObjectType(VmInst, CHANS_VM_OBJ_TYPE_STRING, obj);
                    }
                    if (obj == NULL) {
                        goto error;
                    }
                    count = (u32)obj->value.int32_v->val >> 1;
                } else {
                    count = paramValue;
                }
                if (count < 0) {
                    goto error;
                }
                argCount++;
                totalSize += elemSize * count;
                break;
            }
            case 14: {
                if (paramValue < 0) {
                    if (argArr != NULL) {
                        obj = CHANSVmGetArrayElement(VmInst, argArr, argCount);
                        obj = CHANSVmConvertObjectType(VmInst, CHANS_VM_OBJ_TYPE_STRING, obj);
                    } else {
                        obj = CHANSVmGetArg(VmInst, argCount + 1);
                        obj = CHANSVmConvertObjectType(VmInst, CHANS_VM_OBJ_TYPE_STRING, obj);
                    }
                    if (obj == NULL) {
                        goto error;
                    }
                    count = (u32)obj->value.int32_v->val >> 1;
                } else {
                    count = paramValue;
                }
                if (count < 0) {
                    goto error;
                }
                argCount++;
                totalSize += (count + 1) / 2;
                break;
            }
            default: {
                goto error;
            }
        }

        if (flag != 0) {
            continue;
        }
        if (totalSize > parentBlob->size) {
            goto error;
        }
    }

    if (flag != 0) {
        VmReturnObj = VmBlobCreateDirect(VmInst, VmReturnObj, totalSize);
        if (CHANSVmCheckNativeInstance(VmReturnObj, VmBlobClassName)) {
            destBlob = (BlobHeader*)VmGetStrFromObjHdr(VmReturnObj);
        } else {
            destBlob = NULL;
        }
        parentBlob = destBlob;
        if (parentBlob == NULL) {
            goto error;
        }
    } else {
        destBlob = parentBlob;
    }

    argCount = 0;
    fmtPos = 0;

    while (TRUE) {
        nextPos = 0;
        elemSize = 1;
        paramValue = 1;
        fmtPos = vmBlobParsePackFormatString(&nextPos, &elemType, &elemSize, (void*)&paramValue, fmtStr, fmtLen, fmtPos);

        if (elemType == 1) {
            break;
        }

        if (elemType == 0) {
            goto error;
        }

        switch (elemType) {
            case 4: {
                if (argArr != NULL) {
                    obj = CHANSVmGetArrayElement(VmInst, argArr, argCount);
                } else {
                    obj = CHANSVmGetArg(VmInst, argCount + 1);
                }

                if (CHANSVmCheckNativeInstance(obj, VmBlobClassName)) {
                    srcBlob = (BlobHeader*)VmGetStrFromObjHdr(obj);
                } else {
                    srcBlob = NULL;
                }
                argCount++;

                if (srcBlob == NULL) {
                    goto error;
                }

                if (paramValue < 0) {
                    copySize = srcBlob->size - srcBlob->offset;
                } else {
                    copySize = paramValue;
                }

                if (copySize < 0 || !CHANSVm_81451348(destBlob, copySize)) {
                    goto error;
                }

                srcOff = srcBlob->offset;
                dataSize = srcBlob->size - srcOff;
                if (dataSize > copySize) {
                    dataSize = copySize;
                }
                memmove(destBlob->pData + destBlob->offset, srcBlob->pData + srcOff, dataSize);
                if (dataSize < copySize) {
                    memset(destBlob->pData + destBlob->offset + dataSize, 0, copySize - dataSize);
                }
                destBlob->offset += copySize;
                break;
            }
            case 5: {
                if (paramValue < 0 || !CHANSVm_81451348(destBlob, paramValue)) {
                    goto error;
                }
                if (paramValue > 0) {
                    memset(destBlob->pData + destBlob->offset, 0, paramValue);
                }
                destBlob->offset += paramValue;
                break;
            }
            case 6:
            case 7:
            case 8:
            case 9: {
                if (paramValue < 0) {
                    if (argArr != NULL) {
                        count = CHANSVmGetArrayLength(VmInst, argArr) - argCount;
                    } else {
                        execCtx = ((CHANSVmPrivate*)VmInst)->pCurContext;
                        count = execCtx->argc - argCount - 1;
                    }
                    if (count < 0) {
                        goto error;
                    }
                } else {
                    count = paramValue;
                }

                if (!CHANSVm_81451348(destBlob, elemSize * count)) {
                    goto error;
                }

                for (i = 0; i < count; i++) {
                    packBuf[0] = 0;
                    packBuf[1] = 0;
                    if (argArr != NULL) {
                        intObj = CHANSVmGetArrayElement(VmInst, argArr, argCount);
                        intObj = CHANSVmConvertObjectType(VmInst, CHANS_VM_OBJ_TYPE_INTEGER, intObj);
                    } else {
                        intObj = CHANSVmGetArg(VmInst, argCount + 1);
                        intObj = CHANSVmConvertObjectType(VmInst, CHANS_VM_OBJ_TYPE_INTEGER, intObj);
                    }
                    argCount++;
                    if (intObj == NULL) {
                        goto error;
                    }
                    valLow = (u32)intObj->value.int_v;
                    valHigh = (u32)((u64)intObj->value.int_v >> 32);

                    switch ((s32)elemType) {
                        case 6:
                        case 8: {
                            // signed
                            switch (elemSize) {
                                case 1: {
                                    *(s8*)packBuf = (s8)valLow;
                                    break;
                                }
                                case 2: {
                                    *(s16*)packBuf = (s16)valLow;
                                    break;
                                }
                                case 4: {
                                    *(s32*)packBuf = valLow;
                                    break;
                                }
                                case 8: {
                                    *(s32*)packBuf = valHigh;
                                    *((s32*)packBuf + 1) = valLow;
                                    break;
                                }
                                default: {
                                    goto error;
                                }
                            }
                            break;
                        }
                        case 7:
                        case 9: {
                            // unsigned
                            switch (elemSize) {
                                case 1: {
                                    *(u8*)packBuf = (u8)valLow;
                                    break;
                                }
                                case 2: {
                                    *(u16*)packBuf = (u16)valLow;
                                    break;
                                }
                                case 4: {
                                    *(u32*)packBuf = valLow;
                                    break;
                                }
                                default: {
                                    goto error;
                                }
                            }
                            break;
                        }
                        default: {
                            goto error;
                        }
                    }

                    if ((s32)elemType >= 8 && (s32)elemType < 10) {
                        switch (elemSize) {
                            case 2: {
                                u16 tmp = *(u16*)packBuf;
                                *(u16*)packBuf = tmp >> 8 | tmp << 8;
                                break;
                            }
                            case 4: {
                                u32 tmp = *(u32*)packBuf;
                                *(u32*)packBuf = tmp >> 24 & 0xFF | tmp >> 8 & 0xFF00 | tmp << 8 & 0xFF0000 | tmp << 24;
                                break;
                            }
                            case 8: {
                                u64 val = CHANSVm_814540E0(*((u32*)packBuf + 1), *(u32*)packBuf);
                                *(u32*)packBuf = (u32)(val >> 32);
                                *((u32*)packBuf + 1) = (u32)val;
                                break;
                            }
                        }
                    }
                    memcpy(destBlob->pData + destBlob->offset, packBuf, elemSize);
                    destBlob->offset += elemSize;
                }
                break;
            }
            case 10:
            case 11:
            case 12:
            case 13: {
                if (argArr != NULL) {
                    strObj = CHANSVmGetArrayElement(VmInst, argArr, argCount);
                    strObj = CHANSVmConvertObjectType(VmInst, CHANS_VM_OBJ_TYPE_STRING, strObj);
                } else {
                    strObj = CHANSVmGetArg(VmInst, argCount + 1);
                    strObj = CHANSVmConvertObjectType(VmInst, CHANS_VM_OBJ_TYPE_STRING, strObj);
                }
                argCount++;
                if (strObj == NULL) {
                    goto error;
                }

                if (paramValue < 0) {
                    count = (u32)strObj->value.int32_v->val >> 1;
                    if (count < 0) {
                        goto error;
                    }
                } else {
                    count = paramValue;
                }

                if (!CHANSVm_81451348(destBlob, elemSize * count)) {
                    goto error;
                }

                srcData = (u8*)VmGetStrFromObjHdr(strObj);
                strLen = (u32)VmGetIntFromObjHdr(strObj) >> 1;
                charCount = strLen;

                if (charCount > count) {
                    charCount = count;
                }

                memset(destBlob->pData + destBlob->offset, 0, elemSize * count);
                if (elemSize == 1) {
                    CHANSVmStrCpyToU8FromU16(destBlob->pData + destBlob->offset, srcData, charCount);
                } else {
                    memcpy(destBlob->pData + destBlob->offset, srcData, elemSize * charCount);
                }
                destBlob->offset += elemSize * count;
                break;
            }
            case 14: {
                if (argArr != NULL) {
                    strObj = CHANSVmGetArrayElement(VmInst, argArr, argCount);
                    strObj = CHANSVmConvertObjectType(VmInst, CHANS_VM_OBJ_TYPE_STRING, strObj);
                } else {
                    strObj = CHANSVmGetArg(VmInst, argCount + 1);
                    strObj = CHANSVmConvertObjectType(VmInst, CHANS_VM_OBJ_TYPE_STRING, strObj);
                }
                argCount++;
                if (strObj == NULL) {
                    goto error;
                }

                if (paramValue < 0) {
                    count = (u32)strObj->value.int32_v->val >> 1;
                } else {
                    count = paramValue;
                }
                if (count < 0) {
                    goto error;
                }

                bufSize = (count + 1) / 2;
                if (!CHANSVm_81451348(destBlob, bufSize)) {
                    goto error;
                }

                srcData = (u8*)VmGetStrFromObjHdr(strObj);
                strLen = (u32)VmGetIntFromObjHdr(strObj) >> 1;
                dest = destBlob->pData + destBlob->offset;
                memset(dest, 0, bufSize);

                for (i = 0; (s32)i < count; i++) {
                    u32 nibble;

                    ch = ((const u16*)srcData)[i];
                    if (ch >= 0x30 && ch <= 0x39) {
                        nibble = ch - 0x30;
                    } else if (ch >= 0x61 && ch <= 0x66) {
                        nibble = ch - 0x57;
                    } else if (ch >= 0x41 && ch <= 0x46) {
                        nibble = ch - 0x37;
                    } else {
                        nibble = 0;
                    }
                    if ((i & 1) == 0) {
                        nibble *= 16;
                    }
                    *dest |= nibble & 0xFF;
                    if (i & 1) {
                        dest++;
                    }
                }
                destBlob->offset += bufSize;
                break;
            }
            default: {
                goto error;
            }
        }
    }

    if (flag != 0) {
        destBlob->offset = 0;
    }
    return TRUE;

error:
    return FALSE;
}

static u64 CHANSVm_814540E0(u32 upper, u32 lower) {
    // Read U64 and byte-swap
    u64 x = (u64)upper << 32 | lower;
    return x >> 56 & 0x00000000000000ffULL | x >> 40 & 0x000000000000ff00ULL | x >> 24 & 0x0000000000ff0000ULL | x >> 8 & 0x00000000ff000000ULL |
           x << 8 & 0x000000ff00000000ULL | x << 24 & 0x0000ff0000000000ULL | x << 40 & 0x00ff000000000000ULL | x << 56 & 0xff00000000000000ULL;
}

VmMethodDefine(Blob, Create) {
    return VmBlobPackCommon(VmInst, VmParentObj, VmReturnObj, TRUE);
}

VmMethodDefine(Blob, Pack) {
    return VmBlobPackCommon(VmInst, VmParentObj, VmReturnObj, FALSE);
}

VmMethodDefine(Blob, Unpack) {
    BlobHeader* srcBlob;
    CHANSVmObjHdr* argStr;
    wchar_t* fmtStr;
    u32 fmtLen;
    u32 c0;
    u32 c1;
    u32 blobOff;
    u32 argCount;
    s32 valHigh;
    u32 setVal;
    u32 fmtPos;
    u32 outPos;
    u32 count;
    u32* bufAreaBase;
    u32 elemIdx;
    u32 outSize;
    u32 outType;
    u32 outVal;
    u32 iterIdx;
    u32 buf_area[2];
    srcBlob = (BlobHeader*)VmGetStrFromObjHdr(VmParentObj);
    bufAreaBase = buf_area;
    argStr = CHANSVmConvertObjectType(VmInst, CHANS_VM_OBJ_TYPE_STRING, CHANSVmGetArg(VmInst, 0));
    fmtStr = (wchar_t*)VmGetStrFromObjHdr(argStr);
    fmtLen = (u32)VmGetIntFromObjHdr(argStr) >> 1;

    if (srcBlob == NULL || fmtStr == NULL) {
        return 0;
    }

    blobOff = srcBlob->offset;
    argCount = 0;
    fmtPos = 0;
    c0 = 0;
    c1 = 1;

    while (TRUE) {
        u32 tmpPos;
        u32 tmpType;
        u32 tmpSize;
        u32 tmpVal;
        tmpPos = c0;
        tmpType = c0;
        tmpSize = c1;
        tmpVal = c1;
        fmtPos = vmBlobParsePackFormatString(&tmpPos, &tmpType, &tmpSize, &tmpVal, fmtStr, fmtLen, fmtPos);

        if (tmpType == 1) {
            break;
        }

        switch (tmpType) {
            case 0: {
                goto error;
            }
            case 100:
            case 101:
            case 102: {
                break;
            }
            case 4: {
                count = tmpVal;
                if ((s32)count < 0)
                    count = srcBlob->size - blobOff;
                if ((s32)count < 0)
                    goto error;
                argCount++;
                blobOff += count;
                break;
            }
            case 5: {
                if ((s32)tmpVal < 0) {
                    goto error;
                }
                blobOff += tmpVal;
                break;
            }
            case 6:
            case 7:
            case 8:
            case 9: {
                count = tmpVal;
                if ((s32)count < 0) {
                    if (tmpSize == 0) {
                        goto error;
                    }
                    count = srcBlob->size - blobOff;
                    count /= tmpSize;
                }
                if ((s32)count < 0) {
                    goto error;
                }
                argCount += count;
                blobOff += tmpSize * count;
                break;
            }
            case 10:
            case 11:
            case 12:
            case 13: {
                count = tmpVal;
                if ((s32)count < 0) {
                    if (tmpSize == 0) {
                        goto error;
                    }
                    count = srcBlob->size - blobOff;
                    count /= tmpSize;
                }
                if ((s32)count < 0) {
                    goto error;
                }
                argCount++;
                blobOff += tmpSize * count;
                break;
            }
            case 14: {
                count = tmpVal;
                if ((s32)count < 0) {
                    count = (srcBlob->size - blobOff) * 2;
                }
                if ((s32)count < 0) {
                    goto error;
                }
                argCount++;
                blobOff += (s32)(count + 1) / 2;
                break;
            }
            default: {
                break;
            }
        }

        if (blobOff > srcBlob->size) {
            goto error;
        }
    }

    {
        u32 elemCount = argCount;
        if (CHANSVmNewArrayObject(VmInst, VmReturnObj, 1, &elemCount) == NULL) {
            goto error;
        }
    }

    fmtPos = 0;
    elemIdx = 0;
    outSize = 1;
    outType = 0;
    outVal = 1;

    while (TRUE) {
        outSize = 1;
        outType = 0;
        outVal = 1;
        fmtPos = vmBlobParsePackFormatString(&outPos, &outType, &outSize, &outVal, fmtStr, fmtLen, fmtPos);

        if (outType == 1) {
            break;
        }

        switch ((s32)outType) {
            case 0: {
                goto error;
            }
            case 100:
            case 101:
            case 102: {
                break;
            }
            case 4: {
                CHANSVmObjHdr* arrElem;
                u8* dataPtr;
                count = outVal;
                if ((s32)count < 0) {
                    count = srcBlob->size - srcBlob->offset;
                }
                if ((s32)count < 0 || !CHANSVm_81451348(srcBlob, (s32)count)) {
                    goto error;
                }

                dataPtr = srcBlob->pData + srcBlob->offset;
                arrElem = CHANSVmGetArrayElement(VmInst, VmReturnObj, elemIdx);
                elemIdx++;
                if (arrElem == NULL || CHANSVmNewBlobObject(VmInst, arrElem, count, dataPtr, count) == NULL) {
                    goto error;
                }

                srcBlob->offset += (s32)count;
                break;
            }
            case 5: {
                if ((s32)outVal < 0 || !CHANSVm_81451348(srcBlob, (s32)outVal)) {
                    goto error;
                }

                srcBlob->offset += outVal;
                break;
            }
            case 6:
            case 7:
            case 8:
            case 9: {
                CHANSVmObjHdr* arrElem;
                count = outVal;
                if ((s32)count < 0) {
                    if (outSize == 0) {
                        goto error;
                    }
                    count = (srcBlob->size - srcBlob->offset) / outSize;
                }
                if ((s32)count < 0 || !CHANSVm_81451348(srcBlob, outSize * count)) {
                    goto error;
                }

                for (iterIdx = 0; iterIdx < count; iterIdx++) {
                    buf_area[0] = c0;
                    buf_area[1] = c0;
                    memcpy(buf_area, srcBlob->pData + srcBlob->offset, outSize);

                    if ((s32)outType >= 8 && (s32)outType < 10) {
                        switch (outSize) {
                            case 2: {
                                u16 hwTmp = *(u16*)bufAreaBase;
                                *(u16*)bufAreaBase = (hwTmp >> 8) | (hwTmp << 8);
                                break;
                            }
                            case 4: {
                                u32 wTmp = bufAreaBase[0];
                                bufAreaBase[0] = ((wTmp >> 24) & 0xFF) | ((wTmp >> 8) & 0xFF00) | ((wTmp << 8) & 0xFF0000) | (wTmp << 24);
                                break;
                            }
                            case 8: {
                                u64 tmpVal = CHANSVm_814540E0(bufAreaBase[0], bufAreaBase[1]);
                                bufAreaBase[0] = (u32)tmpVal;
                                bufAreaBase[1] = (u32)(tmpVal >> 32);
                                break;
                            }
                        }
                    }

                    switch (outType) {
                        case 6:
                        case 8: {
                            switch (outSize) {
                                case 1: {
                                    setVal = (u32)(s32)(s8) * (u8*)bufAreaBase;
                                    valHigh = (s32)setVal >> 31;
                                    goto merge_point;
                                }
                                case 2: {
                                    setVal = (u32)(s32)(s16) * (u16*)bufAreaBase;
                                    valHigh = (s32)setVal >> 31;
                                    goto merge_point;
                                }
                                case 4: {
                                    setVal = bufAreaBase[0];
                                    valHigh = (s32)setVal >> 31;
                                    goto merge_point;
                                }
                                case 8: {
                                    valHigh = bufAreaBase[0];
                                    setVal = bufAreaBase[1];
                                    goto merge_point;
                                }
                                default: {
                                    goto error;
                                }
                            }
                        }
                        case 7:
                        case 9: {
                            switch (outSize) {
                                case 1: {
                                    setVal = *(u8*)bufAreaBase;
                                    valHigh = 0;
                                    goto merge_point;
                                }
                                case 2: {
                                    setVal = *(u16*)bufAreaBase;
                                    valHigh = 0;
                                    goto merge_point;
                                }
                                case 4: {
                                    setVal = bufAreaBase[0];
                                    valHigh = 0;
                                    goto merge_point;
                                }
                                default: {
                                    goto error;
                                }
                            }
                        }
                        default: {
                            goto error;
                        }
                    }

                merge_point:
                    arrElem = CHANSVmGetArrayElement(VmInst, VmReturnObj, elemIdx);
                    elemIdx++;
                    if (arrElem == NULL || CHANSVmSetInteger(VmInst, arrElem, (vmInteger)((u64)(u32)valHigh << 32 | setVal)) != CHANS_VM_OK) {
                        goto error;
                    }

                    srcBlob->offset += outSize;
                }
                continue;
            }
            case 10:
            case 11:
            case 12:
            case 13: {
                CHANSVmObjHdr* arrElem;
                u8* srcPtr;
                count = outVal;
                if ((s32)count < 0) {
                    if (outSize == 0) {
                        goto error;
                    }
                    count = (srcBlob->size - srcBlob->offset) / outSize;
                }
                if ((s32)count < 0 || !CHANSVm_81451348(srcBlob, outSize * count)) {
                    goto error;
                }

                srcPtr = srcBlob->pData + srcBlob->offset;
                arrElem = CHANSVmGetArrayElement(VmInst, VmReturnObj, elemIdx);
                elemIdx++;
                if (arrElem == NULL) {
                    goto error;
                }

                if (outSize == 1) {
                    if (CHANSVmSetU16StringFromU8(VmInst, arrElem, (char*)srcPtr, count) != CHANS_VM_OK) {
                        goto error;
                    }
                } else if (CHANSVmSetU16String(VmInst, arrElem, (wchar_t*)srcPtr, outSize * count) != CHANS_VM_OK) {
                    goto error;
                }

                if (outType == 0xB || outType == 0xD) {
                    u8* strData;
                    u32 strLen;
                    u32 i;
                    strData = (u8*)VmGetStrFromObjHdr(arrElem);
                    strLen = (u32)VmGetIntFromObjHdr(arrElem);
                    if (strData != NULL && strLen != 0 && arrElem->type == CHANS_VM_OBJ_TYPE_STRING) {
                        u32 remaining = strLen / 2;
                        while (TRUE) {
                            if (remaining == 0) {
                                break;
                            }
                            remaining--;
                            if (VM_READ_LE_U16(strData, 0) == 0) {
                                break;
                            }
                            strData += 2;
                            i++;
                        }
                        arrElem->value.string_v->len = i * 2;
                    }
                }

                srcBlob->offset += outSize * count;
                continue;
            }
            case 14: {
                CHANSVmObjHdr* arrElem;
                u8* srcData;
                s32 bufSize;
                count = outVal;
                if ((s32)count < 0) {
                    count = (srcBlob->size - srcBlob->offset) * 2;
                }
                if ((s32)count < 0) {
                    goto error;
                }

                bufSize = (s32)(count + 1) / 2;
                if (!CHANSVm_81451348(srcBlob, bufSize)) {
                    goto error;
                }

                srcData = srcBlob->pData + srcBlob->offset;
                arrElem = CHANSVmGetArrayElement(VmInst, VmReturnObj, elemIdx);
                elemIdx++;
                if (arrElem == NULL || CHANSVmNewObject(VmInst, FALSE, arrElem, CHANS_VM_OBJ_TYPE_STRING, count * 2) == NULL) {
                    goto error;
                }

                {
                    wchar_t* destStr = (wchar_t*)VmGetStrFromObjHdr(arrElem);
                    s32 i;
                    u8* srcPos;
                    wchar_t* destPos;
                    u8* hexTable;
                    u8 byte;
                    u8 nibble;
                    hexTable = (u8*)lbl_816976E8;
                    srcPos = srcData;
                    destPos = destStr;

                    for (i = 0; i < (s32)count / 2; i++) {
                        byte = *srcPos;
                        srcPos++;
                        nibble = (byte / 16) & 0xF;
                        byte &= 0xF;
                        destPos[0] = (wchar_t)(s8)hexTable[nibble];
                        destPos[1] = (wchar_t)(s8)hexTable[byte];
                        destPos += 2;
                    }
                    if (i * 2 < (s32)count) {
                        byte = *srcPos;
                        *destPos = (wchar_t)(s8)hexTable[(byte >> 4) & 0xF];
                    }
                }

                srcBlob->offset += bufSize;
                continue;
            }
            default: {
                goto error;
            }
        }
    }
    return 1;

error:
    return 0;
}

CHANSVmObjHdr* CHANSVmNewBlobObject(CHANSVm* VmInst, CHANSVmObjHdr* obj, u32 size, void* src, u32 count) {
    BlobHeader* blob;

    if (count > size) {
        count = size;
    }

    obj = VmBlobCreateDirect(VmInst, obj, size);
    if (obj == NULL) {
        return NULL;
    }

    if (src != NULL && count != 0) {
        if (CHANSVmCheckNativeInstance(obj, VmBlobClassName)) {
            blob = (BlobHeader*)VmGetStrFromObjHdr(obj);
        } else {
            blob = NULL;
        }

        if (blob == NULL) {
            return NULL;
        }

        memcpy(blob->pData, src, count);
    }

    return obj;
}

const CHANSVmPropertyList VmBlobPropertyTbl[] = {
    {"offset", VmBlobGetOffset, VmBlobSeek},
    {"length", VmBlobGetLength, VmBlobSetLength},
};
const CHANSVmMethodList VmBlobMethodTbl[] = {
    {"*create", VmBlobCreate},
    {"seek", VmBlobSeek},
    {"skip", VmBlobSkip},
    {"isEqual", VmBlobIsEqual},
    {"getLength", VmBlobGetLength},
    {"setLength", VmBlobSetLength},
    {"fill", VmBlobFill},
    {"getU8", VmBlobGetU8},
    {"getU16", VmBlobGetU16},
    {"getU32", VmBlobGetU32},
    {"getS8", VmBlobGetS8},
    {"getS16", VmBlobGetS16},
    {"getS32", VmBlobGetS32},
    {"getS64", VmBlobGetS64},
    {"setU8", VmBlobSetU8},
    {"setU16", VmBlobSetU16},
    {"setU32", VmBlobSetU32},
    {"setS8", VmBlobSetS8},
    {"setS16", VmBlobSetS16},
    {"setS32", VmBlobSetS32},
    {"setS64", VmBlobSetS64},
    {"getString", VmBlobGetString},
    {"getWString", VmBlobGetWString},
    {"setString", VmBlobSetString},
    {"setWString", VmBlobSetWString},
    {"getBlob", VmBlobGetBlob},
    {"setBlob", VmBlobSetBlob},
    {"getHexString", VmBlobGetHexString},
    {"copyRangeFrom", VmBlobCopyRangeFrom},
    {"calcSHA1Digest", VmBlobCalcSHA1Digest},
    {"calcMD5Digest", VmBlobCalcMD5Digest},
    {"calcCRC16", VmBlobCalcCRC16},
    {"calcCRC32", VmBlobCalcCRC32},
    {"calcHMAC", VmBlobCalcHMAC},
    {"calcRangeSHA1Digest", VmBlobCalcRangeSHA1Digest},
    {"calcRangeMD5Digest", VmBlobCalcRangeMD5Digest},
    {"calcRangeCRC16", VmBlobCalcRangeCRC16},
    {"calcRangeCRC32", VmBlobCalcRangeCRC32},
    {"calcRangeHMAC", VmBlobCalcRangeHMAC},
    {"pack", VmBlobPack},
    {"unpack", VmBlobUnpack},
};

VmMethodDefine(Image, Width) {
    CHANSVmImage* image = *VmParentObj->value.ptr_v;
    return CHANSVmSetInteger(VmInst, VmReturnObj, image->width) == CHANS_VM_OK;
}
VmMethodDefine(Image, Height) {
    CHANSVmImage* image = *VmParentObj->value.ptr_v;
    return CHANSVmSetInteger(VmInst, VmReturnObj, image->height) == CHANS_VM_OK;
}
VmMethodDefine(Image, Format) {
    CHANSVmImage* image = *VmParentObj->value.ptr_v;
    return CHANSVmSetInteger(VmInst, VmReturnObj, image->format) == CHANS_VM_OK;
}

void CHANSVmImageRegisterAllocator(CHANSVmImageAllocatorCallback allocCb, CHANSVmImageCtorCallback ctorCb) {
    VmImageAllocCallback = allocCb;
    VmImageCtorCallback = ctorCb;
}

CHANSVmObjHdr* CHANSVmNewImageObject(CHANSVm* vm, CHANSVmObjHdr* object, void* srcData, u16 width, u16 height, s32 format) {
    u32 bpp;
    CHANSVmImage* image;
    u32 dataSize;
    u32 allocSize;

    if ((width & 7) != 0 || (height & 7) != 0) {
        goto error;
    }

    switch (format) {
        case 1:
        case 2: {
            bpp = 8;
            break;
        }
        case 3:
        case 4:
        case 5: {
            bpp = 16;
            break;
        }
        case 6:
        default: {
            bpp = 32;
            break;
        }
    }

    dataSize = (u32)height * bpp * (u32)width / 8;
    allocSize = (dataSize & ~(-(VmImageAllocCallback != NULL))) + 0x20;

    object = CHANSVmNewObject(vm, FALSE, object, CHANS_VM_OBJ_TYPE_OBJECT, allocSize);
    if (object == NULL) {
        goto ret;
    }
    if (CHANSVmSetObjectAsNativeInstance(vm, object, NULL, "Image") != CHANS_VM_OK) {
        goto error;
    }
    image = (CHANSVmImage*)((u32*)object->value.ptr_v)[0];
    image->width = width;
    image->height = height;
    image->format = (u8)format;
    image->bpp = (u8)bpp;

    if (dataSize != 0) {
        if (VmImageAllocCallback != NULL) {
            image->pData = VmImageAllocCallback(vm, dataSize);
        } else {
            image->pData = (u8*)image + 0x20;
        }
        if (image->pData == 0) {
            goto error;
        }
        image->size = dataSize;
        if (srcData != NULL) {
            memcpy(image->pData, srcData, dataSize);
            DCStoreRange(image->pData, dataSize);
        }
    }
ret:
    return object;

error:
    return NULL;
}

VmCtorDefine(Image) {
    BOOL result = FALSE;
    CHANSVmImage* image = *VmParentObj->value.ptr_v;

    if (VmImageCtorCallback != NULL) {
        if (image->pData != 0 && image->size != 0) {
            result = VmImageCtorCallback(VmInst);
        }
    } else {
        result = TRUE;
    }

    return result;
}

const CHANSVmPropertyList VmImagePropertyTbl[] = {
    {"width", VmImageWidth, NULL},
    {"height", VmImageHeight, NULL},
    {"format", VmImageFormat, NULL},
};

static BOOL VmWinEmuWrite(CHANSVm* vm, CHANSVmObjHdr* parent, CHANSVmObjHdr* ret) {
    CHANSVmObjHdr* strObj;
    u32 offset;
    u32 totalLength;
    u8 buf[VM_STRING_SIZE];
    s32 outLen;
    s32 inLen;
    s32 result;
    u32 remaining;

    strObj = CHANSVmConvertObjectType(vm, CHANS_VM_OBJ_TYPE_STRING, CHANSVmGetArg(vm, 0));
    if (strObj != NULL && strObj->type == CHANS_VM_OBJ_TYPE_STRING) {
        offset = 0;
        totalLength = strObj->value.wstring_v->len & ~1;

        while (offset < totalLength) {
            remaining = totalLength - offset;
            outLen = VM_STRING_SIZE;
            inLen = (remaining < VM_STRING_SIZE ? remaining : VM_STRING_SIZE) / 2;

            result = ENCConvertStringUnicodeToSjis(buf, &outLen, (u16*)((u8*)strObj->value.wstring_v->spData + offset), &inLen);
            if (result == 0) {
                buf[outLen] = 0;
                buf[outLen + 1] = 0;
                OSReport("%s", buf);
            } else {
                OSReport("document.write(): conversion error (%d)\n", result);
                break;
            }

            offset += 0x80;
        }
    }
    return TRUE;
}

const CHANSVmMethodList VmWinEmuMethodTbl[] = {"write", VmWinEmuWrite};

static CHANSVmErr VmPushFuncReturnInfo(CHANSVm* vm, u32 argCount, u32 totalSlots, u32 headerCount);

CHANSVmErr CHANSVmInit(CHANSVm* vm, void* work, u32 size) {
    CHANSVmPrivate* pVm = (CHANSVmPrivate*)vm;
    u32 alignedBase;
    u32 alignedSize;
    u32 exeSize;
    u32 exeStart;
    s32 result;
    CHANSVmNativeClass* cls;

    memset(vm, 0, sizeof(CHANSVm));

    alignedBase = OSRoundUp32B((u32)work);
    alignedSize = OSRoundDown32B((u32)((u8*)work + size)) - alignedBase;

    pVm->exeStart = alignedBase;
    pVm->exeSize = alignedSize;
    pVm->minWorkSize = 0x820;
    if (alignedSize < pVm->minWorkSize) {
        return CHANS_VM_ERR_NO_MEMORY;
    }

    exeStart = alignedBase + 0x820;
    exeSize = alignedSize - 0x820;

    pVm->pBase = (u8*)alignedBase;
    pVm->exeStart = exeStart;
    pVm->exeSize = exeSize;
    pVm->pHeapStart = (u8*)exeStart;
    pVm->pHeapEnd = (u8*)exeStart + exeSize;
    pVm->pFreeExeBuf = (u8*)exeStart;
    pVm->pObjStackTopBuf = (u8*)(exeStart + exeSize);

    result = VmPushFuncReturnInfo(vm, 0, 0, 0);
    if (result == CHANS_VM_OK) {
        CHANSVmErr ok;
        CHANSVmErr ret;

        // TODO: this could use some cleanup
        /* Array class */
        cls = CHANSVmAddNativeClass2(vm, VmArrayClassName, VmArrayCtor, VmArrayDtor, VmArrayCtor);
        if (cls != NULL &&
            (VmArrayPropertyTbl == NULL ||
             CHANSVmAddNativePropertyAccessorsList(vm, cls, VmArrayPropertyTbl, CHANSVmPropertyCount(VmArrayPropertyTbl)) == CHANS_VM_OK) &&
            (VmArrayMethodTbl == NULL ||
             CHANSVmAddNativeMethodList(vm, cls, VmArrayMethodTbl, CHANSVmMethodCount(VmArrayMethodTbl)) == CHANS_VM_OK)) {
            ok = TRUE;
        } else {
            ok = FALSE;
        }
        if (ok) {
            cls = CHANSVmFindNativeClass(vm, VmArrayClassName);
            if (cls != NULL) {
                pVm->pArrayCls = cls;
                ok = TRUE;
            } else {
                ok = FALSE;
            }
        }
        if (!ok)
            goto class_fail;

        /* Date class */
        cls = CHANSVmAddNativeClass2(vm, "Date", VmDateCtor, 0, VmDateDtor);
        if (cls == NULL) {
            ok = FALSE;
        } else {
            ok = (CHANSVmAddNativeMethodList(vm, cls, VmDateMethodTbl, CHANSVmMethodCount(VmDateMethodTbl)) == CHANS_VM_OK);
        }
        if (!ok)
            goto class_fail;

        /* Math class */
        if (CHANSVmNewBuiltinObject(vm, "@Math", NULL, NULL, NULL, "Math", NULL, VmMathPropertyTbl, CHANSVmPropertyCount(VmMathPropertyTbl),
                                    VmMathMethodTbl, CHANSVmMethodCount(VmMathMethodTbl)) == 0) {
            goto class_fail;
        }

        /* String class */
        if (CHANSVmNewBuiltinObject(vm, VmStringClassName, VmStringCtor, NULL, VmStringCtor, NULL, NULL, VmStringPropertyTbl,
                                    CHANSVmPropertyCount(VmStringPropertyTbl), VmStringMethodTbl, CHANSVmMethodCount(VmStringMethodTbl)) == 0) {
            goto class_string_fail;
        }
        cls = CHANSVmFindNativeClass(vm, VmStringClassName);
        if (cls != NULL) {
            pVm->pStringCls = cls;
            ok = TRUE;
        } else {
        class_string_fail:
            ok = FALSE;
        }
        if (!ok)
            goto class_fail;

        /* Blob class */
        cls = CHANSVmAddNativeClass2(vm, VmBlobClassName, VmBlobCtor, VmBlobDtor, NULL);
        if (cls == NULL) {
            ok = FALSE;
        } else {
            ret = CHANSVmAddNativePropertyAccessorsList(vm, cls, VmBlobPropertyTbl, CHANSVmPropertyCount(VmBlobPropertyTbl));
            if (ret == CHANS_VM_OK) {
                ret = CHANSVmAddNativeMethodList(vm, cls, VmBlobMethodTbl, CHANSVmMethodCount(VmBlobMethodTbl));
            }
            ok = (ret == CHANS_VM_OK);
        }
        if (!ok) {
            goto class_fail;
        }

        /* Image class */
        VmImageAllocCallback = NULL;
        VmImageCtorCallback = NULL;
        if (CHANSVmNewBuiltinObject(vm, "Image", NULL, VmImageCtor, NULL, NULL, NULL, VmImagePropertyTbl, CHANSVmPropertyCount(VmImagePropertyTbl),
                                    NULL, 0) == 0) {
            goto class_fail;
        }

        /* Screen (@WinEmu) class */
        if (CHANSVmNewBuiltinObject(vm, "@WinEmu", NULL, NULL, NULL, "document", NULL, NULL, 0, (CHANSVmMethodList*)&VmWinEmuMethodTbl,
                                    CHANSVmMethodCount(VmWinEmuMethodTbl)) == 0) {
        class_fail:
            result = CHANS_VM_ERR_NATIVE_METHOD_INIT;
        }
    }

    memset(&pVm->accumulator, 0, sizeof(CHANSVmObjHdr));
    return result;
}

void* CHANSVmGetFreeExeBufp(CHANSVm* vm) {
    CHANSVmPrivate* pVm = (CHANSVmPrivate*)vm;

    if (pVm->bAllocBlocked != FALSE || pVm->pFreeExeBuf >= pVm->pObjStackTopBuf) {
        return NULL;
    }
    return pVm->pFreeExeBuf;
}

u32 CHANSVmGetFreeExeSize(CHANSVm* vm) {
    CHANSVmPrivate* pVm = (CHANSVmPrivate*)vm;

    s32 size = (u32)pVm->pObjStackTopBuf - (u32)pVm->pFreeExeBuf;
    if (pVm->bAllocBlocked != FALSE || size < 0) {
        return 0;
    }
    return size;
}

void CHANSConvertModuleOfsToPtr(CHANSVmModule* ptr);

CHANSVmErr CHANSVmAddExe(CHANSVm* vm, s32 unk0, CHANSVm* execCtx) {
    CHANSVmPrivate* pVm = (CHANSVmPrivate*)vm;
    ModuleHeader* mod;
    CHANSVmModule* header;
    u32 maxEnd;
    u32 size;
    u32 cnt;
    u32 ofs;

    mod = (ModuleHeader*)pVm->pFreeExeBuf;
    size = mod->size;
    if (memcmp(&mod->magic, "RCHE", 4) != 0 || size < 0x80 || size & 0x1F) {
    fail_format:
        return CHANS_VM_ERR_INVALID_EXE_FORMAT;
    }
    if (mod->type != (u32)execCtx) {
        return CHANS_VM_ERR_INVALID_EXE_TYPE;
    }
    if (mod->opcodeVersion != 3) {
        return CHANS_VM_ERR_OPCODE_VERSION;
    }
    if (CHANSVmGetFreeExeSize(vm) < size) {
        return CHANS_VM_ERR_NO_MEMORY;
    }

    pVm->pFreeExeBuf = pVm->pFreeExeBuf + size;
    // Struct access using 'header = mod->module' breaks the match
    header = (CHANSVmModule*)(mod + 1);
    header->pNext = NULL;
    header->regionSize = size - sizeof(ModuleHeader);
    header->pModule = mod;

    if ((u32)header->pData < 0x60 || header->regionSize < (u32)header->pData || header->regionSize < header->codeSize) {
        goto fail_format;
    }
    maxEnd = (u32)header->pData + header->codeSize;
    if (header->regionSize < maxEnd) {
        goto fail_format;
    }

#define CHECK_TABLE_REGION(countField, offsField, entrySize)                                                                                         \
    cnt = countField;                                                                                                                                \
    if (cnt) {                                                                                                                                       \
        ofs = (u32)offsField;                                                                                                                        \
        if (ofs < maxEnd || header->regionSize < ofs) {                                                                                              \
            goto fail_format;                                                                                                                        \
        }                                                                                                                                            \
        maxEnd = ofs + cnt * entrySize;                                                                                                              \
        if (header->regionSize < maxEnd) {                                                                                                           \
            goto fail_format;                                                                                                                        \
        }                                                                                                                                            \
    }

    CHECK_TABLE_REGION(header->nameCount, header->pNameTbl, sizeof(NameTblEntry))
    CHECK_TABLE_REGION(header->methodCount, header->pMethodRefTbl, sizeof(u32))
    CHECK_TABLE_REGION(header->stringCount, header->pStringDataTbl, sizeof(u16))
    if (header->pLineTbl) {
        u32 clsSize = (header->codeSize + 255) / 256;
        if ((u32)header->pLineTbl >= maxEnd && header->regionSize >= (u32)header->pLineTbl) {
            // TODO: 0x24 should be sizeof(...)
            clsSize = (u32)header->pLineTbl + clsSize * 0x24;
            if (header->regionSize < clsSize) {
                goto fail_format;
            }
        } else {
            goto fail_format;
        }
    }

    {
        CHANSVmExeContext* context = pVm->pContextListHead;
        u32 depth = 1;

        if (context == NULL) {
            pVm->pContextListHead = (CHANSVmExeContext*)header;
        } else {
            while (context->pNext != NULL) {
                context = context->pNext;
                depth++;
            }
            context->pNext = (CHANSVmExeContext*)header;
        }
        pVm->depth = depth;
    }

    if (header->moduleCount) {
        header->pModuleTbl = VmAlloc(vm, OSRoundUp32B(header->moduleCount * sizeof(ModuleEntry)));
    }

    if (header->methodCount) {
        header->pMethodTbl = VmAlloc(vm, OSRoundUp32B(header->methodCount * sizeof(u32)));
    }

    if (header->stringCount) {
        header->pStringTbl = VmAlloc(vm, OSRoundUp32B(header->stringCount * sizeof(StringTblEntry)));
    }

    if (header->moduleCount && header->pModuleTbl == NULL || header->methodCount && header->pMethodTbl == NULL ||
        header->stringCount != 0 && header->pStringTbl == NULL) {
        return CHANS_VM_ERR_NO_MEMORY;
    }

    {
        u32 i;
        u32 tblOffs;

        for (i = 0, tblOffs = 0; i < header->moduleCount; i++) {
            memset((u8*)header->pModuleTbl + tblOffs, 0, sizeof(ModuleEntry));
            tblOffs += sizeof(ModuleEntry);
        }
    }

    CHANSConvertModuleOfsToPtr(header);

    {
        u32 i;
        DispatchEntry* methodTable = header->pMethodRefTbl;
        int ok;

        for (i = 1; i < header->methodCount; i++) {
            if (methodTable[i].nameLength) {
                if ((u8*)(methodTable[i].nameLength + (u32)methodTable + methodTable[i].offset) <= (u8*)(header->regionSize + (u32)header)) {
                    CHANSVmObjHdr* method = (CHANSVmObjHdr*)CHANSVmAddNativeMethodName(vm, (const char*)((u8*)methodTable + methodTable[i].offset),
                                                                                       methodTable[i].nameLength);
                    if (method) {
                        header->pMethodTbl[i] = (u32)method;
                        continue;
                    }
                }
            }
            ok = 0;
            goto check_method;
        }
        ok = 1;
    check_method:
        if (ok == 0) {
            goto fail_format;
        }
    }
    {
        u32 i;
        u8* strPtr = header->pStringDataTbl;
        int ok;

        for (i = 0; i < header->stringCount; i++) {
            u32 len = VM_READ_LE_U16(strPtr, 0);
            strPtr += 2;

            if ((len & 1) == 0) {
                if (strPtr + len <= (u8*)(header->regionSize + (u32)header)) {
                    header->pStringTbl[i].pStringData = strPtr;
                    header->pStringTbl[i].length = len;
                    strPtr += len;
                    continue;
                }
            }
            ok = 0;
            goto check_str;
        }
        ok = 1;
    check_str:
        if (ok == 0) {
            goto fail_format;
        }
    }

    return CHANS_VM_OK;
}

static void VmOffs00U32ToPtr(void* ptr) {
    if (*(u32*)ptr != 0) {
        *(u32*)ptr += (u32)ptr;
    }
}

static void VmOffsU32ToPtr(void* ptr, void* offset) NO_INLINE {
    if (*(u32*)ptr != 0) {
        *(u32*)ptr += (u32)offset;
    }
}

void CHANSConvertModuleOfsToPtr(CHANSVmModule* ptr) {
    VmOffs00U32ToPtr(ptr);
    VmOffsU32ToPtr(&ptr->pData, ptr);
    VmOffsU32ToPtr(&ptr->pNameTbl, ptr);
    VmOffsU32ToPtr(&ptr->pMethodRefTbl, ptr);
    VmOffsU32ToPtr(&ptr->pStringDataTbl, ptr);
    VmOffsU32ToPtr(&ptr->pDispatchTbl, ptr);
    VmOffsU32ToPtr((void**)&ptr->pLineTbl, ptr);
}

static CHANSVmObjHdr* CHANSVm_81455654(CHANSVm* vm, u32 id) {
    CHANSVmObjHdr* data = NULL;
    CHANSVmPrivate* pVm = (CHANSVmPrivate*)vm;
    CHANSVmExeContext* context = pVm->pCurContext;
    CHANSVmModule* dbg = context->pDebug;
    s32 remaining;
    s32 idx;

    if (id < dbg->moduleCount) {
        data = (CHANSVmObjHdr*)dbg->pModuleTbl;
        data += id;
        if (data->type != CHANS_VM_OBJ_TYPE_GLOBAL_REF) {
            return data;
        }
        return *(CHANSVmObjHdr**)data;
    }

    remaining = (s32)id - (s32)context->frameBase;
    if (remaining >= 0) {
        if (remaining >= (s32)context->headerCount) {
            remaining -= (s32)context->headerCount;
            idx = (s32)context->argc - 1 - remaining;
            if (idx >= 0) {
                data = (CHANSVmObjHdr*)context->pArgv;
                return &data[idx];
            }
        } else {
            return &context->headers[remaining];
        }
    }

    return data;
}

static CHANSVmErr VmPushFuncReturnInfo(CHANSVm* vm, u32 argCount, u32 totalSlots, u32 headerCount) {
    CHANSVmPrivate* pVm = (CHANSVmPrivate*)vm;
    CHANSVmExeContext* block;
    CHANSVmErr result;
    u8* objStackTopBuf;
    u32 size;
    u32 i;

    result = CHANS_VM_ERR_PUSH_FUNC_RETURN_INFO;
    if (pVm->pCurContext != NULL && pVm->pCurContext->stackDepth < argCount) {
        return result;
    }

    if (headerCount <= 0xFF) {
        objStackTopBuf = pVm->pObjStackTopBuf;

        while (argCount < totalSlots) {
            objStackTopBuf -= sizeof(CHANSVmObjHdr);
            if (pVm->pFreeExeBuf > objStackTopBuf) {
                return CHANS_VM_ERR_NO_MEMORY;
            }
            memset(objStackTopBuf, 0, sizeof(CHANSVmObjHdr));

            argCount++;
            if ((u32)pVm->pCurContext->stackDepth < -1) {
                pVm->pCurContext->stackDepth++;
            } else {
                return CHANS_VM_ERR_PUSH_FUNC_RETURN_INFO;
            }
        }

        pVm->pObjStackTopBuf = objStackTopBuf;
        VmUpdateMinFreeHeapSize(vm);

        size = headerCount * sizeof(CHANSVmObjHdr) + sizeof(CHANSVmExeContext);
        block = NULL;

        if (size != 0 && (size & 7) == 0) {
            if ((u32)pVm->pObjStackTopBuf - (u32)pVm->pFreeExeBuf >= size) {
                block = (CHANSVmExeContext*)(pVm->pObjStackTopBuf - size);
                pVm->pObjStackTopBuf = (u8*)block;
                VmUpdateMinFreeHeapSize(vm);
                memset(block, 0, size);
            }
        }

        if (block == NULL) {
            goto return_result;
        }

        if (pVm->pCurContext != NULL) {
            block->pDebug = pVm->pCurContext->pDebug;
            block->pc = pVm->pCurContext->pc;
            block->pNext = pVm->pCurContext;
        }

        pVm->pCurContext = block;
        block->pArgv = (wchar_t**)objStackTopBuf;
        block->argc = argCount;
        block->totalSlots = totalSlots;
        block->headerCount = headerCount;
        block->frameBase = (u16)(VM_FRAME_ARENA_SIZE - (headerCount + totalSlots));

        for (i = 0; i < headerCount; i++) {
            memset(&block->headers[i], 0, sizeof(CHANSVmObjHdr));
        }

        result = 0;
    }
return_result:
    return result;
}

static CHANSVmErr VmReturnWithValue(CHANSVm* vm, u32 val) {
    CHANSVmPrivate* pVm = (CHANSVmPrivate*)vm;
    u32 i;
    CHANSVmObjHdr* obj = NULL;
    GlobalObjListNode* node;
    CHANSVmErr ret;

    for (i = 0; i < pVm->pCurContext->headerCount; i++) {
        ret = CHANSVmDeleteObject(vm, &pVm->pCurContext->headers[i]);
        if (ret != CHANS_VM_OK) {
            return ret;
        }
    }

    while (pVm->pCurContext->stackDepth != 0) {
        ret = CHANSVmPopObject(vm, NULL);
        if (ret != CHANS_VM_OK) {
            return ret;
        }
    }

    pVm->pObjStackTopBuf = (u8*)pVm->pCurContext->pArgv;

    if (val != 0) {
        obj = &pVm->accumulator;
    }

    pVm->pCurContext->stackDepth = pVm->pCurContext->argc;
    while (pVm->pCurContext->stackDepth != 0) {
        ret = CHANSVmPopObject(vm, obj);
        if (ret != 0) {
            return ret;
        }
    }

    if (pVm->pCurContext->pNext != NULL) {
        if (pVm->pCurContext->pNext->stackDepth < (u32)pVm->pCurContext->argc) {
            ret = CHANS_VM_ERR_RETURN;
        } else {
            pVm->pCurContext->pNext->stackDepth -= pVm->pCurContext->argc;
            ret = CHANS_VM_OK;
        }
    } else {
        for (i = 0; i < pVm->pCurContext->pDebug->moduleCount; i++) {
            if (CHANSVmDeleteObject(vm, CHANSVm_81455654(vm, i)) != CHANS_VM_OK) {
                return CHANS_VM_ERR_RETURN;
            }
        }

        node = pVm->pGlobalObjList;
        while (node != NULL) {
            node->hdr.flags.raw &= ~CHANSVM_OBJ_FLAG_READONLY;
            if (CHANSVmDeleteObject(vm, (CHANSVmObjHdr*)node) != CHANS_VM_OK) {
                return CHANS_VM_ERR_RETURN;
            }

            VmFree(vm, node, OSRoundUp32B(node->nameLength + sizeof(GlobalObjListNode)));
            node = node->next;
            pVm->pGlobalObjList = node;
        }

        ret = CHANS_VM_ERR_EXIT;
    }

    pVm->pCurContext = (CHANSVmExeContext*)(u32)pVm->pCurContext->pNext;
    return ret;
}

CHANSVmErr CHANSVmLinkModules(CHANSVm* vm, s32 unk0) {
    CHANSVmPrivate* pVm = (CHANSVmPrivate*)vm;
    CHANSVmModule* module;
    u32 modIdx;
    u32 i;

    (void)unk0;

    if (!pVm->bAllocBlocked && pVm->depth != 0) {
        pVm->bAllocBlocked = TRUE;
        module = (CHANSVmModule*)pVm->pContextListHead;
        modIdx = 0;

        while (modIdx < (u32)pVm->depth) {
            CHANSVmErr result;
            DispatchEntry* dispatchTable;
            GlobalObjListNode* gIter;
            CHANSVmNativeClass* nIter;

            pVm->pCurContext->pDebug = module;
            dispatchTable = module->pDispatchTbl;

            for (gIter = pVm->pGlobalObjList; gIter != NULL; gIter = gIter->next) {
                for (i = 0; i < module->moduleCount; i++) {
                    DispatchEntry entry = dispatchTable[i];
                    u8* addr;

                    if (!gIter->nameLength) {
                        continue;
                    }

                    addr = (u8*)dispatchTable + entry.offset;
                    if (addr + gIter->nameLength > (u8*)module + module->regionSize || gIter->nameLength != entry.nameLength) {
                        continue;
                    }

                    if (memcmp(gIter->name, addr, gIter->nameLength) != 0) {
                        continue;
                    }

                    if (module->pModuleTbl[i].type) {
                        result = CHANS_VM_ERR_RESOLVE_GLOBAL_OBJECT_REFERENCE;
                        goto post_pass1;
                    }
                    module->pModuleTbl[i].type = CHANS_VM_OBJ_TYPE_GLOBAL_REF;
                    module->pModuleTbl[i].pGlobalObj = gIter;
                    module->pModuleTbl[i].flags = CHANSVM_OBJ_FLAG_READONLY;
                }
            }
            result = 0;
        post_pass1:
            if (result) {
                return result;
            }

            dispatchTable = module->pDispatchTbl;
            for (nIter = pVm->pNativeClasses; nIter != NULL; nIter = nIter->pNext) {
                for (i = 0; i < module->moduleCount; i++) {
                    DispatchEntry entry = dispatchTable[i];
                    u8* addr;

                    if (!nIter->nameLength) {
                        continue;
                    }

                    addr = (u8*)dispatchTable + entry.offset;
                    if (addr + nIter->nameLength > (u8*)module + module->regionSize || nIter->nameLength != entry.nameLength) {
                        continue;
                    }

                    if (memcmp(nIter->sName, addr, nIter->nameLength) != 0) {
                        continue;
                    }

                    if (module->pModuleTbl[i].type) {
                        result = CHANS_VM_ERR_RESOLVE_NATIVE_METHOD_CALL;
                        goto post_pass2;
                    }
                    module->pModuleTbl[i].type = CHANS_VM_OBJ_TYPE_CLASS_REF;
                    module->pModuleTbl[i].pNativeClass = nIter;
                    module->pModuleTbl[i].flags = CHANSVM_OBJ_FLAG_READONLY;
                }
            }
            result = 0;
        post_pass2:
            if (result) {
                return result;
            }

            for (i = 0; i < module->nameCount; i++) {
                u16 idx = module->pNameTbl[i].moduleIdx;
                CHANSVmObjHdr* obj;
                if (idx >= module->moduleCount) {
                    goto pass3_idx_err;
                } else if (obj = CHANSVm_81455654(vm, idx), obj == NULL) {
                    goto pass3_obj_err;
                } else if (obj->type == CHANS_VM_OBJ_TYPE_BLANK) {
                    goto pass3_success;
                }

            pass3_obj_err:
                result = CHANS_VM_ERR_SET_LOCAL_FUNCTION;
                goto post_pass3;

            pass3_success:
                obj->type = CHANS_VM_OBJ_TYPE_METHOD_REF;
                obj->value.bool_v = (BOOL)i;
                obj->flags.raw = CHANSVM_OBJ_FLAG_READONLY;
                continue;

            pass3_idx_err:
                result = CHANS_VM_ERR_SET_LOCAL_FUNCTION;
                goto post_pass3;
            }
            result = 0;
        post_pass3:
            if (result) {
                return result;
            }

            module = module->pNext;
            modIdx++;
        }

        pVm->pHeapStart = pVm->pFreeExeBuf;
        pVm->pHeapEnd = pVm->pObjStackTopBuf;
        pVm->minFreeHeapSize = (u32)pVm->pObjStackTopBuf - (u32)pVm->pFreeExeBuf;
        memset(&pVm->accumulator, 0, sizeof(CHANSVmObjHdr));
        pVm->pCurContext->pDebug = (CHANSVmModule*)pVm->pContextListHead;
        pVm->pCurContext->pc = 1;
        return CHANS_VM_OK;
    }
    return CHANS_VM_ERR_LINK_FAILED;
}

static u8* VmGetOperand(CHANSVm* vm, u32 num, u32 offset) {
    CHANSVmPrivate* pVm = (CHANSVmPrivate*)vm;
    u32 pc = pVm->pCurContext->pc;
    CHANSVmModule* dbg = pVm->pCurContext->pDebug;
    u32 addr;

    if (pc + offset >= dbg->codeSize) {
        return NULL;
    }

    addr = pc + num;
    return dbg->pData + addr;
}

static CHANSVmErr VmLoadImmInteger(CHANSVm* vm, CHANSVmObjHdr* obj, u8* buf, s32 count) {
    s64 acc = 0;
    u8* p = buf;

    while (count != 0) {
        s32 val = (s8)*p;
        acc = (acc << 8) | (val & 0xFF);
        p++;
        count--;
    }

    return CHANSVmSetInteger(vm, obj, acc);
}

CHANSVmErr VmStore(CHANSVm* vm, CHANSVmObjHdr* dest, CHANSVmObjHdr* src) {
    CHANSVmErr ret;
    if (dest == NULL || src == NULL) {
        return CHANS_VM_ERR_OBJECT_NOT_FOUND;
    }
    if ((dest->flags.raw & CHANSVM_OBJ_FLAG_READONLY) != 0) {
        return CHANS_VM_ERR_STORE_READONLY;
    }
    ret = CHANSVmDeleteObject(vm, dest);
    if (ret == CHANS_VM_OK) {
        if (CHANSVmCopyObject(vm, dest, src) == NULL) {
            ret = CHANS_VM_ERR_STORE_OBJECT;
        }
    }
    return ret;
}

CHANSVmErr VmDeleteCommon(CHANSVm* vm, CHANSVmObjHdr* object) {
    CHANSVmErr result = CHANS_VM_ERR_DELETE_OBJECT;
    if (object != NULL) {
        CHANSVmPrivate* pVm = (CHANSVmPrivate*)vm;
        result = CHANSVmDeleteObject(vm, object);
        if (result == CHANS_VM_OK) {
            if (object->type == CHANS_VM_OBJ_TYPE_BLANK) {
                result = CHANSVmSetInteger(vm, &pVm->accumulator, 1);
            } else {
                result = CHANS_VM_ERR_DELETE_OBJECT;
            }
        }
    }
    return result;
}

static CHANSVmErr VmCallMethod(CHANSVm* vm, u32 instructionSize, u32 callType, u32 ctorFlag) {
    CHANSVmPrivate* pVm = (CHANSVmPrivate*)vm;
    CHANSVmObjHdr* acc;
    u32 retVal;
    CHANSVmNativeClass* target;
    u32 pushEnd, headerCount;
    u32 newPc;
    void* pConstObj;
    CHANSVmObjHdr localBuf;
    u32 pushDepth;
    CHANSVmFunction funcPtr;

    acc = &pVm->accumulator;
    retVal = 0;
    target = NULL;
    pushEnd = 0;
    headerCount = 0;

    switch (acc->type) {
        case CHANS_VM_OBJ_TYPE_ARRAY: {
            target = pVm->pArrayCls;
            if (target == 0) {
                return CHANS_VM_ERR_INVALID_OBJECT;
            }
            break;
        }
        case CHANS_VM_OBJ_TYPE_CLASS_REF:
        case CHANS_VM_OBJ_TYPE_OBJECT: {
            target = acc->parentCls;
            if (target == NULL) {
                return CHANS_VM_ERR_INVALID_OBJECT;
            }
            break;
        }
        case CHANS_VM_OBJ_TYPE_METHOD_REF: {
            CHANSVmExeContext* ec = pVm->pCurContext;
            CHANSVmModule* dbg = ec->pDebug;
            u32 idx = (u32)acc->value.int32_v;

            if (idx >= dbg->nameCount) {
                return CHANS_VM_ERR_INVALID_OBJECT;
            }
            pushEnd = dbg->pNameTbl[idx].pushCount;
            headerCount = dbg->pNameTbl[idx].headerCount;
            break;
        }
        case CHANS_VM_OBJ_TYPE_STRING: {
            target = pVm->pStringCls;
            if (target == NULL) {
                return CHANS_VM_ERR_INVALID_OBJECT;
            }
            break;
        }
        default: {
        error_check:
            if (callType == CHANS_VM_CALL_TYPE_FUNCTION) {
                return CHANS_VM_ERR_NO_SUCH_FUNCTION;
            }
            retVal = CHANS_VM_ERR_NO_SUCH_PROPERTY;
            if (callType == CHANS_VM_CALL_TYPE_METHOD) {
                retVal = CHANS_VM_ERR_NO_SUCH_METHOD;
            }
            goto return_label;
            break;
        }
    }

    {
        u32 pc = pVm->pCurContext->pc;

        newPc = pc + instructionSize;
        pConstObj = (void*)(pVm->pCurContext->pDebug->pData + pc);

        if (newPc < pc || newPc > pVm->pCurContext->pDebug->codeSize) {
            return CHANS_VM_ERR_CODE_RANGE;
        }
        if (target == 0) {
            pVm->pCurContext->pc = newPc;
        }
    }

    memset(&localBuf, 0, sizeof(CHANSVmObjHdr));

    if (callType == CHANS_VM_CALL_TYPE_FUNCTION) {
        target = NULL;
    } else {
        CHANSVmExeContext* ec = pVm->pCurContext;
        // TODO: what's the actual type of the object here? avoid raw ptr access
        u32 methodId = *((u16*)pConstObj + 1);
        u32 methodCount;

        if (ec->pDebug->pMethodTbl == NULL) {
            goto error_check;
        }

        methodCount = ec->pDebug->methodCount;
        if (methodId >= methodCount || methodId != 0 && target == 0) {
            goto error_check;
        }

        if (methodId != 0) {
            retVal = ec->pDebug->pMethodTbl[methodId];
        }
    }

    // If callType == PROP_GET or PROP_SET
    if (callType - CHANS_VM_CALL_TYPE_PROP_GET <= 1) {
        CHANSVmNativeProperty* entry;
        u32 isMethodNull = retVal == 0;
        u32 isSet = callType == CHANS_VM_CALL_TYPE_PROP_SET;
        entry = target->pNativeProperties;
        pushDepth = isSet;

        while (TRUE) {
            if (isMethodNull != 0 || entry == 0) {
                return CHANS_VM_ERR_NO_SUCH_PROPERTY;
            }
            if (entry->index == retVal) {
                if (acc->type == CHANS_VM_OBJ_TYPE_CLASS_REF) {
                    if (entry->flag == 0) {
                        return CHANS_VM_ERR_FORBIDDEN_CLASS_PROPERTY;
                    }
                }
                if (callType == CHANS_VM_CALL_TYPE_PROP_GET) {
                    funcPtr = entry->getter;
                    if (funcPtr == NULL) {
                        return CHANS_VM_ERR_NOT_READABLE_PROPERTY;
                    }
                } else {
                    funcPtr = entry->setter;
                    if (funcPtr == NULL) {
                        return CHANS_VM_ERR_NOT_WRITABLE_PROPERTY;
                    }
                }
                break;
            }
            entry = entry->pNext;
        }
    } else {
        pushDepth = *((u8*)pConstObj + instructionSize - 1);
        if (retVal != 0) {
            CHANSVmNativeMethod* node = target->pNativeMethods;

            while (TRUE) {
                if (node == NULL) {
                    return CHANS_VM_ERR_NO_SUCH_METHOD;
                }
                if (node->index == retVal) {
                    if (acc->type == CHANS_VM_OBJ_TYPE_CLASS_REF && node->hasStar == FALSE) {
                        return CHANS_VM_ERR_FORBIDDEN_CLASS_METHOD;
                    }
                    funcPtr = node->func;
                    break;
                }
                node = node->pNext;
            }
            retVal = 0;
        } else if (target != NULL) {
            if (acc->type != CHANS_VM_OBJ_TYPE_CLASS_REF) {
                if (callType == CHANS_VM_CALL_TYPE_METHOD) {
                    return CHANS_VM_ERR_NO_SUCH_METHOD;
                }
                return CHANS_VM_ERR_NO_SUCH_FUNCTION;
            }
            if (ctorFlag != FALSE) {
                localBuf.parentCls = target;
                localBuf.type = CHANS_VM_OBJ_TYPE_OBJECT;
                funcPtr = target->ctor;
                if (funcPtr == NULL) {
                    return CHANS_VM_ERR_NOT_CONSTRUCTOR;
                }
            } else {
                funcPtr = target->init;
                if (funcPtr == NULL) {
                    return CHANS_VM_ERR_NEED_NEW;
                }
            }
        }
    }

    if (target != NULL) {
        pushEnd = pushDepth;
    }

    retVal = VmPushFuncReturnInfo(vm, pushDepth, pushEnd, headerCount);
    if (retVal == CHANS_VM_OK) {
        if (target != NULL) {
            if (funcPtr != NULL && funcPtr(vm, acc, &localBuf) == CHANS_VM_OK) {
                retVal = CHANS_VM_ERR_IN_METHOD_OR_PROPERTY;
                if (ctorFlag != FALSE) {
                    retVal = CHANS_VM_ERR_NEW;
                }
            } else {
                retVal = VmReturnWithValue(vm, callType == CHANS_VM_CALL_TYPE_PROP_SET ? 1 : 0);
                if (retVal == CHANS_VM_OK && callType != CHANS_VM_CALL_TYPE_PROP_SET) {
                    retVal = CHANSVmDeleteObject(vm, acc);
                    if (retVal == CHANS_VM_OK) {
                        memcpy(acc, &localBuf, sizeof(CHANSVmObjHdr));
                        acc->flags.raw &= ~CHANSVM_OBJ_FLAG_READONLY;
                        memset(&localBuf, 0, sizeof(CHANSVmObjHdr));
                    }
                }
            }

            if (retVal == CHANS_VM_OK) {
                pVm->pCurContext->pc = newPc;
            }
        } else {
            u32 codeAddr = pVm->pCurContext->pDebug->pNameTbl[(u32)acc->value.int32_v].codeAddr;

            if (codeAddr < 1 || codeAddr >= pVm->pCurContext->pDebug->codeSize) {
                return CHANS_VM_ERR_CODE_RANGE;
            }

            pVm->pCurContext->pc = codeAddr;
            retVal = CHANSVmDeleteObject(vm, acc);
        }
    }

return_label:
    return retVal;
}

void CHANSVmSetSignal(CHANSVm* vm, bool* signal) {
    CHANSVmPrivate* pVm = (CHANSVmPrivate*)vm;

    pVm->bpSignalPending = signal;
    pVm->bSignalUpdated = TRUE;
}

CHANSVmErr CHANSVmStep(CHANSVm* vm, int stepCount) {
    CHANSVmObjHdr* stackPtr;
    CHANSVmPrivate* pVm;
    s32 cmpHigh;
    u32 cmpLow;
    CHANSVmObjHdr tmpObj;
    CHANSVmObjHdr tmpCopyObj;
    u32 etypes[8];

    pVm = (CHANSVmPrivate*)vm;

    if (stepCount == 0) {
        stepCount = 1;
    }
    memset(&tmpObj, 0, sizeof(tmpObj));
    stackPtr = &tmpCopyObj;
    cmpHigh = 0;
    cmpLow = -2;

    while (stepCount-- != 0) {
        s32 opSize;
        u32 opcodeVal;
        u8* operandBuf;
        u32 arrayIdx;
        u32 imm16Val;
        u32 computedAddr;
        CHANSVmObjHdr* copyResult;
        CHANSVmObjHdr* foundObj;
        CHANSVmErr result;
        u32 newPos;
        u32 isTypeMatch;
        u32 shouldBranch;

        if (pVm->bSignalUpdated != FALSE && pVm->bSignalBlocked == FALSE) {
            pVm->bSignalUpdated = FALSE;
            return CHANS_VM_ERR_SIGNAL;
        }

        if (pVm->pCurContext == NULL || pVm->pCurContext->pDebug == NULL || pVm->pCurContext->pc < 1 ||
            pVm->pCurContext->pc >= pVm->pCurContext->pDebug->codeSize) {
            return CHANS_VM_ERR_CODE_RANGE;
        }

        if (pVm->pFreeExeBuf < pVm->pHeapStart || pVm->pHeapEnd < pVm->pObjStackTopBuf) {
            return CHANS_VM_ERR_HEAP_RANGE;
        }

        opcodeVal = *(pVm->pCurContext->pDebug->pData + pVm->pCurContext->pc);
        if (pVm->bSuspendStep != FALSE) {
            opcodeVal = 0;
        }

        if (VM_OPCLASS(opcodeVal) == VM_OPCLASS_BASE) {
            u32 convTypeIdx;
            CHANSVmObjHdr* leftOp;
            u32 opKind;
            CHANSVmObjHdr* rightOp;
            CHANSVmOpFunction opFunc;
            u32 leftTypeByte;
            u32 rightTypeByte;
            u32 typeIdx;
            u32 typeOffset;
            opSize = 1;
            switch (opcodeVal) {
                case CHANS_VM_OP_LOAD_IMM_1: {
                    result = 1;
                    goto shared_load_imm;
                }
                case CHANS_VM_OP_LOAD_IMM_2: {
                    result = 2;
                    goto shared_load_imm;
                }
                case CHANS_VM_OP_LOAD_IMM_4: {
                    result = 4;
                    goto shared_load_imm;
                }
                case CHANS_VM_OP_LOAD_IMM_8: {
                    result = 8;
                }
                shared_load_imm:
                    opSize = result + 1;
                    operandBuf = VmGetOperand(vm, 1, opSize);
                    result = VmLoadImmInteger(vm, &pVm->accumulator, operandBuf, result);
                    break;

                case CHANS_VM_OP_LOAD_FLOAT: {
                    u64 floatRaw;
                    opSize = 9;
                    operandBuf = VmGetOperand(vm, 1, 9);
                    memcpy(&floatRaw, operandBuf, 8);
                    result = CHANSVmSetFloat(vm, &pVm->accumulator, *(f64*)&floatRaw);
                    break;
                }

                case CHANS_VM_OP_ADD_IMM: {
                    opKind = VM_OPKIND_ADD;
                    opFunc = VmAdd;
                    goto binary_imm;
                }
                case CHANS_VM_OP_SUB_IMM: {
                    opKind = VM_OPKIND_SUB;
                    opFunc = VmSub;
                    goto binary_imm;
                }
                case CHANS_VM_OP_MUL_IMM: {
                    opKind = VM_OPKIND_MUL;
                    opFunc = VmMul;
                    goto binary_imm;
                }
                case CHANS_VM_OP_DIV_IMM: {
                    opKind = VM_OPKIND_DIV;
                    opFunc = VmDiv;
                    goto binary_imm;
                }
                case CHANS_VM_OP_MOD_IMM: {
                    opKind = VM_OPKIND_MOD;
                    opFunc = VmMod;
                    goto binary_imm;
                }
                case CHANS_VM_OP_AND_IMM: {
                    opKind = VM_OPKIND_BIT;
                    opFunc = VmBitAnd;
                    goto binary_imm;
                }
                case CHANS_VM_OP_OR_IMM: {
                    opKind = VM_OPKIND_BIT;
                    opFunc = VmBitOr;
                    goto binary_imm;
                }
                case CHANS_VM_OP_XOR_IMM: {
                    opKind = VM_OPKIND_BIT;
                    opFunc = VmBitXor;
                    goto binary_imm;
                }
                case CHANS_VM_OP_CMP_EQ_IMM: {
                    opKind = VM_OPKIND_EQ;
                    opFunc = VmCmpEq;
                    goto binary_imm;
                }
                case CHANS_VM_OP_CMP_NEQ_IMM: {
                    opKind = VM_OPKIND_EQ;
                    opFunc = VmCmpNeq;
                    goto binary_imm;
                }
                case CHANS_VM_OP_CMP_LT_IMM: {
                    opKind = VM_OPKIND_CMP;
                    opFunc = VmCmpLt;
                    goto binary_imm;
                }
                case CHANS_VM_OP_CMP_GT_IMM: {
                    opKind = VM_OPKIND_CMP;
                    opFunc = VmCmpGt;
                    goto binary_imm;
                }
                case CHANS_VM_OP_CMP_LEQ_IMM: {
                    opKind = VM_OPKIND_CMP;
                    opFunc = VmCmpLeq;
                    goto binary_imm;
                }
                case CHANS_VM_OP_CMP_GEQ_IMM: {
                    opKind = VM_OPKIND_CMP;
                    opFunc = VmCmpGeq;
                }

                binary_imm:
                    leftOp = &pVm->accumulator;
                    rightOp = &tmpObj;
                    opSize = 2;
                    operandBuf = VmGetOperand(vm, 1, 2);
                    result = VmLoadImmInteger(vm, &tmpObj, operandBuf, 1);
                binary_typecheck:
                    if (result != CHANS_VM_OK) {
                        break;
                    }

                    rightTypeByte = rightOp->type;
                    typeIdx = 0;
                    leftTypeByte = leftOp->type;
                    typeOffset = 0;
                    for (; typeIdx < 2; typeIdx++, typeOffset += 4) {
                        if (CHANSVmGetEnumedType((CHANSVmObjType*)((u8*)etypes + typeOffset), (s32)(typeIdx == 0 ? leftTypeByte : rightTypeByte)) ==
                            0) {
                            goto error_setter;
                        }
                    }

                    {
                        const u8* convTbl;
                        switch (opKind) {
                            case VM_OPKIND_ADD: {
                                convTbl = (u8*)VmResultTypeTbl.add;
                                break;
                            }
                            case VM_OPKIND_MOD:
                            case VM_OPKIND_MUL:
                            case VM_OPKIND_SUB:
                            case VM_OPKIND_DIV: {
                                convTbl = (u8*)VmResultTypeTbl.arith;
                                break;
                            }
                            case VM_OPKIND_CMP: {
                                convTbl = (u8*)VmResultTypeTbl.cmp;
                                break;
                            }
                            case VM_OPKIND_EQ: {
                                convTbl = (u8*)VmResultTypeTbl.arith;
                                break;
                            }
                            case VM_OPKIND_BIT:
                            case VM_OPKIND_SHIFT: {
                                convTbl = (u8*)VmResultTypeTbl.bitShift;
                                break;
                            }
                            default: {
                                // TODO: This is an inlined function called "VmGetResultType"
                                CHANSVmPrintfEx("%s: no table for op '%c'\n", lbl_81669128, opKind);
                                goto error_setter;
                            }
                        }

                        result = CHANS_VM_OK;
                        convTypeIdx = convTbl[etypes[0] * 6 + etypes[1]];
                        goto result_check;
                    }

                error_setter:
                    result = CHANS_VM_ERR_RESULT_TYPE;

                result_check:
                    if (result != CHANS_VM_OK) {
                        break;
                    }

                    if ((opKind != VM_OPKIND_CMP && opKind != VM_OPKIND_EQ) || convTypeIdx != 0) {
                        leftOp = CHANSVmConvertObjectType(vm, convTypeIdx, leftOp);
                        rightOp = CHANSVmConvertObjectType(vm, convTypeIdx, rightOp);
                    }

                    if (leftOp == NULL || rightOp == NULL) {
                        result = CHANS_VM_ERR_RESULT_TYPE;
                        break;
                    }

                    result = opFunc(vm, convTypeIdx, &pVm->accumulator, leftOp, rightOp);

                    if (result == CHANS_VM_OK) {
                        result = CHANSVmDeleteObject(vm, &tmpObj);
                        if (result == CHANS_VM_OK && leftOp != &pVm->accumulator && leftOp != &tmpObj &&
                            (leftOp->flags.raw & CHANSVM_OBJ_FLAG_READONLY) == 0 &&
                            (result = CHANSVmDeleteObject(vm, leftOp), result == CHANS_VM_OK)) {
                            // TODO: find the correct sizeof(...) expression
                            VmFree(vm, leftOp, 0x20);
                        }
                        if (result == CHANS_VM_OK && rightOp != &pVm->accumulator && rightOp != &tmpObj &&
                            (rightOp->flags.raw & CHANSVM_OBJ_FLAG_READONLY) == 0 &&
                            (result = CHANSVmDeleteObject(vm, rightOp), result == CHANS_VM_OK)) {
                            // TODO: find the correct sizeof(...) expression
                            VmFree(vm, rightOp, 0x20);
                        }
                    }

                    break;

                case CHANS_VM_OP_PUSH: {
                    CHANSVmObjHdr* resultObj;
                    resultObj = NULL;
                    // This comparison is odd... it does improve the match though
                    if (pVm->pCurContext->stackDepth < (u32)-1) {
                        CHANSVmObjHdr* hdr = VmNewObjHdr(vm, TRUE);
                        if (hdr != NULL) {
                            resultObj = CHANSVmCopyObject(vm, hdr, &pVm->accumulator);
                            if (resultObj != NULL) {
                                pVm->pCurContext->stackDepth++;
                            }
                        }
                    }
                    if (resultObj == NULL) {
                        result = CHANS_VM_ERR_NO_MEMORY;
                    } else {
                        result = CHANS_VM_OK;
                    }
                    break;
                }

                case CHANS_VM_OP_POP: {
                    result = CHANSVmPopObject(vm, &pVm->accumulator);
                    break;
                }

                case CHANS_VM_OP_ADD: {
                    opKind = VM_OPKIND_ADD;
                    opFunc = VmAdd;
                    goto binary_pop;
                }
                case CHANS_VM_OP_SUB: {
                    opKind = VM_OPKIND_SUB;
                    opFunc = VmSub;
                    goto binary_pop;
                }
                case CHANS_VM_OP_MUL: {
                    opKind = VM_OPKIND_MUL;
                    opFunc = VmMul;
                    goto binary_pop;
                }
                case CHANS_VM_OP_DIV: {
                    opKind = VM_OPKIND_DIV;
                    opFunc = VmDiv;
                    goto binary_pop;
                }
                case CHANS_VM_OP_MOD: {
                    opKind = VM_OPKIND_MOD;
                    opFunc = VmMod;
                    goto binary_pop;
                }
                case CHANS_VM_OP_BIT_AND: {
                    opKind = VM_OPKIND_BIT;
                    opFunc = VmBitAnd;
                    goto binary_pop;
                }
                case CHANS_VM_OP_BIT_OR: {
                    opKind = VM_OPKIND_BIT;
                    opFunc = VmBitOr;
                    goto binary_pop;
                }
                case CHANS_VM_OP_BIT_XOR: {
                    opKind = VM_OPKIND_BIT;
                    opFunc = VmBitXor;
                    goto binary_pop;
                }
                case CHANS_VM_OP_ULSHIFT: {
                    opKind = VM_OPKIND_SHIFT;
                    opFunc = VmULShift;
                    goto binary_pop;
                }
                case CHANS_VM_OP_ARSHIFT: {
                    opKind = VM_OPKIND_SHIFT;
                    opFunc = VmARShift;
                    goto binary_pop;
                }
                case CHANS_VM_OP_CMP_EQ: {
                    opKind = VM_OPKIND_CMP;
                    opFunc = VmCmpEq;
                    goto binary_pop;
                }
                case CHANS_VM_OP_CMP_NEQ: {
                    opKind = VM_OPKIND_CMP;
                    opFunc = VmCmpNeq;
                    goto binary_pop;
                }
                case CHANS_VM_OP_CMP_LT: {
                    opKind = VM_OPKIND_CMP;
                    opFunc = VmCmpLt;
                    goto binary_pop;
                }
                case CHANS_VM_OP_CMP_GT: {
                    opKind = VM_OPKIND_CMP;
                    opFunc = VmCmpGt;
                    goto binary_pop;
                }
                case CHANS_VM_OP_CMP_LEQ: {
                    opKind = VM_OPKIND_CMP;
                    opFunc = VmCmpLeq;
                    goto binary_pop;
                }
                case CHANS_VM_OP_CMP_GEQ: {
                    opKind = VM_OPKIND_CMP;
                    opFunc = VmCmpGeq;
                }

                binary_pop:
                    leftOp = &tmpObj;
                    rightOp = &pVm->accumulator;
                    result = CHANSVmPopObject(vm, &tmpObj);
                    if (result != CHANS_VM_OK) {
                        break;
                    }
                    goto binary_typecheck;

                case CHANS_VM_OP_RETURN: {
                    result = CHANSVmDeleteObject(vm, &pVm->accumulator);
                    if (result == CHANS_VM_OK) {
                        result = VmReturnWithValue(vm, 0);
                    }
                    opSize = 0;
                    break;
                }

                case CHANS_VM_OP_RETURN_VALUE: {
                    result = VmReturnWithValue(vm, 0);
                    opSize = 0;
                    break;
                }

                case CHANS_VM_OP_BIT_NOT: {
                    CHANSVmObjHdr* pAcc = &pVm->accumulator;
                    u64 invertedVal;
                    switch (pAcc->type) {
                        case CHANS_VM_OBJ_TYPE_INTEGER: {
                            invertedVal = pAcc->value.int_v;
                            break;
                        }
                        case CHANS_VM_OBJ_TYPE_FLOAT: {
                            invertedVal = (s64)(VmClamp(pAcc->value.float_v) * floor(fabs(pAcc->value.float_v)));
                            break;
                        }
                        case CHANS_VM_OBJ_TYPE_STRING: {
                            s32 parseOk = CHANSVmParseInt(pAcc, 0, &invertedVal);
                            if (parseOk == 0) {
                                invertedVal = 0;
                            }
                            break;
                        }
                        case CHANS_VM_OBJ_TYPE_BLANK:
                        default: {
                            invertedVal = 0;
                            break;
                        }
                    }
                    result = CHANSVmSetInteger(vm, pAcc, (vmInteger)~invertedVal);
                    break;
                }

                case CHANS_VM_OP_LOG_NOT: {
                    CHANSVmObjHdr* pAcc = &pVm->accumulator;
                    u32 bResult;
                    if (CHANSVmGetBoolean((CHANSVmObjHdr*)&bResult, pAcc) == CHANS_VM_OK) {
                        s32 boolVal = bResult ? 0 : 1;
                        result = CHANSVmSetInteger(vm, pAcc, boolVal);
                    } else {
                        // result unset in this code path?
                    }
                    break;
                }

                case CHANS_VM_OP_LOAD_INDIRECT: {
                    CHANSVmObjHdr* pAcc = &pVm->accumulator;
                    CHANSVmObjHdr loadTmp;
                    result = CHANS_VM_ERR_LOAD_INDIRECT;
                    if (pAcc->type == CHANS_VM_OBJ_TYPE_INDEX_REF) {
                        copyResult = CHANSVmCopyObject(vm, &loadTmp, pAcc);
                        if (copyResult != NULL) {
                            foundObj = VmGetArrayElement(vm, &loadTmp, arrayIdx, FALSE);
                            result = VmStore(vm, pAcc, foundObj);
                            if (result == CHANS_VM_OK) {
                                result = CHANSVmDeleteObject(vm, &loadTmp);
                            }
                        }
                    }
                    break;
                }

                case CHANS_VM_OP_CALL_METHOD: {
                    operandBuf = VmGetOperand(vm, 1, 4);
                    if (operandBuf == NULL) {
                        return CHANS_VM_ERR_CODE_RANGE;
                    }
                    result = VmCallMethod(vm, 4, CHANS_VM_CALL_TYPE_METHOD, FALSE);
                    opSize = 0;
                    break;
                }

                case CHANS_VM_OP_IS_CLASS: {
                    if (pVm->accumulator.type != CHANS_VM_OBJ_TYPE_CLASS_REF) {
                        result = CHANS_VM_ERR_INVALID_OBJECT_TYPE;
                        break;
                    }
                    result = 1;
                    goto call_function_common;
                }
                case CHANS_VM_OP_CALL_FUNCTION: {
                    result = CHANS_VM_OK;
                call_function_common:
                    operandBuf = VmGetOperand(vm, 1, 2);
                    if (operandBuf == NULL) {
                        return CHANS_VM_ERR_CODE_RANGE;
                    }
                    result = VmCallMethod(vm, 2, CHANS_VM_CALL_TYPE_FUNCTION, result);
                    opSize = 0;
                    break;
                }

                case CHANS_VM_OP_PROP_GET:
                case CHANS_VM_OP_PROP_SET: {
                    u32 callMode;
                    operandBuf = VmGetOperand(vm, 1, 3);
                    if (operandBuf == NULL) {
                        return CHANS_VM_ERR_CODE_RANGE;
                    }
                    callMode = opcodeVal == CHANS_VM_OP_PROP_GET ? CHANS_VM_CALL_TYPE_PROP_GET : CHANS_VM_CALL_TYPE_PROP_SET;
                    result = VmCallMethod(vm, 3, callMode, FALSE);
                    opSize = 0;
                    break;
                }

                case CHANS_VM_OP_STORE_INDIRECT: {
                    CHANSVmObjHdr* pAcc = &pVm->accumulator;
                    result = CHANS_VM_ERR_STORE_INDIRECT;
                    if (pAcc->type == CHANS_VM_OBJ_TYPE_INDEX_REF) {
                        copyResult = CHANSVmCopyObject(vm, stackPtr + 1, pAcc);
                        if (copyResult != 0) {
                            result = CHANSVmPopObject(vm, pAcc);
                            if (result == CHANS_VM_OK) {
                                foundObj = VmGetArrayElement(vm, stackPtr + 1, (stackPtr + 1)->value.data.len, TRUE);
                                result = VmStore(vm, foundObj, pAcc);
                                if (result == CHANS_VM_OK) {
                                    result = CHANSVmDeleteObject(vm, stackPtr + 1);
                                }
                            }
                        }
                    }
                    break;
                }

                case CHANS_VM_OP_LOAD_STRING_CONST: {
                    CHANSVmObjHdr* pAcc;
                    CHANSVmExeContext* context;
                    CHANSVmModule* dbg;
                    opSize = 3;
                    operandBuf = VmGetOperand(vm, 1, 3);
                    if (operandBuf == NULL) {
                        return CHANS_VM_ERR_CODE_RANGE;
                    }
                    pAcc = &pVm->accumulator;
                    if (CHANSVmDeleteObject(vm, pAcc) == CHANS_VM_OK) {
                        imm16Val = VM_READ_LE_U16(operandBuf, 0);
                        context = pVm->pCurContext;
                        dbg = context->pDebug;
                        if (imm16Val < dbg->stringCount) {
                            if (dbg->pStringTbl[imm16Val].pStringData != NULL) {
                                goto load_str_ok;
                            }
                        }
                    }
                    result = CHANS_VM_ERR_LOAD_STRING_CONST;
                    break;

                load_str_ok:
                    // result is not initialized in this code path?
                    pAcc->type = CHANS_VM_OBJ_TYPE_STRING;
                    pAcc->hasData = TRUE;
                    pAcc->value.wstring_v = (vmWStringObjVal*)&dbg->pStringTbl[imm16Val];
                    break;
                }

                case CHANS_VM_OP_SET_INDEX: {
                    u64 cmpVal;
                    s64 fullVal;
                    u64 tmp64;
                    result = CHANS_VM_ERR_SET_INDEX;
                    copyResult = CHANSVmCopyObject(vm, stackPtr, &pVm->accumulator);
                    if (copyResult == 0) {
                        break;
                    }
                    result = CHANSVmPopObject(vm, &pVm->accumulator);
                    if (result != CHANS_VM_OK) {
                        break;
                    }

                    if (pVm->accumulator.type == CHANS_VM_OBJ_TYPE_ARRAY) {
                        int typeByte = stackPtr->type;
                        switch (typeByte) {
                            case CHANS_VM_OBJ_TYPE_INTEGER:
                                cmpHigh = 0;
                                cmpLow = -2;
                                cmpVal = VM_U32_TO_U64(cmpHigh, cmpLow);
                                fullVal = stackPtr->value.int_v;
                                if ((u64)fullVal > cmpVal) {
                                    goto set_index_error;
                                }
                                arrayIdx = (u32)stackPtr->value.int_v;
                                goto set_index_ok;
                            case CHANS_VM_OBJ_TYPE_FLOAT: {
                                f64 stackFloat = *(f64*)stackPtr;
                                if (stackFloat <= 4294967294.0 && 0.0 <= stackFloat) {
                                    arrayIdx = (u32)stackFloat;
                                    goto set_index_ok;
                                }
                                goto set_index_error;
                            }
                            case CHANS_VM_OBJ_TYPE_STRING:
                                if (CHANSVmParseInt(stackPtr, 10, &tmp64) != 0) {
                                    cmpHigh = 0;
                                    cmpLow = -2;
                                    cmpVal = VM_U32_TO_U64(cmpHigh, cmpLow);
                                    fullVal = VM_U64_TO_S64(tmp64);
                                    if ((u64)fullVal <= cmpVal) {
                                        arrayIdx = (u32)tmp64;
                                        goto set_index_ok;
                                    }
                                }
                                goto set_index_error;
                        }
                    }
                set_index_error:
                    result = CHANS_VM_ERR_SET_INDEX;
                    break;

                set_index_ok:
                    pVm->accumulator.value.data.len = arrayIdx;
                    pVm->accumulator.type = CHANS_VM_OBJ_TYPE_INDEX_REF;
                    result = CHANSVmDeleteObject(vm, stackPtr);
                    break;
                }

                case CHANS_VM_OP_GET_PROPERTY_NAME: {
                    u32 foundEntry;
                    opSize = 5;
                    operandBuf = VmGetOperand(vm, 1, 5);
                    if (operandBuf == NULL) {
                        return CHANS_VM_ERR_CODE_RANGE;
                    }
                    result = CHANS_VM_ERR_GET_PROPERTY_NAME;
                    arrayIdx = 0;
                    imm16Val = VM_READ_LE_U16(operandBuf, 0);
                    foundObj = CHANSVm_81455654(vm, imm16Val);
                    if (foundObj != NULL && pVm->accumulator.type == CHANS_VM_OBJ_TYPE_INTEGER &&
                        // TODO: these raw pointer casts with the accumulator are a recurring thing. get rid of raw ptr access
                        (computedAddr = *((u32*)&pVm->accumulator.value + 1), (u64)pVm->accumulator.value.int_v <= ~1U)) {
                        if (foundObj->type != CHANS_VM_OBJ_TYPE_ARRAY) {
                            foundEntry = 0;
                        } else {
                            u32 idx;
                            u32 len = VmArrayGetLengthInternal(foundObj);
                            idx = 0;
                            while (idx < len) {
                                copyResult = CHANSVmGetArrayElement(vm, foundObj, idx);
                                if (copyResult == NULL) {
                                    break;
                                }
                                if (copyResult->type != CHANS_VM_OBJ_TYPE_BLANK) {
                                    if (computedAddr == 0) {
                                        arrayIdx = idx;
                                        goto found_entry;
                                    } else {
                                        computedAddr--;
                                    }
                                }
                                idx++;
                            }
                            copyResult = NULL;
                        found_entry:
                            if (copyResult != NULL) {
                                foundEntry = 1;
                                result = CHANSVmDeleteObject(vm, &pVm->accumulator);
                                if (result == CHANS_VM_OK) {
                                    CHANSVmObjHdr* hdr = CHANSVmNewObject(vm, FALSE, &pVm->accumulator, CHANS_VM_OBJ_TYPE_STRING, VM_STRING_SIZE);
                                    if (hdr != NULL) {
                                        char* s = pVm->accumulator.value.string_v->spData;
                                        s32 snpLen = snprintf(s, 0x40, "%lld", (u64)arrayIdx);
                                        CHANSVmStrCpyToU16FromU8((wchar_t*)s, s, snpLen);
                                        pVm->accumulator.value.string_v->len = VM_STR_LENGTH(snpLen);
                                    } else {
                                        result = CHANS_VM_ERR_GET_PROPERTY_NAME;
                                    }
                                }
                                if (result != CHANS_VM_OK) {
                                    result = CHANS_VM_ERR_GET_PROPERTY_NAME;
                                    break;
                                }
                            } else {
                                foundEntry = 0;
                            }
                        }
                        result = CHANS_VM_OK;
                        arrayIdx = 0;
                    }
                    if (result == CHANS_VM_OK && foundEntry == 0) {
                        u8* pOpData = operandBuf;
                        computedAddr = (VM_READ_LE_U16(pOpData, 2)) & CHANS_VM_OP_BRANCH_OFFSET_BIAS;
                        if ((VM_READ_LE_U16(pOpData, 2)) & CHANS_VM_OP_BRANCH_OFFSET_SIGN) {
                            computedAddr = computedAddr + pVm->pCurContext->pc - CHANS_VM_OP_BRANCH_OFFSET_BIAS_5;
                        } else {
                            computedAddr += pVm->pCurContext->pc + 5;
                        }
                        if (computedAddr < 1 || computedAddr >= pVm->pCurContext->pDebug->codeSize) {
                            result = CHANS_VM_ERR_CODE_RANGE;
                            break;
                        }
                        pVm->pCurContext->pc = computedAddr;
                        opSize = 0;
                    }
                    break;
                }

                case CHANS_VM_OP_NEW_ARRAY: {
                    opSize = 3;
                    operandBuf = VmGetOperand(vm, 1, 3);
                    if (operandBuf == NULL) {
                        return CHANS_VM_ERR_CODE_RANGE;
                    }
                    imm16Val = VM_READ_LE_U16(operandBuf, 0);
                    {
                        CHANSVmObjHdr* pAcc = &pVm->accumulator;
                        if (CHANSVmDeleteObject(vm, pAcc) != CHANS_VM_OK) {
                            // result not initialized in this code path
                            break;
                        }
                        if (VmPushFuncReturnInfo(vm, imm16Val, imm16Val, 0) != CHANS_VM_OK) {
                            // result not initialized in this code path
                            break;
                        }

                        pAcc->type = CHANS_VM_OBJ_TYPE_ARRAY;
                        pAcc->parentCls = pVm->pArrayCls;

                        if (CHANSVmNewObjData(vm, pAcc, 0x18) != NULL) {
                            if (imm16Val != 0) {
                                result = VmArrayExpandCommon(vm, pAcc, imm16Val, 0, TRUE);
                            }
                        } else {
                            result = CHANS_VM_ERR_CALL_NEW_ARRAY;
                            break;
                        }

                        result = VmReturnWithValue(vm, 0);
                    }
                    break;
                }

                case CHANS_VM_OP_JUMP: {
                    operandBuf = VmGetOperand(vm, 1, 4);
                    if (operandBuf == NULL) {
                        return CHANS_VM_ERR_CODE_RANGE;
                    }
                    computedAddr = VM_READ_LE_U24(operandBuf, 0);
                    if (computedAddr & CHANS_VM_OP_JUMP_OFFSET_SIGN) {
                        computedAddr = computedAddr + pVm->pCurContext->pc - CHANS_VM_OP_JUMP_OFFSET_BIAS;
                    } else {
                        computedAddr += pVm->pCurContext->pc + 4;
                    }
                    if (computedAddr < 1 || computedAddr >= pVm->pCurContext->pDebug->codeSize) {
                        result = CHANS_VM_ERR_CODE_RANGE;
                        break;
                    }
                    pVm->pCurContext->pc = computedAddr;
                    opSize = 0;
                    result = CHANS_VM_OK;
                    break;
                }

                case CHANS_VM_OP_STORE_UNDEFINED: {
                    result = VmStore(vm, &pVm->accumulator, (CHANSVmObjHdr*)&VmStrMathConstants[4]);
                    break;
                }

                case CHANS_VM_OP_DELETE_SYMBOL: {
                    opSize = 3;
                    operandBuf = VmGetOperand(vm, 1, 3);
                    if (operandBuf == NULL) {
                        return CHANS_VM_ERR_CODE_RANGE;
                    }
                    foundObj = CHANSVm_81455654(vm, (VM_READ_LE_U16(operandBuf, 0)) & 0x1FFF);
                    result = VmDeleteCommon(vm, foundObj);
                    break;
                }

                case CHANS_VM_OP_DELETE_INDIRECT: {
                    result = CHANS_VM_ERR_DELETE_INDIRECT;
                    if (pVm->accumulator.type == CHANS_VM_OBJ_TYPE_INDEX_REF) {
                        foundObj = VmGetArrayElement(vm, &pVm->accumulator, *((u32*)&pVm->accumulator.value + 1), FALSE);
                        result = VmDeleteCommon(vm, foundObj);
                    }
                    break;
                }

                default: {
                    result = CHANS_VM_ERR_RESERVED_OPCODE;
                    break;
                }
            }
        } else if (VM_OPCLASS(opcodeVal) == VM_OPCLASS_SYMBOL) {
            opSize = 2;
            operandBuf = VmGetOperand(vm, 0, 2);
            if (operandBuf == NULL) {
                return CHANS_VM_ERR_CODE_RANGE;
            }
            imm16Val = (opcodeVal << 8 | operandBuf[1]) & 0x1FFF;
            switch (opcodeVal & CHANS_VM_OP_SYMBOL_STORE) {
                case CHANS_VM_OP_SYMBOL_STORE: {
                    foundObj = CHANSVm_81455654(vm, imm16Val);
                    result = VmStore(vm, &pVm->accumulator, foundObj);
                    break;
                }
                case 0: {
                    foundObj = CHANSVm_81455654(vm, imm16Val);
                    result = VmStore(vm, foundObj, &pVm->accumulator);
                    break;
                }
                default: {
                    return 0x1162;
                    break;
                }
            }
        } else {  // VM_OPCLASS_BRANCH (0x80-0xFF)
            opSize = 2;
            operandBuf = VmGetOperand(vm, 0, 2);
            if (operandBuf == NULL) {
                return CHANS_VM_ERR_CODE_RANGE;
            }
            switch ((int)opcodeVal & CHANS_VM_OP_BRANCH_COND_MASK) {
                case CHANS_VM_OP_BRANCH_CASE: {
                    result = CHANS_VM_ERR_CASE;
                    if (pVm->pCurContext->stackDepth != 0 && pVm->pObjStackTopBuf + sizeof(CHANSVmObjHdr) <= pVm->pHeapEnd) {
                        CHANSVmObjHdr* stackTop = (CHANSVmObjHdr*)pVm->pObjStackTopBuf;
                        isTypeMatch = 0;
                        if (pVm->accumulator.type == stackTop->type) {
                            switch (stackTop->type) {
                                case CHANS_VM_OBJ_TYPE_BLANK: {
                                    isTypeMatch = 1;
                                    goto end_branch_check;
                                }
                                case CHANS_VM_OBJ_TYPE_INTEGER: {
                                    u32 low1 = *(u32*)stackTop;
                                    u32 low2 = *(u32*)&pVm->accumulator;
                                    u32 high1 = *((u32*)stackTop + 1);
                                    u32 high2 = *((u32*)&pVm->accumulator + 1);
                                    u32 xor1 = low1 ^ low2;
                                    u32 xor2 = high1 ^ high2;
                                    isTypeMatch = !(xor1 | xor2);
                                    goto end_branch_check;
                                }
                                case CHANS_VM_OBJ_TYPE_FLOAT: {
                                    f64 stackFloat = stackTop->value.float_v;
                                    f64 accFloat = pVm->accumulator.value.float_v;
                                    isTypeMatch = stackFloat == accFloat ? 1 : 0;
                                    goto end_branch_check;
                                }
                                case CHANS_VM_OBJ_TYPE_STRING: {
                                    u32 len1, len2;
                                    CHANSVmObjHdr* stackObj = (CHANSVmObjHdr*)pVm->pObjStackTopBuf;
                                    s32 cmpResult;
                                    u32 strEqual;
                                    len1 = stackObj->value.wstring_v->len;
                                    len2 = pVm->accumulator.value.wstring_v->len;
                                    if (len1 == len2) {
                                        strEqual = 0;
                                        if (len1 == 0) {
                                            strEqual = 1;
                                            goto end_branch_check;
                                        } else {
                                            cmpResult = 0;
                                            cmpResult = memcmp(stackObj->value.wstring_v->spData, pVm->accumulator.value.wstring_v->spData, len1);
                                            if (cmpResult == 0) {
                                                strEqual = 1;
                                            }
                                        }
                                        if (strEqual) {
                                            isTypeMatch = 1;
                                        }
                                    }
                                    goto end_branch_check;
                                }
                                case CHANS_VM_OBJ_TYPE_ARRAY:
                                case CHANS_VM_OBJ_TYPE_CLASS_REF:
                                case CHANS_VM_OBJ_TYPE_OBJECT:
                                case CHANS_VM_OBJ_TYPE_METHOD_REF: {
                                    isTypeMatch = 0;
                                    if (stackTop->parentCls == pVm->accumulator.parentCls && stackTop->hasData == pVm->accumulator.hasData &&
                                        (stackTop->hasData == 0 || stackTop->value.data.ptr == pVm->accumulator.value.data.ptr)) {
                                        isTypeMatch = 1;
                                    }
                                    goto end_branch_check;
                                }
                                default: {
                                    result = CHANS_VM_ERR_CHECK_STRICT_EQUALITY;
                                    goto done_with_switch;
                                }
                            }
                        }
                    end_branch_check:
                        shouldBranch = isTypeMatch;
                        result = CHANS_VM_OK;
                    done_with_switch:
                        if (result == CHANS_VM_OK && shouldBranch != 0) {
                            result = CHANSVmPopObject(vm, NULL);
                        }
                    }
                    break;
                }
                case CHANS_VM_OP_BRANCH_FALSE: {
                    result = CHANSVmGetBoolean((CHANSVmObjHdr*)&shouldBranch, &pVm->accumulator);
                    if (result == CHANS_VM_OK) {
                        shouldBranch = !shouldBranch;
                    }
                    break;
                }
                case CHANS_VM_OP_BRANCH_TRUE: {
                    result = CHANSVmGetBoolean((CHANSVmObjHdr*)&shouldBranch, &pVm->accumulator);
                    break;
                }
                case CHANS_VM_OP_BRANCH_ALWAYS: {
                    result = CHANS_VM_OK;
                    shouldBranch = 1;
                    break;
                }
                default: {
                    return 0x1182;
                }
            }

            if (result == CHANS_VM_OK && shouldBranch != 0) {
                computedAddr = (opcodeVal << 8 | operandBuf[1]) & CHANS_VM_OP_BRANCH_OFFSET_BIAS;
                if ((opcodeVal << 8 | operandBuf[1]) & CHANS_VM_OP_BRANCH_OFFSET_SIGN) {
                    computedAddr = computedAddr + pVm->pCurContext->pc - CHANS_VM_OP_BRANCH_OFFSET_BIAS;
                } else {
                    computedAddr += pVm->pCurContext->pc + 2;
                }
                if (computedAddr < 1 || computedAddr >= pVm->pCurContext->pDebug->codeSize) {
                    return CHANS_VM_ERR_CODE_RANGE;
                }
                pVm->pCurContext->pc = computedAddr;
                opSize = 0;
            }
        }

        if (result != 0) {
            return result;
        }
        if (opSize == -1) {
            return 0x11a0;
        }
        if (pVm->pCurContext == NULL || pVm->pCurContext->pDebug == NULL ||
            (newPos = pVm->pCurContext->pc + opSize) >= pVm->pCurContext->pDebug->codeSize) {
            return CHANS_VM_ERR_CODE_RANGE;
        }
        pVm->pCurContext->pc = newPos;
    }

    return CHANS_VM_OK;
}
