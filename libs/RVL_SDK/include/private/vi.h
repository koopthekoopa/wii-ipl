#ifndef PRIVATE_VI_H
#define PRIVATE_VI_H

#include <revolution/vi.h>

#ifdef __cplusplus
extern "C" {
#endif

void __VIInit(VITVMode mode);
void __VISetAdjustingValues(s16 x, s16 y);
void __VIGetAdjustingValues(s16* x, s16* y);
void __VIGetCurrentPosition(s16* x, s16* y);
void __VIDisableDimming();
BOOL __VISetAutoDimming();
u32 __VISetDimmingCountLimit(u32 limit);
u32 __VISetDVDStopMotorCountLimit(u32 limit);
BOOL __VIResetDev0Idle();
BOOL __VIResetRFIdle();
BOOL __VIResetSIIdle();
BOOL __VIResetDev0Idle();
BOOL __VIResetDev1Idle();
BOOL __VIResetDev2Idle();
BOOL __VIResetDev3Idle();
BOOL __VIResetDev4Idle();
BOOL __VIResetDev5Idle();
BOOL __VIResetDev6Idle();
BOOL __VIResetDev7Idle();
BOOL __VIResetDev8Idle();
BOOL __VIResetDev9Idle();

BOOL __VISendI2CData(u8 slaveAddr, u8* pData, int nBytes);
BOOL __VIReceiveI2CData(u8 slaveAddr, u8* pData, int nBytes);
void WaitMicroTime(s32 usec);

#include <private/vi/i2c.h>
#include <private/vi/vi3in1.h>

#ifdef __cplusplus
}
#endif  // __cplusplus

#endif  // PRIVATE_VI_H
