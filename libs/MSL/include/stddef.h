#ifndef MSL_STDDEF_H
#define MSL_STDDEF_H

#include <size_t.h>

#define offsetof(st, m) ((size_t)&(((st*)0)->m))

#endif // MSL_STDDEF_H
