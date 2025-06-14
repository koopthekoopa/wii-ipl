#include <revolution/axfx.h>

static void __ParamConvert(AXFX_REVERBSTD* fx);

u32 AXFXReverbStdGetMemSize(AXFX_REVERBSTD* fx) {
    fx->reverbInner.preDelayTimeMax = fx->preDelay;
    return AXFXReverbStdExpGetMemSize(&fx->reverbInner);
}

BOOL AXFXReverbStdInit(AXFX_REVERBSTD* fx) {
    __ParamConvert(fx);
    return AXFXReverbStdExpInit(&fx->reverbInner);
}

BOOL AXFXReverbStdShutdown(AXFX_REVERBSTD* fx) {
    AXFXReverbStdExpShutdown(&fx->reverbInner);
    return TRUE;
}

BOOL AXFXReverbStdSettings(AXFX_REVERBSTD* fx) {
    __ParamConvert(fx);
    return AXFXReverbStdExpSettings(&fx->reverbInner);
}

void AXFXReverbStdCallback(void* chans, void* context) {
    AXFXReverbStdExpCallback((AXFX_BUFFERUPDATE*)chans, (AXFX_REVERBSTD_EXP*)context);
}

static void __ParamConvert(AXFX_REVERBSTD* fx) {
    fx->reverbInner.earlyMode = 5;
    fx->reverbInner.preDelayTimeMax = fx->preDelay;
    fx->reverbInner.preDelayTime = fx->preDelay;
    fx->reverbInner.fusedMode = 0;
    fx->reverbInner.fusedTime = fx->time;
    fx->reverbInner.coloration = fx->coloration;
    fx->reverbInner.damping = fx->damping;
    fx->reverbInner.earlyGain = 0.0f;
    fx->reverbInner.fusedGain = 1.0f;
    fx->reverbInner.busIn = NULL;
    fx->reverbInner.busOut = NULL;
    fx->reverbInner.outGain = fx->mix;
    fx->reverbInner.sendGain = 0.0f;
}
