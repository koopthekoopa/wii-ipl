#ifndef DECOMP_UTILS_H
#define DECOMP_UTILS_H

#define ARRSIZE(x)          (sizeof(x) / sizeof(x[0]))

#define ROUNDUP(x, a)       (((unsigned int)(x) + (a) - 1) & ~((a) - 1))
#define PTR_ROUNDUP(x, a)   ((void*)(((unsigned int)(x) + ((a) - 1)) & ~((a) - 1)))

#ifdef UNIT_DOESNT_MATCH
#ifndef OBJDIFF
#error This unit does not match yet. Use the assembly instead.
#endif
#endif

#endif // DECOMP_UTILS_H


