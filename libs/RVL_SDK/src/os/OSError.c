#include <revolution/os.h>
#include <private/os.h>

#include <revolution/base/PPCArch.h>

#include <private/bus.h>
#include <private/hollywood.h>

#include <stdio.h>

OSErrorHandler  __OSErrorTable[OS_EXCEPTION_MAX];

u32             __OSFpscrEnableBits = FPSCR_ENABLE;

void OSReport(const char* msg, ...) {
    va_list marker;
    va_start(marker, msg);
    OSVReport(msg, marker);
    va_end(marker);
}

void OSVReport(const char* msg, va_list list) {
    vprintf(msg, list);
}

void OSPanic(const char* file, int line, const char* msg, ...) {
    va_list marker;
    u32 i;
    u32* p;

    BOOL enabled = OSDisableInterrupts();

    va_start(marker, msg);
    OSVReport(msg, marker);
    va_end(marker);
    OSReport(" in \"%s\" on line %d.\n", file, line);

    OSReport("\nAddress:      Back Chain    LR Save\n");
    for (i = 0, p = (u32*)OSGetStackPointer(); p && (u32)p != 0xFFFFFFFF && i++ < 16; p = (u32*)*p) {
        OSReport("0x%08x:   0x%08x    0x%08x\n", p, p[0], p[1]);
    }

    PPCHalt();
}

OSErrorHandler OSSetErrorHandler(OSError error, OSErrorHandler handler) {
    OSErrorHandler oldHandler;
    OSThread* thread;

    BOOL enabled = OSDisableInterrupts();
    u32 msr, fpscr;
 
    int i;

    oldHandler = __OSErrorTable[error];
    __OSErrorTable[error] = handler;

    if (error == OS_EXCEPTION_FLOATING_POINT_EXCEPTION) {
        msr = PPCMfmsr();
        PPCMtmsr(msr | MSR_FP);
        fpscr = PPCMffpscr();

        if (handler) {
            for (thread = __OSActiveThreadQueue.head; thread; thread = thread->linkActive.next) {
                SET_FLAG(thread->context.srr1, MSR_FE0 | MSR_FE1);
                if (!HAS_FLAG(thread->context.state, OS_CONTEXT_STATE_FPSAVED)) {
                    SET_FLAG(thread->context.state, OS_CONTEXT_STATE_FPSAVED);
                    for (i = 0; i < OS_PRIORITY_MAX + 1; ++i) {
                        *(u64*)&thread->context.fpr[i] = (u64)0xFFFFFFFFFFFFFFFFLL;
                        *(u64*)&thread->context.psf[i] = (u64)0xFFFFFFFFFFFFFFFFLL;
                    }
                    thread->context.fpscr = FPSCR_NI;
                }
                SET_FLAG(thread->context.fpscr, OS_FPSCR_ENABLE);
                CLEAR_FLAG(thread->context.fpscr,   FPSCR_VXVC   | FPSCR_VXIMZ  | FPSCR_VXZDZ  | FPSCR_VXIDI | FPSCR_VXISI |
                                                    FPSCR_VXSNAN | FPSCR_VXSOFT | FPSCR_VXSQRT | FPSCR_VXCVI | FPSCR_XX    |
                                                    FPSCR_ZX     | FPSCR_UX     | FPSCR_OX     | FPSCR_FX    | FPSCR_FI);
            }
            SET_FLAG(fpscr, __OSFpscrEnableBits & FPSCR_ENABLE);
            SET_FLAG(msr, MSR_FE0 | MSR_FE1);
        }
        else {
            for (thread = __OSActiveThreadQueue.head; thread; thread = thread->linkActive.next) {
                CLEAR_FLAG(thread->context.srr1,  MSR_FE0 | MSR_FE1);
                CLEAR_FLAG(thread->context.fpscr, FPSCR_ENABLE);
                CLEAR_FLAG(thread->context.fpscr,   FPSCR_VXVC   | FPSCR_VXIMZ  | FPSCR_VXZDZ  | FPSCR_VXIDI | FPSCR_VXISI |
                                                    FPSCR_VXSNAN | FPSCR_VXSOFT | FPSCR_VXSQRT | FPSCR_VXCVI | FPSCR_XX    |
                                                    FPSCR_ZX     | FPSCR_UX     | FPSCR_OX     | FPSCR_FX    | FPSCR_FI);
            }
            CLEAR_FLAG(fpscr, FPSCR_ENABLE);
            CLEAR_FLAG(msr, MSR_FE0 | MSR_FE1);
        }

        CLEAR_FLAG(fpscr,   FPSCR_VXVC   | FPSCR_VXIMZ  | FPSCR_VXZDZ  | FPSCR_VXIDI | FPSCR_VXISI |
                            FPSCR_VXSNAN | FPSCR_VXSOFT | FPSCR_VXSQRT | FPSCR_VXCVI | FPSCR_XX    |
                            FPSCR_ZX     | FPSCR_UX     | FPSCR_OX     | FPSCR_FX    | FPSCR_FI);

        PPCMtfpscr(fpscr);
        PPCMtmsr(msr);
    }

    OSRestoreInterrupts(enabled);

    return oldHandler;
}

void __OSUnhandledException(__OSException exception, OSContext* context, u32 dsisr, u32 dar) {
    OSTime now;
    u32 fpscr, msr;

    now = OSGetTime();

    if (!HAS_FLAG(context->srr1, MSR_RI)) {
        OSReport("Non-recoverable Exception %d", exception);
    }
    else {
        if (exception == OS_EXCEPTION_PROGRAM && (context->srr1 & SRR1_L2DP_BIT) && __OSErrorTable[OS_EXCEPTION_FLOATING_POINT_EXCEPTION] != NULL) {
            exception = OS_EXCEPTION_FLOATING_POINT_EXCEPTION;

            msr = PPCMfmsr();
            PPCMtmsr(msr | MSR_FP);

            if (__OSFPUContext) {
                OSSaveFPUContext((OSContext*)__OSFPUContext);
            }

            fpscr = PPCMffpscr();
            CLEAR_FLAG(fpscr,   FPSCR_VXVC   | FPSCR_VXIMZ  | FPSCR_VXZDZ  | FPSCR_VXIDI | FPSCR_VXISI |
                                FPSCR_VXSNAN | FPSCR_VXSOFT | FPSCR_VXSQRT | FPSCR_VXCVI | FPSCR_XX |
                                FPSCR_ZX     | FPSCR_UX     | FPSCR_OX     | FPSCR_FX    | FPSCR_FI);
            PPCMtfpscr(fpscr);

            PPCMtmsr(msr);

            if (__OSFPUContext == context) {
                OSDisableScheduler();
                __OSErrorTable[exception](exception, context, dsisr, dar);
                CLEAR_FLAG(context->srr1, MSR_FP);
                __OSFPUContext = NULL;

                CLEAR_FLAG(context->fpscr,  FPSCR_VXVC   | FPSCR_VXIMZ  | FPSCR_VXZDZ  | FPSCR_VXIDI | FPSCR_VXISI |
                                            FPSCR_VXSNAN | FPSCR_VXSOFT | FPSCR_VXSQRT | FPSCR_VXCVI | FPSCR_XX |
                                            FPSCR_ZX     | FPSCR_UX     | FPSCR_OX     | FPSCR_FX    | FPSCR_FI);
                OSEnableScheduler();
                __OSReschedule();
            }
            else {
                CLEAR_FLAG(context->srr1, MSR_FP);
                __OSFPUContext = NULL;
            }

            OSLoadContext(context);
        }

        if (__OSErrorTable[exception]) {
            OSDisableScheduler();
            __OSErrorTable[exception](exception, context, dsisr, dar);
            OSEnableScheduler();
            __OSReschedule();
            OSLoadContext(context);
        }
        if (exception == OS_EXCEPTION_DECREMENTER) {
            OSLoadContext(context);
        }
        OSReport("Unhandled Exception %d", exception);
    }

    OSReport("\n");
    OSDumpContext(context);
    OSReport("\nDSISR = 0x%08x                   DAR  = 0x%08x\n", dsisr, dar);
    OSReport("TB = 0x%016llx\n", now);

    switch (exception) {
        case OS_EXCEPTION_DSI: {
            OSReport("\nInstruction at 0x%x (read from SRR0) attempted to access invalid address 0x%x (read from DAR)\n", context->srr0, dar);
            break;
        }
        case OS_EXCEPTION_ISI: {
            OSReport("\nAttempted to fetch instruction from invalid address 0x%x (read from SRR0)\n", context->srr0);
            break;
        }
        case OS_EXCEPTION_ALIGNMENT: {
            OSReport("\nInstruction at 0x%x (read from SRR0) attempted to access unaligned address 0x%x (read from DAR)\n", context->srr0, dar);
            break;
        }
        case OS_EXCEPTION_PROGRAM: {
            OSReport("\nProgram exception : Possible illegal instruction/operation at or around 0x%x (read from SRR0)\n", context->srr0, dar);
            break;
        }
        case OS_EXCEPTION_MEMORY_PROTECTION: {
            OSReport("\n");
            OSReport("AI DMA Address =   0x%04x%04x\n", DSP_READ_REG(DSP_DMA_START_ADDR_H), DSP_READ_REG(DSP_DMA_START_ADDR_L));
            OSReport("ARAM DMA Address = 0x%04x%04x\n", DSP_READ_REG(DSP_AR_DMA_MMADDR_H), DSP_READ_REG(DSP_AR_DMA_MMADDR_L));
            OSReport("DI DMA Address =   0x%08x\n",     DI_READ_REG(DI_DMA_MEM_ADDRESS));
            break;
        }
    }

    OSReport("\nLast interrupt (%d): SRR0 = 0x%08x  TB = 0x%016llx\n", __OSLastInterrupt, __OSLastInterruptSrr0, __OSLastInterruptTime);
    PPCHalt();
}
