#ifndef MSL_STDDEF_H
#define MSL_STDDEF_H

#include <size_t.h>

#define offsetof(type, member) ((size_t) &(((type *) 0)->member))

#endif // MSL_STDDEF_H
