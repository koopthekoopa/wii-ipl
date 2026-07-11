#include "channelScript/CHANSVm.h"
#include "channelScript/CHANSVmPrivate.h"

#include <stdarg.h>
#include <stdio.h>
#include <string.h>

#include <math.h>
#include <stdlib.h>

#include <private/sc.h>
#include <revolution.h>
#include <revolution/net/NETMisc.h>
#include <revolution/net/NETDigest.h>

#define CHANSVmDebugLength 1024

typedef struct CHANSVmUnk0 {
    vmPtr unk_0x00;
    vmU32 unk_0x04;
    vmU32 unk_0x08;
    vmU32 unk_0x0C;
} CHANSVmUnk0;

CHANSVmImageCtorCallback VmImageCtorCallback = vmNull;
CHANSVmImageAllocatorCallback VmImageAllocCallback = vmNull;

BOOL CHANSVmDebugVerboseMode = vmFalse;

#define VM_STR_LENGTH(str) (str * sizeof(vmWChar))

#define VM_ALIGNMENT DEFAULT_ALIGN
#define VM_ALIGNED(x) ((x & (VM_ALIGNMENT - 1)) == 0)
#define VM_ALIGN(x) ROUNDUP(x, VM_ALIGNMENT)

#define VM_NAN ((0.0f / 0.0f))

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

vmPtr CHANSVmAllocFromGarbage(CHANSVm* vm, vmSize size) {
    CHANSVmPrivate* pVm = (CHANSVmPrivate*)vm;

    vmPtr allocBuf;
    vmU32* prevPtr;
    vmU32* ptr;
    vmU32 uVar1;
    vmU32 uVar4;

    for (prevPtr = vmNull, ptr = pVm->unk_0x3C; ptr != vmNull; prevPtr = ptr, ptr = (vmU32*)*ptr) {
        uVar4 = VM_ALIGN((vmU32)ptr) - (vmU32)ptr;
        if (ptr[1] >= (size + uVar4)) {
            uVar1 = ptr[1] - (size + uVar4);
            allocBuf = (vmPtr)((vmU32)ptr + uVar4);

            if (uVar1 < 8) {
                if (prevPtr == vmNull) {
                    pVm->unk_0x3C = (vmU32*)*ptr;
                } else {
                    *prevPtr = *ptr;
                }
            } else {
                ptr[1] = uVar1;
                if (prevPtr == vmNull) {
                    pVm->unk_0x3C = (vmU32*)((vmU32)allocBuf + size);
                    *(vmU32*)((vmU32)allocBuf + size) = *ptr;
                    pVm->unk_0x3C[1] = ptr[1];
                } else {
                    *prevPtr = (vmU32)allocBuf + size;
                    *(vmU32*)((vmU32)allocBuf + size) = *ptr;
                    *(vmU32*)(*prevPtr + 4) = ptr[1];
                }
                ptr[1] = ptr[1] - size;
            }

            memset(allocBuf, 0, size);
            return allocBuf;
        }
    }
    return vmNull;
}

void CHANSVmUpdateSmallestFreeHeapSize(CHANSVm* vm) {
    CHANSVmPrivate* pVm = (CHANSVmPrivate*)vm;

    vmU32 unk = (vmU32)pVm->unk_0x2C - (vmU32)pVm->freeExeBuf;
    if (pVm->unk_0x1C <= unk) {
        return;
    }
    pVm->unk_0x1C = unk;
}

CHANSVmObjHdr* CHANSVmNewObjHdr(CHANSVm* vm, int noAlloc) {
    CHANSVmPrivate* pVm = (CHANSVmPrivate*)vm;
    CHANSVmObjHdr* object = vmNull;

    if (noAlloc == 0) {
        object = (CHANSVmObjHdr*)CHANSVmAllocFromGarbage(vm, VM_ALIGN(sizeof(CHANSVmObjHdr)));
    }

    if (object == vmNull) {
        vmU8* ptr = pVm->freeExeBuf;
        if (((vmU32)pVm->unk_0x2C - (vmU32)ptr) >= VM_ALIGN(sizeof(CHANSVmObjHdr))) {
            if (noAlloc == 0) {
                pVm->freeExeBuf = (ptr + VM_ALIGN(sizeof(CHANSVmObjHdr)));
                object = (CHANSVmObjHdr*)ptr;
            } else {
                ptr = (vmU8*)(pVm->unk_0x2C - sizeof(CHANSVmObjHdr));
                pVm->unk_0x2C = ptr;
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
            if (((vmU32)pVm->unk_0x2C - (vmU32)ptr) >= size) {
                allocBuf = ptr;
                pVm->freeExeBuf = ptr + size;

                CHANSVmUpdateSmallestFreeHeapSize(vm);
                memset(ptr, 0, size);
            }
        }
    }

    return allocBuf;
}

void CHANSVmFree(CHANSVm* vm, vmPtr buffer, vmSize size) NO_INLINE {
    CHANSVmPrivate* pVm = (CHANSVmPrivate*)vm;
    vmU32* pBuffer = (vmU32*)buffer;

    vmU32* p1;
    vmU32* p2;
    vmU32* p3;
    if (pVm->unk_0x20 > pBuffer) return;
    if (pBuffer >= (vmU32*)pVm->freeExeBuf) return;
    if (size <= 8) return;

    memset(pBuffer, 0, size);
    pBuffer[1] = size;

    p2 = (vmU32*)pVm->unk_0x3C;
    if (p2 == NULL) {
        pVm->unk_0x3C = pBuffer;
    } else if (pBuffer < p2) {
        pVm->unk_0x3C = pBuffer;
        if ((u32)pBuffer + pBuffer[1] == (u32)p2) {
            pBuffer[0] = p2[0];
            pBuffer[1] = pBuffer[1] + p2[1];
            memset(p2, 0, 8);
        } else {
            pBuffer[0] = (vmU32)p2;
        }
    } else {
        while (1) {
            p3 = (vmU32*)p2[0];
            if (p3 == NULL) goto aa;
            if (pBuffer < p3) break;
            p2 = p3;
        }

        if ((u32)pBuffer + pBuffer[1] == (u32)p3) {
            pBuffer[0] = p3[0];
            pBuffer[1] = pBuffer[1] + p3[1];
            memset((void*)p2[0], 0, 8);
        } else {
            pBuffer[0] = (vmU32)p3;
        }

    aa:
        if ((u32)p2 + p2[1] == (u32)pBuffer) {
            p2[0] = 0;
            p2[1] = p2[1] + pBuffer[1];
            memset(pBuffer, 0, 8);
        } else {
            p2[0] = (vmU32)pBuffer;
        }
    }

    while (pVm->unk_0x3C != NULL) {
        p1 = NULL;
        p2 = (vmU32*)pVm->unk_0x3C;
        while (p2[0] != (vmU32)0) {
            p1 = p2;
            p2 = (vmU32*)p2[0];
        }

        if (pVm->freeExeBuf != (vmU8*)((int)p2 + p2[1])) return;

        memset(p2, 0, 8);
        pVm->freeExeBuf = (vmU8*)p2;

        if (p1 == NULL) {
            pVm->unk_0x3C = 0;
        } else {
            p1[0] = 0;
        }
    }
}

CHANSVmErr CHANSVmDeleteObject(CHANSVm* vm, CHANSVmObjHdr* object) {
    CHANSVmPrivate* pVm = (CHANSVmPrivate*)vm;

    if (object != vmNull) {
        if (!(object->flags.raw & 0x80)) {
            if (object->unk_0x0A) {
                CHANSVmUnk0* unk = (CHANSVmUnk0*)object->value.ptr_v;
                int val;

                if (unk->unk_0x08 == 0) {
                    val = 1;
                } else {
                    if (unk->unk_0x0C != 0) {
                        val = unk->unk_0x0C - 1;
                        unk->unk_0x0C = val;
                    } else {
                        val = -1;
                    }
                }

                if (val == 0) {
                    if (object->parentCls != vmNull && object->parentCls->dtor != vmNull) {
                        if (!object->parentCls->dtor(vm, object, vmNull)) {
                            goto error;
                        }
                    }
                    CHANSVmFree(vm, unk->unk_0x00, unk->unk_0x08);
                    memset(unk, 0, sizeof(CHANSVmUnk0));
                }
            }
            memset(object, 0, sizeof(CHANSVmObjHdr));
        }

        return CHANS_VM_OK;
    }

error:
    return CHANS_VM_ERR_DELETE_OBJECT;
}

CHANSVmObjHdr* CHANSVmCopyObject(CHANSVm* vm, CHANSVmObjHdr* outObj, CHANSVmObjHdr* inObj) {
    if (inObj != vmNull) {
        if (outObj != vmNull) {
            memset(outObj, 0, sizeof(CHANSVmObjHdr));
            goto skip;
        }
        outObj = CHANSVmNewObjHdr(vm, 0);
        if (outObj != vmNull) {
        skip:
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

                if (val != 0) {
                    goto succeed;
                }

                goto error;
            }
        succeed:
            return outObj;
        }
    }

error:
    return vmNull;
}

CHANSVmErr CHANSVmPopObject(CHANSVm* vm, CHANSVmObjHdr* object) {
    CHANSVmPrivate* pVm = (CHANSVmPrivate*)vm;

    CHANSVmObjHdr* unk = (CHANSVmObjHdr*)pVm->unk_0x2C;
    CHANSVmErr err = CHANS_VM_ERR_POP_OBJECT;

    if (pVm->unk_0x60->unk_0x0C != 0) {
        CHANSVmObjHdr* nextUnk = (CHANSVmObjHdr*)((vmU8*)unk + sizeof(CHANSVmObjHdr));
        if (nextUnk <= pVm->unk_0x24) {
            err = CHANS_VM_OK;

            if (object != vmNull) {
                if (object == &pVm->unk_0x50) {
                    err = CHANSVmDeleteObject(vm, object);
                }
                if (err == CHANS_VM_OK) {
                    memcpy(object, unk, sizeof(CHANSVmObjHdr));
                    object->flags.raw = object->flags.reserved;
                    memset(unk, 0, sizeof(CHANSVmObjHdr));
                }
            } else {
                err = CHANSVmDeleteObject(vm, (CHANSVmObjHdr*)unk);
            }

            if (err == CHANS_VM_OK) {
                pVm->unk_0x60->unk_0x0C--;
                pVm->unk_0x2C = (vmU8*)nextUnk;
            }
        }
    }

    return err;
}

void CHANSVmStrCpyToU16FromU8(vmWString output, vmString input, vmSize length) {
    vmS32 i;
    vmS32 outLength = length;
    vmChar* outChar;

    i = length;
    while (i != 0) {
        outLength -= 1;
        outChar = (vmChar*)(output + outLength);
        outChar--;
        *outChar = *--input;
        outChar--;
        *outChar = 0;
        i--;
    };
}

static inline int VmToStrFromInt(vmWString output, vmSize length, vmInteger integer) {
    vmS32 len = snprintf((vmString)output, length, "%lld", integer);
    CHANSVmStrCpyToU16FromU8(output, (vmString)output, len);
    return len;
}

CHANSVmObjHdr* CHANSVmConvertToStrFromInt(CHANSVm* vm, CHANSVmObjType type, CHANSVmObjHdr* object) {
    CHANSVmObjHdr* newObject = CHANSVmNewObject(vm, 0, vmNull, CHANS_VM_OBJ_TYPE_STRING, VM_STR_LENGTH(64));
    if (newObject) {
        vmS32 len = VmToStrFromInt(newObject->value.wstring_v->str, 64, object->value.int_v);

        newObject->value.wstring_v->len = VM_STR_LENGTH(len);
        if (newObject->value.wstring_v->len == 0) {
            goto error;
        }
    }
success:
    return newObject;
error:
    return vmNull;
}

CHANSVmObjHdr* CHANSVmConvertObjectTypeError(CHANSVm* vm, CHANSVmObjType type, CHANSVmObjHdr* object) {
    CHANS_VM_PRINTF(1176, ", type to %d from %d\n", type, object->type);
    return vmNull;
}

vmBoolInt CHANSVmGetEnumedType(CHANSVmObjType* eType, vmS32 iType) NO_INLINE {
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

// temporary
// clang-format off
VmConvertEntry VmTypeConvertFuncTbl[] = {
    { vmNull, CHANSVmConvertObjectTypeError, CHANSVmConvertObjectTypeError, CHANSVmConvertObjectTypeError, CHANSVmConvertObjectTypeError, CHANSVmConvertObjectTypeError },
    { vmNull, CHANSVmConvertObjectTypeError, CHANSVmConvertObjectTypeError, CHANSVmConvertObjectTypeError, CHANSVmConvertObjectTypeError, CHANSVmConvertObjectTypeError },
    { vmNull, CHANSVmConvertObjectTypeError, CHANSVmConvertObjectTypeError, CHANSVmConvertObjectTypeError, CHANSVmConvertObjectTypeError, CHANSVmConvertObjectTypeError },
    { vmNull, CHANSVmConvertObjectTypeError, CHANSVmConvertObjectTypeError, CHANSVmConvertObjectTypeError, CHANSVmConvertObjectTypeError, CHANSVmConvertObjectTypeError },
    { vmNull, CHANSVmConvertObjectTypeError, CHANSVmConvertObjectTypeError, CHANSVmConvertObjectTypeError, CHANSVmConvertObjectTypeError, CHANSVmConvertObjectTypeError },
};
// clang-format on

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
        if (value == -0.0f) {
            value = 0.0f;
        }
        object->value.float_v = value;
    }
    return ret;
}

CHANSVmErr CHANSVmSetU16String(CHANSVm* vm, CHANSVmObjHdr* object, vmWString str, vmSize strLen) {
    CHANSVmErr ret = CHANSVmDeleteObject(vm, object);
    if (ret == CHANS_VM_OK) {
        // Set up object with `CHANSVmNewObject` so it allocates needed memory size for the string.
        if (CHANSVmNewObject(vm, 0, object, CHANS_VM_OBJ_TYPE_STRING, strLen) == vmNull) {
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
        // Set up object with `CHANSVmNewObject` so it allocates needed memory size for the string.
        if (CHANSVmNewObject(vm, 0, object, CHANS_VM_OBJ_TYPE_STRING, VM_STR_LENGTH(strLen)) == vmNull) {
            return CHANS_VM_ERR_SET_STRING;
        }

        if (strLen != 0) {
            CHANSVmStrCpyToU16FromU8(object->value.wstring_v->str, str, strLen);
        }
    }
    return ret;
}

vmU32 CHANSVmGetArgc(CHANSVm* vm) {
    CHANSVmPrivate* pVm = (CHANSVmPrivate*)vm;

    return pVm->unk_0x60->argc;
}

CHANSVmObjHdr* CHANSVmGetArg(CHANSVm* vm, vmU32 argIdx) {
    CHANSVmPrivate* pVm = (CHANSVmPrivate*)vm;

    if (argIdx >= pVm->unk_0x60->argc) {
        return vmNull;
    }

    return (CHANSVmObjHdr*)pVm->unk_0x60->argv + ((pVm->unk_0x60->argc - 1) - argIdx);
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
            cls = (CHANSVmNativeClass*)CHANSVmAlloc(vm, (clsNameLen + sizeof(CHANSVmNativeClass) - 1) & -32);
            if (cls != vmNull) {
                CHANSVmNativeClass* prev;

                if (pVm->nativeClasses == vmNull) {
                    pVm->nativeClasses = cls;
                } else {
                    // Set the new class as the next class for the previous class
                    prev = pVm->nativeClasses;
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
    vmBoolInt result = arg != vmNull;
    if (result) {
        result = CHANSVmSetFloat(VmInst, VmReturnObj, fabs(arg->value.float_v)) == CHANS_VM_OK;
    }
    return result;
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
    } else {
        return vmFalse;
    }
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
    } else {
        return vmFalse;
    }
}
VmMethodDefine(Math, atan) {
    CHANSVmObjHdr* arg = CHANSVmGetArgFloat(VmInst, 0);
    vmBool result = vmFalse;
    if (arg != vmNull) {
        if (CHANSVmSetFloat(VmInst, VmReturnObj, atan(arg->value.float_v)) == CHANS_VM_OK) {
            result = vmTrue;
        }
    }
    return result;
}
VmMethodDefine(Math, atan2) {
    CHANSVmObjHdr* arg0 = CHANSVmGetArgFloat(VmInst, 0);
    CHANSVmObjHdr* arg1 = CHANSVmGetArgFloat(VmInst, 1);
    vmBool result = vmFalse;
    if (arg0 != vmNull && arg1 != vmNull) {
        if (CHANSVmSetFloat(VmInst, VmReturnObj, atan2(arg0->value.float_v, arg1->value.float_v)) == CHANS_VM_OK) {
            result = vmTrue;
        }
    }
    return result;
}
VmMethodDefine(Math, ceil) {
    CHANSVmObjHdr* arg = CHANSVmGetArgFloat(VmInst, 0);
    vmBool result = vmFalse;
    if (arg != vmNull) {
        if (CHANSVmSetFloat(VmInst, VmReturnObj, ceil(arg->value.float_v)) == CHANS_VM_OK) {
            result = vmTrue;
        }
    }
    return result;
}
VmMethodDefine(Math, cos) {
    CHANSVmObjHdr* arg = CHANSVmGetArgFloat(VmInst, 0);
    vmBool result = vmFalse;
    if (arg != vmNull) {
        if (CHANSVmSetFloat(VmInst, VmReturnObj, cos(arg->value.float_v)) == CHANS_VM_OK) {
            result = vmTrue;
        }
    }
    return result;
}
VmMethodDefine(Math, exp) {
    CHANSVmObjHdr* arg = CHANSVmGetArgFloat(VmInst, 0);
    vmBool result = vmFalse;
    if (arg != vmNull) {
        if (CHANSVmSetFloat(VmInst, VmReturnObj, exp(arg->value.float_v)) == CHANS_VM_OK) {
            result = vmTrue;
        }
    }
    return result;
}
VmMethodDefine(Math, floor) {
    CHANSVmObjHdr* arg = CHANSVmGetArgFloat(VmInst, 0);
    vmBool result = vmFalse;
    if (arg != vmNull) {
        if (CHANSVmSetFloat(VmInst, VmReturnObj, floor(arg->value.float_v)) == CHANS_VM_OK) {
            result = vmTrue;
        }
    }
    return result;
}
VmMethodDefine(Math, log) {
    CHANSVmObjHdr* arg = CHANSVmGetArgFloat(VmInst, 0);
    vmBool result = vmFalse;
    if (arg != vmNull) {
        if (CHANSVmSetFloat(VmInst, VmReturnObj, log(arg->value.float_v)) == CHANS_VM_OK) {
            result = vmTrue;
        }
    }
    return result;
}
inline VmMethodDefine(Math, fmax) {
    CHANSVmObjHdr* arg0 = CHANSVmGetArgFloat(VmInst, 0);
    CHANSVmObjHdr* arg1 = CHANSVmGetArgFloat(VmInst, 1);
    vmBool result = vmFalse;
    if (arg0 != vmNull && arg1 != vmNull) {
        if (CHANSVmSetFloat(VmInst, VmReturnObj, fmax(arg0->value.float_v, arg1->value.float_v)) == CHANS_VM_OK) {
            result = vmTrue;
        }
    }
    return result;
}
VmMethodDefine(Math, max) {
    CHANSVmObjHdr* arg0 = CHANSVmGetArg(VmInst, 0);
    CHANSVmObjHdr* arg1 = CHANSVmGetArg(VmInst, 1);
    vmBool result = vmFalse;
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
    vmBool result = vmFalse;
    if (arg0 != vmNull && arg1 != vmNull) {
        if (CHANSVmSetFloat(VmInst, VmReturnObj, fmin(arg0->value.float_v, arg1->value.float_v)) == CHANS_VM_OK) {
            result = vmTrue;
        }
    }
    return result;
}
VmMethodDefine(Math, min) {
    CHANSVmObjHdr* arg0 = CHANSVmGetArg(VmInst, 0);
    CHANSVmObjHdr* arg1 = CHANSVmGetArg(VmInst, 1);
    vmBool result = vmFalse;
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
    vmBool result = vmFalse;
    if (arg0 != vmNull && arg1 != vmNull) {
        if (CHANSVmSetFloat(VmInst, VmReturnObj, pow(arg0->value.float_v, arg1->value.float_v)) == CHANS_VM_OK) {
            result = vmTrue;
        }
    }
    return result;
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
    vmBool result = vmFalse;
    if (arg != vmNull) {
        if (CHANSVmSetFloat(VmInst, VmReturnObj, sin(arg->value.float_v)) == CHANS_VM_OK) {
            result = vmTrue;
        }
    }
    return result;
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

vmString VmGetStrFromObjHdr(CHANSVmObjHdr* object) {
    if (object != vmNull) {
        if (object->value.string_v != vmNull) {
            return object->value.string_v->str;
        }
    }
    return vmNull;
}
VmMethodDefine(Math, tan) {
    CHANSVmObjHdr* arg = CHANSVmGetArgFloat(VmInst, 0);
    vmBool result = vmFalse;
    if (arg != vmNull) {
        if (CHANSVmSetFloat(VmInst, VmReturnObj, tan(arg->value.float_v)) == CHANS_VM_OK) {
            result = vmTrue;
        }
    }
    return result;
}

int VmGetIntFromObjHdr(CHANSVmObjHdr* object) {
    if (object != vmNull) {
        if (object->value.int32_v) {
            return object->value.int32_v->val;
        }
    }
    return 0;
}

void CHANSVmImageRegisterAllocator(CHANSVmImageAllocatorCallback allocCb, CHANSVmImageCtorCallback ctorCb) {
    VmImageAllocCallback = allocCb;
    VmImageCtorCallback = ctorCb;
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

VmCtorDefine(Image) {
    vmBoolInt result = vmFalse;

    CHANSVmImage* image = (CHANSVmImage*)*VmParentObj->value.ptr_v;
    if (VmImageCtorCallback != vmNull) {
        if (image->unk_0x00 != 0 && image->unk_0x04 != 0) {
            result = VmImageCtorCallback();
        }
    } else {
        result = vmFalse;
    }

    return result;
}

vmPtr CHANSVmGetFreeExeBufp(CHANSVm* vm) {
    CHANSVmPrivate* pVm = (CHANSVmPrivate*)vm;

    if (pVm->unk_0x4C != 0 || pVm->freeExeBuf >= pVm->unk_0x2C) {
        return vmNull;
    } else {
        return pVm->freeExeBuf;
    }
}

vmU32 CHANSVmGetFreeExeSize(CHANSVm* vm) {
    CHANSVmPrivate* pVm = (CHANSVmPrivate*)vm;

    vmS32 size = (vmU32)pVm->unk_0x2C - (vmU32)pVm->freeExeBuf;
    if (pVm->unk_0x4C != 0 || size < 0) {
        return 0;
    } else {
        return size;
    }
}

static u8* VmGetOperand(CHANSVm* vm, u32 num, u32 offset) {
    CHANSVmPrivate* pVm = (CHANSVmPrivate*)vm;
    SrcDbg* dbg = pVm->unk_0x60->unk_0x04;
    u32 pc = pVm->unk_0x60->unk_0x10;

    if (pc + offset >= dbg->codesize) {
        return NULL;
    }
    return (u8*)dbg->unk_10 + pc + num;
}

static void VmLoadImmInteger(CHANSVm* vm, CHANSVmObjHdr* obj, const u8* buf, s32 count) {
    u32 low = 0;
    u32 high = 0;

    while (count-- > 0) {
        u8 byte = *buf++;
        high = (high << 8) | (low >> 24);
        low = (low << 8) | byte;
    }

    CHANSVmSetInteger(vm, obj, ((s64)(u32)high << 32) | low);
}

CHANSVmErr VmDeleteCommon(CHANSVm* vm, CHANSVmObjHdr* object) {
    CHANSVmErr result = CHANS_VM_ERR_DELETE_OBJECT;

    if (object != NULL) {
        result = CHANSVmDeleteObject(vm, object);
        if (result == CHANS_VM_OK) {
            if (object->type == 0) {
                result = CHANSVmSetInteger(vm, (CHANSVmObjHdr*)&((CHANSVmPrivate*)vm)->unk_0x50, 1);
            } else {
                result = CHANS_VM_ERR_DELETE_OBJECT;
            }
        }
    }
    return result;
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

void CHANSVmSetSignal(CHANSVm* vm, vmBool* signal) {
    CHANSVmPrivate* pVm = (CHANSVmPrivate*)vm;

    pVm->curSignal = signal;
    pVm->updatedSignal = true;
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
            obj = CHANSVmNewObject(vm, 0, &temp, CHANS_VM_OBJ_TYPE_STRING, left->value.string_v->len + right->value.string_v->len);
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

vmFloat VmIntToFloat(vmU64 integer) {  // should be vmInteger (s64)????
    vmFloat result;

    if ((integer & 0x80000000) != 0) {
        result = -(vmFloat)(~integer + 1);
    } else {
        result = (vmFloat)integer;
    }
    return result;
}

CHANSVmErr VmDiv(CHANSVm* vm, int type, CHANSVmObjHdr* ret, CHANSVmObjHdr* left, CHANSVmObjHdr* right) {
    CHANSVmErr err = CHANS_VM_ERR_DIV;
    vmFloat dVar2;
    vmFloat dVar3;

    switch (type) {
        case CHANS_VM_OBJ_TYPE_INTEGER: {
            dVar2 = VmIntToFloat(right->value.int_v);
            dVar3 = VmIntToFloat(left->value.int_v);
            err = CHANSVmSetFloat(vm, ret, dVar3 / dVar2);
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

    vmFloat dVar2;
    vmFloat dVar3;

    switch (type) {
        case CHANS_VM_OBJ_TYPE_INTEGER: {
            dVar2 = VmIntToFloat(right->value.int_v);
            dVar3 = VmIntToFloat(left->value.int_v);
            err = CHANSVmSetFloat(vm, ret, fmod(dVar3, dVar2));
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
                val = (s32)(left->value.int_v >> 32);
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
    u32 uVar3;
    u32 bVar2;
    u8 uVar1;
    vmPtr num;
    CHANSVmErr CVar5;

    switch (type) {
    case CHANS_VM_OBJ_TYPE_BLANK:
        uVar1 = left->type;
        if (uVar1 == right->type) {
            if (uVar1 == 7 || uVar1 == 8)
                goto LAB_8144c27c;
            if (uVar1 == 9) {
                uVar3 = left->value.ptr_v == right->value.ptr_v;
                break;
            }
            if (uVar1 == 0) {
                uVar3 = 1;
                break;
            }
        }
        uVar3 = 0;
        break;
    case CHANS_VM_OBJ_TYPE_INTEGER:
        uVar3 = left->value.int_v == right->value.int_v;
        break;
    case CHANS_VM_OBJ_TYPE_FLOAT:
        uVar3 = (u32)(left->value.float_v == right->value.float_v) << 31;
        break;
    case CHANS_VM_OBJ_TYPE_STRING:
        uVar3 = 0;
        num = (left->value).ptr_v[1];
        if (num == (right->value).ptr_v[1]) {
            bVar2 = 0;
            if (num == NULL || memcmp(*(void**)left->value.ptr_v, *(void**)right->value.ptr_v, (size_t)num) == 0) {
                bVar2 = 1;
            }
            if (bVar2) {
                uVar3 = 1;
            }
        }
        break;
    case CHANS_VM_TYPE_OBJECT:
LAB_8144c27c:
        uVar3 = 0;
        if (((left->parentCls == right->parentCls) && (uVar1 = left->unk_0x0A, uVar1 == right->unk_0x0A)) &&
            ((uVar1 == '\0' || ((left->value).ptr_v == (right->value).ptr_v)))) {
            uVar3 = 1;
        }
        break;
    default:
        return CHANS_VM_ERR_CMP;
    }

    CVar5 = CHANSVmSetInteger(vm, ret, uVar3 != 0);
    return CVar5;
}

CHANSVmErr VmCmpNeq(CHANSVm* vm, int type, CHANSVmObjHdr* ret, CHANSVmObjHdr* left, CHANSVmObjHdr* right) {
    CHANSVmErr CVar1;

    CVar1 = VmCmpEq(vm, type, ret, left, right);
    if (CVar1 == CHANS_VM_OK) {
        ret->value.int_v = !(ret->value.int_v);
    }
    return CVar1;
}

CHANSVmErr VmCmpLt(CHANSVm* vm, int type, CHANSVmObjHdr* ret, CHANSVmObjHdr* left, CHANSVmObjHdr* right) {
    int result;
    int match;
    u32 leftlen, rightlen, maxlen;
    switch (type) {
        case CHANS_VM_OBJ_TYPE_BLANK:
        case CHANS_VM_TYPE_OBJECT:
        case CHANS_VM_TYPE_POINTER: {
            result = false;
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
            rightlen = right->value.string_v->len;
            leftlen = left->value.string_v->len;
            maxlen = rightlen;
            if (leftlen < rightlen)
                maxlen = leftlen;
            if (maxlen != 0) {
                match = memcmp(left->value.string_v->str, right->value.string_v->str, maxlen);
            } else {
                match = 0;
            }
            result = false;
            if (match < 0 || (match == 0 && leftlen < rightlen))
                result = true;
            break;
        }
        default: {
            return CHANS_VM_ERR_CMP;
        }
    }
    return CHANSVmSetInteger(vm, ret, result);
}

CHANSVmErr VmCmpGt(CHANSVm* vm, int type, CHANSVmObjHdr* ret, CHANSVmObjHdr* left, CHANSVmObjHdr* right) {
    return VmCmpLt(vm, type, ret, right, left);
}

CHANSVmErr VmCmpLeq(CHANSVm* vm, int type, CHANSVmObjHdr* ret, CHANSVmObjHdr* left, CHANSVmObjHdr* right) {
    int result;
    int match;
    u32 leftlen, rightlen, maxlen;
    switch (type) {
        case CHANS_VM_OBJ_TYPE_BLANK:
        case CHANS_VM_TYPE_OBJECT:
        case CHANS_VM_TYPE_POINTER: {
            result = false;
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
            rightlen = right->value.string_v->len;
            leftlen = left->value.string_v->len;
            maxlen = rightlen;
            if (leftlen < rightlen)
                maxlen = leftlen;
            if (maxlen != 0) {
                match = memcmp(left->value.string_v->str, right->value.string_v->str, maxlen);
            } else {
                match = 0;
            }
            result = false;
            if (match < 0 || (match == 0 && leftlen <= rightlen))
                result = true;
            break;
        }
        default: {
            return CHANS_VM_ERR_CMP;
        }
    }
    return CHANSVmSetInteger(vm, ret, result);
}

CHANSVmErr VmCmpGeq(CHANSVm* vm, int type, CHANSVmObjHdr* ret, CHANSVmObjHdr* left, CHANSVmObjHdr* right) {
    return VmCmpLeq(vm, type, ret, right, left);
}

vmBoolInt VmIsNan(vmFloat param_1) {
    return isnan(param_1) || param_1 == (0.0f / 0.0f);
}

CHANSVmErr CHANSVmGetBoolean(CHANSVmObjHdr* ret, CHANSVmObjHdr* val) {
    vmBool result;
    switch (val->type) {
        case CHANS_VM_OBJ_TYPE_BLANK: {
            result = false;
            break;
        }
        case CHANS_VM_OBJ_TYPE_INTEGER: {
            result = val->value.int_v != 0;
            break;
        }
        case CHANS_VM_OBJ_TYPE_FLOAT: {
            result = false;
            if (!VmIsNan(val->value.float_v) && (val->value.float_v != 0)) {
                result = true;
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
        case CHANS_VM_TYPE_MAX: {
            result = true;
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

int CHANS_8144E21(CHANSVm* vm, OSCalendarTime* out) {
    CHANSVmPrivate* pVm = (CHANSVmPrivate*)vm;
    u32 argc;
    s64 time;
    OSCalendarTime nettime;
    u32 i;
    s32 v;
    CHANSVmObjHdr* tmp;

    if (out == NULL)
        return false;

    argc = pVm->unk_0x60->argc;

    if (argc == 0) {
        time = OSGetTime();
        goto finalize_time;
    }

    if (argc == 1) {
        CHANSVmObjHdr* arg = CHANSVmGetArg(vm, 0);

        if (arg && arg->type == CHANS_VM_OBJ_TYPE_STRING) {
            if (arg->value.wstring_v->len == 6 && memcmp(arg->value.wstring_v->str, L"UTC", 6) == 0) {
                NETGetUniversalCalendar(&nettime);
                time = OSCalendarTimeToTicks(&nettime);
                goto finalize_time;
            }
        }

        tmp = arg;
        arg = CHANSVmConvertObjectType(vm, CHANS_VM_OBJ_TYPE_INTEGER, tmp);
        if (arg) {
            time = arg->value.int_v;
            goto finalize_time;
        }
    }

    memset(&nettime, 0, sizeof(nettime));

    if (argc > 7)
        argc = 7;

    for (i = 0; i < argc; i++) {
        CHANSVmObjHdr* arg = CHANSVmGetArg(vm, i);
        arg = CHANSVmConvertObjectType(vm, CHANS_VM_OBJ_TYPE_INTEGER, arg);
        if (!arg) {
            return false;
        }

        v = arg->value.int_v;

        switch (i) {
            case 0:
                nettime.year = v;
                break;
            case 1:
                nettime.mon = v;
                break;
            case 2:
                nettime.mday = v;
                break;
            case 3:
                nettime.hour = v;
                break;
            case 4:
                nettime.min = v;
                break;
            case 5:
                nettime.sec = v;
                break;
            case 6:
                nettime.msec = v;
                break;
        }
    }

    if (nettime.year < 2000)
        nettime.year = 2000;
    if (nettime.mday < 1)
        nettime.mday = 1;

    time = OSCalendarTimeToTicks(&nettime);

finalize_time: {
    u32 divisor = (__OSBusClock >> 2) / 1000;
    time = time / divisor;
    OSTicksToCalendarTime(time, out);
}

    return true;
}

VmCtorDefine(Date) {
    OSCalendarTime* caltime;
    caltime = CHANSVmNewObjData(VmInst, VmReturnObj, 0x28);
    return CHANS_8144E21(VmInst, caltime);
}

#define RANGE(val, min, max) ((val) >= (min) && (val) <= (max))

const char* weekday_table[] = {"Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"};
const char* month_table[] = {"Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"};

VmDtorDefine(Date) {
    bool b;
    OSCalendarTime date;
    CHANSVmPrivate* pVm = (CHANSVmPrivate*)VmInst;
    CHANSVmErr err;
    char buffer[32];
    unsigned int uv = 0;

    memset(&date, 0, 0x28);
    b = CHANS_8144E21(VmInst, &date);
    if (b && RANGE(date.sec, 0, 61) && RANGE(date.min, 0, 59) && RANGE(date.hour, 0, 32) && RANGE(date.mday, 1, 31) && RANGE(date.mon, 0, 11) &&
        RANGE(date.year, 1900, 9999) && RANGE(date.wday, 0, 6) && uv <= 0x20) {
        uv = snprintf(buffer, 0x20, "s_%s_%s_%02d_%02d:%02d:%02d_%04d_81669bf0", weekday_table[date.wday], month_table[date.mon]);
        err = CHANSVmSetU16StringFromU8(VmInst, VmReturnObj, buffer, uv);
        return err == 0;
    }
    return (CHANSVmNewObject(VmInst, 0, VmReturnObj, 3, 0) != 0);
}

const char CHANSVmConstStringDataEmpty[10] = "";

CHANSVmObjHdr* CHANSVmNewObject(CHANSVm* vm, vmS32 unk, CHANSVmObjHdr* object, CHANSVmObjType type, vmSize len) {
    CHANSVmObjHdr* temp_r3;
    CHANSVmObjHdr* var_r29;

    var_r29 = object;
    if (object != NULL) {
        memset(var_r29, 0, 0x10);
        goto block_3;
    }
    temp_r3 = CHANSVmNewObjHdr(vm, unk);
    var_r29 = temp_r3;
    if (temp_r3 != NULL) {
    block_3:
        if (len != 0) {
            if (CHANSVmNewObjData(vm, var_r29, len) != 0) {
                goto block_8;
            } else
                goto block_9;
        }
        if (type == 3UL) {
            var_r29->value.ptr_v = (vmPtr)CHANSVmConstStringDataEmpty;
        }
    block_8:
        var_r29->type = type;
        return var_r29;
    }
block_9:
    return NULL;
}

void CHANSVmNewStringObject(CHANSVm* vm, CHANSVmObjHdr* obj, vmSize len) {
    CHANSVmNewObject(vm, 0, obj, CHANS_VM_OBJ_TYPE_STRING, len);
}

double CHANSVm_8144B1D8(double param_1)
{
    if (param_1 < 0.0) {
        return -1.0;
    }
    if (param_1 <= 0.0) {
        return param_1;
    }
    return 1.0;
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
    s64 t = time / ((__OSBusClock >> 2) / 1000);
    return CHANSVmSetInteger(VmInst, VmReturnObj, t) == CHANS_VM_OK;
}

VmMethodDefine(Date, GetRTC) {
    OSCalendarTime* cal = *(OSCalendarTime**)VmParentObj->value.ptr_v;
    int bias = SCGetCounterBias();
    s64 ticks = OSCalendarTimeToTicks(cal);
    u64 t = ticks / ((__OSBusClock >> 2) / 1000);
    u32 val;
    t = t / 1000;
    val = t;
    val -= bias;
    return CHANSVmSetInteger(VmInst, VmReturnObj, val) == CHANS_VM_OK;
}

VmCtorDefine(String) {
    CHANSVmPrivate* pVm = (CHANSVmPrivate*)VmInst;
    vmBoolInt ok;
    CHANSVmObjHdr* obj;

    if (pVm->unk_0x60->argc != 0) {
        obj = CHANSVmConvertObjectType(VmInst, CHANS_VM_OBJ_TYPE_STRING, CHANSVmGetArg(VmInst, 0));
        ok = false;
        if (obj && CHANSVmCopyObject(VmInst, VmReturnObj, obj)) {
            ok = true;
        }
        return ok;
    }
    obj = CHANSVmNewObject(VmInst, 0, VmReturnObj, CHANS_VM_OBJ_TYPE_STRING, 0);
    ok = !!obj;
    return ok;
}

VmMethodDefine(String, GetLength) {
    return CHANSVmSetInteger(VmInst, VmReturnObj, VmParentObj->value.string_v->len >> 1) == 0;
}

vmU16 CHANSVmGetSourceLine(CHANSVm* vm) {
    CHANSVmPrivate* pVm = (CHANSVmPrivate*)vm;
    CHANSVmUnk1* ctx;
    SrcDbg* dbg;
    u8 *base, *entry, *bits, *ptr;
    u32 pc, lineOffset, i, count;

    ctx = pVm->unk_0x60;
    if (!ctx)
        goto exit;

    dbg = ctx->unk_0x04;
    if (!dbg)
        goto exit;

    base = (u8*)dbg->entries;  // unk_44
    if (!base)
        goto exit;

    pc = ctx->unk_0x10;
    if (pc >= dbg->codesize)
        goto exit;

    // Locate block
    entry = base + ((pc >> 8) * 0x24);

    // First 4 bytes = base line
    lineOffset = *(u32*)entry;

    // Bitfield starts at +4
    bits = entry + 4;

    i = 0;
    count = (u8)pc + 1;

    while (count--) {
        if (bits[i >> 3] & (0x80 >> (i & 7))) {
            lineOffset += 2;
        }
        i++;
    }

    // Compute final pointer
    ptr = base + lineOffset;

    // Bounds check
    if (ptr + 1 < ((u8*)dbg + dbg->codesize)) {
        return (ptr[1]) | (ptr[0] << 8);
    }

exit:
    return 0;
}

CHANSVmObjHdr CHANSVmConstStringObjectUndefined = {
    {0},  // value union
    0,    // typeAndFlag
    0     // parentCls
};

CHANSVmObjHdr* CHANSVmConvertToStrFromUndefined(CHANSVm* vm, int type, CHANSVmObjHdr* object) {
    return &CHANSVmConstStringObjectUndefined;
}

u8* CHANSVmStrCpyToU8FromU16(u8* dest, const u8* src, u32 len) {
    u32 i;
    u8* out = dest;

    for (i = 0; i < len; i++) {
        if (src[i * 2] != 0)
            return NULL;

        *out = src[i * 2 + 1];
        out++;
    }

    return dest;
}

const char lbl_81694FA7[] = "Blob";

typedef struct BlobHeader {
    volatile u32 offset; // 0x00
    u32 size;   // 0x04
    u8* pData;  // 0x08
} BlobHeader;

static void VmBlobInitValue(BlobHeader* blob, u32 size) {
    if (blob == NULL)
        return;

    blob->offset = 0;
    blob->size = size;
    blob->pData = (u8*)(blob + 1);
}

// VmBlob method implementations

static CHANSVmObjHdr* VmBlobCreateDirect(CHANSVm* vm, CHANSVmObjHdr* obj, u32 size);
static u8* VmBlobGetDataBufferDirect(CHANSVmObjHdr* obj);
static vmBoolInt VmBlobPackCommon(CHANSVm* VmInst, CHANSVmObjHdr* VmParentObj, CHANSVmObjHdr* VmReturnObj, vmU32 flag);
static CHANSVmObjHdr* VmBlobCreateDirect(CHANSVm* vm, CHANSVmObjHdr* obj, u32 size);

BOOL CHANSVm_81450D14(BlobHeader* blob, s64 val, u32* out);
u32 CHANSVm_81451314(BlobHeader* blob, u32 ptr, u32 limit);
BOOL CHANSVm_81451348(BlobHeader* blob, s64 size);
CHANSVmObjHdr* CHANSVmNewBlobObject(CHANSVm* VmInst, CHANSVmObjHdr* obj, u32 size, void* src, u32 count);
CHANSVmObjHdr* CHANSVmGetArrayElement(CHANSVm* vm, CHANSVmObjHdr* array, u32 index);
u32 CHANSVmGetArrayLength(CHANSVm* vm, CHANSVmObjHdr* array);

VmCtorDefine(Blob) {
    CHANSVmObjHdr* arg;
    CHANSVmObjHdr* obj;
    u32 size;
    BlobHeader* blob;

    arg = CHANSVmGetArg(VmInst, 0);
    obj = CHANSVmConvertObjectType(VmInst, CHANS_VM_OBJ_TYPE_INTEGER, arg);
    size = 0;
    if (obj != NULL) {
        s64 val = obj->value.int_v;
        if (val != 0) {
            size = (u32)val;
        }
    }

    if (size == 0)
        return FALSE;

    blob = (BlobHeader*)CHANSVmNewObjData(VmInst, VmReturnObj, size + 0x0C);
    if (blob == NULL)
        return FALSE;

    VmBlobInitValue(blob, size);
    return TRUE;
}

VmDtorDefine(Blob) {
    VmGetStrFromObjHdr(VmParentObj);
    return TRUE;
}

VmMethodDefine(Blob, GetOffset) {
    BlobHeader* blob;

    blob = (BlobHeader*)VmGetStrFromObjHdr(VmParentObj);
    if (blob != NULL) {
        return CHANSVmSetInteger(VmInst, VmReturnObj, blob->offset) == 0;
    }

    return FALSE;
}

VmMethodDefine(Blob, GetLength) {
    BlobHeader* blob;

    blob = (BlobHeader*)VmGetStrFromObjHdr(VmParentObj);
    if (blob != NULL) {
        return CHANSVmSetInteger(VmInst, VmReturnObj, blob->size) == 0;
    }

    return FALSE;
}

VmMethodDefine(Blob, Create) {
    return VmBlobPackCommon(VmInst, VmParentObj, VmReturnObj, 1);
}

VmMethodDefine(Blob, Pack) {
    return VmBlobPackCommon(VmInst, VmParentObj, VmReturnObj, 0);
}

VmMethodDefine(Blob, Seek) {
    BlobHeader* blob;
    CHANSVmObjHdr* arg;
    CHANSVmObjHdr* val;
    u32 tmp;

    blob = (BlobHeader*)VmGetStrFromObjHdr(VmParentObj);
    arg = CHANSVmGetArg(VmInst, 0);
    val = CHANSVmConvertObjectType(VmInst, 1, arg);

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
    BlobHeader* blob;
    CHANSVmObjHdr* arg;
    CHANSVmObjHdr* val;
    u32 offset;
    s64 newOff;

    blob = (BlobHeader*)VmGetStrFromObjHdr(VmParentObj);
    arg = CHANSVmGetArg(VmInst, 0);
    val = CHANSVmConvertObjectType(VmInst, 1, arg);

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

VmMethodDefine(Blob, SetLength) {
    BlobHeader* blob;
    CHANSVmObjHdr* arg;
    CHANSVmObjHdr* val;
    u32 newSize;
    int intVal;

    blob = (BlobHeader*)VmGetStrFromObjHdr(VmParentObj);
    arg = CHANSVmGetArg(VmInst, 0);
    val = CHANSVmConvertObjectType(VmInst, 1, arg);

    if (blob == NULL || val == NULL) {
        return 0;
    }

    newSize = (u32)val->value.int_v;
    if (newSize > blob->size) {
        goto _fail_size;
    }

    if (CHANSVmCheckNativeInstance(VmParentObj, lbl_81694FA7)) {
        blob = (BlobHeader*)VmGetStrFromObjHdr(VmParentObj);
    } else {
        blob = NULL;
    }

    intVal = VmGetIntFromObjHdr(VmParentObj);
    if (blob == NULL) {
        return 0;
    }

    if ((s32)newSize > intVal - 0x0C) {
        goto _fail_bounds;
    }

    blob->size = newSize;
    if (newSize < blob->offset) {
        blob->offset = newSize;
    }

    return 1;

_fail_bounds:
    return 0;

_fail_size:
    return 0;
}

VmMethodDefine(Blob, Fill) {
    BlobHeader* blob;
    CHANSVmObjHdr* val;
    CHANSVmObjHdr* fill;
    u32 count;

    blob = (BlobHeader*)VmGetStrFromObjHdr(VmParentObj);
    val = CHANSVmConvertObjectType(VmInst, 1, CHANSVmGetArg(VmInst, 0));
    fill = CHANSVmConvertObjectType(VmInst, 1, CHANSVmGetArg(VmInst, 1));

    if (blob == NULL || val == NULL) {
        return 0;
    }

    count = (blob != NULL) ? CHANSVm_81451314(blob, (u32)fill, blob->offset) : 0;

    if (CHANSVm_81451348(blob, count)) {
        u8 fillByte = (u8)val->value.int_v;
        memset(blob->pData + blob->offset, fillByte, count);
        blob->offset += count;
        return 1;
    }

    return 0;
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
    if (blob == NULL) return 0;

    if ((s64)(blob->size - blob->offset) < 2) goto fail;

    memcpy(&val, blob->pData + blob->offset, 2);
    blob->offset += 2;
    return CHANSVmSetInteger(VmInst, VmReturnObj, (vmInteger)(u64)val) == 0;

fail:
    return 0;
}

VmMethodDefine(Blob, GetU32) {
    BlobHeader* blob = (BlobHeader*)VmGetStrFromObjHdr(VmParentObj);
    u32 val;
    if (blob == NULL) return 0;

    if ((s64)(blob->size - blob->offset) < 4) goto fail;

    memcpy(&val, blob->pData + blob->offset, 4);
    blob->offset += 4;
    return CHANSVmSetInteger(VmInst, VmReturnObj, (vmInteger)(u64)val) == 0;

fail:
    return 0;
}

VmMethodDefine(Blob, GetS8) {
    BlobHeader* blob = (BlobHeader*)VmGetStrFromObjHdr(VmParentObj);
    s8 val;
    if (blob == NULL) return 0;

    if ((s64)(blob->size - blob->offset) < 1) goto fail;

    memcpy(&val, blob->pData + blob->offset, 1);
    blob->offset += 1;
    return CHANSVmSetInteger(VmInst, VmReturnObj, (vmInteger)val) == 0;

fail:
    return 0;
}

VmMethodDefine(Blob, GetS16) {
    BlobHeader* blob = (BlobHeader*)VmGetStrFromObjHdr(VmParentObj);
    s16 val;
    if (blob == NULL) return 0;

    if ((s64)(blob->size - blob->offset) < 2) goto fail;

    memcpy(&val, blob->pData + blob->offset, 2);
    blob->offset += 2;
    return CHANSVmSetInteger(VmInst, VmReturnObj, (vmInteger)val) == 0;

fail:
    return 0;
}

VmMethodDefine(Blob, GetS32) {
    BlobHeader* blob = (BlobHeader*)VmGetStrFromObjHdr(VmParentObj);
    s32 val;
    if (blob == NULL) return 0;

    if ((s64)(blob->size - blob->offset) < 4) goto fail;

    memcpy(&val, blob->pData + blob->offset, 4);
    blob->offset += 4;
    return CHANSVmSetInteger(VmInst, VmReturnObj, (vmInteger)val) == 0;

fail:
    return 0;
}

VmMethodDefine(Blob, GetS64) {
    BlobHeader* blob = (BlobHeader*)VmGetStrFromObjHdr(VmParentObj);
    s64 val;
    if (blob == NULL) return 0;

    if ((s64)(blob->size - blob->offset) < 8) goto fail;

    memcpy(&val, blob->pData + blob->offset, 8);
    blob->offset += 8;
    return CHANSVmSetInteger(VmInst, VmReturnObj, val) == 0;

fail:
    return 0;
}

VmMethodDefine(Blob, SetU8) {
    BlobHeader* blob = (BlobHeader*)VmGetStrFromObjHdr(VmParentObj);
    CHANSVmObjHdr* arg = CHANSVmConvertObjectType(VmInst, CHANS_VM_OBJ_TYPE_INTEGER, CHANSVmGetArg(VmInst, 0));
    u8 val;

    val = 0;
    if (blob == NULL || arg == NULL) return 0;

    if ((s64)(blob->size - blob->offset) < 1) goto fail;

    val = (u8)arg->value.int_v;
    memcpy(blob->pData + blob->offset, &val, 1);
    blob->offset += 1;
    return 1;

fail:
    return 0;
}

VmMethodDefine(Blob, SetU16) {
    BlobHeader* blob = (BlobHeader*)VmGetStrFromObjHdr(VmParentObj);
    CHANSVmObjHdr* arg = CHANSVmConvertObjectType(VmInst, CHANS_VM_OBJ_TYPE_INTEGER, CHANSVmGetArg(VmInst, 0));
    u16 val;

    val = 0;
    if (blob == NULL || arg == NULL) return 0;

    if ((s64)(blob->size - blob->offset) < 2) goto fail;

    val = (u16)arg->value.int_v;
    memcpy(blob->pData + blob->offset, &val, 2);
    blob->offset += 2;
    return 1;

fail:
    return 0;
}

VmMethodDefine(Blob, SetU32) {
    BlobHeader* blob = (BlobHeader*)VmGetStrFromObjHdr(VmParentObj);
    CHANSVmObjHdr* arg = CHANSVmConvertObjectType(VmInst, CHANS_VM_OBJ_TYPE_INTEGER, CHANSVmGetArg(VmInst, 0));
    u32 val;

    val = 0;
    if (blob == NULL || arg == NULL) return 0;

    if ((s64)(blob->size - blob->offset) < 4) goto fail;

    val = (u32)arg->value.int_v;
    memcpy(blob->pData + blob->offset, &val, 4);
    blob->offset += 4;
    return 1;

fail:
    return 0;
}

VmMethodDefine(Blob, SetS8) {
    BlobHeader* blob = (BlobHeader*)VmGetStrFromObjHdr(VmParentObj);
    CHANSVmObjHdr* arg = CHANSVmConvertObjectType(VmInst, CHANS_VM_OBJ_TYPE_INTEGER, CHANSVmGetArg(VmInst, 0));
    s8 val;

    val = 0;
    if (blob == NULL || arg == NULL) return 0;

    if ((s64)(blob->size - blob->offset) < 1) goto fail;

    val = (s8)arg->value.int_v;
    memcpy(blob->pData + blob->offset, &val, 1);
    blob->offset += 1;
    return 1;

fail:
    return 0;
}

VmMethodDefine(Blob, SetS16) {
    BlobHeader* blob = (BlobHeader*)VmGetStrFromObjHdr(VmParentObj);
    CHANSVmObjHdr* arg = CHANSVmConvertObjectType(VmInst, CHANS_VM_OBJ_TYPE_INTEGER, CHANSVmGetArg(VmInst, 0));
    s16 val;

    val = 0;
    if (blob == NULL || arg == NULL) return 0;

    if ((s64)(blob->size - blob->offset) < 2) goto fail;

    val = (s16)arg->value.int_v;
    memcpy(blob->pData + blob->offset, &val, 2);
    blob->offset += 2;
    return 1;

fail:
    return 0;
}

VmMethodDefine(Blob, SetS32) {
    BlobHeader* blob = (BlobHeader*)VmGetStrFromObjHdr(VmParentObj);
    CHANSVmObjHdr* arg = CHANSVmConvertObjectType(VmInst, CHANS_VM_OBJ_TYPE_INTEGER, CHANSVmGetArg(VmInst, 0));
    s32 val;

    val = 0;
    if (blob == NULL || arg == NULL) return 0;

    if ((s64)(blob->size - blob->offset) < 4) goto fail;

    val = (s32)arg->value.int_v;
    memcpy(blob->pData + blob->offset, &val, 4);
    blob->offset += 4;
    return 1;

fail:
    return 0;
}

VmMethodDefine(Blob, SetS64) {
    BlobHeader* blob = (BlobHeader*)VmGetStrFromObjHdr(VmParentObj);
    CHANSVmObjHdr* arg = CHANSVmConvertObjectType(VmInst, CHANS_VM_OBJ_TYPE_INTEGER, CHANSVmGetArg(VmInst, 0));
    s64 val;

    val = 0;
    if (blob == NULL || arg == NULL) return 0;

    if ((s64)(blob->size - blob->offset) < 8) goto fail;

    val = arg->value.int_v;
    memcpy(blob->pData + blob->offset, &val, 8);
    blob->offset += 8;
    return 1;

fail:
    return 0;
}

VmMethodDefine(Blob, GetString) {
    BlobHeader* blob = (BlobHeader*)VmGetStrFromObjHdr(VmParentObj);
    CHANSVmObjHdr* arg = CHANSVmConvertObjectType(VmInst, CHANS_VM_OBJ_TYPE_INTEGER, CHANSVmGetArg(VmInst, 0));
    u32 size;

    if (blob == NULL)
        goto fail1;

    if (arg != NULL)
        goto body;

fail1:
    return 0;

body:
    size = (u32)arg->value.int_v;
    if (!CHANSVm_81451348(blob, size))
        goto fail2;

    {
        CHANSVmErr err = CHANSVmSetU16StringFromU8(VmInst, VmReturnObj, (char*)(blob->pData + blob->offset), size);
        blob->offset += size;
        return err == CHANS_VM_OK;
    }

fail2:
    return 0;
}

VmMethodDefine(Blob, SetString) {
    BlobHeader* blob = (BlobHeader*)VmGetStrFromObjHdr(VmParentObj);
    CHANSVmObjHdr* strObj = CHANSVmConvertObjectType(VmInst, CHANS_VM_OBJ_TYPE_STRING, CHANSVmGetArg(VmInst, 0));
    u8* strData = (u8*)VmGetStrFromObjHdr(strObj);
    u32 charCount = (u32)VmGetIntFromObjHdr(strObj) >> 1;
    CHANSVmObjHdr* sizeArg = CHANSVmConvertObjectType(VmInst, CHANS_VM_OBJ_TYPE_INTEGER, CHANSVmGetArg(VmInst, 1));
    u32 size;

    if (blob == NULL || strObj == NULL || strData == NULL)
        return 0;

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

    if (blob == NULL)
        goto return0;

    if (arg != NULL)
        goto body;

return0:
    return 0;

body:
    if (CHANSVm_81451348(blob, arg->value.int_v << 1)) {
        CHANSVmErr err = CHANSVmSetU16String(VmInst, VmReturnObj, (wchar_t*)(blob->pData + blob->offset), (u32)arg->value.int_v << 1);
        blob->offset += arg->value.int_v << 1;
        return err == CHANS_VM_OK;
    }

    return 0;
}

VmMethodDefine(Blob, SetWString) {
    BlobHeader* blob = (BlobHeader*)VmGetStrFromObjHdr(VmParentObj);
    CHANSVmObjHdr* strObj;
    u32 strLen;
    u8* strData;
    u32 size;
    CHANSVmObjHdr* sizeArg;

    strObj = CHANSVmConvertObjectType(VmInst, CHANS_VM_OBJ_TYPE_STRING, CHANSVmGetArg(VmInst, 0));
    strData = (u8*)VmGetStrFromObjHdr(strObj);
    strLen = (u32)VmGetIntFromObjHdr(strObj);
    sizeArg = CHANSVmConvertObjectType(VmInst, CHANS_VM_OBJ_TYPE_INTEGER, CHANSVmGetArg(VmInst, 1));

    if (blob == NULL || strObj == NULL || strData == NULL)
        return 0;

    if (sizeArg == NULL) {
        size = strLen;
    } else {
        s64 count = sizeArg->value.int_v;
        s64 shifted = count << 1;

        if (count < 0 || shifted < 0) {
            return 0;
        }
        size = (u32)shifted;
        if (shifted < (s64)strLen) {
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

    if (CHANSVmCheckNativeInstance(arg, lbl_81694FA7)) {
        other = (BlobHeader*)VmGetStrFromObjHdr(arg);
    } else {
        other = NULL;
    }

    if (blob == NULL || other == NULL)
        return 0;

    {
        BOOL result = FALSE;

        if (blob->size == other->size) {
            if (memcmp(blob->pData, other->pData, blob->size) == 0) {
                result = TRUE;
            }
        }

        return CHANSVmSetInteger(VmInst, VmReturnObj, (vmInteger)result) == CHANS_VM_OK;
    }
}

VmMethodDefine(Blob, CopyRangeFrom) {
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

    if (CHANSVmCheckNativeInstance(srcObj, lbl_81694FA7)) {
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

    if ((s64)(count = CHANSVm_81451314(srcBlob, (u32)countObj, srcOff)) > (s64)okFlag) {
        u32 available = destBlob->size - destOff;
        if ((s64)available > (s64)count) {
            okFlag = TRUE;
        }
    }

    if (okFlag) {
        BOOL okFlag2 = FALSE;
        if ((s64)count > (s64)okFlag2) {
            u32 available = srcBlob->size - srcOff;
            if ((s64)available > (s64)count) {
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

extern const char* lbl_816976E4;
extern u32 lbl_816976E8;

VmMethodDefine(Blob, GetBlob) {
    BlobHeader* blob = (BlobHeader*)VmGetStrFromObjHdr(VmParentObj);
    CHANSVmObjHdr* arg = CHANSVmConvertObjectType(VmInst, CHANS_VM_OBJ_TYPE_INTEGER, CHANSVmGetArg(VmInst, 0));
    u32 count;

    if (blob == NULL) return 0;

    count = (blob != NULL) ? CHANSVm_81451314(blob, (u32)arg, blob->offset) : 0;

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
    CHANSVmObjHdr* srcObj = CHANSVmGetArg(VmInst, 0);
    CHANSVmObjHdr* countObj = CHANSVmConvertObjectType(VmInst, CHANS_VM_OBJ_TYPE_INTEGER, CHANSVmGetArg(VmInst, 1));
    u32 logicalSize;
    u32 copySize;

    if (CHANSVmCheckNativeInstance(srcObj, lbl_81694FA7)) {
        srcObj = (CHANSVmObjHdr*)VmGetStrFromObjHdr(srcObj);
    } else {
        srcObj = NULL;
    }

    if (destBlob == NULL || srcObj == NULL) return 0;
    if (srcObj == NULL) return 0;

    {
        u32 srcAvailable = ((BlobHeader*)srcObj)->size - ((BlobHeader*)srcObj)->offset;

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
    }

    if (CHANSVm_81451348(destBlob, logicalSize)) {
        memmove(destBlob->offset + destBlob->pData, ((BlobHeader*)srcObj)->offset + ((BlobHeader*)srcObj)->pData, copySize);
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

    if (blob == NULL) return 0;

    if (arg != NULL) {
        count = CHANSVm_81451314(blob, (u32)arg, blob->offset);
    } else {
        count = 0;
    }

    if (CHANSVm_81451348(blob, count)) {
        if (CHANSVmNewObject(VmInst, 0, VmReturnObj, CHANS_VM_OBJ_TYPE_STRING, count * 4) != NULL) {
            wchar_t* dest = (wchar_t*)VmGetStrFromObjHdr(VmReturnObj);
            u32 off = blob->offset;
            u8* pData = blob->pData;
            u32 destOff = 0;
            u32 i = 0;
            const char* hexTbl = lbl_816976E4;
            u8* src;
            u32 idx2;
            u32 loop_i;

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
    }

    return 0;
}

VmMethodDefine(Blob, CalcCRC16) {
    BlobHeader* blob = (BlobHeader*)VmGetStrFromObjHdr(VmParentObj);

    if (blob == NULL) {
        return 0;
    }

    {
        u16 crc = NETCalcCRC16((void*)blob->pData, blob->size);
        return CHANSVmSetInteger(VmInst, VmReturnObj, (vmInteger)(u64)crc) == 0;
    }
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
        size = CHANSVm_81451314(blob, (u32)arg1, offset);
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

    if (blob == NULL) {
        return 0;
    }

    {
        u32 crc = NETCalcCRC32((void*)blob->pData, blob->size);
        return CHANSVmSetInteger(VmInst, VmReturnObj, (vmInteger)(u64)crc) == 0;
    }
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
        size = CHANSVm_81451314(blob, (u32)arg1, offset);
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
    NETSHA1Update(&ctx, (void*)data, len);
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
        size = CHANSVm_81451314(blob, (u32)arg1, offset);

        {
            u32 off = offset;
            if (((s64)size >= 0LL && (s64)(blob->size - off) >= (s64)size) != FALSE)
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
    NETMD5Update(&ctx, (void*)data, len);
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
        size = CHANSVm_81451314(blob, (u32)arg1, offset);

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

    if (CHANSVmCheckNativeInstance(arg0, lbl_81694FA7)) {
        keyBlob = (BlobHeader*)VmGetStrFromObjHdr(arg0);
    } else {
        keyBlob = NULL;
    }

    if (blob == NULL || keyBlob == NULL)
        return 0;

    newObj = VmBlobCreateDirect(VmInst, VmReturnObj, 20);
    digest = VmBlobGetDataBufferDirect(newObj);

    if (newObj == NULL || digest == NULL)
        return 0;

    blobSize = blob->size;
    blobData = blob->pData;

    {
        const void* interface = NETGetSHA1Interface();
        NETHMACInit(&ctx, interface, keyBlob->pData, keyBlob->size);
        NETHMACUpdate(&ctx, blobData, blobSize);
        NETHMACGetDigest(&ctx, digest);
    }

    return 1;
}

VmMethodDefine(Blob, CalcRangeHMAC) {
    BlobHeader* blob = (BlobHeader*)VmGetStrFromObjHdr(VmParentObj);
    CHANSVmObjHdr* argKey = CHANSVmGetArg(VmInst, 0);
    BlobHeader* keyBlob;
    CHANSVmObjHdr* arg0 = CHANSVmConvertObjectType(VmInst, CHANS_VM_OBJ_TYPE_INTEGER, CHANSVmGetArg(VmInst, 1));
    CHANSVmObjHdr* arg1 = CHANSVmConvertObjectType(VmInst, CHANS_VM_OBJ_TYPE_INTEGER, CHANSVmGetArg(VmInst, 2));

    if (CHANSVmCheckNativeInstance(argKey, lbl_81694FA7)) {
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
            size = CHANSVm_81451314(blob, (u32)arg1, offset);
            off = offset;
            if (((s64)size >= 0LL && (s64)(blob->size - off) >= (s64)size) != FALSE) {
                NETHMACContext ctx;
                u8* digest;
                CHANSVmObjHdr* newObj;
                u8* blobData;
                const void* interface;
                u8* keyData;
                u32 keyLen;

                newObj = VmBlobCreateDirect(VmInst, VmReturnObj, 20);
                digest = VmBlobGetDataBufferDirect(newObj);

                if (keyBlob == NULL || newObj == NULL || digest == NULL) {
                    return 0;
                }

                blobData = blob->pData + offset;
                interface = NETGetSHA1Interface();
                keyData = keyBlob->pData;
                keyLen = keyBlob->size;
                NETHMACInit(&ctx, (void*)interface, (void*)keyData, keyLen);
                NETHMACUpdate(&ctx, blobData, size);
                NETHMACGetDigest(&ctx, digest);
                return 1;
            }
        }
        return 0;
    }
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
        if (CHANSVmCheckNativeInstance(obj, lbl_81694FA7)) {
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

#pragma push
#pragma auto_inline off
static CHANSVmObjHdr* VmBlobCreateDirect(CHANSVm* vm, CHANSVmObjHdr* obj, u32 size) {
    CHANSVmNativeClass* cls;

    if (obj != NULL) {
        if (CHANSVmDeleteObject(vm, obj)) {
            return NULL;
        }
    }

    obj = CHANSVmNewObject(vm, 0, obj, CHANS_VM_TYPE_POINTER, size + 0x0C);
    if (obj == NULL) {
        goto ret_null;
    }

    cls = CHANSVmFindNativeClass(vm, lbl_81694FA7);
    obj->parentCls = cls;

    if (cls == NULL) {
        ret_null:
        return NULL;
    }

    VmBlobInitValue((BlobHeader*)VmGetStrFromObjHdr(obj), size);
    return obj;
}
#pragma pop

static u8* VmBlobGetDataBufferDirect(CHANSVmObjHdr* obj) {
    BlobHeader* blob;

    if (CHANSVmCheckNativeInstance(obj, lbl_81694FA7)) {
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
    u32 size;
    u32 result;

    if (blob == NULL) {
        return FALSE;
    }

    size = blob->size;

    if (val >= 0) {
        if (val <= (s64)size) {
            if (out != NULL) {
                *out = (u32)val;
            }
            return TRUE;
        }
    }

    if (val <= -(s64)(u32)size) {
        return FALSE;
    }

    if (val >= 0) {
        return FALSE;
    }

    result = size + (u32)val;

    if (out != NULL) {
        *out = result;
    }
    return TRUE;
}

u32 CHANSVm_81451314(BlobHeader* blob, u32 ptr, u32 limit) {
    u32 size;

    if (ptr != 0) {
        return *(u32*)(ptr + 4);
    }

    if (blob != 0) {
        size = blob->size;
        if (size >= limit) {
            return size - limit;
        }
    }

    return 0;
}

BOOL CHANSVm_81451348(BlobHeader* blob, s64 size) {
    u32 curOff = blob->offset;
    return (size >= 0) && ((s64)(blob->size - curOff) >= size);
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
static u64 CHANSVm_814540E0(u32 low, u32 high)
{
    u32 a;
    u32 b;
    u32 c;
    u32 d;
    u32 e;
    u32 f;

    a = low << 24;
    b = low << 8;

    c = high >> 8;
    d = high << 8;

    b = (b & 0xFFFFFF00) | (high >> 24);
    a = (a & 0xFF00FFFF) | (high << 24);

    e = c & 0x0000FF00;
    f = d & 0x00FF0000;

    c = low >> 24;
    d = low >> 8;

    e |= c;
    f |= d;

    return ((u64)(a | f) << 32) | (b | e);
}
static u32 vmBlobParsePackFormatString(u32* out_nextPos, u32* out_elemSize, u32* out_elemType, u32* out_paramValue, const wchar_t* fmtStr, u32 fmtLen, u32 curPos) {
    u32 elemSize;
    u32 elemType;
    u32 flags;
    u32 paramValue;
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
                    do {
                        u32 c2 = fmtStr[curPos];
                        if (c2 == L'\r' || c2 == L'\n')
                            break;
                        curPos++;
                    } while (--cnt != 0);
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
    u32 copySize;
    u32 dataSize;
    u32 srcOff;
    CHANSVmObjHdr* strObj;
    const u8* srcData;
    u32 charCount;
    u32 strLen;
    CHANSVmObjHdr* intObj;
    u32 valLow;
    u32 valHigh;
    u32 bufSize;
    u8* dest;
    u32 ch;
    u32 nibble;
    CHANSVmUnk1* unk1;
    u32 nextPos1;
    u32 elemSize1;
    u32 elemType1;
    u32 paramValue1;
    u32 nextPos2;
    u32 elemSize2;
    u32 elemType2;
    u32 paramValue2;
    u32 packBuf[2];
    u32* pPackBuf;

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
            if (CHANSVmCheckNativeInstance(obj, lbl_81694FA7)) {
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
            unk1 = ((CHANSVmPrivate*)VmInst)->unk_0x60;
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
        if (CHANSVmCheckNativeInstance(VmReturnObj, lbl_81694FA7)) {
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
    pPackBuf = packBuf;

    while (1) {
        nextPos2 = 0;
        elemSize2 = 0;
        elemType2 = 1;
        paramValue2 = 1;
        fmtPos = vmBlobParsePackFormatString(&nextPos2, &elemSize2, &elemType2, &paramValue2, fmtStr, fmtLen, fmtPos);
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
        if (CHANSVmCheckNativeInstance(obj, lbl_81694FA7)) {
            srcBlob = (BlobHeader*)VmGetStrFromObjHdr(obj);
        } else {
            srcBlob = NULL;
        }
        argCount++;
        if (srcBlob == NULL)
            goto fail;
        if ((s32)paramValue2 < 0) {
            copySize = srcBlob->size - srcBlob->offset;
        } else {
            copySize = paramValue2;
        }
        if ((s32)copySize < 0)
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
        if ((s32)paramValue2 < 0)
            goto fail;
        if (!CHANSVm_81451348(destBlob, paramValue2))
            goto fail;
        if (paramValue2 > 0)
            memset(destBlob->pData + destBlob->offset, 0, paramValue2);
        destBlob->offset += paramValue2;
        goto second_loop_bottom;

    second_case6_9:
        if ((s32)paramValue2 >= 0) {
            count = paramValue2;
            goto L_c69_got_count;
        }
        if (argArr != NULL) {
            count = CHANSVmGetArrayLength(VmInst, argArr) - argCount;
        } else {
            unk1 = ((CHANSVmPrivate*)VmInst)->unk_0x60;
            count = unk1->argc - argCount - 1;
        }
    L_c69_got_count:
        if ((s32)count < 0)
            goto fail;
        if (!CHANSVm_81451348(destBlob, elemType2 * count))
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
            if (elemSize2 == 8) {
                goto L_c69_swap_path;
            }
            if ((s32)elemSize2 > 8) {
                if ((s32)elemSize2 >= 10)
                    goto fail;
                goto L_c69_direct_path;
            }
            if (elemSize2 == 6) {
                goto L_c69_swap_path;
            }
            goto L_c69_direct_path;
        L_c69_swap_path:
            if (elemType2 == 1) {
                *(u8*)packBuf = (u8)valLow;
            } else if (elemType2 == 2) {
                *(u16*)packBuf = (u16)valLow;
            } else if (elemType2 == 4) {
                *(u32*)packBuf = valLow;
            } else if (elemType2 == 8) {
                *((u32*)packBuf + 1) = valHigh;
                *(u32*)packBuf = valLow;
            }
            goto L_c69_after_store;
        L_c69_direct_path:
            if (elemType2 == 1) {
                *(u8*)packBuf = (u8)valLow;
            } else if (elemType2 == 2) {
                *(u16*)packBuf = (u16)valLow;
            } else if (elemType2 == 4) {
                *(u32*)packBuf = valLow;
            }
        L_c69_after_store:
            if ((s32)elemSize2 >= 8) {
                if (elemType2 == 2) {
                    u16 tmp = *(u16*)packBuf;
                    *(u16*)pPackBuf = (tmp >> 8) | (tmp << 8);
                } else if (elemType2 == 4) {
                    u32 tmp = *(u32*)packBuf;
                    *(u32*)pPackBuf = ((tmp >> 24) & 0xFF) | ((tmp >> 8) & 0xFF00) | ((tmp << 8) & 0xFF0000) | (tmp << 24);
                } else if (elemType2 == 8) {
                    u64 val = CHANSVm_814540E0(*(u32*)packBuf, *((u32*)packBuf + 1));
                    *(u32*)packBuf = (u32)val;
                    *((u32*)packBuf + 1) = (u32)(val >> 32);
                }
            }
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
        if ((s32)paramValue2 < 0) {
            count = (u32)strObj->value.int32_v->val >> 1;
        } else {
            count = paramValue2;
        }
        if ((s32)count < 0)
            goto fail;
        if (!CHANSVm_81451348(destBlob, elemType2 * count))
            goto fail;
        srcData = (const u8*)VmGetStrFromObjHdr(strObj);
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
        if ((s32)paramValue2 < 0) {
            count = (u32)strObj->value.int32_v->val >> 1;
        } else {
            count = paramValue2;
        }
        if ((s32)count < 0)
            goto fail;
        bufSize = (count + 1) / 2;
        if (!CHANSVm_81451348(destBlob, bufSize))
            goto fail;
        srcData = (const u8*)VmGetStrFromObjHdr(strObj);
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

VmMethodDefine(Blob, Unpack) {
    BlobHeader* srcBlob;
    wchar_t* fmtStr;
    u32 fmtLen;
    u32 blobOff;
    u32 argCount;
    u32 fmtPos;
    u32 count;
    u32 c0;
    u32 c1;
    u32 buf_area[2];
    {
    CHANSVmObjHdr* argStr;
    srcBlob = (BlobHeader*)VmGetStrFromObjHdr(VmParentObj);
    argStr = CHANSVmConvertObjectType(VmInst, CHANS_VM_OBJ_TYPE_STRING, CHANSVmGetArg(VmInst, 0));
    fmtStr = (wchar_t*)VmGetStrFromObjHdr(argStr);
    fmtLen = (u32)VmGetIntFromObjHdr(argStr) >> 1;
    }

    if (srcBlob == NULL || fmtStr == NULL)
        return 0;

    c0 = 0;
    c1 = 1;
    blobOff = srcBlob->offset;
    argCount = 0;
    fmtPos = 0;

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

    {
    u32 elemIdx = 0;
    u32 outPos;
    s32 outType = 1;
    u32 outSize = 0;
    s32 outVal = 1;
    goto second_loop;

second_loop:
    outType = 1;
    outSize = 0;
    outVal = 1;
    fmtPos = vmBlobParsePackFormatString((u32*)&outPos, (u32*)&outSize, (u32*)&outType, (u32*)&outVal, fmtStr, fmtLen, fmtPos);

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

    if (!CHANSVm_81451348(srcBlob, count))
        goto fail;

    dataPtr = srcBlob->pData + srcBlob->offset;
    arrElem = CHANSVmGetArrayElement(VmInst, VmReturnObj, elemIdx);
    elemIdx++;
    if (arrElem == NULL)
        goto fail;

    if (CHANSVmNewBlobObject(VmInst, arrElem, count, dataPtr, count) == NULL)
        goto fail;

    srcBlob->offset += count;
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
    u32 iterIdx;
    s32 valHigh;
    count = outVal;
    if ((s32)count < 0) {
        s32 remaining = (s32)(srcBlob->size - srcBlob->offset);
        if (remaining < 0)
            goto fail;
        if (outType == 0)
            goto fail;
        count = (u32)remaining / outType;
    }
    if ((s32)count < 0)
        goto fail;

    if (!CHANSVm_81451348(srcBlob, outType * count))
        goto fail;

    for (iterIdx = 0; iterIdx < count; iterIdx++) {
        buf_area[0] = c0;
        buf_area[1] = c0;
        memcpy(buf_area, srcBlob->pData + srcBlob->offset, outType);

        if ((s32)outSize < 8)
            goto byte_swap_done;
        if ((s32)outSize >= 10)
            goto byte_swap_done;
        if (outType == 4)
            goto byte_swap_32;
        if ((s32)outType >= 4)
            goto byte_swap_chk_64;
        if (outType == 2)
            goto byte_swap_16;
        goto byte_swap_done;
    byte_swap_chk_64:
        if (outType != 8)
            goto byte_swap_done;
        {
            u64 tmpVal = CHANSVm_814540E0(buf_area[0], buf_area[1]);
            buf_area[0] = (u32)tmpVal;
            buf_area[1] = (u32)(tmpVal >> 32);
        }
        goto byte_swap_done;
    byte_swap_32:
        {
            u32 tmp = buf_area[0];
            buf_area[0] = ((tmp >> 24) & 0xFF) | ((tmp >> 8) & 0xFF00) | ((tmp << 8) & 0xFF0000) | (tmp << 24);
        }
        goto byte_swap_done;
    byte_swap_16:
        {
            u16 tmp = *(u16*)buf_area;
            *(u16*)buf_area = (tmp >> 8) | (tmp << 8);
        }
        goto byte_swap_done;
    byte_swap_done:

        arrElem = CHANSVmGetArrayElement(VmInst, VmReturnObj, elemIdx);
        if (arrElem == NULL)
            goto fail;

        if ((s32)outSize == 8 || (s32)outSize == 6) {
            u32 setVal;
            if (outType == 1)
                setVal = (s32)(s8)*(u8*)buf_area;
            else if (outType == 2)
                setVal = (s32)(s16)*(u16*)buf_area;
            else if (outType == 4)
                setVal = *(s32*)buf_area;
            else {
                setVal = buf_area[0];
                valHigh = buf_area[1];
                if (CHANSVmSetInteger(VmInst, arrElem, (vmInteger)(((u64)valHigh << 32) | setVal)) != CHANS_VM_OK)
                    goto fail;
                srcBlob->offset += outType;
                elemIdx++;
                continue;
            }
            if (CHANSVmSetInteger(VmInst, arrElem, (vmInteger)((u64)(s64)setVal)) != CHANS_VM_OK)
                goto fail;
        } else {
            u32 setVal;
            if (outType == 1)
                setVal = *(u8*)buf_area;
            else if (outType == 2)
                setVal = *(u16*)buf_area;
            else if (outType == 4)
                setVal = buf_area[0];
            else {
                setVal = buf_area[0];
                valHigh = buf_area[1];
                if (CHANSVmSetInteger(VmInst, arrElem, (vmInteger)(((u64)valHigh << 32) | setVal)) != CHANS_VM_OK)
                    goto fail;
                srcBlob->offset += outType;
                elemIdx++;
                continue;
            }
            if (CHANSVmSetInteger(VmInst, arrElem, (vmInteger)((u64)setVal)) != CHANS_VM_OK)
                goto fail;
        }

        srcBlob->offset += outType;
        elemIdx++;
    }
    goto second_loop;
}

second_string_array: {
    CHANSVmObjHdr* arrElem;
    u8* srcPtr;
    count = outVal;
    if ((s32)count < 0) {
        s32 remaining = (s32)(srcBlob->size - srcBlob->offset);
        if (remaining < 0)
            goto fail;
        if (outType == 0)
            goto fail;
        count = (u32)remaining / outType;
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
            i = 0;
            while (1) {
                if (remaining == 0)
                    break;
                remaining--;
                if (((strData[0] << 8) | strData[1]) != 0) {
                    strData += 2;
                    i++;
                } else {
                    break;
                }
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
    count = outVal;
    if ((s32)count < 0) {
        s32 remaining = (s32)(srcBlob->size - srcBlob->offset);
        if (remaining < 0)
            goto fail;
        count = (u32)remaining * 2;
    }
    if ((s32)count < 0)
        goto fail;

    {
        u32 bufSize = (s32)(count + 1) / 2;
        if (!CHANSVm_81451348(srcBlob, bufSize))
            goto fail;
    }

    srcData = srcBlob->pData + srcBlob->offset;
    arrElem = CHANSVmGetArrayElement(VmInst, VmReturnObj, elemIdx);
    elemIdx++;
    if (arrElem == NULL)
        goto fail;

    if (CHANSVmNewObject(VmInst, 0, arrElem, CHANS_VM_OBJ_TYPE_STRING, count * 2 + 2) == NULL)
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

    srcBlob->offset += (count + 1) / 2;
    goto second_loop;

second_success:
    return 1;
    }
    }

    return 1;

fail:
    return 0;
}
