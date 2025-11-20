#ifndef REVOLUTION_GX_TRANSFORM_H
#define REVOLUTION_GX_TRANSFORM_H

#include <revolution/types.h>
#include <revolution/gx/GXEnum.h>
#include <revolution/gx/GXStruct.h>
#include <revolution/mtx/GeoTypes.h>

#ifdef __cplusplus
extern "C" {
#endif

#define GX_PROJECTION_SZ    7
#define GX_VIEWPORT_SZ      6

void GXSetProjection(const Mtx44 mtx, GXProjectionType type);
void GXSetProjectionv(const f32* ptr);

void GXLoadPosMtxImm(Mtx mtx, u32 id);

void GXLoadNrmMtxImm(const Mtx mtx, u32 id);

void GXSetCurrentMtx(u32 id);

void GXLoadTexMtxImm(const f32 mtx[][4], u32 id, GXTexMtxType type);

void GXSetViewportJitter(f32 left, f32 top, f32 wd, f32 ht, f32 nearz, f32 farz, u32 field);
void GXSetViewport(f32 left, f32 top, f32 wd, f32 ht, f32 nearz, f32 farz);

void GXSetScissorBoxOffset(s32 x_off, s32 y_off);

void GXSetClipMode(GXClipMode mode);

void GXSetZScaleOffset(f32 scale, f32 offset);

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_GX_TRANSFORM_H
