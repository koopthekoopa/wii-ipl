#ifndef REVOLUTION_AXFX_CHORUS_H
#define REVOLUTION_AXFX_CHORUS_H

#include <revolution/axfx/AXFXChorusExp.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef struct AXFX_CHORUS {
    AXFX_CHORUS_EXP chorusInner;    // 0x00
    u32             baseDelay;      // 0xA0
    u32             variation;      // 0xA4
    u32             period;         // 0xA8
} AXFX_CHORUS;

u32     AXFXChorusGetMemSize(const AXFX_CHORUS* fx);
BOOL    AXFXChorusInit(AXFX_CHORUS* fx);
BOOL    AXFXChorusShutdown(AXFX_CHORUS* fx);
BOOL    AXFXChorusSettings(AXFX_CHORUS* fx);
void    AXFXChorusCallback(void* chans, void* context);

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_AXFX_CHORUS_H
