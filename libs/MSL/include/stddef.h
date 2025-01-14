#ifndef MSL_STDDEF_H
#define MSL_STDDEF_H

#include <size_t.h>

#define offsetof(st, m) ((size_t)&(((st*)0)->m))

#ifndef __cplusplus
typedef unsigned short wchar_t;
#endif

#endif // MSL_STDDEF_H
