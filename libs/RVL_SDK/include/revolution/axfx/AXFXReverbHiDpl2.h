#ifndef REVOLUTION_AXFX_REVERB_HI_DPL2_H
#define REVOLUTION_AXFX_REVERB_HI_DPL2_H

#include <revolution/axfx/AXFXReverbHiExpDpl2.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef struct AXFX_REVERBHI_DPL2 {
    AXFX_REVERBHI_EXP_DPL2  reverbInner;    // 0x00
    f32                     coloration;     // 0x148
    f32                     mix;            // 0x14C
    f32                     time;           // 0x150
    f32                     damping;        // 0x154
    f32                     preDelay;       // 0x158
    f32                     crosstalk;      // 0x15C
} AXFX_REVERBHI_DPL2;

u32     AXFXReverbHiGetMemSizeDpl2(AXFX_REVERBHI_DPL2* fx);
BOOL    AXFXReverbHiInitDpl2(AXFX_REVERBHI_DPL2* fx);
BOOL    AXFXReverbHiShutdownDpl2(AXFX_REVERBHI_DPL2* fx);
BOOL    AXFXReverbHiSettingsDpl2(AXFX_REVERBHI_DPL2* fx);
void    AXFXReverbHiCallbackDpl2(void* chans, void* context);

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_AXFX_REVERB_HI_DPL2_H
