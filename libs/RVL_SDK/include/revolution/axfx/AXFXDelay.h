#ifndef REVOLUTION_AXFX_DELAY_H
#define REVOLUTION_AXFX_DELAY_H

#include <revolution/axfx/AXFXCommon.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef struct AXFX_DELAY {
    s32*    line[3];            // 0x00
    u32     curPos[3];          // 0x0C
    u32     length[3];          // 0x18
    s32     feedbackGain[3];    // 0x24
    s32     outGain[3];         // 0x30
    u32     active;             // 0x3C
    u32     delay[3];           // 0x40
    u32     feedback[3];        // 0x4C
    u32     output[3];          // 0x58
} AXFX_DELAY;

u32     AXFXDelayGetMemSize(const AXFX_DELAY* fx);
BOOL    AXFXDelayInit(AXFX_DELAY* fx);
BOOL    AXFXDelaySettings(AXFX_DELAY* fx);
void    AXFXDelayShutdown(AXFX_DELAY* fx);
void    AXFXDelayCallback(void* chans, void* context);

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_AXFX_DELAY_H
