#ifndef REVOLUTION_GX_PIXEL_H
#define REVOLUTION_GX_PIXEL_H

#include <revolution/types.h>
#include <revolution/gx/GXEnum.h>

#ifdef __cplusplus
extern "C" {
#endif

void    GXSetDither(GXBool enable);

void    GXSetZCompLoc(GXBool before_tex);
void    GXSetZMode(GXBool compare_enable, GXCompare func, GXBool update_enable);

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_GX_PIXEL_H
