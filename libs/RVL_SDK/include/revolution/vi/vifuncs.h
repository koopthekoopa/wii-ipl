#ifndef REVOLUTION_VI_FUNCTIONS_H
#define REVOLUTION_VI_FUNCTIONS_H

#include <revolution/vi/vitypes.h>
#include <revolution/gx/GXStruct.h>

#ifdef __cplusplus
extern "C" {
#endif

#define VIPadFrameBufferWidth(width) ((u16)(((u16)(width) + 15) & ~15))

void    VIInit();
void    VIWaitForRetrace();

void    VIConfigure(const GXRenderModeObj *rm);
void    VIConfigurePan(u16 xOrg, u16 yOrg, u16 width, u16 height);

VIRetraceCallback VISetPreRetraceCallback(VIRetraceCallback cb);
VIRetraceCallback VISetPostRetraceCallback(VIRetraceCallback cb);

#define VI_DTV_COMPONENT    (1 << 0)

void    VIFlush();
void    VISetNextFrameBuffer(void* fb);

void    VISetBlack(BOOL setBlack);

void    VISetTrapFilter(BOOL setTrap);
void    VIResetDimmingCount();
void    VIEnableDimming(BOOL enableDim);

u32     VIGetRetraceCount();
u32     VIGetDTVStatus();
u32     VIGetScanMode();

u32     VIGetTvFormat();

u32     VIGetCurrentLine();

void*   VIGetCurrentFrameBuffer();

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_VI_FUNCTIONS_H
