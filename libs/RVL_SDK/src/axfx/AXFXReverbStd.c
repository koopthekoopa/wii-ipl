#include <revolution/axfx.h>

static void __ParamConvert(AXFX_REVERBSTD* reverb);

u32 AXFXReverbStdGetMemSize(AXFX_REVERBSTD* reverb) {
    reverb->reverbInner.preDelayTimeMax = reverb->preDelay;
    return AXFXReverbStdExpGetMemSize(&reverb->reverbInner);
}

BOOL AXFXReverbStdInit(AXFX_REVERBSTD* reverb) {
    __ParamConvert(reverb);
    return AXFXReverbStdExpInit(&reverb->reverbInner);
}

BOOL AXFXReverbStdShutdown(AXFX_REVERBSTD* reverb) {
    AXFXReverbStdExpShutdown(&reverb->reverbInner);
    return TRUE;
}

BOOL AXFXReverbStdSettings(AXFX_REVERBSTD* reverb) {
    __ParamConvert(reverb);
    return AXFXReverbStdExpSettings(&reverb->reverbInner);
}

void AXFXReverbStdCallback(AXFX_BUS* bus, AXFX_REVERBSTD* reverb) {
    AXFXReverbStdExpCallback(bus, &reverb->reverbInner);
}

static void __ParamConvert(AXFX_REVERBSTD* reverb) {
    reverb->reverbInner.earlyMode = 5;
    reverb->reverbInner.preDelayTimeMax = reverb->preDelay;
    reverb->reverbInner.preDelayTime = reverb->preDelay;
    reverb->reverbInner.fusedMode = 0;
    reverb->reverbInner.fusedTime = reverb->time;
    reverb->reverbInner.coloration = reverb->coloration;
    reverb->reverbInner.damping = reverb->damping;
    reverb->reverbInner.earlyGain = 0.0f;
    reverb->reverbInner.fusedGain = 1.0f;
    reverb->reverbInner.busIn = NULL;
    reverb->reverbInner.busOut = NULL;
    reverb->reverbInner.outGain = reverb->mix;
    reverb->reverbInner.sendGain = 0.0f;
}
