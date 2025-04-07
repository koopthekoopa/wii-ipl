#ifndef CHANS_VM_TYPES_H
#define CHANS_VM_TYPES_H

#include <revolution/types.h>

#include <stddef.h>
#include <size_t.h>

typedef u8              CHANSVmU8;
typedef u16             CHANSVmU16;
typedef u32             CHANSVmU32;
typedef u64             CHANSVmU64;
typedef s8              CHANSVmS8;
typedef s16             CHANSVmS16;
typedef s32             CHANSVmS32;
typedef s64             CHANSVmS64;

typedef int             CHANSVmInt;
typedef long long int   CHANSVmInt64;
typedef f64             CHANSVmFloat;
typedef size_t          CHANSVmSize;

typedef int             CHANSVmBool;
#define                 CHANSVmFalse    0
#define                 CHANSVmTrue     1

#define                 CHANSVmNull     NULL

typedef void*           CHANSVmPtr;

typedef wchar_t         CHANSVmWStrCh;
typedef wchar_t*        CHANSVmWStr;

typedef char*           CHANSVmStr;
typedef char            CHANSVmStrCh;

#define                 CHANSVmWStrLength(str) (str * sizeof(CHANSVmWStrCh))
#define                 CHANSVmStrLength(str)  (str / sizeof(CHANSVmWStrCh))

typedef enum CHANSVmObjType {
    CHANS_VM_OBJ_TYPE_BLANK /*hmm*/ = 0,
    CHANS_VM_OBJ_TYPE_INTEGER,
    CHANS_VM_OBJ_TYPE_FLOAT,
    CHANS_VM_OBJ_TYPE_STRING,
    CHANS_VM_TYPE_UNK4,
    CHANS_VM_TYPE_UNK5,
} CHANSVmObjType;

#endif // CHANS_VM_TYPES_H
