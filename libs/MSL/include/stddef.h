#ifndef MSL_STDDEF_H
#define MSL_STDDEF_H

typedef unsigned long int   size_t;
typedef long int            clock_t;
typedef long int            time_t;

#define offsetof(type, member) ((size_t) &(((type*)0)->member))

#endif // MSL_STDDEF_H
