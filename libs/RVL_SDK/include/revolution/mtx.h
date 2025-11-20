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

void    C_MTXIdentity(Mtx m);
void    C_MTXCopy(const Mtx src, Mtx dst);
void    C_MTXConcat(const Mtx a, const Mtx b, Mtx ab);
u32     C_MTXInverse(const Mtx src, Mtx inv);
u32     C_MTXInvXpose(const Mtx src, Mtx invX);
void    C_MTXRotRad(Mtx m, char axis, f32 rad);
void    C_MTXRotTrig(Mtx m, char axis, f32 sinA, f32 cosA);
void    C_MTXTrans(Mtx m, f32 xT, f32 yT, f32 zT);
void    C_MTXTransApply(const Mtx src, Mtx dst, f32 xT, f32 yT, f32 zT);
void    C_MTXScale(Mtx m, f32 xS, f32 yS, f32 zS);
void    C_MTXScaleApply(const Mtx src, Mtx dst, f32 xS, f32 yS, f32 zS);
void    C_MTXLookAt(Mtx m, const Point3d* camPos, const Vec* camUp, const Point3d* target);

#ifdef DEBUG
#define MTXIdentity     C_MTXIdentity
#define MTXCopy         C_MTXCopy
#define MTXConcat       C_MTXConcat
#define MTXInverse      C_MTXInverse
#define MTXInvXpose     C_MTXInvXpose
#define MTXRotRad       C_MTXRotRad
#define MTXRotTrig      C_MTXRotTrig
#define MTXTrans        C_MTXTrans
#define MTXTransApply   C_MTXTransApply
#define MTXScale        C_MTXScale
#define MTXScaleApply   C_MTXScaleApply
#else
#define MTXIdentity     PSMTXIdentity
#define MTXCopy         PSMTXCopy
#define MTXConcat       PSMTXConcat
#define MTXInverse      PSMTXInverse
#define MTXInvXpose     PSMTXInvXpose
#define MTXRotRad       PSMTXRotRad
#define MTXRotTrig      PSMTXRotTrig
#define MTXTrans        PSMTXTrans
#define MTXTransApply   PSMTXTransApply
#define MTXScale        PSMTXScale
#define MTXScaleApply   PSMTXScaleApply
#endif // DEBUG
#define MTXLookAt       C_MTXLookAt /* C only */

// MtxVec

void    PSMTXMultVec(const Mtx m, const Vec* src, Vec* dst);

void    C_MTXMultVec(const Mtx m, const Vec* src, Vec* dst);

#ifdef DEBUG
#define MTXMultVec  C_MTXMultVec
#else
#define MTXMultVec  PSMTXMultVec
#endif // DEBUG

// Mtx44

void    C_MTXFrustum(Mtx44 m, f32 t, f32 b, f32 l, f32 r, f32 n, f32 f);
void    C_MTXPerspective(Mtx44 m, f32 fovY, f32 aspect, f32 n, f32 f);
void    C_MTXOrtho(Mtx44 m, f32 t, f32 b, f32 l, f32 r, f32 n, f32 f);

#define MTXFrustum      C_MTXFrustum
#define MTXPerspective  C_MTXPerspective
#define MTXOrtho        C_MTXOrtho

// Vec

void    PSVECNormalize(const Vec* src, Vec* dst);
void    PSVECCrossProduct(const Vec* a, const Vec* b, Vec* axb);

void    C_VECNormalize(const Vec* src, Vec* dst);
void    C_VECCrossProduct(const Vec* a, const Vec* b, Vec* axb);

#ifdef DEBUG
#define VECNormalize    C_VECNormalize
#define VECCrossProduct C_VECCrossProduct
#else
#define VECNormalize    PSVECNormalize
#define VECCrossProduct PSVECCrossProduct
#endif // DEBUG

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_MTX_H
