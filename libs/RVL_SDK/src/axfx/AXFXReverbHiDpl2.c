#include <revolution/axfx.h>

#include <revolution/ax.h>

static void __ParamConvert(AXFX_REVERBHI_DPL2* fx);

u32 AXFXReverbHiGetMemSizeDpl2(AXFX_REVERBHI_DPL2* fx) {
    fx->reverbInner.preDelayTimeMax = fx->preDelay;
    return AXFXReverbHiExpGetMemSizeDpl2(&fx->reverbInner);
}

BOOL AXFXReverbHiInitDpl2(AXFX_REVERBHI_DPL2* fx) {
    if (AXGetMode() != AX_OUTPUT_DPL2) {
        return FALSE;
    }

    __ParamConvert(fx);
    return AXFXReverbHiExpInitDpl2(&fx->reverbInner);
}

BOOL AXFXReverbHiShutdownDpl2(AXFX_REVERBHI_DPL2* fx) {
    AXFXReverbHiExpShutdownDpl2(&fx->reverbInner);
    return TRUE;
}

BOOL AXFXReverbHiSettingsDpl2(AXFX_REVERBHI_DPL2* fx) {
    __ParamConvert(fx);
    return AXFXReverbHiExpSettingsDpl2(&fx->reverbInner);
}

void AXFXReverbHiCallbackDpl2(void* chans, void* context) {
    AXFXReverbHiExpCallbackDpl2((AXFX_BUFFERUPDATE_DPL2*)chans, (AXFX_REVERBHI_EXP_DPL2*)context);
}

static void __ParamConvert(AXFX_REVERBHI_DPL2* fx) {
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
