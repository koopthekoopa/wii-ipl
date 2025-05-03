#include <private/os.h>
#include <revolution/os.h>

#include <revolution/gx.h>
#include <private/gx.h>

#include <private/hollywood.h>

#include <revolution/base/PPCArch.h>

static GXDrawSyncCallback   TokenCB;
static GXDrawDoneCallback   DrawDoneCB;

static u8                   DrawDone;

static OSThreadQueue        FinishQueue;


void GXSetMisc(GXMiscToken token, u32 val) {
    switch (token) {
        case GX_MT_XF_FLUSH: {
            __GXData->vNum = val;
            __GXData->vNumNot = !__GXData->vNum;
            __GXData->bpSentNot = GX_TRUE;

            if (__GXData->vNum != 0) {
                __GXData->dirtyState |= 8;
            }
            break;
        }
        case GX_MT_DL_SAVE_CONTEXT: {
            __GXData->dlSaveContext = (val != 0);
            break;
        }
        case GX_MT_ABORT_WAIT_COPYOUT: {
            __GXData->abtWaitPECopy = (val != 0);
            break;
        }
        case GX_MT_NULL: {
            break;
        }
        default: {
            break;
        }
    }
}

void GXFlush() {
    if (__GXData->dirtyState) {
        __GXSetDirtyState();
    }
    
    GX_WRITE_U32(0);
    GX_WRITE_U32(0);
    GX_WRITE_U32(0);
    GX_WRITE_U32(0);
    GX_WRITE_U32(0);
    GX_WRITE_U32(0);
    GX_WRITE_U32(0);
    GX_WRITE_U32(0);

    PPCSync();
}

void GXResetWriteGatherPipe() {
    while (PPCMfwpar() & WPAR_BNE) {}
    PPCMtwpar(OSUncachedToPhysical((void*)GXFIFO_ADDR));
}

static void __GXAbortWait(u32 clocks) {
    OSTime time0, time1;

    time0 = OSGetTime();
    do {
        time1 = OSGetTime();
    } while (time1 - time0 <= (clocks / 4));
}

static void __GXAbortWaitPECopyDone() {
    u32 peCnt0;
    u32 peCnt1;

    peCnt0 = __GXReadMEMCounterU32(0x28, 0x27);
    do {
        peCnt1 = peCnt0;
        __GXAbortWait(32);

        peCnt0 = __GXReadMEMCounterU32(0x28, 0x27);
    } while (peCnt0 != peCnt1);
}

void __GXAbort() {
    if (__GXData->abtWaitPECopy && __GXIsGPFifoReady()) {
        __GXAbortWaitPECopyDone();
    }

    PI_WRITE_REG(0x18, 1);
    __GXAbortWait(200);
    PI_WRITE_REG(0x18, 0);
    __GXAbortWait(20);
}

void GXAbortFrame() {
    __GXAbort();

    if (__GXIsGPFifoReady()) {
        __GXCleanGPFifo();
        __GXInitRevisionBits();
        __GXData->dirtyState = 0;
        GXFlush();
    }
}

void GXSetDrawDone() {
    u32 reg;
    BOOL enabled;

    enabled = OSDisableInterrupts();
    reg = 0x45000002;
    GX_WRITE_RAS_REG(reg);
    GXFlush();
    DrawDone = 0;
    OSRestoreInterrupts(enabled);
}

void GXWaitDrawDone() {
    BOOL enabled;

    enabled = OSDisableInterrupts();
    while (!DrawDone) {
        OSSleepThread(&FinishQueue);
    }
    OSRestoreInterrupts(enabled);
}

void GXDrawDone() {
    GXSetDrawDone();
    GXWaitDrawDone();
}

void GXPixModeSync() {
    GX_WRITE_RAS_REG(__GXData->peCtrl);
    __GXData->bpSentNot = GX_FALSE;
}

void GXPokeAlphaMode(GXCompare func, u8 threshold) {
    u32 reg;

    reg = (func << 8) | threshold;
    GX_SET_PE_REG(3, reg);
}

void GXPokeAlphaRead(GXAlphaReadMode mode) {
    u32 reg;

    reg = 0;
    SET_REG_FIELD(reg, 2, 0, mode);
    SET_REG_FIELD(reg, 1, 2, 1);
    GX_SET_PE_REG(4, reg);
}

void GXPokeAlphaUpdate(GXBool update_enable) {
    u32 reg;

    reg = GX_GET_PE_REG(1);
    SET_REG_FIELD(reg, 1, 4, update_enable);
    GX_SET_PE_REG(1, reg);
}

void GXPokeBlendMode(GXBlendMode type, GXBlendFactor src_factor, GXBlendFactor dst_factor, GXLogicOp op) {
    u32 reg;

    reg = GX_GET_PE_REG(1);
    SET_REG_FIELD(reg, 1, 0, (type == GX_BM_BLEND) || (type == GX_BM_SUBTRACT));
    SET_REG_FIELD(reg, 1, 11, (type == GX_BM_SUBTRACT));
    SET_REG_FIELD(reg, 1, 1, (type == GX_BM_LOGIC));
    SET_REG_FIELD(reg, 4, 12, op);
    SET_REG_FIELD(reg, 3, 8, src_factor);
    SET_REG_FIELD(reg, 3, 5, dst_factor);
    SET_REG_FIELD(reg, 8, 24, 0x41);
    GX_SET_PE_REG(1, reg);
}

void GXPokeColorUpdate(GXBool update_enable) {
    u32 reg;

    reg = GX_GET_PE_REG(1);
    SET_REG_FIELD(reg, 1, 3, update_enable);
    GX_SET_PE_REG(1, reg);
}

void GXPokeDstAlpha(GXBool enable, u8 alpha) {
    u32 reg = 0;

    SET_REG_FIELD(reg, 8, 0, alpha);
    SET_REG_FIELD(reg, 1, 8, enable);
    GX_SET_PE_REG(2, reg);
}

void GXPokeDither(GXBool dither) {
    u32 reg;

    reg = GX_GET_PE_REG(1);
    SET_REG_FIELD(reg, 1, 2, dither);
    GX_SET_PE_REG(1, reg);
}

void GXPokeZMode(GXBool compare_enable, GXCompare func, GXBool update_enable) {
    u32 reg = 0;

    SET_REG_FIELD(reg, 1, 0, compare_enable);
    SET_REG_FIELD(reg, 3, 1, func);
    SET_REG_FIELD(reg, 1, 4, update_enable);
    GX_SET_PE_REG(0, reg);
}

GXDrawSyncCallback GXSetDrawSyncCallback(GXDrawSyncCallback cb) {
    GXDrawSyncCallback oldcb;
    BOOL enabled;

    oldcb = TokenCB;
    enabled = OSDisableInterrupts();
    TokenCB = cb;
    OSRestoreInterrupts(enabled);
    return oldcb;
}

static void GXTokenInterruptHandler(__OSInterrupt interrupt, OSContext* context) {
    u16 token;
    OSContext exceptionContext;
    u32 reg;

    token = GX_GET_PE_REG(7);
    if (TokenCB != NULL) {
        OSClearContext(&exceptionContext);
        OSSetCurrentContext(&exceptionContext);
        TokenCB(token);
        OSClearContext(&exceptionContext);
        OSSetCurrentContext(context);
    }
    reg = GX_GET_PE_REG(5);
    SET_REG_FIELD(reg, 1, 2, 1);
    GX_SET_PE_REG(5, reg);
}

GXDrawDoneCallback GXSetDrawDoneCallback(GXDrawDoneCallback cb) {
    GXDrawDoneCallback oldcb;
    BOOL enabled;

    oldcb = DrawDoneCB;
    enabled = OSDisableInterrupts();
    DrawDoneCB = cb;
    OSRestoreInterrupts(enabled);
    return oldcb;
}

static void GXFinishInterruptHandler(__OSInterrupt interrupt, OSContext* context) {
    OSContext exceptionContext;
    u32 reg;

    reg = GX_GET_PE_REG(5);
    SET_REG_FIELD(reg, 1, 3, 1);
    GX_SET_PE_REG(5, reg);
    DrawDone = 1;
    if (DrawDoneCB != NULL) {
        OSClearContext(&exceptionContext);
        OSSetCurrentContext(&exceptionContext);
        DrawDoneCB();
        OSClearContext(&exceptionContext);
        OSSetCurrentContext(context);
    }
    OSWakeupThread(&FinishQueue);
}

void __GXPEInit() {
    u32 reg;
    __OSSetInterruptHandler(__OS_INTERRUPT_PI_PE_TOKEN, GXTokenInterruptHandler);
    __OSSetInterruptHandler(__OS_INTERRUPT_PI_PE_FINISH, GXFinishInterruptHandler);

    OSInitThreadQueue(&FinishQueue);

    __OSUnmaskInterrupts(OS_INTERRUPTMASK_PI_PE_TOKEN);
    __OSUnmaskInterrupts(OS_INTERRUPTMASK_PI_PE_FINISH);

    reg = GX_GET_PE_REG(5);
    SET_REG_FIELD(reg, 1, 2, 1);
    SET_REG_FIELD(reg, 1, 3, 1);
    SET_REG_FIELD(reg, 1, 0, 1);
    SET_REG_FIELD(reg, 1, 1, 1);
    GX_SET_PE_REG(5, reg);
}
