#include <revolution/os.h>
#include <private/os.h>

#include <revolution/base/PPCArch.h>

#include <decomp.h>

#include <string.h>

#include <private/bus.h>
#include <private/hollywood.h>

static __OSInterruptHandler*    InterruptHandlerTable;

volatile OSTime                 __OSLastInterruptTime;
volatile __OSInterrupt          __OSLastInterrupt;
volatile u32                    __OSLastInterruptSrr0;

static OSInterruptMask InterruptPrioTable[] = {
    OS_INTERRUPTMASK_PI_ERROR,
    OS_INTERRUPTMASK_PI_DEBUG,
    OS_INTERRUPTMASK_MEM,
    OS_INTERRUPTMASK_PI_RSW,
    OS_INTERRUPTMASK_PI_VI,
    OS_INTERRUPTMASK_PI_ACR,
    OS_INTERRUPTMASK_PI_PE,
    OS_INTERRUPTMASK_PI_HSP,
    OS_INTERRUPTMASK_DSP_ARAM | OS_INTERRUPTMASK_DSP_DSP | OS_INTERRUPTMASK_AI |
        OS_INTERRUPTMASK_EXI | OS_INTERRUPTMASK_PI_SI | OS_INTERRUPTMASK_PI_DI,
    OS_INTERRUPTMASK_DSP_AI,
    OS_INTERRUPTMASK_PI_CP,
    OS_INTERRUPTMASK_INVALID,
};

static void ExternalInterruptHandler(register __OSException exception, register OSContext* context);
void __RAS_OSDisableInterrupts_begin();
void __RAS_OSDisableInterrupts_end();

asm BOOL OSDisableInterrupts() {
#ifdef __MWERKS__
    nofralloc
entry    __RAS_OSDisableInterrupts_begin
    mfmsr   r3
    rlwinm  r4, r3, 0, 17, 15
    mtmsr   r4
entry    __RAS_OSDisableInterrupts_end
    rlwinm  r3, r3, 17, 31, 31
    blr
#endif // __MWERKS__
}

asm BOOL OSEnableInterrupts() {
#ifdef __MWERKS__
    nofralloc

    mfmsr   r3
    ori     r4, r3, MSR_EE
    mtmsr   r4
    rlwinm  r3, r3, 17, 31, 31
    blr
#endif // __MWERKS__
}

asm BOOL OSRestoreInterrupts(register BOOL level) {
#ifdef __MWERKS__
    nofralloc

    cmpwi   level, 0
    mfmsr   r4
    beq     _disable
    ori     r5, r4, MSR_EE
    b       _restore
_disable:
    rlwinm  r5, r4, 0, 17, 15
_restore:
    mtmsr   r5
    rlwinm  r3, r4, 17, 31, 31
    blr
#endif // __MWERKS__
}

__OSInterruptHandler __OSSetInterruptHandler(__OSInterrupt interrupt, __OSInterruptHandler handler) {
    __OSInterruptHandler oldHandler;
    oldHandler = InterruptHandlerTable[interrupt];
    InterruptHandlerTable[interrupt] = handler;
    return oldHandler;
}

__OSInterruptHandler __OSGetInterruptHandler(__OSInterrupt interrupt) {
    return InterruptHandlerTable[interrupt];
}

void __OSInterruptInit() {
    InterruptHandlerTable = (void*)OSPhysicalToCached(OS_ADDR_INTERRUPT_TABLE);
    memset(InterruptHandlerTable, 0, __OS_INTERRUPT_MAX * sizeof(__OSInterruptHandler));

    *(u32*)OSPhysicalToCached(OS_ADDR_PREVIOUS_INTERRUPT)   = 0;
    *(u32*)OSPhysicalToCached(OS_ADDR_CURRENT_INTERRUPT)    = 0;

    PI_WRITE_REG(PI_INTERRUPT_MASK, (1<<PI_INTERRUPT_MEM) | (1<<PI_INTERRUPT_DSP) | (1<<PI_INTERRUPT_AI) | (1<<PI_INTERRUPT_EXI));
    ACR_WRITE_REG32(HW_PPCIRQMASK, 0x40000000);

    __OSMaskInterrupts(OS_INTERRUPTMASK_MEM | OS_INTERRUPTMASK_DSP | OS_INTERRUPTMASK_AI | OS_INTERRUPTMASK_EXI | OS_INTERRUPTMASK_PI);
    __OSSetExceptionHandler(OS_EXCEPTION_EXTERNAL_INTERRUPT, ExternalInterruptHandler);
}

static u32 SetInterruptMask(OSInterruptMask mask, OSInterruptMask current) {
    u32 reg;
    switch (__cntlzw(mask)) {
        // Memory Interface
        case __OS_INTERRUPT_MEM_0:
        case __OS_INTERRUPT_MEM_1:
        case __OS_INTERRUPT_MEM_2:
        case __OS_INTERRUPT_MEM_3:
        case __OS_INTERRUPT_MEM_ADDRESS: {
            reg = 0;
            if (!HAS_FLAG(current, OS_INTERRUPTMASK_MEM_0)) {
                SET_FLAG(reg, (1<<MEM_INT_MEM_0));
            }
            if (!HAS_FLAG(current, OS_INTERRUPTMASK_MEM_1)) {
                SET_FLAG(reg, (1<<MEM_INT_MEM_1));
            }
            if (!HAS_FLAG(current, OS_INTERRUPTMASK_MEM_2)) {
                SET_FLAG(reg, (1<<MEM_INT_MEM_2));
            }
            if (!HAS_FLAG(current, OS_INTERRUPTMASK_MEM_3)) {
                SET_FLAG(reg, (1<<MEM_INT_MEM_3));
            }
            if (!HAS_FLAG(current, OS_INTERRUPTMASK_MEM_ADDRESS)) {
                SET_FLAG(reg, (1<<MEM_INT_MEM_ADDRESS));
            }
            MEM_WRITE_REG(MEM_INT_ENBL, reg);
            CLEAR_FLAG(mask, OS_INTERRUPTMASK_MEM);
            break;
        }
        // DSP Audio
        case __OS_INTERRUPT_DSP_AI:
        case __OS_INTERRUPT_DSP_ARAM:
        case __OS_INTERRUPT_DSP_DSP: {
            reg = DSP_READ_REG(DSP_CONTROL_STATUS);
            CLEAR_FLAG(reg, (1<<DSP_CONTROL_STATUS_AIDINT)
                            | (1<<DSP_CONTROL_STATUS_AIDINTMSK)
                            | (1<<DSP_CONTROL_STATUS_ARINT)
                            | (1<<DSP_CONTROL_STATUS_ARINTMSK)
                            | (1<<DSP_CONTROL_STATUS_DSPINT)
                            | (1<<DSP_CONTROL_STATUS_DMAINTMSK));
            if (!HAS_FLAG(current, OS_INTERRUPTMASK_DSP_AI)) {
                SET_FLAG(reg, (1<<DSP_CONTROL_STATUS_AIDINTMSK));
            }
            if (!HAS_FLAG(current, OS_INTERRUPTMASK_DSP_ARAM)) {
                SET_FLAG(reg, (1<<DSP_CONTROL_STATUS_ARINTMSK));
            }
            if (!HAS_FLAG(current, OS_INTERRUPTMASK_DSP_DSP)) {
                SET_FLAG(reg, (1<<DSP_CONTROL_STATUS_DMAINTMSK));
            }
            DSP_WRITE_REG(DSP_CONTROL_STATUS, reg);
            CLEAR_FLAG(mask, OS_INTERRUPTMASK_DSP);
            break;
        }
        // Audio Interface
        case __OS_INTERRUPT_AI_AI: {
            reg = AI_READ_REG(AI_CONTROL);
            CLEAR_FLAG(reg, (1<<AI_CONTROL_AIINTMSK)
                            | (1<<AI_CONTROL_AIINT)
                            | (1<<AI_CONTROL_SCRESET));
            if (!HAS_FLAG(current, OS_INTERRUPTMASK_AI_AI)) {
                SET_FLAG(reg, (1<<AI_CONTROL_AIINTMSK));
            }
            AI_WRITE_REG(AI_CONTROL, reg);
            CLEAR_FLAG(mask, OS_INTERRUPTMASK_AI);
            break;
        }
        // External interface (Channel 0)
        case __OS_INTERRUPT_EXI_0_EXI:
        case __OS_INTERRUPT_EXI_0_TC:
        case __OS_INTERRUPT_EXI_0_EXT: {
            reg = EXI_READ_REG(EXI_0_CHAN_PARAM);
            CLEAR_FLAG(reg, (1<<EXI_CHAN_PARAM_INTMASK)
                            | (1<<EXI_CHAN_PARAM_INT)
                            | (1<<EXI_CHAN_PARAM_TCINTMASK)
                            | (1<<EXI_CHAN_PARAM_TCINT)
                            | (1<<EXI_CHAN_PARAM_EXTINTMASK)
                            | (1<<EXI_CHAN_PARAM_EXTINT)
                            | (1<<EXI_CHAN_PARAM_ROMDIS));
            if (!HAS_FLAG(current, OS_INTERRUPTMASK_EXI_0_EXI)) {
                SET_FLAG(reg, (1<<EXI_CHAN_PARAM_INTMASK));
            }
            if (!HAS_FLAG(current, OS_INTERRUPTMASK_EXI_0_TC)) {
                SET_FLAG(reg, (1<<EXI_CHAN_PARAM_TCINTMASK));
            }
            if (!HAS_FLAG(current, OS_INTERRUPTMASK_EXI_0_EXT)) {
                SET_FLAG(reg, (1<<EXI_CHAN_PARAM_EXTINTMASK));
            }
            EXI_WRITE_REG(EXI_0_CHAN_PARAM, reg);
            CLEAR_FLAG(mask, OS_INTERRUPTMASK_EXI_0);
            break;
        }
        // External interface (Channel 1)
        case __OS_INTERRUPT_EXI_1_EXI:
        case __OS_INTERRUPT_EXI_1_TC:
        case __OS_INTERRUPT_EXI_1_EXT: {
            reg = EXI_READ_REG(EXI_1_CHAN_PARAM);
            CLEAR_FLAG(reg, (1<<EXI_CHAN_PARAM_INTMASK)
                            | (1<<EXI_CHAN_PARAM_INT)
                            | (1<<EXI_CHAN_PARAM_TCINTMASK)
                            | (1<<EXI_CHAN_PARAM_TCINT)
                            | (1<<EXI_CHAN_PARAM_EXTINTMASK)
                            | (1<<EXI_CHAN_PARAM_EXTINT));
            if (!HAS_FLAG(current, OS_INTERRUPTMASK_EXI_1_EXI)) {
                SET_FLAG(reg, (1<<EXI_CHAN_PARAM_INTMASK));
            }
            if (!HAS_FLAG(current, OS_INTERRUPTMASK_EXI_1_TC)) {
                SET_FLAG(reg, (1<<EXI_CHAN_PARAM_TCINTMASK));
            }
            if (!HAS_FLAG(current, OS_INTERRUPTMASK_EXI_1_EXT)) {
                SET_FLAG(reg, (1<<EXI_CHAN_PARAM_EXTINTMASK));
            }
            EXI_WRITE_REG(EXI_1_CHAN_PARAM, reg);
            CLEAR_FLAG(mask, OS_INTERRUPTMASK_EXI_1);
            break;
        }
        // External interface (Channel 2)
        case __OS_INTERRUPT_EXI_2_EXI:
        case __OS_INTERRUPT_EXI_2_TC: {
            reg = EXI_READ_REG(EXI_2_CHAN_PARAM);
            CLEAR_FLAG(reg, (1<<EXI_CHAN_PARAM_INTMASK)
                            | (1<<EXI_CHAN_PARAM_INT)
                            | (1<<EXI_CHAN_PARAM_TCINTMASK)
                            | (1<<EXI_CHAN_PARAM_TCINT));
            if (!HAS_FLAG(current, OS_INTERRUPTMASK_EXI_2_EXI)) {
                SET_FLAG(reg, (1<<EXI_CHAN_PARAM_INTMASK));
            }
            if (!HAS_FLAG(current, OS_INTERRUPTMASK_EXI_2_TC)) {
                SET_FLAG(reg, (1<<EXI_CHAN_PARAM_TCINTMASK));
            }
            EXI_WRITE_REG(EXI_2_CHAN_PARAM, reg);
            CLEAR_FLAG(mask, OS_INTERRUPTMASK_EXI_2);
            break;
        }
        // Processor interface
        case __OS_INTERRUPT_PI_CP:
        case __OS_INTERRUPT_PI_SI:
        case __OS_INTERRUPT_PI_DI:
        case __OS_INTERRUPT_PI_RSW:
        case __OS_INTERRUPT_PI_ERROR:
        case __OS_INTERRUPT_PI_VI:
        case __OS_INTERRUPT_PI_DEBUG:
        case __OS_INTERRUPT_PI_PE_TOKEN:
        case __OS_INTERRUPT_PI_PE_FINISH:
        case __OS_INTERRUPT_PI_HSP:
        case __OS_INTERRUPT_PI_ACR: {
            reg = (1<<PI_INTERRUPT_EXI)
                | (1<<PI_INTERRUPT_AI)
                | (1<<PI_INTERRUPT_DSP)
                | (1<<PI_INTERRUPT_MEM);
            if (!HAS_FLAG(current, OS_INTERRUPTMASK_PI_CP)) {
                SET_FLAG(reg, (1<<PI_INTERRUPT_CP));
            }
            if (!HAS_FLAG(current, OS_INTERRUPTMASK_PI_SI)) {
                SET_FLAG(reg, (1<<PI_INTERRUPT_SI));
            }
            if (!HAS_FLAG(current, OS_INTERRUPTMASK_PI_DI)) {
                SET_FLAG(reg, (1<<PI_INTERRUPT_DI));
            }
            if (!HAS_FLAG(current, OS_INTERRUPTMASK_PI_RSW)) {
                SET_FLAG(reg, (1<<PI_INTERRUPT_RSW));
            }
            if (!HAS_FLAG(current, OS_INTERRUPTMASK_PI_ERROR)) {
                SET_FLAG(reg, (1<<PI_INTERRUPT_ERROR));
            }
            if (!HAS_FLAG(current, OS_INTERRUPTMASK_PI_VI)) {
                SET_FLAG(reg, (1<<PI_INTERRUPT_VI));
            }
            if (!HAS_FLAG(current, OS_INTERRUPTMASK_PI_DEBUG)) {
                SET_FLAG(reg, (1<<PI_INTERRUPT_DEBUG));
            }
            if (!HAS_FLAG(current, OS_INTERRUPTMASK_PI_PE_TOKEN)) {
                SET_FLAG(reg, (1<<PI_INTERRUPT_PE_TOKEN));
            }
            if (!HAS_FLAG(current, OS_INTERRUPTMASK_PI_PE_FINISH)) {
                SET_FLAG(reg, (1<<PI_INTERRUPT_PE_FINISH));
            }
            if (!HAS_FLAG(current, OS_INTERRUPTMASK_PI_HSP)) {
                SET_FLAG(reg, (1<<PI_INTERRUPT_HSP));
            }
            if (!HAS_FLAG(current, OS_INTERRUPTMASK_PI_ACR)) {
                SET_FLAG(reg, (1<<PI_INTERRUPT_ACR));
            }
            PI_WRITE_REG(PI_INTERRUPT_MASK, reg);
            CLEAR_FLAG(mask, OS_INTERRUPTMASK_PI);
            break;
        }
        // Nothing.
        default: {
            break;
        }
    }
    return mask;
}

OSInterruptMask __OSMaskInterrupts(OSInterruptMask global) {
    BOOL enabled = OSDisableInterrupts();
    OSInterruptMask prev, curr, mask;

    prev = *(u32*)OSPhysicalToCached(OS_ADDR_PREVIOUS_INTERRUPT);
    curr = *(u32*)OSPhysicalToCached(OS_ADDR_CURRENT_INTERRUPT);
    mask = ~(prev | curr) & global;
    global |= prev;
    *(u32*)OSPhysicalToCached(OS_ADDR_PREVIOUS_INTERRUPT) = global;
    while (mask) {
        mask = SetInterruptMask(mask, global | curr);
    }

    OSRestoreInterrupts(enabled);
    return prev;
}

OSInterruptMask __OSUnmaskInterrupts(OSInterruptMask global) {
    BOOL enabled = OSDisableInterrupts();
    OSInterruptMask prev, curr, mask;

    prev = *(u32*)OSPhysicalToCached(OS_ADDR_PREVIOUS_INTERRUPT);
    curr = *(u32*)OSPhysicalToCached(OS_ADDR_CURRENT_INTERRUPT);
    mask = (prev | curr) & global;
    global = prev & ~global;
    *(u32*)OSPhysicalToCached(OS_ADDR_PREVIOUS_INTERRUPT) = global;
    while (mask) {
        mask = SetInterruptMask(mask, global | curr);
    }

    OSRestoreInterrupts(enabled);
    return prev;
}

void __OSDispatchInterrupt(__OSException exception, OSContext* context) {
    u32 instr, mask, reg;
    OSInterruptMask cause, unmasked, *prio;
    __OSInterrupt interrupt;
    __OSInterruptHandler handler;

    instr = PI_READ_REG(PI_INTERRUPT_CAUSE);
    CLEAR_FLAG(instr, (1<<PI_INTERRUPT_RSW_STATE));
    mask = PI_READ_REG(PI_INTERRUPT_MASK);

    if (instr == 0 || (instr & mask) == 0) {
        OSLoadContext(context);
    }

    cause = 0;

    // Memory Interface
    if (HAS_FLAG(instr, (1<<PI_INTERRUPT_MEM))) {
        reg = MEM_READ_REG(MEM_INT_STAT);
        if (HAS_FLAG(reg, (1<<MEM_INT_MEM_0))) {
            SET_FLAG(cause, OS_INTERRUPTMASK_MEM_0);
        }
        if (HAS_FLAG(reg, (1<<MEM_INT_MEM_1))) {
            SET_FLAG(cause, OS_INTERRUPTMASK_MEM_1);
        }
        if (HAS_FLAG(reg, (1<<MEM_INT_MEM_2))) {
            SET_FLAG(cause, OS_INTERRUPTMASK_MEM_2);
        }
        if (HAS_FLAG(reg, (1<<MEM_INT_MEM_3))) {
            SET_FLAG(cause, OS_INTERRUPTMASK_MEM_3);
        }
        if (HAS_FLAG(reg, (1<<MEM_INT_MEM_ADDRESS))) {
            SET_FLAG(cause, OS_INTERRUPTMASK_MEM_ADDRESS);
        }
    }

    // DSP Audio
    if (HAS_FLAG(instr, (1<<PI_INTERRUPT_DSP))) {
        reg = DSP_READ_REG(DSP_CONTROL_STATUS);
        if (HAS_FLAG(reg, (1<<DSP_CONTROL_STATUS_AIDINT))) {
            SET_FLAG(cause, OS_INTERRUPTMASK_DSP_AI);
        }
        if (HAS_FLAG(reg, (1<<DSP_CONTROL_STATUS_ARINT))) {
            SET_FLAG(cause, OS_INTERRUPTMASK_DSP_ARAM);
        }
        if (HAS_FLAG(reg, (1<<DSP_CONTROL_STATUS_DSPINT))) {
            SET_FLAG(cause, OS_INTERRUPTMASK_DSP_DSP);
        }
    }

    // Audio Interface
    if (HAS_FLAG(instr, (1<<PI_INTERRUPT_AI))) {
        reg = AI_READ_REG(AI_CONTROL);
        if (HAS_FLAG(reg, (1<<AI_CONTROL_AIINT))) {
            SET_FLAG(cause, OS_INTERRUPTMASK_AI_AI);
        }
    }

    // External interface
    if (HAS_FLAG(instr, (1<<PI_INTERRUPT_EXI))) {
        reg = EXI_READ_REG(EXI_0_CHAN_PARAM);
        if (HAS_FLAG(reg, (1<<EXI_CHAN_PARAM_INT))) {
            SET_FLAG(cause, OS_INTERRUPTMASK_EXI_0_EXI);
        }
        if (HAS_FLAG(reg, (1<<EXI_CHAN_PARAM_TCINT))) {
            SET_FLAG(cause, OS_INTERRUPTMASK_EXI_0_TC);
        }
        if (HAS_FLAG(reg, (1<<EXI_CHAN_PARAM_EXTINT))) {
            SET_FLAG(cause, OS_INTERRUPTMASK_EXI_0_EXT);
        }

        reg = EXI_READ_REG(EXI_1_CHAN_PARAM);
        if (HAS_FLAG(reg, (1<<EXI_CHAN_PARAM_INT))) {
            SET_FLAG(cause, OS_INTERRUPTMASK_EXI_1_EXI);
        }
        if (HAS_FLAG(reg, (1<<EXI_CHAN_PARAM_TCINT))) {
            SET_FLAG(cause, OS_INTERRUPTMASK_EXI_1_TC);
        }
        if (HAS_FLAG(reg, (1<<EXI_CHAN_PARAM_EXTINT))) {
            SET_FLAG(cause, OS_INTERRUPTMASK_EXI_1_EXT);
        }

        reg = EXI_READ_REG(EXI_2_CHAN_PARAM);
        if (HAS_FLAG(reg, (1<<EXI_CHAN_PARAM_INT))) {
            SET_FLAG(cause, OS_INTERRUPTMASK_EXI_2_EXI);
        }
        if (HAS_FLAG(reg, (1<<EXI_CHAN_PARAM_TCINT))) {
            SET_FLAG(cause, OS_INTERRUPTMASK_EXI_2_TC);
        }
    }

    /* Processor Interface*/
    if (HAS_FLAG(instr, (1<<PI_INTERRUPT_HSP))) {
        SET_FLAG(cause, OS_INTERRUPTMASK_PI_HSP);
    }
    if (HAS_FLAG(instr, (1<<PI_INTERRUPT_DEBUG))) {
        SET_FLAG(cause, OS_INTERRUPTMASK_PI_DEBUG);
    }
    if (HAS_FLAG(instr, (1<<PI_INTERRUPT_PE_FINISH))) {
        SET_FLAG(cause, OS_INTERRUPTMASK_PI_PE_FINISH);
    }
    if (HAS_FLAG(instr, (1<<PI_INTERRUPT_PE_TOKEN))) {
        SET_FLAG(cause, OS_INTERRUPTMASK_PI_PE_TOKEN);
    }
    if (HAS_FLAG(instr, (1<<PI_INTERRUPT_VI))) {
        SET_FLAG(cause, OS_INTERRUPTMASK_PI_VI);
    }
    if (HAS_FLAG(instr, (1<<PI_INTERRUPT_SI))) {
        SET_FLAG(cause, OS_INTERRUPTMASK_PI_SI);
    }
    if (HAS_FLAG(instr, (1<<PI_INTERRUPT_DI))) {
        SET_FLAG(cause, OS_INTERRUPTMASK_PI_DI);
    }
    if (HAS_FLAG(instr, (1<<PI_INTERRUPT_RSW))) {
        SET_FLAG(cause, OS_INTERRUPTMASK_PI_RSW);
    }
    if (HAS_FLAG(instr, (1<<PI_INTERRUPT_CP))) {
        SET_FLAG(cause, OS_INTERRUPTMASK_PI_CP);
    }
    if (HAS_FLAG(instr, (1<<PI_INTERRUPT_ERROR))) {
        SET_FLAG(cause, OS_INTERRUPTMASK_PI_ERROR);
    }
    if (HAS_FLAG(instr, (1<<PI_INTERRUPT_ACR))) {
        SET_FLAG(cause, OS_INTERRUPTMASK_PI_ACR);
    }

    unmasked = cause & ~(*(u32*)OSPhysicalToCached(OS_ADDR_PREVIOUS_INTERRUPT) | *(u32*)OSPhysicalToCached(OS_ADDR_CURRENT_INTERRUPT));

    if (unmasked) {
        for (prio = InterruptPrioTable; ; ++prio) {
            if (unmasked & *prio) {
                interrupt = (__OSInterrupt)__cntlzw(unmasked & *prio);
                break;
            }
        }

        handler = __OSGetInterruptHandler(interrupt);

        if (handler) {
            if (interrupt > __OS_INTERRUPT_MEM_ADDRESS) {
                __OSLastInterrupt = interrupt;
                __OSLastInterruptTime = OSGetTime();
                __OSLastInterruptSrr0 = context->srr0;
            }

            OSDisableScheduler();
            handler(interrupt, context);
            OSEnableScheduler();
            __OSReschedule();
            OSLoadContext(context);
        }
    }

    OSLoadContext(context);
}

static asm void ExternalInterruptHandler(register __OSException exception, register OSContext* context) {
#ifdef __MWERKS__
    nofralloc
    
    stw     r0, context->gpr[0]
    stw     r1, context->gpr[1]
    stw     r2, context->gpr[2]
    stmw    r6, context->gpr[6]
    
    mfspr   r0, GQR1
    stw     r0, context->gqr[1]
    mfspr   r0, GQR2
    stw     r0, context->gqr[2]
    mfspr   r0, GQR3
    stw     r0, context->gqr[3]
    mfspr   r0, GQR4
    stw     r0, context->gqr[4]
    mfspr   r0, GQR5
    stw     r0, context->gqr[5]
    mfspr   r0, GQR6
    stw     r0, context->gqr[6]
    mfspr   r0, GQR7
    stw     r0, context->gqr[7]
    
    stwu    r1, -0x08(r1)
    b       __OSDispatchInterrupt
#endif // __MWERKS__
}
