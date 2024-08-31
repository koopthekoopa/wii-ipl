#ifndef REVOLUTION_OS_FAST_CASE_H
#define REVOLUTION_OS_FAST_CAST_H

#include <decomp/decomp_ide.h>
#include <revolution/types.h>

#ifdef __cplusplus
extern "C" {
#endif

static void OSInitFastCast() {
    asm {
        li      r3, 4
        oris    r3, r3, 4
        mtspr   0x392, r3

        li      r3, 5
        oris    r3, r3, 5
        mtspr   0x393, r3
            
        li      r3, 6
        oris    r3, r3, 6
        mtspr   0x394, r3
            
        li      r3, 7
        oris    r3, r3, 7
        mtspr   0x395, r3
    }
}

#ifdef __cplusplus
}
#endif

#endif  // REVOLUTION_OS_FAST_CAST_H



