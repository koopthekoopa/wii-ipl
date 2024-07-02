#ifndef REVOLUTION_GX_FRAMEBUFFER_H
#define REVOLUTION_GX_FRAMEBUFFER_H

#include <revolution/types.h>
#include <revolution/gx/GXEnum.h>

#ifdef __cplusplus
extern "C" {
#endif

void GXSetCopyFilter(GXBool aa, const u8 sample_pattern[12][2], GXBool vf, const u8 vfilter[7]);

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_GX_FRAMEBUFFER_H
