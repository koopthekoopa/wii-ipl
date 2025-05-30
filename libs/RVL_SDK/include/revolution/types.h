#ifndef REVOLUTION_TYPES_H
#define REVOLUTION_TYPES_H

#include <decomp.h>

typedef signed char         s8;
typedef signed short        s16;
typedef signed long         s32;
typedef signed long long    s64;
typedef unsigned char       u8;
typedef unsigned short      u16;
typedef unsigned long       u32;
typedef unsigned long long  u64;

typedef volatile u8         vu8;
typedef volatile u16        vu16;
typedef volatile u32        vu32;
typedef volatile u64        vu64;
typedef volatile s8         vs8;
typedef volatile s16        vs16;
typedef volatile s32        vs32;
typedef volatile s64        vs64;

typedef float               f32;
typedef double              f64;
typedef volatile f32        vf32;
typedef volatile f64        vf64;

typedef char*               Ptr;

typedef int                 BOOL;
typedef unsigned int        uBOOL;
typedef volatile BOOL       vBOOL;
typedef volatile uBOOL      vuBOOL;

#define TRUE                1
#define FALSE               0

#ifdef __cplusplus
#define NULL                0
#else
#define NULL                ((void*)0)
#endif  // __cplusplus

#define ATTRIBUTE_ALIGN(num)    __attribute__((aligned(num)))

#define DEFAULT_ALIGN           32

#define ALIGN32                 ATTRIBUTE_ALIGN(DEFAULT_ALIGN)
#define ALIGN64                 ATTRIBUTE_ALIGN(64)

#endif // REVOLUTION_TYPES_H
