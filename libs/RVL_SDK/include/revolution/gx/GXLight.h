#ifndef REVOLUTION_GX_LIGHT_H
#define REVOLUTION_GX_LIGHT_H

#include <revolution/types.h>
#include <revolution/gx/GXEnum.h>

#ifdef __cplusplus
extern "C" {
#endif

void    GXSetNumChans(u8 count);
void    GXSetChanCtrl(GXChannelID channel, GXBool doEnable, GXColorSrc ambSrc, GXColorSrc matSrc, u32 mask, GXDiffuseFn diffFunc, GXAttnFn attnFunc);

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_GX_LIGHT_H
