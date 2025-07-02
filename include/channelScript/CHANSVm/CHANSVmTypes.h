#ifndef CHANS_VM_TYPES_H
#define CHANS_VM_TYPES_H

#include <revolution/types.h>

#include <wchar.h>
#include <stddef.h>
#include <stdbool.h>

typedef u8              CHANSVmU8;
typedef u16             CHANSVmU16;
typedef u32             CHANSVmU32;
typedef u64             CHANSVmU64;
typedef s8              CHANSVmS8;
typedef s16             CHANSVmS16;
typedef s32             CHANSVmS32;
typedef s64             CHANSVmS64;

typedef bool            CHANSVmBool;
#define                 CHANSVmFalse    0
#define                 CHANSVmTrue     1

#define                 CHANSVmNull     NULL

typedef void*           CHANSVmPtr;

typedef long int        CHANSVmInt32;
typedef long long int   CHANSVmInt;
typedef double          CHANSVmFloat;
typedef size_t          CHANSVmSize;


typedef wchar_t         CHANSVmStr16Ch;
typedef wchar_t*        CHANSVmStr16;

typedef char*           CHANSVmStr8;
typedef char            CHANSVmStr8Ch;

#define                 CHANSVmStr16Length(str) (str * sizeof(CHANSVmStr16Ch))
#define                 CHANSVmStr8Length(str)  (str / sizeof(CHANSVmStr16Ch))

typedef enum CHANSVmObjType {
    CHANS_VM_OBJ_TYPE_BLANK /*hmm*/ = 0,
    CHANS_VM_OBJ_TYPE_INTEGER,
    CHANS_VM_OBJ_TYPE_FLOAT,
    CHANS_VM_OBJ_TYPE_STRING,
    CHANS_VM_TYPE_UNK4,
    CHANS_VM_TYPE_UNK5,
} CHANSVmObjType;

#endif // CHANS_VM_TYPES_H
