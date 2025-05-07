#ifndef PRIVATE_DSP_H
#define PRIVATE_DSP_H

#include <revolution/dsp.h>
#include <private/os/OSInterrupt.h>

#ifdef __cplusplus
extern "C" {
#endif

extern DSPTaskInfo* __DSP_rude_task;
extern BOOL         __DSP_rude_task_pending;

extern DSPTaskInfo* __DSP_first_task;
extern DSPTaskInfo* __DSP_last_task;
extern DSPTaskInfo* __DSP_curr_task;
extern DSPTaskInfo* __DSP_tmp_task;

void __DSP_debug_printf(const char* format, ...);

void __DSPHandler(__OSInterrupt intr, OSContext* context);
void __DSP_exec_task(DSPTaskInfo* curr, DSPTaskInfo* next);
void __DSP_boot_task(DSPTaskInfo* task);
void __DSP_insert_task(DSPTaskInfo* task);
void __DSP_add_task(DSPTaskInfo* task);
void __DSP_remove_task(DSPTaskInfo* task);

#ifdef __cplusplus
}
#endif

#endif // PRIVATE_DSP_H
