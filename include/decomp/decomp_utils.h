#ifndef DECOMP_UTILS_H
#define DECOMP_UTILS_H

#define __CONCAT(x, y)          x##y
#define   CONCAT(x, y)          __CONCAT(x, y)

#define ARRSIZE(x)              (sizeof(x) / sizeof(x[0]))

#define ROUNDUP(x, a)           (((unsigned long)(x) + ((a) - 1)) & ~((a) - 1))
#define PTR_ROUNDUP(x, a)       ((void*)ROUNDUP(x, a))

#define ROUNDDOWN(x, a)         (((unsigned long)(x)) & ~((a) - 1))
#define PTR_ROUNDDOWN(x, a)     ((void*)ROUNDDOWN(x, a))

#define NO_INLINE               __attribute__((never_inline))

#ifdef __MWERKS__
#define ADDRESS(addr) : (addr)
#else
#define ADDRESS(addr)
#endif

#define DECOMP_FORCE_ACTIVE(module, args...)        \
    void fake_function(int a, ...);                 \
    void CONCAT(FORCEACTIVE##module, __LINE__)();   \
    void CONCAT(FORCEACTIVE##module, __LINE__)() {  \
        fake_function(0, args);                        \
    }

#endif // DECOMP_UTILS_H
