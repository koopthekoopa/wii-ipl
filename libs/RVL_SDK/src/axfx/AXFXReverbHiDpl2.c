#include <revolution/axfx.h>

#include <revolution/ax.h>
#include <revolution/os.h>

static void __ParamConvert(AXFX_REVERBHI_DPL2* reverb);

u32 AXFXReverbHiGetMemSizeDpl2(AXFX_REVERBHI_DPL2* reverb) {
    reverb->reverbInner.preDelayTimeMax = reverb->preDelay;
    return AXFXReverbHiExpGetMemSizeDpl2(&reverb->reverbInner);
}

BOOL AXFXReverbHiInitDpl2(AXFX_REVERBHI_DPL2* reverb) {
    if (AXGetMode() != AX_OUTPUT_DPL2) {
#ifdef DEBUG
        OSReport("AXFXReverbHiInitDpl2(): WARNING: Invalid AX output mode.\n");
#endif
        return FALSE;
    }

    __ParamConvert(reverb);
    return AXFXReverbHiExpInitDpl2(&reverb->reverbInner);
}

BOOL AXFXReverbHiShutdownDpl2(AXFX_REVERBHI_DPL2* reverb) {
    AXFXReverbHiExpShutdownDpl2(&reverb->reverbInner);
    return TRUE;
}

BOOL AXFXReverbHiSettingsDpl2(AXFX_REVERBHI_DPL2* reverb) {
    __ParamConvert(reverb);
    return AXFXReverbHiExpSettingsDpl2(&reverb->reverbInner);
}

void AXFXReverbHiCallbackDpl2(AXFX_BUS_DPL2* bus, AXFX_REVERBHI_DPL2* reverb) {
    AXFXReverbHiExpCallbackDpl2(bus, &reverb->reverbInner);
}

static void __ParamConvert(AXFX_REVERBHI_DPL2* reverb) {
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
