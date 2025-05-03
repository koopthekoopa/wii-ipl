#ifndef REVOLUTION_GX_PIXEL_H
#define REVOLUTION_GX_PIXEL_H

#include <revolution/types.h>
#include <revolution/gx/GXStruct.h>

#ifdef __cplusplus
extern "C" {
#endif

void GXSetFog(GXFogType type, f32 startz, f32 endz, f32 nearz, f32 farz, GXColor color);
void GXSetFogRangeAdj(GXBool enable, u16 center, const GXFogAdjTable* table);

void GXSetBlendMode(GXBlendMode type, GXBlendFactor src_factor, GXBlendFactor dst_factor, GXLogicOp op);

void GXSetColorUpdate(GXBool update_enable);
void GXSetAlphaUpdate(GXBool update_enable);

void GXSetZMode(GXBool compare_enable, GXCompare func, GXBool update_enable);
void GXSetZCompLoc(GXBool before_tex);

void GXSetPixelFmt(GXPixelFmt pix_fmt, GXZFmt16 z_fmt);

void GXSetDither(GXBool dither);

void GXSetDstAlpha(GXBool enable, u8 alpha);

void GXSetFieldMask(GXBool odd_mask, GXBool even_mask);
void GXSetFieldMode(GXBool field_mode, GXBool half_aspect_ratio);

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_GX_PIXEL_H
