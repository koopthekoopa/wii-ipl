#ifndef REVOLUTION_GX_FRAMEBUFFER_H
#define REVOLUTION_GX_FRAMEBUFFER_H

#include <revolution/types.h>
#include <revolution/gx/GXEnum.h>

#ifdef __cplusplus
extern "C" {
#endif

void    GXSetCopyFilter(GXBool aa, const u8 sample_pattern[12][2], GXBool vf, const u8 vfilter[7]);
void    GXSetTexCopySrc(u16 x, u16 y, u16 width, u16 height);
void    GXSetTexCopyDst(u16 width, u16 height, GXTexFmt fmt, GXBool mipmap);
void    GXCopyTex(void *pDest, GXBool clear);

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_GX_FRAMEBUFFER_H
