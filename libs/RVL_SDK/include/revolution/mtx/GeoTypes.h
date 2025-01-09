#ifndef REVOLUTION_MTX_GEO_TYPES_H
#define REVOLUTION_MTX_GEO_TYPES_H

#include <revolution/types.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef struct Vec {
    f32 x; // 0x00
    f32 y; // 0x04
    f32 z; // 0x08
} Vec;

typedef struct Vec2 {
    f32 x; // 0x00
    f32 y; // 0x04
} Vec2;

typedef f32 Mtx[3][4];
typedef f32 Mtx33[3][3];
typedef f32 Mtx44[4][4];

typedef f32 (*Mtx3Ptr)[3];
typedef f32 (*MtxPtr)[4];

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_MTX_GEO_TYPES_H
