#ifndef REVOLUTION_DSP_H
#define REVOLUTION_DSP_H

#include <revolution/types.h>
#include <revolution/os/OSTime.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef void (*DSPCallback)(void*);
typedef struct STRUCT_DSP_TASK DSPTaskInfo;

struct STRUCT_DSP_TASK {                                   
    vu32            state;              // 0x00
    vu32            priority;           // 0x04
    vu32            flags;              // 0x08

    u16*            iram_mmem_addr;     // 0x0C
    u32             iram_length;        // 0x10
    u32             iram_addr;          // 0x14

    u16*            dram_mmem_addr;     // 0x18
    u32             dram_length;        // 0x1C
    u32             dram_addr;          // 0x20

    u16             dsp_init_vector;    // 0x24
    u16             dsp_resume_vector;  // 0x26

    DSPCallback     init_cb;            // 0x28
    DSPCallback     res_cb;             // 0x2C
    DSPCallback     done_cb;            // 0x30
    DSPCallback     req_cb;             // 0x34

    DSPTaskInfo*    next;               // 0x38
    DSPTaskInfo*    prev;               // 0x3C 

    OSTime          t_context;          // 0x40
    OSTime          t_task;             // 0x48
};

enum {
    DSP_TASK_ACTIVE = (1 << 0),
    DSP_TASK_CANCELED = (1 << 1),
};

u32             DSPCheckMailToDSP();
u32             DSPCheckMailFromDSP();
u32             DSPReadMailFromDSP();
void            DSPSendMailToDSP(u32 mail);

void            DSPInit();
BOOL            DSPCheckInit();

DSPTaskInfo*    DSPAddTask(DSPTaskInfo* task);
DSPTaskInfo*    DSPCancelTask(DSPTaskInfo* task);
DSPTaskInfo*    DSPAssertTask(DSPTaskInfo* task);

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_DSP_H
