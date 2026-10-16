#ifndef REVOLUTION_VI_3IN1_H
#define REVOLUTION_VI_3IN1_H

#include <revolution/types.h>

#include <revolution/vi/vi3in1types.h>

#ifdef __cplusplus
extern "C" {
#endif

void VISetCGMS(u8 wd0, u8 wd1, u8 wd2);
BOOL VIGetCGMS(u8* wd0, u8* wd1, u8* wd2);
void VISetWSS(u8 gp1, u8 gp2, u8 gp3, u8 gp4);
BOOL VIGetWSS(u8* gp1, u8* gp2, u8* gp3, u8* gp4);
void VISetClosedCaption(u8 cc1, u8 cc2, u8 cc3, u8 cc4);
void VISetMacrovision(VIMacrovision macrovision);
void VISetGamma(VIGamma gamma);
void VISetTrapFilter(u8 flag);
void VISetRGBOverDrive(int level);
void VISetRGBModeImm();
void VISetDTVMode();
void VISetRVAMode();

#ifdef __cplusplus
}
#endif

#endif  // REVOLUTION_VI_3IN1_H
