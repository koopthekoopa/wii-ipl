#ifndef REVOLUTION_AXFX_REVERB_STANDARD_DPL2_H
#define REVOLUTION_AXFX_REVERB_STANDARD_DPL2_H

#include <revolution/axfx/AXFXCommon.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef struct AXFX_REVERBSTD_EXP_DPL2 {
    f32* earlyLine[AXFX_DPL2_CHANNEL_MAX];       // 0x00
    u32 earlyPos;                                // 0x10
    u32 earlyLength;                             // 0x14
    u32 earlyMaxLength;                          // 0x18
    f32 earlyCoef;                               // 0x1C
    f32* preDelayLine[AXFX_DPL2_CHANNEL_MAX];    // 0x20
    u32 preDelayPos;                             // 0x30
    u32 preDelayLength;                          // 0x34
    u32 preDelayMaxLength;                       // 0x38
    f32* combLine[AXFX_DPL2_CHANNEL_MAX][2];     // 0x3C
    u32 combPos[2];                              // 0x5C
    u32 combLength[2];                           // 0x64
    u32 combMaxLength[2];                        // 0x6C
    f32 combCoef[2];                             // 0x74
    f32* allpassLine[AXFX_DPL2_CHANNEL_MAX][2];  // 0x7C
    u32 allpassPos[2];                           // 0x9C
    u32 allpassLength[2];                        // 0xA4
    u32 allpassMaxLength[2];                     // 0xAC
    f32 allpassCoef;                             // 0xB4
    f32 lastLpfOut[AXFX_DPL2_CHANNEL_MAX];       // 0xB8
    f32 lpfCoef;                                 // 0xC8
    u32 active;                                  // 0xCC
    u32 earlyMode;                               // 0xD0
    f32 preDelayTimeMax;                         // 0xD4
    f32 preDelayTime;                            // 0xD8
    u32 fusedMode;                               // 0xDC
    f32 fusedTime;                               // 0xE0
    f32 coloration;                              // 0xE4
    f32 damping;                                 // 0xE8
    f32 earlyGain;                               // 0xEC
    f32 fusedGain;                               // 0xF0
    AXFX_BUS_DPL2* busIn;                        // 0xF4
    AXFX_BUS_DPL2* busOut;                       // 0xF8
    f32 outGain;                                 // 0xFC
    f32 sendGain;                                // 0x100
} AXFX_REVERBSTD_EXP_DPL2;

typedef struct AXFX_REVERBSTD_DPL2 {
    AXFX_REVERBSTD_EXP_DPL2 reverbInner;  // 0x00
    f32 coloration;                       // 0x104
    f32 mix;                              // 0x108
    f32 time;                             // 0x10C
    f32 damping;                          // 0x110
    f32 preDelay;                         // 0x114
} AXFX_REVERBSTD_DPL2;

u32 AXFXReverbStdGetMemSizeDpl2(AXFX_REVERBSTD_DPL2* reverb);
BOOL AXFXReverbStdInitDpl2(AXFX_REVERBSTD_DPL2* reverb);
BOOL AXFXReverbStdSettingsDpl2(AXFX_REVERBSTD_DPL2* reverb);
BOOL AXFXReverbStdShutdownDpl2(AXFX_REVERBSTD_DPL2* reverb);
void AXFXReverbStdCallbackDpl2(AXFX_BUS_DPL2* bus, AXFX_REVERBSTD_DPL2* reverb);

u32 AXFXReverbStdExpGetMemSizeDpl2(AXFX_REVERBSTD_EXP_DPL2* reverb);
BOOL AXFXReverbStdExpInitDpl2(AXFX_REVERBSTD_EXP_DPL2* reverb);
BOOL AXFXReverbStdExpSettingsDpl2(AXFX_REVERBSTD_EXP_DPL2* reverb);
BOOL AXFXReverbStdExpSettingsUpdateDpl2(AXFX_REVERBSTD_EXP_DPL2* reverb);
void AXFXReverbStdExpShutdownDpl2(AXFX_REVERBSTD_EXP_DPL2* reverb);
void AXFXReverbStdExpCallbackDpl2(AXFX_BUS_DPL2* bus, AXFX_REVERBSTD_EXP_DPL2* reverb);

#ifdef __cplusplus
}
#endif

#endif  // REVOLUTION_AXFX_REVERB_STANDARD_DPL2_H
