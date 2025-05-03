#ifndef REVOLUTION_GX_LIGHTING_H
#define REVOLUTION_GX_LIGHTING_H

#include <revolution/types.h>
#include <revolution/gx/GXStruct.h>
#include <revolution/gx/GXEnum.h>

#ifdef __cplusplus
extern "C" {
#endif


void GXInitLightPos(GXLightObj* lt_obj, f32 x, f32 y, f32 z);
void GXInitLightColor(GXLightObj* lt_obj, GXColor color);

void GXLoadLightObjImm(const GXLightObj* lt_obj, GXLightID light);

void GXSetChanAmbColor(GXChannelID chan, GXColor amb_color);
void GXSetChanMatColor(GXChannelID chan, GXColor mat_color);

void GXSetNumChans(u8 nChans);

void GXSetChanCtrl(GXChannelID chan, GXBool enable, GXColorSrc amb_src, GXColorSrc mat_src, u32 light_mask, GXDiffuseFn diff_fn, GXAttnFn attn_fn);

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_GX_LIGHTING_H
