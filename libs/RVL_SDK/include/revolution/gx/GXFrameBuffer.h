#ifndef REVOLUTION_GX_FRAMEBUFFER_H
#define REVOLUTION_GX_FRAMEBUFFER_H

#include <revolution/types.h>
#include <revolution/gx/GXEnum.h>
#include <revolution/gx/GXStruct.h>

#ifdef __cplusplus
extern "C" {
#endif

void    GXSetCopyFilter(GXBool aa, const u8 sample_pattern[12][2], GXBool vf, const u8 vfilter[7]);

void    GXSetDispCopySrc(u16 left, u16 top, u16 width, u16 height);

void    GXSetTexCopySrc(u16 left, u16 top, u16 width, u16 height);
void    GXSetTexCopyDst(u16 width, u16 height, GXTexFmt fmt, GXBool mipmap);
void    GXCopyTex(void *dest, GXBool clear);

void    GXSetCopyClear(GXColor clear_clr, u32 clear_z);

u32     GXSetDispCopyYScale(f32 vscale);
void    GXSetDispCopyDst(u16 width, u16 height);
void    GXCopyDisp(void *dest, GXBool clear);

f32     GXGetYScaleFactor(u16 efbHeight, u16 xfbHeight);

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_GX_FRAMEBUFFER_H
