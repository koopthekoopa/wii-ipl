#ifndef REVOLUTION_GX_TRANSFORM_H
#define REVOLUTION_GX_TRANSFORM_H

#include <revolution/types.h>
#include <revolution/gx/GXEnum.h>
#include <revolution/gx/GXStruct.h>
#include <revolution/mtx/GeoTypes.h>

#ifdef __cplusplus
extern "C" {
#endif

void    GXLoadPosMtxImm(Mtx mtx, u32 id);

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_GX_TRANSFORM_H
