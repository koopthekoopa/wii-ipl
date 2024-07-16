#ifndef REVOLUTION_GX_TEXTURE_H
#define REVOLUTION_GX_TEXTURE_H

#include <revolution/types.h>
#include <revolution/gx/GXEnum.h>

#ifdef __cplusplus
extern "C" {
#endif

void GXInitTexObj(GXTexObj* obj, void* pImage, u16 width, u16 height, GXTexFmt format, GXTexWrapMode wrapS, GXTexWrapMode wrapT, GXBool mipmap);
u32 GXGetTexBufferSize(u16 width, u16 height, u32 format, GXBool mipmap, u8 max_lod);

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_GX_TEXTURE_H
