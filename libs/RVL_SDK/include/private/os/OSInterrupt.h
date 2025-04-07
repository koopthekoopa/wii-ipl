

#ifndef PRIVATE_OS_INTERRUPT_H
#define PRIVATE_OS_INTERRUPT_H

#include <decomp.h>

#include <revolution/types.h>
#include <revolution/os/OSContext.h>
#include <revolution/os/OSException.h>
#include <revolution/os/OSTime.h>

#ifdef __cplusplus
extern "C" {
#endif

enum {
    __OS_INTERRUPT_MEM_0 = 0,
    __OS_INTERRUPT_MEM_1,
    __OS_INTERRUPT_MEM_2,
    __OS_INTERRUPT_MEM_3,
    __OS_INTERRUPT_MEM_ADDRESS,
    __OS_INTERRUPT_DSP_AI,
    __OS_INTERRUPT_DSP_ARAM,
    __OS_INTERRUPT_DSP_DSP,
    __OS_INTERRUPT_AI_AI,
    __OS_INTERRUPT_EXI_0_EXI,
    __OS_INTERRUPT_EXI_0_TC,
    __OS_INTERRUPT_EXI_0_EXT,
    __OS_INTERRUPT_EXI_1_EXI,
    __OS_INTERRUPT_EXI_1_TC,
    __OS_INTERRUPT_EXI_1_EXT,
    __OS_INTERRUPT_EXI_2_EXI,
    __OS_INTERRUPT_EXI_2_TC,
    __OS_INTERRUPT_PI_CP,
    __OS_INTERRUPT_PI_PE_TOKEN,
    __OS_INTERRUPT_PI_PE_FINISH,
    __OS_INTERRUPT_PI_SI,
    __OS_INTERRUPT_PI_DI,
    __OS_INTERRUPT_PI_RSW,
    __OS_INTERRUPT_PI_ERROR,
    __OS_INTERRUPT_PI_VI,
    __OS_INTERRUPT_PI_DEBUG,
    __OS_INTERRUPT_PI_HSP,
    __OS_INTERRUPT_PI_ACR,

    __OS_INTERRUPT_MAX = 32
};

#define OS_INTERRUPTMASK(intr)          (1 << (31 - intr))

/* Memory Interface */

#define OS_INTERRUPTMASK_MEM_0          OS_INTERRUPTMASK(__OS_INTERRUPT_MEM_0)
#define OS_INTERRUPTMASK_MEM_1          OS_INTERRUPTMASK(__OS_INTERRUPT_MEM_1)
#define OS_INTERRUPTMASK_MEM_2          OS_INTERRUPTMASK(__OS_INTERRUPT_MEM_2)
#define OS_INTERRUPTMASK_MEM_3          OS_INTERRUPTMASK(__OS_INTERRUPT_MEM_3)
#define OS_INTERRUPTMASK_MEM_ADDRESS    OS_INTERRUPTMASK(__OS_INTERRUPT_MEM_ADDRESS)

#define OS_INTERRUPTMASK_MEM_RESET      (OS_INTERRUPTMASK_MEM_0 | \
                                        OS_INTERRUPTMASK_MEM_1 | \
                                        OS_INTERRUPTMASK_MEM_2 | \
                                        OS_INTERRUPTMASK_MEM_3)
#define OS_INTERRUPTMASK_MEM            (OS_INTERRUPTMASK_MEM_0 | \
                                        OS_INTERRUPTMASK_MEM_1 | \
                                        OS_INTERRUPTMASK_MEM_2 | \
                                        OS_INTERRUPTMASK_MEM_3 | \
                                        OS_INTERRUPTMASK_MEM_ADDRESS)

/* DSP */

#define OS_INTERRUPTMASK_DSP_AI         OS_INTERRUPTMASK(__OS_INTERRUPT_DSP_AI)
#define OS_INTERRUPTMASK_DSP_ARAM       OS_INTERRUPTMASK(__OS_INTERRUPT_DSP_ARAM)
#define OS_INTERRUPTMASK_DSP_DSP        OS_INTERRUPTMASK(__OS_INTERRUPT_DSP_DSP)

#define OS_INTERRUPTMASK_DSP            (OS_INTERRUPTMASK_DSP_AI | \
                                        OS_INTERRUPTMASK_DSP_ARAM | \
                                        OS_INTERRUPTMASK_DSP_DSP)

/* Audio Interface */

#define OS_INTERRUPTMASK_AI_AI          OS_INTERRUPTMASK(__OS_INTERRUPT_AI_AI)

#define OS_INTERRUPTMASK_AI             (OS_INTERRUPTMASK_AI_AI)

/* External interface */

#define OS_INTERRUPTMASK_EXI_0_EXI      OS_INTERRUPTMASK(__OS_INTERRUPT_EXI_0_EXI)
#define OS_INTERRUPTMASK_EXI_0_TC       OS_INTERRUPTMASK(__OS_INTERRUPT_EXI_0_TC)
#define OS_INTERRUPTMASK_EXI_0_EXT      OS_INTERRUPTMASK(__OS_INTERRUPT_EXI_0_EXT)

#define OS_INTERRUPTMASK_EXI_0          (OS_INTERRUPTMASK_EXI_0_EXI | \
                                        OS_INTERRUPTMASK_EXI_0_TC | \
                                        OS_INTERRUPTMASK_EXI_0_EXT)

#define OS_INTERRUPTMASK_EXI_1_EXI      OS_INTERRUPTMASK(__OS_INTERRUPT_EXI_1_EXI)
#define OS_INTERRUPTMASK_EXI_1_TC       OS_INTERRUPTMASK(__OS_INTERRUPT_EXI_1_TC)
#define OS_INTERRUPTMASK_EXI_1_EXT      OS_INTERRUPTMASK(__OS_INTERRUPT_EXI_1_EXT)

#define OS_INTERRUPTMASK_EXI_1          (OS_INTERRUPTMASK_EXI_1_EXI | \
                                        OS_INTERRUPTMASK_EXI_1_TC | \
                                        OS_INTERRUPTMASK_EXI_1_EXT)

#define OS_INTERRUPTMASK_EXI_2_EXI      OS_INTERRUPTMASK(__OS_INTERRUPT_EXI_2_EXI)
#define OS_INTERRUPTMASK_EXI_2_TC       OS_INTERRUPTMASK(__OS_INTERRUPT_EXI_2_TC)
#define OS_INTERRUPTMASK_EXI_2          (OS_INTERRUPTMASK_EXI_2_EXI | \
                                        OS_INTERRUPTMASK_EXI_2_TC)

#define OS_INTERRUPTMASK_EXI            (OS_INTERRUPTMASK_EXI_0_EXI | \
                                        OS_INTERRUPTMASK_EXI_0_TC | \
                                        OS_INTERRUPTMASK_EXI_0_EXT |  \
                                        OS_INTERRUPTMASK_EXI_1_EXI |  \
                                        OS_INTERRUPTMASK_EXI_1_TC |  \
                                        OS_INTERRUPTMASK_EXI_1_EXT |  \
                                        OS_INTERRUPTMASK_EXI_2_EXI |  \
                                        OS_INTERRUPTMASK_EXI_2_TC)

/* Processor interface */

#define OS_INTERRUPTMASK_PI_PE_TOKEN    OS_INTERRUPTMASK(__OS_INTERRUPT_PI_PE_TOKEN)
#define OS_INTERRUPTMASK_PI_PE_FINISH   OS_INTERRUPTMASK(__OS_INTERRUPT_PI_PE_FINISH)

#define OS_INTERRUPTMASK_PI_PE          (OS_INTERRUPTMASK_PI_PE_TOKEN | \
                                        OS_INTERRUPTMASK_PI_PE_FINISH)

#define OS_INTERRUPTMASK_PI_CP          OS_INTERRUPTMASK(__OS_INTERRUPT_PI_CP)
#define OS_INTERRUPTMASK_PI_SI          OS_INTERRUPTMASK(__OS_INTERRUPT_PI_SI)
#define OS_INTERRUPTMASK_PI_DI          OS_INTERRUPTMASK(__OS_INTERRUPT_PI_DI)
#define OS_INTERRUPTMASK_PI_RSW         OS_INTERRUPTMASK(__OS_INTERRUPT_PI_RSW)
#define OS_INTERRUPTMASK_PI_ERROR       OS_INTERRUPTMASK(__OS_INTERRUPT_PI_ERROR)
#define OS_INTERRUPTMASK_PI_VI          OS_INTERRUPTMASK(__OS_INTERRUPT_PI_VI)
#define OS_INTERRUPTMASK_PI_DEBUG       OS_INTERRUPTMASK(__OS_INTERRUPT_PI_DEBUG)
#define OS_INTERRUPTMASK_PI_HSP         OS_INTERRUPTMASK(__OS_INTERRUPT_PI_HSP)
#define OS_INTERRUPTMASK_PI_ACR         OS_INTERRUPTMASK(__OS_INTERRUPT_PI_ACR)

#define OS_INTERRUPTMASK_PI             (OS_INTERRUPTMASK_PI_CP |  \
                                        OS_INTERRUPTMASK_PI_SI |  \
                                        OS_INTERRUPTMASK_PI_DI |  \
                                        OS_INTERRUPTMASK_PI_RSW |  \
                                        OS_INTERRUPTMASK_PI_ERROR | \
                                        OS_INTERRUPTMASK_PI_VI | \
                                        OS_INTERRUPTMASK_PI_PE_TOKEN | \
                                        OS_INTERRUPTMASK_PI_PE_FINISH | \
                                        OS_INTERRUPTMASK_PI_DEBUG | \
                                        OS_INTERRUPTMASK_PI_HSP | \
                                        OS_INTERRUPTMASK_PI_ACR)
#define OS_INTERRUPTMASK_INVALID        0xFFFFFFFF

typedef u32  OSInterruptMask;
typedef s16 __OSInterrupt;

extern volatile OSTime          __OSLastInterruptTime;
extern volatile __OSInterrupt   __OSLastInterrupt;
extern volatile OSInterruptMask __OSLastInterruptSrr0;

typedef void (*__OSInterruptHandler)(__OSInterrupt interrupt, OSContext* context);

__OSInterruptHandler    __OSSetInterruptHandler(__OSInterrupt interrupt, __OSInterruptHandler handler);

__OSInterruptHandler    __OSGetInterruptHandler(__OSInterrupt interrupt);

void                    __OSDispatchInterrupt(__OSException exception, OSContext* context);

OSInterruptMask         __OSMaskInterrupts(OSInterruptMask mask);
OSInterruptMask         __OSUnmaskInterrupts(OSInterruptMask mask);

extern void __RAS_OSDisableInterrupts_begin();
extern void __RAS_OSDisableInterrupts_end();

#ifdef __cplusplus
}
#endif

#endif // PRIVATE_OS_INTERRUPT_H
