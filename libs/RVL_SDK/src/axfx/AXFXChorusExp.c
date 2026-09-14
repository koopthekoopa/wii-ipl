#include <private/axfx.h>
#include <revolution/axfx.h>
#include <revolution/os.h>

#include <string.h>

static BOOL __InitParams(AXFX_CHORUS_EXP* fx);
static BOOL __AllocDelay(AXFX_CHORUS_EXP* fx);
static BOOL __InitDelay(AXFX_CHORUS_EXP* fx);
static void __FreeDelay(AXFX_CHORUS_EXP* fx);
static void __CalcLFO(u32 param_1[], AXFX_CHORUS_EXP_LFO* fx);

u32 AXFXChorusExpGetMemSize(const AXFX_CHORUS_EXP* fx) {
    return 0x9600;
}

BOOL AXFXChorusExpInit(AXFX_CHORUS_EXP* fx) {
    BOOL enabled;

    enabled = OSDisableInterrupts();
    fx->active |= 1;
    (fx->delay).size = 0xc80;

    if (!__AllocDelay(fx)) {
        AXFXChorusExpShutdown(fx);
        OSRestoreInterrupts(enabled);
        return FALSE;
    }

    if (!__InitDelay(fx)) {
        AXFXChorusExpShutdown(fx);
        OSRestoreInterrupts(enabled);
        return FALSE;
    }

    if (!__InitParams(fx)) {
        AXFXChorusExpShutdown(fx);
        OSRestoreInterrupts(enabled);
        return FALSE;
    }

    fx->active &= ~1;
    OSRestoreInterrupts(enabled);

    return TRUE;
}

BOOL AXFXChorusExpSettings(AXFX_CHORUS_EXP* fx) {
    BOOL enabled;
    BOOL success;

    enabled = OSDisableInterrupts();
    fx->active |= TRUE;
    AXFXChorusExpShutdown(fx);

    success = AXFXChorusExpInit(fx);

    if (success == FALSE) {
        AXFXChorusExpShutdown(fx);
        OSRestoreInterrupts(enabled);
        return FALSE;
    }

    fx->active |= 2;
    fx->active &= ~1;
    OSRestoreInterrupts(enabled);

    return success;
}

void AXFXChorusExpShutdown(AXFX_CHORUS_EXP* fx) {
    BOOL enabled;

    enabled = OSDisableInterrupts();

    __FreeDelay(fx);

    OSRestoreInterrupts(enabled);
}

// Non-matching
void AXFXChorusExpCallback(AXFX_BUFFERUPDATE* update, AXFX_CHORUS_EXP* fx) {
    u32 lfo[96];
    s32* input[3];
    s32* inBus[3];
    s32* outBus[3];
    u32 samp;
    u32 ch;
    s32 pos;
    s32 diff;
    u32 steps;
    u32 frac;
    u32 histPos;
    u32 histIndex;
    f32* coef;
    f32 out;
    f32 data;

    if (fx->active != 0) {
        fx->active &= ~2;
        return;
    }

    input[0] = update->left;
    input[1] = update->right;
    input[2] = update->surround;

    if (fx->busIn != NULL) {
        inBus[0] = fx->busIn->left;
        inBus[1] = fx->busIn->right;
        inBus[2] = fx->busIn->surround;
    }

    if (fx->busOut != NULL) {
        outBus[0] = fx->busOut->left;
        outBus[1] = fx->busOut->right;
        outBus[2] = fx->busOut->surround;
    }

    __CalcLFO(lfo, &fx->lfo);

    for (samp = 0; samp < 96; samp++) {
        pos = (s32)fx->delay.outPos + lfo[samp];
        if (pos >= (s32)fx->delay.sizeFP) {
            pos -= (s32)fx->delay.sizeFP;
        } else if (pos < 0) {
            pos += (s32)fx->delay.sizeFP;
        }

        diff = pos - (s32)fx->delay.lastPos;
        if (diff < 0) {
            diff += (s32)fx->delay.sizeFP;
        }

        steps = (u32)diff >> 16;
        frac = (u32)diff & 0xFFFF;
        histPos = fx->delay.lastPos >> 16;
        histIndex = fx->histIndex;

        while (steps != 0) {
            fx->history[0][histIndex] = fx->delay.line[0][histPos];
            fx->history[1][histIndex] = fx->delay.line[1][histPos];
            fx->history[2][histIndex] = fx->delay.line[2][histPos];
            histIndex++;
            histIndex &= 3;
            histPos++;
            steps--;
            if (histPos >= fx->delay.size) {
                histPos = 0;
            }
        }

        fx->delay.lastPos = (u32)pos & ~0xFFFFu;
        coef = __AXFXGetSrcCoef((frac >> 9) & 0x7F);

        for (ch = 0; ch < 3; ch++) {
            out = 0.0f;
            out += coef[0] * fx->history[ch][histIndex];
            histIndex++;
            histIndex &= 3;
            out += coef[1] * fx->history[ch][histIndex];
            histIndex++;
            histIndex &= 3;
            out += coef[2] * fx->history[ch][histIndex];
            histIndex++;
            histIndex &= 3;
            out += coef[3] * fx->history[ch][histIndex];
            histIndex++;
            histIndex &= 3;

            if (fx->busIn != NULL) {
                data = (f32)(*input[ch] + *inBus[ch]++);
            } else {
                data = (f32)(*input[ch]);
            }

            fx->delay.line[ch][fx->delay.inPos] = data + out * fx->feedback;
            *input[ch]++ = (s32)(out * fx->outGain);

            if (fx->busOut != NULL) {
                *outBus[ch]++ = (s32)(out * fx->sendGain);
            }
        }

        fx->histIndex = histIndex;

        fx->delay.inPos++;
        if (fx->delay.inPos >= fx->delay.size) {
            fx->delay.inPos = 0;
        }

        fx->delay.outPos += 0x10000;
        if (fx->delay.outPos >= fx->delay.sizeFP) {
            fx->delay.outPos = 0;
        }
    }
}

static BOOL __AllocDelay(AXFX_CHORUS_EXP* fx) {
    f32** line = fx->delay.line;
    u32 i;

    for (i = 0; i < 3; i++, line++) {
        *line = __AXFXAlloc(fx->delay.size * sizeof(f32));
        if (*line == NULL) {
            return FALSE;
        }
    }

    return TRUE;
}

static BOOL __InitDelay(AXFX_CHORUS_EXP* fx) {
    f32** line = fx->delay.line;
    u32 i;
    u32 uVar2;

    for (i = 0; i < 3; i++, line++) {
        if (*line == NULL) {
            return FALSE;
        }

        memset(*line, 0, (fx->delay).size * sizeof(f32));
    }

    (fx->delay).inPos = 0;
    uVar2 = (u32)(fx->delayTime * 32.0f);
    uVar2 = ((fx->delay).size - uVar2) * 0x10000;
    (fx->delay).sizeFP = (fx->delay).size << 0x10;
    (fx->delay).outPos = uVar2;
    (fx->delay).lastPos = uVar2;

    return TRUE;
}

static void __FreeDelay(AXFX_CHORUS_EXP* fx) {
    u32 i;

    fx->active |= TRUE;
    for (i = 0; i < 3; i++) {
        if (fx->delay.line[i] != NULL) {
            __AXFXFree(fx->delay.line[i]);
        }
        fx->delay.line[i] = NULL;
    }
}

static BOOL __InitParams(AXFX_CHORUS_EXP* fx) {
    s32 j;
    s32 i;
    s32* table;

    s32 phaseAdd;
    s32 tempSamp;
    f32 gradFactor;
    f32 depthSamp;
    f32 tempVal;
    f32 stepSamp;

    if ((fx->delayTime < 0.1f) || (fx->delayTime > 50.0f)) {
        return FALSE;
    }
    if ((fx->depth < 0.0f) || (fx->depth > 1.0f)) {
        return FALSE;
    }
    if ((fx->rate < 0.1f) || (fx->rate > 2.0f)) {
        return FALSE;
    }
    if ((fx->feedback < 0.0f) || (fx->feedback >= 1.0f)) {
        return FALSE;
    }
    if ((fx->outGain < 0.0f) || (fx->outGain > 1.0f)) {
        return FALSE;
    }
    if ((fx->sendGain < 0.0f) || (fx->sendGain > 1.0f)) {
        return FALSE;
    }
    table = __AXFXGetLfoSinTable();
    fx->lfo.table = table;

    depthSamp = 32.0f * fx->delayTime * fx->depth;
    if (depthSamp >= 32.0f * fx->delayTime) {
        depthSamp -= 1.0f;
        if (depthSamp < 0.0f) {
            depthSamp = 0.0f;
        }
    }

    fx->lfo.lastNum = -1;
    fx->lfo.phase = 0;
    fx->lfo.sign = 0;

    tempSamp = (s32)(65536.0f * depthSamp);
    fx->lfo.depthSamp = tempSamp;

    fx->lfo.grad = fx->lfo.lastValue = 0;

    phaseAdd = (s32)(65536.0f * (((tempVal = 256.0f) * fx->rate) / 32000.0f));
    fx->lfo.phaseAdd = phaseAdd;

    stepSamp = (125.0f / 32000) * (32000 / fx->rate);
    gradFactor = depthSamp / stepSamp;

    tempSamp = (s32)(65536.0f * stepSamp);
    fx->lfo.stepSamp = tempSamp;

    fx->lfo.gradFactor = (s32)(65536.0f * gradFactor);

    for (i = 0; i < 3; i++) {
        for (j = 0; j < 4; j++) {
            fx->history[i][j] = 0.0f;
        }
    }

    fx->histIndex = 0;

    return TRUE;
}

void __CalcLFO(u32* out, AXFX_CHORUS_EXP_LFO* lfo) {
    u32 samp;
    u32 lastNum;
    s32 tableVal;
    s64 value;
    u64 diff;
    s32 wtf;

    for (samp = 0x60; samp != 0; samp--) {
        lastNum = lfo->phase & 0xFFFF0000;
        if (lastNum != lfo->lastNum) {
            lfo->lastNum = lastNum;
            lastNum = lastNum >> 16;
            tableVal = lfo->table[lastNum];
            diff = lfo->table[(lastNum + (wtf = 1)) & 0x7F] - tableVal;
            lfo->grad = (s32)((((s64)diff) * (lfo->gradFactor)) >> 24);
            value = (((s64)tableVal) * lfo->depthSamp) >> 24;
        } else {
            value = (s64)(lfo->lastValue + lfo->grad);
        }

        lfo->lastValue = (s32)value;
        if (lfo->sign >= 1) {
            value = -value;
        }

        lfo->phase += lfo->phaseAdd;
        if ((lfo->phase & 0xFF800000) != 0) {
            lfo->phase &= 0x7FFFFF;
            lfo->sign ^= wtf;
        }
        *(out++) = (u32)value;
    }
}
