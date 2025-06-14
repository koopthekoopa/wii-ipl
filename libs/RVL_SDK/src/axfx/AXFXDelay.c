#include <revolution/axfx.h>
#include <private/axfx.h>

#include <revolution/ax.h>

#include <revolution/os.h>

#include <string.h>

static BOOL __AllocDelayLine(AXFX_DELAY* fx);
static void __FreeDelayLine(AXFX_DELAY* fx);
static BOOL __InitParams(AXFX_DELAY* fx) NO_INLINE;

u32 AXFXDelayGetMemSize(const AXFX_DELAY* fx) {
    u32 num = 0;
    num += fx->delay[0];
    num += fx->delay[1];
    num += fx->delay[2];

    return num * 128;
}

BOOL AXFXDelayInit(AXFX_DELAY* fx) {
    BOOL enabled;
    int i;

    enabled = OSDisableInterrupts();
    fx->active = 1;

    for (i = 0; i < ARRSIZE(fx->delay); i++) {
        if (fx->delay[i] == 0) {
            AXFXDelayShutdown(fx);
            OSRestoreInterrupts(enabled);
            return FALSE;
        }

        fx->length[i] = fx->delay[i] * 32;
    }

    if (!__AllocDelayLine(fx)) {
        AXFXDelayShutdown(fx);
        OSRestoreInterrupts(enabled);
        return FALSE;
    }

    if (!__InitParams(fx)) {
        AXFXDelayShutdown(fx);
        OSRestoreInterrupts(enabled);
        return FALSE;
    }

    fx->active |= 2;
    fx->active &= ~1;
    OSRestoreInterrupts(enabled);

    return TRUE;
}

BOOL AXFXDelaySettings(AXFX_DELAY* fx) {
    BOOL enabled;

    enabled = OSDisableInterrupts();
    fx->active |= 1;
    AXFXDelayShutdown(fx);

    if (!AXFXDelayInit(fx)) {
        AXFXDelayShutdown(fx);
        OSRestoreInterrupts(enabled);
        return FALSE;
    }

    fx->active |= 2;
    fx->active &= ~1;
    OSRestoreInterrupts(enabled);

    return TRUE;
}

void AXFXDelayShutdown(AXFX_DELAY* fx) {
    BOOL enabled;

    enabled = OSDisableInterrupts();

    fx->active |= 1;
    __FreeDelayLine(fx);

    OSRestoreInterrupts(enabled);
}

void AXFXDelayCallback(void* chans, void* context) {
    AXFX_BUFFERUPDATE* buf;
    AXFX_DELAY* fx;
    s32* lp;
    s32* rp;
    s32* sp;
    s32 lv, rv, sv;
    int i;

    buf = (AXFX_BUFFERUPDATE*)chans;
    fx = (AXFX_DELAY*)context;

    if (fx->active) {
        fx->active &= ~2;
        return;
    }

    lp = buf->left;
    rp = buf->right;
    sp = buf->surround;

    for (i = 0; i < AX_SAMPLES_PER_FRAME; i++) {
        lv = fx->line[0][fx->curPos[0]];
        rv = fx->line[1][fx->curPos[1]];
        sv = fx->line[2][fx->curPos[2]];

        fx->line[0][fx->curPos[0]] = ((lv * fx->feedbackGain[0]) >> 7) + *lp;
        fx->line[1][fx->curPos[1]] = ((rv * fx->feedbackGain[1]) >> 7) + *rp;
        fx->line[2][fx->curPos[2]] = ((sv * fx->feedbackGain[2]) >> 7) + *sp;

        if (++fx->curPos[0] >= fx->length[0]) {
            fx->curPos[0] = 0;
        }

        if (++fx->curPos[1] >= fx->length[1]) {
            fx->curPos[1] = 0;
        }

        if (++fx->curPos[2] >= fx->length[2]) {
            fx->curPos[2] = 0;
        }

        *lp++ = (lv * fx->outGain[0]) >> 7;
        *rp++ = (rv * fx->outGain[1]) >> 7;
        *sp++ = (sv * fx->outGain[2]) >> 7;
    }
}

static BOOL __AllocDelayLine(AXFX_DELAY* fx) {
    int i;

    for (i = 0; i < ARRSIZE(fx->line); i++) {
        fx->line[i] = __AXFXAlloc(fx->length[i] * sizeof(s32));
        if (fx->line[i] == NULL) {
            return FALSE;
        }
    }

    return TRUE;
}

static void __FreeDelayLine(AXFX_DELAY* fx) {
    int i;

    for (i = 0; i < ARRSIZE(fx->line); i++) {
        if (fx->line[i] != NULL) {
            __AXFXFree(fx->line[i]);
            fx->line[i] = NULL;
        }
    }
}

static BOOL __InitParams(AXFX_DELAY* fx) {
    int i;

    for (i = 0; i < ARRSIZE(fx->line); i++) {
        if (fx->feedback[i] >= 100) {
            return FALSE;
        }

        if (fx->output[i] > 100) {
            return FALSE;
        }

        if (fx->line[i] == NULL) {
            return FALSE;
        }

        memset(fx->line[i], 0, fx->length[i] * sizeof(s32));
        fx->curPos[i] = 0;

        fx->feedbackGain[i] = 128.0f * fx->feedback[i] / 100.0f;
        fx->outGain[i] = 128.0f * fx->output[i] / 100.0f;
    }

    return TRUE;
}
