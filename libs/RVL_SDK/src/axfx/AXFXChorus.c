#include <revolution/axfx.h>

static void __ParamConvert(AXFX_CHORUS* fx);

u32 AXFXChorusGetMemSize(const AXFX_CHORUS* fx) {
    return AXFXChorusExpGetMemSize(&fx->chorusInner);
}

BOOL AXFXChorusInit(AXFX_CHORUS* fx) {
    __ParamConvert(fx);
    return AXFXChorusExpInit(&fx->chorusInner);
}

BOOL AXFXChorusShutdown(AXFX_CHORUS* fx) {
    AXFXChorusExpShutdown(&fx->chorusInner);
    return TRUE;
}

BOOL AXFXChorusSettings(AXFX_CHORUS* fx) {
    __ParamConvert(fx);
    return AXFXChorusExpSettings(&fx->chorusInner);
}

void AXFXChorusCallback(void* chans, void* context) {
    AXFXChorusExpCallback((AXFX_BUFFERUPDATE*)chans, (AXFX_CHORUS_EXP*)context);
}

static void __ParamConvert(AXFX_CHORUS* fx) {
    fx->chorusInner.delayTime = fx->baseDelay;
    fx->chorusInner.depth = fx->variation / fx->chorusInner.delayTime;
    fx->chorusInner.rate = 1000.0f / fx->period;
    fx->chorusInner.feedback = 0.0f;
    fx->chorusInner.busIn = NULL;
    fx->chorusInner.busOut = NULL;
    fx->chorusInner.outGain = 1.0f;
    fx->chorusInner.sendGain = 0.0f;
}
