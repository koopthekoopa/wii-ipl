#include <revolution/axfx.h>

static void __ParamConvert(AXFX_CHORUS* chorus);

u32 AXFXChorusGetMemSize(AXFX_CHORUS* chorus) {
    return AXFXChorusExpGetMemSize(&chorus->chorusInner);
}

BOOL AXFXChorusInit(AXFX_CHORUS* chorus) {
    __ParamConvert(chorus);
    return AXFXChorusExpInit(&chorus->chorusInner);
}

BOOL AXFXChorusShutdown(AXFX_CHORUS* chorus) {
    AXFXChorusExpShutdown(&chorus->chorusInner);
    return TRUE;
}

BOOL AXFXChorusSettings(AXFX_CHORUS* chorus) {
    __ParamConvert(chorus);
    return AXFXChorusExpSettings(&chorus->chorusInner);
}

void AXFXChorusCallback(AXFX_BUS* bus, AXFX_CHORUS* chorus) {
    AXFXChorusExpCallback(bus, &chorus->chorusInner);
}

static void __ParamConvert(AXFX_CHORUS* chorus) {
    chorus->chorusInner.delayTime = (f32)chorus->baseDelay;
    chorus->chorusInner.depth = (f32)chorus->variation / chorus->chorusInner.delayTime;
    chorus->chorusInner.rate = 1000.0f / (f32)chorus->period;
    chorus->chorusInner.feedback = 0.0f;
    chorus->chorusInner.busIn = NULL;
    chorus->chorusInner.busOut = NULL;
    chorus->chorusInner.outGain = 1.0f;
    chorus->chorusInner.sendGain = 0.0f;
}
