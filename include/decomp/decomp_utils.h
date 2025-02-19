#ifndef DECOMP_UTILS_H
#define DECOMP_UTILS_H

#define ARRSIZE(x)          (sizeof(x) / sizeof(x[0]))

#define ROUNDUP(x, a)       (((unsigned int)(x) + (a) - 1) & ~((a) - 1))
#define PTR_ROUNDUP(x, a)   ((void*)(((unsigned int)(x) + ((a) - 1)) & ~((a) - 1)))

#define NO_INLINE           __attribute__((never_inline))

#ifdef __MWERKS__
#define ADDRESS(addr) : (addr)
#else
#define ADDRESS(addr)
#endif

#define DECOMP_FORCEACTIVE(module, ...)                                        \
    void fake_function(...);                                                   \
    void CONCAT(FORCEACTIVE##module, __LINE__)(void);                          \
    void CONCAT(FORCEACTIVE##module, __LINE__)(void) {                         \
        fake_function(__VA_ARGS__);                                            \
    }

#endif // DECOMP_UTILS_H


