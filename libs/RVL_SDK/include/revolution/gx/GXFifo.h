#ifndef REVOLUTION_GX_FIFO_H
#define REVOLUTION_GX_FIFO_H

#include <revolution/types.h>
#include <revolution/gx/GXStruct.h>
#include <revolution/base/PPCWGPipe.h>

#ifdef __cplusplus
extern "C" {
#endif

#define GXFIFO_ADDR 0xCC008000

volatile PPCWGPipe GXWGFifo ADDRESS(GXFIFO_ADDR);

static inline void GXPosition2f32(const f32 x, const f32 y) {
    GXWGFifo.f32 = x;
    GXWGFifo.f32 = y;
}

static inline void GXPosition3s16(const s16 x, const s16 y, const s16 z) {
    GXWGFifo.s16 = x;
    GXWGFifo.s16 = y;
    GXWGFifo.s16 = z;
}

static inline void GXPosition3u16(const u16 x, const u16 y, const u16 z) {
    GXWGFifo.u16 = x;
    GXWGFifo.u16 = y;
    GXWGFifo.u16 = z;
}

static inline void GXPosition3f32(f32 x, f32 y, f32 z) {
    GXWGFifo.f32 = x;
    GXWGFifo.f32 = y;
    GXWGFifo.f32 = z;
}

static inline void GXNormal3f32(const f32 x, const f32 y, const f32 z) {
    GXWGFifo.f32 = x;
    GXWGFifo.f32 = y;
    GXWGFifo.f32 = z;
}

static inline void GXColor1(GXColor* color) { 
    GXWGFifo.u32 = *(u32*)&color;
}

static inline void GXColor1u32(u32 c) { 
    GXWGFifo.u32 = c;
}

static inline void GXColor4u8(const u8 r, const u8 g, const u8 b, const u8 a) {
    GXWGFifo.u8 = r;
    GXWGFifo.u8 = g;
    GXWGFifo.u8 = b;
    GXWGFifo.u8 = a;
}

static inline void GXTexCoord2s8(const s8 u, const s8 v) {
    GXWGFifo.s8 = u;
    GXWGFifo.s8 = v;
}

static inline void GXTexCoord2u8(u8 s, u8 t) {
    GXWGFifo.u8 = s;
    GXWGFifo.u8 = t;
}

static inline void GXPosition2u16(u16 x, u16 y) {
    GXWGFifo.u16 = x;
    GXWGFifo.u16 = y;
}

static inline void GXTexCoord2s16(const s16 u, const s16 v) {
    GXWGFifo.s16 = u;
    GXWGFifo.s16 = v;
}

static inline void GXTexCoord2u16(const u16 u, const u16 v) {
    GXWGFifo.u16 = u;
    GXWGFifo.u16 = v;
}

static inline void GXTexCoord2f32(const f32 u, const f32 v) {
    GXWGFifo.f32 = u;
    GXWGFifo.f32 = v;
}

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_GX_FIFO_H
