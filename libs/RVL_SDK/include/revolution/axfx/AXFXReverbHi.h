#ifndef REVOLUTION_AXFX_REVERB_HI_H
#define REVOLUTION_AXFX_REVERB_HI_H

#include <revolution/axfx/AXFXReverbHiExp.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef struct AXFX_REVERBHI {
    AXFX_REVERBHI_EXP   reverbInner;    // 0x00
    f32                 coloration;     // 0x148
    f32                 mix;            // 0x14C
    f32                 time;           // 0x150
    f32                 damping;        // 0x154
    f32                 preDelay;       // 0x158
    f32                 crosstalk;      // 0x15C
} AXFX_REVERBHI;

u32     AXFXReverbHiGetMemSize(AXFX_REVERBHI* fx);
BOOL    AXFXReverbHiInit(AXFX_REVERBHI* fx);
BOOL    AXFXReverbHiShutdown(AXFX_REVERBHI* fx);
BOOL    AXFXReverbHiSettings(AXFX_REVERBHI* fx);
void    AXFXReverbHiCallback(void* chans, void* context);

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_AXFX_REVERB_HI_H
