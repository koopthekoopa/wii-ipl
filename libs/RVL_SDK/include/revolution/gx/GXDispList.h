#ifndef REVOLUTION_GX_DISPLAY_LIST_H
#define REVOLUTION_GX_DISPLAY_LIST_H

#include <revolution/types.h>
#include <revolution/gx/GXStruct.h>

#ifdef __cplusplus
extern "C" {
#endif

void    GXBeginDisplayList(void* list, u32 size);
u32     GXEndDisplayList();

void    GXCallDisplayList(void* list, u32 nbytes);

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_GX_DISPLAY_LIST_H
