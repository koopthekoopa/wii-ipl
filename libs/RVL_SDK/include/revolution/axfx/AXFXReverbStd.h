#ifndef REVOLUTION_AXFX_REVERB_STD_H
#define REVOLUTION_AXFX_REVERB_STD_H

#include <revolution/axfx/AXFXReverbStdExp.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef struct AXFX_REVERBSTD {
    AXFX_REVERBSTD_EXP  reverbInner;    // 0x00
    f32                 coloration;     // 0xE8
    f32                 mix;            // 0xEC
    f32                 time;           // 0xF0
    f32                 damping;        // 0xF4
    f32                 preDelay;       // 0xF8
} AXFX_REVERBSTD;

u32     AXFXReverbStdGetMemSize(AXFX_REVERBSTD* fx);
BOOL    AXFXReverbStdInit(AXFX_REVERBSTD* fx);
BOOL    AXFXReverbStdShutdown(AXFX_REVERBSTD* fx);
BOOL    AXFXReverbStdSettings(AXFX_REVERBSTD* fx);
void    AXFXReverbStdCallback(void* chans, void* context);

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_AXFX_REVERB_STD_H
