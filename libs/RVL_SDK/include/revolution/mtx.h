#ifndef REVOLUTION_MTX_H
#define REVOLUTION_MTX_H

#include <revolution/mtx/GeoTypes.h>

#ifdef __cplusplus
extern "C" {
#endif

u32     PSMTXInverse(const Mtx src, Mtx inv);

void    PSMTXTrans(Mtx mtx, f32 xT, f32 yT, f32 zT);

void    PSMTXMultVec(const Mtx mtx, const Vec* in, Vec* out);

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_MTX_H
