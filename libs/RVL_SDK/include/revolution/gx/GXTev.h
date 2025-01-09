#ifndef REVOLUTION_GX_TEV_H
#define REVOLUTION_GX_TEV_H

#include <revolution/types.h>
#include <revolution/gx/GXEnum.h>
#include <revolution/gx/GXStruct.h>

#ifdef __cplusplus
extern "C" {
#endif

void    GXSetNumTevStages(u8 count);

void    GXSetTevOp(GXTevStageID stage, GXTevMode mode);
void    GXSetTevOrder(GXTevStageID stage, GXTexCoordID coord, GXTexMapID map, GXChannelID color);

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_GX_TEV_H
