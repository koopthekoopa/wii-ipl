#ifndef REVOLUTION_GX_GEOMETRY_H
#define REVOLUTION_GX_GEOMETRY_H

#include <revolution/types.h>
#include <revolution/gx/GXEnum.h>
#include <revolution/gx/GXStruct.h>

#ifdef __cplusplus
extern "C" {
#endif

void                GXBegin(GXPrimitive type, GXVtxFmt format, u16 numVertices);

void                GXClearVtxDesc();
void                GXSetVtxDesc(GXAttr attr, GXAttrType type);
void                GXSetVtxAttrFmt(GXVtxFmt format, GXAttr attr, GXCompCnt count, GXCompType type, u8 frac);

void                GXSetNumTexGens(u8 count);

void                GXSetLineWidth(u8 width, GXTexOffset offset);
void                GXSetPointSize(u8 pointSize, GXTexOffset offset);

static inline void  GXEnd() {}

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_GX_GEOMETRY_H
