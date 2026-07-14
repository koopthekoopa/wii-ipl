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

// TODO: put this macros somewhere else
#ifndef max
#define max(a,b)    (((a) > (b)) ? (a) : (b))
#define min(a,b)    (((a) < (b)) ? (a) : (b))
#endif

#define CHANSVmDebugLength 1024

typedef struct CHANSVmUnk0 {
    vmPtr unk_0x00;
    vmU32 unk_0x04;
    vmU32 unk_0x08;
    vmU32 unk_0x0C;
} CHANSVmUnk0;

typedef struct ChunkEntry {
    void* pData;  // 0x00
    u32 size;     // 0x04
    u32 alloc;    // 0x08
    u32 inUse;    // 0x0C
} ChunkEntry;

CHANSVmImageCtorCallback VmImageCtorCallback = vmNull;
CHANSVmImageAllocatorCallback VmImageAllocCallback = vmNull;

BOOL CHANSVmDebugVerboseMode = vmFalse;

#define VM_STR_LENGTH(str) (str * sizeof(vmWChar))

#define VM_ALIGNMENT DEFAULT_ALIGN
#define VM_ALIGNED(x) ((x & (VM_ALIGNMENT - 1)) == 0)
#define VM_ALIGN(x) ROUNDUP(x, VM_ALIGNMENT)

const u64 VmNaN = 0x7FFFFFFFFFFFFFFFULL;
const u64 VmMinusZero = 0x8000000000000000ULL;
const u64 VmInf = 0x7FF0000000000000ULL;
const u64 VmMinusInf = 0xFFF0000000000000ULL;


char lbl_81669128[] = "VmGetResultType";
char lbl_816691A8[] = "CHANS_VM_ERR_NO_1000";
char lbl_816691BD[] = "CHANS_VM_ERR_EXIT";
char lbl_816691CF[] = "CHANS_VM_ERR_NO_MEMORY";
char lbl_816691E6[] = "CHANS_VM_ERR_INVALID_EXE_FORMAT";
char lbl_81669206[] = "CHANS_VM_ERR_ARG";
char lbl_81669217[] = "CHANS_VM_ERR_CODE_RANGE";
char lbl_8166922F[] = "CHANS_VM_ERR_HEAP_RANGE";
char lbl_81669247[] = "CHANS_VM_ERR_OBJECT_NOT_FOUND";
char lbl_81669265[] = "CHANS_VM_ERR_ALIGNMENT";
char lbl_8166927C[] = "CHANS_VM_ERR_RESULT_TYPE";
char lbl_81669295[] = "CHANS_VM_ERR_TOO_MANY_DEFINED";
char lbl_816692B3[] = "CHANS_VM_ERR_ALREADY_DEFINED";
char lbl_816692D0[] = "CHANS_VM_ERR_LINK_FAILED";
char lbl_816692E9[] = "CHANS_VM_ERR_IN_METHOD_REGISTRATION";
char lbl_8166930C[] = "CHANS_VM_ERR_NATIVE_METHOD_ERROR";
char lbl_8166932C[] = "CHANS_VM_ERR_LOAD_OBJECT";
char lbl_81669345[] = "CHANS_VM_ERR_STORE_OBJECT";
char lbl_8166935F[] = "CHANS_VM_ERR_DIVISION_BY_ZERO";
char lbl_8166937D[] = "CHANS_VM_ERR_DELETE_OBJECT";
char lbl_81669398[] = "CHANS_VM_ERR_DELETE_NATIVE";
char lbl_816693B3[] = "CHANS_VM_ERR_DELETE_READONLY";
char lbl_816693CF[] = "CHANS_VM_ERR_POP_OBJECT";
char lbl_816693E7[] = "CHANS_VM_ERR_STR_U8_OVERFLOW";
char lbl_81669402[] = "CHANS_VM_ERR_SET_INTEGER";
char lbl_8166941B[] = "CHANS_VM_ERR_SET_FLOAT";
char lbl_81669432[] = "CHANS_VM_ERR_ADD";
char lbl_81669443[] = "CHANS_VM_ERR_SUB";
char lbl_81669454[] = "CHANS_VM_ERR_MUL";
char lbl_81669465[] = "CHANS_VM_ERR_DIV";
char lbl_81669476[] = "CHANS_VM_ERR_MOD";
char lbl_81669487[] = "CHANS_VM_ERR_ULSHIFT";
char lbl_8166949C[] = "CHANS_VM_ERR_ARSHIFT";
char lbl_816694B1[] = "CHANS_VM_ERR_BIT_AND";
char lbl_816694C6[] = "CHANS_VM_ERR_BIT_OR";
char lbl_816694DA[] = "CHANS_VM_ERR_BIT_XOR";
char lbl_816694EF[] = "CHANS_VM_ERR_CMP";
char lbl_81669500[] = "CHANS_VM_ERR_ADD_NATIVE_CLASS";
char lbl_8166951F[] = "CHANS_VM_ERR_SET_LOCAL_OBJECT";
char lbl_8166953F[] = "CHANS_VM_ERR_PUSH_FUNC_RETURN_INFO";
char lbl_81669562[] = "CHANS_VM_ERR_LOAD_IMM_INT";
char lbl_81669578[] = "CHANS_VM_ERR_LOAD_CONST";
char lbl_81669590[] = "CHANS_VM_ERR_LOAD_STRING";
char lbl_816695A4[] = "CHANS_VM_ERR_LOAD_INDIRECT";
char lbl_816695B8[] = "CHANS_VM_ERR_STORE_INDIRECT";
char lbl_816695DD[] = "CHANS_VM_ERR_CALL_FUNCTION";
char lbl_81669605[] = "CHANS_VM_ERR_RESERVED_OPCODE";
char lbl_81669632[] = "CHANS_VM_ERR_SET_INDEX";
char lbl_81669643[] = "CHANS_VM_ERR_OUT_OF_MEMORY";
char lbl_81669664[] = "CHANS_VM_ERR_SET_PROPERTY";
char lbl_8166967D[] = "CHANS_VM_ERR_GET_PROPERTY";
char lbl_8166968F[] = "CHANS_VM_ERR_NO_PROPERTY_NAME";
char lbl_816696B2[] = "CHANS_VM_ERR_GET_PROPERTY_NAME";
char lbl_816696CD[] = "CHANS_VM_ERR_DELETE_INDIRECT";
char lbl_816696E8[] = "CHANS_VM_ERR_CALL_NEW_ARRAY";
char lbl_81669701[] = "CHANS_VM_ERR_INVALID_OBJECT_TYPE";
char lbl_8166971D[] = "CHANS_VM_ERR_CHECK_STRICT_EQUALITY";
char lbl_8166973C[] = "CHANS_VM_ERR_SIGNAL";
char lbl_81669750[] = "CHANS_VM_ERR_ADD_METHOD";
char lbl_8166976C[] = "CHANS_VM_ERR_ADD_PROPERTY";
char lbl_81669783[] = "CHANS_VM_ERR_LOOKUP_METHOD_NAME";
char lbl_816697A2[] = "CHANS_VM_ERR_SET_PROPERTY_LIST";
char lbl_816697BA[] = "CHANS_VM_ERR_NO_PROPERTY_LIST";
char lbl_816697D6[] = "CHANS_VM_ERR_FIND_PROPERTY";
char lbl_816697F2[] = "CHANS_VM_ERR_ADD_METHOD_LIST";
char lbl_81669813[] = "CHANS_VM_ERR_DUPLICATE_CLASS";
char lbl_81669830[] = "CHANS_VM_ERR_CONSTRUCT_GLBL_OBJ";
char lbl_8166984D[] = "CHANS_VM_ERR_CONSTRUCT_GLOBAL_CLASS";
char lbl_81669873[] = "CHANS_VM_ERR_BUILTIN_OBJECT";
char lbl_81669897[] = "CHANS_VM_ERR_CALL_METHOD";
char lbl_816698AD[] = "CHANS_VM_ERR_IMAGE_OBJECT";
char lbl_816698C9[] = "CHANS_VM_ERR_IMAGE_ALLOC_FAILED";
char lbl_816698EA[] = "CHANS_VM_ERR_IMAGE_REGISTER";
char lbl_81669908[] = "CHANS_VM_ERR_UNSUPPORTED_IMAGE";
char lbl_81669924[] = "CHANS_VM_ERR_IMAGE_HEADER_SIZE";
char lbl_81669947[] = "CHANS_VM_ERR_IMAGE_HEADER_ERROR";
char lbl_8166996A[] = "CHANS_VM_ERR_INVALID_SOURCE_LINE";
char lbl_81669988[] = "CHANS_VM_ERR_IMAGE_ERROR";
char lbl_816699A6[] = "CHANS_VM_ERR_IMAGE_MEMORY";

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
    CHANSVmExecutionCtx* ctx = ((CHANSVmPrivate*)vm)->execContext;

    if (ctx && ctx->dbg && ctx->dbg->entries && ctx->pc < ctx->dbg->codesize) {
        SrcLineEntry* curEntry = &ctx->dbg->entries[ctx->pc / 256];
        s32 lineOffset = curEntry->baseLine;
        u8* bitfield = curEntry->bitfield;
        u32 i = 0;

        for (i = 0; i <= (u8)ctx->pc; i++) {
            if (bitfield[i / 8] & (128 >> (i & 0b111))) {
                lineOffset += 2;
            }
        }

        if ((u8*)curEntry + lineOffset + 1 < (u8*)ctx->dbg + ctx->dbg->unk_04) {
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

    vmU32 unk = (vmU32)pVm->objStackTopBuf - (vmU32)pVm->freeExeBuf;
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
        vmU8* ptr = pVm->freeExeBuf;
        if ((vmU32)pVm->objStackTopBuf - (vmU32)ptr >= VM_ALIGN(sizeof(CHANSVmObjHdr))) {
            if (noAlloc == 0) {
                pVm->freeExeBuf = (ptr + VM_ALIGN(sizeof(CHANSVmObjHdr)));
                object = (CHANSVmObjHdr*)ptr;
            } else {
                ptr = pVm->objStackTopBuf - sizeof(CHANSVmObjHdr);
                pVm->objStackTopBuf = ptr;
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
            ptr = pVm->freeExeBuf;
            if ((vmU32)pVm->objStackTopBuf - (vmU32)ptr >= size) {
                allocBuf = ptr;
                pVm->freeExeBuf = ptr + size;

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
    if (buffer >= (FreeBlock*)pVm->freeExeBuf) {
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
            memset(head, 0, 8);
        } else {
            buffer->next = head;
        }
    } else {
        while ((current = head->next) != vmNull) {
            if (buffer < current) {
                if ((FreeBlock*)((u32)buffer + buffer->size) == current) {
                    buffer->next = current->next;
                    buffer->size = buffer->size + head->next->size;
                    memset(*(void**)head, 0, 8);
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
            memset(buffer, 0, 8);
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

        if (pVm->freeExeBuf != (vmU8*)((u32)head + head->size)) {
            return;
        }

        memset(head, 0, 8);
        pVm->freeExeBuf = (vmU8*)head;

        if (current == vmNull) {
            pVm->pFreeList = 0;
        } else {
            current->next = vmNull;
        }
    }
}

CHANSVmErr CHANSVmDeleteObject(CHANSVm* vm, CHANSVmObjHdr* object) {
    if (object != vmNull) {
        if (!(object->flags.raw & 0x80)) {
            if (object->unk_0x0A) {
                CHANSVmUnk0* unk = (CHANSVmUnk0*)object->value.ptr_v;
                int val;

                if (unk->unk_0x08 == 0) {
                    val = 1;
                } else {
                    if (unk->unk_0x0C != 0) {
                        // TODO: based on this unk_0x0C should be signed, but VmCopyObject will lose accuracy because it starts using cmpwi instead of li+cmplw
                        val = unk->unk_0x0C - 1;
                        unk->unk_0x0C = val;
                    } else {
                        val = -1;
                    }
                }

                if (val == 0) {
                    if (object->parentCls == vmNull || object->parentCls->dtor == vmNull ||
                        object->parentCls->dtor(vm, object, vmNull)) {
                        CHANSVmFree(vm, unk->unk_0x00, unk->unk_0x08);
                        memset(unk, 0, sizeof(CHANSVmUnk0));
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
    CHANSVmPrivate* pVm;
    u32 idx;
    u32 chunkIdx;
    union { u32 off; ChunkEntry* entry; } u;
    void* chunk;
    u32 memSize;

    pVm = (CHANSVmPrivate*)vm;

    if (object == NULL) goto fail;
    if (((u8*)object)[0x0A] != 0) goto fail;
    if (length == 0) goto fail;

    idx = pVm->mNextChunkIdx;
    chunk = pVm->mChunks[idx >> 10];
    if (chunk != NULL) {
        if (((ChunkEntry*)((u8*)chunk + ((idx & 0x3FF) << 4)))->inUse == 0) {
            goto found;
        }
    }

    chunkIdx = 0;
    u.off = 0;
    while (chunkIdx < 0x80) {
        chunk = pVm->mChunks[chunkIdx];
        if (chunk == NULL) {
            chunk = (void*)CHANSVmAlloc(vm, 0x4000);
            if (chunk == NULL) goto fail;
            pVm->mChunks[chunkIdx] = chunk;
        }

        idx = 0;
        while (idx < 0x400) {
            if (((ChunkEntry*)((u8*)chunk + idx * 0x10))->inUse == 0) {
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

    found:
    {
        u32 newIdx;

        newIdx = idx + 1;
        pVm->mNextChunkIdx = (newIdx > 0x1FFFF) ? 0 : newIdx;

        u.entry = (ChunkEntry*)((u8*)chunk + ((idx & 0x3FF) << 4));
        memset(u.entry, 0, 0x10);
        u.entry->inUse = 1;
    }

check_entry:
    if (u.entry == NULL) goto fail;

    memSize = (length + 0x1F) & ~0x1F;
    {
        void* pData = (void*)CHANSVmAlloc(vm, memSize);
        if (pData == NULL) goto fail;

        *(u32*)((u8*)object) = (u32)u.entry;
        ((u8*)object)[0x0A] = 1;
        u.entry->pData = pData;
        u.entry->size = length;
        u.entry->alloc = memSize;
        return (vmPtr)pData;
    }

    fail:
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
        if (outObj->unk_0x0A != 0) {
            CHANSVmUnk0* unk = (CHANSVmUnk0*)outObj->value.ptr_v;
            int val;

            if (unk->unk_0x08 == 0) {
                val = 1;
            } else {
                if (unk->unk_0x0C < -1) {
                    val = unk->unk_0x0C + 1;
                    unk->unk_0x0C = val;
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
    CHANSVmObjHdr* stackTop = (CHANSVmObjHdr*)pVm->objStackTopBuf;
    CHANSVmErr err = CHANS_VM_ERR_POP_OBJECT;

    if (pVm->execContext->stackDepth != 0) {
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
                pVm->execContext->stackDepth--;
                pVm->objStackTopBuf = (vmU8*)nextUnk;
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

typedef struct {
    wchar_t* ptr;
    u32 len;
    u32 typeAndFlag;
    void* parentCls;
} RawObjHdr;

typedef struct {
    const RawObjHdr* ptr;
    u32 len;
    u32 typeAndFlag;
    void* parentCls;
} RawObjTableHdr;

typedef struct {
    const char* str;
    const double* val;
} FloatTableEntry;

extern u32 lbl_816976E4;
extern u32 lbl_816976E8;

const RawObjHdr CHANSVmConstStringObjectUndefined = {
    L"undefined", 18, 0, NULL
};
const RawObjHdr lbl_81616C88 = {
    L"NaN", 6, 0, NULL
};
const RawObjHdr lbl_81616C98 = {
    L"Infinity", 16, 0, NULL
};
const RawObjHdr lbl_81616CA8 = {
    L"-Infinity", 18, 0, NULL
};
const RawObjHdr lbl_81616CB8 = {
    L",", 2, 0, NULL
};
const char CHANSVmConstStringDataEmpty[16] = "";
const RawObjTableHdr CHANSVmConstStringObjectUndefined_[5] = {
    { &CHANSVmConstStringObjectUndefined, 0, 0x03800100, NULL },
    { &lbl_81616C88, 0, 0x03800100, NULL },
    { &lbl_81616C98, 0, 0x03800100, NULL },
    { &lbl_81616CA8, 0, 0x03800100, NULL },
    { &lbl_81616CB8, 0, 0x00800000, NULL }
};
const FloatTableEntry lbl_81616D28[4] = {
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

RawObjTableHdr* CHANSVmConvertToStrFromUndefined(CHANSVm* vm, int type, CHANSVmObjHdr* object) {
    return (RawObjTableHdr*)CHANSVmConstStringObjectUndefined_;
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
    RawObjTableHdr* base;
    CHANSVmObjHdr* newObj;
    s32 result;

    /* TODO: The base should be the table (CHANSVmConstStringObjectUndefined_ at .rodata@0x70), not the first element (located at .rodata@0x0).
     * The current approach accesses the table out-of-bounds to get a 100% match since I can't seem to replicate the compiler optimization.
     */
    base = (RawObjTableHdr*)&CHANSVmConstStringObjectUndefined; // .rodata@0x0
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

static CHANSVmObjHdr* VmArrayJoinCommon(CHANSVm* vm, u32 arg1, CHANSVmObjHdr* object, u32 arg2, u32 arg3);

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
            type = CHANS_VM_TYPE_OBJECT;
            break;
        }
        case 6:
        case 7:
        case 8:
        case 9: {
            type = CHANS_VM_TYPE_UNK5;
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

const VmConvertEntry VmTypeConvertFuncTbl[] = {
    { vmNull, CHANSVmConvertObjectTypeError, CHANSVmConvertObjectTypeError, CHANSVmConvertObjectTypeError, CHANSVmConvertObjectTypeError, CHANSVmConvertObjectTypeError },
    { vmNull, CHANSVmConvertObjectTypeError, CHANSVmConvertObjectTypeError, CHANSVmConvertObjectTypeError, CHANSVmConvertObjectTypeError, CHANSVmConvertObjectTypeError },
    { vmNull, CHANSVmConvertObjectTypeError, CHANSVmConvertObjectTypeError, CHANSVmConvertObjectTypeError, CHANSVmConvertObjectTypeError, CHANSVmConvertObjectTypeError },
    { vmNull, CHANSVmConvertObjectTypeError, CHANSVmConvertObjectTypeError, CHANSVmConvertObjectTypeError, CHANSVmConvertObjectTypeError, CHANSVmConvertObjectTypeError },
    { vmNull, CHANSVmConvertObjectTypeError, CHANSVmConvertObjectTypeError, CHANSVmConvertObjectTypeError, CHANSVmConvertObjectTypeError, CHANSVmConvertObjectTypeError },
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

    return VmTypeConvertFuncTbl[old].convFunc[new](vm, type, object);
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
            if (tmpType == CHANS_VM_TYPE_UNK7 || tmpType == CHANS_VM_TYPE_POINTER)
                goto handleObjectType;
            if (tmpType == CHANS_VM_TYPE_UNK9) {
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
    case CHANS_VM_TYPE_OBJECT: {
    handleObjectType:
        isEqual = vmFalse;
        if (left->parentCls == right->parentCls &&
            left->unk_0x0A == right->unk_0x0A &&
            (left->unk_0x0A == 0 || left->value.ptr_v == right->value.ptr_v)) {
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
        case CHANS_VM_TYPE_OBJECT:
        case CHANS_VM_TYPE_POINTER: {
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
        case CHANS_VM_TYPE_OBJECT:
        case CHANS_VM_TYPE_POINTER: {
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
        case CHANS_VM_TYPE_OBJECT:
        case CHANS_VM_TYPE_UNK7:
        case CHANS_VM_TYPE_POINTER:
        case CHANS_VM_TYPE_UNK9: {
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
    return ((CHANSVmPrivate*)vm)->execContext->argc;
}

CHANSVmObjHdr* CHANSVmGetArg(CHANSVm* vm, vmU32 argIdx) {
    CHANSVmPrivate* pVm = (CHANSVmPrivate*)vm;

    if (argIdx >= pVm->execContext->argc) {
        return vmNull;
    }

    return (CHANSVmObjHdr*)pVm->execContext->argv + (pVm->execContext->argc - 1 - argIdx);
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

CHANSVmNativeClass* CHANSVmFindNativeClass(CHANSVm* vm, const char* clsName) {
    CHANSVmPrivate* pVm = (CHANSVmPrivate*)vm;

    CHANSVmNativeClass* cls;
    vmS32 clsNameLen = strlen(clsName);

    if (clsNameLen != 0) {
        for (cls = pVm->nativeClasses; cls != vmNull; cls = cls->next) {
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
            cls = (CHANSVmNativeClass*)CHANSVmAlloc(vm, clsNameLen + sizeof(CHANSVmNativeClass) - 1 & -32);
            if (cls != vmNull) {
                if (pVm->nativeClasses == vmNull) {
                    pVm->nativeClasses = cls;
                } else {
                    CHANSVmNativeClass* prev = pVm->nativeClasses;
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

    listPtr = pVm->mpMethodNameList;
    if (listPtr == NULL) {
        listPtr = (NameListNode*)&pVm->mpMethodNameList;
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

    allocSize = nameLength + 0x27 & ~0x1F;
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
    PropListNode** head = (PropListNode**)&cls->nativeProperties;
    PropListNode* node = *head;

    if (node == NULL) {
        if (property != NULL) {
            *head = (PropListNode*)property;
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
            node->next = (PropListNode*)property;
        }
    }

    return 0;
}

CHANSVmErr CHANSVmFindAndAddNativeMethod(CHANSVmNativeClass* cls, MethodListNode* method, u32 methodIndex) {
    MethodListNode** head = (MethodListNode**)&cls->nativeMethods;
    MethodListNode* node = *head;

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
    u32 flag;
    const char* name;
    CHANSVmFunction methodFunc;
    CHANSVmErr result = 0;
    u32 methodIndex;
    MethodListNode* node;

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
                if (CHANSVmFindAndAddNativeProperty(cls, NULL, methodIndex) != 0) {
                    continue;
                }

                node = CHANSVmAlloc(vm, 0x20);
                if (node == NULL) {
                    result = CHANS_VM_ERR_NO_MEMORY;
                    continue;
                }

                node->index = (u16)methodIndex;
                node->func = methodFunc;
                node->flag = (u8)flag;
                result = CHANSVmFindAndAddNativeMethod(cls, node, methodIndex);
                continue;
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
        PropListNode* node = CHANSVmAlloc(vm, 0x20);
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
    GlobalNameListNode* listPtr;
    GlobalNameListNode* newNode;
    vmSize nameLength = strlen(globalName);

    if (nameLength != 0) {
        listPtr = pVm->mpGlobalObjList;

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
            u32 allocSize = (nameLength + 0x37) & ~0x1F;
            newNode = CHANSVmAlloc(vm, allocSize);
            if (newNode != NULL) {
                newNode->nameLength = nameLength;
                memcpy(newNode->name, globalName, nameLength);
                memset(newNode, 0, sizeof(CHANSVmObjHdr));
                newNode->hdr.flags.raw = 0x80;

                if (listPtr == NULL) {
                    pVm->mpGlobalObjList = newNode;
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
            if (obj->type == 0 || obj->type == 8 && (obj->parentCls == NULL || obj->parentCls == cls)) {
                obj->type = 8;
                obj->parentCls = cls;
                result = 0;
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
            if (CHANSVmSetObjectAsNativeInstance(vm, obj, cls, NULL) ||
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
    CHANSVmPropertyList* propAccessors,
    vmU32 propCount,
    CHANSVmMethodList* methods,
    vmU32 methodCount
) {
    CHANSVmNativeClass* cls = CHANSVmAddNativeClass2(vm, className, clsCtor, clsDtor, clsInit);
    if (cls != NULL &&
        (propAccessors == NULL || propCount == 0 || CHANSVmAddNativePropertyAccessorsList(vm, cls, propAccessors, propCount) == 0) &&
        (methods == NULL || methodCount == 0 || CHANSVmAddNativeMethodList(vm, cls, methods, methodCount) == 0) &&
        (globalName == NULL || CHANSVmConstructGlobalObject(vm, globalName, cls, globalCtor) != NULL)) {
        return TRUE;
    }
    return FALSE;
}

vmBoolInt CHANSVmCheckNativeInstance(CHANSVmObjHdr* obj, const char* className) {
    if (obj != NULL && obj->type == 8) {
        CHANSVmNativeClass* nativeClass = obj->parentCls;
        if (nativeClass != NULL && className != NULL && nativeClass->nameLength == strlen(className) &&
            strncmp(nativeClass->name, className, nativeClass->nameLength) == 0) {
            return TRUE;
        }
    }
    return FALSE;
}

// TODO: array functions partially missing

static const char ArrayClassName[] = "Array";

static CHANSVmObjHdr* VmGetArrayElement(CHANSVm* vm, CHANSVmObjHdr* array, u32 index, s32 mode);

CHANSVmObjHdr* CHANSVmGetArrayElement(CHANSVm* vm, CHANSVmObjHdr* array, u32 index) {
    if (array != NULL && array->type == CHANS_VM_TYPE_OBJECT) {
        CHANSVmObjHdr* result = VmGetArrayElement(vm, array, index, 0);
        if (result != NULL) {
            return result;
        }
    }

    return NULL;
}

CHANSVmObjHdr* CHANSVmGetArrayElement2D(CHANSVm* vm, vmPtr array, vmS32 dimension0, vmS32 dimension1) {
    CHANSVmObjHdr* elem = CHANSVmGetArrayElement(vm, array, dimension0);
    if (elem != NULL) {
        elem = VmGetArrayElement(vm, elem, dimension1, 0);
        if (elem != NULL) {
            return elem;
        }
    }
    return NULL;
}

CHANSVmObjHdr* CHANSVmGetArrayElement2DFloat(CHANSVm* vm, vmFloat* array, vmS32 dimension0, vmS32 dimension1) {
    return CHANSVmConvertObjectType(vm, CHANS_VM_OBJ_TYPE_FLOAT, CHANSVmGetArrayElement2D(vm, array, dimension0, dimension1));
}

static u32 VmArrayGetLength(CHANSVmObjHdr* array);

u32 CHANSVmGetArrayLength(CHANSVm* vm, CHANSVmObjHdr* array) {
    if (array != NULL && array->type == CHANS_VM_TYPE_OBJECT)
        return VmArrayGetLength(array);
    return 0;
}

typedef struct {
    const char* name;
    void* func;
} NameFuncEntry;

extern const NameFuncEntry lbl_81616ED0[];

extern char lbl_81669B5A[];
extern char lbl_81669B67[];

int CHANS_8144E21(CHANSVm* vm, OSCalendarTime* out) {
    u32 argc;
    OSCalendarTime nettime;
    u32 i;
    s64 time;

    if (out == NULL) {
        goto ret0;
    }

    argc = ((CHANSVmPrivate*)vm)->execContext->argc;

    if (argc == 0) {
        goto osgettime;
    }

    if (argc == 1) {
        CHANSVmObjHdr* arg = CHANSVmGetArg(vm, 0);

        if (arg && arg->type == CHANS_VM_OBJ_TYPE_STRING) {
            if (arg->value.wstring_v->len == 6 && memcmp(arg->value.wstring_v->str, lbl_81616ED0[0].name, 6) == 0) {
                NETGetUniversalCalendar(&nettime);
                time = OSCalendarTimeToTicks(&nettime);
                time = time / ((__OSBusClock >> 2) / 1000);
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
        CHANSVmObjHdr* arg = CHANSVmGetArg(vm, i);
        arg = CHANSVmConvertObjectType(vm, CHANS_VM_OBJ_TYPE_INTEGER, arg);
        if (arg == NULL) {
            break;
        }

        switch (i) {
            case 0:
                nettime.year = (s32)arg->value.int_v;
                break;
            case 1:
                nettime.mon = (s32)arg->value.int_v;
                break;
            case 2:
                nettime.mday = (s32)arg->value.int_v;
                break;
            case 3:
                nettime.hour = (s32)arg->value.int_v;
                break;
            case 4:
                nettime.min = (s32)arg->value.int_v;
                break;
            case 5:
                nettime.sec = (s32)arg->value.int_v;
                break;
            case 6:
                nettime.msec = (s32)arg->value.int_v;
                break;
            default:
                if (CHANSVmDebugVerboseMode) {
                    CHANSVmDebugPrintf(lbl_81669B67, lbl_81669B5A, 0xd3);
                }
                return vmFalse;
        }
    }

    if (nettime.year < 2000) {
        nettime.year = 2000;
    }
    if (nettime.mday < 1) {
        nettime.mday = 1;
    }

    time = OSCalendarTimeToTicks(&nettime);
    time = time / ((__OSBusClock >> 2) / 1000);
    goto finalize;

osgettime:
    time = OSGetTime();
    time = time / ((__OSBusClock >> 2) / 1000);

finalize:
    time = time * ((__OSBusClock >> 2) / 1000);
    OSTicksToCalendarTime(time, out);
    return vmTrue;

ret0:
    return vmFalse;
}

VmCtorDefine(Date) {
    return CHANS_8144E21(VmInst, CHANSVmNewObjData(VmInst, VmReturnObj, 0x28));
}

#define RANGE(val, min, max) ((val) >= (min) && (val) <= (max))

const char* weekday_table[] = {"Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"};
const char* month_table[] = {"Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"};

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

        uv = snprintf(buffer, 0x20, "s_%s_%s_%02d_%02d:%02d:%02d_%04d_81669bf0",
                      weekday_table[date.wday], month_table[date.mon],
                      date.mday, date.hour, date.min, date.sec, date.year);

        if (uv <= 0x20) {
            return CHANSVmSetU16StringFromU8(VmInst, VmReturnObj, buffer, uv) == 0;
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
    int bias = SCGetCounterBias();
    s64 ticks = OSCalendarTimeToTicks(cal);
    u64 t = ticks / ((__OSBusClock >> 2) / 1000);
    u32 val;
    t = t / 1000;
    val = (u32)(t - (unsigned int)bias);
    return CHANSVmSetInteger(VmInst, VmReturnObj, val) == CHANS_VM_OK;
}


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

static const char StringClassName[] = "String";

VmCtorDefine(String) {
    vmBoolInt ok;
    CHANSVmObjHdr* obj;

    if (((CHANSVmPrivate*)VmInst)->execContext->argc != 0) {
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

// TODO: VmStringFromCharCode

VmMethodDefine(String, GetLength) {
    return CHANSVmSetInteger(VmInst, VmReturnObj, VmParentObj->value.string_v->len >> 1) == 0;
}

// TODO: other VmString* functions

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

typedef struct BlobHeader {
    volatile u32 offset; // 0x00
    u32 size;   // 0x04
    u8* pData;  // 0x08
} BlobHeader;

u32 CHANSVm_81451314(BlobHeader* blob, CHANSVmObjHdr* ptr, u32 limit);
BOOL CHANSVm_81451348(BlobHeader* blob, s64 size);
CHANSVmObjHdr* CHANSVmNewBlobObject(CHANSVm* VmInst, CHANSVmObjHdr* obj, u32 size, void* src, u32 count);
static u64 CHANSVm_814540E0(u32 low, u32 high);

char lbl_81697583[] = "%s";
char lbl_81697586[] = "Infinity"; // unused now; already inlined
char lbl_8169758A[] = "%.16lg";
char lbl_81697591[] = "%lld";
char lbl_81697596[] = "length";
char lbl_8169759D[] = "join";
char lbl_816975A2[] = "new2d";
char lbl_816975A8[] = "pop";
char lbl_816975AC[] = "push";
char lbl_816975B1[] = "shift";
char lbl_816975B7[] = "slice";
char lbl_816975BD[] = "unshift";
wchar_t lbl_816975C5[] = L"UTC";
char lbl_816975CC[] = "Sun";
char lbl_816975D0[] = "Mon";
char lbl_816975D4[] = "Tue";
char lbl_816975D8[] = "Wed";
char lbl_816975DC[] = "Thu";
char lbl_816975E0[] = "Fri";
char lbl_816975E4[] = "Sat";
char lbl_816975E8[] = "Jan";
char lbl_816975EC[] = "Feb";
char lbl_816975F0[] = "Mar";
char lbl_816975F4[] = "Apr";
char lbl_816975F8[] = "May";
char lbl_816975FC[] = "Jun";
char lbl_81697600[] = "Jul";
char lbl_81697604[] = "Aug";
char lbl_81697608[] = "Sep";
char lbl_8169760C[] = "Oct";
char lbl_81697610[] = "Nov";
char lbl_81697614[] = "Dec";
char lbl_81697618[] = "getDate";
char lbl_81697620[] = "getDay";
char lbl_81697627[] = "getTime";
char lbl_8169762F[] = "getRTC";
char lbl_81697636[] = "E";
char lbl_81697638[] = "LN10";
char lbl_8169763D[] = "LN2";
char lbl_81697641[] = "LOG2E";
char lbl_81697647[] = "LOG10E";
char lbl_8169764E[] = "PI";
char lbl_81697651[] = "SQRT1_2";
char lbl_81697659[] = "SQRT2";
char lbl_8169765F[] = "abs";
char lbl_81697663[] = "acos";
char lbl_81697668[] = "asin";
char lbl_8169766D[] = "atan";
char lbl_81697672[] = "atan2";
char lbl_81697678[] = "ceil";
char lbl_8169767D[] = "cos";
char lbl_81697681[] = "exp";
char lbl_81697685[] = "floor";
char lbl_8169768B[] = "log";
char lbl_8169768F[] = "max";
char lbl_81697693[] = "min";
char lbl_81697697[] = "pow";
char lbl_8169769B[] = "random";
char lbl_816976A2[] = "round";
char lbl_816976A8[] = "sin";
char lbl_816976AC[] = "sqrt";
char lbl_816976B1[] = "tan";
char lbl_816976B5[] = "getLength";
char lbl_816976BC[] = "getOffset";
char lbl_816976C4[] = "seek";
char lbl_816976CC[] = "skip";
char lbl_816976D4[] = "fill";
char lbl_816976DB[] = "isEqual";

char lbl_816976EC[] = "getBlob";
char lbl_816976F3[] = "setBlob";
char lbl_816976FB[] = "getHexString";

static void VmBlobInitValue(BlobHeader* blob, u32 size) {
    if (blob != NULL) {
        blob->offset = 0;
        blob->size = size;
        blob->pData = (u8*)(blob + 1);
    }
}

static const char BlobClassName[] = "Blob";

static CHANSVmObjHdr* VmBlobCreateDirect(CHANSVm* vm, CHANSVmObjHdr* obj, u32 size) NO_INLINE {
    CHANSVmNativeClass* cls;

    if (obj != NULL && CHANSVmDeleteObject(vm, obj)) {
        return NULL;
    }

    obj = CHANSVmNewObject(vm, vmFalse, obj, CHANS_VM_TYPE_POINTER, size + 0x0C);
    if (obj != NULL) {
        cls = CHANSVmFindNativeClass(vm, BlobClassName);
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

    if (CHANSVmCheckNativeInstance(obj, BlobClassName)) {
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
        return CHANSVmSetInteger(VmInst, VmReturnObj, blob->offset) == 0;
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

    return CHANSVmCopyObject(VmInst, VmReturnObj, VmParentObj) != 0;
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

    return CHANSVmCopyObject(VmInst, VmReturnObj, VmParentObj) != 0;
}

VmMethodDefine(Blob, GetLength) {
    BlobHeader* blob = (BlobHeader*)VmGetStrFromObjHdr(VmParentObj);
    if (blob != NULL) {
        return CHANSVmSetInteger(VmInst, VmReturnObj, blob->size) == 0;
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
        if (CHANSVmCheckNativeInstance(VmParentObj, BlobClassName)) {
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
        // TODO: resolve pointer arithmetic
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

    if (CHANSVmCheckNativeInstance(arg, BlobClassName)) {
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
    // TODO: needs cleanup after match
    BlobHeader* destBlob;
    CHANSVmObjHdr* destOffObj;
    CHANSVmObjHdr* srcObj;
    CHANSVmObjHdr* srcOffObj;
    CHANSVmObjHdr* countObj;
    BlobHeader* srcBlob;
    u32 srcOff;
    u32 destOff;
    u32 count;
    BOOL okFlag;

    destBlob = (BlobHeader*)VmGetStrFromObjHdr(VmParentObj);
    destOffObj = CHANSVmConvertObjectType(VmInst, CHANS_VM_OBJ_TYPE_INTEGER, CHANSVmGetArg(VmInst, 0));
    srcObj = CHANSVmGetArg(VmInst, 1);
    srcOffObj = CHANSVmConvertObjectType(VmInst, CHANS_VM_OBJ_TYPE_INTEGER, CHANSVmGetArg(VmInst, 2));
    countObj = CHANSVmConvertObjectType(VmInst, CHANS_VM_OBJ_TYPE_INTEGER, CHANSVmGetArg(VmInst, 3));

    if (CHANSVmCheckNativeInstance(srcObj, BlobClassName)) {
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

    if (CHANSVm_81450D14(destBlob, destOffObj->value.int_v, &destOff) == 0) goto fail_0;
    if (CHANSVm_81450D14(srcBlob, srcOffObj->value.int_v, &srcOff) == 0) goto fail_0;

    count = CHANSVm_81451314(srcBlob, countObj, srcOff);
    if ((s64)okFlag < (s64)count) {
        u32 available = destBlob->size - destOff;
        if ((s64)count < (s64)available) {
            okFlag = TRUE;
        }
    }

    if (okFlag) {
        BOOL okFlag2 = FALSE;
        if ((s64)okFlag2 < (s64)count) {
            u32 available = srcBlob->size - srcOff;
            if ((s64)count < (s64)available) {
                okFlag2 = TRUE;
            }
        }

        if (okFlag2) {
            memmove(
                destBlob->pData + destOff,
                srcBlob->pData + srcOff,
                count
            );
            return CHANSVmSetInteger(VmInst, VmReturnObj, (vmInteger)(u64)count) == 0;
        }
    }

fail_0:
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

    if (CHANSVmCheckNativeInstance(srcObj, BlobClassName)) {
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
        return 0;
    }

    count = arg != NULL ? CHANSVm_81451314(blob, arg, blob->offset) : 0;

    if (CHANSVm_81451348(blob, count) && CHANSVmNewObject(VmInst, vmFalse, VmReturnObj, CHANS_VM_OBJ_TYPE_STRING, count * 4) != NULL) {
        wchar_t* dest = (wchar_t*)VmGetStrFromObjHdr(VmReturnObj);
        u8* pData = blob->pData;
        u32 off = blob->offset;

        u8* src;
        u32 idx2;
        u32 loop_i;
        u32 destOff = 0;
        u32 i = 0;

        // TODO: fix data table
        char* hexTbl = (char*)lbl_816976E4;

        src = pData + off;
        for (loop_i = 0; loop_i < count; loop_i++) {
            idx2 = i + 1;
            i += 2;
            dest[destOff] = (wchar_t)(s8)hexTbl[(unsigned int)(*src >> 4) & 0xF];
            destOff += 2;
            dest[idx2] = (wchar_t)(s8)hexTbl[(unsigned int)(*src & 0xF)];
            src++;
        }
        blob->offset += count;
        return 1;
    }


    return 0;
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

        {
            u32 off = offset;
            if (((s64)size >= 0LL && (s64)(blob->size - offset) >= (s64)size) != FALSE)
            {
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
    return CHANSVmSetInteger(VmInst, VmReturnObj, (vmInteger)(u64)crc) == 0;
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
                return CHANSVmSetInteger(VmInst, VmReturnObj, (vmInteger)(u64)crc) == 0;
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
    return CHANSVmSetInteger(VmInst, VmReturnObj, (vmInteger)(u64)crc) == 0;
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
                return CHANSVmSetInteger(VmInst, VmReturnObj, (vmInteger)(u64)crc) == 0;
            }
        }
    }
    return 0;
}

static const void* NETGetSHA1Interface(void);

typedef struct {
    u8 buf[0xD4];
} NETHMACContext;

static void NETHMACInit(NETHMACContext* ctx, const void* interface, const void* key, u32 keyLen);
static void NETHMACUpdate(NETHMACContext* ctx, const void* data, u32 len);
static void NETHMACGetDigest(NETHMACContext* ctx, void* digest);

VmMethodDefine(Blob, CalcHMAC) {
    BlobHeader* blob = (BlobHeader*)VmGetStrFromObjHdr(VmParentObj);
    CHANSVmObjHdr* arg0 = CHANSVmGetArg(VmInst, 0);
    BlobHeader* keyBlob;
    NETHMACContext ctx;
    u32 blobSize;
    u8* blobData;
    u8* digest;
    CHANSVmObjHdr* newObj;

    if (CHANSVmCheckNativeInstance(arg0, BlobClassName)) {
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

    if (CHANSVmCheckNativeInstance(argKey, BlobClassName)) {
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
        return CHANSVmSetInteger(VmInst, VmReturnObj, (vmInteger)(u64)val) == 0;
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
        return CHANSVmSetInteger(VmInst, VmReturnObj, (vmInteger)(u64)val) == 0;
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
        return CHANSVmSetInteger(VmInst, VmReturnObj, (vmInteger)(u64)val) == 0;
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
        return CHANSVmSetInteger(VmInst, VmReturnObj, (vmInteger)val) == 0;
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
        return CHANSVmSetInteger(VmInst, VmReturnObj, (vmInteger)val) == 0;
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
        return CHANSVmSetInteger(VmInst, VmReturnObj, (vmInteger)val) == 0;
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
        return CHANSVmSetInteger(VmInst, VmReturnObj, val) == 0;
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
    u32 elemType; // 0x04
    u32 infoType; // 0x08
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

static u32 vmBlobParsePackFormatString(u32* out_nextPos, u32* out_elemSize, u32* out_elemType, u32* out_paramValue, const wchar_t* fmtStr, u32 fmtLen, u32 curPos) {
    u32 paramValue;
    u32 flags;
    u32 elemType;
    u32 elemSize;
    u32 i;
    const PackFormatEntry* p;
    wchar_t ch;

    elemType = 1;
    flags = 0;
    paramValue = 0;

    while (curPos < fmtLen) {
        ch = fmtStr[curPos];
        p = vmBlobPackFormatList;

        for (i = 0; i < 25; i++, p++) {
            if (p->charCode == ch) {
                elemSize = p->infoType;
                elemType = p->elemType;
                flags = p->flags;
                break;
            }
        }

        if (i >= 25) {
            elemType = 1;
            elemSize = 0;
            goto exit_func;
        }

        if (elemSize == 2) goto case23;
        if (elemSize != 3) goto param_processing;
case23:
        if (elemSize == 3) {
            u32 cnt = fmtLen - curPos;
            if (curPos < fmtLen) {
                for (; cnt != 0; --cnt) {
                    u32 c2 = fmtStr[curPos];
                    if (c2 == L'\r' || c2 == L'\n')
                        break;
                    curPos++;
                }
            }
        }
        curPos++;
        continue;
    }

    elemSize = 1;
    ch = 0;
    goto exit_func;

param_processing:
    curPos++;
    {
        u32 hasParam = 0;
        paramValue = 0;
        {
            u32 cnt = fmtLen - curPos;
            if (curPos < fmtLen) {
                for (; cnt != 0; --cnt) {
                    u32 d2 = fmtStr[curPos];

                    if (!hasParam) {
                        if (d2 == 0x2A) {
                            if (flags & 1) {
                                paramValue = (u32)-1;
                                curPos++;
                                goto exit_func;
                            } else {
                                elemSize = 0;
                                elemType = 1;
                                paramValue = 0;
                                goto exit_func;
                            }
                        }
                    }

                    if (d2 >= 0x30 && d2 <= 0x39) {
                        hasParam = 1;
                        paramValue = paramValue * 10 + d2 - 0x30;
                        if ((s32)paramValue < 0) {
                            elemType = 1;
                            elemSize = 0;
                            paramValue = 0;
                            goto exit_func;
                        }
                        curPos++;
                    } else {
                        break;
                    }
                }
            }
        }
        if (hasParam == 0) {
            paramValue = 1;
        }
    }

exit_func:
    if (out_nextPos != NULL) *out_nextPos = ch;
    if (out_elemSize != NULL) *out_elemSize = elemSize;
    if (out_elemType != NULL) *out_elemType = elemType;
    if (out_paramValue != NULL) *out_paramValue = paramValue;

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
    u32 elemSize;
    u32 elemType;
    u32 paramValue;
    u32 nextPos;
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
    u32 nibble;
    CHANSVmExecutionCtx* unk1;
    u32 nextPos1;
    u32 elemSize1;
    u32 elemType1;
    u32 paramValue1;
    u32 nextPos2;
    s32 elemSize2;
    s32 elemType2;
    s32 paramValue2;
    u32 packBuf[2];

    parentBlob = (BlobHeader*)VmGetStrFromObjHdr(VmParentObj);
    argStr = CHANSVmConvertObjectType(VmInst, CHANS_VM_OBJ_TYPE_STRING, CHANSVmGetArg(VmInst, 0));
    fmtStr = (const wchar_t*)VmGetStrFromObjHdr(argStr);
    fmtLen = (u32)VmGetIntFromObjHdr(argStr) >> 1;
    argArr = CHANSVmConvertObjectType(VmInst, CHANS_VM_TYPE_OBJECT, CHANSVmGetArg(VmInst, 1));

    if (fmtStr != NULL)
        goto L_fmtOk;
    return 0;
L_fmtOk:

    if (flag == 0) {
        if (parentBlob == NULL)
            goto fail;
    }

    argCount = 0;
    fmtPos = 0;
    if (flag != 0) {
        totalSize = 0;
    } else {
        totalSize = parentBlob->offset;
    }

    while (1) {
        nextPos1 = 0;
        elemSize1 = 0;
        elemType1 = 1;
        paramValue1 = 1;
        fmtPos = vmBlobParsePackFormatString(&nextPos1, &elemSize1, &elemType1, &paramValue1, fmtStr, fmtLen, fmtPos);
        elemSize = elemSize1;

        if (elemSize == 1)
            break;

        if (elemSize == 0)
            goto fail;

        if ((s32)elemSize >= 10)
            goto first_L_10block;
        if ((s32)elemSize == 5)
            goto first_case5;
        if ((s32)elemSize >= 5)
            goto first_case6_9;
        if ((s32)elemSize >= 4)
            goto first_case4;
        goto fail;
    first_L_10block:
        if ((s32)elemSize == 14)
            goto first_case14;
        if ((s32)elemSize >= 14)
            goto fail;
        goto first_case10_13;

    first_case4:
        if ((s32)paramValue1 < 0) {
            if (argArr != NULL) {
                obj = CHANSVmGetArrayElement(VmInst, argArr, argCount);
            } else {
                obj = CHANSVmGetArg(VmInst, argCount + 1);
            }
            if (CHANSVmCheckNativeInstance(obj, BlobClassName)) {
                srcBlob = (BlobHeader*)VmGetStrFromObjHdr(obj);
            } else {
                srcBlob = NULL;
            }
            if (srcBlob == NULL)
                goto fail;
            count = srcBlob->size - srcBlob->offset;
        } else {
            count = paramValue1;
        }
        if ((s32)count < 0)
            goto fail;
        totalSize += count;
        argCount++;
        goto first_loop_bottom;

    first_case5:
        if ((s32)paramValue1 < 0)
            goto fail;
        totalSize += paramValue1;
        goto first_loop_bottom;

    first_case6_9:
        if ((s32)paramValue1 < 0) {
            if (argArr != NULL) {
                count = CHANSVmGetArrayLength(VmInst, argArr);
                count = count - argCount;
            } else {
            unk1 = ((CHANSVmPrivate*)VmInst)->execContext;
            count = unk1->argc - argCount - 1;
            }
        } else {
            count = paramValue1;
        }
        if ((s32)count < 0)
            goto fail;
        argCount += count;
        totalSize += elemType1 * count;
        goto first_loop_bottom;

    first_case10_13:
        if ((s32)paramValue1 < 0) {
            if (argArr != NULL) {
                obj = CHANSVmGetArrayElement(VmInst, argArr, argCount);
                obj = CHANSVmConvertObjectType(VmInst, CHANS_VM_OBJ_TYPE_STRING, obj);
            } else {
                obj = CHANSVmGetArg(VmInst, argCount + 1);
                obj = CHANSVmConvertObjectType(VmInst, CHANS_VM_OBJ_TYPE_STRING, obj);
            }
            if (obj == NULL)
                goto fail;
            count = (u32)obj->value.int32_v->val >> 1;
        } else {
            count = paramValue1;
        }
        if ((s32)count < 0)
            goto fail;
        argCount++;
        totalSize += elemType1 * count;
        goto first_loop_bottom;

    first_case14:
        if ((s32)paramValue1 < 0) {
            if (argArr != NULL) {
                obj = CHANSVmGetArrayElement(VmInst, argArr, argCount);
                obj = CHANSVmConvertObjectType(VmInst, CHANS_VM_OBJ_TYPE_STRING, obj);
            } else {
                obj = CHANSVmGetArg(VmInst, argCount + 1);
                obj = CHANSVmConvertObjectType(VmInst, CHANS_VM_OBJ_TYPE_STRING, obj);
            }
            if (obj == NULL)
                goto fail;
            count = (u32)obj->value.int32_v->val >> 1;
        } else {
            count = paramValue1;
        }
        if ((s32)count < 0)
            goto fail;
        argCount++;
        totalSize += (count + 1) / 2;

    first_loop_bottom:
        if (flag != 0)
            continue;
        if (totalSize > parentBlob->size)
            goto fail;
    }

    if (flag != 0) {
        VmReturnObj = VmBlobCreateDirect(VmInst, VmReturnObj, totalSize);
        if (CHANSVmCheckNativeInstance(VmReturnObj, BlobClassName)) {
            destBlob = (BlobHeader*)VmGetStrFromObjHdr(VmReturnObj);
        } else {
            destBlob = NULL;
        }
        parentBlob = destBlob;
        if (parentBlob == NULL)
            goto fail;
    } else {
        destBlob = parentBlob;
    }

    argCount = 0;
    fmtPos = 0;

    while (1) {
        nextPos2 = 0;
        elemSize2 = 0;
        elemType2 = 1;
        paramValue2 = 1;
        fmtPos = vmBlobParsePackFormatString(&nextPos2, (u32*)(void*)&elemSize2, (u32*)(void*)&elemType2, (u32*)(void*)&paramValue2, fmtStr, fmtLen, fmtPos);
        elemSize = elemSize2;

        if (elemSize == 1)
            break;

        if (elemSize == 0)
            goto fail;

        if ((s32)elemSize >= 10)
            goto second_L_10block;
        if ((s32)elemSize == 5)
            goto second_case5;
        if ((s32)elemSize >= 5)
            goto second_case6_9;
        if ((s32)elemSize >= 4)
            goto second_case4;
        goto fail;
    second_L_10block:
        if ((s32)elemSize == 14)
            goto second_case14;
        if ((s32)elemSize >= 14)
            goto fail;
        goto second_case10_13;

    second_case4:
        if (argArr != NULL) {
            obj = CHANSVmGetArrayElement(VmInst, argArr, argCount);
        } else {
            obj = CHANSVmGetArg(VmInst, argCount + 1);
        }
        if (CHANSVmCheckNativeInstance(obj, BlobClassName)) {
            srcBlob = (BlobHeader*)VmGetStrFromObjHdr(obj);
        } else {
            srcBlob = NULL;
        }
        argCount++;
        if (srcBlob == NULL)
            goto fail;
        if (paramValue2 < 0) {
            copySize = srcBlob->size - srcBlob->offset;
        } else {
            copySize = paramValue2;
        }
        if (copySize < 0)
            goto fail;
        if (!CHANSVm_81451348(destBlob, copySize))
            goto fail;
        srcOff = srcBlob->offset;
        dataSize = srcBlob->size - srcOff;
        if (dataSize > copySize)
            dataSize = copySize;
        memmove(destBlob->pData + destBlob->offset, srcBlob->pData + srcOff, dataSize);
        if (dataSize < copySize)
            memset(destBlob->pData + destBlob->offset + dataSize, 0, copySize - dataSize);
        destBlob->offset += copySize;
        goto second_loop_bottom;

    second_case5:
        if (paramValue2 < 0)
            goto fail;
        if (!CHANSVm_81451348(destBlob, paramValue2))
            goto fail;
        if (paramValue2 > 0)
            memset(destBlob->pData + destBlob->offset, 0, paramValue2);
        destBlob->offset += paramValue2;
        goto second_loop_bottom;

    second_case6_9:
        if (paramValue2 >= 0) {
            count = paramValue2;
            goto L_c69_got_count;
        }
        if (argArr != NULL) {
            count = CHANSVmGetArrayLength(VmInst, argArr) - argCount;
        } else {
            unk1 = ((CHANSVmPrivate*)VmInst)->execContext;
            count = unk1->argc - argCount - 1;
        }
    L_c69_got_count:
        if ((s32)count < 0)
            goto fail;
        if (!CHANSVm_81451348(destBlob, (u32)(elemType2 * count)))
            goto fail;
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
            if (intObj == NULL)
                goto fail;
            argCount++;
            valLow = (u32)intObj->value.int_v;
            valHigh = (u32)((u64)intObj->value.int_v >> 32);
            if (elemSize2 == 8)
                goto L_c69_signed;
            if ((s32)elemSize2 > 8) {
                if ((s32)elemSize2 >= 10)
                    goto fail;
                goto L_c69_unsigned;
            }
            if (elemSize2 == 6)
                goto L_c69_signed;
            if ((s32)elemSize2 > 6)
                goto L_c69_unsigned;
            goto fail;
        L_c69_signed:
            if (elemType2 == 4)
                goto L_c69_stw;
            if ((s32)elemType2 > 4) {
                if (elemType2 == 8)
                    goto L_c69_s64;
                goto fail;
            }
            if (elemType2 == 2)
                goto L_c69_sth;
            if ((s32)elemType2 > 2)
                goto fail;
            if (elemType2 == 1)
                goto L_c69_stb;
            goto fail;
        L_c69_unsigned:
            if (elemType2 == 3)
                goto fail;
            if ((s32)elemType2 > 3) {
                if ((s32)elemType2 >= 5)
                    goto fail;
                goto L_c69_stw;
            }
            if (elemType2 == 1)
                goto L_c69_stb;
            if ((s32)elemType2 > 1)
                goto L_c69_sth;
            goto fail;
        L_c69_stb:
            *(u8*)packBuf = (u8)valLow;
            goto L_c69_after_store;
        L_c69_sth:
            *(u16*)packBuf = (u16)valLow;
            goto L_c69_after_store;
        L_c69_stw:
            *(u32*)packBuf = valLow;
            goto L_c69_after_store;
        L_c69_s64:
            *(u32*)packBuf = valHigh;
            *((u32*)packBuf + 1) = valLow;
        L_c69_after_store:
            if ((s32)elemSize2 >= 8) {
                if ((s32)elemSize2 >= 10)
                    goto L_c69_skip_swap;
                if (elemType2 == 4) {
                    u32 tmp = *(u32*)packBuf;
                    *(u32*)packBuf = ((tmp >> 24) & 0xFF) | ((tmp >> 8) & 0xFF00) | ((tmp << 8) & 0xFF0000) | (tmp << 24);
                    goto L_c69_skip_swap;
                }
                if ((s32)elemType2 > 4) {
                    if (elemType2 == 8) {
                        u64 val = CHANSVm_814540E0(*((u32*)packBuf + 1), *(u32*)packBuf);
                        *(u32*)packBuf = (u32)(val >> 32);
                        *((u32*)packBuf + 1) = (u32)val;
                    }
                    goto L_c69_skip_swap;
                }
                if (elemType2 == 2) {
                    u16 tmp = *(u16*)packBuf;
                    *(u16*)packBuf = (tmp >> 8) | (tmp << 8);
                }
            }
        L_c69_skip_swap:
            memcpy(destBlob->pData + destBlob->offset, packBuf, elemType2);
            destBlob->offset += elemType2;
        }
        goto second_loop_bottom;

    second_case10_13:
        if (argArr != NULL) {
            strObj = CHANSVmGetArrayElement(VmInst, argArr, argCount);
            strObj = CHANSVmConvertObjectType(VmInst, CHANS_VM_OBJ_TYPE_STRING, strObj);
        } else {
            strObj = CHANSVmGetArg(VmInst, argCount + 1);
            strObj = CHANSVmConvertObjectType(VmInst, CHANS_VM_OBJ_TYPE_STRING, strObj);
        }
        argCount++;
        if (strObj == NULL)
            goto fail;
        if (paramValue2 < 0) {
            count = (u32)strObj->value.int32_v->val >> 1;
        } else {
            count = paramValue2;
        }
        if ((s32)count < 0)
            goto fail;
        if (!CHANSVm_81451348(destBlob, (u32)(elemType2 * count)))
            goto fail;
        srcData = (u8*)VmGetStrFromObjHdr(strObj);
        strLen = (u32)VmGetIntFromObjHdr(strObj) >> 1;
        charCount = strLen;
        if (charCount > count)
            charCount = count;
        memset(destBlob->pData + destBlob->offset, 0, elemType2 * count);
        if (elemType2 == 1) {
            CHANSVmStrCpyToU8FromU16(destBlob->pData + destBlob->offset, srcData, charCount);
        } else {
            memcpy(destBlob->pData + destBlob->offset, srcData, elemType2 * charCount);
        }
        destBlob->offset += elemType2 * count;
        goto second_loop_bottom;

    second_case14:
        if (argArr != NULL) {
            strObj = CHANSVmGetArrayElement(VmInst, argArr, argCount);
            strObj = CHANSVmConvertObjectType(VmInst, CHANS_VM_OBJ_TYPE_STRING, strObj);
        } else {
            strObj = CHANSVmGetArg(VmInst, argCount + 1);
            strObj = CHANSVmConvertObjectType(VmInst, CHANS_VM_OBJ_TYPE_STRING, strObj);
        }
        argCount++;
        if (strObj == NULL)
            goto fail;
        if (paramValue2 < 0) {
            count = (u32)strObj->value.int32_v->val >> 1;
        } else {
            count = paramValue2;
        }
        if ((s32)count < 0)
            goto fail;
        bufSize = (count + 1) / 2;
        if (!CHANSVm_81451348(destBlob, bufSize))
            goto fail;
        srcData = (u8*)VmGetStrFromObjHdr(strObj);
        strLen = (u32)VmGetIntFromObjHdr(strObj) >> 1;
        dest = destBlob->pData + destBlob->offset;
        memset(dest, 0, bufSize);
        for (i = 0; (s32)i < (s32)count; i++) {
            ch = ((const u16*)srcData)[i];
            if (ch >= 0x30 && ch <= 0x39)
                nibble = ch - 0x30;
            else if (ch >= 0x61 && ch <= 0x66)
                nibble = ch - 0x57;
            else if (ch >= 0x41 && ch <= 0x46)
                nibble = ch - 0x37;
            else
                nibble = 0;
            if ((i & 1) == 0)
                nibble <<= 4;
            *dest |= (nibble & 0xFF);
            if (i & 1)
                dest++;
        }
        destBlob->offset += bufSize;

    second_loop_bottom:
        ;
    }

    if (flag != 0) {
        destBlob->offset = 0;
    }
    return 1;

fail:
    return 0;
}

static u64 CHANSVm_814540E0(u32 low, u32 high)
{
    u64 x = ((u64)low << 32) | high;
    return (((x >> 56) & 0x00000000000000ffULL) |
            ((x >> 40) & 0x000000000000ff00ULL) |
            ((x >> 24) & 0x0000000000ff0000ULL) |
            ((x >>  8) & 0x00000000ff000000ULL) |
            ((x <<  8) & 0x000000ff00000000ULL) |
            ((x << 24) & 0x0000ff0000000000ULL) |
            ((x << 40) & 0x00ff000000000000ULL) |
            ((x << 56) & 0xff00000000000000ULL));
}

VmMethodDefine(Blob, Create) {
    return VmBlobPackCommon(VmInst, VmParentObj, VmReturnObj, 1);
}

VmMethodDefine(Blob, Pack) {
    return VmBlobPackCommon(VmInst, VmParentObj, VmReturnObj, 0);
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
    u32 outType;
    u32 outSize;
    u32 outVal;
    u32 iterIdx;
    u32 buf_area[2];
    srcBlob = (BlobHeader*)VmGetStrFromObjHdr(VmParentObj);
    bufAreaBase = buf_area;
    argStr = CHANSVmConvertObjectType(VmInst, CHANS_VM_OBJ_TYPE_STRING, CHANSVmGetArg(VmInst, 0));
    fmtStr = (wchar_t*)VmGetStrFromObjHdr(argStr);
    fmtLen = (u32)VmGetIntFromObjHdr(argStr) >> 1;

    if (srcBlob == NULL || fmtStr == NULL)
        return 0;

    blobOff = srcBlob->offset;
    argCount = 0;
    fmtPos = 0;
    c0 = 0;
    c1 = 1;

    while (1) {
        u32 tmpPos;
        u32 tmpSize;
        u32 tmpType;
        u32 tmpVal;
        tmpPos = c0;
        tmpSize = c0;
        tmpType = c1;
        tmpVal = c1;
        fmtPos = vmBlobParsePackFormatString(&tmpPos, &tmpSize, &tmpType, &tmpVal, fmtStr, fmtLen, fmtPos);

        if (tmpSize == 1)
            break;

        if ((s32)tmpSize == 0)
            goto fail;

        if ((s32)tmpSize >= 10)
            goto first_size_ge_10;

        if ((s32)tmpSize == 5)
            goto first_size_eq_5;

        if ((s32)tmpSize >= 5)
            goto first_size_ge_5;

        if ((s32)tmpSize >= 4)
            goto first_size_eq_4;

        goto first_loop_bottom;

    first_size_ge_10:
        if ((s32)tmpSize == 14)
            goto first_size_eq_14;
        if ((s32)tmpSize >= 14)
            goto first_loop_bottom;
        goto first_size_10_13;

    first_size_eq_4:
        count = tmpVal;
        if ((s32)count < 0)
            count = srcBlob->size - blobOff;
        if ((s32)count < 0)
            goto fail;
        argCount++;
        blobOff += count;
        goto first_loop_bottom;

    first_size_eq_5:
        if ((s32)tmpVal < 0)
            goto fail;
        blobOff += tmpVal;
        goto first_loop_bottom;

    first_size_ge_5:
        count = tmpVal;
        if ((s32)count < 0) {
            if (tmpType == 0)
                goto fail;
            count = srcBlob->size - blobOff;
            count /= tmpType;
        }
        if ((s32)count < 0)
            goto fail;
        argCount += count;
        blobOff += tmpType * count;
        goto first_loop_bottom;

    first_size_10_13:
        count = tmpVal;
        if ((s32)count < 0) {
            if (tmpType == 0)
                goto fail;
            count = srcBlob->size - blobOff;
            count /= tmpType;
        }
        if ((s32)count < 0)
            goto fail;
        argCount++;
        blobOff += tmpType * count;
        goto first_loop_bottom;

    first_size_eq_14:
        count = tmpVal;
        if ((s32)count < 0) {
            count = (srcBlob->size - blobOff) * 2;
        }
        if ((s32)count < 0)
            goto fail;
        argCount++;
        blobOff += (s32)(count + 1) / 2;
        goto first_loop_bottom;

    first_loop_bottom:
        if (blobOff > srcBlob->size)
            goto fail;
    }

    {
        u32 elemCount = argCount;
        if (CHANSVmNewArrayObject(VmInst, VmReturnObj, 1, &elemCount) == NULL)
            goto fail;
    }

    fmtPos = 0;

    elemIdx = 0;
    outType = 1;
    outSize = 0;
    outVal = 1;
    goto second_loop;

second_loop:
    outType = 1;
    outSize = 0;
    outVal = 1;
    fmtPos = vmBlobParsePackFormatString(&outPos, &outSize, &outType, &outVal, fmtStr, fmtLen, fmtPos);

    if (outSize == 1)
        goto second_success;

    if ((s32)outSize == 0)
        goto fail;

    if ((s32)outSize >= 10)
        goto second_size_ge_10;

    if ((s32)outSize == 5)
        goto second_size_eq_5;

    if ((s32)outSize >= 5)
        goto second_size_ge_5;

    if ((s32)outSize >= 4)
        goto second_size_eq_4;

    goto fail;

second_size_ge_10:
    if ((s32)outSize == 14)
        goto second_hex_string;
    if ((s32)outSize >= 14)
        goto fail;
    goto second_string_array;

second_size_eq_4: {
    CHANSVmObjHdr* arrElem;
    u8* dataPtr;
    count = outVal;
    if ((s32)count < 0)
        count = srcBlob->size - srcBlob->offset;
    if ((s32)count < 0)
        goto fail;

    if (!CHANSVm_81451348(srcBlob, (s32)count))
        goto fail;

    dataPtr = srcBlob->pData + srcBlob->offset;
    arrElem = CHANSVmGetArrayElement(VmInst, VmReturnObj, elemIdx);
    elemIdx++;
    if (arrElem == NULL)
        goto fail;

    if (CHANSVmNewBlobObject(VmInst, arrElem, count, dataPtr, count) == NULL)
        goto fail;

    srcBlob->offset += (s32)count;
    goto second_loop;
}

second_size_eq_5:
    if ((s32)outVal < 0)
        goto fail;

    if (!CHANSVm_81451348(srcBlob, outVal))
        goto fail;

    srcBlob->offset += outVal;
    goto second_loop;

second_size_ge_5: {
    CHANSVmObjHdr* arrElem;
    count = outVal;
    if ((s32)count < 0) {
        if (outType == 0)
            goto fail;
        count = (srcBlob->size - srcBlob->offset) / outType;
    }
    if ((s32)count < 0)
        goto fail;

    if (!CHANSVm_81451348(srcBlob, outType * count))
        goto fail;

    for (iterIdx = 0; iterIdx < count; iterIdx++) {
        buf_area[0] = c0;
        buf_area[1] = c0;
        memcpy(buf_area, srcBlob->pData + srcBlob->offset, outType);

        if ((s32)outSize < 8) {
            goto done_set_val;
        } else {
            if ((s32)outSize >= 10)
                goto done_set_val;
            if (outType == 4)
                goto byte_swap_word;
            if ((s32)outType >= 4)
                goto byte_swap_check_8;
            if (outType == 2)
                goto byte_swap_halfword;
            goto done_set_val;
        }

    byte_swap_check_8:
        if (outType == 8)
            goto byte_swap_qword;
        goto done_set_val;

    byte_swap_halfword: {
        u16 hwTmp = *(u16*)bufAreaBase;
        *(u16*)bufAreaBase = (hwTmp >> 8) | (hwTmp << 8);
        goto done_set_val;
    }

    byte_swap_word: {
        u32 wTmp = bufAreaBase[0];
        bufAreaBase[0] = ((wTmp >> 24) & 0xFF) | ((wTmp >> 8) & 0xFF00) | ((wTmp << 8) & 0xFF0000) | (wTmp << 24);
        goto done_set_val;
    }

    byte_swap_qword: {
        u64 tmpVal = CHANSVm_814540E0(bufAreaBase[0], bufAreaBase[1]);
        bufAreaBase[0] = (u32)tmpVal;
        bufAreaBase[1] = (u32)(tmpVal >> 32);
        goto done_set_val;
    }

    done_set_val:
        if ((s32)outSize == 8)
            goto signed_extract;
        if ((s32)outSize >= 8)
            goto done_gt_8;
        if ((s32)outSize == 6)
            goto signed_extract;
        if ((s32)outSize >= 6)
            goto unsigned_extract;
        goto fail;

    done_gt_8:
        if ((s32)outSize >= 10)
            goto fail;
        goto unsigned_extract;

    signed_extract:
        if (outType == 4)
            goto extract_s32;
        if ((s32)outType >= 4)
            goto signed_check_8;
        if (outType == 2)
            goto extract_s16;
        if ((s32)outType >= 2)
            goto fail;
        if ((s32)outType >= 1)
            goto extract_s8;
        goto fail;

    signed_check_8:
        if (outType == 8)
            goto extract_s64;
        goto fail;

    extract_s8:
        setVal = (u32)(s32)(s8)*(u8*)bufAreaBase;
        valHigh = (s32)setVal >> 31;
        goto merge_point;

    extract_s16:
        setVal = (u32)(s32)(s16)*(u16*)bufAreaBase;
        valHigh = (s32)setVal >> 31;
        goto merge_point;

    extract_s32:
        setVal = bufAreaBase[0];
        valHigh = (s32)setVal >> 31;
        goto merge_point;

    extract_s64:
        valHigh = bufAreaBase[0];
        setVal = bufAreaBase[1];
        goto merge_point;

    unsigned_extract:
        if (outType == 3)
            goto fail;
        if ((s32)outType >= 3)
            goto unsigned_check_5;
        if (outType == 1)
            goto extract_u8;
        if ((s32)outType >= 1)
            goto extract_u16;
        goto fail;

    unsigned_check_5:
        if ((s32)outType >= 5)
            goto fail;
        goto extract_u32;

    extract_u8:
        setVal = *(u8*)bufAreaBase;
        valHigh = 0;
        goto merge_point;

    extract_u16:
        setVal = *(u16*)bufAreaBase;
        valHigh = 0;
        goto merge_point;

    extract_u32:
        setVal = bufAreaBase[0];
        valHigh = 0;
        goto merge_point;

    merge_point:
        arrElem = CHANSVmGetArrayElement(VmInst, VmReturnObj, elemIdx);
        elemIdx++;
        if (arrElem == NULL)
            goto fail;

        if (CHANSVmSetInteger(VmInst, arrElem, (vmInteger)(((u64)(u32)valHigh << 32) | setVal)) != CHANS_VM_OK)
            goto fail;

        srcBlob->offset += outType;
    }
    goto second_loop;
}

second_string_array: {
    CHANSVmObjHdr* arrElem;
    u8* srcPtr;
    count = outVal;
    if ((s32)count < 0) {
        if (outType == 0)
            goto fail;
        count = (srcBlob->size - srcBlob->offset) / outType;
    }
    if ((s32)count < 0)
        goto fail;

    if (!CHANSVm_81451348(srcBlob, outType * count))
        goto fail;

    srcPtr = srcBlob->pData + srcBlob->offset;
    arrElem = CHANSVmGetArrayElement(VmInst, VmReturnObj, elemIdx);
    elemIdx++;
    if (arrElem == NULL)
        goto fail;

    if (outType == 1) {
        if (CHANSVmSetU16StringFromU8(VmInst, arrElem, (char*)srcPtr, count) != CHANS_VM_OK)
            goto fail;
    } else {
        if (CHANSVmSetU16String(VmInst, arrElem, (wchar_t*)srcPtr, outType * count) != CHANS_VM_OK)
            goto fail;
    }

    if (outSize == 0xB || outSize == 0xD) {
        u8* strData;
        u32 strLen;
        u32 i;
        strData = (u8*)VmGetStrFromObjHdr(arrElem);
        strLen = (u32)VmGetIntFromObjHdr(arrElem);
        if (strData != NULL && strLen != 0 && arrElem->type == CHANS_VM_OBJ_TYPE_STRING) {
            u32 remaining = strLen >> 1;
            while (1) {
                if (remaining == 0)
                    break;
                remaining--;
                if (((strData[0] << 8) | strData[1]) == 0)
                    break;
                strData += 2;
                i++;
            }
            {
                u32* hdr = (u32*)arrElem->value.string_v;
                hdr[1] = i * 2;
            }
        }
    }

    srcBlob->offset += outType * count;
    goto second_loop;
}

second_hex_string: {
    CHANSVmObjHdr* arrElem;
    u8* srcData;
    s32 bufSize;
    count = outVal;
    if ((s32)count < 0) {
        count = (srcBlob->size - srcBlob->offset) * 2;
    }
    if ((s32)count < 0)
        goto fail;

    bufSize = (s32)(count + 1) / 2;
    if (!CHANSVm_81451348(srcBlob, (s32)bufSize))
        goto fail;

    srcData = srcBlob->pData + srcBlob->offset;
    arrElem = CHANSVmGetArrayElement(VmInst, VmReturnObj, elemIdx);
    elemIdx++;
    if (arrElem == NULL)
        goto fail;

    if (CHANSVmNewObject(VmInst, vmFalse, arrElem, CHANS_VM_OBJ_TYPE_STRING, count * 2) == NULL)
        goto fail;

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
            nibble = (byte >> 4) & 0xF;
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
    goto second_loop;

second_success:
    return 1;
    }

    return 1;

fail:
    return 0;
}

CHANSVmObjHdr* CHANSVmNewBlobObject(CHANSVm* VmInst, CHANSVmObjHdr* obj, u32 size, void* src, u32 count) {
    BlobHeader* blob;

    if (count > size) {
        count = size;
    }

    obj = VmBlobCreateDirect(VmInst, obj, size);
    if (obj == NULL)
        return NULL;

    if (src != NULL && count != 0) {
        if (CHANSVmCheckNativeInstance(obj, BlobClassName)) {
            blob = (BlobHeader*)VmGetStrFromObjHdr(obj);
        } else {
            blob = NULL;
        }

        if (blob == NULL)
            return NULL;

        memcpy((void*)blob->pData, src, count);
    }

    return obj;
}

VmMethodDefine(Image, Width) {
    CHANSVmImage* image = (CHANSVmImage*)*VmParentObj->value.ptr_v;
    return CHANSVmSetInteger(VmInst, VmReturnObj, image->width) == CHANS_VM_OK;
}
VmMethodDefine(Image, Height) {
    CHANSVmImage* image = (CHANSVmImage*)*VmParentObj->value.ptr_v;
    return CHANSVmSetInteger(VmInst, VmReturnObj, image->height) == CHANS_VM_OK;
}
VmMethodDefine(Image, Format) {
    CHANSVmImage* image = (CHANSVmImage*)*VmParentObj->value.ptr_v;
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

    if ((width & 7) != 0) goto fail;
    if ((height & 7) != 0) goto fail;

    if (format == 6) goto bpp32;
    if (format > 6) goto bpp32;
    if (format >= 3) goto bpp16;
    if (format >= 1) goto bpp8;
    goto bpp32;

    bpp8:
        bpp = 0x8;
    goto done_bpp;

    bpp16:
        bpp = 0x10;
    goto done_bpp;

    bpp32:
        bpp = 0x20;
    goto done_bpp;

    done_bpp:

        datasize = ((u32)width * (u32)height * bpp) / 8;
    if (VmImageAllocCallback) {
        allocSize = 0x20;
    } else {
        allocSize = datasize + 0x20;
    }

    object = CHANSVmNewObject(vm, vmFalse, object, CHANS_VM_TYPE_POINTER, allocSize);
    if (object == NULL) goto fail;

    if (CHANSVmSetObjectAsNativeInstance(vm, object, NULL, "Image") != 0) goto fail;

    image = (CHANSVmImage*)((u32*)object->value.ptr_v)[0];
    image->width = width;
    image->height = height;
    image->format = (u8)format;
    image->bpp = (u8)bpp;

    if (datasize != 0) {
        if (VmImageAllocCallback != NULL) {
            image->unk_0x00 = (u32)VmImageAllocCallback(vm, datasize);
        } else {
            image->unk_0x00 = (u32)((u8*)image + 0x20);
        }
        if (image->unk_0x00 == 0) goto fail;
        image->unk_0x04 = datasize;
        if (srcData != NULL) {
            memcpy((void*)image->unk_0x00, srcData, datasize);
            DCStoreRange((void*)image->unk_0x00, datasize);
        }
    }

    return object;

    fail:
        return NULL;
}

VmCtorDefine(Image) {
    vmBoolInt result;
    CHANSVmImage* image;

    result = vmFalse;
    image = (CHANSVmImage*)*VmParentObj->value.ptr_v;

    if (VmImageCtorCallback != vmNull) {
        if (image->unk_0x00 != 0 && image->unk_0x04 != 0) {
            result = VmImageCtorCallback(VmInst);
        }
    } else {
        result = vmTrue;
    }

    return result;
}

vmBoolInt VmWinEmuWrite(CHANSVm* vm, CHANSVmObjHdr* parent, CHANSVmObjHdr* ret) {
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
            inLen = min(remaining, 0x80) >> 1;

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

extern char lbl_816977A6[];

const CHANSVmPropertyList lbl_81694FAC = {
    lbl_816977A6,
    VmWinEmuWrite,
    NULL
};

vmBoolInt VmArrayCtor(CHANSVm* vm, CHANSVmObjHdr* vmObjIn, CHANSVmObjHdr* vmObjOut);
vmBoolInt VmArrayDtor(CHANSVm* vm, CHANSVmObjHdr* vmObjIn, CHANSVmObjHdr* vmObjOut);
vmBoolInt VmDateCtor(CHANSVm* vm, CHANSVmObjHdr* vmObjIn, CHANSVmObjHdr* vmObjOut);
vmBoolInt VmDateDtor(CHANSVm* vm, CHANSVmObjHdr* vmObjIn, CHANSVmObjHdr* vmObjOut);
vmBoolInt VmStringCtor(CHANSVm* vm, CHANSVmObjHdr* vmObjIn, CHANSVmObjHdr* vmObjOut);
vmBoolInt VmBlobCtor(CHANSVm* vm, CHANSVmObjHdr* vmObjIn, CHANSVmObjHdr* vmObjOut);
vmBoolInt VmBlobDtor(CHANSVm* vm, CHANSVmObjHdr* vmObjIn, CHANSVmObjHdr* vmObjOut);
vmBoolInt VmImageCtor(CHANSVm* vm, CHANSVmObjHdr* vmObjIn, CHANSVmObjHdr* vmObjOut);
CHANSVmErr VmPushFuncReturnInfo(CHANSVm* vm, u32 a, u32 b, u32 c);

CHANSVmErr CHANSVmInit(CHANSVm* vm, vmPtr work, vmU32 size) {
    CHANSVmPrivate* pVm = (CHANSVmPrivate*)vm;
    u32 alignedBase;
    u32 alignedSize;
    u8* base;
    vmS32 result;
    CHANSVmNativeClass* cls;

    base = (u8*)&CHANSVmConstStringObjectUndefined;
    memset(vm, 0, sizeof(CHANSVm));

    alignedBase = ((u32)work + 0x1f) & ~0x1f;
    alignedSize = (((u32)((u8*)work + size)) & ~0x1f) - alignedBase;

    pVm->exeStart = alignedBase;
    pVm->unk_0x0C = alignedSize;
    pVm->minWorkSize = 0x820;

    if (alignedSize < 0x820) {
        return CHANS_VM_ERR_NO_MEMORY;
    }

    {
    u32 exeStart = alignedBase + 0x820;
    u32 exeSize = alignedSize - 0x820;

    pVm->unk_0x64 = alignedBase;
    pVm->exeStart = exeStart;
    pVm->unk_0x0C = exeSize;
    pVm->pHeapStart = (vmU32*)exeStart;
    pVm->pHeapEnd = (CHANSVmObjHdr*)(exeStart + exeSize);
    pVm->freeExeBuf = (vmU8*)exeStart;
    pVm->objStackTopBuf = (vmU8*)(exeStart + exeSize);
    }

    result = VmPushFuncReturnInfo(vm, 0, 0, 0);
    if (result != 0) {
        goto cleanup;
    }

    /* Array class */
    cls = CHANSVmAddNativeClass2(vm, ArrayClassName, (CHANSVmFunction)VmArrayCtor,
        (CHANSVmFunction)VmArrayDtor, (CHANSVmFunction)VmArrayCtor);
    if (cls != NULL) {
        if ((void*)(base + 0x214) != NULL) {
            if (CHANSVmAddNativePropertyAccessorsList(vm, cls,
                (CHANSVmPropertyList*)(base + 0x214), 1) != 0)
                goto class_fail;
        }
        if ((void*)(base + 0x220) != NULL) {
            if (CHANSVmAddNativeMethodList(vm, cls,
                (CHANSVmMethodList*)(base + 0x220), 7) != 0)
                goto class_fail;
        }
        cls = CHANSVmFindNativeClass(vm, ArrayClassName);
        if (cls != NULL) {
            pVm->pArrayCls = cls;
        } else {
            goto class_fail;
        }
    } else {
        goto class_fail;
    }

    /* Date class */
    cls = CHANSVmAddNativeClass2(vm, "Date", (CHANSVmFunction)VmDateCtor,
        (CHANSVmFunction)VmDateDtor, NULL);
    if (cls != NULL) {
        if (CHANSVmAddNativeMethodList(vm, cls,
            (CHANSVmMethodList*)(base + 0x268), 0xA) != 0) {
            goto class_fail;
        }
    } else {
        goto class_fail;
    }

    /* Math class */
    if (CHANSVmNewBuiltinObject(vm, "@Math", NULL, NULL, NULL,
        "Math", NULL,
        (CHANSVmPropertyList*)(base + 0x2B8), 8,
        (CHANSVmMethodList*)(base + 0x318), 0x12) == 0) {
        goto class_fail;
    }

    /* String class */
    if (CHANSVmNewBuiltinObject(vm, StringClassName, (CHANSVmFunction)VmStringCtor,
        NULL, (CHANSVmFunction)VmStringCtor, NULL, NULL,
        (CHANSVmPropertyList*)(base + 0x3A8), 1,
        (CHANSVmMethodList*)(base + 0x3B4), 0xC) != 0) {
        cls = CHANSVmFindNativeClass(vm, StringClassName);
        if (cls != NULL) {
            pVm->pStringCls = cls;
        } else {
            goto class_fail;
        }
    } else {
        goto class_fail;
    }

    /* Blob class */
    cls = CHANSVmAddNativeClass2(vm, BlobClassName, (CHANSVmFunction)VmBlobCtor,
        (CHANSVmFunction)VmBlobDtor, NULL);
    if (cls != NULL) {
        if (CHANSVmAddNativePropertyAccessorsList(vm, cls,
            (CHANSVmPropertyList*)(base + 0x414), 2) != 0) {
            goto class_fail;
        }
        if (CHANSVmAddNativeMethodList(vm, cls,
            (CHANSVmMethodList*)(base + 0x42C), 0x29) != 0) {
            goto class_fail;
        }
    } else {
        goto class_fail;
    }

    /* Image class */
    VmImageAllocCallback = NULL;
    VmImageCtorCallback = NULL;
    if (CHANSVmNewBuiltinObject(vm, "Image", NULL, NULL, NULL,
        NULL, NULL,
        (CHANSVmPropertyList*)(base + 0x574), 3,
        NULL, 0) == 0) {
        goto class_fail;
    }

    /* Screen (@WinEmu) class */
    if (CHANSVmNewBuiltinObject(vm, "@WinEmu", NULL, NULL, NULL,
        "document", NULL,
        NULL, 0,
        (CHANSVmMethodList*)&lbl_81694FAC, 1) == 0) {
        goto class_fail;
    }

    result = 0;
    goto cleanup;

class_fail:
    result = CHANS_VM_ERR_NATIVE_METHOD_INIT;

cleanup:
    memset(&pVm->accumulator, 0, sizeof(CHANSVmObjHdr));
    return result;
}

vmPtr CHANSVmGetFreeExeBufp(CHANSVm* vm) {
    CHANSVmPrivate* pVm = (CHANSVmPrivate*)vm;

    if (pVm->bAllocBlocked != 0 || pVm->freeExeBuf >= pVm->objStackTopBuf) {
        return vmNull;
    } else {
        return pVm->freeExeBuf;
    }
}

vmU32 CHANSVmGetFreeExeSize(CHANSVm* vm) {
    CHANSVmPrivate* pVm = (CHANSVmPrivate*)vm;

    vmS32 size = (vmU32)pVm->objStackTopBuf - (vmU32)pVm->freeExeBuf;
    if (pVm->bAllocBlocked != 0 || size < 0) {
        return 0;
    } else {
        return size;
    }
}

typedef struct ModuleHeader {
    u32 magic;         // 0x00 = 0x52434845 "RCHE"
    u8 opcodeVersion;  // 0x04
    u8 pad_05[3];      // 0x05
    u32 size;          // 0x08
    u8 type;           // 0x0C
    u8 pad_0D[0x13];
    u32 field_0x20;    // 0x20
    u32 field_0x24;    // 0x24
    u32 field_0x28;    // 0x28
} ModuleHeader;

typedef struct SectionHeader {
    u32 field_0x00;
    u32 field_0x04;
    u8 pad_08[8];
    u32 field_0x0C;
    u16 field_0x14;   // count of something
    u16 pad_16;
    u32 field_0x18;   // offset/pointer
    u32 pad_1C;
    u32 count;        // 0x20
    u32 offs;         // 0x24
    u32 field_0x28;
    u32 field_0x2C;
    u32 count2;       // 0x30
    u32 offs2;        // 0x34
    u32 field_0x38;
    u32 field_0x3C;
    u8 pad_40[4];
    u32 field_0x44;
} SectionHeader;

void CHANSConvertModuleOfsToPtr(vmU8* ptr);

CHANSVmErr CHANSVmAddExe(CHANSVm* vm, vmS32 unk0, vmS32 unk1) {
    CHANSVmPrivate* pVm = (CHANSVmPrivate*)vm;
    ModuleHeader* mod = (ModuleHeader*)pVm->freeExeBuf;
    SectionHeader* header;
    u32 maxEnd;
    u32 count;
    u32 offs;

    (void)unk0;

    if (mod->magic != 0x52434845) {
        return CHANS_VM_ERR_INVALID_EXE_FORMAT;
    }
    if (mod->size < 0x80 || (mod->size & 0x1F)) {
        return CHANS_VM_ERR_INVALID_EXE_FORMAT;
    }
    if (mod->type != (u32)unk1) {
        return CHANS_VM_ERR_INVALID_EXE_TYPE;
    }
    if (mod->opcodeVersion != 3) {
        return CHANS_VM_ERR_OPCODE_VERSION;
    }
    if (CHANSVmGetFreeExeSize(vm) < mod->size) {
        return CHANS_VM_ERR_NO_MEMORY;
    }

    pVm->freeExeBuf = pVm->freeExeBuf + mod->size;
    mod->field_0x20 = 0;
    mod->field_0x24 = mod->size - 0x20;
    mod->field_0x28 = (u32)mod;

    header = (SectionHeader*)((u8*)mod + 0x20);
    maxEnd = header->field_0x00 + header->field_0x0C;

    if (header->field_0x04 < maxEnd) {
        return CHANS_VM_ERR_INVALID_EXE_FORMAT;
    }
    {
        u32 count;
        u32 offs;

        count = header->count;
        if (count) {
            offs = header->offs;
            if (offs < maxEnd || header->field_0x04 < offs) {
                return CHANS_VM_ERR_INVALID_EXE_FORMAT;
            }
            maxEnd = offs + count * 8;
            if (header->field_0x04 < maxEnd) {
                return CHANS_VM_ERR_INVALID_EXE_FORMAT;
            }
        }
        count = header->field_0x28;
        if (count) {
            offs = header->field_0x2C;
            if (offs < maxEnd || header->field_0x04 < offs) {
                return CHANS_VM_ERR_INVALID_EXE_FORMAT;
            }
            maxEnd = offs + count * 4;
            if (*(u32*)(header + 0x04) < maxEnd) {
                return CHANS_VM_ERR_INVALID_EXE_FORMAT;
            }
        }
        count = *(u32*)(header + 0x30);
        if (count) {
            offs = *(u32*)(header + 0x34);
            if (offs < maxEnd || *(u32*)(header + 0x04) < offs) {
                return CHANS_VM_ERR_INVALID_EXE_FORMAT;
            }
            maxEnd = offs + count * 2;
            if (*(u32*)(header + 0x04) < maxEnd) {
                return CHANS_VM_ERR_INVALID_EXE_FORMAT;
            }
        }
        count = *(u32*)(header + 0x44);
        if (count) {
            if (count < maxEnd || *(u32*)(header + 0x04) < count) {
                return CHANS_VM_ERR_INVALID_EXE_FORMAT;
            }
            {
                u32 clsSize = ((*(u32*)(header + 0x0C) + 0xFF) >> 8) * 0x24;
                if (*(u32*)(header + 0x04) < count + clsSize) {
                    return CHANS_VM_ERR_INVALID_EXE_FORMAT;
                }
            }
        }
    }
    {
        CHANSVmExecutionCtx* ctx;
        u32 depth;

        ctx = pVm->execContext;
        depth = 1;

        if (ctx == NULL) {
            pVm->execContext = (CHANSVmExecutionCtx*)header;
        } else {
            while (1) {
                CHANSVmExecutionCtx* next = (CHANSVmExecutionCtx*)(vmU32)ctx->unk_0x00;
                if (next == NULL) {
                    break;
                }
                ctx = next;
                depth++;
            }
            ctx->unk_0x00 = (vmU32)header;
        }
        pVm->unk_0x10 = depth;
    }
    {
        u32 count;

        count = *(u32*)(header + 0x14);
        if (count) {
            u32 allocSize = (count * 0x10 + 0x1F) & ~0x1F;
            *(u32*)(header + 0x18) = (u32)(vmU32)CHANSVmAlloc(vm, allocSize);
        }

        count = *(u32*)(header + 0x28);
        if (count) {
            u32 allocSize = (count * 4 + 0x1F) & ~0x1F;
            *(u32*)(header + 0x38) = (u32)(vmU32)CHANSVmAlloc(vm, allocSize);
        }

        count = *(u32*)(header + 0x30);
        if (count) {
            u32 allocSize = (count * 0x10 + 0x1F) & ~0x1F;
            *(u32*)(header + 0x3C) = (u32)(vmU32)CHANSVmAlloc(vm, allocSize);
        }
    }
    {
        u32 cnt;

        cnt = *(u32*)(header + 0x14);
        if (cnt) {
            if (*(u32*)(header + 0x18) == 0) {
                return CHANS_VM_ERR_NO_MEMORY;
            }
        }
        cnt = *(u32*)(header + 0x28);
        if (cnt) {
            if (*(u32*)(header + 0x38) == 0) {
                return CHANS_VM_ERR_NO_MEMORY;
            }
        }
        cnt = *(u32*)(header + 0x30);
        if (cnt) {
            if (*(u32*)(header + 0x3C) == 0) {
                return CHANS_VM_ERR_NO_MEMORY;
            }
        }
    }
    {
        u32 i;
        u32 tblOffs;

        for (i = 0, tblOffs = 0; i < *(u32*)(header + 0x14); i++) {
            memset((void*)(vmU32)(*(u32*)(header + 0x18) + tblOffs), 0, 0x10);
            tblOffs += 0x10;
        }
    }

    CHANSConvertModuleOfsToPtr((vmU8*)header);

    {
        u32 i;
        u32 tblOffs;
        u8* methodTable = (u8*)(vmU32)*(u32*)(header + 0x2C);
        u8* bufEnd = (u8*)(vmU32)(*(u32*)(header + 0x04) + (u32)(vmU32)header);

        for (i = 0, tblOffs = 0; i < *(u32*)(header + 0x28); i++, tblOffs += 4) {
            u32 entry = *(u32*)(methodTable + tblOffs);
            u32 nameLen = entry >> 24;

            if (nameLen) {
                u32 offs = entry & 0x00FFFFFF;
                u8* nameAddr = methodTable + offs;

                if ((u8*)(vmU32)((u32)(vmU32)nameAddr + nameLen) <= bufEnd) {
                    CHANSVmObjHdr* method = (CHANSVmObjHdr*)(vmU32)CHANSVmAddNativeMethodName(vm, (const char*)nameAddr, (vmSize)nameLen);
                    if (method) {
                        *(u32*)(*(u32*)(header + 0x38) + tblOffs) = (u32)(vmU32)method;
                        continue;
                    }
                }
            }
            return CHANS_VM_ERR_INVALID_EXE_FORMAT;
        }
    }
    {
        u32 i;
        u32 tblOffs;
        u8* strPtr = (u8*)(vmU32)*(u32*)(header + 0x34);
        u8* bufEnd = (u8*)(vmU32)(*(u32*)(header + 0x04) + (u32)(vmU32)header);

        for (i = 0, tblOffs = 0; i < *(u32*)(header + 0x30); i++) {
            u32 len = ((u32)strPtr[0] << 8) | (u32)strPtr[1];
            strPtr += 2;

            if ((len & 1) == 0) {
                u8* strAddr = strPtr + len;

                if ((u8*)(vmU32)((u32)(vmU32)strAddr) <= bufEnd) {
                    *(u32*)(*(u32*)(header + 0x3C) + tblOffs) = (u32)(vmU32)strPtr;
                    *(u32*)(*(u32*)(header + 0x3C) + tblOffs + 0x04) = len;
                    strPtr = strAddr;
                    tblOffs += 0x10;
                    continue;
                }
            }
            return CHANS_VM_ERR_INVALID_EXE_FORMAT;
        }
    }
    return CHANS_VM_OK;
}

static void VmOffs00U32ToPtr(vmPtr ptr) {
    if (*(vmU32*)ptr != 0) {
        *(vmU32*)ptr += (vmU32)ptr;
    }
}

static void VmOffsU32ToPtr(vmPtr ptr, vmU32 offset) NO_INLINE {
    if (*(vmU32*)ptr != 0) {
        *(vmU32*)ptr += offset;
    }
}

void CHANSConvertModuleOfsToPtr(vmU8* ptr) {
    VmOffs00U32ToPtr(ptr);
    VmOffsU32ToPtr((ptr + 0x10), (vmU32)ptr);
    VmOffsU32ToPtr((ptr + 0x24), (vmU32)ptr);
    VmOffsU32ToPtr((ptr + 0x2C), (vmU32)ptr);
    VmOffsU32ToPtr((ptr + 0x34), (vmU32)ptr);
    VmOffsU32ToPtr((ptr + 0x40), (vmU32)ptr);
    VmOffsU32ToPtr((ptr + 0x44), (vmU32)ptr);
}

static CHANSVmObjHdr* CHANSVm_81455654(CHANSVm* vm, u32 id) {
    CHANSVmPrivate* pVm = (CHANSVmPrivate*)vm;
    CHANSVmExecutionCtx* ctx = pVm->execContext;
    u8* ptr = (u8*)ctx->dbg;
    u16 countB;
    u8 type2;
    s32 remaining;
    u16 countC;
    s32 idx;
    u8* data;

    if (id < *(u32*)(ptr + 0x14)) {
        data = *(u8**)(ptr + 0x18);
        data += id * 16;
        if (((CHANSVmObjHdr*)data)->type != 6)
            return (CHANSVmObjHdr*)data;
        return *(CHANSVmObjHdr**)data;
    }

    countB = ctx->mCountB;
    remaining = (s32)id - (s32)countB;
    if (remaining < 0)
        goto null;

    type2 = ctx->mType2;
    if (remaining < (s32)type2)
        goto path2a;

    countC = ctx->argc;
    remaining -= (s32)type2;
    idx = (s32)countC - 1 - remaining;
    if (idx < 0)
        goto null;

    data = (u8*)ctx->argv;
    return (CHANSVmObjHdr*)(data + idx * 16);

    path2a:
        return (CHANSVmObjHdr*)((u8*)ctx + (u32)remaining * 16 + 0x20);

    null:
        return NULL;
}

static CHANSVmErr VmPushFuncReturnInfo(CHANSVm* vm, u32 a, u32 b, u32 c) {
    CHANSVmPrivate* pVm = (CHANSVmPrivate*)vm;
    vmU8* block;
    CHANSVmErr result;
    vmU8* objStackTopBuf;
    u32 size;
    u32 i;

    result = CHANS_VM_ERR_PUSH_FUNC_RETURN_INFO;

    if (pVm->execContext != NULL && pVm->execContext->stackDepth < a) {
        return CHANS_VM_ERR_PUSH_FUNC_RETURN_INFO;
    }

    if (c > 0xFF) {
        goto return_result;
    }

    objStackTopBuf = pVm->objStackTopBuf;

    while (a < b) {
        objStackTopBuf -= 0x10;
        if (pVm->freeExeBuf > objStackTopBuf) {
            return CHANS_VM_ERR_NO_MEMORY;
        }
        memset(objStackTopBuf, 0, 0x10);

        a++;
        if ((vmU32)pVm->execContext->stackDepth >= (vmU32)-1) {
            goto push_error;
        }
        pVm->execContext->stackDepth++;
        goto push_continue;
push_error:
        return CHANS_VM_ERR_PUSH_FUNC_RETURN_INFO;
push_continue:
        ;
    }

    pVm->objStackTopBuf = objStackTopBuf;
    CHANSVmUpdateSmallestFreeHeapSize(vm);

    size = c * 16 + 0x20;
    block = NULL;

    if (size != 0 && (size & 7) == 0) {
        if ((vmU32)pVm->objStackTopBuf - (vmU32)pVm->freeExeBuf >= size) {
            block = pVm->objStackTopBuf - size;
            pVm->objStackTopBuf = block;
            CHANSVmUpdateSmallestFreeHeapSize(vm);
            memset(block, 0, size);
        }
    }

    if (block == NULL) {
        goto return_result;
    }

    if (pVm->execContext != NULL) {
        ((CHANSVmExecutionCtx*)block)->dbg = pVm->execContext->dbg;
        ((CHANSVmExecutionCtx*)block)->pc = pVm->execContext->pc;
        ((CHANSVmExecutionCtx*)block)->unk_0x00 = (vmU32)pVm->execContext;
    }

    pVm->execContext = (CHANSVmExecutionCtx*)block;
    ((CHANSVmExecutionCtx*)block)->argv = (vmWString*)objStackTopBuf;
    ((CHANSVmExecutionCtx*)block)->argc = (vmU16)a;
    *(vmU16*)(block + 0x16) = (vmU16)b;
    *(vmU8*)(block + 0x1A) = (vmU8)c;
    ((CHANSVmExecutionCtx*)block)->mCountB = (vmU16)(0x2000 - (c + b));

    for (i = 0; i < c; i++) {
        memset(block + 0x20 + i * 0x10, 0, 0x10);
    }

    result = 0;

return_result:
    return result;
}

#pragma peephole off
static CHANSVmErr VmReturnWithValue(CHANSVm* vm, u32 val) {
    CHANSVmPrivate* pVm = (CHANSVmPrivate*)vm;
    u32 offset = 0;
    u32 i = 0;
    CHANSVmObjHdr* obj = NULL;
    GlobalNameListNode* node;
    CHANSVmErr ret;

    for (i = 0; i < pVm->execContext->mType2; i++, offset += 0x10) {
        if (CHANSVmDeleteObject(vm, (CHANSVmObjHdr*)((u8*)pVm->execContext + 0x20 + offset)) == 0) {
        } else {
            goto cleanup;
        }
    }

    while (pVm->execContext->stackDepth != 0) {
        if (CHANSVmPopObject(vm, NULL) == 0) {
        } else {
            goto cleanup;
        }
    }

    pVm->objStackTopBuf = (vmU8*)pVm->execContext->argv;

    if (val != 0) {
        obj = &pVm->accumulator;
    }

    pVm->execContext->stackDepth = pVm->execContext->argc;
    while (pVm->execContext->stackDepth != 0) {
        if (CHANSVmPopObject(vm, obj) == 0) {
        } else {
            goto cleanup;
        }
    }

    if (pVm->execContext->unk_0x00 != 0) {
        if (((CHANSVmExecutionCtx*)(vmU32)pVm->execContext->unk_0x00)->stackDepth < (vmU32)pVm->execContext->argc) {
            ret = CHANS_VM_ERR_RETURN;
            goto pop;
        }
        ((CHANSVmExecutionCtx*)(vmU32)pVm->execContext->unk_0x00)->stackDepth -= pVm->execContext->argc;
        ret = CHANS_VM_OK;
        goto pop;
    }

    for (i = 0; i < *(vmU32*)((vmU8*)pVm->execContext->dbg + 0x14); i++) {
        if (CHANSVmDeleteObject(vm, CHANSVm_81455654(vm, i)) == 0) {
        } else {
            return CHANS_VM_ERR_RETURN;
        }
    }

    node = pVm->mpGlobalObjList;
    while (node != NULL) {
        node->hdr.flags.raw &= 0x7F;
        if (CHANSVmDeleteObject(vm, (CHANSVmObjHdr*)node) == 0) {
        } else {
            return CHANS_VM_ERR_RETURN;
        }
        CHANSVmFree(vm, node, (*(vmU32*)((vmU8*)node + 0x14) + 0x37) & ~0x1F);
        node = *(GlobalNameListNode**)((vmU8*)node + 0x10);
        pVm->mpGlobalObjList = node;
    }

    ret = CHANS_VM_ERR_EXIT;

pop:
    pVm->execContext = (CHANSVmExecutionCtx*)(vmU32)pVm->execContext->unk_0x00;
    return ret;

cleanup:
    ;
}

CHANSVmErr CHANSVmLinkModules(CHANSVm* vm, vmS32 unk0) {
    CHANSVmPrivate* pVm = (CHANSVmPrivate*)vm;
    u8* module;
    u32 modIdx;

    (void)unk0;

    if (pVm->bAllocBlocked) {
        goto link_fail;
    }
    if (pVm->unk_0x10 == 0) {
        goto link_fail;
    }

    pVm->bAllocBlocked = 1;
    module = *(u8**)((u8*)pVm + 0x18);
    modIdx = 0;

    while (modIdx < (u32)pVm->unk_0x10) {
        CHANSVmErr result;

        pVm->execContext->dbg = (SrcDbg*)module;

        {
            u32* dispTable = *(u32**)(module + 0x40);
            GlobalNameListNode* gIter = (GlobalNameListNode*)pVm->mpGlobalObjList;
            while (gIter) {
                u32 entryOffset = 0;
                u32 tblIdx = 0;
                u32 i = 0;
                while (i < *(u32*)(module + 0x14)) {
                    u32 nameLen = gIter->nameLength;
                    if (nameLen) {
                        u32 dispEntry = dispTable[tblIdx];
                        u32 offset = dispEntry & 0x00FFFFFF;
                        u8* strAddr = (u8*)dispTable + offset;
                        if (strAddr + nameLen <= module + *(u32*)(module + 0x04)) {
                            if (nameLen == (dispEntry >> 24)) {
                                if (memcmp(gIter->name, strAddr, nameLen) == 0) {
                                    ModuleEntry* mEntry = (ModuleEntry*)(*(u8**)(module + 0x18) + entryOffset);
                                    if (mEntry->type) {
                                        result = CHANS_VM_ERR_RESOLVE_GLOBAL_OBJECT_REFERENCE;
                                        goto post_pass1;
                                    }
                                    mEntry->type = 6;
                                    mEntry->ptr = gIter;
                                    mEntry->flags = 0x80;
                                }
                            }
                        }
                    }
                    entryOffset += 0x10;
                    tblIdx++;
                    i++;
                }
                gIter = gIter->next;
            }
        }
        result = 0;
post_pass1:
        if (result) {
            return result;
        }

        {
            u32* dispTable = *(u32**)(module + 0x40);
            CHANSVmNativeClass* nIter = pVm->nativeClasses;
            while (nIter) {
                u32 entryOffset = 0;
                u32 tblIdx = 0;
                u32 i = 0;
                while (i < *(u32*)(module + 0x14)) {
                    u32 nameLen = nIter->nameLength;
                    if (nameLen) {
                        u32 dispEntry = dispTable[tblIdx];
                        u32 offset = dispEntry & 0x00FFFFFF;
                        u8* strAddr = (u8*)dispTable + offset;
                        if (strAddr + nameLen <= module + *(u32*)(module + 0x04)) {
                            if (nameLen == (dispEntry >> 24)) {
                                if (memcmp(nIter->name, strAddr, nameLen) == 0) {
                                    ModuleEntry* mEntry = (ModuleEntry*)(*(u8**)(module + 0x18) + entryOffset);
                                    if (mEntry->type) {
                                        result = CHANS_VM_ERR_RESOLVE_NATIVE_METHOD_CALL;
                                        goto post_pass2;
                                    }
                                    mEntry->type = 7;
                                    mEntry->ptr2 = nIter;
                                    mEntry->flags = 0x80;
                                }
                            }
                        }
                    }
                    entryOffset += 0x10;
                    tblIdx++;
                    i++;
                }
                nIter = nIter->next;
            }
        }
        result = 0;
post_pass2:
        if (result) {
            return result;
        }

        {
            u32 i;
            u32 gobjOffset = 0;
            for (i = 0; i < *(u32*)(module + 0x20); i++, gobjOffset += 8) {
                u8* gobjTable = *(u8**)(module + 0x24);
                u16 idx = *(u16*)(gobjTable + gobjOffset + 4);
                if (idx >= *(u32*)(module + 0x14)) {
                    goto pass3_err;
                }
                {
                    CHANSVmObjHdr* obj = CHANSVm_81455654(vm, idx);
                    if (obj == NULL) {
                        goto pass3_err;
                    }
                    if (obj->type) {
                        result = CHANS_VM_ERR_SET_LOCAL_FUNCTION;
                        goto post_pass3;
                    }
                    obj->type = 9;
                    obj->value.bool_v = (vmBoolInt)i;
                    obj->flags.raw = 0x80;
                }
            }
        }
        result = 0;
        goto post_pass3;
pass3_err:
        result = CHANS_VM_ERR_SET_LOCAL_FUNCTION;
post_pass3:
        if (result) {
            return result;
        }
        if (result) {
            return result;
        }

        module = *(u8**)(module + 0x00);
        modIdx++;
    }

    pVm->pHeapStart = (u32*)pVm->freeExeBuf;
    pVm->pHeapEnd = (CHANSVmObjHdr*)pVm->objStackTopBuf;
    pVm->minFreeHeapSize = (vmU32)pVm->objStackTopBuf - (vmU32)pVm->freeExeBuf;
    memset(&pVm->accumulator, 0, sizeof(CHANSVmObjHdr));
    pVm->execContext->dbg = (SrcDbg*)(*(void**)((u8*)pVm + 0x18));
    pVm->execContext->pc = 1;
    return CHANS_VM_OK;

link_fail:
    return CHANS_VM_ERR_LINK_FAILED;
}

static CHANSVmErr VmArrayExpandCommon(CHANSVm* vm, CHANSVmObjHdr* obj, u32 size, u32 a, u32 b);

static u8* VmGetOperand(CHANSVm* vm, u32 num, u32 offset) {
    CHANSVmPrivate* pVm = (CHANSVmPrivate*)vm;
    u32 pc = pVm->execContext->pc;
    SrcDbg* dbg = pVm->execContext->dbg;

    if (pc + offset >= dbg->codesize) {
        return NULL;
    }
    {
    u32 addr = pc + num;
    return (u8*)dbg->table + addr;
    }
}

static CHANSVmErr VmLoadImmInteger(CHANSVm* vm, CHANSVmObjHdr* obj, u8* buf, s32 count) {
    u32 low;
    u32 high;

    low = 0;
    high = 0;

    while (count != 0) {
        u32 byte = *buf;
        u32 newLow = (low << 8) | byte;
        u32 newHigh = (high << 8) | (low >> 24);
        low = newLow;
        high = newHigh | ((s32)byte >> 31);
        buf++;
        count--;
    }

    return CHANSVmSetInteger(vm, obj, ((s64)(u32)high << 32) | low);
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
    CHANSVmErr result;

    result = CHANS_VM_ERR_DELETE_OBJECT;
    if (object != NULL) {
        CHANSVmPrivate* pVm = (CHANSVmPrivate*)vm;
        result = CHANSVmDeleteObject(vm, object);
        if (result == CHANS_VM_OK) {
            if (object->type == 0) {
                result = CHANSVmSetInteger(vm, (CHANSVmObjHdr*)&pVm->accumulator, 1);
            } else {
                result = CHANS_VM_ERR_DELETE_OBJECT;
            }
        }
    }
    return result;
}

// TODO: VmCallMethod
static CHANSVmErr VmCallMethod(CHANSVm* vm, u32 a, u32 b, u32 c);

void CHANSVmSetSignal(CHANSVm* vm, vmBool* signal) {
    CHANSVmPrivate* pVm = (CHANSVmPrivate*)vm;

    pVm->pSignalPending = signal;
    pVm->bSignalUpdated = vmTrue;
}

CHANSVmErr CHANSVmStep(CHANSVm* vm, int choice) {
    CHANSVmPrivate* pVm = (CHANSVmPrivate*)vm;
    CHANSVmObjHdr* pConstObj;
    u32 cZero;
    u32 cNeg2;
    double cLo;
    double cHi;
    CHANSVmObjHdr* stackPtr;
    CHANSVmErr result;
    CHANSVmObjHdr tmpCopyObj;
    u32 etypes[8];
    CHANSVmObjHdr tmpObj;
    u32 _pad[4];

    pConstObj = (CHANSVmObjHdr*)&CHANSVmConstStringObjectUndefined;

    if (choice == 0) {
        choice = 1;
        memset(&tmpObj, 0, sizeof(tmpObj));
        _pad[0] = 0;
        _pad[1] = 0;
        _pad[2] = 0;
        _pad[3] = 0;
        cLo = 4294967294.0; // U32_MAX - 1
        cHi = 0.0;
        stackPtr = &tmpCopyObj;
        cZero = 0;
        cNeg2 = -2;
    }

    while (choice-- != 0) {
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

        if (pVm->bSignalUpdated != 0 && pVm->bSignalBlocked == 0) {
            pVm->bSignalUpdated = 0;
            return CHANS_VM_ERR_SIGNAL;
        }

        if (pVm->execContext == NULL) goto error_code_range;
        if (pVm->execContext->dbg == 0) goto error_code_range;
        if (pVm->execContext->pc < 1) goto error_code_range;
        if (pVm->execContext->pc < pVm->execContext->dbg->codesize) goto codesize_ok;
        return CHANS_VM_ERR_CODE_RANGE;
codesize_ok:
        if ((u32)pVm->freeExeBuf < (u32)pVm->pHeapStart) goto error_3e2;
        if ((u32)pVm->pHeapEnd >= (u32)pVm->objStackTopBuf) goto range_ok;
        return CHANS_VM_ERR_HEAP_RANGE;
range_ok:
        opcodeVal = *(u8*)((u8*)pVm->execContext->dbg->table + pVm->execContext->pc);
        if (pVm->bSuspendStep != 0) {
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
                        // use CHANS_VM_PRINTF?
                        if (CHANSVmDebugVerboseMode) {
                            CHANSVmDebugPrintf("%s: no table for op '%c'\n", "VmGetResultType", unk_r23);
                        }
                        goto error_setter;
                    }

                    result = 0;
                    unk_r19 = convTbl[etypes[0] * 6 + etypes[1]];
                    goto result_check;
                }

error_setter:
                result = CHANS_VM_ERR_RESULT_TYPE;

result_check:
                if (result != 0) break;

                if (((unk_r23 != 0x43) && (unk_r23 != 0x3D)) || (unk_r19 != 0)) {
                    leftOp = CHANSVmConvertObjectType(vm, unk_r19, leftOp);
                    rightOp = CHANSVmConvertObjectType(vm, unk_r19, rightOp);
                }

                if ((leftOp == NULL) || (rightOp == NULL)) { result = CHANS_VM_ERR_RESULT_TYPE; break; }

                result = opFunc(vm, unk_r19, &pVm->accumulator, leftOp, rightOp);

                if (result == 0) {
                    result = CHANSVmDeleteObject(vm, &tmpObj);
                    if ((result == 0) && (leftOp != &pVm->accumulator) && (leftOp != &tmpObj) &&
                        ((((u8*)leftOp)[9] & 0x80) == 0) &&
                        ((result = CHANSVmDeleteObject(vm, leftOp), result == 0))) {
                        CHANSVmFree(vm, leftOp, 0x20);
                    }
                    if ((result == 0) && (rightOp != &pVm->accumulator) && (rightOp != &tmpObj) &&
                        ((((u8*)rightOp)[9] & 0x80) == 0) &&
                        ((result = CHANSVmDeleteObject(vm, rightOp), result == 0))) {
                        CHANSVmFree(vm, rightOp, 0x20);
                    }
                }
            }

            break;

            case 4: {
                CHANSVmObjHdr* resultObj;
                if (pVm->execContext->stackDepth != -1) {
                    CHANSVmObjHdr* hdr = CHANSVmNewObjHdr(vm, 1);
                    resultObj = NULL;
                    if (hdr != NULL) {
                        resultObj = CHANSVmCopyObject(vm, hdr, &pVm->accumulator);
                        if (resultObj != NULL) {
                            pVm->execContext->stackDepth++;
                        }
                    }
                } else {
                    resultObj = NULL;
                }
                if (resultObj == NULL) {
                    result = CHANS_VM_ERR_NO_MEMORY;
                } else {
                    result = 0;
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
                if (result != 0) break;
                goto binary_typecheck;

            case 0:
                result = CHANSVmDeleteObject(vm, &pVm->accumulator);
                if (result == 0) {
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
                case 0:
                    tmp64_16 = 0;
                    break;
                case 1:
                    tmp64_16 = *(u64*)pObj;
                    break;
                case 2:
                    tmp64_16 = (u64)(CHANSVm_8144B1D8(*(double*)pObj) * floor(fabs(*(double*)pObj)));
                    break;
                case 3:
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
                if (result == 0) {
                    u32 boolVal = (local_e8) ? 0 : 1;
                    result = CHANSVmSetInteger(vm, &pVm->accumulator, (vmInteger)(u64)boolVal);
                }
                break;
            }

            case 0x3E:
                result = CHANS_VM_ERR_LOAD_INDIRECT;
                if (pVm->accumulator.type == 5) {
                    tmpCmp = (s32)CHANSVmCopyObject(vm, stackPtr, &pVm->accumulator);
                    if (tmpCmp != 0) {
                        foundObj = VmGetArrayElement(vm, stackPtr, unk_r25, 0);
                        result = VmStore(vm, &pVm->accumulator, foundObj);
                        if (result == 0) {
                            result = CHANSVmDeleteObject(vm, &pVm->accumulator);
                        }
                    }
                }
                break;

            case 0x30:
                operandBuf = VmGetOperand(vm, 1, 4);
                if (operandBuf == NULL) { result = CHANS_VM_ERR_CODE_RANGE; break; }
                result = VmCallMethod(vm, 4, 0, 0);
                step = 0;
                break;

            case 2:
                if (pVm->accumulator.type == 7) {
                    result = 1;
                } else {
                    result = CHANS_VM_ERR_INVALID_OBJECT_TYPE;
                }
                step = 0;
                break;

            case 0x31:
                result = 0;
                operandBuf = VmGetOperand(vm, 1, 2);
                if (operandBuf == NULL) { result = CHANS_VM_ERR_CODE_RANGE; break; }
                result = VmCallMethod(vm, 2, 1, 0);
                step = 0;
                break;

            case 0x32:
            case 0x33: {
                u32 callMode;
                operandBuf = VmGetOperand(vm, 1, 3);
                if (operandBuf == NULL) { result = CHANS_VM_ERR_CODE_RANGE; break; }
                if (opcodeVal == 0x32) {
                    callMode = 2;
                } else {
                    callMode = 3;
                }
                result = VmCallMethod(vm, 3, callMode, 0);
                step = 0;
                break;
            }

            case 0x3F:
                result = CHANS_VM_ERR_STORE_INDIRECT;
                if (pVm->accumulator.type == 5) {
                    tmpCmp = (s32)CHANSVmCopyObject(vm, stackPtr, &pVm->accumulator);
                    if (tmpCmp != 0) {
                        result = CHANSVmPopObject(vm, &pVm->accumulator);
                        if (result == 0) {
                            foundObj = VmGetArrayElement(vm, stackPtr, unk_r25, 1);
                            result = VmStore(vm, foundObj, &pVm->accumulator);
                            if (result == 0) {
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
                if (result == 0) {
                    CHANSVmExecutionCtx* pUnk1_2c = pVm->execContext;
                    u32* pUnk1_04 = (u32*)pUnk1_2c->dbg;
                    if ((unk_r26 < pUnk1_04[12]) &&
                        (intTemp = unk_r26 * 0x10,
                         *(u32*)(pUnk1_04[15] + intTemp) != 0)) {
                        pVm->accumulator.type = 3;
                        pVm->accumulator.unk_0x0A = 1;
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
                if (result != 0) break;

                if (pVm->accumulator.type == 4) {
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
                result = 0;
                (&pVm->accumulator)->value.int_v = (vmInteger)unk_r25;
                pVm->accumulator.type = 5;
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
                if ((foundObj != NULL) && (pVm->accumulator.type == 1) &&
                    (uintTemp = *((u32*)&pVm->accumulator.value + 1),
                     (u32)(0xFFFFFFFE < uintTemp) + *(s32*)&pVm->accumulator.value == 0)) {
                    if (((u8*)foundObj)[0x0A] == 4) {
                        u32 len = VmArrayGetLength(foundObj);
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
                    if (result != 0) {
                        idx = 0;
                        result = CHANSVmDeleteObject(vm, &pVm->accumulator);
                        if (result == 0) {
                            CHANSVmNewObject(vm, vmFalse, &pVm->accumulator, CHANS_VM_OBJ_TYPE_STRING, 0x80);
                            if (result != 0) {
                                char* s = (char*)(&pVm->accumulator)->value.string_v->str;
                                s32 snpLen = snprintf(s, 0x40, "%lld");
                                CHANSVmStrCpyToU16FromU8((wchar_t*)s, s, snpLen);
                                (&pVm->accumulator)->value.string_v->len = VM_STR_LENGTH(snpLen);
                                if ((&pVm->accumulator)->value.string_v->len != 0) {
                                    result = 0;
                                }
                            }
                        }
                        if (result != 0) {
                            result = CHANS_VM_ERR_GET_PROPERTY_NAME;
                            break;
                        }
                    }
                    unk_r25 = idx;
                }
                if ((result != 0) || (idx != 0)) {
                    result = CHANS_VM_ERR_GET_PROPERTY_NAME;
                }
                if (result == 0) {
                    u8* pOpData = operandBuf;
                    uintTemp = (pOpData[2] << 8 & 0x1F00) | pOpData[3];
                    if ((pOpData[2] << 8 & 0x1000) == 0) {
                        uintTemp += pVm->execContext->pc + 5;
                    } else {
                        uintTemp = (uintTemp + pVm->execContext->pc) - 0x1FFC;
                    }
                    if ((uintTemp == 0) ||
                        (uintTemp >= pVm->execContext->dbg->codesize)) { result = CHANS_VM_ERR_CODE_RANGE; break; }
                    pVm->execContext->pc = uintTemp;
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
                if (result == 0) {
                    result = VmPushFuncReturnInfo(vm, unk_r26, unk_r26, 0);
                    if (result == CHANS_VM_OK) {
                        pVm->accumulator.type = 4;
                        pVm->accumulator.parentCls = pVm->pArrayCls;
                        if (CHANSVmNewObjData(vm, &pVm->accumulator, 0x18) != NULL) {
                            if (unk_r26 != 0) {
                                result = VmArrayExpandCommon(vm, &pVm->accumulator, unk_r26, 0, 1);
                                if (result == 0) { result = CHANS_VM_ERR_CALL_NEW_ARRAY; break; }
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
                    uintTemp += pVm->execContext->pc + 4;
                } else {
                    uintTemp = uintTemp + pVm->execContext->pc - 0xFFFFFF;
                }
                if ((uintTemp == 0) ||
                    (uintTemp >= pVm->execContext->dbg->codesize)) { result = CHANS_VM_ERR_CODE_RANGE; break; }
                pVm->execContext->pc = uintTemp;
                step = 0;
                result = 0;
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
                if (pVm->accumulator.type == 5) {
                    foundObj = VmGetArrayElement(vm, &pVm->accumulator, *((u32*)&pVm->accumulator.value + 1), 0);
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
                result = 0;
                local_e4 = 1;
            } else if (uintTemp == 0x20) {
                result = CHANSVmGetBoolean((CHANSVmObjHdr*)&local_e8, &pVm->accumulator);
                if (result == 0) {
                    local_e4 = (local_e8) ? 0 : 1;
                }
            } else if (uintTemp == 0) {
                result = CHANS_VM_ERR_CASE;
                if ((pVm->execContext->stackDepth != 0) &&
                    (pVm->pHeapEnd >=
                     (CHANSVmObjHdr*)pVm->objStackTopBuf + 2)) {
                    CHANSVmObjHdr* stackTop = (CHANSVmObjHdr*)pVm->objStackTopBuf;
                    unk_r23 = 0;
                    if (pVm->accumulator.type != stackTop->type) {
                        goto end_branch_check;
                    }
                    switch (stackTop->type) {
                    case 0:
                        unk_r23 = 1;
                        break;
                    case 1: {
                        u32 low1 = *(u32*)stackTop;
                        u32 low2 = *(u32*)&pVm->accumulator;
                        u32 high1 = *((u32*)stackTop + 1);
                        u32 high2 = *((u32*)&pVm->accumulator + 1);
                        u32 xor1 = low1 ^ low2;
                        u32 xor2 = high1 ^ high2;
                        unk_r23 = (xor1 | xor2) >> 31;
                        break;
                    }
                    case 2: {
                        double d1 = *(double*)stackTop;
                        double d2 = *(double*)&pVm->accumulator;
                        unk_r23 = (d1 == d2) ? 1 : 0;
                        break;
                    }
                    case 3: {
                        u32 len1_u32, len2_u32;
                        CHANSVmObjHdr* stackObj3 = (CHANSVmObjHdr*)pVm->objStackTopBuf;
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
                    case 4: case 7: case 8: case 9: {
                        unk_r23 = 0;
                        if ((*(u32*)(stackTop + 0xC)) ==
                                (u32)pVm->accumulator.parentCls &&
                            ((u8*)stackTop)[0x0A] ==
                                pVm->accumulator.unk_0x0A &&
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
                    if (result == 0) {
                        result = 0;
                        local_e4 = unk_r23;
                        if (unk_r23 != 0) {
                            result = CHANSVmPopObject(vm, &pVm->accumulator);
                        }
                    }
                }
            } else {
                result = CHANS_VM_ERR_RESERVED_OPCODE; break;
            }

            if ((result == 0) && (local_e4 != 0)) {
                uintTemp = (opcodeVal << 8 & 0x1F00) | operandBuf[1];
                if ((opcodeVal << 8 & 0x1000) == 0) {
                    uintTemp += pVm->execContext->pc + 2;
                } else {
                    uintTemp = (uintTemp + pVm->execContext->pc) - 0x1FFF;
                }
                if ((uintTemp != 0) &&
                    (uintTemp < pVm->execContext->dbg->codesize)) {
                    pVm->execContext->pc = uintTemp;
                    step = 0;
                } else {
                    result = CHANS_VM_ERR_CODE_RANGE; break;
                }
            }
        }

        if (result != 0) break;
        if (step == 0xFFFFFFFF) break;
        {
            u32 newPos;
            if (pVm->execContext == NULL) break;
            if (pVm->execContext->dbg == 0) break;
            newPos = pVm->execContext->pc + step;
            if (newPos >= pVm->execContext->dbg->codesize) break;
            pVm->execContext->pc = newPos;
        }
    }

    return result;

error_code_range:
    return CHANS_VM_ERR_CODE_RANGE;

error_3e2:
    return CHANS_VM_ERR_HEAP_RANGE;
}

// === .data additional error/format strings ===
char lbl_81669B12[] = "VmArrayJoinEstimateStrSize";
char lbl_81669B2D[] = "%s %d: unsupported type 0x%x\n";
char lbl_81669B4B[] = "VmArrayJoinSub";
char lbl_81669B5A[] = "VmDateCommon";
char lbl_81669B67[] = "internal error in %s line %d\n";
char lbl_81669C0F[] = "getFullYear";
char lbl_81669C1B[] = "getHours";
char lbl_81669C24[] = "getMilliseconds";
char lbl_81669C34[] = "getMinutes";
char lbl_81669C3F[] = "getMonth";
char lbl_81669C48[] = "getSeconds";
char lbl_81669DB8[] = "charCodeAt";
char lbl_81669DC3[] = "*fromCharCode";
char lbl_81669DD1[] = "lastIndexOf";
char lbl_81669DDD[] = "toLowerCase";
char lbl_81669DE9[] = "toUpperCase";
char lbl_81669DF5[] = "0123456789abcdef";
char lbl_81669F98[] = "getLength";
char lbl_81669FA2[] = "setLength";
char lbl_81669FAC[] = "getString";
char lbl_81669FB6[] = "getWString";
char lbl_81669FC1[] = "setString";
char lbl_81669FCB[] = "setWString";
char lbl_81669FD6[] = "getHexString";
char lbl_81669FE3[] = "copyRangeFrom";
char lbl_81669FF1[] = "calcSHA1Digest";
char lbl_8166A000[] = "calcMD5Digest";
char lbl_8166A00E[] = "calcCRC16";
char lbl_8166A018[] = "calcCRC32";
char lbl_8166A022[] = "calcHMAC";
char lbl_8166A02B[] = "calcRangeSHA1Digest";
char lbl_8166A03F[] = "calcRangeMD5Digest";
char lbl_8166A052[] = "calcRangeCRC16";
char lbl_8166A061[] = "calcRangeCRC32";
char lbl_8166A070[] = "calcRangeHMAC";
char lbl_8166A07E[] = "document.write()";
char lbl_8166A0A7[] = "document";
char lbl_8166A0B0[] = "%s: no table for op '%c'\n";

// === .sdata additional strings ===
char lbl_81697700[] = "skip";
char lbl_81697705[] = "isEqual";
char lbl_8169770D[] = "fill";
char lbl_81697712[] = "getU8";
char lbl_81697718[] = "getU16";
char lbl_8169771F[] = "getU32";
char lbl_81697726[] = "getS8";
char lbl_8169772C[] = "getS16";
char lbl_81697733[] = "getS32";
char lbl_8169773A[] = "getS64";
char lbl_81697741[] = "setU8";
char lbl_81697747[] = "setU16";
char lbl_8169774E[] = "setU32";
char lbl_81697755[] = "setS8";
char lbl_8169775B[] = "setS16";
char lbl_81697762[] = "setS32";
char lbl_81697769[] = "setS64";
char lbl_81697770[] = "getBlob";
char lbl_81697778[] = "setBlob";
char lbl_81697780[] = "pack";
char lbl_81697785[] = "unpack";
char lbl_8169778C[] = "Image";
char lbl_81697792[] = "width";
char lbl_81697798[] = "height";
char lbl_8169779F[] = "format";
char lbl_816977A6[] = "write";
char lbl_816977AC[] = "Date";
char lbl_816977B1[] = "@Math";
char lbl_816977B7[] = "Math";
char lbl_816977BC[] = "@WinEmu";
char lbl_816977C4[] = "RCHE";

// === lbl_81616ED0: function-addr+name table ===
// TODO: Replace NULL function pointers with actual function references
//       as those functions get implemented.
const NameFuncEntry lbl_81616ED0[] = {
    { (const char*)lbl_816975C5, (void*)6 },
    { NULL, NULL },
    { "getDate", (void*)VmDateGetDate },
    { "getDay", (void*)VmDateGetDay },
    { "getFullYear", (void*)VmDateGetFullYear },
    { "getHours", (void*)VmDateGetHours },
    { "getMilliseconds", (void*)VmDateGetMilliseconds },
    { "getMinutes", (void*)VmDateGetMinutes },
    { "getMonth", (void*)VmDateGetMonth },
    { "getSeconds", (void*)VmDateGetSeconds },
    { "getTime", (void*)VmDateGetTime },
    { "getRTC", (void*)VmDateGetRTC },
    { "E", (void*)VmMathE },
    { "LN10", (void*)VmMathLN10 },
    { "LN2", (void*)VmMathLN2 },
    { "LOG2E", (void*)VmMathLOG2E },
    { "LOG10E", (void*)VmMathLOG10E },
    { "PI", (void*)VmMathPI },
    { "SQRT1_2", (void*)VmMathSQRT1_2 },
    { "SQRT2", (void*)VmMathSQRT2 },
    { "abs", (void*)VmMathabs },
    { "acos", (void*)VmMathacos },
    { "asin", (void*)VmMathasin },
    { "atan", (void*)VmMathatan },
    { "atan2", (void*)VmMathatan2 },
    { "ceil", (void*)VmMathceil },
    { "cos", (void*)VmMathcos },
    { "exp", (void*)VmMathexp },
    { "floor", (void*)VmMathfloor },
    { "log", (void*)VmMathlog },
    { "max", (void*)VmMathmax },
    { "min", (void*)VmMathmin },
    { "pow", (void*)VmMathpow },
    { "random", (void*)VmMathrandom },
    { "round", (void*)VmMathround },
    { "sin", (void*)VmMathsin },
    { "sqrt", (void*)VmMathsqrt },
    { "tan", (void*)VmMathtan },
    { "length", (void*)NULL },       // TODO: VmStringGetLength
    { "charAt", (void*)NULL },       // TODO: VmStringCharAt
    { "charCodeAt", (void*)NULL },   // TODO: VmStringCharCodeAt
    { "fromCharCode", (void*)NULL }, // TODO: VmStringFromCharCode
    { "format", (void*)NULL },       // TODO: VmStringFormat
    { "indexOf", (void*)NULL },      // TODO: VmStringIndexOf
    { "lastIndexOf", (void*)NULL },  // TODO: VmStringLastIndexOf
    { "replace", (void*)NULL },      // TODO: VmStringReplace
    { "search", (void*)NULL },       // TODO: VmStringSearch
    { "splice", (void*)NULL },       // TODO: VmStringSplice
    { "split", (void*)NULL },        // TODO: VmStringSplit
    { "toLowerCase", (void*)NULL },  // TODO: VmStringToLowerCase
    { "toUpperCase", (void*)NULL },  // TODO: VmStringToUpperCase
    { "getBlob", (void*)NULL },      // TODO: VmBlobGetOffset
    { "seek", (void*)NULL },         // TODO: VmBlobSeek
    { "shift", (void*)VmBlobGetLength },
    { "setLength", (void*)VmBlobSetLength },
    { "setBlob", (void*)NULL },      // TODO: VmBlobCreate
    { "getHexString", (void*)NULL }, // TODO: VmBlobSeek (dup)
    { "setHexString", (void*)NULL }, // TODO: VmBlobSkip
    { "pack", (void*)NULL },         // TODO: VmBlobIsEqual
    { "getLength", (void*)VmBlobGetLength },
    { "setLength", (void*)VmBlobSetLength },
    { "fill", (void*)VmBlobFill },
    { "getU8", (void*)VmBlobGetU8 },
    { "getU16", (void*)VmBlobGetU16 },
    { "getU32", (void*)VmBlobGetU32 },
    { "getS8", (void*)VmBlobGetS8 },
    { "getS16", (void*)VmBlobGetS16 },
    { "getS32", (void*)VmBlobGetS32 },
    { "getS64", (void*)VmBlobGetS64 },
    { "setU8", (void*)VmBlobSetU8 },
    { "setU16", (void*)VmBlobSetU16 },
    { "setU32", (void*)VmBlobSetU32 },
    { "setS8", (void*)VmBlobSetS8 },
    { "setS16", (void*)VmBlobSetS16 },
    { "setS32", (void*)VmBlobSetS32 },
    { "setS64", (void*)VmBlobSetS64 },
    { "getString", (void*)NULL },     // TODO: VmBlobGetString
    { "getWString", (void*)NULL },    // TODO: VmBlobGetWString
    { "setString", (void*)NULL },     // TODO: VmBlobSetString
    { "setWString", (void*)NULL },    // TODO: VmBlobSetWString
    { "getBlob", (void*)VmBlobGetBlob },
    { "setBlob", (void*)VmBlobSetBlob },
    { "getHexString", (void*)NULL },  // TODO: VmBlobGetHexString
    { "copyRangeFrom", (void*)VmBlobCopyRangeFrom },
    { "calcSHA1Digest", (void*)NULL },      // TODO: VmBlobCalcSHA1Digest
    { "calcMD5Digest", (void*)NULL },       // TODO: VmBlobCalcMD5Digest
    { "calcCRC16", (void*)NULL },           // TODO: VmBlobCalcCRC16
    { "calcCRC32", (void*)NULL },           // TODO: VmBlobCalcCRC32
    { "calcHMAC", (void*)NULL },            // TODO: VmBlobCalcHMAC
    { "calcRangeSHA1Digest", (void*)NULL }, // TODO: VmBlobCalcRangeSHA1Digest
    { "calcRangeMD5Digest", (void*)NULL },  // TODO: VmBlobCalcRangeMD5Digest
    { "calcRangeCRC16", (void*)NULL },      // TODO: VmBlobCalcRangeCRC16
    { "calcRangeCRC32", (void*)NULL },      // TODO: VmBlobCalcRangeCRC32
    { "calcRangeHMAC", (void*)NULL },       // TODO: VmBlobCalcRangeHMAC
    { "pack", (void*)NULL },                // TODO: VmBlobPack
    { "unpack", (void*)NULL },              // TODO: VmBlobUnpack
    { "width", (void*)NULL },               // TODO: VmImageWidth
    { "height", (void*)NULL },              // TODO: VmImageHeight
    { "format", (void*)NULL },              // TODO: VmImageFormat
};

// === vmErrorList: maps error codes to strings ===
const char* vmErrorList[] = {
    lbl_816691A8, lbl_816691BD, lbl_816691CF, lbl_816691E6,
    lbl_81669206, lbl_81669217, lbl_8166922F, lbl_81669247,
    lbl_81669265, lbl_8166927C, lbl_81669295, lbl_816692B3,
    lbl_816692D0, lbl_816692E9, lbl_8166930C, lbl_8166932C,
    lbl_81669345, lbl_8166935F, lbl_8166937D, lbl_81669398,
    lbl_816693B3, lbl_816693CF, lbl_816693E7, lbl_81669402,
    lbl_8166941B, lbl_81669432, lbl_81669443, lbl_81669454,
    lbl_81669465, lbl_81669476, lbl_81669487, lbl_8166949C,
    lbl_816694B1, lbl_816694C6, lbl_816694DA, lbl_816694EF,
    lbl_81669500, lbl_8166951F, lbl_8166953F, lbl_81669562,
    lbl_81669578, lbl_81669590, lbl_816695A4, lbl_816695B8,
    lbl_816695DD, lbl_81669605, lbl_81669632, lbl_81669643,
    lbl_81669664, lbl_8166967D, lbl_8166968F, lbl_816696B2,
    lbl_816696CD, lbl_816696E8, lbl_81669701, lbl_8166971D,
    lbl_8166973C, lbl_81669750, lbl_8166976C, lbl_81669783,
    lbl_816697A2, lbl_816697BA, lbl_816697D6, lbl_816697F2,
    lbl_81669813, lbl_81669830, lbl_8166984D, lbl_81669873,
    lbl_81669897, lbl_816698AD, lbl_816698C9, lbl_816698EA,
    lbl_81669908, lbl_81669924, lbl_81669947, lbl_8166996A,
    lbl_81669988, lbl_816699A6,
};
