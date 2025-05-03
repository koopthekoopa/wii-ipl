#ifndef REVOLUTION_MTX_GEO_TYPES_H
#define REVOLUTION_MTX_GEO_TYPES_H

#include <revolution/types.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef struct {
	f32 x, y, z;
} Vec, *VecPtr, Point3d, *Point3dPtr;

typedef struct {
    s16 x, y, z;
} S16Vec, *S16VecPtr;

typedef struct Vec2 {
    f32 x; // 0x00
    f32 y; // 0x04
} Vec2;

typedef struct {
	f32 x, y, z, w;
} Quaternion, *QuaternionPtr, Qtrn, *QtrnPtr;

typedef f32 Mtx[3][4];
typedef f32 (*MtxPtr)[4];

typedef f32 Mtx23[2][3];
typedef f32 (*Mtx2Ptr)[2];

typedef f32 Mtx33[3][3];
typedef f32 (*Mtx3Ptr)[3];

typedef f32 Mtx44[4][4];
typedef f32 (*Mtx4Ptr)[4];

typedef f32 ROMtx[4][3];
typedef f32 (*ROMtxPtr)[4];

#define MTXDegToRad(d) (d * 0.01745329252f)
#define MTXRadToDeg(r) (r * 57.29577951f)

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_MTX_GEO_TYPES_H
