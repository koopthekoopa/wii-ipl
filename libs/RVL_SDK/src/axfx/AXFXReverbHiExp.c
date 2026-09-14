#include <private/axfx.h>
#include <revolution/axfx.h>
#include <revolution/os.h>

#include <math.h>
#include <string.h>

static BOOL __AllocDelayLine(AXFX_REVERBHI_EXP* fx);
static void __BzeroDelayLines(AXFX_REVERBHI_EXP* fx);
static void __FreeDelayLine(AXFX_REVERBHI_EXP* fx);
static BOOL __InitParams(AXFX_REVERBHI_EXP* fx);

static u32 __EarlySizeTable[8][3] = {{157, 479, 829},   {317, 809, 1117},  {479, 941, 1487},   {641, 1259, 1949},
                                     {797, 1667, 2579}, {967, 1901, 2903}, {1123, 2179, 3413}, {1279, 2477, 3889}};

static f32 __EarlyCoefTable[8][3] = {{0.4f, -1.0f, 0.3f}, {0.5f, -0.95f, 0.3f}, {0.6f, -0.9f, 0.3f}, {0.75f, -0.85f, 0.3f},
                                     {-0.9f, 0.8f, 0.3f}, {-1.0f, 0.7f, 0.3f},  {-1.0f, 0.7f, 0.3f}, {-1.0f, 0.7f, 0.3f}};

static u32 __FilterSizeTable[7][8] = {{1789, 1999, 2333, 433, 149, 47, 73, 67}, {149, 293, 449, 251, 103, 47, 73, 67},
                                      {947, 1361, 1531, 433, 137, 47, 73, 67},  {1279, 1531, 1973, 509, 149, 47, 73, 67},
                                      {1531, 1847, 2297, 563, 179, 47, 73, 67}, {1823, 2357, 2693, 571, 137, 47, 73, 67},
                                      {1823, 2357, 2693, 571, 179, 47, 73, 67}};

u32 AXFXReverbHiExpGetMemSize(AXFX_REVERBHI_EXP* fx) {
    u32 sum = 0;
    u32 i = 0;

    sum += __EarlySizeTable[7][2];
    sum += (int)(fx->preDelayTimeMax * 32000);

    for (i = 0; i < 5; i++) {
        sum += __FilterSizeTable[6][i];
    }

    sum *= 3;

    for (i = 5; i < 8; i++) {
        sum += __FilterSizeTable[6][i];
    }

    sum *= 4;

    return sum;
}

BOOL AXFXReverbHiExpInit(AXFX_REVERBHI_EXP* fx) {
    u32 ch, i;
    BOOL result = TRUE;
    BOOL mask = OSDisableInterrupts();

    fx->active = 1;

    if (fx->preDelayTimeMax < 0.0f) {
        AXFXReverbHiExpShutdown(fx);
        OSRestoreInterrupts(mask);
        return FALSE;
    }

    fx->earlyMaxLength = __EarlySizeTable[8 - 1][2];
    fx->preDelayMaxLength = (u32)(fx->preDelayTimeMax * 32000);

    for (i = 0; i < 3; i++) {
        fx->combMaxLength[i] = __FilterSizeTable[6][i];
    }

    for (i = 0; i < 2; i++) {
        fx->allpassMaxLength[i] = __FilterSizeTable[6][3 + i];
    }

    for (ch = 0; ch < 3; ch++) {
        fx->lastAllpassMaxLength[ch] = __FilterSizeTable[6][5 + ch];
    }

    result = __AllocDelayLine(fx);
    if (result == FALSE) {
        AXFXReverbHiExpShutdown(fx);
        OSRestoreInterrupts(mask);
        return FALSE;
    }

    __BzeroDelayLines(fx);
    result = __InitParams(fx);
    if (result == FALSE) {
        AXFXReverbHiExpShutdown(fx);
        OSRestoreInterrupts(mask);
        return FALSE;
    }

    fx->active &= ~1;
    OSRestoreInterrupts(mask);
    return TRUE;
}

BOOL AXFXReverbHiExpSettings(AXFX_REVERBHI_EXP* fx) {
    u32 uVar1;
    u32 uVar2;
    int iVar3;

    uVar1 = OSDisableInterrupts();
    fx->active = fx->active | 1;
    AXFXReverbHiExpShutdown(fx);

    if (!AXFXReverbHiExpInit(fx)) {
        AXFXReverbHiExpShutdown(fx);
        OSRestoreInterrupts(uVar1);
        return FALSE;
    } else {
        fx->active |= 2;
        fx->active &= ~1;
        OSRestoreInterrupts(uVar1);
        return TRUE;
    }

    return iVar3 != 0;
}

void AXFXReverbHiExpShutdown(AXFX_REVERBHI_EXP* fx) {
    BOOL mask = OSDisableInterrupts();
    fx->active |= 1;
    __FreeDelayLine(fx);
    OSRestoreInterrupts(mask);
}

void AXFXReverbHiExpCallback(AXFX_BUFFERUPDATE* bufferUpdate, AXFX_REVERBHI_EXP* fx) {
    u32 ch, i;
    u32 samp;
    s32* input[3];
    f32 data;
    f32 output[3];
    f32* earlyLine;
    f32 earlyOut;
    f32* preDelayLine;
    f32 preDelayOut;
    f32 filterOut;
    f32* combLine;
    f32 combOutOne;
    f32* allpass;
    f32 outTmp;
    f32 allpassIn;
    f32 allpassCoef;
    f32 lpfOut;
    f32 lpfCoef1;
    f32 lpfCoef2;
    f32 fusedOut[3];
    f32 fusedGain;
    f32 crosstalkGain;
    f32 crosstalkL;
    f32 crosstalkR;
    f32 crosstalkS;
    s32* inBusData[3];
    s32* outBusData[3];

    if (fx->active != 0) {
        fx->active &= ~2;
        return;
    }

    input[0] = bufferUpdate->left;
    input[1] = bufferUpdate->right;
    input[2] = bufferUpdate->surround;

    if (fx->busIn != NULL) {
        inBusData[0] = fx->busIn->left;
        inBusData[1] = fx->busIn->right;
        inBusData[2] = fx->busIn->surround;
    }

    if (fx->busOut != NULL) {
        outBusData[0] = fx->busOut->left;
        outBusData[1] = fx->busOut->right;
        outBusData[2] = fx->busOut->surround;
    }

    lpfCoef1 = 1.0f - fx->lpfCoef;
    lpfCoef2 = fx->lpfCoef;
    allpassCoef = fx->allpassCoef;
    fusedGain = fx->fusedGain * 0.6f;
    crosstalkGain = fx->crosstalk * 0.5f;

    for (samp = 0; samp < 96; samp++) {
        for (ch = 0; ch < 3; ch++) {
            if (fx->busIn != NULL) {
                data = (f32)(*(input[ch]) + *(inBusData[ch]++));
            } else {
                data = (f32)(*input[ch]);
            }

            earlyLine = fx->earlyLine[ch];
            earlyOut = earlyLine[fx->earlyPos[0]] * fx->earlyCoef[0] + earlyLine[fx->earlyPos[1]] * fx->earlyCoef[1] +
                       earlyLine[fx->earlyPos[2]] * fx->earlyCoef[2];

            earlyLine[fx->earlyPos[2]] = data;

            if (fx->preDelayLength != 0) {
                preDelayLine = fx->preDelayLine[ch];
                preDelayOut = preDelayLine[fx->preDelayPos];
                preDelayLine[fx->preDelayPos] = data;
            } else {
                preDelayOut = data;
            }

            filterOut = 0.0f;
            for (i = 0; i < 3; i++) {
                combLine = fx->combLine[ch][i];
                combOutOne = combLine[fx->combPos[i]];
                combLine[fx->combPos[i]] = preDelayOut + (combOutOne * fx->combCoef[i]);
                filterOut += combOutOne;
            }

            for (i = 0; i < 2; i++) {
                allpass = fx->allpassLine[ch][i];
                outTmp = allpass[fx->allpassPos[i]];
                allpassIn = filterOut + outTmp * allpassCoef;
                allpass[fx->allpassPos[i]] = allpassIn;
                filterOut = outTmp - allpassIn * allpassCoef;
            }

            lpfOut = lpfCoef1 * filterOut + lpfCoef2 * fx->lastLpfOut[ch];
            fx->lastLpfOut[ch] = lpfOut;
            allpass = fx->lastAllpassLine[ch];
            outTmp = allpass[fx->lastAllpassPos[ch]];
            allpassIn = lpfOut + outTmp * allpassCoef;
            allpass[fx->lastAllpassPos[ch]] = allpassIn;
            fusedOut[ch] = outTmp - allpassIn * allpassCoef;
            if (++fx->lastAllpassPos[ch] >= fx->lastAllpassLength[ch]) {
                fx->lastAllpassPos[ch] = 0;
            }

            fusedOut[ch] *= fusedGain;
            fusedOut[ch] += earlyOut;
        }

        crosstalkL = fusedOut[1] + fusedOut[2];
        crosstalkR = fusedOut[0] + fusedOut[2];
        crosstalkS = fusedOut[0] + fusedOut[1];

        output[0] = fusedOut[0] + crosstalkL * crosstalkGain;
        output[1] = fusedOut[1] + crosstalkR * crosstalkGain;
        output[2] = fusedOut[2] + crosstalkS * crosstalkGain;

        *(input[0]++) = (s32)(output[0] * fx->outGain);
        *(input[1]++) = (s32)(output[1] * fx->outGain);
        *(input[2]++) = (s32)(output[2] * fx->outGain);

        if (fx->busOut != NULL) {
            *(outBusData[0]++) = (s32)(output[0] * fx->sendGain);
            *(outBusData[1]++) = (s32)(output[1] * fx->sendGain);
            *(outBusData[2]++) = (s32)(output[2] * fx->sendGain);
        }

        for (i = 0; i < 3; i++) {
            if (++fx->earlyPos[i] >= fx->earlyLength) {
                fx->earlyPos[i] = 0;
            }
        }

        if (fx->preDelayLength != 0) {
            if (++fx->preDelayPos >= fx->preDelayLength) {
                fx->preDelayPos = 0;
            }
        }

        for (i = 0; i < 3; i++) {
            if (++fx->combPos[i] >= fx->combLength[i]) {
                fx->combPos[i] = 0;
            }
        }

        for (i = 0; i < 2; i++) {
            if (++fx->allpassPos[i] >= fx->allpassLength[i]) {
                fx->allpassPos[i] = 0;
            }
        }
    }
}

static BOOL __AllocDelayLine(AXFX_REVERBHI_EXP* fx) {
    u32 ch, i;

    for (ch = 0; ch < 3; ch++) {
        fx->earlyLine[ch] = (f32*)__AXFXAlloc(sizeof(f32) * fx->earlyMaxLength);
        if (fx->earlyLine[ch] == NULL)
            return FALSE;

        if (fx->preDelayMaxLength != 0) {
            fx->preDelayLine[ch] = (f32*)__AXFXAlloc(sizeof(f32) * fx->preDelayMaxLength);
            if (fx->preDelayLine[ch] == NULL)
                return FALSE;
        } else {
            fx->preDelayLine[ch] = NULL;
        }

        for (i = 0; i < 3; i++) {
            fx->combLine[ch][i] = (f32*)__AXFXAlloc(sizeof(f32) * fx->combMaxLength[i]);
            if (fx->combLine[ch][i] == NULL)
                return FALSE;
        }

        for (i = 0; i < 2; i++) {
            fx->allpassLine[ch][i] = (f32*)__AXFXAlloc(sizeof(f32) * fx->allpassMaxLength[i]);
            if (fx->allpassLine[ch][i] == NULL)
                return FALSE;
        }

        fx->lastAllpassLine[ch] = (f32*)__AXFXAlloc(sizeof(f32) * fx->lastAllpassMaxLength[ch]);
        if (fx->lastAllpassLine[ch] == NULL)
            return FALSE;
    }

    return TRUE;
}

static void __BzeroDelayLines(AXFX_REVERBHI_EXP* fx) {
    u32 ch, i;

    for (ch = 0; ch < 3; ch++) {
        if (fx->earlyLine[ch] != NULL) {
            memset(fx->earlyLine[ch], 0, sizeof(f32) * fx->earlyMaxLength);
        }

        if (fx->preDelayLine[ch] != NULL) {
            memset(fx->preDelayLine[ch], 0, sizeof(f32) * fx->preDelayMaxLength);
        }

        for (i = 0; i < 3; i++) {
            if (fx->combLine[ch][i] != NULL) {
                memset(fx->combLine[ch][i], 0, sizeof(f32) * fx->combMaxLength[i]);
            }
        }

        for (i = 0; i < 2; i++) {
            if (fx->allpassLine[ch][i] != NULL) {
                memset(fx->allpassLine[ch][i], 0, sizeof(f32) * fx->allpassMaxLength[i]);
            }
        }

        if (fx->lastAllpassLine[ch] != NULL) {
            memset(fx->lastAllpassLine[ch], 0, sizeof(f32) * fx->lastAllpassMaxLength[ch]);
        }
    }
}

static void __FreeDelayLine(AXFX_REVERBHI_EXP* fx) {
    u32 ch, i;

    for (ch = 0; ch < 3; ch++) {
        if (fx->earlyLine[ch] != NULL) {
            __AXFXFree(fx->earlyLine[ch]);
            fx->earlyLine[ch] = NULL;
        }

        if (fx->preDelayLine[ch] != NULL) {
            __AXFXFree(fx->preDelayLine[ch]);
            fx->preDelayLine[ch] = NULL;
        }

        for (i = 0; i < 3; i++) {
            if (fx->combLine[ch][i] != NULL) {
                __AXFXFree(fx->combLine[ch][i]);
                fx->combLine[ch][i] = NULL;
            }
        }

        for (i = 0; i < 2; i++) {
            if (fx->allpassLine[ch][i] != NULL) {
                __AXFXFree(fx->allpassLine[ch][i]);
                fx->allpassLine[ch][i] = NULL;
            }
        }

        if (fx->lastAllpassLine[ch] != NULL) {
            __AXFXFree(fx->lastAllpassLine[ch]);
            fx->lastAllpassLine[ch] = NULL;
        }
    }
}

DECOMP_FORCE_LITERAL(AXFXReverbHiExp_c, -3.0f, 10.0);

static BOOL __InitParams(AXFX_REVERBHI_EXP* reverb) {
    u32 ch, i;

    if (reverb->earlyMode >= 8)
        return FALSE;

    if (reverb->preDelayTime < 0.0f || reverb->preDelayTime > reverb->preDelayTimeMax)
        return FALSE;

    if (reverb->fusedMode >= 6)
        return FALSE;

    if (reverb->fusedTime < 0.0f)
        return FALSE;

    if (reverb->coloration < 0.0f || reverb->coloration > 1.0f)
        return FALSE;

    if (reverb->damping < 0.0f || reverb->damping > 1.0f)
        return FALSE;

    if (reverb->crosstalk < 0.0f || reverb->crosstalk > 1.0f)
        return FALSE;

    if (reverb->earlyGain < 0.0f || reverb->earlyGain > 1.0f)
        return FALSE;

    if (reverb->fusedGain < 0.0f || reverb->fusedGain > 1.0f)
        return FALSE;

    if (reverb->outGain < 0.0f || reverb->outGain > 1.0f)
        return FALSE;

    if (reverb->sendGain < 0.0f || reverb->sendGain > 1.0f)
        return FALSE;

    reverb->earlyLength = __EarlySizeTable[reverb->earlyMode][2];
    for (i = 0; i < 3; i++) {
        reverb->earlyPos[i] = reverb->earlyLength - __EarlySizeTable[reverb->earlyMode][i];
        reverb->earlyCoef[i] = __EarlyCoefTable[reverb->earlyMode][i] * reverb->earlyGain * 0.6f;
    }

    reverb->preDelayPos = 0;
    reverb->preDelayLength = (u32)(reverb->preDelayTime * (f32)32000);

    for (i = 0; i < 3; i++) {
        reverb->combPos[i] = 0;
        reverb->combLength[i] = __FilterSizeTable[reverb->fusedMode][i];
        reverb->combCoef[i] = pow(10.0f, (-3.0f * (f32)(reverb->combLength[i]) / (f32)(reverb->fusedTime * 32000)));
    }

    for (i = 0; i < 2; i++) {
        reverb->allpassPos[i] = 0;
        reverb->allpassLength[i] = __FilterSizeTable[reverb->fusedMode][3 + i];
    }

    for (ch = 0; ch < 3; ch++) {
        reverb->lastAllpassPos[ch] = 0;
        reverb->lastAllpassLength[ch] = __FilterSizeTable[reverb->fusedMode][5 + ch];
    }

    reverb->allpassCoef = reverb->coloration;
    reverb->lpfCoef = 1.0f - reverb->damping;
    if (reverb->lpfCoef > 0.95f)
        reverb->lpfCoef = 0.95f;

    for (ch = 0; ch < 3; ch++) {
        reverb->lastLpfOut[ch] = 0.0f;
    }

    return TRUE;
}
