#ifndef REVOLUTION_GX_MANAGE_H
#define REVOLUTION_GX_MANAGE_H

#include <revolution/types.h>

#ifdef __cplusplus
extern "C" {
#endif

void    GXPixModeSync();

void    GXDrawDone();

void    GXFlush();

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_GX_MANAGE_H
