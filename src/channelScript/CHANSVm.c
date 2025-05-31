#include "channelScript/CHANSVm.h"
#include "channelScript/CHANSVm/CHANSVmInternal.h"

#include <stdio.h>
#include <string.h>
#include <stdarg.h>

#include <revolution.h>

#define CHANSVmDebugLength  1024

#define AS_STR(x)   #x
static CHANSVmStr8 errorsMap[] = {
    AS_STR(CHANS_VM_ERR_NO_1000),
    AS_STR(CHANS_VM_ERR_EXIT),
    AS_STR(CHANS_VM_ERR_NO_MEMORY),
    AS_STR(CHANS_VM_ERR_INVALID_EXE_FORMAT),
    AS_STR(CHANS_VM_ERR_ARG),
    AS_STR(CHANS_VM_ERR_CODE_RANGE),
    AS_STR(CHANS_VM_ERR_HEAP_RANGE),
    AS_STR(CHANS_VM_ERR_OBJECT_NOT_FOUND),
    AS_STR(CHANS_VM_ERR_ALIGNMENT),
    AS_STR(CHANS_VM_ERR_RESULT_TYPE),
    AS_STR(CHANS_VM_ERR_TOO_MANY_DEFINED),
    AS_STR(CHANS_VM_ERR_ALREADY_DEFINED),
    AS_STR(CHANS_VM_ERR_LINK_FAILED),
    AS_STR(CHANS_VM_ERR_IN_METHOD_OR_PROPERTY),
    AS_STR(CHANS_VM_ERR_NATIVE_METHOD_INIT),
    AS_STR(CHANS_VM_ERR_LOAD_OBJECT),
    AS_STR(CHANS_VM_ERR_STORE_OBJECT),
    AS_STR(CHANS_VM_ERR_DIVISION_BY_ZERO),
    AS_STR(CHANS_VM_ERR_DELETE_OBJECT),
    AS_STR(CHANS_VM_ERR_DELETE_OBJHDR),
    AS_STR(CHANS_VM_ERR_DELETE_OBJDATA),
    AS_STR(CHANS_VM_ERR_POP_OBJECT),
    AS_STR(CHANS_VM_ERR_STR_U8_TO_U16),
    AS_STR(CHANS_VM_ERR_SET_INTEGER),
    AS_STR(CHANS_VM_ERR_SET_FLOAT),
    AS_STR(CHANS_VM_ERR_ADD),
    AS_STR(CHANS_VM_ERR_SUB),
    AS_STR(CHANS_VM_ERR_MUL),
    AS_STR(CHANS_VM_ERR_DIV),
    AS_STR(CHANS_VM_ERR_MOD),
    AS_STR(CHANS_VM_ERR_ULSHIFT),
    AS_STR(CHANS_VM_ERR_ARSHIFT),
    AS_STR(CHANS_VM_ERR_BIT_AND),
    AS_STR(CHANS_VM_ERR_BIT_OR),
    AS_STR(CHANS_VM_ERR_BIT_XOR),
    AS_STR(CHANS_VM_ERR_CMP),
    AS_STR(CHANS_VM_ERR_ADD_NATIVE_METHOD),
    AS_STR(CHANS_VM_ERR_SET_LOCAL_FUNCTION),
    AS_STR(CHANS_VM_ERR_PUSH_FUNC_RETURN_INFO),
    AS_STR(CHANS_VM_ERR_LOAD_IMM),
    AS_STR(CHANS_VM_ERR_LOAD_CONST),
    AS_STR(CHANS_VM_ERR_RETURN),
    AS_STR(CHANS_VM_ERR_STRCAT),
    AS_STR(CHANS_VM_ERR_SET_OBJECT_NATIVE_CLASS),
    AS_STR(CHANS_VM_ERR_RESOLVE_NATIVE_METHOD_CALL),
    AS_STR(CHANS_VM_ERR_RESOLVE_GLOBAL_OBJECT_REFERENCE),
    AS_STR(CHANS_VM_ERR_NEW),
    AS_STR(CHANS_VM_ERR_ADD_NATIVE_PROPERTY),
    AS_STR(CHANS_VM_ERR_GET_BOOLEAN),
    AS_STR(CHANS_VM_ERR_CASE),
    AS_STR(CHANS_VM_ERR_CHECK_STRICT_EQUALITY),
    AS_STR(CHANS_VM_ERR_ADD_REFERENCE),
    AS_STR(CHANS_VM_ERR_LOAD_INDIRECT),
    AS_STR(CHANS_VM_ERR_CALL_METHOD),
    AS_STR(CHANS_VM_ERR_STORE_INDIRECT),
    AS_STR(CHANS_VM_ERR_LOAD_STRING_CONST),
    AS_STR(CHANS_VM_ERR_SIGNAL),
    AS_STR(CHANS_VM_ERR_STORE_READONLY),
    AS_STR(CHANS_VM_ERR_SET_INDEX),
    AS_STR(CHANS_VM_ERR_GET_PROPERTY_NAME),
    AS_STR(CHANS_VM_ERR_SET_STRING),
    AS_STR(CHANS_VM_ERR_CALL_NEW_ARRAY),
    AS_STR(CHANS_VM_ERR_OPCODE_VERSION),
    AS_STR(CHANS_VM_ERR_NOT_SUPPORTED_FLOAT),
    AS_STR(CHANS_VM_ERR_NOT_CONSTRUCTOR),
    AS_STR(CHANS_VM_ERR_DELETE_INDIRECT),
    AS_STR(CHANS_VM_ERR_FORBIDDEN_CLASS_PROPERTY),
    AS_STR(CHANS_VM_ERR_FORBIDDEN_CLASS_METHOD),
    AS_STR(CHANS_VM_ERR_NEED_NEW),
    AS_STR(CHANS_VM_ERR_INVALID_OBJECT),
    AS_STR(CHANS_VM_ERR_INVALID_OBJECT_TYPE),
    AS_STR(CHANS_VM_ERR_NO_SUCH_PROPERTY),
    AS_STR(CHANS_VM_ERR_NO_SUCH_METHOD),
    AS_STR(CHANS_VM_ERR_NOT_READABLE_PROPERTY),
    AS_STR(CHANS_VM_ERR_NOT_WRITABLE_PROPERTY),
    AS_STR(CHANS_VM_ERR_INVALID_EXE_TYPE),
    AS_STR(CHANS_VM_ERR_NO_SUCH_FUNCTION),
    AS_STR(CHANS_VM_ERR_RESERVED_OPCODE),
};
#undef AS_STR

BOOL CHANSVmDebugVerboseMode = FALSE;

void CHANSVmDebugPrintf(const CHANSVmStr8 format, ...) {
    va_list args;
    char str[CHANSVmDebugLength];
    
    va_start(args, format);
    vsnprintf(str, CHANSVmDebugLength - 2, format, args);
    va_end(args);

    str[CHANSVmDebugLength - 1] = str[CHANSVmDebugLength - 2] = 0;

    OSReport("%s", str);
}

void CHANSVmStrCpyToU16FromU8(CHANSVmStr16 output, CHANSVmStr8 input, CHANSVmSize length) {
    int i;
    int outLength = length << 1;

    for (i = length; i != 0; i--) {
        CHANSVmStr8Ch* outChar = (CHANSVmStr8Ch*)(output + outLength);
        outLength -= 2;
        outChar--; *outChar = *--input;
        outChar--; *outChar = 0;
    }
}

static inline int VmToStrFromInt(CHANSVmStr16 output, CHANSVmSize length, CHANSVmInt integer) {
    int len = snprintf((CHANSVmStr8)output, length, "%lld", integer);
    CHANSVmStrCpyToU16FromU8(output, (CHANSVmStr8)output, len);
    return len;
}

CHANSVmObjHdr* CHANSVmConvertToStrFromInt(CHANSVm*vm, CHANSVmObjType type, CHANSVmObjHdr* object) {
    CHANSVmObjHdr* newObject = CHANSVmNewObject(vm, 0, NULL, CHANS_VM_OBJ_TYPE_STRING, CHANSVmStr16Length(64));
    if (newObject) {
        int len = VmToStrFromInt(*newObject->value.wstring_v.str, 64, object->value.int_v);

        *newObject->value.wstring_v.len = CHANSVmStr16Length(len);
        if (*newObject->value.wstring_v.len == 0) {
            return NULL;
        }
    }
    return newObject;
}

static CHANSVmBool VmGetEnumedType(CHANSVmObjType* eType, int iType) NO_INLINE {
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

CHANSVmErr CHANSVmSetInteger(CHANSVm* vm, CHANSVmObjHdr* object, CHANSVmInt val) {
    CHANSVmErr ret = CHANSVmDeleteObject(vm, object);
    if (ret == CHANS_VM_OK) {
        object->type = CHANS_VM_OBJ_TYPE_INTEGER;
        object->value.int_v = val;
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

CHANSVmErr CHANSVmSetU16String(CHANSVm* vm, CHANSVmObjHdr* object, CHANSVmStr16 str, CHANSVmSize strLen) {
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

CHANSVmErr CHANSVmSetU16StringFromU8(CHANSVm* vm, CHANSVmObjHdr* object, CHANSVmStr8 str, CHANSVmSize strLen) {
    CHANSVmErr ret = CHANSVmDeleteObject(vm, object);
    if (ret == CHANS_VM_OK) {
        // Set up object with `CHANSVmNewObject` so it allocates needed memory size for the string.
        if (CHANSVmNewObject(vm, 0, object, CHANS_VM_OBJ_TYPE_STRING, CHANSVmStr16Length(strLen)) == CHANSVmNull) {
            return CHANS_VM_ERR_SET_STRING;
        }
        
        if (strLen != 0) {
            CHANSVmStrCpyToU16FromU8(*object->value.wstring_v.str, str, strLen);
        }
    }
    return ret;
}

VmMethodDefine(Math, E) {
    return CHANSVmSetFloat(vm, out, 2.718282) == CHANS_VM_OK;
}
VmMethodDefine(Math, LN10) {
    return CHANSVmSetFloat(vm, out, 2.302585) == CHANS_VM_OK;
}
VmMethodDefine(Math, LBN2) {
    return CHANSVmSetFloat(vm, out, 0.6931472) == CHANS_VM_OK;
}
VmMethodDefine(Math, LOG2E) {
    return CHANSVmSetFloat(vm, out, 1.442695) == CHANS_VM_OK;
}
VmMethodDefine(Math, LOG10E) {
    return CHANSVmSetFloat(vm, out, 0.4342945) == CHANS_VM_OK;
}
VmMethodDefine(Math, PI) {
    return CHANSVmSetFloat(vm, out, 3.141593) == CHANS_VM_OK;
}
VmMethodDefine(Math, SQRT1_2) {
    return CHANSVmSetFloat(vm, out, 0.7071068) == CHANS_VM_OK;
}
VmMethodDefine(Math, SQRT2) {
    return CHANSVmSetFloat(vm, out, 1.414214) == CHANS_VM_OK;
}

CHANSVmStr8 VmGetStrFromObjHdr(CHANSVmObjHdr* object) {
    if (object != NULL) {
        CHANSVmStr8* out = object->value.string_v.str;
        if (out != NULL) {
            return *out;
        }
    }
    return NULL;
}
