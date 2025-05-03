#ifndef REVOLUTION_GX_CPU_TO_EFB_H
#define REVOLUTION_GX_CPU_TO_EFB_H

#include <revolution/types.h>
#include <revolution/gx/GXStruct.h>

#ifdef __cplusplus
extern "C" {
#endif

void GXPokeAlphaMode(GXCompare func, u8 threshold);
void GXPokeAlphaRead(GXAlphaReadMode mode);
void GXPokeAlphaUpdate(GXBool update_enable);

void GXPokeBlendMode(GXBlendMode type, GXBlendFactor src_factor, GXBlendFactor dst_factor, GXLogicOp op);

void GXPokeColorUpdate(GXBool update_enable);

void GXPokeDstAlpha(GXBool enable, u8 alpha);

void GXPokeDither(GXBool dither);

void GXPokeZMode(GXBool compare_enable, GXCompare func, GXBool update_enable);

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_GX_CPU_TO_EFB_H
