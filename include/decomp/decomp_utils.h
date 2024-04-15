#ifndef DECOMP_UTILS_H
#define DECOMP_UTILS_H

#define ARRSIZE(x) (sizeof(x) / sizeof(x[0]))

#define ROUNDUP(x, a) (((unsigned int)(x) + (a) - 1) & ~((a) - 1))
#define PTR_ROUNDUP(x, a) ((void*)(((unsigned int)(x) + ((a) - 1)) & ~((a) - 1)))

#endif // DECOMP_UTILS_H


