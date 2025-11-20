#ifndef REVOLUTION_GX_GET_H
#define REVOLUTION_GX_GET_H

#include <revolution/types.h>
#include <revolution/gx/GXEnum.h>
#include <revolution/gx/GXStruct.h>

#ifdef __cplusplus
extern "C" {
#endif

// Texture
GXBool          GXGetTexObjMipMap(const GXTexObj* to);
GXTexFmt        GXGetTexObjFmt(const GXTexObj* to);
void*           GXGetTexObjData(const GXTexObj* to);
u16             GXGetTexObjWidth(const GXTexObj* to);
u16             GXGetTexObjHeight(const GXTexObj* to);
GXTexWrapMode   GXGetTexObjWrapS(const GXTexObj* to);
GXTexWrapMode   GXGetTexObjWrapT(const GXTexObj* to);

// Transform
void            GXGetProjectionv(f32* ptr);
void            GXGetViewportv(f32* vp);
void            GXGetScissor(u32* left, u32* top, u32* wd, u32* ht);

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_GX_GEOMETRY_H
