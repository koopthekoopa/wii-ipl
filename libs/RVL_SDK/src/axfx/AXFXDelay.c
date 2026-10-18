#include <private/axfx.h>
#include <revolution/axfx.h>

#include <revolution/ax.h>

#include <revolution/os.h>

#include <math.h>
#include <string.h>

static BOOL __AllocDelayLine(AXFX_DELAY* delay);
static void __FreeDelayLine(AXFX_DELAY* delay);

static BOOL __InitParams(AXFX_DELAY* delay);

u32 AXFXDelayGetMemSize(AXFX_DELAY* delay) {
    int i;
    u32 memSize;

    memSize = 0;

    for (i = 0; i < AXFX_STEREO_CHANNEL_MAX; i++) {
        ASSERTMSGLINE(70, delay->delay[i], "The value of specified parameter is out of range.");
        memSize += delay->delay[i];
    }
    return (memSize << 5) * 4;
}

BOOL AXFXDelayInit(AXFX_DELAY* delay) {
    BOOL result;
    BOOL enabled;
    u32 i;

    result = TRUE;
    enabled = OSDisableInterrupts();

    delay->active = 1;

    for (i = 0; i < AXFX_STEREO_CHANNEL_MAX; i++) {
        ASSERTMSGLINE(107, delay->delay[i], "The value of specified parameter is out of range.");

        if (delay->delay[i] == 0) {
            AXFXDelayShutdown(delay);
            OSRestoreInterrupts(enabled);
            return FALSE;
        }

        delay->length[i] = (delay->delay[i] << 5);
    }

    result = __AllocDelayLine(delay);
    if (result == FALSE) {
        AXFXDelayShutdown(delay);
        OSRestoreInterrupts(enabled);
        return FALSE;
    }

    result = __InitParams(delay);
    if (result == FALSE) {
        AXFXDelayShutdown(delay);
        OSRestoreInterrupts(enabled);
        return FALSE;
    }

    delay->active |= 2;
    delay->active &= 0xFFFFFFFE;

    OSRestoreInterrupts(enabled);

    return TRUE;
}

BOOL AXFXDelaySettings(AXFX_DELAY* delay) {
    BOOL result = TRUE;
    BOOL enabled = OSDisableInterrupts();

    delay->active |= 1;

    AXFXDelayShutdown(delay);

    result = AXFXDelayInit(delay);
    if (result == FALSE) {
        AXFXDelayShutdown(delay);
        OSRestoreInterrupts(enabled);
        return FALSE;
    }

    delay->active |= 2;
    delay->active &= 0xFFFFFFFE;

    OSRestoreInterrupts(enabled);

    return TRUE;
}

void AXFXDelayShutdown(AXFX_DELAY* delay) {
    BOOL enabled = OSDisableInterrupts();

    delay->active |= 1;

    __FreeDelayLine(delay);

    OSRestoreInterrupts(enabled);
}

void AXFXDelayCallback(AXFX_BUS* bus, AXFX_DELAY* delay) {
    s32* busParam[AXFX_STEREO_CHANNEL_MAX];
    s32 line[AXFX_STEREO_CHANNEL_MAX];
    u32 i;

    if (delay->active != 0) {
        delay->active &= 0xFFFFFFFD;
        return;
    }

    busParam[0] = bus->left;
    busParam[1] = bus->right;
    busParam[2] = bus->surround;

    for (i = 0; i < 96; i++) {
        line[0] = delay->line[0][delay->curPos[0]];
        line[1] = delay->line[1][delay->curPos[1]];
        line[2] = delay->line[2][delay->curPos[2]];
        delay->line[0][delay->curPos[0]] = *busParam[0] + ((line[0] * delay->feedbackGain[0]) >> 7);
        delay->line[1][delay->curPos[1]] = *busParam[1] + ((line[1] * delay->feedbackGain[1]) >> 7);
        delay->line[2][delay->curPos[2]] = *busParam[2] + ((line[2] * delay->feedbackGain[2]) >> 7);
        if (++delay->curPos[0] >= delay->length[0]) {
            delay->curPos[0] = 0;
        }
        if (++delay->curPos[1] >= delay->length[1]) {
            delay->curPos[1] = 0;
        }
        if (++delay->curPos[2] >= delay->length[2]) {
            delay->curPos[2] = 0;
        }
        *busParam[0]++ = (line[0] * delay->outGain[0]) >> 7;
        *busParam[1]++ = (line[1] * delay->outGain[1]) >> 7;
        *busParam[2]++ = (line[2] * delay->outGain[2]) >> 7;
    }
}

static BOOL __AllocDelayLine(AXFX_DELAY* delay) {
    u32 i;

    for (i = 0; i < AXFX_STEREO_CHANNEL_MAX; i++) {
        delay->line[i] = __AXFXAlloc(delay->length[i] * 4);
        ASSERTMSGLINE(280, delay->line[i], "Can't allocate the memory.");
        if (!delay->line[i]) {
            return FALSE;
        }
    }

    return TRUE;
}

static void __FreeDelayLine(AXFX_DELAY* delay) {
    u32 i;

    for (i = 0; i < AXFX_STEREO_CHANNEL_MAX; i++) {
        if (delay->line[i]) {
            __AXFXFree(delay->line[i]);
            delay->line[i] = NULL;
        }
    }
}

static BOOL __InitParams(AXFX_DELAY* delay) {
    u32 i;

    for (i = 0; i < AXFX_STEREO_CHANNEL_MAX; i++) {
        ASSERTMSGLINE(331, delay->feedback[i] < 100, "The value of specified parameter is out of range.");
        if (delay->feedback[i] >= 100) {
            return FALSE;
        }

        ASSERTMSGLINE(334, delay->output[i] <= 100, "The value of specified parameter is out of range.");
        if (delay->output[i] > 100) {
            return FALSE;
        }

        ASSERTMSGLINE(340, delay->line[i], "Buffer is not allocated.");
        if (!delay->line[i]) {
            return FALSE;
        }

        memset(delay->line[i], 0, delay->length[i] * 4);

        delay->curPos[i] = 0;
        delay->feedbackGain[i] = (s32)((128.0f * (f32)delay->feedback[i]) / 100.0f);
        delay->outGain[i] = (s32)((128.0f * (f32)delay->output[i]) / 100.0f);
    }
    return TRUE;
}
