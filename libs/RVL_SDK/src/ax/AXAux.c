#include <revolution/ax.h>
#include <private/ax.h>

#include <revolution/os.h>

#include <string.h>

/**
 * Ring buffers have three entries:
 * 1. For DSP write
 * 2. For DSP read
 * 3. For CPU read/write
 */
#define AUX_RING_MAX 3

/**
 * 96 samples per frame @ 32-bit depth
 */
#define AUX_CHAN_SIZE (AX_SAMPLE_DEPTH_BYTES * AX_SAMPLES_PER_FRAME)

/**
 * Stereo buffer size: (96 samples/frame, 3 channels)
 * DPL2 buffer size:   (96 samples/frame, 4 channels)
 */
#define STEREO_FRAME_SIZE (AUX_CHAN_SIZE * AX_STEREO_MAX)
#define DPL2_FRAME_SIZE (AUX_CHAN_SIZE * AX_DPL2_MAX)

/**
 * Sample indices for stereo
 */
#define STEREO_SAMPLE_L_BEGIN (AUX_CHAN_SIZE * 0)
#define STEREO_SAMPLE_R_BEGIN (AUX_CHAN_SIZE * 1)
#define STEREO_SAMPLE_S_BEGIN (AUX_CHAN_SIZE * 2)

/**
 * Sample indices for DPL2
 */
#define DPL2_SAMPLE_I_BEGIN (AUX_CHAN_SIZE * 3)
#define DPL2_SAMPLE_L_BEGIN (AUX_CHAN_SIZE * 0)
#define DPL2_SAMPLE_R_BEGIN (AUX_CHAN_SIZE * 1)
#define DPL2_SAMPLE_LS_BEGIN (AUX_CHAN_SIZE * 2)
#define DPL2_SAMPLE_RS_BEGIN (AUX_CHAN_SIZE * 3)

static u8 __AXBufferAuxA[AUX_RING_MAX][DPL2_FRAME_SIZE] ALIGN32;
static u8 __AXBufferAuxB[AUX_RING_MAX][DPL2_FRAME_SIZE] ALIGN32;
static u8 __AXBufferAuxC[AUX_RING_MAX][STEREO_FRAME_SIZE] ALIGN32;

static u8 __clearAuxA[AUX_RING_MAX];
static u8 __clearAuxB[AUX_RING_MAX];
static u8 __clearAuxC[AUX_RING_MAX];

static AXAuxCallback __AXCallbackAuxA;
static AXAuxCallback __AXCallbackAuxB;
static AXAuxCallback __AXCallbackAuxC;

static void* __AXContextAuxA;
static void* __AXContextAuxB;
static void* __AXContextAuxC;

static void* __AXAuxADspWrite;
static void* __AXAuxADspRead;

static void* __AXAuxBDspWrite;
static void* __AXAuxBDspRead;

static void* __AXAuxCDspWrite;
static void* __AXAuxCDspRead;

static u32 __AXAuxDspWritePosition;
static u32 __AXAuxDspReadPosition;
static u32 __AXAuxCpuReadWritePosition;

void __AXAuxInit() {
    int i;
    u32* bufferA = (u32*)__AXBufferAuxA;
    u32* bufferB = (u32*)__AXBufferAuxB;
    u32* bufferC = (u32*)__AXBufferAuxC;

    __AXCallbackAuxA = NULL;
    __AXCallbackAuxB = NULL;
    __AXCallbackAuxC = NULL;

    __AXContextAuxA = NULL;
    __AXContextAuxB = NULL;
    __AXContextAuxC = NULL;

    __AXAuxDspWritePosition = 0;
    __AXAuxDspReadPosition = 1;
    __AXAuxCpuReadWritePosition = 2;

    for (i = 0; i < STEREO_FRAME_SIZE / sizeof(u32); i++) {
        *bufferA++ = 0;
        *bufferB++ = 0;
        *bufferC++ = 0;
    }

    memset(__clearAuxA, FALSE, AUX_RING_MAX);
    memset(__clearAuxB, FALSE, AUX_RING_MAX);
    memset(__clearAuxC, FALSE, AUX_RING_MAX);
}

void __AXGetAuxAInput(void** out) {
    if (__AXCallbackAuxA) {
        *out = __AXBufferAuxA[__AXAuxDspWritePosition];
    }
    else {
        *out = NULL;
    }
}

void __AXGetAuxAOutput(void** out) {
    *out = __AXBufferAuxA[__AXAuxDspReadPosition];
}

void __AXGetAuxAInputDpl2(void** out) {
    *out = &__AXBufferAuxA[__AXAuxDspWritePosition][DPL2_SAMPLE_I_BEGIN];
}

void __AXGetAuxAOutputDpl2R(void** out) {
    *out = &__AXBufferAuxA[__AXAuxDspReadPosition][DPL2_SAMPLE_R_BEGIN];
}

void __AXGetAuxAOutputDpl2Ls(void** out) {
    *out = &__AXBufferAuxA[__AXAuxDspReadPosition][DPL2_SAMPLE_LS_BEGIN];
}

void __AXGetAuxAOutputDpl2Rs(void** out) {
    *out = &__AXBufferAuxA[__AXAuxDspReadPosition][DPL2_SAMPLE_RS_BEGIN];
}

void __AXGetAuxBInput(void** out) {
    if (__AXCallbackAuxB) {
        *out = __AXBufferAuxB[__AXAuxDspWritePosition];
    }
    else {
        *out = NULL;
    }
}

void __AXGetAuxBOutput(void** out) {
    *out = __AXBufferAuxB[__AXAuxDspReadPosition];
}

void __AXGetAuxBInputDpl2(void** out) {
    *out = &__AXBufferAuxB[__AXAuxDspWritePosition][DPL2_SAMPLE_I_BEGIN];
}

void __AXGetAuxBOutputDpl2R(void** out) {
    *out = &__AXBufferAuxB[__AXAuxDspReadPosition][DPL2_SAMPLE_R_BEGIN];
}

void __AXGetAuxBOutputDpl2Ls(void** out) {
    *out = &__AXBufferAuxB[__AXAuxDspReadPosition][DPL2_SAMPLE_LS_BEGIN];
}

void __AXGetAuxBOutputDpl2Rs(void** out) {
    *out = &__AXBufferAuxB[__AXAuxDspReadPosition][DPL2_SAMPLE_RS_BEGIN];
}

void __AXGetAuxCInput(void** out) {
    if (__AXCallbackAuxC) {
        *out = __AXBufferAuxC[__AXAuxDspWritePosition];
    }
    else {
        *out = NULL;
    }
}

void __AXGetAuxCOutput(void** out) {
    *out = __AXBufferAuxC[__AXAuxDspReadPosition];
}

void __AXProcessAux() {
    __AXAuxADspWrite = __AXBufferAuxA[__AXAuxDspWritePosition];
    __AXAuxADspRead = __AXBufferAuxA[__AXAuxDspReadPosition];

    __AXAuxBDspWrite = __AXBufferAuxB[__AXAuxDspWritePosition];
    __AXAuxBDspRead = __AXBufferAuxB[__AXAuxDspReadPosition];

    __AXAuxCDspWrite = __AXBufferAuxC[__AXAuxDspWritePosition];
    __AXAuxCDspRead = __AXBufferAuxC[__AXAuxDspReadPosition];

    if (__AXCallbackAuxA) {
        if (__AXClMode == AX_OUTPUT_DPL2) {
            void* chans[AX_DPL2_MAX];
            chans[AX_DPL2_L]  = &__AXBufferAuxA[__AXAuxCpuReadWritePosition][DPL2_SAMPLE_L_BEGIN];
            chans[AX_DPL2_R]  = &__AXBufferAuxA[__AXAuxCpuReadWritePosition][DPL2_SAMPLE_R_BEGIN];
            chans[AX_DPL2_LS] = &__AXBufferAuxA[__AXAuxCpuReadWritePosition][DPL2_SAMPLE_LS_BEGIN];
            chans[AX_DPL2_RS] = &__AXBufferAuxA[__AXAuxCpuReadWritePosition][DPL2_SAMPLE_RS_BEGIN];

            DCInvalidateRange(chans[0], DPL2_FRAME_SIZE);
            __AXCallbackAuxA(chans, __AXContextAuxA);
            DCFlushRangeNoSync(chans[0], DPL2_FRAME_SIZE);
        }
        else {
            void* chans[AX_STEREO_MAX];
            chans[AX_STEREO_L] = &__AXBufferAuxA[__AXAuxCpuReadWritePosition][STEREO_SAMPLE_L_BEGIN];
            chans[AX_STEREO_R] = &__AXBufferAuxA[__AXAuxCpuReadWritePosition][STEREO_SAMPLE_R_BEGIN];
            chans[AX_STEREO_S] = &__AXBufferAuxA[__AXAuxCpuReadWritePosition][STEREO_SAMPLE_S_BEGIN];

            DCInvalidateRange(chans[0], STEREO_FRAME_SIZE);
            __AXCallbackAuxA(chans, __AXContextAuxA);
            DCFlushRangeNoSync(chans[0], STEREO_FRAME_SIZE);
        }
    }
    else if (__clearAuxA[__AXAuxCpuReadWritePosition]) {
        void* chan = __AXBufferAuxA[__AXAuxCpuReadWritePosition];
        memset(chan, 0, DPL2_FRAME_SIZE);
        DCFlushRange(chan, DPL2_FRAME_SIZE);
        __clearAuxA[__AXAuxCpuReadWritePosition] = FALSE;
    }

    if (__AXCallbackAuxB) {
        if (__AXClMode == AX_OUTPUT_DPL2) {
            void* chans[AX_DPL2_MAX];
            chans[AX_DPL2_L]  = &__AXBufferAuxB[__AXAuxCpuReadWritePosition][DPL2_SAMPLE_L_BEGIN];
            chans[AX_DPL2_R]  = &__AXBufferAuxB[__AXAuxCpuReadWritePosition][DPL2_SAMPLE_R_BEGIN];
            chans[AX_DPL2_LS] = &__AXBufferAuxB[__AXAuxCpuReadWritePosition][DPL2_SAMPLE_LS_BEGIN];
            chans[AX_DPL2_RS] = &__AXBufferAuxB[__AXAuxCpuReadWritePosition][DPL2_SAMPLE_RS_BEGIN];

            DCInvalidateRange(chans[0], DPL2_FRAME_SIZE);
            __AXCallbackAuxB(chans, __AXContextAuxB);
            DCFlushRangeNoSync(chans[0], DPL2_FRAME_SIZE);
        }
        else {
            void* chans[AX_STEREO_MAX];
            chans[AX_STEREO_L] = &__AXBufferAuxB[__AXAuxCpuReadWritePosition][STEREO_SAMPLE_L_BEGIN];
            chans[AX_STEREO_R] = &__AXBufferAuxB[__AXAuxCpuReadWritePosition][STEREO_SAMPLE_R_BEGIN];
            chans[AX_STEREO_S] = &__AXBufferAuxB[__AXAuxCpuReadWritePosition][STEREO_SAMPLE_S_BEGIN];

            DCInvalidateRange(chans[0], STEREO_FRAME_SIZE);
            __AXCallbackAuxB(chans, __AXContextAuxB);
            DCFlushRangeNoSync(chans[0], STEREO_FRAME_SIZE);
        }
    }
    else if (__clearAuxB[__AXAuxCpuReadWritePosition]) {
        void* chan = __AXBufferAuxB[__AXAuxCpuReadWritePosition];
        memset(chan, 0, DPL2_FRAME_SIZE);

        DCFlushRange(chan, DPL2_FRAME_SIZE);
        __clearAuxB[__AXAuxCpuReadWritePosition] = FALSE;
    }

    if (__AXCallbackAuxC && __AXClMode != AX_OUTPUT_DPL2) {
        void* chans[AX_STEREO_MAX];
        chans[AX_STEREO_L] = &__AXBufferAuxC[__AXAuxCpuReadWritePosition][STEREO_SAMPLE_L_BEGIN];
        chans[AX_STEREO_R] = &__AXBufferAuxC[__AXAuxCpuReadWritePosition][STEREO_SAMPLE_R_BEGIN];
        chans[AX_STEREO_S] = &__AXBufferAuxC[__AXAuxCpuReadWritePosition][STEREO_SAMPLE_S_BEGIN];

        DCInvalidateRange(chans[0], STEREO_FRAME_SIZE);
        __AXCallbackAuxC(chans, __AXContextAuxC);
        DCFlushRangeNoSync(chans[0], STEREO_FRAME_SIZE);
    }
    else if (!__AXCallbackAuxC && __clearAuxC[__AXAuxCpuReadWritePosition]) {
        void* chan = __AXBufferAuxC[__AXAuxCpuReadWritePosition];
        memset(chan, 0, STEREO_FRAME_SIZE);

        DCFlushRange(chan, STEREO_FRAME_SIZE);
        __clearAuxC[__AXAuxCpuReadWritePosition] = FALSE;
    }

    __AXAuxDspWritePosition++;
    __AXAuxDspWritePosition %= AX_STEREO_MAX;

    __AXAuxDspReadPosition++;
    __AXAuxDspReadPosition %= AX_STEREO_MAX;

    __AXAuxCpuReadWritePosition++;
    __AXAuxCpuReadWritePosition %= AX_STEREO_MAX;
}

void AXRegisterAuxACallback(AXAuxCallback callback, void* context) {
    BOOL enabled = OSDisableInterrupts();

    __AXCallbackAuxA = callback;
    __AXContextAuxA = context;

    if (callback == NULL) {
        memset(&__clearAuxA, TRUE, AX_STEREO_MAX);
    }

    OSRestoreInterrupts(enabled);
}

void AXRegisterAuxBCallback(AXAuxCallback callback, void* context) {
    BOOL enabled = OSDisableInterrupts();

    __AXCallbackAuxB = callback;
    __AXContextAuxB = context;

    if (callback == NULL) {
        memset(&__clearAuxB, TRUE, AX_STEREO_MAX);
    }

    OSRestoreInterrupts(enabled);
}

void AXRegisterAuxCCallback(AXAuxCallback callback, void* context) {
    BOOL enabled = OSDisableInterrupts();

    __AXCallbackAuxC = callback;
    __AXContextAuxC = context;

    if (callback == NULL) {
        memset(&__clearAuxC, TRUE, AX_STEREO_MAX);
    }

    OSRestoreInterrupts(enabled);
}

void AXGetAuxACallback(AXAuxCallback* callback, void** context) {
    *callback = __AXCallbackAuxA;
    *context = __AXContextAuxA;
}

void AXGetAuxBCallback(AXAuxCallback* callback, void** context) {
    *callback = __AXCallbackAuxB;
    *context = __AXContextAuxB;
}

void AXGetAuxCCallback(AXAuxCallback* callback, void** context) {
    *callback = __AXCallbackAuxC;
    *context = __AXContextAuxC;
}
