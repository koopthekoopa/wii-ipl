#ifndef REVOLUTION_AXFX_REVERB_STANDARD_H
#define REVOLUTION_AXFX_REVERB_STANDARD_H

#include <revolution/axfx/AXFXCommon.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef struct AXFX_REVERBSTD_EXP {
    f32* earlyLine[AXFX_STEREO_CHANNEL_MAX];       // 0x00
    u32 earlyPos;                                  // 0x0C
    u32 earlyLength;                               // 0x10
    u32 earlyMaxLength;                            // 0x14
    f32 earlyCoef;                                 // 0x18
    f32* preDelayLine[AXFX_STEREO_CHANNEL_MAX];    // 0x1C
    u32 preDelayPos;                               // 0x28
    u32 preDelayLength;                            // 0x2C
    u32 preDelayMaxLength;                         // 0x30
    f32* combLine[AXFX_STEREO_CHANNEL_MAX][2];     // 0x34
    u32 combPos[2];                                // 0x4C
    u32 combLength[2];                             // 0x54
    u32 combMaxLength[2];                          // 0x5C
    f32 combCoef[2];                               // 0x64
    f32* allpassLine[AXFX_STEREO_CHANNEL_MAX][2];  // 0x6C
    u32 allpassPos[2];                             // 0x84
    u32 allpassLength[2];                          // 0x8C
    u32 allpassMaxLength[2];                       // 0x94
    f32 allpassCoef;                               // 0x9C
    f32 lastLpfOut[AXFX_STEREO_CHANNEL_MAX];       // 0xA0
    f32 lpfCoef;                                   // 0xAC
    u32 active;                                    // 0xB0
    u32 earlyMode;                                 // 0xB4
    f32 preDelayTimeMax;                           // 0xB8
    f32 preDelayTime;                              // 0xBC
    u32 fusedMode;                                 // 0xC0
    f32 fusedTime;                                 // 0xC4
    f32 coloration;                                // 0xC8
    f32 damping;                                   // 0xCC
    f32 earlyGain;                                 // 0xD0
    f32 fusedGain;                                 // 0xD4
    AXFX_BUS* busIn;                               // 0xD8
    AXFX_BUS* busOut;                              // 0xDC
    f32 outGain;                                   // 0xE0
    f32 sendGain;                                  // 0xE4
} AXFX_REVERBSTD_EXP;

typedef struct AXFX_REVERBSTD {
    AXFX_REVERBSTD_EXP reverbInner;  // 0x00
    f32 coloration;                  // 0xE8
    f32 mix;                         // 0xEC
    f32 time;                        // 0xF0
    f32 damping;                     // 0xF4
    f32 preDelay;                    // 0xF8
} AXFX_REVERBSTD;

u32 AXFXReverbStdGetMemSize(AXFX_REVERBSTD* reverb);
BOOL AXFXReverbStdInit(AXFX_REVERBSTD* reverb);
BOOL AXFXReverbStdSettings(AXFX_REVERBSTD* reverb);
BOOL AXFXReverbStdShutdown(AXFX_REVERBSTD* reverb);
void AXFXReverbStdCallback(AXFX_BUS* bus, AXFX_REVERBSTD* reverb);

u32 AXFXReverbStdExpGetMemSize(AXFX_REVERBSTD_EXP* reverb);
BOOL AXFXReverbStdExpInit(AXFX_REVERBSTD_EXP* reverb);
BOOL AXFXReverbStdExpSettings(AXFX_REVERBSTD_EXP* reverb);
BOOL AXFXReverbStdExpSettingsUpdate(AXFX_REVERBSTD_EXP* reverb);
void AXFXReverbStdExpShutdown(AXFX_REVERBSTD_EXP* reverb);
void AXFXReverbStdExpCallback(AXFX_BUS* bus, AXFX_REVERBSTD_EXP* reverb);

#ifdef __cplusplus
}
#endif

#endif  // REVOLUTION_AXFX_REVERB_STANDARD_H
