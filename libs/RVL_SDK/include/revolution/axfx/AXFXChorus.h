#ifndef REVOLUTION_AXFX_CHORUS_H
#define REVOLUTION_AXFX_CHORUS_H

#include <revolution/axfx/AXFXCommon.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef struct AXFX_CHORUS_EXP_LFO {
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
} AXFX_CHORUS_EXP_LFO;

typedef struct AXFX_CHORUS_EXP_DELAY {
    f32* line[AXFX_STEREO_CHANNEL_MAX];  // 0x00
    u32 inPos;                           // 0x0C
    u32 outPos;                          // 0x10
    u32 lastPos;                         // 0x14
    u32 sizeFP;                          // 0x18
    u32 size;                            // 0x1C
} AXFX_CHORUS_EXP_DELAY;

typedef struct AXFX_CHORUS_EXP {
    AXFX_CHORUS_EXP_DELAY delay;              // 0x00
    AXFX_CHORUS_EXP_LFO lfo;                  // 0x20
    f32 history[AXFX_STEREO_CHANNEL_MAX][4];  // 0x48
    u32 histIndex;                            // 0x78
    u32 active;                               // 0x7C
    f32 delayTime;                            // 0x80
    f32 depth;                                // 0x84
    f32 rate;                                 // 0x88
    f32 feedback;                             // 0x8C
    AXFX_BUS* busIn;                          // 0x90
    AXFX_BUS* busOut;                         // 0x94
    f32 outGain;                              // 0x98
    f32 sendGain;                             // 0x9C
} AXFX_CHORUS_EXP;

typedef struct AXFX_CHORUS {
    AXFX_CHORUS_EXP chorusInner;  // 0x00
    u32 baseDelay;                // 0xA0
    u32 variation;                // 0xA4
    u32 period;                   // 0xA8
} AXFX_CHORUS;

u32 AXFXChorusGetMemSize(AXFX_CHORUS* chorus);
BOOL AXFXChorusInit(AXFX_CHORUS* chorus);
BOOL AXFXChorusSettings(AXFX_CHORUS* chorus);
BOOL AXFXChorusShutdown(AXFX_CHORUS* chorus);
void AXFXChorusCallback(AXFX_BUS* bus, AXFX_CHORUS* chorus);

u32 AXFXChorusExpGetMemSize(AXFX_CHORUS_EXP* chorus);
BOOL AXFXChorusExpInit(AXFX_CHORUS_EXP* chorus);
BOOL AXFXChorusExpSettings(AXFX_CHORUS_EXP* chorus);
BOOL AXFXChorusExpSettingsUpdate(AXFX_CHORUS_EXP* chorus);
void AXFXChorusExpShutdown(AXFX_CHORUS_EXP* chorus);
void AXFXChorusExpCallback(AXFX_BUS* bus, AXFX_CHORUS_EXP* chorus);

#ifdef __cplusplus
}
#endif

#endif  // REVOLUTION_AXFX_CHORUS_H
