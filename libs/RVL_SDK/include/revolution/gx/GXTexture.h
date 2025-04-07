#ifndef REVOLUTION_GX_TEXTURE_H
#define REVOLUTION_GX_TEXTURE_H

#include <revolution/types.h>
#include <revolution/gx/GXStruct.h>
#include <revolution/gx/GXEnum.h>

#ifdef __cplusplus
extern "C" {
#endif

void    GXInvalidateTexAll();

void    GXInitTexObj(GXTexObj* obj, void* pImage, u16 width, u16 height, GXTexFmt format, GXTexWrapMode wrapS, GXTexWrapMode wrapT, GXBool mipmap);
void    GXInitTexObjLOD(GXTexObj* obj, GXTexFilter min_filt, GXTexFilter mag_filt, f32 min_lod, f32 max_lod, f32 lod_bias, GXBool bias_clamp, GXBool do_edge_lod, GXAnisotropy max_aniso);
u32     GXGetTexBufferSize(u16 width, u16 height, u32 format, GXBool mipmap, u8 max_lod);

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_GX_TEXTURE_H
