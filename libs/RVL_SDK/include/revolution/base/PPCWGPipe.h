#ifndef REVOLUTION_BASE_PPCWGPIPE_H
#define REVOLUTION_BASE_PPCWGPIPE_H

#include <revolution/types.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef union PPCWGPipe {
    u8  u8;
    u16 u16;
    u32 u32;
    u64 u64;
    s8  s8;
    s16 s16;
    s32 s32;
    s64 s64;
    f32 f32;
    f64 f64;
} PPCWGPipe;

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_BASE_PPCWGPIPE_H
