#ifndef CHANS_VM_ERROR_CODES_H
#define CHANS_VM_ERROR_CODES_H

typedef int CHANSVmErr;

enum {
    CHANS_VM_OK                                     = 0,

    CHANS_VM_ERR_NO_1000                            = -1000,    /* This code is not an error but is a starting point. */

    CHANS_VM_ERR_EXIT,                              /* -999 */
    CHANS_VM_ERR_NO_MEMORY,                         /* -998 */
    CHANS_VM_ERR_INVALID_EXE_FORMAT,                /* -997 */
    CHANS_VM_ERR_ARG,                               /* -996 */
    CHANS_VM_ERR_CODE_RANGE,                        /* -995 */
    CHANS_VM_ERR_HEAP_RANGE,                        /* -994 */
    CHANS_VM_ERR_OBJECT_NOT_FOUND,                  /* -993 */
    CHANS_VM_ERR_ALIGNMENT,                         /* -992 */
    CHANS_VM_ERR_RESULT_TYPE,                       /* -991 */
    CHANS_VM_ERR_TOO_MANY_DEFINED,                  /* -990 */
    CHANS_VM_ERR_ALREADY_DEFINED,                   /* -989 */
    CHANS_VM_ERR_LINK_FAILED,                       /* -988 */
    CHANS_VM_ERR_IN_METHOD_OR_PROPERTY,             /* -987 */
    CHANS_VM_ERR_NATIVE_METHOD_INIT,                /* -986 */
    CHANS_VM_ERR_LOAD_OBJECT,                       /* -985 */
    CHANS_VM_ERR_STORE_OBJECT,                      /* -984 */
    CHANS_VM_ERR_DIVISION_BY_ZERO,                  /* -983 */
    CHANS_VM_ERR_DELETE_OBJECT,                     /* -982 */
    CHANS_VM_ERR_DELETE_OBJHDR,                     /* -981 */
    CHANS_VM_ERR_DELETE_OBJDATA,                    /* -980 */
    CHANS_VM_ERR_POP_OBJECT,                        /* -979 */
    CHANS_VM_ERR_STR_U8_TO_U16,                     /* -978 */
    CHANS_VM_ERR_SET_INTEGER,                       /* -977 */
    CHANS_VM_ERR_SET_FLOAT,                         /* -976 */
    CHANS_VM_ERR_ADD,                               /* -975 */
    CHANS_VM_ERR_SUB,                               /* -974 */
    CHANS_VM_ERR_MUL,                               /* -973 */
    CHANS_VM_ERR_DIV,                               /* -972 */
    CHANS_VM_ERR_MOD,                               /* -971 */
    CHANS_VM_ERR_ULSHIFT,                           /* -970 */
    CHANS_VM_ERR_ARSHIFT,                           /* -969 */
    CHANS_VM_ERR_BIT_AND,                           /* -968 */
    CHANS_VM_ERR_BIT_OR,                            /* -967 */
    CHANS_VM_ERR_BIT_XOR,                           /* -966 */
    CHANS_VM_ERR_CMP,                               /* -965 */
    CHANS_VM_ERR_ADD_NATIVE_METHOD,                 /* -964 */
    CHANS_VM_ERR_SET_LOCAL_FUNCTION,                /* -963 */
    CHANS_VM_ERR_PUSH_FUNC_RETURN_INFO,             /* -962 */
    CHANS_VM_ERR_LOAD_IMM,                          /* -961 */
    CHANS_VM_ERR_LOAD_CONST,                        /* -960 */
    CHANS_VM_ERR_RETURN,                            /* -959 */
    CHANS_VM_ERR_STRCAT,                            /* -958 */
    CHANS_VM_ERR_SET_OBJECT_NATIVE_CLASS,           /* -957 */
    CHANS_VM_ERR_RESOLVE_NATIVE_METHOD_CALL,        /* -956 */
    CHANS_VM_ERR_RESOLVE_GLOBAL_OBJECT_REFERENCE,   /* -955 */
    CHANS_VM_ERR_NEW,                               /* -954 */
    CHANS_VM_ERR_ADD_NATIVE_PROPERTY,               /* -953 */
    CHANS_VM_ERR_GET_BOOLEAN,                       /* -952 */
    CHANS_VM_ERR_CASE,                              /* -951 */
    CHANS_VM_ERR_CHECK_STRICT_EQUALITY,             /* -950 */
    CHANS_VM_ERR_ADD_REFERENCE,                     /* -949 */
    CHANS_VM_ERR_LOAD_INDIRECT,                     /* -948 */
    CHANS_VM_ERR_CALL_METHOD,                       /* -947 */
    CHANS_VM_ERR_STORE_INDIRECT,                    /* -946 */
    CHANS_VM_ERR_LOAD_STRING_CONST,                 /* -945 */
    CHANS_VM_ERR_SIGNAL,                            /* -944 */
    CHANS_VM_ERR_STORE_READONLY,                    /* -943 */
    CHANS_VM_ERR_SET_INDEX,                         /* -942 */
    CHANS_VM_ERR_GET_PROPERTY_NAME,                 /* -941 */
    CHANS_VM_ERR_SET_STRING,                        /* -940 */
    CHANS_VM_ERR_CALL_NEW_ARRAY,                    /* -939 */
    CHANS_VM_ERR_OPCODE_VERSION,                    /* -938 */
    CHANS_VM_ERR_NOT_SUPPORTED_FLOAT,               /* -937 */
    CHANS_VM_ERR_NOT_CONSTRUCTOR,                   /* -936 */
    CHANS_VM_ERR_DELETE_INDIRECT,                   /* -935 */
    CHANS_VM_ERR_FORBIDDEN_CLASS_PROPERTY,          /* -934 */
    CHANS_VM_ERR_FORBIDDEN_CLASS_METHOD,            /* -933 */
    CHANS_VM_ERR_NEED_NEW,                          /* -932 */
    CHANS_VM_ERR_INVALID_OBJECT,                    /* -931 */
    CHANS_VM_ERR_INVALID_OBJECT_TYPE,               /* -930 */
    CHANS_VM_ERR_NO_SUCH_PROPERTY,                  /* -929 */
    CHANS_VM_ERR_NO_SUCH_METHOD,                    /* -928 */
    CHANS_VM_ERR_NOT_READABLE_PROPERTY,             /* -927 */
    CHANS_VM_ERR_NOT_WRITABLE_PROPERTY,             /* -926 */
    CHANS_VM_ERR_INVALID_EXE_TYPE,                  /* -925 */
    CHANS_VM_ERR_NO_SUCH_FUNCTION,                  /* -924 */
    CHANS_VM_ERR_RESERVED_OPCODE,                   /* -923 */
};

#endif // CHANS_VM_ERROR_CODES_H
