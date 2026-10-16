#include <private/axfx.h>
#include <revolution/axfx.h>

#include <revolution/ax.h>

#include <revolution/os.h>

#include <math.h>
#include <string.h>
static BOOL __AllocDelayLine(AXFX_REVERBHI_EXP_DPL2* reverb);
static void __BzeroDelayLines(AXFX_REVERBHI_EXP_DPL2* reverb);
static void __FreeDelayLine(AXFX_REVERBHI_EXP_DPL2* reverb);

static BOOL __InitParams(AXFX_REVERBHI_EXP_DPL2* reverb);

static u32 __EarlySizeTable[8][3] = {
    {157, 479, 829},   {317, 809, 1117},  {479, 941, 1487},   {641, 1259, 1949},
    {797, 1667, 2579}, {967, 1901, 2903}, {1123, 2179, 3413}, {1279, 2477, 3889},
};

static f32 __EarlyCoefTable[8][3] = {{0.4f, -1.0f, 0.3f}, {0.5f, -0.95f, 0.3f}, {0.6f, -0.9f, 0.3f}, {0.75f, -0.85f, 0.3f},
                                     {-0.9f, 0.8f, 0.3f}, {-1.0f, 0.7f, 0.3f},  {-1.0f, 0.7f, 0.3f}, {-1.0f, 0.7f, 0.3f}};

static u32 __FilterSizeTable[7][9] = {{1789, 1999, 2333, 433, 149, 47, 73, 67, 71}, {149, 293, 449, 251, 103, 47, 73, 67, 71},
                                      {947, 1361, 1531, 433, 137, 47, 73, 67, 71},  {1279, 1531, 1973, 509, 149, 47, 73, 67, 71},
                                      {1531, 1847, 2297, 563, 179, 47, 73, 67, 71}, {1823, 2357, 2693, 571, 137, 47, 73, 67, 71},
                                      {1823, 2357, 2693, 571, 179, 47, 73, 67, 71}};

u32 AXFXReverbHiExpGetMemSizeDpl2(AXFX_REVERBHI_EXP_DPL2* reverb) {
    s32 i, j;

    s32 memSize = 0;

    ASSERTMSGLINE(172, reverb->preDelayTimeMax >= 0.0f, "The value of specified parameter is out of range.");

    memSize += __EarlySizeTable[7][2];
    memSize += (s32)(32000.0f * reverb->preDelayTimeMax);

    for (i = 0; i < 3; i++) {
        memSize += __FilterSizeTable[6][i];
    }

    for (i = 0; i < 2; i++) {
        memSize += __FilterSizeTable[6][i + 3];
    }

    memSize = memSize * AXFX_DPL2_CHANNEL_MAX;
    for (j = 0; j < AXFX_DPL2_CHANNEL_MAX; j++) {
        memSize += __FilterSizeTable[6][j + 5];
    }

    return memSize * 4;
}

BOOL AXFXReverbHiExpInitDpl2(AXFX_REVERBHI_EXP_DPL2* reverb) {
    u32 i, j;

    BOOL result = TRUE;
    BOOL enabled = OSDisableInterrupts();

    if (AXGetMode() != AX_OUTPUT_DPL2) {
#ifdef DEBUG
        OSReport("AXFXReverbHiExpInitDpl2(): WARNING: Invalid AX output mode.\n");
#endif
        OSRestoreInterrupts(enabled);
        return FALSE;
    }

    reverb->active = 1;

    ASSERTMSGLINE(224, reverb->preDelayTimeMax >= 0.0f, "The value of specified parameter is out of range.");

    if (reverb->preDelayTimeMax < 0.0f) {
        AXFXReverbHiExpShutdownDpl2(reverb);
        OSRestoreInterrupts(enabled);
        return FALSE;
    }

    reverb->earlyMaxLength = __EarlySizeTable[7][2];
    reverb->preDelayMaxLength = (u32)(32000.0f * reverb->preDelayTimeMax);

    for (i = 0; i < 3; i++) {
        reverb->combMaxLength[i] = __FilterSizeTable[6][i];
    }

    for (i = 0; i < 2; i++) {
        reverb->allpassMaxLength[i] = __FilterSizeTable[6][i + 3];
    }

    for (j = 0; j < AXFX_DPL2_CHANNEL_MAX; j++) {
        reverb->lastAllpassMaxLength[j] = __FilterSizeTable[6][j + 5];
    }

    result = __AllocDelayLine(reverb);
    if (!result) {
        AXFXReverbHiExpShutdownDpl2(reverb);
        OSRestoreInterrupts(enabled);
        return FALSE;
    }

    __BzeroDelayLines(reverb);

    result = __InitParams(reverb);
    if (!result) {
        AXFXReverbHiExpShutdownDpl2(reverb);
        OSRestoreInterrupts(enabled);
        return FALSE;
    }

    reverb->active &= ~1;

    OSRestoreInterrupts(enabled);

    return TRUE;
}

BOOL AXFXReverbHiExpSettingsDpl2(AXFX_REVERBHI_EXP_DPL2* reverb) {
    BOOL result = TRUE;
    BOOL enabled = OSDisableInterrupts();

    reverb->active |= 1;

    AXFXReverbHiExpShutdownDpl2(reverb);
    result = AXFXReverbHiExpInitDpl2(reverb);
    if (!result) {
        AXFXReverbHiExpShutdownDpl2(reverb);
        OSRestoreInterrupts(enabled);
        return FALSE;
    }

    reverb->active |= 2;
    reverb->active &= ~1;

    OSRestoreInterrupts(enabled);

    return TRUE;
}

BOOL AXFXReverbHiExpSettingsUpdateDpl2(AXFX_REVERBHI_EXP_DPL2* reverb) {
    BOOL result = TRUE;
    BOOL enabled = OSDisableInterrupts();

    reverb->active |= 1;

    __BzeroDelayLines(reverb);
    result = __InitParams(reverb);
    if (!result) {
        AXFXReverbHiExpShutdownDpl2(reverb);
        OSRestoreInterrupts(enabled);
        return FALSE;
    }

    reverb->active |= 2;
    reverb->active &= ~1;

    OSRestoreInterrupts(enabled);

    return TRUE;
}

void AXFXReverbHiExpShutdownDpl2(AXFX_REVERBHI_EXP_DPL2* reverb) {
    BOOL enabled = OSDisableInterrupts();

    reverb->active |= 1;

    __FreeDelayLine(reverb);

    OSRestoreInterrupts(enabled);
}

void AXFXReverbHiExpCallbackDpl2(AXFX_BUS_DPL2* bus, AXFX_REVERBHI_EXP_DPL2* reverb) {
    u32 i, j, k;

    f32* earlyLine;
    f32* allpassLine;

    s32* busParam[AXFX_DPL2_CHANNEL_MAX];
    f32 sp6C[AXFX_DPL2_CHANNEL_MAX];
    f32 sp60[AXFX_DPL2_CHANNEL_MAX];
    s32* busIn[AXFX_DPL2_CHANNEL_MAX];
    s32* busOut[AXFX_DPL2_CHANNEL_MAX];
    f32 sp40;
    f32 sp3C;
    f32* preDelayLine;
    f32 sp34;
    f32* combLine;
    f32 sp2C;
    f32 allpassCoef;
    f32 lastLpfOut;
    f32 sp20;
    f32 lpfCoef;
    f32 sp18;
    f32 sp14;
    f32 sp10_2;
    f32 sp10;
    f32 spC;
    f32 sp8;

    f32 var_f31;
    f32 var_f30;
    f32 var_f29;

    if (reverb->active) {
        reverb->active &= ~2;
        return;
    }
    busParam[AX_DPL2_L] = bus->L;
    busParam[AX_DPL2_R] = bus->R;
    busParam[AX_DPL2_LS] = bus->Ls;
    busParam[AX_DPL2_RS] = bus->Rs;
    if (reverb->busIn) {
        busIn[AX_DPL2_L] = reverb->busIn->L;
        busIn[AX_DPL2_R] = reverb->busIn->R;
        busIn[AX_DPL2_LS] = reverb->busIn->Ls;
        busIn[AX_DPL2_RS] = reverb->busIn->Rs;
    }
    if (reverb->busOut) {
        busOut[AX_DPL2_L] = reverb->busOut->L;
        busOut[AX_DPL2_R] = reverb->busOut->R;
        busOut[AX_DPL2_LS] = reverb->busOut->Ls;
        busOut[AX_DPL2_RS] = reverb->busOut->Rs;
    }
    sp20 = 1.0f - reverb->lpfCoef;
    lpfCoef = reverb->lpfCoef;
    allpassCoef = reverb->allpassCoef;
    sp18 = 0.6f * reverb->fusedGain;
    sp14 = 0.333333f * reverb->crosstalk;
    for (i = 0; i < 96; i++) {
        for (j = 0; j < AXFX_DPL2_CHANNEL_MAX; j++) {
            if (reverb->busIn) {
                sp40 = *busParam[j] + *busIn[j]++;
            } else {
                sp40 = *busParam[j];
            }
            earlyLine = reverb->earlyLine[j];
            sp3C = (reverb->earlyCoef[0] * earlyLine[reverb->earlyPos[0]]) + (reverb->earlyCoef[1] * earlyLine[reverb->earlyPos[1]]) +
                   (reverb->earlyCoef[2] * earlyLine[reverb->earlyPos[2]]);
            earlyLine[reverb->earlyPos[2]] = sp40;
            if (reverb->preDelayLength != 0) {
                preDelayLine = reverb->preDelayLine[j];
                sp34 = preDelayLine[reverb->preDelayPos];
                preDelayLine[reverb->preDelayPos] = sp40;
            } else {
                sp34 = sp40;
            }
            var_f31 = 0.0f;
            for (k = 0; k < 3; k++) {
                combLine = reverb->combLine[j][k];
                sp2C = combLine[reverb->combPos[k]];
                combLine[reverb->combPos[k]] = sp34 + (sp2C * reverb->combCoef[k]);
                var_f31 += sp2C;
            }
            for (k = 0; k < 2; k++) {
                allpassLine = reverb->allpassLine[j][k];
                var_f30 = allpassLine[reverb->allpassPos[k]];
                var_f29 = var_f31 + (var_f30 * allpassCoef);
                allpassLine[reverb->allpassPos[k]] = var_f29;
                var_f31 = var_f30 - (var_f29 * allpassCoef);
            }
            lastLpfOut = (sp20 * var_f31) + (lpfCoef * reverb->lastLpfOut[j]);
            reverb->lastLpfOut[j] = lastLpfOut;
            allpassLine = reverb->lastAllpassLine[j];
            var_f30 = allpassLine[reverb->lastAllpassPos[j]];
            var_f29 = lastLpfOut + (var_f30 * allpassCoef);
            allpassLine[reverb->lastAllpassPos[j]] = var_f29;
            sp60[j] = var_f30 - (var_f29 * allpassCoef);
            if (++reverb->lastAllpassPos[j] >= reverb->lastAllpassLength[j]) {
                reverb->lastAllpassPos[j] = 0;
            }
            sp60[j] *= sp18;
            sp60[j] += sp3C;
        }
        sp10_2 = sp60[AX_DPL2_R] + sp60[AX_DPL2_LS] + sp60[AX_DPL2_RS];
        sp10 = sp60[AX_DPL2_L] + sp60[AX_DPL2_LS] + sp60[AX_DPL2_RS];
        spC = sp60[AX_DPL2_L] + sp60[AX_DPL2_R] + sp60[AX_DPL2_RS];
        sp8 = sp60[AX_DPL2_L] + sp60[AX_DPL2_R] + sp60[AX_DPL2_LS];
        sp6C[AX_DPL2_L] = sp60[AX_DPL2_L] + (sp10_2 * sp14);
        sp6C[AX_DPL2_R] = sp60[AX_DPL2_R] + (sp10 * sp14);
        sp6C[AX_DPL2_LS] = sp60[AX_DPL2_LS] + (spC * sp14);
        sp6C[AX_DPL2_RS] = sp60[AX_DPL2_RS] + (sp8 * sp14);
        *busParam[AX_DPL2_L]++ = (sp6C[AX_DPL2_L] * reverb->outGain);
        *busParam[AX_DPL2_R]++ = (sp6C[AX_DPL2_R] * reverb->outGain);
        *busParam[AX_DPL2_LS]++ = (sp6C[AX_DPL2_LS] * reverb->outGain);
        *busParam[AX_DPL2_RS]++ = (sp6C[AX_DPL2_RS] * reverb->outGain);
        if (reverb->busOut) {
            *busOut[AX_DPL2_L]++ = (sp6C[AX_DPL2_L] * reverb->sendGain);
            *busOut[AX_DPL2_R]++ = (sp6C[AX_DPL2_R] * reverb->sendGain);
            *busOut[AX_DPL2_LS]++ = (sp6C[AX_DPL2_LS] * reverb->sendGain);
            *busOut[AX_DPL2_RS]++ = (sp6C[AX_DPL2_RS] * reverb->sendGain);
        }
        for (k = 0; k < 3; k++) {
            if (++reverb->earlyPos[k] >= reverb->earlyLength) {
                reverb->earlyPos[k] = 0;
            }
        }
        if (reverb->preDelayLength != 0) {
            if (++reverb->preDelayPos >= reverb->preDelayLength) {
                reverb->preDelayPos = 0;
            }
        }
        for (k = 0; k < 3; k++) {
            if (++reverb->combPos[k] >= reverb->combLength[k]) {
                reverb->combPos[k] = 0;
            }
        }
        for (k = 0; k < 2; k++) {
            if (++reverb->allpassPos[k] >= reverb->allpassLength[k]) {
                reverb->allpassPos[k] = 0;
            }
        }
    }
}

static BOOL __AllocDelayLine(AXFX_REVERBHI_EXP_DPL2* reverb) {
    u32 i, j;

    for (i = 0; i < AXFX_DPL2_CHANNEL_MAX; i++) {
        reverb->earlyLine[i] = __AXFXAlloc(reverb->earlyMaxLength * 4);
        ASSERTMSGLINE(659, reverb->earlyLine[i], "Can't allocate the memory.");
        if (!reverb->earlyLine[i]) {
            return FALSE;
        }
        if (reverb->preDelayMaxLength) {
            reverb->preDelayLine[i] = __AXFXAlloc(reverb->preDelayMaxLength * 4);
            ASSERTMSGLINE(666 /* 0_0 */, reverb->preDelayLine[i], "Can't allocate the memory.");
            if (!reverb->preDelayLine[i]) {
                return FALSE;
            }
        } else {
            reverb->preDelayLine[i] = NULL;
        }
        for (j = 0; j < 3; j++) {
            reverb->combLine[i][j] = __AXFXAlloc(reverb->combMaxLength[j] * 4);
            ASSERTMSGLINE(678, reverb->combLine[i][j], "Can't allocate the memory.");
            if (!reverb->combLine[i][j]) {
                return FALSE;
            }
        }
        for (j = 0; j < 2; j++) {
            reverb->allpassLine[i][j] = __AXFXAlloc(reverb->allpassMaxLength[j] * 4);
            ASSERTMSGLINE(686, reverb->allpassLine[i][j], "Can't allocate the memory.");
            if (!reverb->allpassLine[i][j]) {
                return FALSE;
            }
        }
        reverb->lastAllpassLine[i] = __AXFXAlloc(reverb->lastAllpassMaxLength[i] * 4);
        ASSERTMSGLINE(692, reverb->lastAllpassLine[i], "Can't allocate the memory.");
        if (!reverb->lastAllpassLine[i]) {
            return FALSE;
        }
    }

    return TRUE;
}

static void __BzeroDelayLines(AXFX_REVERBHI_EXP_DPL2* reverb) {
    u32 i, j;

    for (i = 0; i < AXFX_DPL2_CHANNEL_MAX; i++) {
        if (reverb->earlyLine[i]) {
            memset(reverb->earlyLine[i], 0, reverb->earlyMaxLength * 4);
        }
        if (reverb->preDelayLine[i]) {
            memset(reverb->preDelayLine[i], 0, reverb->preDelayMaxLength * 4);
        }

        for (j = 0; j < 3; j++) {
            if (reverb->combLine[i][j]) {
                memset(reverb->combLine[i][j], 0, reverb->combMaxLength[j] * 4);
            }
        }

        for (j = 0; j < 2; j++) {
            if (reverb->allpassLine[i][j]) {
                memset(reverb->allpassLine[i][j], 0, reverb->allpassMaxLength[j] * 4);
            }
        }

        if (reverb->lastAllpassLine[i]) {
            memset(reverb->lastAllpassLine[i], 0, reverb->lastAllpassMaxLength[i] * 4);
        }
    }
}

static void __FreeDelayLine(AXFX_REVERBHI_EXP_DPL2* reverb) {
    u32 i, j;

    for (i = 0; i < AXFX_DPL2_CHANNEL_MAX; i++) {
        if (reverb->earlyLine[i]) {
            __AXFXFree(reverb->earlyLine[i]);
            reverb->earlyLine[i] = NULL;
        }
        if (reverb->preDelayLine[i]) {
            __AXFXFree(reverb->preDelayLine[i]);
            reverb->preDelayLine[i] = NULL;
        }

        for (j = 0; j < 3; j++) {
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

        if (reverb->lastAllpassLine[i]) {
            __AXFXFree(reverb->lastAllpassLine[i]);
            reverb->lastAllpassLine[i] = NULL;
        }
    }
}

static BOOL __InitParams(AXFX_REVERBHI_EXP_DPL2* reverb) {
    u32 i, j;

    ASSERTMSGLINE(836, reverb->earlyMode < 8, "The value of specified parameter is out of range.");
    if (reverb->earlyMode >= 8) {
        return FALSE;
    }

    ASSERTMSGLINE(839, reverb->preDelayTime >= 0.0f && reverb->preDelayTime <= reverb->preDelayTimeMax,
                  "The value of specified parameter is out of range.");
    if (reverb->preDelayTime < 0.0f || reverb->preDelayTime > reverb->preDelayTimeMax) {
        return FALSE;
    }

    ASSERTMSGLINE(842, reverb->fusedMode < 6, "The value of specified parameter is out of range.");
    if (reverb->fusedMode >= 6) {
        return FALSE;
    }

    ASSERTMSGLINE(845, reverb->fusedTime >= 0.0f, "The value of specified parameter is out of range.");
    if (reverb->fusedTime < 0.0f) {
        return FALSE;
    }

    ASSERTMSGLINE(848, reverb->coloration >= 0.0f && reverb->coloration <= 1.0f, "The value of specified parameter is out of range.");
    if (reverb->coloration < 0.0f || reverb->coloration > 1.0f) {
        return FALSE;
    }

    ASSERTMSGLINE(851, reverb->damping >= 0.0f && reverb->damping <= 1.0f, "The value of specified parameter is out of range.");
    if (reverb->damping < 0.0f || reverb->damping > 1.0f) {
        return FALSE;
    }

    ASSERTMSGLINE(854, reverb->crosstalk >= 0.0f && reverb->crosstalk <= 1.0f, "The value of specified parameter is out of range.");
    if (reverb->crosstalk < 0.0f || reverb->crosstalk > 1.0f) {
        return FALSE;
    }

    ASSERTMSGLINE(857, reverb->earlyGain >= 0.0f && reverb->earlyGain <= 1.0f, "The value of specified parameter is out of range.");
    if (reverb->earlyGain < 0.0f || reverb->earlyGain > 1.0f) {
        return FALSE;
    }

    ASSERTMSGLINE(860, reverb->fusedGain >= 0.0f && reverb->fusedGain <= 1.0f, "The value of specified parameter is out of range.");
    if (reverb->fusedGain < 0.0f || reverb->fusedGain > 1.0f) {
        return FALSE;
    }

    ASSERTMSGLINE(865, reverb->outGain >= 0.0f && reverb->outGain <= 1.0f, "The value of specified parameter is out of range.");
    if (reverb->outGain < 0.0f || reverb->outGain > 1.0f) {
        return FALSE;
    }

    ASSERTMSGLINE(868, reverb->sendGain >= 0.0f && reverb->sendGain <= 1.0f, "The value of specified parameter is out of range.");
    if (reverb->sendGain < 0.0f || reverb->sendGain > 1.0f) {
        return FALSE;
    }

    reverb->earlyLength = __EarlySizeTable[reverb->earlyMode][2];
    for (i = 0; i < 3; i++) {
        reverb->earlyPos[i] = reverb->earlyLength - __EarlySizeTable[reverb->earlyMode][i];
        reverb->earlyCoef[i] = reverb->earlyGain * __EarlyCoefTable[reverb->earlyMode][i] * 0.6f;
    }

    reverb->preDelayPos = 0;
    reverb->preDelayLength = reverb->preDelayTime * 32000.0f;
    for (i = 0; i < 3; i++) {
        reverb->combPos[i] = 0;
        reverb->combLength[i] = __FilterSizeTable[reverb->fusedMode][i];
        reverb->combCoef[i] = powf(10.0f, ((reverb->combLength[i] * -3.0f) / (reverb->fusedTime * 32000.0f)));
    }

    for (i = 0; i < 2; i++) {
        reverb->allpassPos[i] = 0;
        reverb->allpassLength[i] = __FilterSizeTable[reverb->fusedMode][i + 3];
    }

    for (j = 0; j < AXFX_DPL2_CHANNEL_MAX; j++) {
        reverb->lastAllpassPos[j] = 0;
        reverb->lastAllpassLength[j] = __FilterSizeTable[reverb->fusedMode][j + 5];
    }

    reverb->allpassCoef = reverb->coloration;
    reverb->lpfCoef = 1.0f - reverb->damping;
    if (reverb->lpfCoef > 0.95f) {
        reverb->lpfCoef = 0.95f;
    }

    for (j = 0; j < AXFX_DPL2_CHANNEL_MAX; j++) {
        reverb->lastLpfOut[j] = 0.0f;
    }

    return TRUE;
}
