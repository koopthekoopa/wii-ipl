#include "channelScript/CHANSVm.h"
#include "channelScript/CHANSVmPrivate.h"

#include <stdio.h>
#include <string.h>
#include <stdarg.h>

#include <math.h>
#include <stdlib.h>

#include <revolution.h>

#define CHANSVmDebugLength  1024

typedef struct CHANSVmUnk0 {
    vmPtr   unk_0x00;
    vmU32   unk_0x04;
    vmU32   unk_0x08;
    vmU32   unk_0x0C;
} CHANSVmUnk0;

CHANSVmImageCtorCallback        VmImageCtorCallback = vmNull;
CHANSVmImageAllocatorCallback   VmImageAllocCallback = vmNull;

BOOL CHANSVmDebugVerboseMode = vmFalse;

#define VM_STR_LENGTH(str)  (str * sizeof(vmWChar))

#define VM_ALIGNMENT    DEFAULT_ALIGN
#define VM_ALIGNED(x)   ((x & (VM_ALIGNMENT-1)) == 0)
#define VM_ALIGN(x)     ROUNDUP(x, VM_ALIGNMENT)

#define VM_NAN          ((0.0f / 0.0f))

void CHANSVmDebugPrintf(const vmString format, ...) {
    va_list args;
    char str[CHANSVmDebugLength];
    
    va_start(args, format);
    vsnprintf(str, CHANSVmDebugLength - 2, format, args);
    va_end(args);

    str[CHANSVmDebugLength - 1] = str[CHANSVmDebugLength - 2] = 0;

    OSReport("%s", str);
}

#define CHANS_VM_PRINTF(line, msg, ...)     if (CHANSVmDebugVerboseMode) CHANSVmDebugPrintf("%s %d"msg, __FUNCTION__, line, __VA_ARGS__)
#define CHANS_VM_PRINT (line, msg, ...)     if (CHANSVmDebugVerboseMode) CHANSVmDebugPrintf("%s %d"msg, __FUNCTION__, line)

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
                }
                else {
                    *prevPtr = *ptr;
                }
            }
            else {
                ptr[1] = uVar1;
                if (prevPtr == vmNull) {
                    pVm->unk_0x3C = (vmU32*)((vmU32)allocBuf + size);
                    *(vmU32*)((vmU32)allocBuf + size) = *ptr;
                    pVm->unk_0x3C[1] = ptr[1];
                }
                else {
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
            }
            else {
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
                }
                else {
                    if (unk->unk_0x0C != 0) {
                        val = unk->unk_0x0C - 1;
                        unk->unk_0x0C = val;
                    }
                    else {
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
            goto fuck;
        }
        outObj = CHANSVmNewObjHdr(vm, 0);
        if (outObj != vmNull) {
fuck:
            memcpy(outObj, inObj, sizeof(CHANSVmObjHdr));

            outObj->flags.raw = outObj->flags.reserved;
            if (outObj->unk_0x0A != 0) {
                CHANSVmUnk0* unk = (CHANSVmUnk0*)outObj->value.ptr_v;
                int val;

                if (unk->unk_0x08 == 0) {
                    val = 1;
                }
                else {
                    if (unk->unk_0x0C < -1) {
                        val = unk->unk_0x0C + 1;
                        unk->unk_0x0C = val;
                    }
                    else {
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
            }
            else {
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
        outChar--; *outChar = *--input;
        outChar--; *outChar = 0;
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
            type = CHANS_VM_TYPE_UNK4;
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
VmConvertEntry VmTypeConvertFuncTbl[] = {
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

u16 CHANSVmGetArgc(CHANSVm* vm) {
    CHANSVmPrivate* pVm = (CHANSVmPrivate*)vm;

    return pVm->unk_0x60->argc;
}

CHANSVmObjHdr* CHANSVmGetArg(CHANSVm* vm, vmU32 argIdx) {
    CHANSVmPrivate* pVm = (CHANSVmPrivate*)vm;

    if (argIdx >= pVm->unk_0x60->argc) {
        return vmNull;
    }

    return (CHANSVmObjHdr*)pVm->unk_0x60->argv + ((pVm->unk_0x60->argc-1)-argIdx);
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

CHANSVmNativeClass* CHANSVmFindNativeClass(CHANSVm* vm, const vmString clsName) {
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

CHANSVmNativeClass* CHANSVmAddNativeClass2(CHANSVm* vm, const vmString clsName, CHANSVmFunction clsCtor, CHANSVmFunction clsDtor, CHANSVmFunction clsInit) {
    CHANSVmPrivate* pVm = (CHANSVmPrivate*)vm;

    CHANSVmNativeClass* cls;
    vmS32 clsNameLen;

    if (CHANSVmFindNativeClass(vm, clsName) == vmNull) {
        clsNameLen = strlen(clsName);
        if (clsNameLen != 0) {
            cls = (CHANSVmNativeClass*)CHANSVmAlloc(vm, (clsNameLen + sizeof(CHANSVmNativeClass)-1) & -32);
            if (cls != vmNull) {
                CHANSVmNativeClass* next = pVm->nativeClasses;
                CHANSVmNativeClass* prev;

                if (pVm->nativeClasses == vmNull) {
                    pVm->nativeClasses = cls;
                }
                else {
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

CHANSVmNativeClass* CHANSVmAddNativeClass(CHANSVm* vm, const vmString clsName, CHANSVmFunction clsCtor, CHANSVmFunction clsDtor) {
    return CHANSVmAddNativeClass2(vm, clsName, clsCtor, clsDtor, vmNull);
}

VmMethodDefine(Math, E) {
    return CHANSVmSetFloat(vm, vmOutObj, M_E) == CHANS_VM_OK;
}
VmMethodDefine(Math, LN10) {
    return CHANSVmSetFloat(vm, vmOutObj, M_LN10) == CHANS_VM_OK;
}
VmMethodDefine(Math, LN2) {
    return CHANSVmSetFloat(vm, vmOutObj, M_LN2) == CHANS_VM_OK;
}
VmMethodDefine(Math, LOG2E) {
    return CHANSVmSetFloat(vm, vmOutObj, M_LOG2E) == CHANS_VM_OK;
}
VmMethodDefine(Math, LOG10E) {
    return CHANSVmSetFloat(vm, vmOutObj, M_LOG10E) == CHANS_VM_OK;
}
VmMethodDefine(Math, PI) {
    return CHANSVmSetFloat(vm, vmOutObj, M_PI) == CHANS_VM_OK;
}
VmMethodDefine(Math, SQRT1_2) {
    return CHANSVmSetFloat(vm, vmOutObj, M_SQRT1_2) == CHANS_VM_OK;
}
VmMethodDefine(Math, SQRT2) {
    return CHANSVmSetFloat(vm, vmOutObj, M_SQRT2) == CHANS_VM_OK;
}
VmMethodDefine(Math, abs) {
    CHANSVmObjHdr* arg = CHANSVmGetArgFloat(vm, 0);
    vmBoolInt result = arg != vmNull;
    if (result) {
        result = CHANSVmSetFloat(vm, vmOutObj, fabs(arg->value.float_v)) == CHANS_VM_OK;
    }
    return result;
}
VmMethodDefine(Math, acos) {
    CHANSVmObjHdr* arg = CHANSVmGetArgFloat(vm, 0);
    if (arg != vmNull) {
        vmFloat val = arg->value.float_v;
        vmFloat newVal;

        if (-1.0 <= val && val <= 1.0) {
            newVal = acos(val);
        }
        else {
            newVal = VM_NAN;
        }
        return CHANSVmSetFloat(vm, vmOutObj, newVal) == CHANS_VM_OK;
    }
    else {
        return vmFalse;
    }
}
VmMethodDefine(Math, asin) {
    CHANSVmObjHdr* arg = CHANSVmGetArgFloat(vm, 0);
    if (arg != vmNull) {
        vmFloat val = arg->value.float_v;
        vmFloat newVal;

        if (-1.0 <= val && val <= 1.0) {
            newVal = asin(val);
        }
        else {
            newVal = VM_NAN;
        }
        return CHANSVmSetFloat(vm, vmOutObj, newVal) == CHANS_VM_OK;
    }
    else {
        return vmFalse;
    }
}
VmMethodDefine(Math, atan) {
    CHANSVmObjHdr* arg = CHANSVmGetArgFloat(vm, 0);
    vmBool result = vmFalse;
    if (arg != vmNull) {
        if (CHANSVmSetFloat(vm, vmOutObj, atan(arg->value.float_v)) == CHANS_VM_OK) {
            result = vmTrue;
        }
    }
    return result;
}
VmMethodDefine(Math, atan2) {
    CHANSVmObjHdr* arg0 = CHANSVmGetArgFloat(vm, 0);
    CHANSVmObjHdr* arg1 = CHANSVmGetArgFloat(vm, 1);
    vmBool result = vmFalse;
    if (arg0 != vmNull && arg1 != vmNull) {
        if (CHANSVmSetFloat(vm, vmOutObj, atan2(arg0->value.float_v, arg1->value.float_v)) == CHANS_VM_OK) {
            result = vmTrue;
        }
    }
    return result;
}
VmMethodDefine(Math, ceil) {
    CHANSVmObjHdr* arg = CHANSVmGetArgFloat(vm, 0);
    vmBool result = vmFalse;
    if (arg != vmNull) {
        if (CHANSVmSetFloat(vm, vmOutObj, ceil(arg->value.float_v)) == CHANS_VM_OK) {
            result = vmTrue;
        }
    }
    return result;
}
VmMethodDefine(Math, cos) {
    CHANSVmObjHdr* arg = CHANSVmGetArgFloat(vm, 0);
    vmBool result = vmFalse;
    if (arg != vmNull) {
        if (CHANSVmSetFloat(vm, vmOutObj, cos(arg->value.float_v)) == CHANS_VM_OK) {
            result = vmTrue;
        }
    }
    return result;
}
VmMethodDefine(Math, exp) {
    CHANSVmObjHdr* arg = CHANSVmGetArgFloat(vm, 0);
    vmBool result = vmFalse;
    if (arg != vmNull) {
        if (CHANSVmSetFloat(vm, vmOutObj, exp(arg->value.float_v)) == CHANS_VM_OK) {
            result = vmTrue;
        }
    }
    return result;
}
VmMethodDefine(Math, floor) {
    CHANSVmObjHdr* arg = CHANSVmGetArgFloat(vm, 0);
    vmBool result = vmFalse;
    if (arg != vmNull) {
        if (CHANSVmSetFloat(vm, vmOutObj, floor(arg->value.float_v)) == CHANS_VM_OK) {
            result = vmTrue;
        }
    }
    return result;
}
VmMethodDefine(Math, log) {
    CHANSVmObjHdr* arg = CHANSVmGetArgFloat(vm, 0);
    vmBool result = vmFalse;
    if (arg != vmNull) {
        if (CHANSVmSetFloat(vm, vmOutObj, log(arg->value.float_v)) == CHANS_VM_OK) {
            result = vmTrue;
        }
    }
    return result;
}
inline VmMethodDefine(Math, fmax) {
    CHANSVmObjHdr* arg0 = CHANSVmGetArgFloat(vm, 0);
    CHANSVmObjHdr* arg1 = CHANSVmGetArgFloat(vm, 1);
    vmBool result = vmFalse;
    if (arg0 != vmNull && arg1 != vmNull) {
        if (CHANSVmSetFloat(vm, vmOutObj, fmax(arg0->value.float_v, arg1->value.float_v)) == CHANS_VM_OK) {
            result = vmTrue;
        }
    }
    return result;
}
VmMethodDefine(Math, max) {
    CHANSVmObjHdr* arg0 = CHANSVmGetArg(vm, 0);
    CHANSVmObjHdr* arg1 = CHANSVmGetArg(vm, 1);
    vmBool result = vmFalse;
    if (arg0 != vmNull && arg1 != vmNull) {
        if (arg0->type == arg1->type && arg0->type == CHANS_VM_OBJ_TYPE_INTEGER) {
            if (arg0->value.int_v < arg1->value.int_v) {
                arg0 = arg1;
            }

            return CHANSVmSetInteger(vm, vmOutObj, arg0->value.int_v) == CHANS_VM_OK;
        }
        else {
            return (VmMethod(Math, fmax))(vm, vmInObj, vmOutObj);
        }
    }
    else {
        return vmFalse;
    }
}
inline VmMethodDefine(Math, fmin) {
    CHANSVmObjHdr* arg0 = CHANSVmGetArgFloat(vm, 0);
    CHANSVmObjHdr* arg1 = CHANSVmGetArgFloat(vm, 1);
    vmBool result = vmFalse;
    if (arg0 != vmNull && arg1 != vmNull) {
        if (CHANSVmSetFloat(vm, vmOutObj, fmin(arg0->value.float_v, arg1->value.float_v)) == CHANS_VM_OK) {
            result = vmTrue;
        }
    }
    return result;
}
VmMethodDefine(Math, min) {
    CHANSVmObjHdr* arg0 = CHANSVmGetArg(vm, 0);
    CHANSVmObjHdr* arg1 = CHANSVmGetArg(vm, 1);
    vmBool result = vmFalse;
    if (arg0 != vmNull && arg1 != vmNull) {
        if (arg0->type == arg1->type && arg0->type == CHANS_VM_OBJ_TYPE_INTEGER) {
            if (arg0->value.int_v > arg1->value.int_v) {
                arg0 = arg1;
            }

            return CHANSVmSetInteger(vm, vmOutObj, arg0->value.int_v) == CHANS_VM_OK;
        }
        else {
            return (VmMethod(Math, fmin))(vm, vmInObj, vmOutObj);
        }
    }
    else {
        return vmFalse;
    }
}
VmMethodDefine(Math, pow) {
    CHANSVmObjHdr* arg0 = CHANSVmGetArgFloat(vm, 0);
    CHANSVmObjHdr* arg1 = CHANSVmGetArgFloat(vm, 1);
    vmBool result = vmFalse;
    if (arg0 != vmNull && arg1 != vmNull) {
        if (CHANSVmSetFloat(vm, vmOutObj, pow(arg0->value.float_v, arg1->value.float_v)) == CHANS_VM_OK) {
            result = vmTrue;
        }
    }
    return result;
}
VmMethodDefine(Math, random) {
    return CHANSVmSetFloat(vm, vmOutObj, rand() / 32767.0) == CHANS_VM_OK;
}
VmMethodDefine(Math, round) {
    CHANSVmObjHdr* arg = CHANSVmGetArgFloat(vm, 0);
    if (arg != vmNull) {
        vmFloat val = arg->value.float_v;
        vmFloat newVal;

        if (val > 0.0) {
            newVal = floor(val + 0.5);
        }
        else {
            newVal = ceil(val - 0.5);
        }
        return CHANSVmSetFloat(vm, vmOutObj, newVal) == CHANS_VM_OK;
    }
    else {
        return vmFalse;
    }
}
VmMethodDefine(Math, sin) {
    CHANSVmObjHdr* arg = CHANSVmGetArgFloat(vm, 0);
    vmBool result = vmFalse;
    if (arg != vmNull) {
        if (CHANSVmSetFloat(vm, vmOutObj, sin(arg->value.float_v)) == CHANS_VM_OK) {
            result = vmTrue;
        }
    }
    return result;
}
VmMethodDefine(Math, sqrt) {
    CHANSVmObjHdr* arg = CHANSVmGetArgFloat(vm, 0);
    if (arg != vmNull) {
        vmFloat val = arg->value.float_v;
        vmFloat newVal;

        if (arg->value.float_v < 0.0) {
            newVal = VM_NAN;
        }
        else {
            newVal = sqrt(val);
        }
        return CHANSVmSetFloat(vm, vmOutObj, newVal) == CHANS_VM_OK;
    }
    else {
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
    CHANSVmObjHdr* arg = CHANSVmGetArgFloat(vm, 0);
    vmBool result = vmFalse;
    if (arg != vmNull) {
        if (CHANSVmSetFloat(vm, vmOutObj, tan(arg->value.float_v)) == CHANS_VM_OK) {
            result = vmTrue;
        }
    }
    return result;
}

vmInteger32 VmGetIntFromObjHdr(CHANSVmObjHdr* object) {
    if (object != vmNull) {
        if (object->value.int32) {
            return object->value.int32->v;
        }
    }
    return 0;
}

void CHANSVmImageRegisterAllocator(CHANSVmImageAllocatorCallback allocCb, CHANSVmImageCtorCallback ctorCb) {
    VmImageAllocCallback = allocCb;
    VmImageCtorCallback = ctorCb;
}

VmMethodDefine(Image, Width) {
    CHANSVmImage* image = (CHANSVmImage*)*vmInObj->value.ptr_v;
    return CHANSVmSetInteger(vm, vmOutObj, image->width) == CHANS_VM_OK;
}
VmMethodDefine(Image, Height) {
    CHANSVmImage* image = (CHANSVmImage*)*vmInObj->value.ptr_v;
    return CHANSVmSetInteger(vm, vmOutObj, image->height) == CHANS_VM_OK;
}
VmMethodDefine(Image, Format) {
    CHANSVmImage* image = (CHANSVmImage*)*vmInObj->value.ptr_v;
    return CHANSVmSetInteger(vm, vmOutObj, image->format) == CHANS_VM_OK;
}

VmCtorDefine(Image) {
    vmBoolInt result = vmFalse;

    CHANSVmImage* image = (CHANSVmImage*)*vmInObj->value.ptr_v;
    if (VmImageCtorCallback != vmNull) {
        if (image->unk_0x00 != 0 && image->unk_0x04 != 0) {
            result = VmImageCtorCallback();
        }
    }
    else {
        result = vmFalse;
    }

    return result;
}

vmPtr CHANSVmGetFreeExeBufp(CHANSVm* vm) {
    CHANSVmPrivate* pVm = (CHANSVmPrivate*)vm;

    if (pVm->unk_0x4C != 0 || pVm->freeExeBuf >= pVm->unk_0x2C) {
        return vmNull;
    }
    else {
        return pVm->freeExeBuf;
    }
}

vmU32 CHANSVmGetFreeExeSize(CHANSVm* vm) {
    CHANSVmPrivate* pVm = (CHANSVmPrivate*)vm;

    vmS32 size = (vmU32)pVm->unk_0x2C - (vmU32)pVm->freeExeBuf;
    if (pVm->unk_0x4C != 0 || size < 0) {
        return 0;
    }
    else {
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
