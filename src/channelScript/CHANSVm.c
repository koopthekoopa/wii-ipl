#include "channelScript/CHANSVm.h"
#include "channelScript/CHANSVm/CHANSVmInternal.h"

#include <decomp.h>

#include <stdio.h>
#include <string.h>
#include <stdarg.h>

#include <revolution.h>

BOOL CHANSVmDebugVerboseMode = FALSE;

#define CHANSVmDebugLength  1024

/************************/
/*         DEBUG        */
/************************/

void CHANSVmDebugPrintf(const CHANSVmStr format, ...) {
    va_list args;
    char str[CHANSVmDebugLength];
    
    va_start(args, format);
    vsnprintf(str, CHANSVmDebugLength - 2, format, args);
    va_end(args);

    str[CHANSVmDebugLength - 1] = str[CHANSVmDebugLength - 2] = 0;

    OSReport("%s", str);
}

/************************/
/*     STRING UTILS     */
/************************/

static void VmStrToU16FromU8(CHANSVmWStr output, CHANSVmStr input, CHANSVmSize length) NO_INLINE {
    CHANSVmInt i;
    CHANSVmInt outLength = length << 1;

    for (i = length; i != 0; i--) {
        CHANSVmStrCh* outChar = (CHANSVmStrCh*)(output + outLength);
        outLength -= 2;
        outChar--; *outChar = *--input;
        outChar--; *outChar = 0;
        
    }
}

/************************/
/*     OBJECT DATA      */
/************************/

static inline CHANSVmInt VmToStrFromIntCommon(CHANSVmWStr output, CHANSVmSize length, CHANSVmInt64 integer) {
    CHANSVmInt len = snprintf((CHANSVmStr)output, length, "%lld", integer);
    VmStrToU16FromU8(output, (CHANSVmStr)output, len);
    return len;
}

CHANSVmObjHdr* CHANSVmConvertToStrFromInt(CHANSVm*vm, CHANSVmObjType type, CHANSVmObjHdr* object) {
    CHANSVmObjHdr* newObject = CHANSVmNewObject(vm, 0, NULL, CHANS_VM_OBJ_TYPE_STRING, CHANSVmWStrLength(64));
    if (newObject) {
        CHANSVmInt len = VmToStrFromIntCommon(*newObject->value.wstring_v.str, 64, object->value.int64_v);

        *newObject->value.wstring_v.len = CHANSVmWStrLength(len);
        if (*newObject->value.wstring_v.len == 0) {
            return NULL;
        }
    }
    return newObject;
}

static CHANSVmBool VmGetEnumedType(CHANSVmObjType* eType, CHANSVmInt iType) NO_INLINE {
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
            return CHANSVmFalse;
        }
    }

    if (eType) {
        *eType = type;
    }
    return CHANSVmTrue;
}

CHANSVmErr CHANSVmSetInteger(CHANSVm* vm, CHANSVmObjHdr* object, CHANSVmInt hiVal, CHANSVmInt loVal) {
    CHANSVmErr ret = CHANSVmDeleteObject(vm, object);
    if (ret == CHANS_VM_OK) {
        object->type = CHANS_VM_OBJ_TYPE_INTEGER;
        object->value.int_v.lo = loVal;
        object->value.int_v.hi = hiVal;
    }
    return ret;
}

CHANSVmErr CHANSVmSetFloat(CHANSVm* vm, CHANSVmObjHdr* object, CHANSVmFloat value) {
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

CHANSVmErr CHANSVmSetU16String(CHANSVm* vm, CHANSVmObjHdr* object, CHANSVmWStr str, CHANSVmSize strLen) {
    CHANSVmErr ret = CHANSVmDeleteObject(vm, object);
    if (ret == CHANS_VM_OK) {
        // Set up object with `CHANSVmNewObject` so it allocates needed memory size for the string.
        if (CHANSVmNewObject(vm, 0, object, CHANS_VM_OBJ_TYPE_STRING, strLen) == CHANSVmNull) {
            return CHANS_VM_ERR_SET_STRING;
        }
        
        if (strLen != 0) {
            memcpy(*object->value.wstring_v.str, str, strLen);
        }
    }
    return ret;
}

CHANSVmErr CHANSVmSetU16StringFromU8(CHANSVm* vm, CHANSVmObjHdr* object, CHANSVmStr str, CHANSVmSize strLen) {
    CHANSVmErr ret = CHANSVmDeleteObject(vm, object);
    if (ret == CHANS_VM_OK) {
        // Set up object with `CHANSVmNewObject` so it allocates needed memory size for the string.
        if (CHANSVmNewObject(vm, 0, object, CHANS_VM_OBJ_TYPE_STRING, CHANSVmWStrLength(strLen)) == CHANSVmNull) {
            return CHANS_VM_ERR_SET_STRING;
        }
        
        if (strLen != 0) {
            VmStrToU16FromU8(*object->value.wstring_v.str, str, strLen);
        }
    }
    return ret;
}
