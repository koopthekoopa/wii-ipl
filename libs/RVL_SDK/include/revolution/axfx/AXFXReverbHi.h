#ifndef REVOLUTION_AXFX_REVERB_HIGH_H
#define REVOLUTION_AXFX_REVERB_HIGH_H

#include <revolution/axfx/AXFXCommon.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef struct AXFX_REVERBHI_EXP {
    f32* earlyLine[AXFX_STEREO_CHANNEL_MAX];            // 0x00
    u32 earlyPos[3];                                    // 0x0C
    u32 earlyLength;                                    // 0x18
    u32 earlyMaxLength;                                 // 0x1C
    f32 earlyCoef[3];                                   // 0x20
    f32* preDelayLine[AXFX_STEREO_CHANNEL_MAX];         // 0x2C
    u32 preDelayPos;                                    // 0x38
    u32 preDelayLength;                                 // 0x3C
    u32 preDelayMaxLength;                              // 0x40
    f32* combLine[AXFX_STEREO_CHANNEL_MAX][3];          // 0x44
    u32 combPos[3];                                     // 0x68
    u32 combLength[3];                                  // 0x74
    u32 combMaxLength[3];                               // 0x80
    f32 combCoef[3];                                    // 0x8C
    f32* allpassLine[AXFX_STEREO_CHANNEL_MAX][2];       // 0x98
    u32 allpassPos[2];                                  // 0xB0
    u32 allpassLength[2];                               // 0xB8
    u32 allpassMaxLength[2];                            // 0xC0
    f32* lastAllpassLine[AXFX_STEREO_CHANNEL_MAX];      // 0xC8
    u32 lastAllpassPos[AXFX_STEREO_CHANNEL_MAX];        // 0xD4
    u32 lastAllpassLength[AXFX_STEREO_CHANNEL_MAX];     // 0xE0
    u32 lastAllpassMaxLength[AXFX_STEREO_CHANNEL_MAX];  // 0xEC
    f32 allpassCoef;                                    // 0xF8
    f32 lastLpfOut[AXFX_STEREO_CHANNEL_MAX];            // 0xFC
    f32 lpfCoef;                                        // 0x108
    u32 active;                                         // 0x10C
    u32 earlyMode;                                      // 0x110
    f32 preDelayTimeMax;                                // 0x114
    f32 preDelayTime;                                   // 0x118
    u32 fusedMode;                                      // 0x11C
    f32 fusedTime;                                      // 0x120
    f32 coloration;                                     // 0x124
    f32 damping;                                        // 0x128
    f32 crosstalk;                                      // 0x12C
    f32 earlyGain;                                      // 0x130
    f32 fusedGain;                                      // 0x134
    AXFX_BUS* busIn;                                    // 0x138
    AXFX_BUS* busOut;                                   // 0x13C
    f32 outGain;                                        // 0x140
    f32 sendGain;                                       // 0x144
} AXFX_REVERBHI_EXP;

typedef struct AXFX_REVERBHI {
    AXFX_REVERBHI_EXP reverbInner;  // 0x00
    f32 coloration;                 // 0x148
    f32 mix;                        // 0x14C
    f32 time;                       // 0x150
    f32 damping;                    // 0x154
    f32 preDelay;                   // 0x158
    f32 crosstalk;                  // 0x15C
} AXFX_REVERBHI;

u32 AXFXReverbHiGetMemSize(AXFX_REVERBHI* reverb);
BOOL AXFXReverbHiInit(AXFX_REVERBHI* reverb);
BOOL AXFXReverbHiSettings(AXFX_REVERBHI* reverb);
BOOL AXFXReverbHiShutdown(AXFX_REVERBHI* reverb);
void AXFXReverbHiCallback(AXFX_BUS* bus, AXFX_REVERBHI* reverb);

u32 AXFXReverbHiExpGetMemSize(AXFX_REVERBHI_EXP* reverb);
BOOL AXFXReverbHiExpInit(AXFX_REVERBHI_EXP* reverb);
BOOL AXFXReverbHiExpSettings(AXFX_REVERBHI_EXP* reverb);
BOOL AXFXReverbHiExpSettingsUpdate(AXFX_REVERBHI_EXP* reverb);
void AXFXReverbHiExpShutdown(AXFX_REVERBHI_EXP* reverb);
void AXFXReverbHiExpCallback(AXFX_BUS* bus, AXFX_REVERBHI_EXP* reverb);

#ifdef __cplusplus
}
#endif

#endif  // REVOLUTION_AXFX_REVERB_HIGH_H
