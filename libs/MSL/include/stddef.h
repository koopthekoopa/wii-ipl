#ifndef MSL_STDDEF_H
#define MSL_STDDEF_H

typedef unsigned long int size_t;
typedef long int clock_t;
typedef long int time_t;

#ifndef __clang__
#define offsetof(type, member) ((size_t) & (((type*)0)->member))
#else
#define offsetof(type, member) __builtin_offsetof(type, member)
#endif

#ifndef NULL
#ifdef __cplusplus
#define NULL 0
#else
#define NULL ((void*)0)
#endif  // __cplusplus
#endif

#endif  // MSL_STDDEF_H
