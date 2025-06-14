#ifndef REVOLUTION_AXFX_CHORUS_EXP_H
#define REVOLUTION_AXFX_CHORUS_EXP_H

#include <revolution/axfx/AXFXCommon.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef struct AXFX_CHORUS_EXP_DELAY {
    f32*    line[3];    // 0x0
    u32     inPos;      // 0xC
    u32     outPos;     // 0x10
    u32     lastPos;    // 0x14
    u32     sizeFP;     // 0x18
    u32     size;       // 0x1C
} AXFX_CHORUS_EXP_DELAY;

typedef struct AXFX_CHORUS_EXP_LFO {
    s32* table;     // 0x0
    s32 phaseAdd;   // 0x4
    s32 stepSamp;   // 0x8
    s32 depthSamp;  // 0xC
    u32 phase;      // 0x10
    u32 sign;       // 0x14
    u32 lastNum;    // 0x18
    s32 lastValue;  // 0x1C
    s32 grad;       // 0x20
    s32 gradFactor; // 0x24
} AXFX_CHORUS_EXP_LFO;

typedef struct AXFX_CHORUS_EXP {
    AXFX_CHORUS_EXP_DELAY   delay;          // 0x00
    AXFX_CHORUS_EXP_LFO     lfo;            // 0x20
    f32                     history[3][4];  // 0x48
    u32                     histIndex;      // 0x78
    u32                     active;         // 0x7C
    f32                     delayTime;      // 0x80
    f32                     depth;          // 0x84
    f32                     rate;           // 0x88
    f32                     feedback;       // 0x8C
    AXFX_BUS*               busIn;          // 0x90
    AXFX_BUS*               busOut;         // 0x94
    f32                     outGain;        // 0x98
    f32                     sendGain;       // 0x9C
} AXFX_CHORUS_EXP;

u32     AXFXChorusExpGetMemSize(const AXFX_CHORUS_EXP* fx);
BOOL    AXFXChorusExpInit(AXFX_CHORUS_EXP* fx);
void    AXFXChorusExpShutdown(AXFX_CHORUS_EXP* fx);
BOOL    AXFXChorusExpSettings(AXFX_CHORUS_EXP* fx);
void    AXFXChorusExpCallback(AXFX_BUFFERUPDATE* update, AXFX_CHORUS_EXP* fx);

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_AXFX_CHORUS_EXP_H
