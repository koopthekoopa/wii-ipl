#ifndef REVOLUTION_OS_FAST_CAST_H
#define REVOLUTION_OS_FAST_CAST_H

#include <revolution/types.h>

#ifdef __cplusplus
extern "C" {
#endif

static void OSInitFastCast() {
#ifdef __MWERKS__
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
#endif
}

/*** TO F32 ***/

static f32 __OSu16tof32(register const u16* arg) {
    register f32 ret;
#ifdef __MWERKS__
    asm { psq_l ret, 0(arg), 1, 3 }
#endif
    return ret;
}

static void OSu16tof32(const u16* in, f32* out) {
    *out = __OSu16tof32(in);
}

/*** FROM F32 ***/

static u8 __OSf32tou8(register f32 arg) {
    f32 a;
    register f32* ptr = &a;
    u8 r;
    #ifdef __MWERKS__
    asm {
        psq_st arg, 0(ptr), 1, 2
    }
    #endif
    r = *(u8*)ptr;
    return r;
}

static void OSf32tou8(f32* in, vu8* out) {
    *out = __OSf32tou8(*in);
}

static u16 __OSf32tou16(register f32 arg) {
    f32 a;
    register f32* ptr = &a;
    u16 r;
#ifdef __MWERKS__
    asm { psq_st arg, 0(ptr), 1, 3 }
#endif
    r = *(u16*)ptr;
    return r;
}

static void OSf32tou16(const f32* in, u16* out) {
    *out = __OSf32tou16(*in);
}

static f32 __OSs16tof32(register const s16* arg) {
    register f32 ret;
#ifdef __MWERKS__
    asm { psq_l ret, 0(arg), 1, 5 }
#endif
    return ret;
}

static void OSs16tof32(const s16* in, f32* out) {
    *out = __OSs16tof32(in);
}

static s16 __OSf32tos16(register f32 arg) {
    f32 a;
    register f32* ptr = &a;
    s16 r;
#ifdef __MWERKS__
    asm { psq_st arg, 0(ptr), 1, 5 }
#endif
    r = *(s16*)ptr;
    return r;
}

static void OSf32tos16(const f32* in, s16* out) {
    *out = __OSf32tos16(*in);
}

#ifdef __cplusplus
}
#endif

#endif  // REVOLUTION_OS_FAST_CAST_H
