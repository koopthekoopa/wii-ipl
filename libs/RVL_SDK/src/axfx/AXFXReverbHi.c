#include <revolution/axfx.h>

static void __ParamConvert(AXFX_REVERBHI* reverb);

u32 AXFXReverbHiGetMemSize(AXFX_REVERBHI* reverb) {
    reverb->reverbInner.preDelayTimeMax = reverb->preDelay;
    return AXFXReverbHiExpGetMemSize(&reverb->reverbInner);
}

BOOL AXFXReverbHiInit(AXFX_REVERBHI* reverb) {
    __ParamConvert(reverb);
    return AXFXReverbHiExpInit(&reverb->reverbInner);
}

BOOL AXFXReverbHiShutdown(AXFX_REVERBHI* reverb) {
    AXFXReverbHiExpShutdown(&reverb->reverbInner);
    return TRUE;
}

BOOL AXFXReverbHiSettings(AXFX_REVERBHI* reverb) {
    __ParamConvert(reverb);
    return AXFXReverbHiExpSettings(&reverb->reverbInner);
}

void AXFXReverbHiCallback(AXFX_BUS* bus, AXFX_REVERBHI* reverb) {
    AXFXReverbHiExpCallback(bus, &reverb->reverbInner);
}

static void __ParamConvert(AXFX_REVERBHI* reverb) {
    reverb->reverbInner.earlyMode = 5;
    reverb->reverbInner.preDelayTimeMax = reverb->preDelay;
    reverb->reverbInner.preDelayTime = reverb->preDelay;
    reverb->reverbInner.fusedMode = 0;
    reverb->reverbInner.fusedTime = reverb->time;
    reverb->reverbInner.coloration = reverb->coloration;
    reverb->reverbInner.damping = reverb->damping;
    reverb->reverbInner.crosstalk = reverb->crosstalk;
    reverb->reverbInner.earlyGain = 0.0f;
    reverb->reverbInner.fusedGain = 1.0f;
    reverb->reverbInner.busIn = NULL;
    reverb->reverbInner.busOut = NULL;
    reverb->reverbInner.outGain = reverb->mix;
    reverb->reverbInner.sendGain = 0.0f;
}
