#include <revolution/dsp.h>
#include <private/dsp.h>

#include <private/hollywood.h>

#include <revolution/os.h>
#include <private/os.h>

enum {
    MAIL_SET_IRAM_MMEM_ADDR = 0x80F3A001,
    MAIL_SET_IRAM_DSP_ADDR  = 0x80F3C002,
    MAIL_SET_IRAM_LENGTH    = 0x80F3A002,
    MAIL_SET_ARAM_MMEM_ADDR = 0x80F3B002,
    MAIL_SET_START_VECTOR   = 0x80F3D001
};

/* from Dolphin Emulator */
enum {
    TASK_MAIL_MASK      = 0xFFFF0000,
    TASK_MAIL_TO_CPU    = 0xDCD10000,
    TASK_MAIL_TO_DSP    = 0xCDD10000,

    DSP_INIT            = (TASK_MAIL_TO_CPU | 0x0000),
    DSP_RESUME          = (TASK_MAIL_TO_CPU | 0x0001),
    DSP_YIELD           = (TASK_MAIL_TO_CPU | 0x0002),
    DSP_DONE            = (TASK_MAIL_TO_CPU | 0x0003),
    DSP_SYNC            = (TASK_MAIL_TO_CPU | 0x0004),
    DSP_FRAME_END       = (TASK_MAIL_TO_CPU | 0x0005),

    MAIL_RESUME         = (TASK_MAIL_TO_DSP | 0x0000),
    MAIL_NEW_UCODE      = (TASK_MAIL_TO_DSP | 0x0001),
    MAIL_RESET          = (TASK_MAIL_TO_DSP | 0x0002),
    MAIL_CONTINUE       = (TASK_MAIL_TO_DSP | 0x0003)
};

DSPTaskInfo*    __DSP_curr_task;

DSPTaskInfo*    __DSP_first_task;
DSPTaskInfo*    __DSP_last_task;

DSPTaskInfo*    __DSP_tmp_task;

DSPTaskInfo*    __DSP_rude_task;
BOOL            __DSP_rude_task_pending;

#define DSP_SEND_MAIL_TO_DSP(mail) {    \
    DSPSendMailToDSP(mail);             \
    while (DSPCheckMailToDSP()) {}      \
}

void __DSPHandler(__OSInterrupt intr, OSContext* context) {
    OSContext   exceptionContext;
    u16         tmp;
    u32         mail;

    tmp = DSP_READ_REG(DSP_CONTROL_STATUS);
    CLEAR_FLAG(tmp, ((1<<DSP_CONTROL_STATUS_AIDINT) | (1<<DSP_CONTROL_STATUS_ARINT)));
    SET_FLAG(tmp, (1<<DSP_CONTROL_STATUS_DSPINT));
    DSP_WRITE_REG(DSP_CONTROL_STATUS, tmp);

    OSClearContext(&exceptionContext);
    OSSetCurrentContext(&exceptionContext);

    while (!DSPCheckMailFromDSP()) {}

    mail = DSPReadMailFromDSP();
    if ((__DSP_curr_task->flags & DSP_TASK_CANCELED) && mail == DSP_YIELD) {
        mail = DSP_DONE;
    }

    switch (mail) {
        case DSP_INIT: {
            __DSP_curr_task->state = 1;
            if (__DSP_curr_task->init_cb != NULL) {
                __DSP_curr_task->init_cb(__DSP_curr_task);
            }
            break;
        }
        case DSP_RESUME: {
            __DSP_curr_task->state = 1;
            if (__DSP_curr_task->res_cb != NULL) {
                __DSP_curr_task->res_cb(__DSP_curr_task);
            }
            break;
        }
        case DSP_YIELD: {
            if (__DSP_rude_task_pending) {
                if (__DSP_curr_task == __DSP_rude_task) {
                    DSP_SEND_MAIL_TO_DSP(MAIL_CONTINUE);

                    __DSP_rude_task = NULL;
                    __DSP_rude_task_pending = FALSE;

                    if (__DSP_curr_task->res_cb != NULL) {
                        __DSP_curr_task->res_cb(__DSP_curr_task);
                    }
                }
                else {
                    DSP_SEND_MAIL_TO_DSP(MAIL_NEW_UCODE);

                    __DSP_exec_task(__DSP_curr_task, __DSP_rude_task);
                    __DSP_curr_task->state = 2;
                    __DSP_curr_task = __DSP_rude_task;
                    __DSP_rude_task = NULL;
                    __DSP_rude_task_pending = FALSE;
                }
            }
            else {
                if (__DSP_curr_task->next == NULL) {
                    if (__DSP_curr_task == __DSP_first_task) {
                        DSP_SEND_MAIL_TO_DSP(MAIL_CONTINUE);

                        if (__DSP_curr_task->res_cb != NULL) {
                            __DSP_curr_task->res_cb(__DSP_curr_task);
                        }
                    }
                    else {
                        DSP_SEND_MAIL_TO_DSP(MAIL_NEW_UCODE);

                        __DSP_exec_task(__DSP_curr_task, __DSP_first_task);
                        __DSP_curr_task->state = 2;
                        __DSP_curr_task = __DSP_first_task;
                    }
                }
                else {
                    DSP_SEND_MAIL_TO_DSP(MAIL_NEW_UCODE);

                    __DSP_exec_task(__DSP_curr_task, __DSP_curr_task->next);
                    __DSP_curr_task->state = 2;
                    __DSP_curr_task = __DSP_curr_task->next;
                }
            }
            break;
        }
        case 0xDCD10003: {
            if (__DSP_rude_task_pending) {
                if (__DSP_curr_task != __DSP_rude_task) {
                    if (__DSP_curr_task->done_cb != NULL) {
                        __DSP_curr_task->done_cb(__DSP_curr_task);
                    }

                    DSP_SEND_MAIL_TO_DSP(MAIL_NEW_UCODE);

                    __DSP_exec_task(NULL, __DSP_rude_task);
                    __DSP_remove_task(__DSP_curr_task);
                    __DSP_curr_task = __DSP_rude_task;
                    __DSP_rude_task = NULL;
                    __DSP_rude_task_pending = FALSE;

                    break;
                }
                __DSP_rude_task = NULL;
                __DSP_rude_task_pending = FALSE;
            }
            if (__DSP_curr_task->next == NULL) {
                if (__DSP_curr_task == __DSP_first_task) {
                    if (__DSP_curr_task->done_cb != NULL) {
                        __DSP_curr_task->done_cb(__DSP_curr_task);
                    }

                    DSP_SEND_MAIL_TO_DSP(MAIL_RESET);

                    __DSP_curr_task->state = 3;
                    __DSP_remove_task(__DSP_curr_task);
                }
                else {
                    if (__DSP_curr_task->done_cb != NULL) {
                        __DSP_curr_task->done_cb(__DSP_curr_task);
                    }

                    DSP_SEND_MAIL_TO_DSP(MAIL_NEW_UCODE);

                    __DSP_curr_task->state = 3;
                    __DSP_exec_task(NULL, __DSP_first_task);
                    __DSP_curr_task = __DSP_first_task;
                    __DSP_remove_task(__DSP_last_task);
                }
            }
            else {
                if (__DSP_curr_task->done_cb != NULL) {
                    __DSP_curr_task->done_cb(__DSP_curr_task);
                }

                DSP_SEND_MAIL_TO_DSP(MAIL_NEW_UCODE);

                __DSP_curr_task->state = 3;
                __DSP_exec_task(NULL, __DSP_curr_task->next);
                __DSP_curr_task = __DSP_curr_task->next;
                __DSP_remove_task(__DSP_curr_task->prev);
            }
            break;
        }
        case DSP_SYNC: {
            if (__DSP_curr_task->req_cb != NULL) {
                __DSP_curr_task->req_cb(__DSP_curr_task);
            }
            break;
        }
        default: {
            break;
        }
    }

    OSClearContext(&exceptionContext);
    OSSetCurrentContext(context);
}

void __DSP_exec_task(DSPTaskInfo* curr, DSPTaskInfo* next) {

    if (curr != NULL) {
        DSP_SEND_MAIL_TO_DSP((u32)curr->dram_mmem_addr);
        DSP_SEND_MAIL_TO_DSP(curr->dram_length);
        DSP_SEND_MAIL_TO_DSP(curr->dram_addr);
    }
    else {
        DSP_SEND_MAIL_TO_DSP(0);
        DSP_SEND_MAIL_TO_DSP(0);
        DSP_SEND_MAIL_TO_DSP(0);
    }

    DSP_SEND_MAIL_TO_DSP((u32)next->iram_mmem_addr);
    DSP_SEND_MAIL_TO_DSP(next->iram_length);
    DSP_SEND_MAIL_TO_DSP(next->iram_addr);

    if (next->state == 0) {
        DSP_SEND_MAIL_TO_DSP(next->dsp_init_vector);
        DSP_SEND_MAIL_TO_DSP(0);
        DSP_SEND_MAIL_TO_DSP(0);
        DSP_SEND_MAIL_TO_DSP(0);
    }
    else {
        DSP_SEND_MAIL_TO_DSP(next->dsp_resume_vector);
        DSP_SEND_MAIL_TO_DSP((u32)next->dram_mmem_addr);
        DSP_SEND_MAIL_TO_DSP(next->dram_length);
        DSP_SEND_MAIL_TO_DSP(next->dram_addr);
    }
}

void __DSP_boot_task(DSPTaskInfo* task) {
    volatile u32 mail;

    while (DSPCheckMailFromDSP() == 0) {}

    mail = DSPReadMailFromDSP();

    DSP_SEND_MAIL_TO_DSP(MAIL_SET_IRAM_MMEM_ADDR);
    DSP_SEND_MAIL_TO_DSP((u32)task->iram_mmem_addr);

    DSP_SEND_MAIL_TO_DSP(MAIL_SET_IRAM_DSP_ADDR);
    DSP_SEND_MAIL_TO_DSP(task->iram_addr & 0xFFFF);

    DSP_SEND_MAIL_TO_DSP(MAIL_SET_IRAM_LENGTH);
    DSP_SEND_MAIL_TO_DSP(task->iram_length);

    DSP_SEND_MAIL_TO_DSP(MAIL_SET_ARAM_MMEM_ADDR);
    DSP_SEND_MAIL_TO_DSP(0);

    DSP_SEND_MAIL_TO_DSP(MAIL_SET_START_VECTOR);
    DSP_SEND_MAIL_TO_DSP(task->dsp_init_vector);

    __DSP_debug_printf("DSP is booting task: 0x%08X\n", (u32)task);
    __DSP_debug_printf("__DSP_boot_task()  : IRAM MMEM ADDR: 0x%08X\n", (u32)task->iram_mmem_addr);
    __DSP_debug_printf("__DSP_boot_task()  : IRAM DSP ADDR : 0x%08X\n", task->iram_addr);
    __DSP_debug_printf("__DSP_boot_task()  : IRAM LENGTH   : 0x%08X\n", task->iram_length);
    __DSP_debug_printf("__DSP_boot_task()  : DRAM MMEM ADDR: 0x%08X\n", task->dram_length);
    __DSP_debug_printf("__DSP_boot_task()  : Start Vector  : 0x%08X\n", task->dsp_init_vector);
}

void __DSP_insert_task(DSPTaskInfo* task) {
    DSPTaskInfo* temp;

    if (__DSP_first_task == NULL) {
        __DSP_curr_task = task;
        __DSP_first_task = __DSP_last_task = task;

        task->next = task->prev = NULL;
        return;
    }

    temp = __DSP_first_task;
    while (temp != NULL) {
        if (task->priority < temp->priority) {
            task->prev = temp->prev;
            temp->prev = task;
            task->next = temp;
            if (task->prev == NULL) {
                __DSP_first_task = task;
            }
            else {
                task->prev->next = task;
            }
            break;
        }
        temp = temp->next;
    }

    if (temp == NULL) {
        __DSP_last_task->next = task;
        task->next = NULL;
        task->prev = __DSP_last_task;
        __DSP_last_task = task;
    }
}

void __DSP_add_task(DSPTaskInfo* task) {
    if (__DSP_last_task == NULL) {
        __DSP_curr_task = task;
        __DSP_last_task = task;
        __DSP_first_task = task;
        task->next = task->prev = NULL;
    }
    else {
        __DSP_last_task->next = task;
        task->next = NULL;
        task->prev = __DSP_last_task;
        __DSP_last_task = task;
    }

    task->state = 0;

    __DSP_debug_printf("__DSP_add_task() : Added task    : 0x%08X\n", (u32)task);
}

void __DSP_remove_task(DSPTaskInfo* task) {
    task->flags = 0;
    task->state = 3;

    if (__DSP_first_task == task) {
        if (task->next != NULL) {
            __DSP_first_task = task->next;
            task->next->prev = NULL;
        }
        else {
            __DSP_first_task = __DSP_last_task = __DSP_curr_task = NULL;
        }
        return;
    }

    if (__DSP_last_task == task) {
        __DSP_last_task = task->prev;
        task->prev->next = NULL;
        __DSP_curr_task = __DSP_first_task;
        return;
    }

    __DSP_curr_task = task->next;

    task->prev->next = task->next;
    task->next->prev = task->prev;
}
