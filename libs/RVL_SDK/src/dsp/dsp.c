#include <revolution/dsp.h>
#include <private/dsp.h>

#include <private/hollywood.h>

#include <revolution/os.h>
#include <private/os.h>

#include <revolution/verdefs.h>

static BOOL         __DSP_init_flag;

SDKDefineVersion(DSP, "Apr 20 2010", "11:19:06");

u32 DSPCheckMailToDSP() {
    return DSP_HAS_REG_F(DSP_MAILBOX, (1<<DSP_MAILBOX_SET)) != 0;
}

u32 DSPCheckMailFromDSP() {
    return DSP_HAS_REG_F(DSP_CPUMAILBOX, (1<<DSP_CPUMAILBOX_SET)) != 0;
}

u32 DSPReadMailFromDSP() {
    return (DSP_READ_REG(DSP_CPUMAILBOX_H) << 16) | DSP_READ_REG(DSP_CPUMAILBOX_L);
}

void DSPSendMailToDSP(u32 mail) {
    DSP_WRITE_REG(DSP_MAILBOX_H, (mail >> 16) & 0xFFFF);
    DSP_WRITE_REG(DSP_MAILBOX_L, (mail)       & 0xFFFF);
}

void DSPAssertInt() {
    BOOL old;
    u16 tmp;

    old = OSDisableInterrupts();

    tmp = DSP_READ_REG(DSP_CONTROL_STATUS);
    CLEAR_FLAG(tmp, 0xA8);
    SET_FLAG(tmp, 2);
    DSP_WRITE_REG(DSP_CONTROL_STATUS, tmp);

    OSRestoreInterrupts(old);
}

void DSPInit() {
    BOOL old;
    u16 tmp;

    __DSP_debug_printf("DSPInit(): Build Date: %s %s\n", "Apr 20 2010", "11:19:06");

    if (__DSP_init_flag == TRUE) {
        return;
    }

    OSRegisterVersion(GetVersion(DSP));

    old = OSDisableInterrupts();
    __OSSetInterruptHandler(__OS_INTERRUPT_DSP_DSP, __DSPHandler);
    __OSUnmaskInterrupts(OS_INTERRUPTMASK_DSP_DSP);

    // Reset DSP
    tmp = DSP_READ_REG(DSP_CONTROL_STATUS);
    CLEAR_FLAG(tmp, ((1<<DSP_CONTROL_STATUS_AIDINT) | (1<<DSP_CONTROL_STATUS_ARINT) | (1<<DSP_CONTROL_STATUS_DSPINT)));
    SET_FLAG(tmp, (1<<DSP_CONTROL_STATUS_RESET));
    DSP_WRITE_REG(DSP_CONTROL_STATUS, tmp);

    tmp = DSP_READ_REG(DSP_CONTROL_STATUS);
    CLEAR_FLAG(tmp, ((1<<DSP_CONTROL_STATUS_AIDINT) | (1<<DSP_CONTROL_STATUS_ARINT) | (1<<DSP_CONTROL_STATUS_DSPINT)) | (1<<DSP_CONTROL_STATUS_HALT));
    DSP_WRITE_REG(DSP_CONTROL_STATUS, tmp);

    __DSP_first_task = __DSP_last_task = __DSP_curr_task = __DSP_tmp_task = NULL;

    __DSP_init_flag = TRUE;

    OSRestoreInterrupts(old);
}

BOOL DSPCheckInit() {
    return __DSP_init_flag;
}

DSPTaskInfo* DSPAddTask(DSPTaskInfo* task) {
    BOOL old;

    old = OSDisableInterrupts();

    __DSP_insert_task(task);
    task->state = 0;
    task->flags = DSP_TASK_ACTIVE;

    OSRestoreInterrupts(old);
    if (task == __DSP_first_task) {
        __DSP_boot_task(task);
    }
    return task;
}

DSPTaskInfo* DSPAssertTask(DSPTaskInfo* task) {
    s32 old;

    old = OSDisableInterrupts();

    if (__DSP_curr_task == task) {
        __DSP_rude_task = task;
        __DSP_rude_task_pending = TRUE;
        OSRestoreInterrupts(old);
        return task;
    }

    if (task->priority < __DSP_curr_task->priority) {
        __DSP_rude_task = task;
        __DSP_rude_task_pending = TRUE;
        if (__DSP_curr_task->state == 1) {
            DSPAssertInt();
        }
        OSRestoreInterrupts(old);
        return task;
    }

    OSRestoreInterrupts(old);
    return NULL;
}
