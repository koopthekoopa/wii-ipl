#ifndef REVOLUTION_GX_FRAMEBUFFER_H
#define REVOLUTION_GX_FRAMEBUFFER_H

#include <revolution/types.h>
#include <revolution/gx/GXEnum.h>
#include <revolution/gx/GXStruct.h>

#ifdef __cplusplus
extern "C" {
#endif

#define	GX_MAX_Z24	0x00ffffff

extern GXRenderModeObj GXNtsc480IntDf;
extern GXRenderModeObj GXMpal480IntDf;
extern GXRenderModeObj GXPal528IntDf;
extern GXRenderModeObj GXEurgb60Hz480IntDf;

void    GXSetDispCopySrc(u16 left, u16 top, u16 wd, u16 ht);
void    GXSetTexCopySrc(u16 left, u16 top, u16 wd, u16 ht);

void    GXSetDispCopyDst(u16 wd, u16 ht);
void    GXSetTexCopyDst(u16 wd, u16 ht, GXTexFmt fmt, GXBool mipmap);

void    GXSetDispCopyFrame2Field(GXCopyMode mode);

void    GXSetCopyClamp(GXFBClamp clamp);

u32     GXSetDispCopyYScale(f32 vscale);

void    GXSetCopyClear(GXColor clear_clr, u32 clear_z);
void    GXSetCopyFilter(GXBool aa, const u8 sample_pattern[12][2], GXBool vf, const u8 vfilter[7]);

void    GXSetDispCopyGamma(GXGamma gamma);

void    GXCopyDisp(void* dest, GXBool clear);
void    GXCopyTex(void* dest, GXBool clear);

void    GXClearBoundingBox();

f32     GXGetYScaleFactor(u16 efbHeight, u16 xfbHeight);

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_GX_FRAMEBUFFER_H
