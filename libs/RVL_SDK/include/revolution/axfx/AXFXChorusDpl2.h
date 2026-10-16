#ifndef REVOLUTION_AXFX_CHORUS_DPL2_H
#define REVOLUTION_AXFX_CHORUS_DPL2_H

#include <revolution/axfx/AXFXCommon.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef struct AXFX_CHORUS_EXP_LFO_DPL2 {
    s32* table;      // 0x00
    s32 phaseAdd;    // 0x04
    s32 stepSamp;    // 0x08
    s32 depthSamp;   // 0x0C
    u32 phase;       // 0x10
    u32 sign;        // 0x14
    u32 lastNum;     // 0x18
    s32 lastValue;   // 0x1C
    s32 grad;        // 0x20
    s32 gradFactor;  // 0x24
} AXFX_CHORUS_EXP_LFO_DPL2;

typedef struct AXFX_CHORUS_EXP_DELAY_DPL2 {
    f32* line[AXFX_DPL2_CHANNEL_MAX];  // 0x00
    u32 inPos;                         // 0x10
    u32 outPos;                        // 0x14
    u32 lastPos;                       // 0x18
    u32 sizeFP;                        // 0x1C
    u32 size;                          // 0x20
} AXFX_CHORUS_EXP_DELAY_DPL2;

typedef struct AXFX_CHORUS_EXP_DPL2 {
    AXFX_CHORUS_EXP_DELAY_DPL2 delay;       // 0x00
    AXFX_CHORUS_EXP_LFO_DPL2 lfo;           // 0x24
    f32 history[AXFX_DPL2_CHANNEL_MAX][4];  // 0x4C
    u32 histIndex;                          // 0x8C
    u32 active;                             // 0x90
    f32 delayTime;                          // 0x94
    f32 depth;                              // 0x98
    f32 rate;                               // 0x9C
    f32 feedback;                           // 0xA0
    AXFX_BUS_DPL2* busIn;                   // 0xA4
    AXFX_BUS_DPL2* busOut;                  // 0xA8
    f32 outGain;                            // 0xAC
    f32 sendGain;                           // 0xB0
} AXFX_CHORUS_EXP_DPL2;

typedef struct AXFX_CHORUS_DPL2 {
    AXFX_CHORUS_EXP_DPL2 chorusInner;  // 0x00
    u32 baseDelay;                     // 0xB0
    u32 variation;                     // 0xB4
    u32 period;                        // 0xB8
} AXFX_CHORUS_DPL2;

u32 AXFXChorusGetMemSizeDpl2(AXFX_CHORUS_DPL2* chorus);
BOOL AXFXChorusInitDpl2(AXFX_CHORUS_DPL2* chorus);
BOOL AXFXChorusSettingsDpl2(AXFX_CHORUS_DPL2* chorus);
BOOL AXFXChorusShutdownDpl2(AXFX_CHORUS_DPL2* chorus);
void AXFXChorusCallbackDpl2(AXFX_BUS_DPL2* bus, AXFX_CHORUS_DPL2* chorus);

u32 AXFXChorusExpGetMemSizeDpl2(AXFX_CHORUS_EXP_DPL2* chorus);
BOOL AXFXChorusExpInitDpl2(AXFX_CHORUS_EXP_DPL2* chorus);
BOOL AXFXChorusExpSettingsDpl2(AXFX_CHORUS_EXP_DPL2* chorus);
BOOL AXFXChorusExpSettingsUpdateDpl2(AXFX_CHORUS_EXP_DPL2* chorus);
void AXFXChorusExpShutdownDpl2(AXFX_CHORUS_EXP_DPL2* chorus);
void AXFXChorusExpCallbackDpl2(AXFX_BUS_DPL2* bus, AXFX_CHORUS_EXP_DPL2* chorus);

#ifdef __cplusplus
}
#endif

#endif  // REVOLUTION_AXFX_CHORUS_DPL2_H
