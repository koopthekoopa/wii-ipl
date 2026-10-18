#ifndef CHANS_VM_TYPES_H
#define CHANS_VM_TYPES_H

#ifdef __cplusplus
extern "C" {
#endif

#include "channelScript/CHANSVm/VmError.h"

#include <revolution/types.h>

#include <stdbool.h>
#include <stddef.h>
#include <wchar.h>

typedef struct CHANSVm {
    u8 data[0x270];
} CHANSVm;

/* OBJECT HEADER & DATA */

typedef enum CHANSVmObjType {
    CHANS_VM_OBJ_TYPE_BLANK = 0,   // Undefined/null
    CHANS_VM_OBJ_TYPE_INTEGER,     // 64-bit signed integer
    CHANS_VM_OBJ_TYPE_FLOAT,       // 64-bit f32
    CHANS_VM_OBJ_TYPE_STRING,      // UTF-16 string
    CHANS_VM_OBJ_TYPE_ARRAY,       // Array instance
    CHANS_VM_OBJ_TYPE_INDEX_REF,   // Array index accessor (only used by accumulator; not a stored object type)
    CHANS_VM_OBJ_TYPE_GLOBAL_REF,  // Resolved global object reference (only used by ModuleEntry; not a stored object type)
    CHANS_VM_OBJ_TYPE_CLASS_REF,   // Native class reference
    CHANS_VM_OBJ_TYPE_OBJECT,      // Native C class instance (Blob, Image, etc.)
    CHANS_VM_OBJ_TYPE_METHOD_REF,  // Method/function reference (name table index)
    CHANS_VM_OBJ_TYPE_MAX,
} CHANSVmObjType;

typedef enum CHANSVmCallType {
    CHANS_VM_CALL_TYPE_METHOD = 0,
    CHANS_VM_CALL_TYPE_FUNCTION,
    CHANS_VM_CALL_TYPE_PROP_GET,
    CHANS_VM_CALL_TYPE_PROP_SET,
    CHANS_VM_CALL_TYPE_MAX,
} CHANSVmCallType;

typedef struct CHANSVmObjHdr CHANSVmObjHdr;
typedef struct CHANSVmNativeClass CHANSVmNativeClass;

typedef struct {
    wchar_t* spData;
    u32 len;
} vmWStringObjVal;

typedef struct {
    char* spData;
    u32 len;
} vmStringObjVal;

typedef s64 vmInteger;

#define CHANSVM_OBJ_FLAG_READONLY 0x80

struct CHANSVmObjHdr {
    union {
        struct {
            void* ptr;  // 0x00
            u32 len;    // 0x04
        } data;         // 0x00
        s64 int_v;
        BOOL bool_v;
        struct {
            u8 unk_0x00;
            s32 val;
        }* int32_v;
        f64 float_v;
        f32 float32_v;
        vmWStringObjVal* wstring_v;
        vmStringObjVal* string_v;
        void** array_v;
        f64** float_array_v;
        void** ptr_v;
    } value;  // 0x00

    union {
        s32 typeAndFlag;
        struct {
            u8 type;  // 0x08

            union {
                struct {
                    bool readonly : 1;  // 10000000
                    u8 reserved : 7;    // 01111111
                };
                u8 raw;
            } flags;      // 0x08
            u8 hasData;   // 0x0A
            u8 pad_0x0B;  // 0x0B
        };
    };

    CHANSVmNativeClass* parentCls;  // 0x0C
};

typedef struct CHANSVmImage {
    u8* pData;   // 0x00
    u32 size;    // 0x04
    u16 width;   // 0x08
    u16 height;  // 0x0A
    u8 format;   // 0x0C
    u8 bpp;      // 0x0D
} CHANSVmImage;

/* CLASSES & METHODS */

typedef BOOL (*CHANSVmFunction)(CHANSVm* vm, CHANSVmObjHdr* vmObjIn, CHANSVmObjHdr* vmObjOut);
typedef CHANSVmErr (*CHANSVmOpFunction)(CHANSVm*, CHANSVmObjType, CHANSVmObjHdr*, CHANSVmObjHdr*, CHANSVmObjHdr*);

typedef struct CHANSVmIntConstantList {
    const char* spName;  // 0x00
    u32 value;           // 0x04
} CHANSVmIntConstantList;

typedef struct CHANSVmFloatConstantList {
    const char* spName;  // 0x00
    f64* pValue;         // 0x04
} CHANSVmFloatConstantList;

typedef struct CHANSVmBlobPackFormatList {
    u32 charCode;  // 0x00
    u32 size;      // 0x04
    u32 type;      // 0x08
    u32 flags;     // 0x0C
} CHANSVmBlobPackFormatList;

typedef struct CHANSVmMethodList {
    const char* spName;      // 0x00
    CHANSVmFunction method;  // 0x04
} CHANSVmMethodList;

typedef struct CHANSVmNativeMethod {
    struct CHANSVmNativeMethod* pNext;  // 0x00
    u16 index;                          // 0x04
    u8 hasStar;                         // 0x06
    u8 pad_0x07;                        // 0x07
    CHANSVmFunction func;               // 0x08
    undefined unk_0x0C[0x14];           // 0x0C
} CHANSVmNativeMethod;

typedef struct CHANSVmPropertyList {
    const char* spName;  // 0x00
    CHANSVmFunction get;
    CHANSVmFunction set;
} CHANSVmPropertyList;

typedef struct CHANSVmNativeProperty {
    struct CHANSVmNativeProperty* pNext;  // 0x00
    u16 index;                            // 0x04
    u8 flag;                              // 0x06
    u8 pad_0x07;                          // 0x07
    CHANSVmFunction getter;               // 0x08
    CHANSVmFunction setter;               // 0x0C
    undefined unk_0x10[0x10];             // 0x10
} CHANSVmNativeProperty;

struct CHANSVmNativeClass {
    CHANSVmNativeClass* pNext;  // 0x00

    CHANSVmFunction ctor;  // 0x04
    CHANSVmFunction dtor;  // 0x08
    CHANSVmFunction init;  // 0x0C

    CHANSVmNativeMethod* pNativeMethods;       // 0x10
    CHANSVmNativeProperty* pNativeProperties;  // 0x14

    u32 nameLength;  // 0x18
    char sName[4];   // 0x1C

    undefined unk_0x20[0x1C];
};

#ifdef __cplusplus
}
#endif

#endif  // CHANS_VM_TYPES_H
