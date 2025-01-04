#ifndef REVOLUTION_VI_FUNCTIONS_H
#define REVOLUTION_VI_FUNCTIONS_H

#include <revolution/types.h>
#include <revolution/gx/GXStruct.h>

#ifdef __cplusplus
extern "C" {
#endif

#define VIPadFrameBufferWidth(width) ((u16)(((u16)(width) + 15) & ~15))

void    VIInit();
void    VIWaitForRetrace();

void    VIConfigure(GXRenderModeObj *rm);

void    VIFlush();
void    VISetNextFrameBuffer(void *fb);

void    VISetBlack(BOOL setBlack);

void    VISetTrapFilter(BOOL setTrap);
void    VIEnableDimming(BOOL enableDim);

u32     VIGetRetraceCount();
u32     VIGetDTVStatus();

u32     VIGetTvFormat();

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_VI_FUNCTIONS_H
