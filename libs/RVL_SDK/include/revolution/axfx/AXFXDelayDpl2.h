#ifndef REVOLUTION_AXFX_DELAY_DPL2_H
#define REVOLUTION_AXFX_DELAY_DPL2_H

#include <revolution/axfx/AXFXCommon.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef struct AXFX_DELAY_EXP_DPL2 {
    s32* line[AXFX_DPL2_CHANNEL_MAX];       // 0x00
    u32 curPos;                             // 0x10
    u32 length;                             // 0x14
    u32 maxLength;                          // 0x18
    s32 feedbackGain;                       // 0x1C
    s32 lastLpfOut[AXFX_DPL2_CHANNEL_MAX];  // 0x20
    s32 lpfCoef;                            // 0x30
    s32 outGainCalc;                        // 0x34
    s32 sendGainCalc;                       // 0x38
    u32 active;                             // 0x3C
    f32 maxDelay;                           // 0x40
    f32 delay;                              // 0x44
    f32 feedback;                           // 0x48
    f32 lpf;                                // 0x4C
    AXFX_BUS_DPL2* busIn;                   // 0x50
    AXFX_BUS_DPL2* busOut;                  // 0x54
    f32 outGain;                            // 0x58
    f32 sendGain;                           // 0x5C
} AXFX_DELAY_EXP_DPL2;

typedef struct AXFX_DELAY_DPL2 {
    s32* line[AXFX_DPL2_CHANNEL_MAX];         // 0x00
    u32 curPos[AXFX_DPL2_CHANNEL_MAX];        // 0x10
    u32 length[AXFX_DPL2_CHANNEL_MAX];        // 0x20
    s32 feedbackGain[AXFX_DPL2_CHANNEL_MAX];  // 0x30
    s32 outGain[AXFX_DPL2_CHANNEL_MAX];       // 0x40
    u32 active;                               // 0x50
    u32 delay[AXFX_DPL2_CHANNEL_MAX];         // 0x60
    u32 feedback[AXFX_DPL2_CHANNEL_MAX];      // 0x70
    u32 output[AXFX_DPL2_CHANNEL_MAX];        // 0x80
} AXFX_DELAY_DPL2;

u32 AXFXDelayGetMemSizeDpl2(AXFX_DELAY_DPL2* delay);
BOOL AXFXDelayInitDpl2(AXFX_DELAY_DPL2* delay);
BOOL AXFXDelaySettingsDpl2(AXFX_DELAY_DPL2* delay);
BOOL AXFXDelaySettingsUpdateDpl2(AXFX_DELAY_DPL2* delay);
void AXFXDelayShutdownDpl2(AXFX_DELAY_DPL2* delay);
void AXFXDelayCallbackDpl2(AXFX_BUS_DPL2* bus, AXFX_DELAY_DPL2* delay);

u32 AXFXDelayExpGetMemSizeDpl2(AXFX_DELAY_EXP_DPL2* delay);
BOOL AXFXDelayExpInitDpl2(AXFX_DELAY_EXP_DPL2* delay);
BOOL AXFXDelayExpSettingsDpl2(AXFX_DELAY_EXP_DPL2* delay);
BOOL AXFXDelayExpSettingsUpdateDpl2(AXFX_DELAY_EXP_DPL2* delay);
void AXFXDelayExpShutdownDpl2(AXFX_DELAY_EXP_DPL2* delay);
void AXFXDelayExpCallbackDpl2(AXFX_BUS_DPL2* bus, AXFX_DELAY_EXP_DPL2* delay);

#ifdef __cplusplus
}
#endif

#endif  // REVOLUTION_AXFX_DELAY_DPL2_H
