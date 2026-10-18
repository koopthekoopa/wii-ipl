#include <private/axfx.h>
#include <revolution/axfx.h>

#include <revolution/ax.h>

#include <revolution/os.h>

#include <math.h>
#include <string.h>

static BOOL __AllocDelay(AXFX_CHORUS_EXP* chorus);
static BOOL __InitDelay(AXFX_CHORUS_EXP* chorus);
static void __FreeDelay(AXFX_CHORUS_EXP* chorus);

static BOOL __InitParams(AXFX_CHORUS_EXP* chorus);
static void __CalcLFO(s32* lfoBuf, AXFX_CHORUS_EXP_LFO* lfo);

u32 AXFXChorusExpGetMemSize(AXFX_CHORUS_EXP* chorus) {
    return 0x3200 * AXFX_STEREO_CHANNEL_MAX;
}

BOOL AXFXChorusExpInit(AXFX_CHORUS_EXP* chorus) {
    BOOL result;
    BOOL enabled;

    enabled = OSDisableInterrupts();

    chorus->active |= 1;

    result = __AllocDelay(chorus);
    if (result == FALSE) {
        AXFXChorusExpShutdown(chorus);
        OSRestoreInterrupts(enabled);
        return FALSE;
    }

    result = __InitDelay(chorus);
    if (result == FALSE) {
        AXFXChorusExpShutdown(chorus);
        OSRestoreInterrupts(enabled);
        return FALSE;
    }

    result = __InitParams(chorus);
    if (result == FALSE) {
        AXFXChorusExpShutdown(chorus);
        OSRestoreInterrupts(enabled);
        return FALSE;
    }

    chorus->active &= ~1;

    OSRestoreInterrupts(enabled);

    return TRUE;
}

BOOL AXFXChorusExpSettings(AXFX_CHORUS_EXP* chorus) {
    BOOL result;
    BOOL enabled = OSDisableInterrupts();

    chorus->active |= 1;

    AXFXChorusExpShutdown(chorus);
    result = AXFXChorusExpInit(chorus);
    if (!result) {
        AXFXChorusExpShutdown(chorus);
        OSRestoreInterrupts(enabled);
        return FALSE;
    }

    chorus->active |= 2;
    chorus->active &= ~1;

    OSRestoreInterrupts(enabled);

    return result;
}

BOOL AXFXChorusExpSettingsUpdate(AXFX_CHORUS_EXP* chorus) {
    BOOL result;
    BOOL enabled = OSDisableInterrupts();

    chorus->active |= 1;

    result = __InitDelay(chorus);
    if (!result) {
        AXFXChorusExpShutdown(chorus);
        OSRestoreInterrupts(enabled);
        return FALSE;
    }

    result = __InitParams(chorus);
    if (!result) {
        AXFXChorusExpShutdown(chorus);
        OSRestoreInterrupts(enabled);
        return FALSE;
    }

    chorus->active |= 2;
    chorus->active &= ~1;

    OSRestoreInterrupts(enabled);

    return result;
}

void AXFXChorusExpShutdown(AXFX_CHORUS_EXP* reverb) {
    BOOL enabled = OSDisableInterrupts();

    reverb->active |= 1;

    __FreeDelay(reverb);

    OSRestoreInterrupts(enabled);
}

void AXFXChorusExpCallback(AXFX_BUS* bus, AXFX_CHORUS_EXP* chorus) {
    u32 i;
    u32 j;
    u32 k;
    s32 lfoBuf[96];
    s32* busParam[AXFX_STEREO_CHANNEL_MAX];
    s32* busIn[AXFX_STEREO_CHANNEL_MAX];
    s32* busOut[AXFX_STEREO_CHANNEL_MAX];
    s32 sp24;
    s32 outPos;
    s32 lastPos;
    u32 sp18;
    s32 sp14;
    u32 sp10;
    f32* srcCoef;
    u32 srcCoefIndex;
    AXFX_CHORUS_EXP* pChorus;
    f32 var_f30;
    f32 var_f31;
    u32 histIndex;

    if (chorus->active != 0) {
        chorus->active &= ~2;
        return;
    }
    busParam[AX_STEREO_L] = bus->left;
    busParam[AX_STEREO_R] = bus->right;
    busParam[AX_STEREO_S] = bus->surround;
    if (chorus->busIn) {
        busIn[AX_STEREO_L] = chorus->busIn->left;
        busIn[AX_STEREO_R] = chorus->busIn->right;
        busIn[AX_STEREO_S] = chorus->busIn->surround;
    }
    if (chorus->busOut) {
        busOut[AX_STEREO_L] = chorus->busOut->left;
        busOut[AX_STEREO_R] = chorus->busOut->right;
        busOut[AX_STEREO_S] = chorus->busOut->surround;
    }
    pChorus = chorus;
    __CalcLFO(lfoBuf, &chorus->lfo);

    for (i = 0; i < 96; i++) {
        sp24 = lfoBuf[i];
        outPos = pChorus->delay.outPos + sp24;
        if (outPos >= (s32)pChorus->delay.sizeFP) {
            outPos -= pChorus->delay.sizeFP;
        } else if (outPos < 0) {
            outPos += pChorus->delay.sizeFP;
        }
        lastPos = outPos - pChorus->delay.lastPos;
        if (lastPos < 0) {
            lastPos += pChorus->delay.sizeFP;
        }
        sp18 = (lastPos & 0xFFFF0000) >> 0x10U;
        sp14 = lastPos & 0xFFFF;
        sp10 = pChorus->delay.lastPos >> 0x10U;
        histIndex = chorus->histIndex;
        while (sp18--) {
            chorus->history[AX_STEREO_L][histIndex] = pChorus->delay.line[AX_STEREO_L][sp10];
            chorus->history[AX_STEREO_R][histIndex] = pChorus->delay.line[AX_STEREO_R][sp10];
            chorus->history[AX_STEREO_S][histIndex++] = pChorus->delay.line[AX_STEREO_S][sp10++];
            histIndex &= 3;
            if (sp10 >= pChorus->delay.size) {
                sp10 = 0;
            }
        }
        srcCoefIndex = (u32)(sp14 & 0xFE00) >> 9;
        pChorus->delay.lastPos = outPos & 0xFFFF0000;
        srcCoef = __AXFXGetSrcCoef(srcCoefIndex);

        for (j = 0; j < AXFX_STEREO_CHANNEL_MAX; j++) {
            var_f31 = 0.0f;

            for (k = 0; k < 4; k++) {
                var_f31 += srcCoef[k] * chorus->history[j][histIndex++];
                histIndex &= 3;
            }
            if (chorus->busIn) {
                var_f30 = *busParam[j] + *busIn[j]++;
            } else {
                var_f30 = *busParam[j];
            }
            pChorus->delay.line[j][pChorus->delay.inPos] = var_f30 + (var_f31 * chorus->feedback);
            *busParam[j]++ = (var_f31 * chorus->outGain);
            if (chorus->busOut) {
                *busOut[j]++ = (var_f31 * chorus->sendGain);
            }
        }
        chorus->histIndex = histIndex;
        if (++pChorus->delay.inPos >= pChorus->delay.size) {
            pChorus->delay.inPos = 0;
        }
        if ((pChorus->delay.outPos += 0x10000) >= pChorus->delay.sizeFP) {
            pChorus->delay.outPos = 0;
        }
    }
}

static BOOL __AllocDelay(AXFX_CHORUS_EXP* chorus) {
    AXFX_CHORUS_EXP* pChorus = chorus;
    u32 i;

    pChorus->delay.size = 0xC80;
    for (i = 0; i < AXFX_STEREO_CHANNEL_MAX; i++) {
        pChorus->delay.line[i] = __AXFXAlloc(pChorus->delay.size * 4);
        ASSERTMSGLINE(443, pChorus->delay.line[i], "Can't allocate the memory.");
        if (!pChorus->delay.line[i]) {
            return FALSE;
        }
    }
    return TRUE;
}

static BOOL __InitDelay(AXFX_CHORUS_EXP* chorus) {
    AXFX_CHORUS_EXP* pChorus = chorus;
    u32 i;

    for (i = 0; i < AXFX_STEREO_CHANNEL_MAX; i++) {
        ASSERTMSGLINE(469, pChorus->delay.line[i], "Buffer is not allocated.");
        if (!pChorus->delay.line[i]) {
            return FALSE;
        }
        memset(pChorus->delay.line[i], 0, pChorus->delay.size * 4);
    }

    pChorus->delay.inPos = 0;
    pChorus->delay.outPos = pChorus->delay.size - (u32)(32.0f * chorus->delayTime);
    pChorus->delay.outPos <<= 0x10;
    pChorus->delay.lastPos = pChorus->delay.outPos;
    pChorus->delay.sizeFP = pChorus->delay.size << 0x10;

    return TRUE;
}

static void __FreeDelay(AXFX_CHORUS_EXP* chorus) {
    u32 i;
    AXFX_CHORUS_EXP* pChorus;

    pChorus = chorus;

    for (i = 0; i < AXFX_STEREO_CHANNEL_MAX; i++) {
        if (pChorus->delay.line[i]) {
            __AXFXFree(pChorus->delay.line[i]);
        }
        pChorus->delay.line[i] = NULL;
    }
}

static BOOL __InitParams(AXFX_CHORUS_EXP* chorus) {
    u32 i, j;

    f32 var_f28;
    f32 var_f30;
    f32 var_f29;
    f32 var_f31;

    ASSERTMSGLINE(767, chorus->delayTime >= 0.1f && chorus->delayTime <= 50.0f, "The value of specified parameter is out of range.");
    if (chorus->delayTime < 0.1f || chorus->delayTime > 50.0f) {
        return FALSE;
    }

    ASSERTMSGLINE(767, chorus->depth >= 0.0f && chorus->depth <= 1.0f, "The value of specified parameter is out of range.");
    if (chorus->depth < 0.0f || chorus->depth > 1.0f) {
        return FALSE;
    }

    ASSERTMSGLINE(767, chorus->rate >= 0.1f && chorus->rate <= 2.0f, "The value of specified parameter is out of range.");
    if (chorus->rate < 0.1f || chorus->rate > 2.0f) {
        return FALSE;
    }

    ASSERTMSGLINE(767, chorus->feedback >= 0.0f && chorus->feedback < 1.0f, "The value of specified parameter is out of range.");
    if (chorus->feedback < 0.0f || chorus->feedback >= 1.0f) {
        return FALSE;
    }

    ASSERTMSGLINE(767, chorus->outGain >= 0.0f && chorus->outGain <= 1.0f, "The value of specified parameter is out of range.");
    if (chorus->outGain < 0.0f || chorus->outGain > 1.0f) {
        return FALSE;
    }

    ASSERTMSGLINE(767, chorus->sendGain >= 0.0f && chorus->sendGain <= 1.0f, "The value of specified parameter is out of range.");
    if (chorus->sendGain < 0.0f || chorus->sendGain > 1.0f) {
        return FALSE;
    }

    chorus->lfo.table = __AXFXGetLfoSinTable();

    var_f30 = 32.0f * chorus->delayTime;
    var_f31 = var_f30 * chorus->depth;

    if (var_f31 >= var_f30) {
        var_f31 -= 1.0f;
        if (var_f31 < 0.0f) {
            var_f31 = 0.0f;
        }
    }

    chorus->lfo.depthSamp = (65536.0f * var_f31);
    chorus->lfo.phaseAdd = (65536.0f * ((256.0f * chorus->rate) / 32000.0f));
    var_f29 = (32000.0f / chorus->rate) * 0.00390625f;
    chorus->lfo.stepSamp = (65536.0f * var_f29);
    var_f28 = var_f31 / var_f29;
    chorus->lfo.gradFactor = (65536.0f * var_f28);
    chorus->lfo.phase = 0;
    chorus->lfo.sign = 0;
    chorus->lfo.lastNum = -1;
    chorus->lfo.lastValue = 0;
    chorus->lfo.grad = 0;

    for (i = 0; i < AXFX_STEREO_CHANNEL_MAX; i++) {
        for (j = 0; j < 4; j++) {
            chorus->history[i][j] = 0.0f;
        }
    }

    chorus->histIndex = 0;

    return TRUE;
}

static void __CalcLFO(s32* lfoBuf, AXFX_CHORUS_EXP_LFO* lfo) {
    u32 i;

    s32 srcCoefIndex;
    s32 var_r24;
    s32 var_r25;
    s32 var_r30;
    u32 histIndex;
    s64 var_r31;
    s64 var_r28;

    var_r31 = 0;

    for (i = 0; i < 96; i++) {
        histIndex = lfo->phase & 0xFFFF0000;
        if (histIndex != lfo->lastNum) {
            lfo->lastNum = histIndex;
            histIndex = histIndex >> 0x10U;
            var_r25 = histIndex + 1;
            var_r25 &= 0x7F;
            var_r24 = lfo->table[histIndex];
            srcCoefIndex = lfo->table[var_r25];
            var_r28 = srcCoefIndex - var_r24;
            var_r28 = var_r28 * lfo->gradFactor;
            var_r28 = var_r28 >> 0x18;
            lfo->grad = var_r28;
            var_r31 = (s64)var_r24 * (s64)lfo->depthSamp;
            var_r31 = var_r31 >> 0x18;
        } else {
            var_r31 = lfo->lastValue + lfo->grad;
        }
        lfo->lastValue = var_r31;
        if (lfo->sign >= 1) {
            var_r31 *= -1;
        }
        lfo->phase += lfo->phaseAdd;
        if ((lfo->phase & 0xFF800000) != 0) {
            lfo->phase &= 0x7FFFFF;
            lfo->sign ^= 1;
        }
        lfoBuf[i] = var_r31;
    }
}
