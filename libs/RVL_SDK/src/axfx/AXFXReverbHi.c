#include <revolution/axfx.h>

static void __ParamConvert(AXFX_REVERBHI* fx);

u32 AXFXReverbHiGetMemSize(AXFX_REVERBHI* fx) {
    fx->reverbInner.preDelayTimeMax = fx->preDelay;
    return AXFXReverbHiExpGetMemSize(&fx->reverbInner);
}

BOOL AXFXReverbHiInit(AXFX_REVERBHI* fx) {
    __ParamConvert(fx);
    return AXFXReverbHiExpInit(&fx->reverbInner);
}

BOOL AXFXReverbHiShutdown(AXFX_REVERBHI* fx) {
    AXFXReverbHiExpShutdown(&fx->reverbInner);
    return TRUE;
}

BOOL AXFXReverbHiSettings(AXFX_REVERBHI* fx) {
    __ParamConvert(fx);
    return AXFXReverbHiExpSettings(&fx->reverbInner);
}

void AXFXReverbHiCallback(void* chans, void* context) {
    AXFXReverbHiExpCallback((AXFX_BUFFERUPDATE*)chans, (AXFX_REVERBHI_EXP*)context);
}

static void __ParamConvert(AXFX_REVERBHI* fx) {
    fx->reverbInner.earlyMode = 5;
    fx->reverbInner.preDelayTimeMax = fx->preDelay;
    fx->reverbInner.preDelayTime = fx->preDelay;
    fx->reverbInner.fusedMode = 0;
    fx->reverbInner.fusedTime = fx->time;
    fx->reverbInner.coloration = fx->coloration;
    fx->reverbInner.damping = fx->damping;
    fx->reverbInner.crosstalk = fx->crosstalk;
    fx->reverbInner.earlyGain = 0.0f;
    fx->reverbInner.fusedGain = 1.0f;
    fx->reverbInner.busIn = NULL;
    fx->reverbInner.busOut = NULL;
    fx->reverbInner.outGain = fx->mix;
    fx->reverbInner.sendGain = 0.0f;
}
