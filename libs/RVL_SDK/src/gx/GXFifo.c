#include <revolution/gx.h>
#include <private/gx.h>

#include <revolution/os.h>
#include <private/os.h>

#include <string.h>

static GXBool               CPGPLinked;

static OSThread*            __GXCurrentThread;
static BOOL                 GXOverflowSuspendInProgress;

static GXBreakPtCallback    BreakPointCB;

__GXFifoObj CPUFifo;
__GXFifoObj GPFifo;

void*   __GXCurrentBP;
u32     __GXOverflowCount;

static GXBool GPFifoReady;
static GXBool CPUFifoReady;

static void __GXWriteFifoIntReset(u8 hiWatermarkClr, u8 loWatermarkClr) {
    SET_REG_FIELD(__GXData->cpClr, 1, 0, hiWatermarkClr);
    SET_REG_FIELD(__GXData->cpClr, 1, 1, loWatermarkClr);
    GX_SET_CP_REG(2, __GXData->cpClr);
}

static void __GXWriteFifoIntEnable(u8 hiWatermarkEn, u8 loWatermarkEn) {
    SET_REG_FIELD(__GXData->cpEnable, 1, 2, hiWatermarkEn);
    SET_REG_FIELD(__GXData->cpEnable, 1, 3, loWatermarkEn);
    GX_SET_CP_REG(1, __GXData->cpEnable);
}

static void __GXFifoLink(u8 en) {
    SET_REG_FIELD(__GXData->cpEnable, 1, 4, (en != 0) ? 1 : 0);
    GX_SET_CP_REG(1, __GXData->cpEnable);
}

static void __GXFifoReadEnable() {
    SET_REG_FIELD(__GXData->cpEnable, 1, 0, 1);
    GX_SET_CP_REG(1, __GXData->cpEnable);
}

static void __GXFifoReadDisable() {
    SET_REG_FIELD(__GXData->cpEnable, 1, 0, 0);
    GX_SET_CP_REG(1, __GXData->cpEnable);
}

static void GXOverflowHandler(__OSInterrupt interrupt, OSContext* context) {
    __GXOverflowCount++;
    __GXWriteFifoIntEnable(0, 1);
    __GXWriteFifoIntReset(1, 0);
    GXOverflowSuspendInProgress = TRUE;

    OSSuspendThread(__GXCurrentThread);
}

static void GXUnderflowHandler(s16 interrupt, OSContext* context) {
    OSResumeThread(__GXCurrentThread);
    GXOverflowSuspendInProgress = FALSE;
    __GXWriteFifoIntReset(1, 1);
    __GXWriteFifoIntEnable(1, 0);
}

static void GXBreakPointHandler(__OSInterrupt interrupt, OSContext* context) {
    OSContext exceptionContext;

    SET_REG_FIELD(__GXData->cpEnable, 1, 5, 0);
    GX_SET_CP_REG(1, __GXData->cpEnable);
    if (BreakPointCB != NULL) {
        OSClearContext(&exceptionContext);
        OSSetCurrentContext(&exceptionContext);
        BreakPointCB();
        OSClearContext(&exceptionContext);
        OSSetCurrentContext(context);
    }
}

void GXCPInterruptHandler(__OSInterrupt interrupt, OSContext* context) {
    __GXData->cpStatus = GX_GET_CP_REG(0);
    if (GET_REG_FIELD(__GXData->cpEnable, 1, 3) && GET_REG_FIELD(__GXData->cpStatus, 1, 1)) {
        GXUnderflowHandler(interrupt, context);
    }
    if (GET_REG_FIELD(__GXData->cpEnable, 1, 2) && GET_REG_FIELD(__GXData->cpStatus, 1, 0)) {
        GXOverflowHandler(interrupt, context);
    }
    if (GET_REG_FIELD(__GXData->cpEnable, 1, 5) && GET_REG_FIELD(__GXData->cpStatus, 1, 4)) {
        GXBreakPointHandler(interrupt, context);
    }
}

void GXInitFifoBase(GXFifoObj *fifo, void *base, u32 size) {
    __GXFifoObj* realFifo = (__GXFifoObj*)fifo;

    realFifo->base = base;
    realFifo->top = (void*)((u32)base + size - 4);
    realFifo->size = size;
    realFifo->count = 0;

    GXInitFifoLimits(fifo, size - (16 * 1024), OSRoundDown32B(size/2));
    GXInitFifoPtrs(fifo, base, base);
}

void GXInitFifoPtrs(GXFifoObj* fifo, void* readPtr, void* writePtr) {
    __GXFifoObj* realFifo = (__GXFifoObj*)fifo;
    BOOL enabled = OSDisableInterrupts();

    realFifo->rdPtr = readPtr;
    realFifo->wrPtr = writePtr;
    realFifo->count = (u8*)writePtr - (u8*)readPtr;
    if (realFifo->count < 0) {
        realFifo->count += realFifo->size;
    }

    OSRestoreInterrupts(enabled);
}

void GXInitFifoLimits(GXFifoObj* fifo, u32 hiWatermark, u32 loWatermark) {
    __GXFifoObj* realFifo = (__GXFifoObj*)fifo;

    realFifo->hiWatermark = hiWatermark;
    realFifo->loWatermark = loWatermark;
}

GXBool CPGPLinkCheck() {
    u32 check = 0;
    s32 range1, range2, overlap;

    if (!CPUFifoReady || !GPFifoReady) {
        return GX_FALSE;
    }

    if (CPUFifo.base == GPFifo.base) {
        check++;
    }

    if (CPUFifo.top == GPFifo.top) {
        check++;
    }

    if (check == 2) {
        if (CPUFifo.hiWatermark == GPFifo.hiWatermark) {
            check++;
        }

        if (CPUFifo.loWatermark == GPFifo.loWatermark) {
            check++;
        }

        return GX_TRUE;
    }
    
    range1 = (s32)((u8*)CPUFifo.top - (u8*)GPFifo.base);
    range2 = (s32)((u8*)GPFifo.top - (u8*)CPUFifo.base);
    overlap = ((range1 > 0) && (range2 > 0) || (range1 < 0 && (range2 < 0)));

    if (overlap) {
        OSReport("CPUFifo: %08X - %08X\n", (u32)CPUFifo.base, (u32)CPUFifo.top);
        OSReport("GP Fifo: %08X - %08X\n", (u32)GPFifo.base, (u32)GPFifo.top);
    }

    return GX_FALSE;
}

void GXSetCPUFifo(GXFifoObj* fifo) {
    const __GXFifoObj* realFifo = (const __GXFifoObj*)fifo;
    BOOL enabled = OSDisableInterrupts();
    u32 reg;

    if (fifo == NULL) {
        CPUFifoReady = GX_FALSE;
        CPGPLinked = GX_FALSE;
        CPUFifo.bind_cpu = CPUFifo.bind_gp = GX_FALSE;
        OSRestoreInterrupts(enabled);
        return;
    }

    CPUFifo = *realFifo;
    CPUFifoReady = GX_TRUE;
    CPUFifo.bind_cpu = GX_TRUE;

    if (CPGPLinkCheck()) {
        CPGPLinked = GX_TRUE;
        CPUFifo.bind_gp = GX_TRUE;

        reg = 0;
        
        GX_SET_PI_REG(3, (u32)CPUFifo.base & 0x3FFFFFFF);
        GX_SET_PI_REG(4, (u32)CPUFifo.top & 0x3FFFFFFF);

        SET_REG_FIELD(reg, 24, 5, (u32)CPUFifo.wrPtr >> 5);
        SET_REG_FIELD(reg, 1, 29, 0);
        GX_SET_PI_REG(5, reg);

        __GXWriteFifoIntReset(GX_TRUE, GX_TRUE);
        __GXWriteFifoIntEnable(GX_TRUE, GX_FALSE);
        __GXFifoLink(GX_TRUE);
    }
    else {
        CPUFifo.bind_gp = GX_FALSE;

        if (CPGPLinked) {
            __GXFifoLink(GX_FALSE);
            CPGPLinked = GX_FALSE;
        }

        __GXWriteFifoIntEnable (GX_FALSE, GX_FALSE);

        reg = 0;

        GX_SET_PI_REG(3, (u32)CPUFifo.base & 0x3FFFFFFF);
        GX_SET_PI_REG(4, (u32)CPUFifo.top & 0x3FFFFFFF);
        SET_REG_FIELD(reg, 24, 5, (u32)CPUFifo.wrPtr >> 5);
        SET_REG_FIELD(reg, 1, 29, 0);
        GX_SET_PI_REG(5, reg);
    }

    PPCSync();

    OSRestoreInterrupts(enabled);
}

void GXSetGPFifo(GXFifoObj* fifo) {
    __GXFifoObj* realFifo = (__GXFifoObj*)fifo;
    BOOL enabled = OSDisableInterrupts();
    u32 stbtmp;

    __GXFifoReadDisable();
    __GXWriteFifoIntEnable(0, 0);

    if (fifo == NULL) {
        GPFifoReady = GX_FALSE;
        CPGPLinked = GX_FALSE;
        __GXFifoLink(GX_FALSE);
        GPFifo.bind_gp = GPFifo.bind_cpu = GX_FALSE;
        OSRestoreInterrupts(enabled);
        return;
    }
    
    GPFifo = *realFifo;
    GPFifoReady = GX_TRUE;
    GPFifo.bind_gp = GX_TRUE;

    GX_SET_CP_REG(16, (u32)GPFifo.base & 0xFFFF);
    GX_SET_CP_REG(18, (u32)GPFifo.top & 0xFFFF);
    GX_SET_CP_REG(24, GPFifo.count & 0xFFFF);
    GX_SET_CP_REG(26, (u32)GPFifo.wrPtr & 0xFFFF);
    GX_SET_CP_REG(28, (u32)GPFifo.rdPtr & 0xFFFF);
    GX_SET_CP_REG(20, (u32)GPFifo.hiWatermark & 0xFFFF);
    GX_SET_CP_REG(22, (u32)GPFifo.loWatermark & 0xFFFF);
    GX_SET_CP_REG(17, ((u32)GPFifo.base & 0x3FFFFFFF) >> 16);
    GX_SET_CP_REG(19, ((u32)GPFifo.top & 0x3FFFFFFF) >> 16);
    GX_SET_CP_REG(25, GPFifo.count >> 16);
    GX_SET_CP_REG(27, ((u32)GPFifo.wrPtr & 0x3FFFFFFF) >> 16);
    GX_SET_CP_REG(29, ((u32)GPFifo.rdPtr & 0x3FFFFFFF) >> 16);
    GX_SET_CP_REG(21, (u32)GPFifo.hiWatermark >> 16);
    GX_SET_CP_REG(23, (u32)GPFifo.loWatermark >> 16);

    PPCSync();

    if (CPGPLinkCheck()) {
        CPGPLinked = GX_TRUE;
        GPFifo.bind_cpu = GX_TRUE;
        __GXWriteFifoIntEnable(1, 0);
        __GXFifoLink(1);
    }
    else {
        CPGPLinked = GX_FALSE;
        GPFifo.bind_cpu = GX_FALSE;
        __GXWriteFifoIntEnable(0, 0);
        __GXFifoLink(0);
    }

    stbtmp = __GXData->cpEnable;
    SET_REG_FIELD(stbtmp, 1, 1, 0);
    SET_REG_FIELD(stbtmp, 1, 5, 0);
    GX_SET_CP_REG(1, stbtmp);
    GX_SET_CP_REG(1, __GXData->cpEnable);

    __GXWriteFifoIntReset(1, 1);
    __GXFifoReadEnable();
    OSRestoreInterrupts(enabled);
}

#define SOME_MACRO1(fifo) {                 \
    u32 temp = GX_GET_CP_REG(29) << 16;     \
    temp |= GX_GET_CP_REG(28);              \
    fifo.rdPtr = OSPhysicalToCached(temp);  \
}

#define SOME_MACRO2(fifo) {             \
    u32 temp = GX_GET_CP_REG(25) << 16; \
    temp |= GX_GET_CP_REG(24);          \
    fifo.count = temp;                  \
}

static void __GXSaveFifoCPStat() {
    u32 cpStatus;
    u8 readIdle;

    SOME_MACRO1(GPFifo);
    SOME_MACRO2(GPFifo);
}

static void __GXSaveFifoPIStat() {
    u32 reg = GX_GET_PI_REG(5);
    CPUFifo.wrPtr = OSPhysicalToCached(reg & 0x1FFFFFE0);
    CPUFifo.wrap = (reg & 0x20000000)  ? GX_TRUE : GX_FALSE;
}

static void __GXSaveFifo() {
    BOOL en = OSDisableInterrupts();

    if (CPUFifoReady) {
        __GXSaveFifoPIStat();
    }

    if (GPFifoReady) {
        __GXSaveFifoCPStat();
    }

    if (CPGPLinked) {
        CPUFifo.rdPtr = GPFifo.rdPtr;
        CPUFifo.count = GPFifo.count;
        GPFifo.wrPtr = CPUFifo.wrPtr;
        GPFifo.wrap = CPUFifo.wrap;
    }
    else if (CPUFifoReady) {
        CPUFifo.count  = (s32)CPUFifo.wrPtr - (s32)CPUFifo.rdPtr;
        if (CPUFifo.count < 0) {
            CPUFifo.count += CPUFifo.size;
        }
    }

    OSRestoreInterrupts(en);
}

GXBool __GXIsGPFifoReady() {
    return GPFifoReady;
}

void GXGetGPStatus(GXBool* overhi, GXBool* underlow, GXBool* readIdle, GXBool* cmdIdle, GXBool* brkpt) {
    __GXData->cpStatus = GX_GET_CP_REG(0);
    *overhi   = GET_REG_FIELD(__GXData->cpStatus, 1, 0);
    *underlow = (int)GET_REG_FIELD(__GXData->cpStatus, 1, 1);
    *readIdle = (int)GET_REG_FIELD(__GXData->cpStatus, 1, 2);
    *cmdIdle  = (int)GET_REG_FIELD(__GXData->cpStatus, 1, 3);
    *brkpt    = (int)GET_REG_FIELD(__GXData->cpStatus, 1, 4);
}

GXBool GXGetCPUFifo(GXFifoObj *fifo) {
    __GXFifoObj* realFifo = (__GXFifoObj*)fifo;
    if (!CPUFifoReady) {
        return GX_FALSE;
    }

    GXFlush();
    __GXSaveFifo();

    *realFifo = CPUFifo;

    return GX_TRUE;
}

GXFifoObj* GXGetGPFifo() {
    return (GXFifoObj*)&GPFifo;
}

u32 GXGetFifoCount(const GXFifoObj* fifo) {
    __GXFifoObj* realFifo = (__GXFifoObj*)fifo;
    return (u32)realFifo->count;
}

GXBool GXGetFifoWrap(const GXFifoObj* fifo) {
    __GXFifoObj* realFifo = (__GXFifoObj*) fifo;
    return realFifo->wrap;
}

GXBreakPtCallback GXSetBreakPtCallback(GXBreakPtCallback cb) {
    GXBreakPtCallback oldcb = BreakPointCB;
    BOOL enabled = OSDisableInterrupts();

    BreakPointCB = cb;
    OSRestoreInterrupts(enabled);
    return oldcb;
}

void __GXFifoInit() {
    __OSSetInterruptHandler(__OS_INTERRUPT_PI_CP, GXCPInterruptHandler);
    __OSUnmaskInterrupts(OS_INTERRUPTMASK_PI_CP);
    __GXCurrentThread = OSGetCurrentThread();

    GXOverflowSuspendInProgress = FALSE;

    memset(&CPUFifo, 0, sizeof(__GXFifoObj));
    memset(&GPFifo, 0, sizeof(__GXFifoObj));

    CPUFifoReady = GX_FALSE;
    GPFifoReady  = GX_FALSE;
}

void __GXCleanGPFifo() {
    BOOL enabled;

    if (!GPFifoReady) {
        return;
    }

    enabled = OSDisableInterrupts();
    __GXFifoReadDisable();
    __GXWriteFifoIntEnable(GX_FALSE, GX_FALSE);
    GPFifo.rdPtr = GPFifo.wrPtr;
    GPFifo.count = 0;
    GX_SET_CP_REG(24, GPFifo.count);
    GX_SET_CP_REG(26, (u32)GPFifo.wrPtr & 0x3FFFFFFF);
    GX_SET_CP_REG(28, (u32)GPFifo.rdPtr & 0x3FFFFFFF);
    GX_SET_CP_REG(25, GPFifo.count>>16);
    GX_SET_CP_REG(27, ((u32)GPFifo.wrPtr & 0x3FFFFFFF)>>16);
    GX_SET_CP_REG(29, ((u32)GPFifo.rdPtr & 0x3FFFFFFF)>>16);

    PPCSync();

    if (CPGPLinked) {
        u32 reg = 0;
        CPUFifo.rdPtr = GPFifo.rdPtr;
        CPUFifo.wrPtr = GPFifo.wrPtr;
        CPUFifo.count = GPFifo.count;
        SET_REG_FIELD(reg, 24, 5, (u32)CPUFifo.wrPtr >> 5);
        SET_REG_FIELD(reg, 1, 29, 0);
        GX_SET_PI_REG(5, reg);
        __GXWriteFifoIntEnable(GX_TRUE, GX_FALSE);
        __GXFifoLink(GX_TRUE);
    }

    SET_REG_FIELD(__GXData->cpEnable, 1, 1, 0);
    SET_REG_FIELD(__GXData->cpEnable, 1, 5, 0);
    GX_SET_CP_REG(1, __GXData->cpEnable);
    __GXCurrentBP = 0;
    __GXWriteFifoIntReset(GX_TRUE, GX_TRUE);
    __GXFifoReadEnable();
    OSRestoreInterrupts(enabled);
}
