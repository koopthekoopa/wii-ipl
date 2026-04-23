#include "channelScript/CHANSVm.h"
#include "channelScript/CHANSVmPrivate.h"

#include <stdarg.h>
#include <stdio.h>
#include <string.h>

#include <math.h>
#include <stdlib.h>

#include <revolution.h>
#include <revolution/net/NETMisc.h>

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
    vmU32* p4;
    if (((pVm->unk_0x20 <= pBuffer) && (pBuffer < (unsigned long*)pVm->freeExeBuf)) && (8 < size)) {
        memset(pBuffer, 0, size);
        pBuffer[1] = size;
        p2 = pVm->unk_0x3C;
        if (p2 == NULL) {
            pVm->unk_0x3C = pBuffer;
        } else if (pBuffer < p2) {
            pVm->unk_0x3C = pBuffer;
            if ((int)pBuffer + pBuffer[1] == (u32)p2) {
                pBuffer = p2;
                pBuffer[1] = pBuffer[1] + p2[1];
                memset(p2, 0, 8);
            } else {
                pBuffer = p2;
            }
        } else {
            do {
                p3 = p2;
                p2 = (u32*)*p3;
                if (p2 == NULL)
                    goto aa;
            } while (p2 <= pBuffer);
            if ((int)pBuffer + pBuffer[1] == (u32)p2) {
                pBuffer = p2;
                pBuffer[1] = pBuffer[1] + p2[1];
                memset((void*)*p3, 0, 8);
            } else {
                pBuffer = p2;
            }
        aa:
            if ((u32*)((int)p3 + p3[1]) == pBuffer) {
                p3 = 0;
                p3[1] = p3[1] + pBuffer[1];
                memset(pBuffer, 0, 8);
            } else {
                p3 = pBuffer;
            }
        }
        while (pVm->unk_0x3C != NULL) {
            p2 = 0;
            p3 = pVm->unk_0x3C;
            do {
                p4 = p3;
                p1 = p2;
                p2 = p4;
                p3 = (u32*)*p4;
            } while ((u32*)*p4 != NULL);
            if (pVm->freeExeBuf != (vmU8*)((int)p4 + p4[1])) {
                return;
            }
            memset(p4, 0, 8);
            pVm->freeExeBuf = (u8*)p4;
            if (p1 == NULL) {
                pVm->unk_0x3C = 0;
            } else {
                p1 = 0;
            }
        }
    }
    return;
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
    vmS32 outLength = length << 1;

    for (i = length; i != 0; i--) {
        vmChar* outChar = (vmChar*)(output + outLength);
        outLength -= 2;
        outChar--;
        *outChar = *--input;
        outChar--;
        *outChar = 0;
    }
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
                CHANSVmNativeClass* next = pVm->nativeClasses;
                CHANSVmNativeClass* prev;

                if (pVm->nativeClasses == vmNull) {
                    pVm->nativeClasses = cls;
                } else {
                    // Set the new class as the next class for the previous class
                    while (next != vmNull) {
                        prev = next;
                        next = prev->next;
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
        ret = CHANS_VM_ERR_OBJECT_NOT_FOUND;
    } else if (dest->flags.readonly == 0) {
        ret = CHANSVmDeleteObject(vm, dest);
        if ((ret == 0) && (CHANSVmCopyObject(vm, dest, src) == NULL))
            ret = CHANS_VM_ERR_STORE_OBJECT;
    } else {
        ret = CHANS_VM_ERR_STORE_READONLY;
    }
    return ret;
}

CHANSVmErr VmAdd(CHANSVm* vm, CHANSVmObjType type, CHANSVmObjHdr* ret, CHANSVmObjHdr* left, CHANSVmObjHdr* right) {
    CHANSVmErr err = CHANS_VM_ERR_ADD;
    CHANSVmObjHdr temp;

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
            CHANSVmObjHdr* obj;
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
            if (right->type < (temp < 0x40)) {
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
    u64 temp;
    u64 temp2;
    switch (type) {
        case CHANS_VM_OBJ_TYPE_INTEGER: {
            temp = right->value.int_v >> 32;
            if (right->type < (temp < 0x40)) {
                temp = left->value.int_v >> right->value.int_v;
            } else {
                temp2 = left->value.int_v >> 32 >> 0x1f;
                temp = temp2 >> 32 | temp2;
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
    u8 uVar1;
    bool bVar2;
    u32 uVar3;
    int iVar4;
    CHANSVmErr CVar5;
    vmPtr num;

    if (type == CHANS_VM_OBJ_TYPE_FLOAT) {
        uVar3 = ((unsigned int)(((left->value).float_v == (right->value).float_v) << 1) << 0x1c) >> 0x1d;
        goto endcmp;
    }
    if (type < CHANS_VM_OBJ_TYPE_FLOAT) {
        if (type != CHANS_VM_OBJ_TYPE_BLANK) {
            if (type < CHANS_VM_OBJ_TYPE_BLANK) {
                return CHANS_VM_ERR_CMP;
            }
            uVar3 = (left->value.int_v ^ right->value.int_v | left->value.int32_v->unk_0x00 ^ right->value.int32_v->unk_0x00) == 0;
            goto endcmp;
        }
        uVar1 = left->type;
        if (uVar1 == right->type) {
            if ((uVar1 == 7) || (uVar1 == 8))
                goto LAB_8144c27c;
            if (uVar1 == 9) {
                uVar3 = (right->value.ptr_v - (left->value.int_v >> 32)) == 0;
                goto endcmp;
            }
            if (uVar1 == 0) {
                uVar3 = 1;
                goto endcmp;
            }
        }
        uVar3 = 0;
    } else {
        if (type != CHANS_VM_TYPE_OBJECT) {
            if (type > CHANS_VM_OBJ_TYPE_STRING) {
                return CHANS_VM_ERR_CMP;
            }
            uVar3 = 0;
            num = (left->value).ptr_v[1];
            if (num == (right->value).ptr_v[1]) {
                bVar2 = false;
                if ((num == NULL) || (memcmp(*(left->value).ptr_v, *(right->value).ptr_v, (size_t)num) == 0)) {
                    bVar2 = true;
                }
                if (bVar2) {
                    uVar3 = 1;
                }
            }
            goto endcmp;
        }
    LAB_8144c27c:
        uVar3 = 0;
        if (((left->parentCls == right->parentCls) && (uVar1 = left->unk_0x0A, uVar1 == right->unk_0x0A)) &&
            ((uVar1 == '\0' || ((left->value).ptr_v == (right->value).ptr_v)))) {
            uVar3 = 1;
        }
    }
endcmp:
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
    bool result;
    CHANSVmErr err;
    u32 leftlen, rightlen, maxlen, match;
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
                maxlen = rightlen;
            if (maxlen == 0) {
                match = 0;
            } else {
                match = memcmp(left->value.ptr_v, right->value.ptr_v, maxlen);
                result = false;
                if (match < 0 || (match == 0 && leftlen < rightlen))
                    result = true;
            }
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
    bool result;
    CHANSVmErr err;
    u32 leftlen, rightlen, maxlen, match;
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
                maxlen = rightlen;
            if (maxlen == 0) {
                match = 0;
            } else {
                match = memcmp(left->value.ptr_v, right->value.ptr_v, maxlen);
                result = false;
                if (match < 0 || (match == 0 && leftlen <= rightlen)) {
                    result = true;
                }
            }
            break;
        }
        default: {
            return CHANS_VM_ERR_CMP;
        }
    }
    return CHANSVmSetInteger(vm, ret, result);
    ;
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

bool CHANS_8144E21(CHANSVm* vm, OSCalendarTime* out) {
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

vmPtr CHANSVmConstStringDataEmpty = "";

CHANSVmObjHdr* CHANSVmNewObject(CHANSVm* vm, vmS32 unk, CHANSVmObjHdr* object, CHANSVmObjType type, vmSize len) {
    vmPtr pvVar1;

    if (object == NULL) {
        object = CHANSVmNewObjHdr(vm, unk);
        if (object != NULL)
            goto LAB_8144ae24;
    } else {
        memset(object, 0, 0x10);
    LAB_8144ae24:
        if (len == 0) {
            if (type == 3) {
                (object->value).ptr_v = CHANSVmConstStringDataEmpty;
            }
        } else {
            pvVar1 = CHANSVmNewObjData(vm, object, len);
            if (pvVar1 == (vmPtr)0x0) {
                object = NULL;
                return object;
            }
        }
        object->type = (u8)type;
    }
    return object;
}

void CHANSVmNewStringObject(CHANSVm* vm, CHANSVmObjHdr* obj, vmSize len) {
    CHANSVmNewObject(vm, 0, obj, CHANS_VM_OBJ_TYPE_STRING, len);
    return;
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

bool VmDateGetDate(CHANSVm* param_1, CHANSVmObjHdr* param_2, CHANSVmObjHdr* param_3) {
    OSCalendarTime* cal = *(OSCalendarTime**)param_2->value.ptr_v;
    s32 temp = cal->mday;
    return CHANSVmSetInteger(param_1, param_3, temp >> 31) == 0;
}
