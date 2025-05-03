#ifndef REVOLUTION_MTX_H
#define REVOLUTION_MTX_H

#include <revolution/mtx/GeoTypes.h>

#ifdef __cplusplus
extern "C" {
#endif

// Mtx
void    PSMTXIdentity(Mtx m);
void    PSMTXCopy(const Mtx src, Mtx dst);
void    PSMTXConcat(const Mtx a, const Mtx b, Mtx ab);
u32     PSMTXInverse(const Mtx src, Mtx inv);
u32     PSMTXInvXpose(const Mtx src, Mtx invX);
void    PSMTXRotRad(Mtx m, char axis, f32 rad);
void    PSMTXRotTrig(Mtx m, char axis, f32 sinA, f32 cosA);
void    PSMTXTrans(Mtx m, f32 xT, f32 yT, f32 zT);
void    PSMTXTransApply(const Mtx src, Mtx dst, f32 xT, f32 yT, f32 zT);
void    PSMTXScale(Mtx m, f32 xS, f32 yS, f32 zS);
void    PSMTXScaleApply(const Mtx src, Mtx dst, f32 xS, f32 yS, f32 zS);

// MtxVec
void    PSMTXMultVec(const Mtx m, const Vec* src, Vec* dst);

// Mtx44
void    C_MTXFrustum(Mtx44 m, f32 t, f32 b, f32 l, f32 r, f32 n, f32 f);
void    C_MTXPerspective(Mtx44 m, f32 fovY, f32 aspect, f32 n, f32 f);
void    C_MTXOrtho(Mtx44 m, f32 t, f32 b, f32 l, f32 r, f32 n, f32 f);

// Vec
void    PSVECNormalize(const Vec* src, Vec* dst);
void    PSVECCrossProduct(const Vec* a, const Vec* b, Vec* axb);

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_MTX_H
