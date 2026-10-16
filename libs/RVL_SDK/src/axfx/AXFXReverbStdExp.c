#include <private/axfx.h>
#include <revolution/axfx.h>

#include <revolution/ax.h>

#include <revolution/os.h>

#include <math.h>
#include <string.h>

static BOOL __AllocDelayLine(AXFX_REVERBSTD_EXP* reverb);
static void __BzeroDelayLines(AXFX_REVERBSTD_EXP* reverb);
static void __FreeDelayLine(AXFX_REVERBSTD_EXP* reverb);

static BOOL __InitParams(AXFX_REVERBSTD_EXP* reverb);

static u32 __EarlySizeTable[8] = {163, 317, 479, 641, 797, 967, 1123, 1283};

static u32 __FilterSizeTable[7][4] = {{1789, 1999, 433, 149}, {149, 293, 251, 103},   {947, 1361, 433, 137}, {1279, 1531, 509, 149},
                                      {1531, 1847, 563, 179}, {1823, 2357, 571, 137}, {1823, 2357, 571, 179}};

u32 AXFXReverbStdExpGetMemSize(AXFX_REVERBSTD_EXP* reverb) {
    s32 i, j;

    s32 memSize = 0;

    ASSERTMSGLINE(147, reverb->preDelayTimeMax >= 0.0f, "The value of specified parameter is out of range.");

    memSize += __EarlySizeTable[7];
    memSize += (s32)(32000.0f * reverb->preDelayTimeMax);

    for (i = 0; i < 2; i++) {
        memSize += __FilterSizeTable[6][i];
    }

    for (i = 0; i < 2; i++) {
        memSize += __FilterSizeTable[6][i + 2];
    }

    return (memSize * 4) * AXFX_STEREO_CHANNEL_MAX;
}

BOOL AXFXReverbStdExpInit(AXFX_REVERBSTD_EXP* reverb) {
    u32 i, j;

    BOOL result = TRUE;
    BOOL enabled = OSDisableInterrupts();

    reverb->active = 1;

    ASSERTMSGLINE(193, reverb->preDelayTimeMax >= 0.0f, "The value of specified parameter is out of range.");

    if (reverb->preDelayTimeMax < 0.0f) {
        AXFXReverbStdExpShutdown(reverb);
        OSRestoreInterrupts(enabled);
        return FALSE;
    }

    reverb->earlyMaxLength = __EarlySizeTable[7];
    reverb->preDelayMaxLength = (u32)(32000.0f * reverb->preDelayTimeMax);

    for (i = 0; i < 2; i++) {
        reverb->combMaxLength[i] = __FilterSizeTable[6][i];
    }

    for (i = 0; i < 2; i++) {
        reverb->allpassMaxLength[i] = __FilterSizeTable[6][i + 2];
    }

    result = __AllocDelayLine(reverb);
    if (!result) {
        AXFXReverbStdExpShutdown(reverb);
        OSRestoreInterrupts(enabled);
        return FALSE;
    }

    __BzeroDelayLines(reverb);

    result = __InitParams(reverb);
    if (!result) {
        AXFXReverbStdExpShutdown(reverb);
        OSRestoreInterrupts(enabled);
        return FALSE;
    }

    reverb->active &= ~1;

    OSRestoreInterrupts(enabled);

    return TRUE;
}

BOOL AXFXReverbStdExpSettings(AXFX_REVERBSTD_EXP* reverb) {
    BOOL result = TRUE;
    BOOL enabled = OSDisableInterrupts();

    reverb->active |= 1;

    AXFXReverbStdExpShutdown(reverb);
    result = AXFXReverbStdExpInit(reverb);
    if (!result) {
        AXFXReverbStdExpShutdown(reverb);
        OSRestoreInterrupts(enabled);
        return FALSE;
    }

    reverb->active |= 2;
    reverb->active &= ~1;

    OSRestoreInterrupts(enabled);

    return TRUE;
}

BOOL AXFXReverbStdExpSettingsUpdate(AXFX_REVERBSTD_EXP* reverb) {
    BOOL result = TRUE;
    BOOL enabled = OSDisableInterrupts();

    reverb->active |= 1;

    __BzeroDelayLines(reverb);
    result = __InitParams(reverb);
    if (!result) {
        AXFXReverbStdExpShutdown(reverb);
        OSRestoreInterrupts(enabled);
        return FALSE;
    }

    reverb->active |= 2;
    reverb->active &= ~1;

    OSRestoreInterrupts(enabled);

    return TRUE;
}

void AXFXReverbStdExpShutdown(AXFX_REVERBSTD_EXP* reverb) {
    BOOL enabled = OSDisableInterrupts();

    reverb->active |= 1;

    __FreeDelayLine(reverb);

    OSRestoreInterrupts(enabled);
}

void AXFXReverbStdExpCallback(AXFX_BUS* bus, AXFX_REVERBSTD_EXP* reverb) {
    u32 i, j;

    s32* busParam[AXFX_STEREO_CHANNEL_MAX];
    s32* busIn[AXFX_STEREO_CHANNEL_MAX];
    s32* busOut[AXFX_STEREO_CHANNEL_MAX];
    u32 earlyPos;
    u32 preDelayPos;
    u32 combPos0;
    u32 combPos1;
    u32 allpassPos0;
    u32 allpassPos1;
    f32 sp64;
    f32 sp60;
    f32* earlyLine;
    f32 sp58;
    f32 earlyCoef;
    f32* preDelayLine;
    f32 sp4C;
    f32* combLine0;
    f32* combLine1;
    f32 sp40;
    f32 sp3C;
    f32 sp38;
    f32 combCoef0;
    f32 combCoef1;
    f32 sp2C;
    f32 sp28;
    f32 sp24;
    f32 sp20;
    f32 allpassCoef;
    f32 sp18;
    f32 sp14;
    f32 lpfCoef;
    f32 spC;
    f32 sp8;
    f32* allpassLine;

    if (reverb->active != 0) {
        reverb->active &= ~2;
        return;
    }
    busParam[AX_STEREO_L] = bus->left;
    busParam[AX_STEREO_R] = bus->right;
    busParam[AX_STEREO_S] = bus->surround;
    if (reverb->busIn) {
        busIn[AX_STEREO_L] = reverb->busIn->left;
        busIn[AX_STEREO_R] = reverb->busIn->right;
        busIn[AX_STEREO_S] = reverb->busIn->surround;
    }
    if (reverb->busOut) {
        busOut[AX_STEREO_L] = reverb->busOut->left;
        busOut[AX_STEREO_R] = reverb->busOut->right;
        busOut[AX_STEREO_S] = reverb->busOut->surround;
    }
    sp14 = 1.0f - reverb->lpfCoef;
    lpfCoef = reverb->lpfCoef;
    earlyCoef = reverb->earlyCoef;
    combCoef0 = reverb->combCoef[0];
    combCoef1 = reverb->combCoef[1];
    allpassCoef = reverb->allpassCoef;
    spC = 0.6f * reverb->earlyGain;
    sp8 = 0.6f * reverb->fusedGain;

    for (i = 0; i < 96; i++) {
        earlyPos = reverb->earlyPos;
        preDelayPos = reverb->preDelayPos;
        combPos0 = reverb->combPos[0];
        combPos1 = reverb->combPos[1];
        allpassPos0 = reverb->allpassPos[0];
        allpassPos1 = reverb->allpassPos[1];

        for (j = 0; j < AXFX_STEREO_CHANNEL_MAX; j++) {
            if (reverb->busIn) {
                sp64 = *busParam[j] + *busIn[j]++;
            } else {
                sp64 = *busParam[j];
            }
            earlyLine = reverb->earlyLine[j];
            sp58 = earlyLine[earlyPos];
            earlyLine[earlyPos] = sp64 + (sp58 * earlyCoef);
            if (reverb->preDelayLength != 0) {
                preDelayLine = reverb->preDelayLine[j];
                sp4C = preDelayLine[preDelayPos];
                preDelayLine[preDelayPos] = sp64;
            } else {
                sp4C = sp64;
            }
            combLine0 = reverb->combLine[j][0];
            sp40 = combLine0[combPos0];
            combLine0[combPos0] = sp4C + (sp40 * combCoef0);
            combLine1 = reverb->combLine[j][1];
            sp3C = combLine1[combPos1];
            combLine1[combPos1] = sp4C + (sp3C * combCoef1);
            sp38 = sp40 + sp3C;
            allpassLine = reverb->allpassLine[j][0];
            sp2C = allpassLine[allpassPos0];
            sp28 = sp38 + (sp2C * allpassCoef);
            allpassLine[allpassPos0] = sp28;
            sp24 = sp2C - (sp28 * allpassCoef);
            sp18 = (sp14 * sp24) + (lpfCoef * reverb->lastLpfOut[j]);
            reverb->lastLpfOut[j] = sp18;
            allpassLine = reverb->allpassLine[j][1];
            sp2C = allpassLine[allpassPos1];
            sp28 = sp18 + (sp2C * allpassCoef);
            allpassLine[allpassPos1] = sp28;
            sp20 = sp2C - (sp28 * allpassCoef);
            sp60 = (sp58 * spC) + (sp20 * sp8);
            *busParam[j]++ = (sp60 * reverb->outGain);
            if (reverb->busOut) {
                *busOut[j]++ = (sp60 * reverb->sendGain);
            }
        }
        if (++reverb->earlyPos >= reverb->earlyLength) {
            reverb->earlyPos = 0;
        }
        if (reverb->preDelayLength != 0) {
            if (++reverb->preDelayPos >= reverb->preDelayLength) {
                reverb->preDelayPos = 0;
            }
        }
        if (++reverb->combPos[0] >= reverb->combLength[0]) {
            reverb->combPos[0] = 0;
        }
        if (++reverb->combPos[1] >= reverb->combLength[1]) {
            reverb->combPos[1] = 0;
        }
        if (++reverb->allpassPos[0] >= reverb->allpassLength[0]) {
            reverb->allpassPos[0] = 0;
        }
        if (++reverb->allpassPos[1] >= reverb->allpassLength[1]) {
            reverb->allpassPos[1] = 0;
        }
    }
}

static BOOL __AllocDelayLine(AXFX_REVERBSTD_EXP* reverb) {
    u32 i, j;

    for (i = 0; i < AXFX_STEREO_CHANNEL_MAX; i++) {
        reverb->earlyLine[i] = __AXFXAlloc(reverb->earlyMaxLength * 4);
        ASSERTMSGLINE(608, reverb->earlyLine[i], "Can't allocate the memory.");
        if (!reverb->earlyLine[i]) {
            return FALSE;
        }
        if (reverb->preDelayMaxLength) {
            reverb->preDelayLine[i] = __AXFXAlloc(reverb->preDelayMaxLength * 4);
            ASSERTMSGLINE(615, reverb->preDelayLine[i], "Can't allocate the memory.");
            if (!reverb->preDelayLine[i]) {
                return FALSE;
            }
        } else {
            reverb->preDelayLine[i] = NULL;
        }
        for (j = 0; j < 2; j++) {
            reverb->combLine[i][j] = __AXFXAlloc(reverb->combMaxLength[j] * 4);
            ASSERTMSGLINE(627, reverb->combLine[i][j], "Can't allocate the memory.");
            if (!reverb->combLine[i][j]) {
                return FALSE;
            }
        }
        for (j = 0; j < 2; j++) {
            reverb->allpassLine[i][j] = __AXFXAlloc(reverb->allpassMaxLength[j] * 4);
            ASSERTMSGLINE(635, reverb->allpassLine[i][j], "Can't allocate the memory.");
            if (!reverb->allpassLine[i][j]) {
                return FALSE;
            }
        }
    }

    return TRUE;
}

static void __BzeroDelayLines(AXFX_REVERBSTD_EXP* reverb) {
    u32 i, j;

    for (i = 0; i < AXFX_STEREO_CHANNEL_MAX; i++) {
        if (reverb->earlyLine[i]) {
            memset(reverb->earlyLine[i], 0, reverb->earlyMaxLength * 4);
        }
        if (reverb->preDelayLine[i]) {
            memset(reverb->preDelayLine[i], 0, reverb->preDelayMaxLength * 4);
        }

        for (j = 0; j < 2; j++) {
            if (reverb->combLine[i][j]) {
                memset(reverb->combLine[i][j], 0, reverb->combMaxLength[j] * 4);
            }
        }

        for (j = 0; j < 2; j++) {
            if (reverb->allpassLine[i][j]) {
                memset(reverb->allpassLine[i][j], 0, reverb->allpassMaxLength[j] * 4);
            }
        }
    }
}

static void __FreeDelayLine(AXFX_REVERBSTD_EXP* reverb) {
    u32 i, j;

    for (i = 0; i < AXFX_STEREO_CHANNEL_MAX; i++) {
        if (reverb->earlyLine[i]) {
            __AXFXFree(reverb->earlyLine[i]);
            reverb->earlyLine[i] = NULL;
        }
        if (reverb->preDelayLine[i]) {
            __AXFXFree(reverb->preDelayLine[i]);
            reverb->preDelayLine[i] = NULL;
        }

        for (j = 0; j < 2; j++) {
            if (reverb->combLine[i][j]) {
                __AXFXFree(reverb->combLine[i][j]);
                reverb->combLine[i][j] = NULL;
            }
        }

        for (j = 0; j < 2; j++) {
            if (reverb->allpassLine[i][j]) {
                __AXFXFree(reverb->allpassLine[i][j]);
                reverb->allpassLine[i][j] = NULL;
            }
        }
    }
}

static BOOL __InitParams(AXFX_REVERBSTD_EXP* reverb) {
    u32 i, j;

    ASSERTMSGLINE(766, reverb->earlyMode < 8, "The value of specified parameter is out of range.");
    if (reverb->earlyMode >= 8) {
        return FALSE;
    }

    ASSERTMSGLINE(769, reverb->preDelayTime >= 0.0f && reverb->preDelayTime <= reverb->preDelayTimeMax,
                  "The value of specified parameter is out of range.");
    if (reverb->preDelayTime < 0.0f || reverb->preDelayTime > reverb->preDelayTimeMax) {
        return FALSE;
    }

    ASSERTMSGLINE(772, reverb->fusedMode < 6, "The value of specified parameter is out of range.");
    if (reverb->fusedMode >= 6) {
        return FALSE;
    }

    ASSERTMSGLINE(775, reverb->fusedTime >= 0.0f, "The value of specified parameter is out of range.");
    if (reverb->fusedTime < 0.0f) {
        return FALSE;
    }

    ASSERTMSGLINE(778, reverb->coloration >= 0.0f && reverb->coloration <= 1.0f, "The value of specified parameter is out of range.");
    if (reverb->coloration < 0.0f || reverb->coloration > 1.0f) {
        return FALSE;
    }

    ASSERTMSGLINE(781, reverb->damping >= 0.0f && reverb->damping <= 1.0f, "The value of specified parameter is out of range.");
    if (reverb->damping < 0.0f || reverb->damping > 1.0f) {
        return FALSE;
    }

    ASSERTMSGLINE(784, reverb->earlyGain >= 0.0f && reverb->earlyGain <= 1.0f, "The value of specified parameter is out of range.");
    if (reverb->earlyGain < 0.0f || reverb->earlyGain > 1.0f) {
        return FALSE;
    }

    ASSERTMSGLINE(787, reverb->fusedGain >= 0.0f && reverb->fusedGain <= 1.0f, "The value of specified parameter is out of range.");
    if (reverb->fusedGain < 0.0f || reverb->fusedGain > 1.0f) {
        return FALSE;
    }

    ASSERTMSGLINE(791, reverb->outGain >= 0.0f && reverb->outGain <= 1.0f, "The value of specified parameter is out of range.");
    if (reverb->outGain < 0.0f || reverb->outGain > 1.0f) {
        return FALSE;
    }

    ASSERTMSGLINE(794, reverb->sendGain >= 0.0f && reverb->sendGain <= 1.0f, "The value of specified parameter is out of range.");
    if (reverb->sendGain < 0.0f || reverb->sendGain > 1.0f) {
        return FALSE;
    }

    reverb->earlyPos = 0;
    reverb->earlyLength = __EarlySizeTable[reverb->earlyMode];
    if (reverb->earlyMode <= 3) {
        reverb->earlyCoef = -0.33f;
    } else {
        reverb->earlyCoef = 0.33f;
    }

    reverb->preDelayPos = 0;
    reverb->preDelayLength = reverb->preDelayTime * 32000.0f;
    for (i = 0; i < 2; i++) {
        reverb->combPos[i] = 0;
        reverb->combLength[i] = __FilterSizeTable[reverb->fusedMode][i];
        reverb->combCoef[i] = powf(10.0f, ((reverb->combLength[i] * -3.0f) / (reverb->fusedTime * 32000.0f)));
    }

    for (i = 0; i < 2; i++) {
        reverb->allpassPos[i] = 0;
        reverb->allpassLength[i] = __FilterSizeTable[reverb->fusedMode][i + 2];
    }

    reverb->allpassCoef = reverb->coloration;
    reverb->lpfCoef = 1.0f - reverb->damping;
    if (reverb->lpfCoef > 0.95f) {
        reverb->lpfCoef = 0.95f;
    }

    for (j = 0; j < AXFX_STEREO_CHANNEL_MAX; j++) {
        reverb->lastLpfOut[j] = 0.0f;
    }

    return TRUE;
}
