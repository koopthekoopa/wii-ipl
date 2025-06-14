#ifndef REVOLUTION_AXFX_REVERB_HI_EXP_DPL2_H
#define REVOLUTION_AXFX_REVERB_HI_EXP_DPL2_H

#include <revolution/axfx/AXFXCommon.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef struct AXFX_REVERBHI_EXP_DPL2 {
    f32*        earlyLine[4];               // 0x00
    u32         earlyPos[3];                // 0x10
    u32         earlyLength;                // 0x1C
    u32         earlyMaxLength;             // 0x20
    f32         earlyCoef[3];               // 0x24

    f32*        preDelayLine[4];            // 0x30
    u32         preDelayPos;                // 0x40
    u32         preDelayLength;             // 0x44
    u32         preDelayMaxLength;          // 0x48

    f32*        combLine[4][3];             // 0x4C
    u32         combPos[3];                 // 0x7C
    u32         combLength[3];              // 0x88
    u32         combMaxLength[3];           // 0x94
    f32         combCoef[3];                // 0xA0

    f32*        allpassLine[4][2];          // 0xAC
    u32         allpassPos[2];              // 0xCC
    u32         allpassLength[2];           // 0xD4
    u32         allpassMaxLength[2];        // 0xDC

    f32*        lastAllpassLine[4];         // 0xE4
    u32         lastAllpassPos[4];          // 0xF4
    u32         lastAllpassLength[4];       // 0x104
    u32         lastAllpassMaxLength[4];    // 0x114

    f32         allpassCoef;                // 0x124
    f32         lastLpfOut[4];              // 0x128
    f32         lpfCoef;                    // 0x138
    u32         active;                     // 0x13C
    u32         earlyMode;                  // 0x140
    f32         preDelayTimeMax;            // 0x144
    f32         preDelayTime;               // 0x148
    u32         fusedMode;                  // 0x14C
    f32         fusedTime;                  // 0x150
    f32         coloration;                 // 0x154
    f32         damping;                    // 0x158
    f32         crosstalk;                  // 0x15C
    f32         earlyGain;                  // 0x160
    f32         fusedGain;                  // 0x164
    AXFX_BUS*   busIn;                      // 0x168
    AXFX_BUS*   busOut;                     // 0x16C
    f32         outGain;                    // 0x170
    f32         sendGain;                   // 0x174
} AXFX_REVERBHI_EXP_DPL2;

u32     AXFXReverbHiExpGetMemSizeDpl2(const AXFX_REVERBHI_EXP_DPL2* fx);
BOOL    AXFXReverbHiExpInitDpl2(AXFX_REVERBHI_EXP_DPL2* fx);
void    AXFXReverbHiExpShutdownDpl2(AXFX_REVERBHI_EXP_DPL2* fx);
BOOL    AXFXReverbHiExpSettingsDpl2(AXFX_REVERBHI_EXP_DPL2* fx);
void    AXFXReverbHiExpCallbackDpl2(AXFX_BUFFERUPDATE_DPL2* update, AXFX_REVERBHI_EXP_DPL2* fx);


#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_AXFX_REVERB_HI_EXP_DPL2_H
