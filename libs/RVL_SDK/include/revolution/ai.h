#ifndef REVOLUTION_AI_H
#define REVOLUTION_AI_H

#include <revolution/types.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef void (*AIDCallback)();

enum {
    AI_DSP_SAMPLE_RATE_32KHZ = 0,
    AI_DSP_SAMPLE_RATE_48KHZ,
};

AIDCallback AIRegisterDMACallback(AIDCallback callback);

void        AIInitDMA(u32 startAddr, u32 length);
u32         AIGetDMALength();
u32         AIGetDMAStartAddr();

void        AIStartDMA();
void        AIStopDMA();

void        AISetDSPSampleRate(u32 rate);
u32         AIGetDSPSampleRate();

u32         AIGetDMABytesLeft();

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_AI_H
