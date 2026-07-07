#ifndef EGG_PRIM_ASSERT_H
#define EGG_PRIM_ASSERT_H

#include <revolution/types.h>

#ifdef __cplusplus
extern "C" {
#endif

void system_halt(const char* file, u32 line, const char* msg, ...);

#define EGG_ASSERT(COND, LINE)                                                                                                                       \
    if (!(COND)) {                                                                                                                                   \
        system_halt(__FILE__, LINE, #COND);                                                                                                          \
    }

#ifdef __cplusplus
}
#endif

#endif  // EGG_PRIM_ASSERT_H
