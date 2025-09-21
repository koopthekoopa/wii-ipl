#ifndef CHANS_VM_TYPES_H
#define CHANS_VM_TYPES_H

#ifdef __cplusplus
extern "C" {
#endif

#include <revolution/types.h>

#include <wchar.h>
#include <stddef.h>
#include <stdbool.h>

typedef u8              vmU8;
typedef u16             vmU16;
typedef u32             vmU32;
typedef u64             vmU64;
typedef s8              vmS8;
typedef s16             vmS16;
typedef s32             vmS32;
typedef s64             vmS64;

typedef bool            vmBool;
typedef BOOL            vmBoolInt;
#define                 vmFalse 0
#define                 vmTrue  1

#define                 vmNull  NULL

typedef void*           vmPtr;

typedef long int        vmInteger32;
typedef long long int   vmInteger;
typedef double          vmFloat;
typedef size_t          vmSize;

typedef wchar_t         vmWChar;
typedef wchar_t*        vmWString;

typedef char            vmChar;
typedef char*           vmString;

typedef struct CHANSVm {
    u8  data[0x270];
} CHANSVm;

/* OBJECT HEADER & DATA */

typedef enum CHANSVmObjType {
    CHANS_VM_OBJ_TYPE_BLANK /*hmm*/ = 0,
    CHANS_VM_OBJ_TYPE_INTEGER,
    CHANS_VM_OBJ_TYPE_FLOAT,
    CHANS_VM_OBJ_TYPE_STRING,
    CHANS_VM_TYPE_UNK4,
    CHANS_VM_TYPE_UNK5,
} CHANSVmObjType;

typedef struct CHANSVmObjHdr CHANSVmObjHdr;
typedef struct CHANSVmNativeClass CHANSVmNativeClass;

struct CHANSVmObjHdr {
    union {
        vmInteger       int_v;
        struct {
            vmU32       unk_0x00; // ?
            vmInteger32 v;
        }* int32;
        vmFloat         float_v;
        struct {
            vmWString  str;
            vmSize     len;
        }* wstring_v;
        struct {
            vmString    str;
            vmSize      len;
        }* string_v;
        vmPtr*          ptr_v;
        CHANSVmObjHdr*  obj_ptr;
    } value;        // 0x00

    union {
        struct {
            vmU8        type;    // 0x08

            union {
                struct {
                    bool    readonly : 1;   // 10000000
                    vmU8    reserved : 7;   // 01111111
                };
                vmU8    raw;
            } flags;                    // 0x08
            vmU8        unk_0x0A;
            vmU8        unk_0x0B;
        };
        vmS32   typeAndFlag;
    };

    CHANSVmNativeClass* parentCls;  // 0x0C
};

typedef struct CHANSVmImage {
    u32 unk_0x00;
    u32 unk_0x04;
    u16 width;  // 0x08
    u16 height; // 0x0A
    u8  format; // 0x0C
} CHANSVmImage;

/* CLASSES & METHODS */

typedef vmBoolInt (*CHANSVmFunction)(CHANSVm* vm, CHANSVmObjHdr* objectIn, CHANSVmObjHdr* objectOut);

typedef struct CHANSVmMethodList {
    char*           name;   // 0x00
    CHANSVmFunction method; // 0x04
} CHANSVmMethodList;

typedef struct CHANSVmNativeMethod {
    undefined       unk_0x00[0x20];
} CHANSVmNativeMethod;

typedef struct CHANSVmPropertyList {
    char*           name;       // 0x00
    CHANSVmFunction unk_0x04;
    CHANSVmFunction unk_0x08;
} CHANSVmPropertyList;

typedef struct CHANSVmNativeProperty {
    undefined       unk_0x00[0x20];
} CHANSVmNativeProperty;

struct CHANSVmNativeClass {
    CHANSVmNativeClass*     next;               // 0x00

    CHANSVmFunction         ctor;               // 0x04
    CHANSVmFunction         dtor;               // 0x08
    CHANSVmFunction         init;               // 0x0C

    CHANSVmNativeMethod*    nativeMethods;      // 0x10
    CHANSVmNativeProperty*  nativProperties;    // 0x14

    vmSize                  nameLength;         // 0x18
    vmString                name;               // 0x1C

    undefined               unk_0x20[0x1C];
};

#ifdef __cplusplus
}
#endif

#endif // CHANS_VM_TYPES_H
