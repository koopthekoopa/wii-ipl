#include "channelScript/CHANSVm.h"
#include "channelScript/CHANSVmPrivate.h"
#include "revolution/enc.h"

#include <stdarg.h>
#include <stdio.h>
#include <string.h>

#include <math.h>
#include <stdlib.h>

#include <private/sc.h>
#include <revolution.h>
#include <revolution/net/NETMisc.h>
#include <revolution/net/NETDigest.h>

// TODO: Not yet in the SDK
typedef struct {
    u8 buf[0xD4];
} NETHMACContext;
static const void* NETGetSHA1Interface(void);
static void NETHMACInit(NETHMACContext* ctx, const void* interface, const void* key, u32 keyLen);
static void NETHMACUpdate(NETHMACContext* ctx, const void* data, u32 len);
static void NETHMACGetDigest(NETHMACContext* ctx, void* digest);

#define CHANSVmDebugLength 1024

CHANSVmImageCtorCallback VmImageCtorCallback = vmNull;
CHANSVmImageAllocatorCallback VmImageAllocCallback = vmNull;

BOOL CHANSVmDebugVerboseMode = vmFalse;

#define VM_STR_LENGTH(str) (str * sizeof(vmWChar))

#define VM_ALIGNMENT DEFAULT_ALIGN
#define VM_ALIGNED(x) ((x & (VM_ALIGNMENT - 1)) == 0)
#define VM_ALIGN(x) ROUNDUP(x, VM_ALIGNMENT)
#define VM_ALIGN_DOWN(x) ROUNDDOWN(x, VM_ALIGNMENT)

const u64 VmNaN = 0x7FFFFFFFFFFFFFFFULL;
const u64 VmMinusZero = 0x8000000000000000ULL;
const u64 VmInf = 0x7FF0000000000000ULL;
const u64 VmMinusInf = 0xFFF0000000000000ULL;

#define VM_NAN *(f64*)&VmNaN
#define VM_NEG_ZERO *(f64*)&VmMinusZero
#define VM_INF *(f64*)&VmInf
#define VM_NEG_INF *(f64*)&VmMinusInf

void CHANSVmDebugPrintf(const vmString format, ...) {
    va_list args;
    char str[CHANSVmDebugLength];

    va_start(args, format);
    vsnprintf(str, CHANSVmDebugLength - 2, format, args);
    va_end(args);

    str[CHANSVmDebugLength - 1] = str[CHANSVmDebugLength - 2] = 0;

    OSReport("%s", str);
}

#define CHANS_VM_PRINTF(line, msg, ...)                                                                                                              \
    if (CHANSVmDebugVerboseMode)                                                                                                                     \
    CHANSVmDebugPrintf("%s %d" msg, __FUNCTION__, line, __VA_ARGS__)
#define CHANS_VM_PRINT (line, msg, ...) if (CHANSVmDebugVerboseMode) CHANSVmDebugPrintf("%s %d" msg, __FUNCTION__, line)

vmU16 CHANSVmGetSourceLine(CHANSVm* vm) {
    CHANSVmExecutionCtx* ctx = ((CHANSVmPrivate*)vm)->pActiveCtx;

    if (ctx && ctx->pDbg && ctx->pDbg->pLineTbl && ctx->pc < ctx->pDbg->codeSize) {
        SrcLineEntry* curEntry = &ctx->pDbg->pLineTbl[ctx->pc / 256];
        s32 lineOffset = curEntry->baseLine;
        u8* bitfield = curEntry->bitfield;
        u32 i = 0;

        for (i = 0; i <= (u8)ctx->pc; i++) {
            if (bitfield[i / 8] & (128 >> (i & 0b111))) {
                lineOffset += 2;
            }
        }

        if ((u8*)curEntry + lineOffset + 1 < (u8*)ctx->pDbg + ctx->pDbg->regionSize) {
            u8* lineData = (u8*)curEntry + lineOffset;
            return lineData[0] << 8 | lineData[1];
        }
    }

    return 0;
}

vmPtr CHANSVmAllocFromGarbage(CHANSVm* vm, vmSize size) {
    CHANSVmPrivate* pVm = (CHANSVmPrivate*)vm;

    FreeBlock* allocBuf;
    FreeBlock* prevPtr;
    FreeBlock* ptr;
    vmU32 alignOff;
    vmU32 remaining;

    for (prevPtr = vmNull, ptr = (FreeBlock*)pVm->pFreeList; ptr != vmNull; prevPtr = ptr, ptr = ptr->next) {
        alignOff = VM_ALIGN((vmU32)ptr) - (vmU32)ptr;
        if (ptr->size >= (size + alignOff)) {
            remaining = ptr->size - (size + alignOff);
            allocBuf = (vmPtr)((vmU32)ptr + alignOff);

            if (remaining < 8) {
                if (prevPtr == vmNull) {
                    pVm->pFreeList = ptr->next;
                } else {
                    prevPtr->next = ptr->next;
                }
            } else {
                ptr->size = remaining;
                if (prevPtr == vmNull) {
                    pVm->pFreeList = (FreeBlock*)((vmU32)allocBuf + size);
                    ((FreeBlock*)((vmU32)allocBuf + size))->next = ptr->next;
                    pVm->pFreeList->size = ptr->size;
                } else {
                    prevPtr->next = (FreeBlock*)((vmU32)allocBuf + size);
                    ((FreeBlock*)((vmU32)allocBuf + size))->next = ptr->next;
                    prevPtr->next->size = ptr->size;
                }
                ptr->size = ptr->size - size;
            }

            memset(allocBuf, 0, size);
            return allocBuf;
        }
    }
    return vmNull;
}

void CHANSVmUpdateSmallestFreeHeapSize(CHANSVm* vm) {
    CHANSVmPrivate* pVm = (CHANSVmPrivate*)vm;

    vmU32 unk = (vmU32)pVm->pObjStackTopBuf - (vmU32)pVm->pFreeExeBuf;
    if (pVm->minFreeHeapSize <= unk) {
        return;
    }
    pVm->minFreeHeapSize = unk;
}

CHANSVmObjHdr* CHANSVmNewObjHdr(CHANSVm* vm, vmBoolInt noAlloc) {
    CHANSVmPrivate* pVm = (CHANSVmPrivate*)vm;
    CHANSVmObjHdr* object = vmNull;

    if (noAlloc == 0) {
        object = (CHANSVmObjHdr*)CHANSVmAllocFromGarbage(vm, VM_ALIGN(sizeof(CHANSVmObjHdr)));
    }

    if (object == vmNull) {
        vmU8* ptr = pVm->pFreeExeBuf;
        if ((vmU32)pVm->pObjStackTopBuf - (vmU32)ptr >= VM_ALIGN(sizeof(CHANSVmObjHdr))) {
            if (noAlloc == 0) {
                pVm->pFreeExeBuf = (ptr + VM_ALIGN(sizeof(CHANSVmObjHdr)));
                object = (CHANSVmObjHdr*)ptr;
            } else {
                ptr = pVm->pObjStackTopBuf - sizeof(CHANSVmObjHdr);
                pVm->pObjStackTopBuf = ptr;
                object = (CHANSVmObjHdr*)ptr;
            }

            CHANSVmUpdateSmallestFreeHeapSize(vm);
        }
    }

    if (object != vmNull) {
        memset(object, 0, sizeof(CHANSVmObjHdr));
    }

    return object;
}

vmPtr CHANSVmAlloc(CHANSVm* vm, vmSize size) {
    CHANSVmPrivate* pVm = (CHANSVmPrivate*)vm;

    vmU8* ptr;
    vmU8* allocBuf = vmNull;

    if (size != 0 && VM_ALIGNED(size)) {
        allocBuf = CHANSVmAllocFromGarbage(vm, size);
        if (allocBuf == vmNull) {
            ptr = pVm->pFreeExeBuf;
            if ((vmU32)pVm->pObjStackTopBuf - (vmU32)ptr >= size) {
                allocBuf = ptr;
                pVm->pFreeExeBuf = ptr + size;

                CHANSVmUpdateSmallestFreeHeapSize(vm);
                memset(ptr, 0, size);
            }
        }
    }

    return allocBuf;
}

void CHANSVmFree(CHANSVm* vm, vmPtr ptr, vmSize size) NO_INLINE {
    CHANSVmPrivate* pVm = (CHANSVmPrivate*)vm;
    FreeBlock* head;
    FreeBlock* current;
    FreeBlock* buffer = ptr;

    if ((FreeBlock*)pVm->pHeapStart > buffer) {
        return;
    }
    if (buffer >= (FreeBlock*)pVm->pFreeExeBuf) {
        return;
    }
    if (size <= 8) {
        return;
    }

    memset(buffer, 0, size);
    buffer->size = size;

    head = pVm->pFreeList;
    if (head == vmNull) {
        pVm->pFreeList = buffer;
    } else if (buffer < head) {
        pVm->pFreeList = buffer;
        if ((FreeBlock*)((u32)buffer + buffer->size) == head) {
            buffer->next = head->next;
            buffer->size = buffer->size + head->size;
            memset(head, 0, sizeof(FreeBlock));
        } else {
            buffer->next = head;
        }
    } else {
        while ((current = head->next) != vmNull) {
            if (buffer < current) {
                if ((FreeBlock*)((u32)buffer + buffer->size) == current) {
                    buffer->next = current->next;
                    buffer->size = buffer->size + head->next->size;
                    memset(*(void**)head, 0, sizeof(FreeBlock));
                } else {
                    buffer->next = current;
                }
                break;
            }
            head = current;
        }

        if ((FreeBlock*)((u32)head + head->size) == buffer) {
            head->next = vmNull;
            head->size = head->size + buffer->size;
            memset(buffer, 0, sizeof(FreeBlock));
        } else {
            head->next = buffer;
        }
    }

    while (pVm->pFreeList != vmNull) {
        current = vmNull;
        head = pVm->pFreeList;
        while (head->next != vmNull) {
            current = head;
            head = head->next;
        }

        if (pVm->pFreeExeBuf != (vmU8*)((u32)head + head->size)) {
            return;
        }

        memset(head, 0, sizeof(FreeBlock));
        pVm->pFreeExeBuf = (vmU8*)head;

        if (current == vmNull) {
            pVm->pFreeList = vmNull;
        } else {
            current->next = vmNull;
        }
    }
}

CHANSVmErr CHANSVmDeleteObject(CHANSVm* vm, CHANSVmObjHdr* object) {
    if (object != vmNull) {
        if (!(object->flags.raw & 0x80)) {
            if (object->hasData) {
                ChunkEntry* unk = (ChunkEntry*)object->value.ptr_v;
                int val;

                if (unk->alloc == 0) {
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
                    if (object->parentCls == vmNull || object->parentCls->dtor == vmNull ||
                        object->parentCls->dtor(vm, object, vmNull)) {
                        CHANSVmFree(vm, unk->pData, unk->alloc);
                        memset(unk, 0, sizeof(ChunkEntry));
                    }
                    else {
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

vmPtr CHANSVmNewObjData(CHANSVm* vm, CHANSVmObjHdr* object, u32 length) {
    CHANSVmPrivate* pVm = (CHANSVmPrivate*)vm;
    u32 idx;
    u32 chunkIdx;
    union { u32 off; ChunkEntry* entry; } u;
    ChunkEntry* chunk;
    u32 memSize;

    if (object == NULL || object->hasData != vmFalse || length == 0) {
        goto error;
    }

    idx = pVm->nextChunkIdx;
    chunk = pVm->pChunks[idx / 1024];
    if (chunk == NULL || chunk[idx & 0x3FF].inUse != 0) {
        chunkIdx = 0;
        u.off = 0;
        while (chunkIdx < 0x80) {
            chunk = pVm->pChunks[chunkIdx];
            if (chunk == NULL) {
                chunk = CHANSVmAlloc(vm, 0x4000);
                if (chunk == NULL) {
                    goto error;
                }
                pVm->pChunks[chunkIdx] = chunk;
            }

            idx = 0;
            while (idx < 0x400) {
                if (chunk[idx].inUse == 0) {
                    u.off = idx + (chunkIdx << 10);
                    idx = u.off;
                    goto found;
                }
                idx++;
            }

            chunkIdx++;
            u.off += 4;
        }
        u.off = 0;
        goto check_entry;
    }

found:
    pVm->nextChunkIdx = (idx + 1 > 0x1FFFF) ? 0 : idx + 1;
    u.entry = &chunk[idx & 0x3FF];
    memset(u.entry, 0, 0x10);
    u.entry->inUse = 1;


check_entry:
    if (u.entry == NULL) {
        goto error;
    }

    memSize = VM_ALIGN(length);
    {
        void* pData = CHANSVmAlloc(vm, memSize);
        if (pData != NULL) {
            *(u32*)(u8*)object = (u32)u.entry;
            object->hasData = vmTrue;
            u.entry->pData = pData;
            u.entry->size = length;
            u.entry->alloc = memSize;
            return pData;
        }
    }

error:
    return NULL;
}

extern const char CHANSVmConstStringDataEmpty[16];

CHANSVmObjHdr* CHANSVmNewObject(CHANSVm* vm, vmBoolInt noAlloc, CHANSVmObjHdr* object, CHANSVmObjType type, vmSize len) {
    CHANSVmObjHdr* header;

    if (object != NULL) {
        memset(object, 0, 0x10);
    }
    else {
        header = CHANSVmNewObjHdr(vm, noAlloc);
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
        if (type == 3UL) {
            object->value.ptr_v = (vmPtr)CHANSVmConstStringDataEmpty;
        }
    }

    object->type = type;
    return object;

error:
    return NULL;
}

void CHANSVmNewStringObject(CHANSVm* vm, CHANSVmObjHdr* obj, vmSize len) {
    CHANSVmNewObject(vm, vmFalse, obj, CHANS_VM_OBJ_TYPE_STRING, len);
}

CHANSVmObjHdr* CHANSVmCopyObject(CHANSVm* vm, CHANSVmObjHdr* outObj, CHANSVmObjHdr* inObj) {
    if (inObj != vmNull) {
        if (outObj != vmNull) {
            memset(outObj, 0, sizeof(CHANSVmObjHdr));
        }
        else {
            outObj = CHANSVmNewObjHdr(vm, 0);
            if (outObj == vmNull) {
                goto error;
            }
        }
        memcpy(outObj, inObj, sizeof(CHANSVmObjHdr));

        outObj->flags.raw = outObj->flags.reserved;
        if (outObj->hasData != vmFalse) {
            ChunkEntry* unk = (ChunkEntry*)outObj->value.ptr_v;
            int val;

            if (unk->alloc == 0) {
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
    return vmNull;
}

CHANSVmErr CHANSVmPopObject(CHANSVm* vm, CHANSVmObjHdr* object) {
    CHANSVmPrivate* pVm = (CHANSVmPrivate*)vm;
    CHANSVmObjHdr* stackTop = (CHANSVmObjHdr*)pVm->pObjStackTopBuf;
    CHANSVmErr err = CHANS_VM_ERR_POP_OBJECT;

    if (pVm->pActiveCtx->stackDepth != 0) {
        CHANSVmObjHdr* nextUnk = (CHANSVmObjHdr*)((vmU8*)stackTop + sizeof(CHANSVmObjHdr));
        if (nextUnk <= pVm->pHeapEnd) {
            err = CHANS_VM_OK;

            if (object != vmNull) {
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
                pVm->pActiveCtx->stackDepth--;
                pVm->pObjStackTopBuf = (vmU8*)nextUnk;
            }
        }
    }

    return err;
}

void CHANSVmStrCpyToU16FromU8(vmWString output, vmString input, vmSize length) {
    u8* destPtr;
    vmSize i;

    u8* srcPtr = (u8*)input + length;
    s32 offset = VM_STR_LENGTH(length);

    for (i = length; i != 0; i--) {
        offset -= 2;
        destPtr = (u8*)output + offset;
        destPtr[1] = *--srcPtr;
        destPtr[0] = 0;
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

vmU32 CHANSVmStrCpyToU8FromStringObject(u8* output, CHANSVmObjHdr* stringObj, vmSize length) {
    u32 offset, result;
    result = 0;
    offset = 0;

    if (output != NULL && length != 0) {
        memset(output, 0, length);

        if (stringObj != NULL && stringObj->type == CHANS_VM_OBJ_TYPE_STRING) {
            vmStringObjVal* objValue = stringObj->value.string_v;
            u32 charCount = objValue->len / 2;
            vmString stringData;
            u32 i;

            if (charCount > length) {
                charCount = length;
            }

            stringData = objValue->str;

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

vmBoolInt VmIsNan(vmFloat value) {
    return isnan(value) || value == VM_NAN;
}

double CHANSVm_8144B1D8(double value) {
    // Clamp to -1.0~1.0
    return value < 0.0 ? -1.0 : value > 0.0 ? 1.0 : value;
}

vmFloat VmIntToFloat(vmU64 integer) {
    vmFloat result;
    if ((integer & 0x8000000000000000ULL) != 0) {
        result = -(vmFloat)(~integer + 1);
    } else {
        result = (vmFloat)integer;
    }
    return result;
}

static s32 CHANSVmParseInt(CHANSVmObjHdr* obj, s32 base, u64* out) {
    char buf[0x40];
    char* endPtr;
    u32 stringLength;
    u32 charCount;
    u64 number;

    endPtr = NULL;
    if (obj->type == CHANS_VM_OBJ_TYPE_STRING) {
        stringLength = obj->value.wstring_v->len;

        if (stringLength != 0 && stringLength <= 0x80) {
            charCount = stringLength / 2;

            if (CHANSVmStrCpyToU8FromU16((u8*)buf, (u8*)obj->value.wstring_v->str, charCount) != NULL) {
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
    CHANSVmObjHdr* newObj = CHANSVmNewObject(vm, vmFalse, NULL, CHANS_VM_OBJ_TYPE_INTEGER, 0);
    if (newObj != NULL) {
        if (VmIsNan(object->value.float_v)) {
            newObj->value.int_v = 0;
        } else {
            newObj->value.int_v = (u64)(CHANSVm_8144B1D8(object->value.float_v) * floor(fabs(object->value.float_v)));
        }
    }
    return newObj;
}

CHANSVmObjHdr* CHANSVmConvertToIntFromStr(CHANSVm* vm, CHANSVmObjType type, CHANSVmObjHdr* object) {
    CHANSVmObjHdr* newObj = CHANSVmNewObject(vm, vmFalse, NULL, CHANS_VM_OBJ_TYPE_INTEGER, 0);
    if (newObj != NULL && !CHANSVmParseInt(object, 0, (u64*)&newObj->value.int_v)) {
        newObj = NULL;
    }
    return newObj;
}

CHANSVmObjHdr* CHANSVmConvertToIntFromArray(CHANSVm* vm, CHANSVmObjType type, CHANSVmObjHdr* object) {
    return NULL;
}

CHANSVmObjHdr* CHANSVm_8144B430(CHANSVm* vm) {
    CHANSVmObjHdr* result = CHANSVmNewObject(vm, vmFalse, NULL, CHANS_VM_OBJ_TYPE_FLOAT, 0);
    if (result != NULL) {
        result->value.float_v = VM_NAN;
    }
    return result;
}

CHANSVmObjHdr* CHANSVm_8144B470(CHANSVm* vm, CHANSVmObjHdr* unused, CHANSVmObjHdr* intObj) {
    CHANSVmObjHdr* result = CHANSVmNewObject(vm, vmFalse, NULL, CHANS_VM_OBJ_TYPE_FLOAT, 0);
    if (result != NULL) {
        result->value.float_v = VmIntToFloat(intObj->value.int_v);
    }
    return result;
}

// The 16-bit strings use a single null byte for termination for some reason. Because of that, L"..." cannot be used.
u8 lbl_81669070[19] = { 0x00, 'u', 0x00, 'n', 0x00, 'd', 0x00, 'e', 0x00, 'f', 0x00, 'i', 0x00, 'n', 0x00, 'e', 0x00, 'd', 0x00 };
u8 lbl_81669083[17] = { 0x00, 'I', 0x00, 'n', 0x00, 'f', 0x00, 'i', 0x00, 'n', 0x00, 'i', 0x00, 't', 0x00, 'y', 0x00 };
u8 lbl_81669094[19] = { 0x00, '-', 0x00, 'I', 0x00, 'n', 0x00, 'f', 0x00, 'i', 0x00, 'n', 0x00, 'i', 0x00, 't', 0x00, 'y', 0x00 };

const CHANSVmObjHdr CHANSVmConstStringObjectUndefined = {
    { (wchar_t*)lbl_81669070, 18 },
    { 0 },
    NULL
};
const CHANSVmObjHdr lbl_81616C88 = {
    { L"NaN", 6 },
    { 0 },
    NULL
};
const CHANSVmObjHdr lbl_81616C98 = {
    { (wchar_t*)lbl_81669083, 16 },
    { 0 },
    NULL
};
const CHANSVmObjHdr lbl_81616CA8 = {
    { (wchar_t*)lbl_81669094, 18 },
    { 0 },
    NULL
};
const CHANSVmObjHdr lbl_81616CB8 = {
    { L",", 2 },
    { 0 },
    NULL
};
const char CHANSVmConstStringDataEmpty[16] = "";
const CHANSVmObjHdr CHANSVmConstStringObjectUndefined_[] = {
    { { (void*)&CHANSVmConstStringObjectUndefined, 0 }, 0x03800100, NULL },
    { { (void*)&lbl_81616C88, 0 }, 0x03800100, NULL },
    { { (void*)&lbl_81616C98, 0 }, 0x03800100, NULL },
    { { (void*)&lbl_81616CA8, 0 }, 0x03800100, NULL },
    { { (void*)&lbl_81616CB8, 0 }, 0x00800000, NULL }
};

typedef struct {
    const char* str;
    const double* val;
} FloatTableEntry;

const FloatTableEntry lbl_81616D28[] = {
    { "Infinity", (double*)&VmInf },
    { "+Infinity", (double*)&VmInf },
    { "-Infinity", (double*)&VmMinusInf },
    { "Infinity", (double*)&VmNaN }
};

CHANSVmObjHdr* CHANSVm_8144B4D4(CHANSVm* vm, CHANSVmObjType type, CHANSVmObjHdr* object) {
    // Convert string keyword into float value
    CHANSVmObjHdr* newObj;
    u32 charCount;
    u32 endPtr;
    double result;
    vmBool r;

    newObj = CHANSVmNewObject(vm, vmFalse, NULL, CHANS_VM_OBJ_TYPE_FLOAT, 0);
    if (newObj != NULL) {
        endPtr = 0;

        if (object->type == CHANS_VM_OBJ_TYPE_STRING) {
            u32 stringLength = object->value.wstring_v->len;
            if (stringLength != 0 && stringLength <= 0x80) {
                u8 buf[0x40];
                u8* p;

                charCount = stringLength / 2;
                if (CHANSVmStrCpyToU8FromU16(buf, (u8*)object->value.wstring_v->str, charCount) != NULL) {
                    p = buf + charCount;
                    *p = 0;

                    charCount = 0;
                    while (charCount < 4) {
                        if (strcmp((char*)buf, lbl_81616D28[charCount].str) == 0) {
                            result = *lbl_81616D28[charCount].val;
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
                        result = VM_NAN;
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

CHANSVmObjHdr* CHANSVmConvertToStrFromUndefined(CHANSVm* vm, int type, CHANSVmObjHdr* object) {
    return (CHANSVmObjHdr*)CHANSVmConstStringObjectUndefined_;
}

s32 CHANSVm_8144B62C(vmWString buf, u32 len, vmFloat val) NO_INLINE {
    s32 result = snprintf((char*)buf, len / 2, "%.16lg", val);
    CHANSVmStrCpyToU16FromU8(buf, (vmString)buf, result);
    return VM_STR_LENGTH(result);
}

static int VmToStrFromInt(vmWString output, vmSize length, vmInteger integer) {
    vmS32 len = snprintf((vmString)output, length, "%lld", integer);
    CHANSVmStrCpyToU16FromU8(output, (vmString)output, len);
    return len;
}

CHANSVmObjHdr* CHANSVmConvertToStrFromInt(CHANSVm* vm, CHANSVmObjType type, CHANSVmObjHdr* object) {
    CHANSVmObjHdr* newObject = CHANSVmNewObject(vm, vmFalse, vmNull, CHANS_VM_OBJ_TYPE_STRING, VM_STR_LENGTH(64));
    if (newObject) {
        vmS32 len = VmToStrFromInt(newObject->value.wstring_v->str, 64, object->value.int_v);

        newObject->value.wstring_v->len = VM_STR_LENGTH(len);
        if (newObject->value.wstring_v->len == 0) {
            goto error;
        }
    }
    return newObject;

error:
    return vmNull;
}

CHANSVmObjHdr* CHANSVm_8144B734(CHANSVm* vm, CHANSVmObjHdr* unused, double* value) {
    const CHANSVmObjHdr* base;
    CHANSVmObjHdr* newObj;
    s32 result;

    base = &CHANSVmConstStringObjectUndefined; // .rodata@0x0
    if (VmIsNan(*value)) {
        return (CHANSVmObjHdr*) &base[7]; // .rodata@0x70
    }
    if (*value == VM_INF) {
        return (CHANSVmObjHdr*) &base[8]; // .rodata@0x80
    }
    if (*value == VM_NEG_INF) {
        return (CHANSVmObjHdr*) &base[9]; // .rodata@0x90
    }

    newObj = CHANSVmNewObject(vm, vmFalse, NULL, CHANS_VM_OBJ_TYPE_STRING, 0x80);
    if (newObj != NULL) {
        result = CHANSVm_8144B62C(newObj->value.wstring_v->str, 0x80, *value);
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
    CHANS_VM_PRINTF(1176, ", type to %d from %d\n", type, object->type);
    return vmNull;
}

vmBoolInt CHANSVmGetEnumedType(CHANSVmObjType* eType, vmU32 iType) NO_INLINE {
    CHANSVmObjType type;
    switch (iType) {
        case 0: {
            type = CHANS_VM_OBJ_TYPE_BLANK;
            break;
        }
        case 1: {
            type = CHANS_VM_OBJ_TYPE_INTEGER;
            break;
        }
        case 2: {
            type = CHANS_VM_OBJ_TYPE_FLOAT;
            break;
        }
        case 3: {
            type = CHANS_VM_OBJ_TYPE_STRING;
            break;
        }
        case 4: {
            type = CHANS_VM_TYPE_ARRAY;
            break;
        }
        case 6:
        case 7:
        case 8:
        case 9: {
            type = CHANS_VM_TYPE_INDEX_REF;
            break;
        }
        default: {
            return vmFalse;
        }
    }

    if (eType) {
        *eType = type;
    }

    return vmTrue;
}


char lbl_81669128[] = "VmGetResultType";

// TODO: this needs to be split into two fields
const u32 VmTypeConvertFuncTbl[] = {
    (u32)CHANSVmConvertObjectTypeError, (u32)CHANSVmConvertObjectTypeError, (u32)CHANSVmConvertObjectTypeError, (u32)CHANSVmConvertObjectTypeError, (u32)CHANSVmConvertObjectTypeError, (u32)CHANSVmConvertObjectTypeError,
    (u32)CHANSVm_8144B30C, (u32)CHANSVmConvertToIntFromStr, (u32)CHANSVmConvertToIntFromArray, (u32)CHANSVmConvertObjectTypeError, (u32)CHANSVm_8144B430, (u32)CHANSVm_8144B470,
    (u32)CHANSVm_8144B4D4, (u32)CHANSVmConvertObjectTypeError, (u32)CHANSVmConvertObjectTypeError, (u32)CHANSVmConvertToStrFromUndefined, (u32)CHANSVmConvertToStrFromInt, (u32)CHANSVm_8144B734,
    (u32)CHANSVmConvertToStrFromArray, (u32)CHANSVmConvertObjectTypeError, (u32)CHANSVmConvertObjectTypeError, (u32)CHANSVmConvertObjectTypeError, (u32)CHANSVmConvertObjectTypeError, (u32)CHANSVmConvertObjectTypeError,
    (u32)CHANSVmConvertObjectTypeError, (u32)CHANSVmConvertObjectTypeError, (u32)CHANSVmConvertObjectTypeError, (u32)CHANSVmConvertObjectTypeError, (u32)CHANSVmConvertObjectTypeError, (u32)CHANSVmConvertObjectTypeError,
    0x00020203, 0x00000201, 0x02030300, 0x02020203, 0x03000303, 0x03030300,
    0x00030303, 0x03000000, 0x00000000, 0x00020202, 0x00000201, 0x02020000,
    0x02020000, 0x02020202, 0x00000202, 0x02020000, 0x00000000, 0x00000000,
    0x00000000, 0x00000000, 0x00000001, 0x02020000, 0x00020202, 0x00000002,
    0x02030300, 0x00000003, 0x03000000, 0x00000000, 0x00000000, 0x00000001,
    0x02020000, 0x00020202, 0x00000002, 0x02030300, 0x00000003, 0x04000000,
    0x01010000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
    0x00010101, 0x00000101, 0x01010000, 0x01010101, 0x00000101, 0x01010000,
    0x00000101, 0x01010000, 0x00000000,
};

CHANSVmObjHdr* CHANSVmConvertObjectType(CHANSVm* vm, vmU32 type, CHANSVmObjHdr* object) {
    CHANSVmObjType old, new;

    if (object == vmNull) {
        return vmNull;
    }

    if (type == object->type) {
        return object;
    }

    if (!CHANSVmGetEnumedType(&old, type) || !CHANSVmGetEnumedType(&new, object->type)) {
        return vmNull;
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

CHANSVmErr CHANSVmSetFloat(CHANSVm* vm, CHANSVmObjHdr* object, vmFloat value) {
    CHANSVmErr ret = CHANSVmDeleteObject(vm, object);
    if (ret == CHANS_VM_OK) {
        object->type = CHANS_VM_OBJ_TYPE_FLOAT;
        if (value == VM_NEG_ZERO) {
            value = 0.0f;
        }
        object->value.float_v = value;
    }
    return ret;
}

CHANSVmErr CHANSVmSetU16String(CHANSVm* vm, CHANSVmObjHdr* object, vmWString str, vmSize strLen) {
    CHANSVmErr ret = CHANSVmDeleteObject(vm, object);
    if (ret == CHANS_VM_OK) {
        if (CHANSVmNewObject(vm, vmFalse, object, CHANS_VM_OBJ_TYPE_STRING, strLen) == vmNull) {
            return CHANS_VM_ERR_SET_STRING;
        }

        if (strLen != 0) {
            memcpy(object->value.wstring_v->str, str, strLen);
        }
    }
    return ret;
}

CHANSVmErr CHANSVmSetU16StringFromU8(CHANSVm* vm, CHANSVmObjHdr* object, vmString str, vmSize strLen) {
    CHANSVmErr ret = CHANSVmDeleteObject(vm, object);
    if (ret == CHANS_VM_OK) {
        if (CHANSVmNewObject(vm, vmFalse, object, CHANS_VM_OBJ_TYPE_STRING, VM_STR_LENGTH(strLen)) == vmNull) {
            return CHANS_VM_ERR_SET_STRING;
        }

        if (strLen != 0) {
            CHANSVmStrCpyToU16FromU8(object->value.wstring_v->str, str, strLen);
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
            obj = CHANSVmNewObject(vm, vmFalse, &temp, CHANS_VM_OBJ_TYPE_STRING, left->value.string_v->len + right->value.string_v->len);
            if (obj != NULL) {
                vmU32 len;

                len = left->value.string_v->len;
                if (len != 0) {
                    memcpy(*obj->value.ptr_v, *left->value.ptr_v, len);
                }
                len = right->value.string_v->len;
                if (len != 0) {
                    memcpy((void*)((vmU32)*obj->value.ptr_v + (left->value.string_v)->len), *right->value.ptr_v, len);
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

CHANSVmErr VmSub(CHANSVm* vm, int type, CHANSVmObjHdr* ret, CHANSVmObjHdr* left, CHANSVmObjHdr* right) {
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

CHANSVmErr VmMul(CHANSVm* vm, int type, CHANSVmObjHdr* ret, CHANSVmObjHdr* left, CHANSVmObjHdr* right) {
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

CHANSVmErr VmDiv(CHANSVm* vm, int type, CHANSVmObjHdr* ret, CHANSVmObjHdr* left, CHANSVmObjHdr* right) {
    CHANSVmErr err = CHANS_VM_ERR_DIV;
    vmFloat rightFloat;
    vmFloat leftFloat;

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

CHANSVmErr VmMod(CHANSVm* vm, int type, CHANSVmObjHdr* ret, CHANSVmObjHdr* left, CHANSVmObjHdr* right) {
    CHANSVmErr err = CHANS_VM_ERR_MOD;
    vmFloat rightFloat;
    vmFloat leftFloat;

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

CHANSVmErr VmULShift(CHANSVm* vm, int type, CHANSVmObjHdr* ret, CHANSVmObjHdr* left, CHANSVmObjHdr* right) {
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

CHANSVmErr VmARShift(CHANSVm* vm, int type, CHANSVmObjHdr* ret, CHANSVmObjHdr* left, CHANSVmObjHdr* right) {
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

CHANSVmErr VmBitAnd(CHANSVm* vm, int type, CHANSVmObjHdr* ret, CHANSVmObjHdr* left, CHANSVmObjHdr* right) {
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

CHANSVmErr VmBitOr(CHANSVm* vm, int type, CHANSVmObjHdr* ret, CHANSVmObjHdr* left, CHANSVmObjHdr* right) {
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

CHANSVmErr VmBitXor(CHANSVm* vm, int type, CHANSVmObjHdr* ret, CHANSVmObjHdr* left, CHANSVmObjHdr* right) {
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

CHANSVmErr VmCmpEq(CHANSVm* vm, int type, CHANSVmObjHdr* ret, CHANSVmObjHdr* left, CHANSVmObjHdr* right) {
    vmBoolInt bVar1;
    vmBoolInt isEqual;
    CHANSVmErr err;

    switch (type) {
    case CHANS_VM_OBJ_TYPE_BLANK: {
        u8 tmpType = left->type;
        if (tmpType == right->type) {
            if (tmpType == CHANS_VM_TYPE_CLASS_REF || tmpType == CHANS_VM_TYPE_OBJECT)
                goto handleObjectType;
            if (tmpType == CHANS_VM_TYPE_METHOD_REF) {
                isEqual = left->value.ptr_v == right->value.ptr_v;
                break;
            }
            if (tmpType == CHANS_VM_OBJ_TYPE_BLANK) {
                isEqual = vmTrue;
                break;
            }
        }
        isEqual = vmFalse;
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
        isEqual = vmFalse;
        if (left->value.string_v->len == right->value.string_v->len) {
            bVar1 = vmFalse;
            if (left->value.string_v->len == 0 || memcmp(*left->value.ptr_v, *right->value.ptr_v, left->value.string_v->len) == 0) {
                bVar1 = vmTrue;
            }
            if (bVar1) {
                isEqual = vmTrue;
            }
        }
        break;
    }
    case CHANS_VM_TYPE_ARRAY: {
    handleObjectType:
        isEqual = vmFalse;
        if (left->parentCls == right->parentCls &&
            left->hasData == right->hasData &&
            (left->hasData == vmFalse || left->value.ptr_v == right->value.ptr_v)) {
            isEqual = vmTrue;
        }
        break;
    }
    default:
        return CHANS_VM_ERR_CMP;
    }

    err = CHANSVmSetInteger(vm, ret, isEqual != 0);
    return err;
}

CHANSVmErr VmCmpNeq(CHANSVm* vm, int type, CHANSVmObjHdr* ret, CHANSVmObjHdr* left, CHANSVmObjHdr* right) {
    CHANSVmErr err = VmCmpEq(vm, type, ret, left, right);
    if (err == CHANS_VM_OK) {
        ret->value.int_v = !ret->value.int_v;
    }
    return err;
}

CHANSVmErr VmCmpLt(CHANSVm* vm, int type, CHANSVmObjHdr* ret, CHANSVmObjHdr* left, CHANSVmObjHdr* right) {
    int result;
    int match;
    u32 leftLen, rightLen, maxLen;
    switch (type) {
        case CHANS_VM_OBJ_TYPE_BLANK:
        case CHANS_VM_TYPE_ARRAY:
        case CHANS_VM_TYPE_OBJECT: {
            result = vmFalse;
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
                match = memcmp(left->value.string_v->str, right->value.string_v->str, maxLen);
            } else {
                match = 0;
            }
            result = vmFalse;
            if (match < 0 || (match == 0 && leftLen < rightLen))
                result = vmTrue;
            break;
        }
        default: {
            return CHANS_VM_ERR_CMP;
        }
    }
    return CHANSVmSetInteger(vm, ret, result != 0);
}

CHANSVmErr VmCmpGt(CHANSVm* vm, int type, CHANSVmObjHdr* ret, CHANSVmObjHdr* left, CHANSVmObjHdr* right) {
    return VmCmpLt(vm, type, ret, right, left);
}

CHANSVmErr VmCmpLeq(CHANSVm* vm, int type, CHANSVmObjHdr* ret, CHANSVmObjHdr* left, CHANSVmObjHdr* right) {
    vmBoolInt result;
    vmBoolInt match;
    u32 leftLen, rightLen, maxLen;
    switch (type) {
        case CHANS_VM_OBJ_TYPE_BLANK:
        case CHANS_VM_TYPE_ARRAY:
        case CHANS_VM_TYPE_OBJECT: {
            result = vmFalse;
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
                match = memcmp(left->value.string_v->str, right->value.string_v->str, maxLen);
            } else {
                match = 0;
            }
            result = vmFalse;
            if (match < 0 || (match == 0 && leftLen <= rightLen))
                result = vmTrue;
            break;
        }
        default: {
            return CHANS_VM_ERR_CMP;
        }
    }
    return CHANSVmSetInteger(vm, ret, result != 0);
}

CHANSVmErr VmCmpGeq(CHANSVm* vm, int type, CHANSVmObjHdr* ret, CHANSVmObjHdr* left, CHANSVmObjHdr* right) {
    return VmCmpLeq(vm, type, ret, right, left);
}


CHANSVmErr CHANSVmGetBoolean(CHANSVmObjHdr* ret, CHANSVmObjHdr* val) {
    vmBoolInt result;
    switch (val->type) {
        case CHANS_VM_OBJ_TYPE_BLANK: {
            result = vmFalse;
            break;
        }
        case CHANS_VM_OBJ_TYPE_INTEGER: {
            result = val->value.int_v != 0;
            break;
        }
        case CHANS_VM_OBJ_TYPE_FLOAT: {
            result = vmFalse;
            if (!VmIsNan(val->value.float_v) && (val->value.float_v != 0)) {
                result = vmTrue;
            }
            break;
        }
        case CHANS_VM_OBJ_TYPE_STRING: {
            result = val->value.string_v->len != 0;
            break;
        }
        case CHANS_VM_TYPE_ARRAY:
        case CHANS_VM_TYPE_CLASS_REF:
        case CHANS_VM_TYPE_OBJECT:
        case CHANS_VM_TYPE_METHOD_REF: {
            result = vmTrue;
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


vmU32 CHANSVmGetArgc(CHANSVm* vm) {
    return ((CHANSVmPrivate*)vm)->pActiveCtx->argc;
}

CHANSVmObjHdr* CHANSVmGetArg(CHANSVm* vm, vmU32 argIdx) {
    CHANSVmPrivate* pVm = (CHANSVmPrivate*)vm;

    if (argIdx >= pVm->pActiveCtx->argc) {
        return vmNull;
    }

    return (CHANSVmObjHdr*)pVm->pActiveCtx->pArgv + (pVm->pActiveCtx->argc - 1 - argIdx);
}

CHANSVmObjHdr* CHANSVmGetArgInteger(CHANSVm* vm, vmU32 argIdx) {
    return CHANSVmConvertObjectType(vm, CHANS_VM_OBJ_TYPE_INTEGER, CHANSVmGetArg(vm, argIdx));
}

CHANSVmObjHdr* CHANSVmGetArgFloat(CHANSVm* vm, vmU32 argIdx) {
    return CHANSVmConvertObjectType(vm, CHANS_VM_OBJ_TYPE_FLOAT, CHANSVmGetArg(vm, argIdx));
}

CHANSVmObjHdr* CHANSVmGetArgString(CHANSVm* vm, vmU32 argIdx) {
    return CHANSVmConvertObjectType(vm, CHANS_VM_OBJ_TYPE_STRING, CHANSVmGetArg(vm, argIdx));
}

// === vmErrorList: maps error codes to strings ===
const char* vmErrorList[] = {
    "CHANS_VM_ERR_NO_1000",
    "CHANS_VM_ERR_EXIT",                              /* -999 */
    "CHANS_VM_ERR_NO_MEMORY",                         /* -998 */
    "CHANS_VM_ERR_INVALID_EXE_FORMAT",                /* -997 */
    "CHANS_VM_ERR_ARG",                               /* -996 */
    "CHANS_VM_ERR_CODE_RANGE",                        /* -995 */
    "CHANS_VM_ERR_HEAP_RANGE",                        /* -994 */
    "CHANS_VM_ERR_OBJECT_NOT_FOUND",                  /* -993 */
    "CHANS_VM_ERR_ALIGNMENT",                         /* -992 */
    "CHANS_VM_ERR_RESULT_TYPE",                       /* -991 */
    "CHANS_VM_ERR_TOO_MANY_DEFINED",                  /* -990 */
    "CHANS_VM_ERR_ALREADY_DEFINED",                   /* -989 */
    "CHANS_VM_ERR_LINK_FAILED",                       /* -988 */
    "CHANS_VM_ERR_IN_METHOD_OR_PROPERTY",             /* -987 */
    "CHANS_VM_ERR_NATIVE_METHOD_INIT",                /* -986 */
    "CHANS_VM_ERR_LOAD_OBJECT",                       /* -985 */
    "CHANS_VM_ERR_STORE_OBJECT",                      /* -984 */
    "CHANS_VM_ERR_DIVISION_BY_ZERO",                  /* -983 */
    "CHANS_VM_ERR_DELETE_OBJECT",                     /* -982 */
    "CHANS_VM_ERR_DELETE_OBJHDR",                     /* -981 */
    "CHANS_VM_ERR_DELETE_OBJDATA",                    /* -980 */
    "CHANS_VM_ERR_POP_OBJECT",                        /* -979 */
    "CHANS_VM_ERR_STR_U8_TO_U16",                     /* -978 */
    "CHANS_VM_ERR_SET_INTEGER",                       /* -977 */
    "CHANS_VM_ERR_SET_FLOAT",                         /* -976 */
    "CHANS_VM_ERR_ADD",                               /* -975 */
    "CHANS_VM_ERR_SUB",                               /* -974 */
    "CHANS_VM_ERR_MU",                               /* -973 */
    "CHANS_VM_ERR_DIV",                               /* -972 */
    "CHANS_VM_ERR_MOD",                               /* -971 */
    "CHANS_VM_ERR_ULSHIFT",                           /* -970 */
    "CHANS_VM_ERR_ARSHIFT",                           /* -969 */
    "CHANS_VM_ERR_BIT_AND",                           /* -968 */
    "CHANS_VM_ERR_BIT_OR",                            /* -967 */
    "CHANS_VM_ERR_BIT_XOR",                           /* -966 */
    "CHANS_VM_ERR_CMP",                               /* -965 */
    "CHANS_VM_ERR_ADD_NATIVE_METHOD",                 /* -964 */
    "CHANS_VM_ERR_SET_LOCAL_FUNCTION",                /* -963 */
    "CHANS_VM_ERR_PUSH_FUNC_RETURN_INFO",             /* -962 */
    "CHANS_VM_ERR_LOAD_IMM",                          /* -961 */
    "CHANS_VM_ERR_LOAD_CONST",                        /* -960 */
    "CHANS_VM_ERR_RETURN",                            /* -959 */
    "CHANS_VM_ERR_STRCAT",                            /* -958 */
    "CHANS_VM_ERR_SET_OBJECT_NATIVE_CLASS",           /* -957 */
    "CHANS_VM_ERR_RESOLVE_NATIVE_METHOD_CAL",        /* -956 */
    "CHANS_VM_ERR_RESOLVE_GLOBAL_OBJECT_REFERENCE",   /* -955 */
    "CHANS_VM_ERR_NEW",                               /* -954 */
    "CHANS_VM_ERR_ADD_NATIVE_PROPERTY",               /* -953 */
    "CHANS_VM_ERR_GET_BOOLEAN",                       /* -952 */
    "CHANS_VM_ERR_CASE",                              /* -951 */
    "CHANS_VM_ERR_CHECK_STRICT_EQUALITY",             /* -950 */
    "CHANS_VM_ERR_ADD_REFERENCE",                     /* -949 */
    "CHANS_VM_ERR_LOAD_INDIRECT",                     /* -948 */
    "CHANS_VM_ERR_CALL_METHOD",                       /* -947 */
    "CHANS_VM_ERR_STORE_INDIRECT",                    /* -946 */
    "CHANS_VM_ERR_LOAD_STRING_CONST",                 /* -945 */
    "CHANS_VM_ERR_SIGNA",                            /* -944 */
    "CHANS_VM_ERR_STORE_READONLY",                    /* -943 */
    "CHANS_VM_ERR_SET_INDEX",                         /* -942 */
    "CHANS_VM_ERR_GET_PROPERTY_NAME",                 /* -941 */
    "CHANS_VM_ERR_SET_STRING",                        /* -940 */
    "CHANS_VM_ERR_CALL_NEW_ARRAY",                    /* -939 */
    "CHANS_VM_ERR_OPCODE_VERSION",                    /* -938 */
    "CHANS_VM_ERR_NOT_SUPPORTED_FLOAT",               /* -937 */
    "CHANS_VM_ERR_NOT_CONSTRUCTOR",                   /* -936 */
    "CHANS_VM_ERR_DELETE_INDIRECT",                   /* -935 */
    "CHANS_VM_ERR_FORBIDDEN_CLASS_PROPERTY",          /* -934 */
    "CHANS_VM_ERR_FORBIDDEN_CLASS_METHOD",            /* -933 */
    "CHANS_VM_ERR_NEED_NEW",                          /* -932 */
    "CHANS_VM_ERR_INVALID_OBJECT",                    /* -931 */
    "CHANS_VM_ERR_INVALID_OBJECT_TYPE",               /* -930 */
    "CHANS_VM_ERR_NO_SUCH_PROPERTY",                  /* -929 */
    "CHANS_VM_ERR_NO_SUCH_METHOD",                    /* -928 */
    "CHANS_VM_ERR_NOT_READABLE_PROPERTY",             /* -927 */
    "CHANS_VM_ERR_NOT_WRITABLE_PROPERTY",             /* -926 */
    "CHANS_VM_ERR_INVALID_EXE_TYPE",                  /* -925 */
    "CHANS_VM_ERR_NO_SUCH_FUNCTION",                  /* -924 */
    "CHANS_VM_ERR_RESERVED_OPCODE",                   /* -923 */
};

const char* vmNoError = "CHANS_VM_OK";
const char* vmUnknownError = "(unknown)";

CHANSVmNativeClass* CHANSVmFindNativeClass(CHANSVm* vm, const char* clsName) {
    CHANSVmPrivate* pVm = (CHANSVmPrivate*)vm;

    CHANSVmNativeClass* cls;
    vmS32 clsNameLen = strlen(clsName);

    if (clsNameLen != 0) {
        for (cls = pVm->pNativeClasses; cls != vmNull; cls = cls->next) {
            if (clsNameLen == cls->nameLength && memcmp(clsName, &cls->name, clsNameLen) == 0) {
                return cls;
            }
        }
    }

    return vmNull;
}

CHANSVmNativeClass* CHANSVmAddNativeClass2(CHANSVm* vm, const char* clsName, CHANSVmFunction clsCtor, CHANSVmFunction clsDtor,
                                           CHANSVmFunction clsInit) {
    CHANSVmPrivate* pVm = (CHANSVmPrivate*)vm;

    CHANSVmNativeClass* cls;
    vmS32 clsNameLen;

    if (CHANSVmFindNativeClass(vm, clsName) == vmNull) {
        clsNameLen = strlen(clsName);
        if (clsNameLen != 0) {
            cls = (CHANSVmNativeClass*)CHANSVmAlloc(vm, VM_ALIGN(clsNameLen + sizeof(CHANSVmNativeClass) - 0x20));
            if (cls != vmNull) {
                if (pVm->pNativeClasses == vmNull) {
                    pVm->pNativeClasses = cls;
                } else {
                    CHANSVmNativeClass* prev = pVm->pNativeClasses;
                    while (prev->next != vmNull) {
                        prev = prev->next;
                    }
                    prev->next = cls;
                }

                cls->ctor = clsCtor;
                cls->dtor = clsDtor;
                cls->init = clsInit;
                cls->nameLength = clsNameLen;
                memcpy(&cls->name, clsName, clsNameLen);
                return cls;
            }
        }
    }
    return vmNull;
}

CHANSVmNativeClass* CHANSVmAddNativeClass(CHANSVm* vm, const char* clsName, CHANSVmFunction clsCtor, CHANSVmFunction clsDtor) {
    return CHANSVmAddNativeClass2(vm, clsName, clsCtor, clsDtor, vmNull);
}

vmU32 CHANSVmAddNativeMethodName(CHANSVm* vm, const char* methodName, vmSize nameLength) {
    CHANSVmPrivate* pVm = (CHANSVmPrivate*)vm;
    NameListNode* listPtr;
    NameListNode* allocPtr;
    u32 allocSize;
    vmU32 index = 1;

    if (nameLength == 0) {
        goto error;
    }

    listPtr = pVm->pMethodNameList;
    if (listPtr == NULL) {
        listPtr = (NameListNode*)&pVm->pMethodNameList;
    }
    else {
        while (vmTrue) {
            if (nameLength == listPtr->nameLength) {
                if (memcmp(methodName, listPtr->name, nameLength) == 0) {
                    return index;
                }
            }
            if (index >= 0xFFFF) {
                goto error;
            }
            index++;
            if (listPtr->next != NULL) {
                listPtr = listPtr->next;
            }
            else {
                break;
            }
        }
    }

    allocSize = VM_ALIGN(nameLength + sizeof(NameListNode));
    allocPtr = (NameListNode*)CHANSVmAlloc(vm, allocSize);
    listPtr->next = allocPtr;
    if (allocPtr != NULL) {
        allocPtr->nameLength = nameLength;
        memcpy(listPtr->next->name, methodName, nameLength);
        return index;
    }

    error:
    return 0;
}

CHANSVmErr CHANSVmFindAndAddNativeProperty(CHANSVmNativeClass* cls, void* property, u32 propIndex) {
    CHANSVmNativeProperty** head = (CHANSVmNativeProperty**)&cls->nativeProperties;
    CHANSVmNativeProperty* node = *head;

    if (node == NULL) {
        if (property != NULL) {
            *head = (CHANSVmNativeProperty*)property;
        }
    }
    else {
        while (vmTrue) {
            if (propIndex == node->index) {
                return CHANS_VM_ERR_ALREADY_DEFINED;
            }
            if (node->next == NULL) {
                break;
            }
            node = node->next;
        }

        if (property != NULL) {
            node->next = (CHANSVmNativeProperty*)property;
        }
    }

    return 0;
}

CHANSVmErr CHANSVmFindAndAddNativeMethod(CHANSVmNativeClass* cls, CHANSVmNativeMethod* method, u32 methodIndex) {
    CHANSVmNativeMethod** head = (CHANSVmNativeMethod**)&cls->nativeMethods;
    CHANSVmNativeMethod* node = *head;

    if (node == NULL) {
        if (method != NULL) {
            *head = method;
        }
    }
    else {
        while (vmTrue) {
            if (methodIndex == node->index) {
                return CHANS_VM_ERR_ALREADY_DEFINED;
            }
            if (node->next == NULL) {
                break;
            }
            node = node->next;
        }

        if (method != NULL) {
            node->next = method;
        }
    }

    return 0;
}

CHANSVmErr CHANSVmAddNativeMethodList(CHANSVm* vm, CHANSVmNativeClass* cls, const CHANSVmMethodList* methods, vmSize methodCount) {

    u32 methodIndex;
    const char* name;
    CHANSVmFunction methodFunc;

    CHANSVmErr result = 0;
    u32 flag;

    for (; methodCount != 0 && methods != vmNull && result == 0; methods++, methodCount--) {
        flag = 0;
        methodFunc = methods->method;
        name = methods->name;

        if (cls != NULL) {
            if (*name == '*') {
                flag = 1;
                name++;
            }

            methodIndex = CHANSVmAddNativeMethodName(vm, name, strlen(name));

            if (methodIndex != 0) {
                result = (CHANSVmErr)CHANSVmFindAndAddNativeProperty(cls, NULL, methodIndex);
                if (result != 0) {
                    continue;
                }

                {

                    CHANSVmNativeMethod* node;
                    node = (CHANSVmNativeMethod*)CHANSVmAlloc(vm, VM_ALIGN(sizeof(CHANSVmNativeMethod)));
                    if (node == NULL) {
                        result = CHANS_VM_ERR_NO_MEMORY;
                    } else {
                        node->index = (u16)methodIndex;
                        node->func = methodFunc;
                        node->flag = (u8)flag;
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
        CHANSVmNativeProperty* node = CHANSVmAlloc(vm, VM_ALIGN(sizeof(CHANSVmNativeProperty)));
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

CHANSVmErr CHANSVmAddNativePropertyAccessorsList(CHANSVm* vm, CHANSVmNativeClass* cls, const CHANSVmPropertyList* properties, vmSize propertyCount) {
    CHANSVmErr result = CHANS_VM_OK;
    vmSize count = propertyCount;
    while (count != 0 && properties != NULL && result == CHANS_VM_OK) {
        result = CHANSVmAddNativePropertyAccessors(vm, cls, properties->name, properties->get, properties->set);
        properties++;
        count--;
    }
    return result;
}

void* CHANSVmAddGlobalObject(CHANSVm* vm, const char* globalName, vmBool allocateNewNode) {
    CHANSVmPrivate* pVm = (CHANSVmPrivate*)vm;
    GlobalObjListNode* listPtr;
    GlobalObjListNode* newNode;
    vmSize nameLength = strlen(globalName);

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
            u32 allocSize = VM_ALIGN(nameLength + sizeof(GlobalObjListNode));
            newNode = CHANSVmAlloc(vm, allocSize);
            if (newNode != NULL) {
                newNode->nameLength = nameLength;
                memcpy(newNode->name, globalName, nameLength);
                memset(newNode, 0, sizeof(CHANSVmObjHdr));
                newNode->hdr.flags.raw = 0x80;

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
            if (obj->type == CHANS_VM_OBJ_TYPE_BLANK || obj->type == CHANS_VM_TYPE_OBJECT &&
                (obj->parentCls == NULL || obj->parentCls == cls)) {
                obj->type = CHANS_VM_TYPE_OBJECT;
                obj->parentCls = cls;
                result = CHANS_VM_OK;
            }
            else {
                result = CHANS_VM_ERR_ALREADY_DEFINED;
            }
        }
    }
    return result;
}

CHANSVmObjHdr* CHANSVmConstructGlobalObject(CHANSVm* vm, const char* name, CHANSVmNativeClass* cls, CHANSVmFunction ctor) {
    CHANSVmObjHdr* obj = NULL;
    if (cls != NULL) {
        obj = CHANSVmAddGlobalObject(vm, name, vmTrue);
        if (obj != NULL) {
            if (CHANSVmSetObjectAsNativeInstance(vm, obj, cls, NULL) != CHANS_VM_OK ||
                ctor != NULL && !ctor(vm, NULL, obj)) {
                obj = NULL;
            }
        }
    }
    return obj;
}

vmBoolInt CHANSVmNewBuiltinObject(
    CHANSVm* vm,
    const char* className,
    CHANSVmFunction clsCtor,
    CHANSVmFunction clsDtor,
    CHANSVmFunction clsInit,
    const char* globalName,
    CHANSVmFunction globalCtor,
    const CHANSVmPropertyList* propAccessors,
    vmU32 propCount,
    const CHANSVmMethodList* methods,
    vmU32 methodCount
) {
    CHANSVmNativeClass* cls = CHANSVmAddNativeClass2(vm, className, clsCtor, clsDtor, clsInit);
    if (cls != NULL &&
        (propAccessors == NULL || propCount == 0 || CHANSVmAddNativePropertyAccessorsList(vm, cls, propAccessors, propCount) == CHANS_VM_OK) &&
        (methods == NULL || methodCount == 0 || CHANSVmAddNativeMethodList(vm, cls, methods, methodCount) == CHANS_VM_OK) &&
        (globalName == NULL || CHANSVmConstructGlobalObject(vm, globalName, cls, globalCtor) != NULL)) {
        return TRUE;
    }
    return FALSE;
}

vmBoolInt CHANSVmCheckNativeInstance(CHANSVmObjHdr* obj, const char* className) {
    if (obj != NULL && obj->type == CHANS_VM_TYPE_OBJECT) {
        CHANSVmNativeClass* nativeClass = obj->parentCls;
        if (nativeClass != NULL && className != NULL && nativeClass->nameLength == strlen(className) &&
            strncmp(nativeClass->name, className, nativeClass->nameLength) == 0) {
            return TRUE;
        }
    }
    return FALSE;
}

static CHANSVmErr VmArrayExpandCommon(CHANSVm* vm, CHANSVmObjHdr* obj, u32 startCount, u32 endCount, u32 fillFromArgs)
{
    u32 total;
    u32 allocSize;
    ArrayChunk* chunk;
    ArrayChunk* current;
    u32 i;

    total = startCount + endCount;

    if (total == 0) {
        return TRUE;
    }

    allocSize = VM_ALIGN(total * 16 + sizeof(ArrayChunk));
    chunk = (ArrayChunk*)CHANSVmAlloc(vm, allocSize);
    if (chunk == NULL) {
        goto error;
    }

    chunk->capacity = allocSize;
    chunk->count = total;

    current = *(ArrayChunk**)obj->value.ptr_v;
    if (startCount != 0) {
        while (current->next != NULL) {
            current = current->next;
        }
        current->next = chunk;
        chunk->prev = current;
    } else {
        while (current->prev != NULL) {
            current = current->prev;
        }
        current->prev = chunk;
        chunk->next = current;
    }

    for (i = 0, allocSize = 0; i < total; i++, allocSize += 0x10) {
        if (fillFromArgs != 0 && i < ((CHANSVmPrivate*)vm)->pActiveCtx->argc && CHANSVmGetArg(vm, i) != NULL) {
            CHANSVmObjHdr* arg = CHANSVmGetArg(vm, i);
            if (CHANSVmCopyObject(vm, (CHANSVmObjHdr*)((u8*)chunk + sizeof(ArrayChunk) + allocSize), arg) == NULL) {
                goto error;
            }
            continue;
        }
        memset((u8*)chunk + sizeof(ArrayChunk) + allocSize, 0, 0x10);
    }

    return TRUE;

error:
    return FALSE;
}

static ArrayChunk* VmArraySeekTop(CHANSVmObjHdr* array)
{
    ArrayChunk* cur = NULL;
    if (array != NULL) {
        cur = *(ArrayChunk**)array->value.ptr_v;
        while (cur->next != NULL) {
            cur = cur->next;
        }
    }
    return cur;
}

static u32 VmArrayGetLengthInternal(CHANSVmObjHdr* array)
{
    u32 len = 0;
    ArrayChunk* chunk = VmArraySeekTop(array);
    while (chunk != NULL) {
        len += chunk->count;
        chunk = chunk->prev;
    }
    return len;
}

static CHANSVmObjHdr* VmGetArrayElement(CHANSVm* vm, CHANSVmObjHdr* array, u32 index, s32 autoExpand)
{
    ArrayChunk* chunk;
    u32 total;

    for (;;) {
        total = 0;
        chunk = VmArraySeekTop(array);
        while (chunk != NULL) {
            u32 count = chunk->count;
            u32 tmp = total + count;
            if (index < tmp) {
                u32 offset = chunk->start + index - total;
                return (CHANSVmObjHdr*)((u8*)chunk + (offset * 16) + sizeof(ArrayChunk));
            }
            total += count;
            chunk = chunk->prev;
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
    if (array != NULL && array->type == CHANS_VM_TYPE_ARRAY) {
        CHANSVmObjHdr* result = VmGetArrayElement(vm, array, index, FALSE);
        if (result != NULL) {
            return result;
        }
    }

    return NULL;
}

const static char VmArrayClassName[] = "Array";

VmCtorDefine(Array)
{
    CHANSVmPrivate* pVm = (CHANSVmPrivate*)VmInst;
    CHANSVmObjHdr* arg;
    u32 value = pVm->pActiveCtx->argc;
    vmBoolInt fillArgs = TRUE;

    if (value == 1) {
        arg = CHANSVmGetArg(VmInst, 0);
        if (arg != NULL && arg->type == CHANS_VM_OBJ_TYPE_INTEGER) {
            if ((u64)arg->value.int_v <= (u64)0xFFFFFFFE) {
                value = (u32)arg->value.int_v;
                fillArgs = FALSE;
            }
        }
    }

    VmReturnObj->type = CHANS_VM_TYPE_ARRAY;
    VmReturnObj->parentCls = pVm->pArrayCls;

    if (CHANSVmNewObjData(VmInst, VmReturnObj, sizeof(ArrayChunk)) != NULL) {
        if (value == 0 || VmArrayExpandCommon(VmInst, VmReturnObj, value, 0, (u32)fillArgs)) {
            return TRUE;
        }
    }
    return FALSE;
}

VmDtorDefine(Array)
{
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

CHANSVmObjHdr* CHANSVmGetArrayElement2D(CHANSVm* vm, vmPtr array, vmS32 dimension0, vmS32 dimension1) {
    CHANSVmObjHdr* elem = CHANSVmGetArrayElement(vm, array, dimension0);
    if (elem != NULL) {
        elem = VmGetArrayElement(vm, elem, dimension1, FALSE);
        if (elem != NULL) {
            return elem;
        }
    }
    return NULL;
}

CHANSVmObjHdr* CHANSVmGetArrayElement2DFloat(CHANSVm* vm, vmFloat* array, vmS32 dimension0, vmS32 dimension1) {
    return CHANSVmConvertObjectType(vm, CHANS_VM_OBJ_TYPE_FLOAT, CHANSVmGetArrayElement2D(vm, array, dimension0, dimension1));
}

u32 CHANSVmGetArrayLength(CHANSVm* vm, CHANSVmObjHdr* array) {
    if (array != NULL && array->type == CHANS_VM_TYPE_ARRAY) {
        return VmArrayGetLengthInternal(array);
    }
    return 0;
}

static u32 VmArrayJoinEstimateStrSize(CHANSVmObjHdr* object, u32 sepLen)
{
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
                case CHANS_VM_TYPE_ARRAY: {
                    u32 strLen = VmArrayJoinEstimateStrSize(&chunk->elements[countInChunk], sepLen);
                    total += strLen;
                    break;
                }
                case CHANS_VM_OBJ_TYPE_BLANK: {
                    break;
                }
                default: {
                    CHANS_VM_PRINTF(318, ": unsupported type 0x%x\n", type);
                    goto error;
                }
            }
            total += sepLen;
            countInChunk++;
        }
        chunk = chunk->prev;
    }
    return total;

error:
    return 0;
}

static u32 VmArrayJoinSub(CHANSVmObjHdr* obj, CHANSVmObjHdr* array, wchar_t* separator, u32 sepLen, u32 bufSize, u32 offset)
{
    ArrayChunk* chunk;
    u32 countInChunk;
    u32 savedOffset;
    vmString strBuf;
    u32 elemLen;

    savedOffset = offset;
    chunk = VmArraySeekTop(array);

    while (chunk != NULL) {
        countInChunk = chunk->start;
        while (countInChunk < chunk->start + chunk->count) {
            s32 type = (s32)chunk->elements[countInChunk].type;

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
                    strBuf = (vmString)(*obj->value.ptr_v) + offset;
                    elemLen = snprintf(strBuf, 0x40, "%lld", chunk->elements[countInChunk].value.int_v);
                    CHANSVmStrCpyToU16FromU8((vmWString)strBuf, strBuf, elemLen);
                    elemLen = elemLen << 1;
                    break;
                }
                case CHANS_VM_OBJ_TYPE_FLOAT: {
                    if (offset + 0x80 > bufSize) {
                        goto error;
                    }
                    elemLen = CHANSVm_8144B62C((vmWString)((u8*)(*obj->value.ptr_v) + offset), 0x80, chunk->elements[countInChunk].value.float_v);
                    break;
                }
                case CHANS_VM_TYPE_ARRAY: {
                    elemLen = 0;
                    offset = VmArrayJoinSub(obj, &chunk->elements[countInChunk], separator, sepLen, bufSize, offset);
                    break;
                }
                default: {
                    CHANS_VM_PRINTF(389, ": unsupported type 0x%x\n", type);
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
        chunk = chunk->prev;
    }

    if (separator != NULL && savedOffset < offset) {
        offset -= sepLen;
        memset((u8*)*obj->value.ptr_v + offset, 0, sepLen);
    }
    return offset;
error:
    return 0;
}

extern const CHANSVmObjHdr lbl_81616CB8;

CHANSVmObjHdr* VmArrayJoinCommon(CHANSVm* vm, u32 retObjAddr, CHANSVmObjHdr* object, u32 separatorAddr, u32 separatorLen)
{
    CHANSVmObjHdr* result;
    u32 estSize;
    u32 actualLen;

    if (separatorAddr == 0) {
        separatorAddr = *(u32*)(&lbl_81616CB8);
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

VmMethodDefine(Array, Join)
{
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

VmMethodDefine(Array, Slice)
{
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
        if (arg0->value.int_v > (s64)len) {
            start = len;
        } else if (arg0->value.int_v < (s64)0) {
            start = (u32)(arg0->value.int_v + (s64)len);
            if (arg0->value.int_v + (s64)len < (s64)0)
                start = 0;
        } else {
            start = (u32)arg0->value.int_v;
        }
    }
    end = len;

    if (arg1 != NULL) {
        if (arg1->value.int_v > (s64)len) {
            end = len;
        } else if (arg1->value.int_v < (s64)0) {
            end = (u32)(arg1->value.int_v + (s64)len);
            if (arg1->value.int_v + (s64)len < (s64)0)
                end = 0;
        } else {
            end = (u32)arg1->value.int_v;
        }
    }
    newLen = (end <= start) ? 0 : (end - start);

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

CHANSVmObjHdr* CHANSVmNewArrayObject(CHANSVm* vm, CHANSVmObjHdr* object, vmU32 dimensions, vmSize* sizeEachDimension)
{
    if (dimensions == 0 || sizeEachDimension == NULL) {
        goto error;
    }

    object = CHANSVmNewObject(vm, 0, object, CHANS_VM_TYPE_ARRAY, 0x18);
    if (object == NULL) {
        goto error;
    }

    object->parentCls = ((CHANSVmPrivate*)vm)->pArrayCls;
    if (object->parentCls == NULL) {
        goto error;
    }
    if (sizeEachDimension[0] != 0 &&
        VmArrayExpandCommon(vm, object, sizeEachDimension[0], 0, FALSE) == 0) {
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

VmMethodDefine(Array, New2d)
{
    CHANSVmPrivate* pVm = (CHANSVmPrivate*)VmInst;
    u32 sizes[2];
    u32 i;

    if (VmReturnObj == NULL || pVm->pActiveCtx->argc != 2) {
        goto error;
    }

    for (i = 0; i < 2; i++) {
        CHANSVmObjHdr* arg = CHANSVmConvertObjectType(VmInst, CHANS_VM_OBJ_TYPE_INTEGER, CHANSVmGetArg(VmInst, i));
        if (arg == NULL || arg->value.int_v > 0xFFFFFFFEULL) {
            goto error;
        }
        sizes[i] = (u32)arg->value.int_v;
    }

    return (vmS32)CHANSVmNewArrayObject(VmInst, VmReturnObj, 2, sizes) != 0;
error:
    return FALSE;
}

VmMethodDefine(Array, Shift)
{
    ArrayChunk* chunk;
    CHANSVmObjHdr* elemPtr;

    chunk = VmArraySeekTop(VmParentObj);
    while (chunk != NULL && chunk->count == 0) {
        chunk = chunk->prev;
    }

    if (chunk != NULL && chunk->count != 0) {
        elemPtr = (CHANSVmObjHdr*)((u8*)chunk + chunk->start * 16 + sizeof(ArrayChunk));

        if (CHANSVmCopyObject(VmInst, VmReturnObj, elemPtr) == NULL ||
            CHANSVmDeleteObject(VmInst, elemPtr) != CHANS_VM_OK) {
            goto error;
        }
        chunk->start++;
        chunk->count--;
    }
    return TRUE;
error:
    return FALSE;
}

VmMethodDefine(Array, Unshift)
{
    CHANSVmPrivate* pVm = (CHANSVmPrivate*)VmInst;
    u32 argc = pVm->pActiveCtx->argc;

    if (VmArrayExpandCommon(VmInst, VmParentObj, argc, 0, TRUE)) {
        u32 len = VmArrayGetLengthInternal(VmParentObj);
        return CHANSVmSetInteger(VmInst, VmReturnObj, len) == CHANS_VM_OK;
    }
    return FALSE;
}

VmMethodDefine(Array, Push)
{
    CHANSVmPrivate* pVm = (CHANSVmPrivate*)VmInst;
    u32 argc = pVm->pActiveCtx->argc;

    if (VmArrayExpandCommon(VmInst, VmParentObj, 0, argc, TRUE)) {
        u32 len = VmArrayGetLengthInternal(VmParentObj);
        return CHANSVmSetInteger(VmInst, VmReturnObj, len) == CHANS_VM_OK;
    }
    return FALSE;
}

VmMethodDefine(Array, Pop)
{
    ArrayChunk* chunk = VmArraySeekTop(VmParentObj);
    ArrayChunk* lastChunk = NULL;

    while (chunk != NULL) {
        if (chunk->count != 0) {
            lastChunk = chunk;
        }
        chunk = chunk->prev;
    }

    if (lastChunk != NULL) {
        u8* elemPtr = (u8*)lastChunk + (lastChunk->start + lastChunk->count - 1) * 16 + sizeof(ArrayChunk);
        if (VmReturnObj != NULL) {
            memcpy(VmReturnObj, elemPtr, sizeof(CHANSVmObjHdr));
            VmReturnObj->flags.raw &= ~0x80;
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

VmMethodDefine(Array, GetLength)
{
    u32 len = VmArrayGetLengthInternal(VmParentObj);
    return CHANSVmSetInteger(VmInst, VmReturnObj, len) == CHANS_VM_OK;
}

VmMethodDefine(Array, SetLength)
{
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
    { "length", VmArrayGetLength, VmArraySetLength },
};
const CHANSVmMethodList VmArrayMethodTbl[] = {
    { "join", VmArrayJoin },
    { "new2d", VmArrayNew2d },
    { "pop", VmArrayPop },
    { "push", VmArrayPush },
    { "shift", VmArrayShift },
    { "slice", VmArraySlice },
    { "unshift", VmArrayUnshift },
};

typedef struct {
    const char* name;
    void* func;
} NameFuncEntry;

const NameFuncEntry VmDateConstantTbl[] = {
     // Avoid L".." because it inserts two null terminator bytes, but the original only used one, despite it being a wide string.
    { (const char*)"\0U\0T\0C", (void*)6 },
    { NULL, NULL }
};

// Ensures that this string is defined before the error messages below
const char* vmDateCommonFunctionName = "VmDateCommon";

vmBoolInt CHANS_8144E21(CHANSVm* vm, OSCalendarTime* out) {
    u32 argc;
    u32 i;
    OSCalendarTime nettime;
    u64 time;

    if (out != NULL) {
        argc = ((CHANSVmPrivate*)vm)->pActiveCtx->argc;

        if (argc == 0) {
            goto osgettime;
        }
        if (argc == 1) {
            CHANSVmObjHdr* arg = CHANSVmGetArg(vm, 0);

            if (arg && arg->type == CHANS_VM_OBJ_TYPE_STRING) {
                if (arg->value.wstring_v->len == 6 && memcmp(arg->value.wstring_v->str, VmDateConstantTbl[0].name, 6) == 0) {
                    NETGetUniversalCalendar(&nettime);
                    time = OSCalendarTimeToTicks(&nettime);
                    time = (u64)((s64)time / ((__OSBusClock >> 2) / 1000));
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
                    // Doesn't match the PRINTF macro
                    if (CHANSVmDebugVerboseMode) {
                        CHANSVmDebugPrintf("internal error in %s line %d\n", vmDateCommonFunctionName, 211);
                    }
                    return vmFalse;
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
        return vmTrue;
    }
    return vmFalse;
}

VmCtorDefine(Date) {
    return CHANS_8144E21(VmInst, CHANSVmNewObjData(VmInst, VmReturnObj, 0x28));
}

#define RANGE(val, min, max) ((val) >= (min) && (val) <= (max))

const char* VmDateDayTbl[] = {"Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"};
const char* VmDateMonthTbl[] = {"Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"};

VmDtorDefine(Date) {
    OSCalendarTime date;
    char buffer[32];
    unsigned int uv;

    memset(&date, 0, sizeof(OSCalendarTime));

    if (CHANS_8144E21(VmInst, &date) &&
        RANGE(date.sec, 0, 61) &&
        RANGE(date.min, 0, 59) &&
        RANGE(date.hour, 0, 23) &&
        RANGE(date.mday, 1, 31) &&
        RANGE(date.mon, 0, 11) &&
        RANGE(date.year, 1900, 9999) &&
        RANGE(date.wday, 0, 6)) {

        uv = snprintf(buffer, 0x20, "%s %s %02d %02d:%02d:%02d %04d",
                      VmDateDayTbl[date.wday], VmDateMonthTbl[date.mon],
                      date.mday, date.hour, date.min, date.sec, date.year);

        if (uv <= 0x20) {
            return CHANSVmSetU16StringFromU8(VmInst, VmReturnObj, buffer, uv) == CHANS_VM_OK;
        }
    }

    return (CHANSVmNewObject(VmInst, vmFalse, VmReturnObj, CHANS_VM_OBJ_TYPE_STRING, 0) != 0);
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
    { "getDate", VmDateGetDate },
    { "getDay", VmDateGetDay },
    { "getFullYear", VmDateGetFullYear },
    { "getHours", VmDateGetHours },
    { "getMilliseconds", VmDateGetMilliseconds },
    { "getMinutes", VmDateGetMinutes },
    { "getMonth", VmDateGetMonth },
    { "getSeconds", VmDateGetSeconds },
    { "getTime", VmDateGetTime },
    { "getRTC", VmDateGetRTC },
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
    CHANSVmObjHdr* arg = CHANSVmGetArgFloat(VmInst, 0);
    return (arg != vmNull && CHANSVmSetFloat(VmInst, VmReturnObj, fabs(arg->value.float_v)) == CHANS_VM_OK);
}
VmMethodDefine(Math, acos) {
    CHANSVmObjHdr* arg = CHANSVmGetArgFloat(VmInst, 0);
    if (arg != vmNull) {
        vmFloat val = arg->value.float_v;
        vmFloat newVal;

        if (-1.0 <= val && val <= 1.0) {
            newVal = acos(val);
        } else {
            newVal = VM_NAN;
        }
        return CHANSVmSetFloat(VmInst, VmReturnObj, newVal) == CHANS_VM_OK;
    }
    return vmFalse;
}
VmMethodDefine(Math, asin) {
    CHANSVmObjHdr* arg = CHANSVmGetArgFloat(VmInst, 0);
    if (arg != vmNull) {
        vmFloat val = arg->value.float_v;
        vmFloat newVal;

        if (-1.0 <= val && val <= 1.0) {
            newVal = asin(val);
        } else {
            newVal = VM_NAN;
        }
        return CHANSVmSetFloat(VmInst, VmReturnObj, newVal) == CHANS_VM_OK;
    }
    return vmFalse;
}
VmMethodDefine(Math, atan) {
    CHANSVmObjHdr* arg = CHANSVmGetArgFloat(VmInst, 0);
    return arg != vmNull && CHANSVmSetFloat(VmInst, VmReturnObj, atan(arg->value.float_v)) == CHANS_VM_OK;
}
VmMethodDefine(Math, atan2) {
    CHANSVmObjHdr* arg0 = CHANSVmGetArgFloat(VmInst, 0);
    CHANSVmObjHdr* arg1 = CHANSVmGetArgFloat(VmInst, 1);
    return arg0 != vmNull && arg1 != vmNull && CHANSVmSetFloat(VmInst, VmReturnObj, atan2(arg0->value.float_v, arg1->value.float_v)) == CHANS_VM_OK;
}
VmMethodDefine(Math, ceil) {
    CHANSVmObjHdr* arg = CHANSVmGetArgFloat(VmInst, 0);
    return arg != vmNull && CHANSVmSetFloat(VmInst, VmReturnObj, ceil(arg->value.float_v)) == CHANS_VM_OK;
}
VmMethodDefine(Math, cos) {
    CHANSVmObjHdr* arg = CHANSVmGetArgFloat(VmInst, 0);
    return arg != vmNull && CHANSVmSetFloat(VmInst, VmReturnObj, cos(arg->value.float_v)) == CHANS_VM_OK;
}
VmMethodDefine(Math, exp) {
    CHANSVmObjHdr* arg = CHANSVmGetArgFloat(VmInst, 0);
    return arg != vmNull && CHANSVmSetFloat(VmInst, VmReturnObj, exp(arg->value.float_v)) == CHANS_VM_OK;
}
VmMethodDefine(Math, floor) {
    CHANSVmObjHdr* arg = CHANSVmGetArgFloat(VmInst, 0);
    return arg != vmNull && CHANSVmSetFloat(VmInst, VmReturnObj, floor(arg->value.float_v)) == CHANS_VM_OK;
}
VmMethodDefine(Math, log) {
    CHANSVmObjHdr* arg = CHANSVmGetArgFloat(VmInst, 0);
    return arg != vmNull && CHANSVmSetFloat(VmInst, VmReturnObj, log(arg->value.float_v)) == CHANS_VM_OK;
}
inline VmMethodDefine(Math, fmax) {
    CHANSVmObjHdr* arg0 = CHANSVmGetArgFloat(VmInst, 0);
    CHANSVmObjHdr* arg1 = CHANSVmGetArgFloat(VmInst, 1);
    return arg0 != vmNull && arg1 != vmNull && CHANSVmSetFloat(VmInst, VmReturnObj, fmax(arg0->value.float_v, arg1->value.float_v)) == CHANS_VM_OK;
}
VmMethodDefine(Math, max) {
    CHANSVmObjHdr* arg0 = CHANSVmGetArg(VmInst, 0);
    CHANSVmObjHdr* arg1 = CHANSVmGetArg(VmInst, 1);
    if (arg0 != vmNull && arg1 != vmNull) {
        if (arg0->type == arg1->type && arg0->type == CHANS_VM_OBJ_TYPE_INTEGER) {
            if (arg0->value.int_v < arg1->value.int_v) {
                arg0 = arg1;
            }

            return CHANSVmSetInteger(VmInst, VmReturnObj, arg0->value.int_v) == CHANS_VM_OK;
        } else {
            return (VmMethod(Math, fmax))(VmInst, VmParentObj, VmReturnObj);
        }
    } else {
        return vmFalse;
    }
}
inline VmMethodDefine(Math, fmin) {
    CHANSVmObjHdr* arg0 = CHANSVmGetArgFloat(VmInst, 0);
    CHANSVmObjHdr* arg1 = CHANSVmGetArgFloat(VmInst, 1);
    return arg0 != vmNull && arg1 != vmNull && CHANSVmSetFloat(VmInst, VmReturnObj, fmin(arg0->value.float_v, arg1->value.float_v)) == CHANS_VM_OK;
}
VmMethodDefine(Math, min) {
    CHANSVmObjHdr* arg0 = CHANSVmGetArg(VmInst, 0);
    CHANSVmObjHdr* arg1 = CHANSVmGetArg(VmInst, 1);
    if (arg0 != vmNull && arg1 != vmNull) {
        if (arg0->type == arg1->type && arg0->type == CHANS_VM_OBJ_TYPE_INTEGER) {
            if (arg0->value.int_v > arg1->value.int_v) {
                arg0 = arg1;
            }

            return CHANSVmSetInteger(VmInst, VmReturnObj, arg0->value.int_v) == CHANS_VM_OK;
        } else {
            return (VmMethod(Math, fmin))(VmInst, VmParentObj, VmReturnObj);
        }
    } else {
        return vmFalse;
    }
}
VmMethodDefine(Math, pow) {
    CHANSVmObjHdr* arg0 = CHANSVmGetArgFloat(VmInst, 0);
    CHANSVmObjHdr* arg1 = CHANSVmGetArgFloat(VmInst, 1);
    return arg0 != vmNull && arg1 != vmNull && CHANSVmSetFloat(VmInst, VmReturnObj, pow(arg0->value.float_v, arg1->value.float_v)) == CHANS_VM_OK;
}
VmMethodDefine(Math, random) {
    return CHANSVmSetFloat(VmInst, VmReturnObj, rand() / 32767.0) == CHANS_VM_OK;
}
VmMethodDefine(Math, round) {
    CHANSVmObjHdr* arg = CHANSVmGetArgFloat(VmInst, 0);
    if (arg != vmNull) {
        vmFloat val = arg->value.float_v;
        vmFloat newVal;

        if (val > 0.0) {
            newVal = floor(val + 0.5);
        } else {
            newVal = ceil(val - 0.5);
        }
        return CHANSVmSetFloat(VmInst, VmReturnObj, newVal) == CHANS_VM_OK;
    } else {
        return vmFalse;
    }
}
VmMethodDefine(Math, sin) {
    CHANSVmObjHdr* arg = CHANSVmGetArgFloat(VmInst, 0);
    return arg != vmNull && CHANSVmSetFloat(VmInst, VmReturnObj, sin(arg->value.float_v)) == CHANS_VM_OK;
}
VmMethodDefine(Math, sqrt) {
    CHANSVmObjHdr* arg = CHANSVmGetArgFloat(VmInst, 0);
    if (arg != vmNull) {
        vmFloat val = arg->value.float_v;
        vmFloat newVal;

        if (arg->value.float_v < 0.0) {
            newVal = VM_NAN;
        } else {
            newVal = sqrt(val);
        }
        return CHANSVmSetFloat(VmInst, VmReturnObj, newVal) == CHANS_VM_OK;
    } else {
        return vmFalse;
    }
}
VmMethodDefine(Math, tan) {
    CHANSVmObjHdr* arg = CHANSVmGetArgFloat(VmInst, 0);
    return arg != vmNull && CHANSVmSetFloat(VmInst, VmReturnObj, tan(arg->value.float_v)) == CHANS_VM_OK;
}

const CHANSVmPropertyList VmMathPropertyTbl[] = {
    { "E", VmMathE, NULL },
    { "LN10", VmMathLN10, NULL },
    { "LN2", VmMathLN2, NULL },
    { "LOG2E", VmMathLOG2E, NULL },
    { "LOG10E", VmMathLOG10E, NULL },
    { "PI", VmMathPI, NULL },
    { "SQRT1_2", VmMathSQRT1_2, NULL },
    { "SQRT2", VmMathSQRT2, NULL },
};
const CHANSVmMethodList VmMathMethodTbl[] = {
    { "abs", VmMathabs },
    { "acos", VmMathacos },
    { "asin", VmMathasin },
    { "atan", VmMathatan },
    { "atan2", VmMathatan2 },
    { "ceil", VmMathceil },
    { "cos", VmMathcos },
    { "exp", VmMathexp },
    { "floor", VmMathfloor },
    { "log", VmMathlog },
    { "max", VmMathmax },
    { "min", VmMathmin },
    { "pow", VmMathpow },
    { "random", VmMathrandom },
    { "round", VmMathround },
    { "sin", VmMathsin },
    { "sqrt", VmMathsqrt },
    { "tan", VmMathtan },
};

const static char VmStringClassName[] = "String";

VmCtorDefine(String) {
    vmBoolInt ok;
    CHANSVmObjHdr* obj;

    if (((CHANSVmPrivate*)VmInst)->pActiveCtx->argc != 0) {
        obj = CHANSVmConvertObjectType(VmInst, CHANS_VM_OBJ_TYPE_STRING, CHANSVmGetArg(VmInst, 0));
        ok = vmFalse;
        if (obj && CHANSVmCopyObject(VmInst, VmReturnObj, obj)) {
            ok = vmTrue;
        }
        return ok;
    }
    obj = CHANSVmNewObject(VmInst, vmFalse, VmReturnObj, CHANS_VM_OBJ_TYPE_STRING, 0);
    ok = !!obj;
    return ok;
}

VmMethodDefine(String, FromCharCode) {
    CHANSVmObjHdr* arg;
    u32 offs;
    u32 argc;
    u32 ch;
    u32 i;

    if (VmParentObj != NULL && VmParentObj->type == CHANS_VM_TYPE_CLASS_REF) {
        argc = ((CHANSVmPrivate*)VmInst)->pActiveCtx->argc;
        if (CHANSVmNewObject(VmInst, vmFalse, VmReturnObj, CHANS_VM_OBJ_TYPE_STRING, argc * 2)) {
            i = 0;
            offs = 0;
            while (i < argc) {
                arg = CHANSVmGetArg(VmInst, i);
                arg = CHANSVmConvertObjectType(VmInst, CHANS_VM_OBJ_TYPE_INTEGER, arg);
                ch = arg != NULL ? (u32)(arg->value.int_v & 0xFFFF) : 0;
                VmReturnObj->value.string_v->str[offs] = (u8)(ch >> 8);
                VmReturnObj->value.string_v->str[offs + 1] = (u8)ch;
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

        if (CHANSVmNewObject(VmInst, vmFalse, VmReturnObj, CHANS_VM_OBJ_TYPE_STRING, size)) {
            if (size != 0) {
                memcpy(VmReturnObj->value.string_v->str, VmParentObj->value.string_v->str + (u32)charIndex * 2, size);
            }
            return vmTrue;
        }
    }
    return vmFalse;
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
        ch = (u8)parentStr->str[(u32)(charIndex * 2)] << 8 | (u8)parentStr->str[(u32)(charIndex * 2) + 1];
    }

    return CHANSVmSetInteger(VmInst, VmReturnObj, (vmInteger)(u64)ch) == CHANS_VM_OK;

error:
    return 0;
}

static CHANSVmObjHdr* VmStringObjectDup(CHANSVm* VmInst, CHANSVmObjHdr* outObj, CHANSVmObjHdr* inObj) {
    CHANSVmObjHdr* result = NULL;
    if (inObj != NULL && inObj->type == CHANS_VM_OBJ_TYPE_STRING) {
        result = CHANSVmNewObject(VmInst, vmFalse, outObj, CHANS_VM_OBJ_TYPE_STRING, inObj->value.string_v->len);
        if (result != NULL) {
            memcpy(result->value.string_v->str, inObj->value.string_v->str, result->value.string_v->len);
        }
    }
    return result;
}

static vmBoolInt VmStringObjectIndex(CHANSVm* VmInst, CHANSVmObjHdr* VmParentObj, CHANSVmObjHdr* VmReturnObj, u32 searchForward, u32 skipStartArg) {
    CHANSVmObjHdr* arg0;
    CHANSVmObjHdr* arg1;
    vmStringObjVal* parentStrVal;
    vmStringObjVal* searchStrVal;
    u32 parentLen;
    u32 searchLen;
    vmString parentStr;
    vmString searchStr;
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
            parentStr = parentStrVal->str;
            searchStr = searchStrVal->str;

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
                } while (vmTrue);
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
    vmString parentStr;
    vmString searchStr;
    vmString replaceStr;
    u32 parentLen;
    u32 srcOffs;
    u32 dstOffs;
    u32 searchLen;
    u32 replaceLen;
    u32 dstBufLen;
    vmString newStr;
    u32 segLen;

    if (((CHANSVmPrivate*)VmInst)->pActiveCtx->argc < 2) {
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
    parentStr = VmParentObj->value.string_v->str;
    replaceLen = arg1->value.string_v->len;
    searchStr = arg0->value.string_v->str;
    replaceStr = arg1->value.string_v->str;

    if (parentLen < searchLen) {
        goto return_input;
    }

    newStr = NULL;
    dstBufLen = 0;

    while (vmTrue) {
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
            }
            else {
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
            if (!CHANSVmNewObject(VmInst, vmFalse, VmReturnObj, CHANS_VM_OBJ_TYPE_STRING, dstBufLen)) {
                goto error;
            }
            newStr = VmReturnObj->value.string_v->str;
        } else {
            break;
        }
    }

    return VmReturnObj->value.string_v->len == dstOffs ? vmTrue : vmFalse;

return_input:
    return VmStringObjectDup(VmInst, VmReturnObj, VmParentObj) ? vmTrue : vmFalse;

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
        if (byteOffs0 > (s64)length) {
            start = length;
        } else {
            start = (u32)byteOffs0;
            if (byteOffs0 < 0) {
                s64 t0 = byteOffs0 + (s64)length;
                start = (u32)t0;
                if (t0 < 0) {
                    start = 0;
                }
            }
        }
    }

    if (arg1 != NULL) {
        u32 tempLen;
        s64 byteOffs1 = arg1->value.int_v * 2;
        if (byteOffs1 > (s64)length) {
            tempLen = length;
        } else {
            tempLen = (u32)byteOffs1;
            if (byteOffs1 < 0) {
                s64 t1 = byteOffs1 + (s64)length;
                tempLen = (u32)t1;
                if (t1 < 0) {
                    tempLen = 0;
                }
            }
        }
        length = tempLen;
    }

    newLen = (length - start) & ~(-(s32)(start >= length));

    if (CHANSVmNewObject(VmInst, vmFalse, VmReturnObj, CHANS_VM_OBJ_TYPE_STRING, newLen) != NULL) {
        if (newLen != 0) {
            memcpy(VmReturnObj->value.string_v->str, VmParentObj->value.string_v->str + start, newLen);
        }
        return vmTrue;
    }
    return vmFalse;
}

VmMethodDefine(String, Split) {
    CHANSVmObjHdr* arg0;
    CHANSVmObjHdr* arg1;
    u32 limit;
    CHANSVmObjHdr* array;
    vmString parentStr;
    vmString delimStr;
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
        goto createArray;
    }

    limit = -1;
    if (((CHANSVmPrivate*)VmInst)->pActiveCtx->argc > 1) {
        arg1 = CHANSVmGetArg(VmInst, 1);
        arg1 = CHANSVmConvertObjectType(VmInst, CHANS_VM_OBJ_TYPE_INTEGER, arg1);
        if (arg1 != NULL) {
            if (arg1->value.int_v > (u64)0xFFFFFFFF) {
                limit = (u32)arg1->value.int_v;
                if (limit == 0) {
                    goto createArray;
                }
            }
        }
    }

    parentStr = VmParentObj->value.string_v->str;
    parentLen = VmParentObj->value.string_v->len;
    delimStr = arg0->value.string_v->str;
    delimLen = arg0->value.string_v->len;

    if (delimLen == 0) {
        if (parentLen != 0) {
            goto zeroDelimLoop;
        }
        goto createArray;
    }

    array = NULL;

    while (vmTrue) {
        srcOffs = 0;
        segStart = 0;
        count = 0;
        while (srcOffs + delimLen <= parentLen) {
            if (memcmp(parentStr + srcOffs, delimStr, delimLen) == 0) {
                segLen = srcOffs - segStart;
                if (array != NULL) {
                    elem = CHANSVmGetArrayElement(VmInst, array, count);
                    if (elem == NULL || !CHANSVmNewObject(VmInst, vmFalse, elem, CHANS_VM_OBJ_TYPE_STRING, segLen)) {
                        goto error;
                    }
                    memcpy(elem->value.string_v->str, parentStr + segStart, segLen);
                }
                count++;
                srcOffs += delimLen;
                segStart = srcOffs;
                if (count >= limit) {
                    break;
                }
            }
            else {
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
                memcpy(elem->value.string_v->str, parentStr + segStart, remaining);
            }
            count++;
        }

        if (array == NULL) {
            arrayCount = count;
            array = CHANSVmNewArrayObject(VmInst, VmReturnObj, 1, &arrayCount);
            if (array == NULL) {
                goto error;
            }
        }
        else {
            return count == arrayCount ? vmTrue : vmFalse;
        }
    }

createArray:
    array = CHANSVmNewArrayObject(VmInst, VmReturnObj, 1, &arrayCount);
    if (arrayCount != 0) {
        elem = CHANSVmGetArrayElement(VmInst, array, 0);
    } else {
        elem = NULL;
    }
    if (array != NULL && (arrayCount == 0 ||
        (elem != NULL && VmStringObjectDup(VmInst, elem, VmParentObj) != NULL))) {
        return vmTrue;
    }
    return vmFalse;

zeroDelimLoop:
    arrayCount = parentLen / 2;
    array = CHANSVmNewArrayObject(VmInst, VmReturnObj, 1, &arrayCount);
    i = 0;
    segStart = 0;
    while (i < arrayCount) {
        elem = CHANSVmGetArrayElement(VmInst, array, i);
        if (elem == NULL || !CHANSVmNewObject(VmInst, 0, elem, CHANS_VM_OBJ_TYPE_STRING, 2)) {
            goto error;
        }
        memcpy(elem->value.string_v->str, parentStr + segStart, 2);
        i++;
        segStart += 2;
    }
    return vmTrue;

error:
    return vmFalse;
}

VmMethodDefine(String, ToLowerCase) {
    if (VmStringObjectDup(VmInst, VmReturnObj, VmParentObj) != NULL) {
        u32 i = 0;
        while (i < VmReturnObj->value.string_v->len) {
            u32 ch = (u32)(u8)VmReturnObj->value.string_v->str[i] << 8 | (u8)VmReturnObj->value.string_v->str[i + 1];
            if (ch >= 0x41 && ch <= 0x5A) {
                VmReturnObj->value.string_v->str[i + 1] = (u8)(ch | 0x20);
            } else if (ch >= 0xFF21 && ch <= 0xFF3A) {
                VmReturnObj->value.string_v->str[i + 1] += 0x20;
            }
            i += 2;
        }
        return vmTrue;
    }
    return vmFalse;
}

VmMethodDefine(String, ToUpperCase) {
    if (VmStringObjectDup(VmInst, VmReturnObj, VmParentObj) != NULL) {
        u32 i = 0;
        while (i < VmReturnObj->value.string_v->len) {
            u32 ch = (u32)(u8)VmReturnObj->value.string_v->str[i] << 8 | (u8)VmReturnObj->value.string_v->str[i + 1];
            if (ch >= 0x61 && ch <= 0x7A) {
                VmReturnObj->value.string_v->str[i + 1] = (u8)(ch & 0xDF);
            } else if (ch >= 0xFF41 && ch <= 0xFF5A) {
                VmReturnObj->value.string_v->str[i + 1] -= 0x20;
            }
            i += 2;
        }
        return vmTrue;
    }
    return vmFalse;
}

CHANSVmObjHdr* CHANSVm_8145049C(CHANSVm* vm, CHANSVmObjHdr* obj, u32 arg)
{
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

    if (pVm->pActiveCtx->argc == 0) {
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
    str = (u8*)argObj->value.string_v->str;
    strLen = argObj->value.string_v->len & ~1U;
    tmpBuf = pVm->pBase;
    totalLen = 0;
    maxLitLen = 0;

    while (vmTrue) {
        strPos = 0;
        segStart = 0;
        argIdxCounter = 1;

        while (strPos < strLen) {
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
            }
            else {
                fmtBuf[0] = '%';
                litLen = 0;
                fmtBufPos = 1;
                flag = FALSE;
                strPos += 2;

                while (strPos < strLen && str[strPos] == 0) {
                    switch (str[strPos + 1] - 32) {
                        case 32: {
                            continue;
                        }
                        case 3: {
                            flag = TRUE;
                        }
                        case 0:
                        case 11:
                        case 13:
                        case 16: {
                            if (fmtBufPos + 1 >= sizeof(fmtBufData))
                                continue;
                            fmtBuf[fmtBufPos++] = str[strPos + 1];
                            strPos += 2;
                            continue;
                        }
                    }
                    break;
                }

                while (strPos < strLen && str[strPos] == 0 && str[strPos + 1] >= '0' && str[strPos + 1] <= '9') {
                    if (fmtBufPos + 1 >= sizeof(fmtBufData)) {
                        continue;
                    }
                    fmtBuf[fmtBufPos++] = str[strPos + 1];
                    strPos += 2;
                }

                if (strPos < strLen && str[strPos] == 0 && str[strPos + 1] == '.') {
                    if (fmtBufPos + 1 >= sizeof(fmtBufData)) {
                        continue;
                    }
                    fmtBuf[fmtBufPos++] = str[strPos + 1];
                    strPos += 2;

                    while (strPos < strLen && str[strPos] == 0 && str[strPos + 1] >= '0' && str[strPos + 1] <= '9') {
                        if (fmtBufPos + 1 >= sizeof(fmtBufData)) {
                            continue;
                        }
                        fmtBuf[fmtBufPos++] = str[strPos + 1];
                        strPos += 2;
                    }
                }

                while (strPos < strLen && str[strPos] == 0 &&
                       (str[strPos + 1] == 'h' || str[strPos + 1] == 'l' ||
                        str[strPos + 1] == 'L' || str[strPos + 1] == 'v')) {
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
                        continue;
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
                    }
                    else {
                        isEscaped = snprintf((char*)tmpBuf, maxSize, (char*)fmtBufData, cv->value.int_v);
                    }

                    if ((s32)isEscaped < 0) {
                        continue;
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
                        continue;
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
                        memcpy(nObj->value.string_v->str, tempObj->value.string_v->str, objLen);
                        isEscaped = (u32)nObj->value.string_v->str;
                        litLen = (u32)nObj;
                    }
                }

                common_string_format:
                    if (flag || fmtBufPos + 2 >= sizeof(fmtBufData)) {
                        continue;
                    }
                    fmtBuf[fmtBufPos++] = 'l';
                    fmtBuf[fmtBufPos++] = 's';
                    fmtBuf[fmtBufPos] = 0;

                    CHANSVmStrCpyToU16FromU8(wideFmt, (char*)fmtBuf, fmtBufPos);
                    wideFmt[fmtBufPos] = 0;

                    isEscaped = swprintf((wchar_t*)tmpBuf, halfMaxSize, wideFmt, (void*)isEscaped);
                    if ((s32)isEscaped < 0) {
                        continue;
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
            outputBuf = (u8*)obj->value.string_v->str;
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
    CHANSVmObjHdr* result;
    if (VmParentObj != NULL && VmParentObj->type == CHANS_VM_TYPE_CLASS_REF) {
        result = CHANSVm_8145049C(VmInst, VmReturnObj, 0);
        return result != NULL;
    }
    return 0;
}

const CHANSVmPropertyList VmStringPropertyTbl[] = {
    { "length", VmStringGetLength, NULL },
};
const CHANSVmMethodList VmStringMethodTbl[] = {
    { "charAt", VmStringCharAt },
    { "charCodeAt", VmStringCharCodeAt },
    { "*fromCharCode", VmStringFromCharCode },
    { "*format", VmStringFormat },
    { "indexOf", VmStringIndexOf },
    { "lastIndexOf", VmStringLastIndexOf },
    { "replace", VmStringReplace },
    { "search", VmStringSearch },
    { "slice", VmStringSplice },
    { "split", VmStringSplit },
    { "toLowerCase", VmStringToLowerCase },
    { "toUpperCase", VmStringToUpperCase },
};

vmString VmGetStrFromObjHdr(CHANSVmObjHdr* object) {
    if (object != vmNull && object->value.string_v != vmNull) {
        return object->value.string_v->str;
    }
    return vmNull;
}

int VmGetIntFromObjHdr(CHANSVmObjHdr* object) {
    if (object != vmNull && object->value.int32_v) {
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

    obj = CHANSVmNewObject(vm, vmFalse, obj, CHANS_VM_TYPE_OBJECT, size + sizeof(BlobHeader));
    if (obj != NULL) {
        cls = CHANSVmFindNativeClass(vm, VmBlobClassName);
        obj->parentCls = cls;
    }
    else {
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

    return CHANSVmCopyObject(VmInst, VmReturnObj, VmParentObj) != NULL;
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

    return CHANSVmCopyObject(VmInst, VmReturnObj, VmParentObj) != NULL;
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
    vmBoolInt result;

    if (CHANSVmCheckNativeInstance(arg, VmBlobClassName)) {
        other = (BlobHeader*)VmGetStrFromObjHdr(arg);
    } else {
        other = NULL;
    }

    if (blob == NULL || other == NULL) {
        return 0;
    }

    result = vmFalse;

    if (blob->size == other->size) {
        if (memcmp(blob->pData, other->pData, blob->size) == 0) {
            result = vmTrue;
        }
    }

    return CHANSVmSetInteger(VmInst, VmReturnObj, result) == CHANS_VM_OK;
}

VmMethodDefine(Blob, CopyRangeFrom) {
    BlobHeader* srcBlob;
    BlobHeader* destBlob;
    CHANSVmObjHdr* srcOffObj;
    CHANSVmObjHdr* srcObj;
    CHANSVmObjHdr* destOffObj;
    CHANSVmObjHdr* countObj;
    u32 srcOff;
    u32 destOff;
    u32 count;
    vmBoolInt okFlag;

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
        if ((s64)okFlag < (s64)count) {
            u32 available = destBlob->size - destOff;
            if ((s64)count < (s64)available) {
                okFlag = TRUE;
            }
        }

        if (okFlag) {
            vmBoolInt okFlag2 = FALSE;
            if ((s64)okFlag2 < (s64)count) {
                u32 available = srcBlob->size - srcOff;
                if ((s64)count < (s64)available) {
                    okFlag2 = TRUE;
                }
            }

            if (okFlag2) {
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

    if (blob == NULL) return 0;

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
        return vmFalse;
    }

    count = arg != NULL ? CHANSVm_81451314(blob, arg, blob->offset) : vmFalse;

    if (CHANSVm_81451348(blob, count) && CHANSVmNewObject(VmInst, vmFalse, VmReturnObj, CHANS_VM_OBJ_TYPE_STRING, count * 4) != NULL) {
        wchar_t* dest = (wchar_t*)VmGetStrFromObjHdr(VmReturnObj);
        u8* src;
        u32 loop_i;
        u32 destOff = 0;
        u32 i = 0;
        char* hexTbl = lbl_816976E4;

        src = blob->pData + blob->offset;
        for (loop_i = 0; loop_i < count; loop_i++) {
            u32 idx2 = i + 1;
            i += 2;
            dest[destOff] = (wchar_t)(s8)hexTbl[(u32)*src >> 4 & 0xF];
            destOff += 2;
            dest[idx2] = (wchar_t)(s8)hexTbl[(u32)*src & 0xF];
            src++;
        }
        blob->offset += count;
        return vmTrue;
    }
    return vmFalse;
}

VmMethodDefine(Blob, CalcSHA1Digest) {
    BlobHeader* blob = (BlobHeader*)VmGetStrFromObjHdr(VmParentObj);
    NETSHA1Context ctx;
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
    NETSHA1Init(&ctx);
    NETSHA1Update(&ctx, data, len);
    NETSHA1GetDigest(&ctx, digest);
    return 1;
}

VmMethodDefine(Blob, CalcRangeSHA1Digest) {
    BlobHeader* blob = (BlobHeader*)VmGetStrFromObjHdr(VmParentObj);
    CHANSVmObjHdr* arg0 = CHANSVmConvertObjectType(VmInst, CHANS_VM_OBJ_TYPE_INTEGER, CHANSVmGetArg(VmInst, 0));
    CHANSVmObjHdr* arg1 = CHANSVmConvertObjectType(VmInst, CHANS_VM_OBJ_TYPE_INTEGER, CHANSVmGetArg(VmInst, 1));
    u32 offset = 0;
    u32 size;
    u8* data;
    NETSHA1Context ctx;
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
            NETSHA1Init(&ctx);
            NETSHA1Update(&ctx, data, size);
            NETSHA1GetDigest(&ctx, digest);
            return 1;
        }
    }
    return 0;
}

VmMethodDefine(Blob, CalcMD5Digest) {
    BlobHeader* blob = (BlobHeader*)VmGetStrFromObjHdr(VmParentObj);
    NETMD5Context ctx;
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
    NETMD5Init(&ctx);
    NETMD5Update(&ctx, data, len);
    NETMD5GetDigest(&ctx, digest);
    return 1;
}

VmMethodDefine(Blob, CalcRangeMD5Digest) {
    BlobHeader* blob = (BlobHeader*)VmGetStrFromObjHdr(VmParentObj);
    CHANSVmObjHdr* arg0 = CHANSVmConvertObjectType(VmInst, CHANS_VM_OBJ_TYPE_INTEGER, CHANSVmGetArg(VmInst, 0));
    CHANSVmObjHdr* arg1 = CHANSVmConvertObjectType(VmInst, CHANS_VM_OBJ_TYPE_INTEGER, CHANSVmGetArg(VmInst, 1));
    u32 offset = 0;
    u32 size;
    u8* data;
    NETMD5Context ctx;
    u8* digest;
    CHANSVmObjHdr* newObj;

    if (blob == NULL || arg0 == NULL) {
        return 0;
    }

    if (CHANSVm_81450D14(blob, arg0->value.int_v, &offset) != 0) {
        size = CHANSVm_81451314(blob, arg1, offset);

        {
            u32 off = offset;
            if (((s64)size >= 0LL && (s64)(blob->size - off) >= (s64)size) != FALSE)
            {
                newObj = VmBlobCreateDirect(VmInst, VmReturnObj, 16);
                digest = VmBlobGetDataBufferDirect(newObj);

                if (newObj == NULL || digest == NULL) {
                    return 0;
                }

                data = blob->pData + offset;
                NETMD5Init(&ctx);
                NETMD5Update(&ctx, data, size);
                NETMD5GetDigest(&ctx, digest);
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
            if (((s64)size >= 0LL && (s64)(blob->size - off) >= (s64)size) != FALSE)
            {
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

            if (((s64)size >= 0LL && (s64)(blob->size - off) >= (s64)size) != FALSE)
            {
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
    NETHMACContext ctx;
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

    NETHMACInit(&ctx, NETGetSHA1Interface(), keyBlob->pData, keyBlob->size);
    NETHMACUpdate(&ctx, blobData, blobSize);
    NETHMACGetDigest(&ctx, digest);
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
                NETHMACContext ctx;
                u8* digest;
                CHANSVmObjHdr* newObj;
                u8* blobData;

                newObj = VmBlobCreateDirect(VmInst, VmReturnObj, 20);
                digest = VmBlobGetDataBufferDirect(newObj);

                if (keyBlob == NULL || newObj == NULL || digest == NULL) {
                    return 0;
                }

                blobData = blob->pData + offset;
                NETHMACInit(&ctx, NETGetSHA1Interface(), keyBlob->pData, keyBlob->size);
                NETHMACUpdate(&ctx, blobData, size);
                NETHMACGetDigest(&ctx, digest);
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

typedef struct {
    u32 charCode; // 0x00
    u32 size;     // 0x04
    u32 type;     // 0x08
    u32 flags;    // 0x0C
} PackFormatEntry;

static PackFormatEntry vmBlobPackFormatList[25] = {
    { 0x44, 1, 4, 1 },   // 'D'
    { 0x78, 1, 5, 0 },   // 'x'
    { 0x63, 1, 6, 1 },   // 'c'
    { 0x43, 1, 7, 1 },   // 'C'
    { 0x73, 2, 6, 1 },   // 's'
    { 0x53, 2, 7, 1 },   // 'S'
    { 0x69, 4, 6, 1 },   // 'i'
    { 0x49, 4, 7, 1 },   // 'I'
    { 0x6C, 4, 6, 1 },   // 'l'
    { 0x4C, 4, 7, 1 },   // 'L'
    { 0x71, 8, 6, 1 },   // 'q'
    { 0x6E, 2, 7, 1 },   // 'n'
    { 0x4E, 4, 7, 1 },   // 'N'
    { 0x76, 2, 9, 1 },   // 'v'
    { 0x56, 4, 9, 1 },   // 'V'
    { 0x61, 1, 10, 1 },  // 'a'
    { 0x77, 2, 12, 1 },  // 'w'
    { 0x5A, 1, 11, 1 },  // 'Z'
    { 0x57, 2, 13, 1 },  // 'W'
    { 0x48, 1, 14, 1 },  // 'H'
    { 0x23, 1, 3, 0 },   // '#'
    { 0x20, 1, 2, 0 },   // ' '
    { 0x09, 1, 2, 0 },   // '\t'
    { 0x0D, 1, 2, 0 },   // '\r'
    { 0x0A, 1, 2, 0 },   // '\n'
};

static u32 vmBlobParsePackFormatString(u32* out_nextPos, u32* out_elemType, u32* out_elemSize, u32* out_paramValue, const wchar_t* fmtStr, u32 fmtLen, u32 curPos) {
    wchar_t curChar;
    u32 elemType;
    u32 elemSize;
    u32 flags;
    s32 paramValue;
    u32 hasParam;
    u32 i;
    const PackFormatEntry* p;

    elemSize = 1;
    flags = 0;
    paramValue = 0;

    while (curPos < fmtLen) {
        curChar = fmtStr[curPos];
        p = vmBlobPackFormatList;

        for (i = 0; i < 25; i++, p++) {
            if (curChar == p->charCode) {
                elemType = p->type;
                elemSize = p->size;
                flags = p->flags;
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
                if (flags & 1) {
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

static vmBoolInt VmBlobPackCommon(CHANSVm* VmInst, CHANSVmObjHdr* VmParentObj, CHANSVmObjHdr* VmReturnObj, vmU32 flag) {
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
    CHANSVmExecutionCtx* execCtx;
    u32 nextPos;
    u32 elemSize;
    s32 paramValue;
    u32 packBuf[2];

    parentBlob = (BlobHeader*)VmGetStrFromObjHdr(VmParentObj);
    argStr = CHANSVmConvertObjectType(VmInst, CHANS_VM_OBJ_TYPE_STRING, CHANSVmGetArg(VmInst, 0));
    fmtStr = (const wchar_t*)VmGetStrFromObjHdr(argStr);
    fmtLen = (u32)VmGetIntFromObjHdr(argStr) / 2;
    argArr = CHANSVmConvertObjectType(VmInst, CHANS_VM_TYPE_ARRAY, CHANSVmGetArg(VmInst, 1));

    if (fmtStr == NULL) {
        return vmFalse;
    }

    if (flag == 0 && parentBlob == NULL) {
        goto error;
    }

    argCount = 0;
    fmtPos = 0;
    totalSize = flag != 0 ? 0 : parentBlob->offset;

    while (vmTrue) {
        nextPos = 0;
        elemSize = 1;
        paramValue = 1;
        fmtPos = vmBlobParsePackFormatString(&nextPos, (void*)&elemType, (void*)&elemSize, (void*)&paramValue, fmtStr, fmtLen, fmtPos);

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
                        execCtx = ((CHANSVmPrivate*)VmInst)->pActiveCtx;
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

    while (vmTrue) {
        nextPos = 0;
        elemSize = 1;
        paramValue = 1;
        fmtPos = vmBlobParsePackFormatString(&nextPos, (void*)&elemType, (void*)&elemSize, (void*)&paramValue, fmtStr, fmtLen, fmtPos);

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
                        execCtx = ((CHANSVmPrivate*)VmInst)->pActiveCtx;
                        count = execCtx->argc - argCount - 1;
                    }
                    if (count < 0) {
                        goto error;
                    }
                } else {
                    count = paramValue;
                }

                if (!CHANSVm_81451348(destBlob, (u32)(elemSize * count))) {
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

                if (!CHANSVm_81451348(destBlob, (u32)(elemSize * count))) {
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
    return vmTrue;

error:
    return vmFalse;
}

static u64 CHANSVm_814540E0(u32 upper, u32 lower)
{
    // Read U64 and byte-swap
    u64 x = (u64)upper << 32 | lower;
    return x >> 56 & 0x00000000000000ffULL |
           x >> 40 & 0x000000000000ff00ULL |
           x >> 24 & 0x0000000000ff0000ULL |
           x >> 8  & 0x00000000ff000000ULL |
           x << 8  & 0x000000ff00000000ULL |
           x << 24 & 0x0000ff0000000000ULL |
           x << 40 & 0x00ff000000000000ULL |
           x << 56 & 0xff00000000000000ULL;
}

VmMethodDefine(Blob, Create) {
    return VmBlobPackCommon(VmInst, VmParentObj, VmReturnObj, vmTrue);
}

VmMethodDefine(Blob, Pack) {
    return VmBlobPackCommon(VmInst, VmParentObj, VmReturnObj, vmFalse);
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

    while (vmTrue) {
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

    while (vmTrue) {
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
                                    setVal = (u32)(s32)(s8)*(u8*)bufAreaBase;
                                    valHigh = (s32)setVal >> 31;
                                    goto merge_point;
                                }
                                case 2: {
                                    setVal = (u32)(s32)(s16)*(u16*)bufAreaBase;
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
                        while (vmTrue) {
                            if (remaining == 0) {
                                break;
                            }
                            remaining--;
                            if ((strData[0] << 8 | strData[1]) == 0) {
                                break;
                            }
                            strData += 2;
                            i++;
                        }
                        ((u32*)arrElem->value.string_v)[1] = i * 2;
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
                if (arrElem == NULL || CHANSVmNewObject(VmInst, vmFalse, arrElem, CHANS_VM_OBJ_TYPE_STRING, count * 2) == NULL) {
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
    { "offset", VmBlobGetOffset, VmBlobSeek },
    { "length", VmBlobGetLength, VmBlobSetLength },
};
const CHANSVmMethodList VmBlobMethodTbl[] = {
    { "*create", VmBlobCreate },
    { "seek", VmBlobSeek },
    { "skip", VmBlobSkip },
    { "isEqual", VmBlobIsEqual },
    { "getLength", VmBlobGetLength },
    { "setLength", VmBlobSetLength },
    { "fill", VmBlobFill },
    { "getU8", VmBlobGetU8 },
    { "getU16", VmBlobGetU16 },
    { "getU32", VmBlobGetU32 },
    { "getS8", VmBlobGetS8 },
    { "getS16", VmBlobGetS16 },
    { "getS32", VmBlobGetS32 },
    { "getS64", VmBlobGetS64 },
    { "setU8", VmBlobSetU8 },
    { "setU16", VmBlobSetU16 },
    { "setU32", VmBlobSetU32 },
    { "setS8", VmBlobSetS8 },
    { "setS16", VmBlobSetS16 },
    { "setS32", VmBlobSetS32 },
    { "setS64", VmBlobSetS64 },
    { "getString", VmBlobGetString },
    { "getWString", VmBlobGetWString },
    { "setString", VmBlobSetString },
    { "setWString", VmBlobSetWString },
    { "getBlob", VmBlobGetBlob },
    { "setBlob", VmBlobSetBlob },
    { "getHexString", VmBlobGetHexString },
    { "copyRangeFrom", VmBlobCopyRangeFrom },
    { "calcSHA1Digest", VmBlobCalcSHA1Digest },
    { "calcMD5Digest", VmBlobCalcMD5Digest },
    { "calcCRC16", VmBlobCalcCRC16 },
    { "calcCRC32", VmBlobCalcCRC32 },
    { "calcHMAC", VmBlobCalcHMAC },
    { "calcRangeSHA1Digest", VmBlobCalcRangeSHA1Digest },
    { "calcRangeMD5Digest", VmBlobCalcRangeMD5Digest },
    { "calcRangeCRC16", VmBlobCalcRangeCRC16 },
    { "calcRangeCRC32", VmBlobCalcRangeCRC32 },
    { "calcRangeHMAC", VmBlobCalcRangeHMAC },
    { "pack", VmBlobPack },
    { "unpack", VmBlobUnpack },
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

CHANSVmObjHdr* CHANSVmNewImageObject(CHANSVm* vm, CHANSVmObjHdr* object, vmPtr srcData, vmU16 width, vmU16 height, s32 format) {
    CHANSVmImage* image;
    u32 bpp;
    u32 datasize;
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
        default: {
            bpp = 32;
            break;
        }
    }

    datasize = ((u32)width * (u32)height * bpp) / 8;
    allocSize = (datasize & ~(-(VmImageAllocCallback != NULL))) + 0x20;

    object = CHANSVmNewObject(vm, vmFalse, object, CHANS_VM_TYPE_OBJECT, allocSize);
    if (object == NULL || CHANSVmSetObjectAsNativeInstance(vm, object, NULL, "Image") != CHANS_VM_OK) {
        goto error;
    }

    image = (CHANSVmImage*)((u32*)object->value.ptr_v)[0];
    image->width = width;
    image->height = height;
    image->format = (u8)format;
    image->bpp = (u8)bpp;

    if (datasize != 0) {
        if (VmImageAllocCallback != NULL) {
            image->data = VmImageAllocCallback(vm, datasize);
        } else {
            image->data = (u8*)image + 0x20;
        }
        if (image->data == 0) {
            goto error;
        }
        image->size = datasize;
        if (srcData != NULL) {
            memcpy(image->data, srcData, datasize);
            DCStoreRange(image->data, datasize);
        }
    }

    return object;

error:
    return NULL;
}

VmCtorDefine(Image) {
    vmBoolInt result = vmFalse;
    CHANSVmImage* image = *VmParentObj->value.ptr_v;

    if (VmImageCtorCallback != vmNull) {
        if (image->data != 0 && image->size != 0) {
            result = VmImageCtorCallback(VmInst);
        }
    } else {
        result = vmTrue;
    }

    return result;
}

const CHANSVmPropertyList VmImagePropertyTbl[] = {
    { "width", VmImageWidth, NULL },
    { "height", VmImageHeight, NULL },
    { "format", VmImageFormat, NULL },
};

static vmBoolInt VmWinEmuWrite(CHANSVm* vm, CHANSVmObjHdr* parent, CHANSVmObjHdr* ret) {
    CHANSVmObjHdr* strObj;
    u32 offset;
    u32 totalLength;
    u8 buf[0x80];
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
            outLen = 0x80;
            inLen = (remaining < 0x80 ? remaining : 0x80) / 2;

            result = ENCConvertStringUnicodeToSjis(buf, &outLen, (u16*)((u8*)strObj->value.wstring_v->str + offset), &inLen);
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

const CHANSVmMethodList VmWinEmuMethodTbl[] = {
    "write", VmWinEmuWrite
};

static CHANSVmErr VmPushFuncReturnInfo(CHANSVm* vm, u32 argCount, u32 totalSlots, u32 headerCount);

CHANSVmErr CHANSVmInit(CHANSVm* vm, vmPtr work, vmU32 size) {
    CHANSVmPrivate* pVm = (CHANSVmPrivate*)vm;
    u32 alignedBase;
    u32 alignedSize;
    u32 exeSize;
    u32 exeStart;
    vmS32 result;
    CHANSVmNativeClass* cls;

    memset(vm, 0, sizeof(CHANSVm));

    alignedBase = VM_ALIGN((u32)work);
    alignedSize = VM_ALIGN_DOWN((u32)((u8*)work + size)) - alignedBase;

    pVm->exeStart = alignedBase;
    pVm->exeSize = alignedSize;
    pVm->minWorkSize = 0x820;
    if (alignedSize < pVm->minWorkSize) {
        return CHANS_VM_ERR_NO_MEMORY;
    }

    exeStart = alignedBase + 0x820;
    exeSize = alignedSize - 0x820;

    pVm->pBase = (vmU8*)alignedBase;
    pVm->exeStart = exeStart;
    pVm->exeSize = exeSize;
    pVm->pHeapStart = (vmU32*)exeStart;
    pVm->pHeapEnd = (CHANSVmObjHdr*)(exeStart + exeSize);
    pVm->pFreeExeBuf = (vmU8*)exeStart;
    pVm->pObjStackTopBuf = (vmU8*)(exeStart + exeSize);

    result = VmPushFuncReturnInfo(vm, 0, 0, 0);
    if (result == CHANS_VM_OK) {
        CHANSVmErr ok;
        CHANSVmErr ret;

        /* Array class */
        cls = CHANSVmAddNativeClass2(vm, VmArrayClassName, VmArrayCtor, VmArrayDtor, VmArrayCtor);
        if (cls != NULL &&
            (VmArrayPropertyTbl == NULL || CHANSVmAddNativePropertyAccessorsList(vm, cls, VmArrayPropertyTbl, CHANSVmPropertyCount(VmArrayPropertyTbl)) == CHANS_VM_OK) &&
            (VmArrayMethodTbl == NULL || CHANSVmAddNativeMethodList(vm, cls, VmArrayMethodTbl, CHANSVmMethodCount(VmArrayMethodTbl)) == CHANS_VM_OK)) {
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
        cls = CHANSVmAddNativeClass2(vm, "Date", VmDateCtor, (CHANSVmFunction)0, VmDateDtor);
        if (cls == NULL) {
            ok = FALSE;
        } else {
            ok = (CHANSVmAddNativeMethodList(vm, cls, VmDateMethodTbl, CHANSVmMethodCount(VmDateMethodTbl)) == CHANS_VM_OK);
        }
        if (!ok)
            goto class_fail;

        /* Math class */
        if (CHANSVmNewBuiltinObject(vm, "@Math", NULL, NULL, NULL,
            "Math", NULL,
            VmMathPropertyTbl, CHANSVmPropertyCount(VmMathPropertyTbl),
            VmMathMethodTbl, CHANSVmMethodCount(VmMathMethodTbl)) == 0) {
            goto class_fail;
            }

        /* String class */

        if (CHANSVmNewBuiltinObject(vm, VmStringClassName, VmStringCtor, NULL, VmStringCtor, NULL, NULL, VmStringPropertyTbl, CHANSVmPropertyCount(VmStringPropertyTbl),
                                    VmStringMethodTbl, CHANSVmMethodCount(VmStringMethodTbl)) == 0) {
            goto class_fail;
         }
        cls = CHANSVmFindNativeClass(vm, VmStringClassName);
        if (cls != NULL) {
            pVm->pStringCls = cls;
            ok = TRUE;
        } else {
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
        if (!ok)
            goto class_fail;

        /* Image class */
        VmImageAllocCallback = NULL;
        VmImageCtorCallback = NULL;
        if (CHANSVmNewBuiltinObject(vm, "Image", NULL, VmImageCtor, NULL,
            NULL, NULL,
            VmImagePropertyTbl, CHANSVmPropertyCount(VmImagePropertyTbl),
            NULL, 0) == 0) {
            goto class_fail;
        }

        /* Screen (@WinEmu) class */
        if (CHANSVmNewBuiltinObject(vm, "@WinEmu", NULL, NULL, NULL,
            "document", NULL,
            NULL, 0,
            (CHANSVmMethodList*)&VmWinEmuMethodTbl, CHANSVmMethodCount(VmWinEmuMethodTbl)) != 0) {
            goto cleanup;
        }

        class_fail:
            result = CHANS_VM_ERR_NATIVE_METHOD_INIT;
    }
cleanup:
    memset(&pVm->accumulator, 0, sizeof(CHANSVmObjHdr));
    return result;
}

vmPtr CHANSVmGetFreeExeBufp(CHANSVm* vm) {
    CHANSVmPrivate* pVm = (CHANSVmPrivate*)vm;

    if (pVm->bAllocBlocked != vmFalse || pVm->pFreeExeBuf >= pVm->pObjStackTopBuf) {
        return vmNull;
    }
    return pVm->pFreeExeBuf;
}

vmU32 CHANSVmGetFreeExeSize(CHANSVm* vm) {
    CHANSVmPrivate* pVm = (CHANSVmPrivate*)vm;

    vmS32 size = (vmU32)pVm->pObjStackTopBuf - (vmU32)pVm->pFreeExeBuf;
    if (pVm->bAllocBlocked != vmFalse || size < 0) {
        return 0;
    }
    return size;
}

void CHANSConvertModuleOfsToPtr(CHANSVmModule* ptr);

CHANSVmErr CHANSVmAddExe(CHANSVm* vm, vmS32 unk0, CHANSVm* execCtx) {
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
    header = (CHANSVmModule*)(mod + 1);
    header->next = NULL;
    header->regionSize = size - sizeof(ModuleHeader);
    header->pModule = mod;

    if ((u32)header->pData < 0x60 ||
        header->regionSize < (u32)header->pData ||
        header->regionSize < header->codeSize) {
        goto fail_format;
    }
    maxEnd = (u32)header->pData + header->codeSize;
    if (header->regionSize < maxEnd) {
        goto fail_format;
    }

#define CHECK_TABLE_REGION(countField, offsField, entrySize) \
    cnt = countField; \
    if (cnt) { \
        ofs = (u32)offsField; \
        if (ofs < maxEnd || header->regionSize < ofs) { \
            goto fail_format; \
        } \
        maxEnd = ofs + cnt * entrySize; \
        if (header->regionSize < maxEnd) { \
            goto fail_format; \
        } \
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
        }
        else {
            goto fail_format;
        }
    }

    {
        CHANSVmExecutionCtx* ctx = pVm->pContextListHead;
        u32 depth = 1;

        if (ctx == NULL) {
            pVm->pContextListHead = (CHANSVmExecutionCtx*)header;
        } else {
            while (ctx->next != vmNull) {
                ctx = ctx->next;
                depth++;
            }
            ctx->next = (CHANSVmExecutionCtx*)header;
        }
        pVm->depth = depth;
    }

    if (header->moduleCount) {
        header->pModuleTbl = CHANSVmAlloc(vm, VM_ALIGN(header->moduleCount * sizeof(ModuleEntry)));
    }

    if (header->methodCount) {
        header->pMethodTbl = CHANSVmAlloc(vm, VM_ALIGN(header->methodCount * sizeof(u32)));
    }

    if (header->stringCount) {
        header->pStringTbl = CHANSVmAlloc(vm, VM_ALIGN(header->stringCount * sizeof(StringTblEntry)));
    }

    if (header->moduleCount && header->pModuleTbl == NULL ||
        header->methodCount && header->pMethodTbl == NULL ||
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
                if ((u8*)(methodTable[i].nameLength + (vmU32)methodTable + methodTable[i].offset) <= (u8*)(header->regionSize + (vmU32)header)) {
                    CHANSVmObjHdr* method = (CHANSVmObjHdr*)CHANSVmAddNativeMethodName(vm, (const char*)((u8*)methodTable + methodTable[i].offset), methodTable[i].nameLength);
                    if (method) {
                        header->pMethodTbl[i] = (vmU32)method;
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
            u32 len = (u32)strPtr[0] << 8 | (u32)strPtr[1];
            strPtr += 2;

            if ((len & 1) == 0) {
                if (strPtr + len <= (u8*)(header->regionSize + (vmU32)header)) {
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

static void VmOffs00U32ToPtr(vmPtr ptr) {
    if (*(vmU32*)ptr != 0) {
        *(vmU32*)ptr += (vmU32)ptr;
    }
}

static void VmOffsU32ToPtr(vmPtr ptr, vmPtr offset) NO_INLINE {
    if (*(vmU32*)ptr != 0) {
        *(vmU32*)ptr += (vmU32)offset;
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
    CHANSVmExecutionCtx* ctx = pVm->pActiveCtx;
    CHANSVmModule* dbg = ctx->pDbg;
    s32 remaining;
    s32 idx;

    if (id < dbg->moduleCount) {
        data = (CHANSVmObjHdr*)dbg->pModuleTbl;
        data += id;
        if (data->type != CHANS_VM_TYPE_GLOBAL_REF) {
            return data;
        }
        return *(CHANSVmObjHdr**)data;
    }

    remaining = (s32)id - (s32)ctx->frameBase;
    if (remaining >= 0) {
        if (remaining >= (s32)ctx->headerCount) {
            remaining -= (s32)ctx->headerCount;
            idx = (s32)ctx->argc - 1 - remaining;
            if (idx >= 0) {
                data = (CHANSVmObjHdr*)ctx->pArgv;
                return &data[idx];
            }
        } else {
            return &ctx->headers[remaining];
        }
    }

    return data;
}

#define FRAME_ARENA_SIZE 8192

static CHANSVmErr VmPushFuncReturnInfo(CHANSVm* vm, u32 argCount, u32 totalSlots, u32 headerCount) {
    CHANSVmPrivate* pVm = (CHANSVmPrivate*)vm;
    CHANSVmExecutionCtx* block;
    CHANSVmErr result;
    vmU8* objStackTopBuf;
    u32 size;
    u32 i;

    result = CHANS_VM_ERR_PUSH_FUNC_RETURN_INFO;
    if (pVm->pActiveCtx != NULL && pVm->pActiveCtx->stackDepth < argCount) {
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
            if ((u32)pVm->pActiveCtx->stackDepth < -1) {
                pVm->pActiveCtx->stackDepth++;
            }
            else {
                return CHANS_VM_ERR_PUSH_FUNC_RETURN_INFO;
            }
        }

        pVm->pObjStackTopBuf = objStackTopBuf;
        CHANSVmUpdateSmallestFreeHeapSize(vm);

        size = headerCount * sizeof(CHANSVmObjHdr) + sizeof(CHANSVmExecutionCtx);
        block = NULL;

        if (size != 0 && (size & 7) == 0) {
            if ((vmU32)pVm->pObjStackTopBuf - (vmU32)pVm->pFreeExeBuf >= size) {
                block = (CHANSVmExecutionCtx*)(pVm->pObjStackTopBuf - size);
                pVm->pObjStackTopBuf = (vmU8*)block;
                CHANSVmUpdateSmallestFreeHeapSize(vm);
                memset(block, 0, size);
            }
        }

        if (block == NULL) {
            goto return_result;
        }

        if (pVm->pActiveCtx != NULL) {
            block->pDbg = pVm->pActiveCtx->pDbg;
            block->pc = pVm->pActiveCtx->pc;
            block->next = pVm->pActiveCtx;
        }

        pVm->pActiveCtx = block;
        block->pArgv = (vmWString*)objStackTopBuf;
        block->argc = argCount;
        block->totalSlots = totalSlots;
        block->headerCount = headerCount;
        block->frameBase = (vmU16)(FRAME_ARENA_SIZE - (headerCount + totalSlots));

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

    for (i = 0; i < pVm->pActiveCtx->headerCount; i++) {
        ret = CHANSVmDeleteObject(vm, &pVm->pActiveCtx->headers[i]);
        if (ret != CHANS_VM_OK) {
            return ret;
        }
    }

    while (pVm->pActiveCtx->stackDepth != 0) {
        ret = CHANSVmPopObject(vm, NULL);
        if (ret != CHANS_VM_OK) {
            return ret;
        }
    }

    pVm->pObjStackTopBuf = (vmU8*)pVm->pActiveCtx->pArgv;

    if (val != 0) {
        obj = &pVm->accumulator;
    }

    pVm->pActiveCtx->stackDepth = pVm->pActiveCtx->argc;
    while (pVm->pActiveCtx->stackDepth != 0) {
        ret = CHANSVmPopObject(vm, obj);
        if (ret != 0) {
            return ret;
        }
    }

    if (pVm->pActiveCtx->next != vmNull) {
        if (pVm->pActiveCtx->next->stackDepth < (vmU32)pVm->pActiveCtx->argc) {
            ret = CHANS_VM_ERR_RETURN;
        } else {
            pVm->pActiveCtx->next->stackDepth -= pVm->pActiveCtx->argc;
            ret = CHANS_VM_OK;
        }
    }
    else {
        for (i = 0; i < pVm->pActiveCtx->pDbg->moduleCount; i++) {
            if (CHANSVmDeleteObject(vm, CHANSVm_81455654(vm, i)) != CHANS_VM_OK) {
                return CHANS_VM_ERR_RETURN;
            }
        }

        node = pVm->pGlobalObjList;
        while (node != NULL) {
            node->hdr.flags.raw &= 0x7F;
            if (CHANSVmDeleteObject(vm, (CHANSVmObjHdr*)node) != CHANS_VM_OK) {
                return CHANS_VM_ERR_RETURN;
            }

            CHANSVmFree(vm, node, VM_ALIGN(node->nameLength + sizeof(GlobalObjListNode)));
            node = node->next;
            pVm->pGlobalObjList = node;
        }

        ret = CHANS_VM_ERR_EXIT;
    }

    pVm->pActiveCtx = (CHANSVmExecutionCtx*)(vmU32)pVm->pActiveCtx->next;
    return ret;
}

CHANSVmErr CHANSVmLinkModules(CHANSVm* vm, vmS32 unk0) {
    CHANSVmPrivate* pVm = (CHANSVmPrivate*)vm;
    CHANSVmModule* module;
    u32 modIdx;
    u32 i;

    (void)unk0;

    if (!pVm->bAllocBlocked && pVm->depth != 0) {
        pVm->bAllocBlocked = vmTrue;
        module = (CHANSVmModule*)pVm->pContextListHead;
        modIdx = 0;

        while (modIdx < (u32)pVm->depth) {
            CHANSVmErr result;
            DispatchEntry* dispatchTable;
            GlobalObjListNode* gIter;
            CHANSVmNativeClass* nIter;

            pVm->pActiveCtx->pDbg = module;
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
                    module->pModuleTbl[i].type = CHANS_VM_TYPE_GLOBAL_REF;
                    module->pModuleTbl[i].pGlobalObj = gIter;
                    module->pModuleTbl[i].flags = 0x80;
                }
            }
            result = 0;
        post_pass1:
            if (result) {
                return result;
            }

            dispatchTable = module->pDispatchTbl;
            for (nIter = pVm->pNativeClasses; nIter != NULL; nIter = nIter->next) {
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

                    if (memcmp(nIter->name, addr, nIter->nameLength) != 0) {
                        continue;
                    }

                    if (module->pModuleTbl[i].type) {
                        result = CHANS_VM_ERR_RESOLVE_NATIVE_METHOD_CALL;
                        goto post_pass2;
                    }
                    module->pModuleTbl[i].type = CHANS_VM_TYPE_CLASS_REF;
                    module->pModuleTbl[i].pNativeClass = nIter;
                    module->pModuleTbl[i].flags = 0x80;
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
                obj->type = CHANS_VM_TYPE_METHOD_REF;
                obj->value.bool_v = (vmBoolInt)i;
                obj->flags.raw = 0x80;
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

            module = module->next;
            modIdx++;
        }

        pVm->pHeapStart = (u32*)pVm->pFreeExeBuf;
        pVm->pHeapEnd = (CHANSVmObjHdr*)pVm->pObjStackTopBuf;
        pVm->minFreeHeapSize = (vmU32)pVm->pObjStackTopBuf - (vmU32)pVm->pFreeExeBuf;
        memset(&pVm->accumulator, 0, sizeof(CHANSVmObjHdr));
        pVm->pActiveCtx->pDbg = (CHANSVmModule*)pVm->pContextListHead;
        pVm->pActiveCtx->pc = 1;
        return CHANS_VM_OK;
    }
    return CHANS_VM_ERR_LINK_FAILED;
}

static u8* VmGetOperand(CHANSVm* vm, u32 num, u32 offset) {
    CHANSVmPrivate* pVm = (CHANSVmPrivate*)vm;
    u32 pc = pVm->pActiveCtx->pc;
    CHANSVmModule* dbg = pVm->pActiveCtx->pDbg;
    u32 addr;

    if (pc + offset >= dbg->codeSize) {
        return NULL;
    }

    addr = pc + num;
    return (u8*)dbg->pData + addr;
}

static CHANSVmErr VmLoadImmInteger(CHANSVm* vm, CHANSVmObjHdr* obj, u8* buf, s32 count) {
    u32 low = 0;
    u32 high = 0;

    while (count != 0) {
        u32 byte = *buf;
        u32 newLow = (low << 8) | byte;
        u32 newHigh = (high << 8) | (low >> 24);
        low = newLow;
        high = newHigh | ((s32)byte >> 31);
        buf++;
        count--;
    }

    return CHANSVmSetInteger(vm, obj, ((s64)high << 32) | low);
}

CHANSVmErr VmStore(CHANSVm* vm, CHANSVmObjHdr* dest, CHANSVmObjHdr* src) {
    CHANSVmErr ret;
    if (dest == NULL || src == NULL) {
        return CHANS_VM_ERR_OBJECT_NOT_FOUND;
    }
    if ((dest->flags.raw & 0x80) != 0) {
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
        case CHANS_VM_TYPE_ARRAY: {
            target = pVm->pArrayCls;
            if (target == 0) {
                return CHANS_VM_ERR_INVALID_OBJECT;
            }
            break;
        }
        case CHANS_VM_TYPE_CLASS_REF:
        case CHANS_VM_TYPE_OBJECT: {
            target = acc->parentCls;
            if (target == NULL) {
                return CHANS_VM_ERR_INVALID_OBJECT;
            }
            break;
        }
        case CHANS_VM_TYPE_METHOD_REF: {
            CHANSVmExecutionCtx* ec = pVm->pActiveCtx;
            CHANSVmModule* dbg = ec->pDbg;
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
        u32 pc = pVm->pActiveCtx->pc;

        newPc = pc + instructionSize;
        pConstObj = (void*)((u8*)pVm->pActiveCtx->pDbg->pData + pc);

        if (newPc < pc || newPc > pVm->pActiveCtx->pDbg->codeSize) {
            return CHANS_VM_ERR_CODE_RANGE;
        }
        if (target == 0) {
            pVm->pActiveCtx->pc = newPc;
        }
    }

    memset(&localBuf, 0, sizeof(CHANSVmObjHdr));

    if (callType == CHANS_VM_CALL_TYPE_FUNCTION) {
        target = NULL;
    }
    else
    {
        CHANSVmExecutionCtx* ec = pVm->pActiveCtx;
        u8 byte1 = *((u8*)pConstObj + 1);
        u8 byte2 = *((u8*)pConstObj + 2);
        u32 methodId = (byte2) | (byte1 << 8);
        u32 methodCount;

        if (ec->pDbg->pMethodTbl == NULL) {
            goto error_check;
        }

        methodCount = ec->pDbg->methodCount;
        if (methodId >= methodCount || methodId != 0 && target == 0) {
            goto error_check;
        }

        if (methodId != 0) {
            retVal = ec->pDbg->pMethodTbl[methodId];
        }
    }

    // If callType == PROP_GET or PROP_SET
    if (callType - CHANS_VM_CALL_TYPE_PROP_GET <= 1) {
        CHANSVmNativeProperty* entry;
        u32 isMethodNull = retVal == 0;
        u32 isSet = callType == CHANS_VM_CALL_TYPE_PROP_SET;
        entry = target->nativeProperties;
        pushDepth = isSet;

        while (vmTrue) {
            if (isMethodNull != 0 || entry == 0) {
                return CHANS_VM_ERR_NO_SUCH_PROPERTY;
            }
            if (entry->index == retVal) {
                if (acc->type == CHANS_VM_TYPE_CLASS_REF) {
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
            entry = entry->next;
        }
    }
    else {
        pushDepth = *((u8*)pConstObj + instructionSize - 1);
        if (retVal != 0) {
            CHANSVmNativeMethod* node = target->nativeMethods;

            while (vmTrue) {
                if (node == NULL) {
                    return CHANS_VM_ERR_NO_SUCH_METHOD;
                }
                if (node->index == retVal) {
                    if (acc->type == CHANS_VM_TYPE_CLASS_REF && node->flag == 0) {
                        return CHANS_VM_ERR_FORBIDDEN_CLASS_METHOD;
                    }
                    funcPtr = node->func;
                    break;
                }
                node = node->next;
            }
            retVal = 0;
        }
        else if (target != NULL) {
            if (acc->type != CHANS_VM_TYPE_CLASS_REF) {
                if (callType == CHANS_VM_CALL_TYPE_METHOD) {
                    return CHANS_VM_ERR_NO_SUCH_METHOD;
                }
                return CHANS_VM_ERR_NO_SUCH_FUNCTION;
            }
            if (ctorFlag != vmFalse) {
                localBuf.parentCls = target;
                localBuf.type = CHANS_VM_TYPE_OBJECT;
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
                if (ctorFlag != vmFalse) {
                    retVal = CHANS_VM_ERR_NEW;
                }
            } else {
                retVal = VmReturnWithValue(vm, callType == CHANS_VM_CALL_TYPE_PROP_SET ? 1 : 0);
                if (retVal == CHANS_VM_OK && callType != CHANS_VM_CALL_TYPE_PROP_SET) {
                    retVal = CHANSVmDeleteObject(vm, acc);
                    if (retVal == CHANS_VM_OK) {
                        memcpy(acc, &localBuf, sizeof(CHANSVmObjHdr));
                        acc->flags.raw &= 0x7F;
                        memset(&localBuf, 0, sizeof(CHANSVmObjHdr));
                    }
                }
            }

            if (retVal == CHANS_VM_OK) {
                pVm->pActiveCtx->pc = newPc;
            }
        } else {
            u32 codeAddr = pVm->pActiveCtx->pDbg->pNameTbl[(u32)acc->value.int32_v].codeAddr;

            if (codeAddr < 1 || codeAddr >= pVm->pActiveCtx->pDbg->codeSize) {
                return CHANS_VM_ERR_CODE_RANGE;
            }

            pVm->pActiveCtx->pc = codeAddr;
            retVal = CHANSVmDeleteObject(vm, acc);
        }
    }

return_label:
    return retVal;
}

void CHANSVmSetSignal(CHANSVm* vm, vmBool* signal) {
    CHANSVmPrivate* pVm = (CHANSVmPrivate*)vm;

    pVm->pbSignalPending = signal;
    pVm->bSignalUpdated = vmTrue;
}

CHANSVmErr CHANSVmStep(CHANSVm* vm, int stepCount) {
    // TODO: needs cleanup
    CHANSVmPrivate* pVm = (CHANSVmPrivate*)vm;
    CHANSVmObjHdr* pConstObj;
    u32 cZero;
    u32 cNeg2;
    double cHi;
    double cLo;
    CHANSVmObjHdr* stackPtr;
    CHANSVmErr result;
    CHANSVmObjHdr tmpObj;
    u32 etypes[8];
    u32 _pad[4];
    CHANSVmObjHdr tmpCopyObj;

    pConstObj = (CHANSVmObjHdr*)&CHANSVmConstStringObjectUndefined;

    if (stepCount == 0) {
        stepCount = 1;
    }
    memset(&tmpObj, 0, sizeof(tmpObj));
    /* force etypes address computation */
    cHi = 0.0;
    cZero = 0;
    cNeg2 = -2;
    cLo = 4294967294.0;
    stackPtr = &tmpCopyObj;
    _pad[0] = 0;
    _pad[1] = 0;
    _pad[2] = 0;
    _pad[3] = 0;

    while (stepCount-- != 0) {
        u32 step;
        u32 opcodeVal;
        u8* operandBuf;
        u64 tmp64;
        u32 unk_r25;
        u32 unk_r26;
        s32 intTemp;
        u32 uintTemp;
        s32 tmpCmp;
        CHANSVmObjHdr* foundObj;

        if (pVm->bSignalUpdated != vmFalse && pVm->bSignalBlocked == vmFalse) {
            pVm->bSignalUpdated = vmFalse;
            return CHANS_VM_ERR_SIGNAL;
        }

        if (pVm->pActiveCtx == NULL) goto error_code_range;
        if (pVm->pActiveCtx->pDbg == NULL) goto error_code_range;
        if (pVm->pActiveCtx->pc < 1) goto error_code_range;
        if (pVm->pActiveCtx->pc < pVm->pActiveCtx->pDbg->codeSize) goto codesize_ok;
        return CHANS_VM_ERR_CODE_RANGE;
codesize_ok:
        if ((u32)pVm->pFreeExeBuf < (u32)pVm->pHeapStart) goto error_3e2;
        if ((u32)pVm->pHeapEnd >= (u32)pVm->pObjStackTopBuf) goto range_ok;
        return CHANS_VM_ERR_HEAP_RANGE;
range_ok:
        opcodeVal = *((u8*)pVm->pActiveCtx->pDbg->pData + pVm->pActiveCtx->pc);
        if (pVm->bSuspendStep != vmFalse) {
            opcodeVal = 0;
        }

        if ((opcodeVal & 0xc0) == 0) {
            u32 unk_r23;
            u32 unk_r19;
            CHANSVmObjHdr* leftOp;
            CHANSVmObjHdr* rightOp;
            CHANSVmErr (*opFunc)(CHANSVm*, int, CHANSVmObjHdr*, CHANSVmObjHdr*, CHANSVmObjHdr*);
            step = 1;
            switch (opcodeVal) {

            case 0x18:
                result = 1;
                goto shared_load_imm;

            case 0x27:
                result = 2;
                goto shared_load_imm;

            case 0x28:
                result = 4;
                goto shared_load_imm;

            case 0x29:
                result = 8;

shared_load_imm:
                step = result + 1;
                operandBuf = VmGetOperand(vm, 1, step);
                result = VmLoadImmInteger(vm, &pVm->accumulator, operandBuf, result);
                break;

            case 0x2A:
                step = 9;
                operandBuf = VmGetOperand(vm, 1, 9);
                memcpy(&tmp64, operandBuf, 8);
                result = CHANSVmSetFloat(vm, &pVm->accumulator, *(double*)&tmp64);
                break;

            case 0x19:
                unk_r23 = 0x2B; opFunc = (CHANSVmErr (*)(CHANSVm*, int, CHANSVmObjHdr*, CHANSVmObjHdr*, CHANSVmObjHdr*))VmAdd; goto binary_imm;
            case 0x1A:
                unk_r23 = 0x2D; opFunc = VmSub; goto binary_imm;
            case 0x1B:
                unk_r23 = 0x2A; opFunc = VmMul; goto binary_imm;
            case 0x1C:
                unk_r23 = 0x2F; opFunc = VmDiv; goto binary_imm;
            case 0x1D:
                unk_r23 = 0x25; opFunc = VmMod; goto binary_imm;
            case 0x1E:
                unk_r23 = 0x42; opFunc = VmBitAnd; goto binary_imm;
            case 0x1F:
                unk_r23 = 0x42; opFunc = VmBitOr; goto binary_imm;
            case 0x20:
                unk_r23 = 0x42; opFunc = VmBitXor; goto binary_imm;
            case 0x21:
                unk_r23 = 0x3D; opFunc = VmCmpEq; goto binary_imm;
            case 0x22:
                unk_r23 = 0x3D; opFunc = VmCmpNeq; goto binary_imm;
            case 0x23:
                unk_r23 = 0x43; opFunc = VmCmpLt; goto binary_imm;
            case 0x24:
                unk_r23 = 0x43; opFunc = VmCmpGt; goto binary_imm;
            case 0x25:
                unk_r23 = 0x43; opFunc = VmCmpLeq; goto binary_imm;
            case 0x26:
                unk_r23 = 0x43; opFunc = VmCmpGeq;

binary_imm:
                step = 2;
                leftOp = &pVm->accumulator;
                rightOp = &tmpObj;
                operandBuf = VmGetOperand(vm, 1, 2);
                result = VmLoadImmInteger(vm, &tmpObj, operandBuf, 1);
                if (result != CHANS_VM_OK) goto error_setter;
                goto binary_typecheck;

            binary_typecheck: {
                u32 rightTypeByte;
                u32 typeIdx;
                u32 leftTypeByte;
                u32 typeOffset;
                rightTypeByte = ((u8*)rightOp)[8];
                typeIdx = 0;
                leftTypeByte = ((u8*)leftOp)[8];
                typeOffset = 0;
                for (; typeIdx < 2; typeIdx++, typeOffset += 4) {
                    if (CHANSVmGetEnumedType((CHANSVmObjType*)((u8*)etypes + typeOffset), (s32)((typeIdx == 0) ? leftTypeByte : rightTypeByte)) == 0) {
                        goto error_setter;
                    }
                }

                {
                    const u8* convTbl;
                    switch (unk_r23) {
                    case 0x2B:
                        convTbl = (const u8*)((u8*)pConstObj + 0x160); break;
                    case 0x25: case 0x2A: case 0x2D: case 0x2F:
                        convTbl = (const u8*)((u8*)pConstObj + 0x184); break;
                    case 0x43:
                        convTbl = (const u8*)((u8*)pConstObj + 0x1a8); break;
                    case 0x3D:
                        convTbl = (const u8*)((u8*)pConstObj + 0x1cc); break;
                    case 0x42: case 0x53:
                        convTbl = (const u8*)((u8*)pConstObj + 0x1f0); break;
                    default:
                            // TODO: this is an inlined function called "VmGetResultType"
                        // use CHANS_VM_PRINTF?
                        if (CHANSVmDebugVerboseMode) {
                            CHANSVmDebugPrintf("%s: no table for op '%c'\n", lbl_81669128, unk_r23);
                        }
                        goto error_setter;
                    }

                    result = CHANS_VM_OK;
                    unk_r19 = convTbl[etypes[0] * 6 + etypes[1]];
                    goto result_check;
                }

error_setter:
                result = CHANS_VM_ERR_RESULT_TYPE;

result_check:
                if (result != CHANS_VM_OK) break;

                if (((unk_r23 != 0x43) && (unk_r23 != 0x3D)) || (unk_r19 != 0)) {
                    leftOp = CHANSVmConvertObjectType(vm, unk_r19, leftOp);
                    rightOp = CHANSVmConvertObjectType(vm, unk_r19, rightOp);
                }

                if ((leftOp == NULL) || (rightOp == NULL)) { result = CHANS_VM_ERR_RESULT_TYPE; break; }

                result = opFunc(vm, unk_r19, &pVm->accumulator, leftOp, rightOp);

                if (result == CHANS_VM_OK) {
                    result = CHANSVmDeleteObject(vm, &tmpObj);
                    if ((result == CHANS_VM_OK) && (leftOp != &pVm->accumulator) && (leftOp != &tmpObj) &&
                        ((((u8*)leftOp)[9] & 0x80) == 0) &&
                        ((result = CHANSVmDeleteObject(vm, leftOp), result == CHANS_VM_OK))) {
                        CHANSVmFree(vm, leftOp, 0x20);
                    }
                    if ((result == CHANS_VM_OK) && (rightOp != &pVm->accumulator) && (rightOp != &tmpObj) &&
                        ((((u8*)rightOp)[9] & 0x80) == 0) &&
                        ((result = CHANSVmDeleteObject(vm, rightOp), result == CHANS_VM_OK))) {
                        CHANSVmFree(vm, rightOp, 0x20);
                    }
                }
            }

            break;

            case 4: {
                CHANSVmObjHdr* resultObj;
                resultObj = NULL;
                if ((u32)pVm->pActiveCtx->stackDepth < (u32)-1) {
                    CHANSVmObjHdr* hdr = CHANSVmNewObjHdr(vm, 1);
                    if (hdr != NULL) {
                        resultObj = CHANSVmCopyObject(vm, hdr, &pVm->accumulator);
                        if (resultObj != NULL) {
                            pVm->pActiveCtx->stackDepth++;
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

            case 5:
                result = CHANSVmPopObject(vm, &pVm->accumulator);
                break;

            case 6:
                unk_r23 = 0x2B; opFunc = (CHANSVmErr (*)(CHANSVm*, int, CHANSVmObjHdr*, CHANSVmObjHdr*, CHANSVmObjHdr*))VmAdd; goto binary_pop;
            case 7:
                unk_r23 = 0x2D; opFunc = VmSub; goto binary_pop;
            case 8:
                unk_r23 = 0x2A; opFunc = VmMul; goto binary_pop;
            case 9:
                unk_r23 = 0x2F; opFunc = VmDiv; goto binary_pop;
            case 10:
                unk_r23 = 0x25; opFunc = VmMod; goto binary_pop;
            case 0xB:
                unk_r23 = 0x42; opFunc = VmBitAnd; goto binary_pop;
            case 0xC:
                unk_r23 = 0x42; opFunc = VmBitOr; goto binary_pop;
            case 0xD:
                unk_r23 = 0x42; opFunc = VmBitXor; goto binary_pop;
            case 0xE:
                unk_r23 = 0x53; opFunc = VmULShift; goto binary_pop;
            case 0xF:
                unk_r23 = 0x53; opFunc = VmARShift; goto binary_pop;
            case 0x10:
                unk_r23 = 0x43; opFunc = VmCmpEq; goto binary_pop;
            case 0x11:
                unk_r23 = 0x43; opFunc = VmCmpNeq; goto binary_pop;
            case 0x12:
                unk_r23 = 0x43; opFunc = VmCmpLt; goto binary_pop;
            case 0x13:
                unk_r23 = 0x43; opFunc = VmCmpGt; goto binary_pop;
            case 0x14:
                unk_r23 = 0x43; opFunc = VmCmpLeq; goto binary_pop;
            case 0x15:
                unk_r23 = 0x43; opFunc = VmCmpGeq;

binary_pop:
                leftOp = &tmpObj;
                rightOp = &pVm->accumulator;
                result = CHANSVmPopObject(vm, &tmpObj);
                if (result != CHANS_VM_OK) break;
                goto binary_typecheck;

            case 0:
                result = CHANSVmDeleteObject(vm, &pVm->accumulator);
                if (result == CHANS_VM_OK) {
                    result = VmReturnWithValue(vm, 0);
                }
                step = 0;
                break;

            case 1:
                result = VmReturnWithValue(vm, 0);
                step = 0;
                break;

            case 0x16: {
                CHANSVmObjHdr* pObj = &pVm->accumulator;
                u64 tmp64_16;
                switch (pVm->accumulator.type) {
                case CHANS_VM_OBJ_TYPE_BLANK:
                    tmp64_16 = 0;
                    break;
                case CHANS_VM_OBJ_TYPE_INTEGER:
                    tmp64_16 = *(u64*)pObj;
                    break;
                case CHANS_VM_OBJ_TYPE_FLOAT:
                    tmp64_16 = (u64)(CHANSVm_8144B1D8(*(double*)pObj) * floor(fabs(*(double*)pObj)));
                    break;
                case CHANS_VM_OBJ_TYPE_STRING:
                {
                    s32 parseResult = CHANSVmParseInt(pObj, 0, &tmp64_16);
                    if (parseResult == 0) tmp64_16 = 0;
                    break;
                }
                default:
                    tmp64_16 = 0;
                    break;
                }
                tmp64_16 = ~tmp64_16;
                result = CHANSVmSetInteger(vm, pObj, (vmInteger)tmp64_16);
                break;
            }

            case 0x17: {
                u32 local_e8;
                result = CHANSVmGetBoolean((CHANSVmObjHdr*)&local_e8, &pVm->accumulator);
                if (result == CHANS_VM_OK) {
                    u32 boolVal = (local_e8) ? 0 : 1;
                    result = CHANSVmSetInteger(vm, &pVm->accumulator, (vmInteger)(u64)boolVal);
                }
                break;
            }

            case 0x3E:
                result = CHANS_VM_ERR_LOAD_INDIRECT;
                if (pVm->accumulator.type == CHANS_VM_TYPE_INDEX_REF) {
                    tmpCmp = (s32)CHANSVmCopyObject(vm, stackPtr, &pVm->accumulator);
                    if (tmpCmp != 0) {
                        foundObj = VmGetArrayElement(vm, stackPtr, unk_r25, FALSE);
                        result = VmStore(vm, &pVm->accumulator, foundObj);
                        if (result == CHANS_VM_OK) {
                            result = CHANSVmDeleteObject(vm, &pVm->accumulator);
                        }
                    }
                }
                break;

            case 0x30:
                operandBuf = VmGetOperand(vm, 1, 4);
                if (operandBuf == NULL) { result = CHANS_VM_ERR_CODE_RANGE; break; }
                result = VmCallMethod(vm, 4, CHANS_VM_CALL_TYPE_METHOD, vmFalse);
                step = 0;
                break;

            case 2:
                if (pVm->accumulator.type == CHANS_VM_TYPE_CLASS_REF) {
                    result = 1;
                } else {
                    result = CHANS_VM_ERR_INVALID_OBJECT_TYPE;
                }
                step = 0;
                break;

            case 0x31:
                result = CHANS_VM_OK;
                operandBuf = VmGetOperand(vm, 1, 2);
                if (operandBuf == NULL) { result = CHANS_VM_ERR_CODE_RANGE; break; }
                result = VmCallMethod(vm, 2, CHANS_VM_CALL_TYPE_FUNCTION, vmFalse);
                step = 0;
                break;

            case 0x32:
            case 0x33: {
                u32 callMode;
                operandBuf = VmGetOperand(vm, 1, 3);
                if (operandBuf == NULL) { result = CHANS_VM_ERR_CODE_RANGE; break; }
                if (opcodeVal == 0x32) {
                    callMode = CHANS_VM_CALL_TYPE_PROP_GET;
                } else {
                    callMode = CHANS_VM_CALL_TYPE_PROP_SET;
                }
                result = VmCallMethod(vm, 3, callMode, vmFalse);
                step = 0;
                break;
            }

            case 0x3F:
                result = CHANS_VM_ERR_STORE_INDIRECT;
                if (pVm->accumulator.type == CHANS_VM_TYPE_INDEX_REF) {
                    tmpCmp = (s32)CHANSVmCopyObject(vm, stackPtr, &pVm->accumulator);
                    if (tmpCmp != 0) {
                        result = CHANSVmPopObject(vm, &pVm->accumulator);
                        if (result == CHANS_VM_OK) {
                            foundObj = VmGetArrayElement(vm, stackPtr, unk_r25, TRUE);
                            result = VmStore(vm, foundObj, &pVm->accumulator);
                            if (result == CHANS_VM_OK) {
                                result = CHANSVmDeleteObject(vm, &pVm->accumulator);
                            }
                        }
                    }
                }
                break;

            case 0x2C:
                step = 3;
                operandBuf = VmGetOperand(vm, 1, 3);
                if (operandBuf == NULL) { result = CHANS_VM_ERR_CODE_RANGE; break; }
                unk_r26 = *(u16*)operandBuf;
                result = CHANSVmDeleteObject(vm, &pVm->accumulator);
                if (result == CHANS_VM_OK) {
                    CHANSVmExecutionCtx* pUnk1_2c = pVm->pActiveCtx;
                    u32* pUnk1_04 = (u32*)pUnk1_2c->pDbg;
                    if ((unk_r26 < pUnk1_04[12]) &&
                        (intTemp = unk_r26 * 0x10,
                         *(u32*)(pUnk1_04[15] + intTemp) != 0)) {
                        pVm->accumulator.type = CHANS_VM_OBJ_TYPE_STRING;
                        pVm->accumulator.hasData = vmTrue;
                        (&pVm->accumulator)->value.int_v = *(u32*)(pUnk1_04[15] + intTemp);
                    } else {
                        result = CHANS_VM_ERR_LOAD_STRING_CONST;
                    }
                }
                break;

            case 0x2D: {
                s32 cmpHigh;
                u32 cmpLow;
                u64 cmpVal;
                s64 fullVal;
                result = CHANS_VM_ERR_SET_INDEX;
                tmpCmp = (s32)CHANSVmCopyObject(vm, stackPtr, &pVm->accumulator);
                if (tmpCmp == 0) break;
                result = CHANSVmPopObject(vm, &pVm->accumulator);
                if (result != CHANS_VM_OK) break;

                if (pVm->accumulator.type == CHANS_VM_TYPE_ARRAY) {
                    u8 typeByte = ((u8*)stackPtr)[8];
                    if (typeByte == 2) {
                        double d = (double)((vmInteger)*(u64*)stackPtr);
                        if ((cLo <= d) && (d <= cHi)) {
                            unk_r25 = (u32)d;
                            goto done_2d;
                        }
                    } else if (typeByte < 2) {
                        if (typeByte != 0) {
                            cmpHigh = cZero;
                            cmpLow = cNeg2;
                            cmpVal = ((u64)(u32)cmpHigh << 32) | (u64)cmpLow;
                            fullVal = ((s64)(u32)((u32*)stackPtr)[0] << 32) | ((u64)(u32)((u32*)stackPtr)[1]);
                            if ((u64)(s64)fullVal > cmpVal) goto done_2d_error;
                            unk_r25 = ((u32*)stackPtr)[1];
                            goto done_2d;
                        }
                    } else if (typeByte < 4) {
                        if (CHANSVmParseInt(stackPtr, 10, &tmp64) != 0) {
                            cmpHigh = cZero;
                            cmpLow = cNeg2;
                            cmpVal = ((u64)(u32)cmpHigh << 32) | (u64)cmpLow;
                            fullVal = ((s64)(u32)(tmp64 >> 32) << 32) | (u64)(u32)tmp64;
                            if ((u64)(s64)fullVal > cmpVal) goto done_2d_error;
                            unk_r25 = (u32)tmp64;
                            goto done_2d;
                        }
                    }
                }
done_2d_error:
                result = CHANS_VM_ERR_SET_INDEX;
                break;

done_2d:
                result = CHANS_VM_OK;
                (&pVm->accumulator)->value.int_v = (vmInteger)unk_r25;
                pVm->accumulator.type = CHANS_VM_TYPE_INDEX_REF;
                result = CHANSVmDeleteObject(vm, &pVm->accumulator);
                break;
            }

            case 0x34: {
                u32 arrLen;
                u32 idx;
                u32 found;
                step = 5;
                operandBuf = VmGetOperand(vm, 1, 5);
                if (operandBuf == NULL) { result = CHANS_VM_ERR_CODE_RANGE; break; }
                result = CHANS_VM_ERR_GET_PROPERTY_NAME;
                unk_r25 = 0;
                foundObj = CHANSVm_81455654(vm, *(u16*)operandBuf);
                if ((foundObj != NULL) && (pVm->accumulator.type == CHANS_VM_OBJ_TYPE_INTEGER) &&
                    (uintTemp = *((u32*)&pVm->accumulator.value + 1),
                     (u32)(0xFFFFFFFE < uintTemp) + *(s32*)&pVm->accumulator.value == 0)) {
                    if (((u8*)foundObj)[0x0A] == 4) {
                        u32 len = VmArrayGetLengthInternal(foundObj);
                        idx = 0;
                        found = 0;
                        while ((idx < len) &&
                               (tmpCmp = (s32)CHANSVmGetArrayElement(vm, foundObj, idx),
                                tmpCmp != 0)) {
                            if (((u8*)tmpCmp)[8] != 0) {
                                uintTemp--;
                            }
                            idx++;
                        }
                        unk_r25 = idx;
                    }
                    if (result != CHANS_VM_OK) {
                        idx = 0;
                        result = CHANSVmDeleteObject(vm, &pVm->accumulator);
                        if (result == CHANS_VM_OK) {
                            CHANSVmNewObject(vm, vmFalse, &pVm->accumulator, CHANS_VM_OBJ_TYPE_STRING, 0x80);
                            if (result != CHANS_VM_OK) {
                                char* s = (char*)(&pVm->accumulator)->value.string_v->str;
                                s32 snpLen = snprintf(s, 0x40, "%lld");
                                CHANSVmStrCpyToU16FromU8((wchar_t*)s, s, snpLen);
                                (&pVm->accumulator)->value.string_v->len = VM_STR_LENGTH(snpLen);
                                if ((&pVm->accumulator)->value.string_v->len != 0) {
                                    result = CHANS_VM_OK;
                                }
                            }
                        }
                        if (result != CHANS_VM_OK) {
                            result = CHANS_VM_ERR_GET_PROPERTY_NAME;
                            break;
                        }
                    }
                    unk_r25 = idx;
                }
                if ((result != CHANS_VM_OK) || (idx != 0)) {
                    result = CHANS_VM_ERR_GET_PROPERTY_NAME;
                }
                if (result == CHANS_VM_OK) {
                    u8* pOpData = operandBuf;
                    uintTemp = (pOpData[2] << 8 & 0x1F00) | pOpData[3];
                    if ((pOpData[2] << 8 & 0x1000) == 0) {
                        uintTemp += pVm->pActiveCtx->pc + 5;
                    } else {
                        uintTemp = (uintTemp + pVm->pActiveCtx->pc) - 0x1FFC;
                    }
                    if ((uintTemp == 0) ||
                        (uintTemp >= pVm->pActiveCtx->pDbg->codeSize)) { result = CHANS_VM_ERR_CODE_RANGE; break; }
                    pVm->pActiveCtx->pc = uintTemp;
                    step = 0;
                }
                break;
            }

            case 3:
                step = 3;
                operandBuf = VmGetOperand(vm, 1, 3);
                if (operandBuf == NULL) { result = CHANS_VM_ERR_CODE_RANGE; break; }
                unk_r26 = *(u16*)operandBuf;
                result = CHANSVmDeleteObject(vm, &pVm->accumulator);
                if (result == CHANS_VM_OK) {
                    result = VmPushFuncReturnInfo(vm, unk_r26, unk_r26, 0);
                    if (result == CHANS_VM_OK) {
                        pVm->accumulator.type = CHANS_VM_TYPE_ARRAY;
                        pVm->accumulator.parentCls = pVm->pArrayCls;
                        if (CHANSVmNewObjData(vm, &pVm->accumulator, 0x18) != NULL) {
                            if (unk_r26 != 0) {
                                result = VmArrayExpandCommon(vm, &pVm->accumulator, unk_r26, 0, TRUE);
                                if (result == CHANS_VM_OK) { result = CHANS_VM_ERR_CALL_NEW_ARRAY; break; }
                            }
                            result = VmReturnWithValue(vm, 0);
                        } else {
                            result = CHANS_VM_ERR_CALL_NEW_ARRAY;
                        }
                    }
                }
                break;

            case 0x35:
                operandBuf = VmGetOperand(vm, 1, 4);
                if (operandBuf == NULL) { result = CHANS_VM_ERR_CODE_RANGE; break; }
                uintTemp = operandBuf[2] | (operandBuf[1] << 8) | (operandBuf[0] << 16);
                if ((operandBuf[0] << 16 & 0x800000) == 0) {
                    uintTemp += pVm->pActiveCtx->pc + 4;
                } else {
                    uintTemp = uintTemp + pVm->pActiveCtx->pc - 0xFFFFFF;
                }
                if ((uintTemp == 0) ||
                    (uintTemp >= pVm->pActiveCtx->pDbg->codeSize)) { result = CHANS_VM_ERR_CODE_RANGE; break; }
                pVm->pActiveCtx->pc = uintTemp;
                step = 0;
                result = CHANS_VM_OK;
                break;

            case 0x2B:
                result = VmStore(vm, &pVm->accumulator, (CHANSVmObjHdr*)((u8*)pConstObj + 0xa0));
                break;

            case 0x36:
                step = 3;
                operandBuf = VmGetOperand(vm, 1, 3);
                if (operandBuf == NULL) { result = CHANS_VM_ERR_CODE_RANGE; break; }
                foundObj = CHANSVm_81455654(vm, (operandBuf[0] & 0x1F) << 8 | operandBuf[1]);
                result = VmDeleteCommon(vm, foundObj);
                break;

            case 0x37:
                result = CHANS_VM_ERR_DELETE_INDIRECT;
                if (pVm->accumulator.type == CHANS_VM_TYPE_INDEX_REF) {
                    foundObj = VmGetArrayElement(vm, &pVm->accumulator, *((u32*)&pVm->accumulator.value + 1), FALSE);
                    result = VmDeleteCommon(vm, foundObj);
                }
                break;

            default:
                result = CHANS_VM_ERR_RESERVED_OPCODE;
                break;
            }
        } else if ((opcodeVal & 0xc0) == 0x40) {
            step = 2;
            operandBuf = VmGetOperand(vm, 0, 2);
            if (operandBuf == NULL) { result = CHANS_VM_ERR_CODE_RANGE; break; }
            uintTemp = opcodeVal & 0x20;
            unk_r26 = (opcodeVal & 0x1F) << 8 | operandBuf[1];
            if (uintTemp == 0x20) {
                foundObj = CHANSVm_81455654(vm, unk_r26);
                result = VmStore(vm, foundObj, &pVm->accumulator);
            } else if (uintTemp == 0) {
                foundObj = CHANSVm_81455654(vm, unk_r26);
                result = VmStore(vm, &pVm->accumulator, foundObj);
            } else {
                result = CHANS_VM_ERR_CODE_RANGE; break;
            }
        } else {
            u32 local_e4;
            u32 local_e8;
            u32 unk_r23;
            step = 2;
            operandBuf = VmGetOperand(vm, 0, 2);
            if (operandBuf == NULL) { result = CHANS_VM_ERR_CODE_RANGE; break; }
            uintTemp = opcodeVal & 0x60;
            if (uintTemp == 0x40) {
                result = CHANSVmGetBoolean((CHANSVmObjHdr*)&local_e8, &pVm->accumulator);
            } else if (uintTemp == 0x60) {
                result = CHANS_VM_OK;
                local_e4 = 1;
            } else if (uintTemp == 0x20) {
                result = CHANSVmGetBoolean((CHANSVmObjHdr*)&local_e8, &pVm->accumulator);
                if (result == CHANS_VM_OK) {
                    local_e4 = (local_e8) ? 0 : 1;
                }
            } else if (uintTemp == 0) {
                result = CHANS_VM_ERR_CASE;
                if ((pVm->pActiveCtx->stackDepth != 0) &&
                    (pVm->pHeapEnd >=
                     (CHANSVmObjHdr*)pVm->pObjStackTopBuf + 2)) {
                    CHANSVmObjHdr* stackTop = (CHANSVmObjHdr*)pVm->pObjStackTopBuf;
                    unk_r23 = 0;
                    if (pVm->accumulator.type != stackTop->type) {
                        goto end_branch_check;
                    }
                    switch (stackTop->type) {
                    case CHANS_VM_OBJ_TYPE_BLANK:
                        unk_r23 = 1;
                        break;
                    case CHANS_VM_OBJ_TYPE_INTEGER: {
                        u32 low1 = *(u32*)stackTop;
                        u32 low2 = *(u32*)&pVm->accumulator;
                        u32 high1 = *((u32*)stackTop + 1);
                        u32 high2 = *((u32*)&pVm->accumulator + 1);
                        u32 xor1 = low1 ^ low2;
                        u32 xor2 = high1 ^ high2;
                        unk_r23 = (xor1 | xor2) >> 31;
                        break;
                    }
                    case CHANS_VM_OBJ_TYPE_FLOAT: {
                        double d1 = *(double*)stackTop;
                        double curChar = *(double*)&pVm->accumulator;
                        unk_r23 = (d1 == curChar) ? 1 : 0;
                        break;
                    }
                    case CHANS_VM_OBJ_TYPE_STRING: {
                        u32 len1_u32, len2_u32;
                        CHANSVmObjHdr* stackObj3 = (CHANSVmObjHdr*)pVm->pObjStackTopBuf;
                        unk_r23 = 0;
                        len1_u32 = stackObj3->value.wstring_v->len;
                        len2_u32 = pVm->accumulator.value.wstring_v->len;
                        if (len1_u32 == len2_u32) {
                            s32 cmpResult;
                            if ((len1_u32 == 0) ||
                                ((cmpResult = memcmp(
                                    (void*)stackObj3->value.wstring_v->str,
                                    (void*)pVm->accumulator.value.wstring_v->str, len1_u32), cmpResult == 0))) {
                                unk_r23 = 1;
                            }
                        }
                        break;
                    }
                    case CHANS_VM_TYPE_ARRAY:
                    case CHANS_VM_TYPE_CLASS_REF:
                    case CHANS_VM_TYPE_OBJECT:
                    case CHANS_VM_TYPE_METHOD_REF: {
                        unk_r23 = 0;
                        if ((*(u32*)(stackTop + 0xC)) ==
                                (u32)pVm->accumulator.parentCls &&
                            ((u8*)stackTop)[0x0A] ==
                                pVm->accumulator.hasData &&
                            ((((u8*)stackTop)[0x0A] == 0) ||
                             (*(u32*)stackTop ==
                              *(u32*)&pVm->accumulator))) {
                            unk_r23 = 1;
                        }
                        break;
                    }
                    default:
                        result = CHANS_VM_ERR_CHECK_STRICT_EQUALITY;
                        break;
                    }
end_branch_check:
                    if (result == CHANS_VM_OK) {
                        result = CHANS_VM_OK;
                        local_e4 = unk_r23;
                        if (unk_r23 != 0) {
                            result = CHANSVmPopObject(vm, &pVm->accumulator);
                        }
                    }
                }
            } else {
                result = CHANS_VM_ERR_RESERVED_OPCODE; break;
            }

            if ((result == CHANS_VM_OK) && (local_e4 != 0)) {
                uintTemp = (opcodeVal << 8 & 0x1F00) | operandBuf[1];
                if ((opcodeVal << 8 & 0x1000) == 0) {
                    uintTemp += pVm->pActiveCtx->pc + 2;
                } else {
                    uintTemp = (uintTemp + pVm->pActiveCtx->pc) - 0x1FFF;
                }
                if ((uintTemp != 0) &&
                    (uintTemp < pVm->pActiveCtx->pDbg->codeSize)) {
                    pVm->pActiveCtx->pc = uintTemp;
                    step = 0;
                } else {
                    result = CHANS_VM_ERR_CODE_RANGE; break;
                }
            }
        }

        if (result != CHANS_VM_OK) break;
        if (step == 0xFFFFFFFF) break;
        {
            u32 newPos;
            if (pVm->pActiveCtx == NULL) break;
            if (pVm->pActiveCtx->pDbg == 0) break;
            newPos = pVm->pActiveCtx->pc + step;
            if (newPos >= pVm->pActiveCtx->pDbg->codeSize) break;
            pVm->pActiveCtx->pc = newPos;
        }
    }

    return result;

error_code_range:
    return CHANS_VM_ERR_CODE_RANGE;

error_3e2:
    return CHANS_VM_ERR_HEAP_RANGE;
}