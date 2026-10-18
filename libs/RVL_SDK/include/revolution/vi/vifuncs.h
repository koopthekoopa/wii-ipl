#ifndef REVOLUTION_VI_FUNCTIONS_H
#define REVOLUTION_VI_FUNCTIONS_H

#include <revolution/types.h>

#include <revolution/gx/GXStruct.h>
#include <revolution/vi/vitypes.h>

#ifdef __cplusplus
extern "C" {
#endif

VIRetraceCallback VISetPreRetraceCallback(VIRetraceCallback cb);
VIRetraceCallback VISetPostRetraceCallback(VIRetraceCallback cb);
void VIInit();
void VIWaitForRetrace();
void VIConfigure(const GXRenderModeObj* rm);
void VIConfigurePan(u16 xOrg, u16 yOrg, u16 width, u16 height);
void VIFlush();
void VISetNextFrameBuffer(void* fb);
void VISetNextRightFrameBuffer(void* fb);
void VISetBlack(BOOL black);
void VISet3D(BOOL threeD);
u32 VIGetRetraceCount();
u32 VIGetNextField();
u32 VIGetCurrentLine();
u32 VIGetTvFormat();
void* VIGetNextFrameBuffer();
void* VIGetCurrentFrameBuffer();
u32 VIGetScanMode();
u32 VIGetDTVStatus();
s32 VIGetVSyncTimingTest();
void VISetVSyncTimingTest();
s32 VIGetDimmingCount();
s32 VIGetDVDStopMotorCount();
BOOL VIEnableDimming(BOOL flag);
VITimeToDIM VISetTimeToDimming(VITimeToDIM time);
BOOL VIResetDimmingCount();
BOOL VIEnableDVDStopMotor(BOOL flag);

#define VI_I2C_TYPE_REVERSE 0
#define VI_I2C_TYPE_NORMAL 1

s32 VIGetI2CType();

#ifdef __cplusplus
}
#endif

#endif  // REVOLUTION_VI_FUNCTIONS_H
