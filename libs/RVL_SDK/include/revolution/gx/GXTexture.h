#ifndef REVOLUTION_GX_TEXTURE_H
#define REVOLUTION_GX_TEXTURE_H

#include <revolution/types.h>
#include <revolution/gx/GXStruct.h>
#include <revolution/gx/GXEnum.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef GXTexRegion *(*GXTexRegionCallback)(const GXTexObj* t_obj, GXTexMapID id);
typedef GXTlutRegion *(*GXTlutRegionCallback)(u32 idx);

u32                     GXGetTexBufferSize(u16 width, u16 height, u32 format, u8 mipmap, u8 max_lod);

void                    GXInitTexObj(const GXTexObj* obj, void* image_ptr, u16 width, u16 height, GXTexFmt format, GXTexWrapMode wrap_s, GXTexWrapMode wrap_t, u8 mipmap);
void                    GXInitTexObjCI(GXTexObj* obj, void* image_ptr, u16 width, u16 height, GXCITexFmt format, GXTexWrapMode wrap_s, GXTexWrapMode wrap_t, u8 mipmap, u32 tlut_name);
void                    GXInitTexObjLOD(GXTexObj* obj, GXTexFilter min_filt, GXTexFilter mag_filt, f32 min_lod, f32 max_lod, f32 lod_bias, GXBool bias_clamp, GXBool do_edge_lod, GXAnisotropy max_aniso);
void                    GXInitTexObjWrapMode(const GXTexObj* obj, GXTexWrapMode s, GXTexWrapMode t);
void                    GXInitTexObjTlut(const GXTexObj* obj, u32 tlut_name);

void                    GXInitTexObjUserData(const GXTexObj* obj, void* user_data);
void*                   GXGetTexObjUserData(const GXTexObj* obj);

void                    GXLoadTexObjPreLoaded(const GXTexObj *obj, const GXTexRegion *region, GXTexMapID id);
void                    GXLoadTexObj(const GXTexObj* obj, GXTexMapID id);

void                    GXInitTlutObj(const GXTlutObj* tlut_obj, void* lut, GXTlutFmt fmt, u16 n_entries);
void                    GXLoadTlut(const GXTlutObj* tlut_obj, u32 tlut_name);

void                    GXInitTexCacheRegion(GXTexRegion* region, u8 is_32b_mipmap, u32 tmem_even, GXTexCacheSize size_even, u32 tmem_odd, GXTexCacheSize size_odd);
void                    GXInitTlutRegion(GXTlutRegion* region, u32 tmem_addr, GXTlutSize tlut_size);

void                    GXInvalidateTexAll();

GXTexRegionCallback     GXSetTexRegionCallback(GXTexRegionCallback f);
GXTlutRegionCallback    GXSetTlutRegionCallback(GXTlutRegionCallback f);

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_GX_TEXTURE_H
