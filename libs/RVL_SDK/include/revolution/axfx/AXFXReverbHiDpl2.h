#ifndef REVOLUTION_AXFX_REVERB_HIGH_DPL2_H
#define REVOLUTION_AXFX_REVERB_HIGH_DPL2_H

#include <revolution/axfx/AXFXCommon.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef struct AXFX_REVERBHI_EXP_DPL2 {
    f32* earlyLine[AXFX_DPL2_CHANNEL_MAX];            // 0x00
    u32 earlyPos[3];                                  // 0x10
    u32 earlyLength;                                  // 0x1C
    u32 earlyMaxLength;                               // 0x20
    f32 earlyCoef[3];                                 // 0x24
    f32* preDelayLine[AXFX_DPL2_CHANNEL_MAX];         // 0x30
    u32 preDelayPos;                                  // 0x40
    u32 preDelayLength;                               // 0x44
    u32 preDelayMaxLength;                            // 0x48
    f32* combLine[AXFX_DPL2_CHANNEL_MAX][3];          // 0x4C
    u32 combPos[3];                                   // 0x7C
    u32 combLength[3];                                // 0x88
    u32 combMaxLength[3];                             // 0x94
    f32 combCoef[3];                                  // 0xA0
    f32* allpassLine[AXFX_DPL2_CHANNEL_MAX][2];       // 0xAC
    u32 allpassPos[2];                                // 0xCC
    u32 allpassLength[2];                             // 0xD4
    u32 allpassMaxLength[2];                          // 0xE4
    f32* lastAllpassLine[AXFX_DPL2_CHANNEL_MAX];      // 0xF4
    u32 lastAllpassPos[AXFX_DPL2_CHANNEL_MAX];        // 0x104
    u32 lastAllpassLength[AXFX_DPL2_CHANNEL_MAX];     // 0x114
    u32 lastAllpassMaxLength[AXFX_DPL2_CHANNEL_MAX];  // 0x124
    f32 allpassCoef;                                  // 0x128
    f32 lastLpfOut[AXFX_DPL2_CHANNEL_MAX];            // 0x138
    f32 lpfCoef;                                      // 0x130
    u32 active;                                       // 0x13C
    u32 earlyMode;                                    // 0x140
    f32 preDelayTimeMax;                              // 0x144
    f32 preDelayTime;                                 // 0x148
    u32 fusedMode;                                    // 0x14C
    f32 fusedTime;                                    // 0x150
    f32 coloration;                                   // 0x154
    f32 damping;                                      // 0x158
    f32 crosstalk;                                    // 0x15C
    f32 earlyGain;                                    // 0x160
    f32 fusedGain;                                    // 0x164
    AXFX_BUS_DPL2* busIn;                             // 0x168
    AXFX_BUS_DPL2* busOut;                            // 0x16C
    f32 outGain;                                      // 0x170
    f32 sendGain;                                     // 0x174
} AXFX_REVERBHI_EXP_DPL2;

typedef struct AXFX_REVERBHI_DPL2 {
    AXFX_REVERBHI_EXP_DPL2 reverbInner;  // 0x00
    f32 coloration;                      // 0x178
    f32 mix;                             // 0x17C
    f32 time;                            // 0x180
    f32 damping;                         // 0x184
    f32 preDelay;                        // 0x188
    f32 crosstalk;                       // 0x118C
} AXFX_REVERBHI_DPL2;

u32 AXFXReverbHiGetMemSizeDpl2(AXFX_REVERBHI_DPL2* reverb);
BOOL AXFXReverbHiInitDpl2(AXFX_REVERBHI_DPL2* reverb);
BOOL AXFXReverbHiSettingsDpl2(AXFX_REVERBHI_DPL2* reverb);
BOOL AXFXReverbHiShutdownDpl2(AXFX_REVERBHI_DPL2* reverb);
void AXFXReverbHiCallbackDpl2(AXFX_BUS_DPL2* bus, AXFX_REVERBHI_DPL2* reverb);

u32 AXFXReverbHiExpGetMemSizeDpl2(AXFX_REVERBHI_EXP_DPL2* reverb);
BOOL AXFXReverbHiExpInitDpl2(AXFX_REVERBHI_EXP_DPL2* reverb);
BOOL AXFXReverbHiExpSettingsDpl2(AXFX_REVERBHI_EXP_DPL2* reverb);
BOOL AXFXReverbHiExpSettingsUpdateDpl2(AXFX_REVERBHI_EXP_DPL2* reverb);
void AXFXReverbHiExpShutdownDpl2(AXFX_REVERBHI_EXP_DPL2* reverb);
void AXFXReverbHiExpCallbackDpl2(AXFX_BUS_DPL2* bus, AXFX_REVERBHI_EXP_DPL2* reverb);

#ifdef __cplusplus
}
#endif

#endif  // REVOLUTION_AXFX_REVERB_HIGH_DPL2_H
