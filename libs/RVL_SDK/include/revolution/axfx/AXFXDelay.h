#ifndef REVOLUTION_AXFX_DELAY_H
#define REVOLUTION_AXFX_DELAY_H

#include <revolution/axfx/AXFXCommon.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef struct AXFX_DELAY_EXP {
    s32* lineL;                               // 0x00
    s32* lineR;                               // 0x04
    s32* lineS;                               // 0x08
    u32 curPos;                               // 0x0C
    u32 length;                               // 0x10
    u32 maxLength;                            // 0x14
    s32 feedbackGain;                         // 0x18
    s32 lastLpfOut[AXFX_STEREO_CHANNEL_MAX];  // 0x1C
    s32 lpfCoef;                              // 0x28
    s32 outGainCalc;                          // 0x2C
    s32 sendGainCalc;                         // 0x30
    u32 active;                               // 0x34
    f32 maxDelay;                             // 0x38
    f32 delay;                                // 0x3C
    f32 feedback;                             // 0x40
    f32 lpf;                                  // 0x44
    AXFX_BUS* busIn;                          // 0x48
    AXFX_BUS* busOut;                         // 0x4C
    f32 outGain;                              // 0x50
    f32 sendGain;                             // 0x54
} AXFX_DELAY_EXP;

typedef struct AXFX_DELAY {
    s32* line[AXFX_STEREO_CHANNEL_MAX];         // 0x00
    u32 curPos[AXFX_STEREO_CHANNEL_MAX];        // 0x0C
    u32 length[AXFX_STEREO_CHANNEL_MAX];        // 0x18
    s32 feedbackGain[AXFX_STEREO_CHANNEL_MAX];  // 0x24
    s32 outGain[AXFX_STEREO_CHANNEL_MAX];       // 0x30
    u32 active;                                 // 0x3C
    u32 delay[AXFX_STEREO_CHANNEL_MAX];         // 0x48
    u32 feedback[AXFX_STEREO_CHANNEL_MAX];      // 0x54
    u32 output[AXFX_STEREO_CHANNEL_MAX];        // 0x60
} AXFX_DELAY;

u32 AXFXDelayGetMemSize(AXFX_DELAY* delay);
BOOL AXFXDelayInit(AXFX_DELAY* delay);
BOOL AXFXDelaySettings(AXFX_DELAY* delay);
void AXFXDelayShutdown(AXFX_DELAY* delay);
void AXFXDelayCallback(AXFX_BUS* bus, AXFX_DELAY* delay);

u32 AXFXDelayExpGetMemSize(AXFX_DELAY_EXP* delay);
BOOL AXFXDelayExpInit(AXFX_DELAY_EXP* delay);
BOOL AXFXDelayExpSettings(AXFX_DELAY_EXP* delay);
BOOL AXFXDelayExpSettingsUpdate(AXFX_DELAY_EXP* delay);
void AXFXDelayExpShutdown(AXFX_DELAY_EXP* delay);
void AXFXDelayExpCallback(AXFX_BUS* bus, AXFX_DELAY_EXP* delay);

#ifdef __cplusplus
}
#endif

#endif  // REVOLUTION_AXFX_DELAY_H
