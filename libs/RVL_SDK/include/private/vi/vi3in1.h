#ifndef PRIVATE_VI_3IN1_H
#define PRIVATE_VI_3IN1_H

#include <revolution/types.h>

#include <revolution/vi/vitypes.h>

#ifdef __cplusplus
extern "C" {
#endif

extern volatile BOOL Vdac_Flag_Changed;

typedef struct {
    u16 unk_0x00[6];
    u8 unk_0x0C[7];
    u16 unk_0x14[7];
} __VIGammaImm;

typedef u8 __VIMacrovisionImm[26];

void __VISetVolume(u8 leftVolume, u8 rightVolume);
void __VISetYUVSEL(u8 yuvsel);
void __VISetTiming(s32 timing);
void __VISet3in1Output(u8 output);
void __VISetFilter4EURGB60(u8 filter);
void __VISetVBICtrl(u8 arg0, u8 arg1, u8 arg2);
u32 __VIGetVenderID();
void __VISetCGMS();
void __VISetCGMSClear();
void __VISetWSS();
void __VISetClosedCaption();
void __VISetMacrovisionImm(__VIMacrovisionImm macrovisionImm);
void __VISetMacrovision();
void __VISetGammaImm(__VIGammaImm* gammaImm);
void __VISetGamma1_0();
void __VISetGamma();
void __VISetTrapFilterImm(u8 flag);
void __VISetTrapFilter();
void __VISetRGBOverDrive();
void __VISetDTVMode();
void __VISetRGBModeImm();
void __VISetLegacyMode();
void __VISetDVDMode();
void __VISetRevolutionMode();
void __VISetRevolutionModeSimple();
void __VISetRevolutionModeNoRetrace();
void __VIInit3in1(VITVMode tvMode);

#ifdef __cplusplus
}
#endif  // __cplusplus

#endif  // PRIVATE_VI_3IN1_H
