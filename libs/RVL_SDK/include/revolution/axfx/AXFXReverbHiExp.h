#ifndef REVOLUTION_AXFX_REVERB_HI_EXP_H
#define REVOLUTION_AXFX_REVERB_HI_EXP_H

#include <revolution/axfx/AXFXCommon.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef struct AXFX_REVERBHI_EXP {
    f32*        earlyLine[3];               // 0x00
    u32         earlyPos[3];                // 0x0C
    u32         earlyLength;                // 0x18
    u32         earlyMaxLength;             // 0x1C
    f32         earlyCoef[3];               // 0x20

    f32*        preDelayLine[3];            // 0x2C
    u32         preDelayPos;                // 0x38
    u32         preDelayLength;             // 0x3C
    u32         preDelayMaxLength;          // 0x40

    f32*        combLine[3][3];             // 0x44
    u32         combPos[3];                 // 0x68
    u32         combLength[3];              // 0x74
    u32         combMaxLength[3];           // 0x80
    f32         combCoef[3];                // 0x8C

    f32*        allpassLine[3][2];          // 0x98
    u32         allpassPos[2];              // 0xB0
    u32         allpassLength[2];           // 0xB8
    u32         allpassMaxLength[2];        // 0xC0

    f32*        lastAllpassLine[3];         // 0xC8
    u32         lastAllpassPos[3];          // 0xD4
    u32         lastAllpassLength[3];       // 0xE0
    u32         lastAllpassMaxLength[3];    // 0xEC

    f32         allpassCoef;                // 0xF8
    f32         lastLpfOut[3];              // 0xFC
    f32         lpfCoef;                    // 0x108
    u32         active;                     // 0x10C
    u32         earlyMode;                  // 0x110
    f32         preDelayTimeMax;            // 0x114
    f32         preDelayTime;               // 0x118
    u32         fusedMode;                  // 0x11C
    f32         fusedTime;                  // 0x120
    f32         coloration;                 // 0x124
    f32         damping;                    // 0x128
    f32         crosstalk;                  // 0x12C
    f32         earlyGain;                  // 0x130
    f32         fusedGain;                  // 0x134
    AXFX_BUS*   busIn;                      // 0x138
    AXFX_BUS*   busOut;                     // 0x13C
    f32         outGain;                    // 0x140
    f32         sendGain;                   // 0x144
} AXFX_REVERBHI_EXP;

u32     AXFXReverbHiExpGetMemSize(const AXFX_REVERBHI_EXP* fx);
BOOL    AXFXReverbHiExpInit(AXFX_REVERBHI_EXP* fx);
void    AXFXReverbHiExpShutdown(AXFX_REVERBHI_EXP* fx);
BOOL    AXFXReverbHiExpSettings(AXFX_REVERBHI_EXP* fx);
void    AXFXReverbHiExpCallback(AXFX_BUFFERUPDATE* update, AXFX_REVERBHI_EXP* fx);

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_AXFX_REVERB_HI_EXP_H
