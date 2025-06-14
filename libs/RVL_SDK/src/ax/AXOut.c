#include <revolution/ax.h>
#include <private/ax.h>

#include <revolution/ai.h>

#include <revolution/os.h>

#include <private/dsp.h>

extern u16 axDspSlave[];
extern u16 axDspInitVector;;
extern u16 axDspResumeVector;
extern u16 axDspSlaveLength;;

// Output uses a ring buffer
#define OUT_RING_MAX 3
// Each remote output buffer contains 10 frames
// TODO: Not sure if these instances are actually "frames"
#define RMT_FRAME_MAX 10

// Form DSP mail for command list size
#define DSP_MAIL_CLSIZE(size) (0xBABE << 16 | (size))
// DRAM image in DSP memory
// TODO: What does this represent?
#define DRAM_IMAGE_DSP_ADDR 0x0CD2

AXPROFILE __AXLocalProfile;

static vu32 __AXOutFrame;
static u32 __AXAiDmaFrame;
static u32 __AXOutDspReady;
static AXOutCallback __AXUserFrameCallback;
static volatile BOOL __AXDSPInitFlag;
static volatile BOOL __AXDSPDoneFlag;
static BOOL __AXDebugSteppingMode;
static OSThreadQueue __AXOutThreadQueue;
static u32 __AXOutputBufferMode;
static s32 __AXRmtBuffLen;
static s32 __AXRmtDspPtr;
static s32 __AXRmtCpuPtr;
static AXExceedCallback __AXExceedCallback;

static s16 __AXRmtOutBuffer[AX_RMT_MAX][AX_SAMPLES_PER_FRAME_RMT * RMT_FRAME_MAX] ALIGN32;
// TODO: What is this number?
static u8 __AXOutSBuffer[768] ALIGN32;
static u32 __AXOutBuffer[OUT_RING_MAX][AX_SAMPLES_PER_FRAME] ALIGN32;

static DSPTaskInfo __AXDSPTask ALIGN32;
static u8 __AXDramImage[64] ALIGN32;

#define DSP_SEND_MAIL_TO_DSP(mail) {    \
    DSPSendMailToDSP((u32)mail);        \
    while (DSPCheckMailToDSP()) {}      \
}

u32 __AXOutNewFrame() {
    AXPROFILE* current;
    u32 cycles;
    void* list;
    void* rmt[AX_RMT_MAX];
    s32 ptr;

    __AXLocalProfile.timeBegin = OSGetTime();

    cycles =
        (AX_SAMPLES_PER_FRAME - (AIGetDMABytesLeft() / AX_SAMPLE_DEPTH_BYTES)) *
        3797;

    if (__AXOutputBufferMode == 1) {
        __AXSyncPBs(0);
    }
    else {
        __AXSyncPBs(24400);
    }

    __AXPrintStudio();

    list = __AXGetCommandListAddress();
    DSP_SEND_MAIL_TO_DSP(DSP_MAIL_CLSIZE(AX_CL_SIZE));
    DSP_SEND_MAIL_TO_DSP(list);

    __AXServiceCallbackStack();

    __AXLocalProfile.timeProcessAuxBegin = OSGetTime();
    __AXProcessAux();
    __AXLocalProfile.timeProcessAuxEnd = OSGetTime();

    __AXLocalProfile.timeUserFrameBegin = OSGetTime();
    if (__AXUserFrameCallback) {
        __AXUserFrameCallback();
    }
    __AXLocalProfile.timeUserFrameEnd = OSGetTime();

    rmt[0] = &__AXRmtOutBuffer[0][__AXRmtDspPtr];
    rmt[1] = &__AXRmtOutBuffer[1][__AXRmtDspPtr];
    rmt[2] = &__AXRmtOutBuffer[2][__AXRmtDspPtr];
    rmt[3] = &__AXRmtOutBuffer[3][__AXRmtDspPtr];

    ptr = __AXRmtDspPtr + AX_SAMPLES_PER_FRAME_RMT;
    if (ptr >= __AXRmtBuffLen) {
        ptr = 0;
    }

    if (__AXRmtCpuPtr >= __AXRmtDspPtr &&
        __AXRmtCpuPtr < __AXRmtDspPtr + AX_SAMPLES_PER_FRAME_RMT) {
        __AXRmtCpuPtr = ptr;
    }

    __AXRmtDspPtr = ptr;
    __AXNextFrame(__AXOutSBuffer, __AXOutBuffer[__AXOutFrame], rmt);
    __AXOutFrame++;

    if (__AXOutputBufferMode == 1) {
        __AXOutFrame %= OUT_RING_MAX;
    }
    else {
        __AXOutFrame &= 1;
        AIInitDMA((u32)__AXOutBuffer[__AXOutFrame], AX_FRAME_SIZE);
    }

    __AXLocalProfile.timeEnd = OSGetTime();
    __AXLocalProfile.numVoices = __AXGetNumVoices();

    current = __AXGetCurrentProfile();
    if (current) {
        int i = 56;
        u8* dest = (u8*)current;
        u8* src = (u8*)&__AXLocalProfile;

        while (i != 0) {
            *dest = *src;
            dest++;
            src++;
            i--;
        }
    }

    return cycles;
}

void __AXOutAiCallback() {
    u32 frame;

    if (__AXDSPDoneFlag == TRUE) {
        return;
    }

    if (__AXOutDspReady == 1) {
        __AXOutDspReady = 0;
        __AXOutNewFrame();
    }
    else {
        __AXOutDspReady = 2;
        DSPAssertTask(&__AXDSPTask);
    }

    if (__AXOutputBufferMode == 1) {
        AIInitDMA((u32)__AXOutBuffer[__AXAiDmaFrame], AX_FRAME_SIZE);

        frame = __AXAiDmaFrame + 1;
        frame %= OUT_RING_MAX;

        if (frame != __AXOutFrame) {
            __AXAiDmaFrame = frame;
        }
    }
}

static void __AXDSPInitCallback(void* task) {
    __AXDSPInitFlag = 1;
}

static void __AXDSPResumeCallback(DSPTaskInfo* task) {
    u32 cycles;

    if (__AXOutDspReady == 2) {
        __AXOutDspReady = 0;

        cycles = __AXOutNewFrame();

        if (__AXExceedCallback != NULL) {
            __AXExceedCallback(cycles);
        }

    }
    else {
        __AXOutDspReady = 1;
    }
}

static void __AXDSPDoneCallback(DSPTaskInfo* task) {
    __AXDSPDoneFlag = TRUE;
    OSWakeupThread(&__AXOutThreadQueue);
}

static void __AXDSPRequestCallback(DSPTaskInfo* task) {}

void __AXOutInitDSP() {
    __AXDSPTask.iram_mmem_addr = axDspSlave;
    __AXDSPTask.iram_length = axDspSlaveLength;
    __AXDSPTask.iram_addr = 0;

    __AXDSPTask.dram_mmem_addr = (u16*)__AXDramImage;
    __AXDSPTask.dram_length = sizeof(__AXDramImage);
    __AXDSPTask.dram_addr = DRAM_IMAGE_DSP_ADDR;

    __AXDSPTask.dsp_init_vector = axDspInitVector;
    __AXDSPTask.dsp_resume_vector = axDspResumeVector;

    __AXDSPTask.init_cb = (DSPCallback)__AXDSPInitCallback;
    __AXDSPTask.res_cb = (DSPCallback)__AXDSPResumeCallback;
    __AXDSPTask.done_cb = (DSPCallback)__AXDSPDoneCallback;
    __AXDSPTask.req_cb = (DSPCallback)__AXDSPRequestCallback;

    __AXDSPTask.priority = 0;

    __AXDSPInitFlag = FALSE;
    __AXDSPDoneFlag = FALSE;

    OSInitThreadQueue(&__AXOutThreadQueue);

    if (!DSPCheckInit()) {
        DSPInit();
    }

    DSPAddTask(&__AXDSPTask);
    while (!__AXDSPInitFlag) {}
}

void __AXOutInit(u32 mode) {
    int i;
    u32* dst;
    u32* dst2;
    void* rmt[AX_RMT_MAX];

    __AXOutFrame = 0;
    __AXAiDmaFrame = 0;
    __AXOutputBufferMode = mode;
    __AXDebugSteppingMode = 0;

    for (dst = (u32*)__AXOutBuffer, i = 0;
         i < sizeof(__AXOutBuffer) / sizeof(u32); i++) {
        *dst++ = 0;
    }
    DCFlushRange(__AXOutBuffer, sizeof(__AXOutBuffer));

    for (dst2 = (u32*)__AXOutSBuffer, i = 0;
         i < sizeof(__AXOutSBuffer) / sizeof(u32); i++) {
        *dst2++ = 0;
    }
    DCFlushRange(__AXOutSBuffer, sizeof(__AXOutSBuffer));

    for (dst2 = (u32*)__AXRmtOutBuffer, i = 0;
         i < sizeof(__AXRmtOutBuffer) / sizeof(u32); i++) {
        *dst2++ = 0;
    }
    DCFlushRange(__AXRmtOutBuffer, sizeof(__AXRmtOutBuffer));

    __AXOutInitDSP();
    AIRegisterDMACallback(__AXOutAiCallback);

    rmt[0] = __AXRmtOutBuffer[0];
    rmt[1] = __AXRmtOutBuffer[1];
    rmt[2] = __AXRmtOutBuffer[2];
    rmt[3] = __AXRmtOutBuffer[3];

    __AXRmtCpuPtr = AX_SAMPLES_PER_FRAME_RMT;
    __AXRmtDspPtr = AX_SAMPLES_PER_FRAME_RMT;
    __AXRmtBuffLen = AX_SAMPLES_PER_FRAME_RMT * RMT_FRAME_MAX;

    if (__AXOutputBufferMode == 1) {
        __AXNextFrame(__AXOutSBuffer, __AXOutBuffer[2], rmt);
    }
    else {
        __AXNextFrame(__AXOutSBuffer, __AXOutBuffer[1], rmt);
    }

    __AXOutDspReady = 1;
    __AXUserFrameCallback = NULL;

    if (__AXOutputBufferMode == 1) {
        AIInitDMA((u32)__AXOutBuffer[__AXAiDmaFrame], AX_FRAME_SIZE);
        __AXAiDmaFrame++;
    }
    else {
        AIInitDMA((u32)__AXOutBuffer[__AXOutFrame], AX_FRAME_SIZE);
    }

    AIStartDMA();
    __AXExceedCallback = NULL;
}

AXOutCallback AXRegisterCallback(AXOutCallback callback) {
    AXOutCallback old = __AXUserFrameCallback;
    BOOL enabled = OSDisableInterrupts();

    __AXUserFrameCallback = callback;

    OSRestoreInterrupts(enabled);
    return old;
}

s32 AXRmtGetSamplesLeft() {
    s32 samples = __AXRmtDspPtr - (AX_SAMPLES_PER_FRAME_RMT * 2);

    if (samples < 0) {
        samples += __AXRmtBuffLen;
    }

    samples -= __AXRmtCpuPtr;

    if (samples < 0) {
        samples += __AXRmtBuffLen;
    }

    return samples;
}

s32 AXRmtGetSamples(s32 chan, s16* out, s32 num) {
    s32 avail = AXRmtGetSamplesLeft();
    s32 actual = num > avail ? avail : num;
    s32 ptr = __AXRmtCpuPtr;
    int i;

    for (i = 0; i < actual; i++) {
        *out++ = __AXRmtOutBuffer[chan][ptr];

        if (++ptr >= __AXRmtBuffLen) {
            ptr = 0;
        }
    }

    DCInvalidateRange(__AXRmtOutBuffer[chan], __AXRmtBuffLen * sizeof(s16));
    return actual;
}

s32 AXRmtAdvancePtr(s32 num) {
    s32 avail = AXRmtGetSamplesLeft();
    s32 actual = num > avail ? avail : num;

    __AXRmtCpuPtr += actual;

    if (__AXRmtCpuPtr >= __AXRmtBuffLen) {
        __AXRmtCpuPtr -= __AXRmtBuffLen;
    }

    return actual;
}
