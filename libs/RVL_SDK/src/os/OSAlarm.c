#include <revolution/os.h>
#include <private/os.h>

#include <private/dvd.h>

#include <revolution/base/PPCArch.h>

static BOOL OnReset(BOOL final, u32 event);
static void DecrementerExceptionHandler(u8 type, OSContext* context);

static OSAlarmQueue AlarmQueue;
static OSShutdownFunctionInfo ShutdownFunctionInfo = {OnReset, (u32)-1, 0, 0};

static void SetTimer(const OSAlarm* alarm) {
    OSTime timeLeft = alarm->fire - __OSGetSystemTime();

    if (timeLeft < 0) {
        PPCMtdec(0);
    }
    else if (timeLeft < 0x80000000) {
        PPCMtdec(timeLeft);
    }
    else {
        PPCMtdec(0x7FFFFFFF);
    }
}

void __OSInitAlarm() {
    if (__OSGetExceptionHandler(OS_EXCEPTION_DECREMENTER) != DecrementerExceptionHandler) {
        AlarmQueue.head = AlarmQueue.tail = NULL;

        __OSSetExceptionHandler(OS_EXCEPTION_DECREMENTER, DecrementerExceptionHandler);
        OSRegisterShutdownFunction(&ShutdownFunctionInfo);
    }
}

void OSCreateAlarm(OSAlarm* alarm) {
    alarm->handler = NULL;
    alarm->tag = 0;
}

static void InsertAlarm(OSAlarm* alarm, OSTime end, OSAlarmHandler handler) {
    OSAlarm* iter;
    OSAlarm* prev;

    // Calculate periodic alarm end time (caller makes 'end' 0)
    if (alarm->period > 0) {
        OSTime time = __OSGetSystemTime();
        end = alarm->start;

        if (alarm->start < time) {
            OSTime periodLeft = ((time - alarm->start) / alarm->period);
            end += alarm->period * (periodLeft + 1);
        }
    }

    alarm->handler = handler;
    alarm->fire = end;

    // Find position to insert alarm (sorted ascending by end time)
    for (iter = AlarmQueue.head; iter != NULL; iter = iter->next) {
        if (iter->fire <= end) {
            continue;
        }

        alarm->prev = iter->prev;
        iter->prev = alarm;
        alarm->next = iter;

        prev = alarm->prev;
        if (prev != NULL) {
            prev->next = alarm;
        }
        else {
            AlarmQueue.head = alarm;
            SetTimer(alarm);
        }

        return;
    }

    alarm->next = NULL;
    prev = AlarmQueue.tail;
    AlarmQueue.tail = alarm;
    alarm->prev = prev;

    if (prev != NULL) {
        prev->next = alarm;
    }
    else {
        AlarmQueue.tail = alarm;
        AlarmQueue.head = alarm;
        SetTimer(alarm);
    }
}

void OSSetAlarm(OSAlarm* alarm, OSTime start, OSAlarmHandler handler) {
    BOOL enabled = OSDisableInterrupts();

    alarm->period = 0;
    InsertAlarm(alarm, __OSGetSystemTime() + start, handler);

    OSRestoreInterrupts(enabled);
}

void OSSetPeriodicAlarm(OSAlarm* alarm, OSTime start, OSTime period, OSAlarmHandler handler) {
    BOOL enabled = OSDisableInterrupts();

    alarm->period = period;
    alarm->start = __OSTimeToSystemTime(start);
    InsertAlarm(alarm, 0, handler);

    OSRestoreInterrupts(enabled);
}

void OSCancelAlarm(OSAlarm* alarm) {
    OSAlarm* next;

    BOOL enabled = OSDisableInterrupts();

    if (alarm->handler == NULL) {
        OSRestoreInterrupts(enabled);
        return;
    }

    next = alarm->next;
    if (next == NULL) {
        AlarmQueue.tail = alarm->prev;
    }
    else {
        next->prev = alarm->prev;
    }

    if (alarm->prev != NULL) {
        alarm->prev->next = next;
    }
    else {
        AlarmQueue.head = next;
        if (next != NULL) {
            SetTimer(next);
        }
    }

    alarm->handler = NULL;

    OSRestoreInterrupts(enabled);
}

static void DecrementerExceptionCallback(__OSException type, OSContext* context) {
#pragma unused(type)
    OSAlarmHandler handler;
    OSContext tempCtx;
    OSAlarm* alarm;
    OSAlarm* next;

    s64 time = __OSGetSystemTime();
    alarm = AlarmQueue.head;

    if (alarm == NULL) {
        OSLoadContext(context);
    }

    if (time < alarm->fire) {
        SetTimer(alarm);
        OSLoadContext(context);
    }

    next = alarm->next;
    AlarmQueue.head = next;
    if (next == NULL) {
        AlarmQueue.tail = NULL;
    }
    else {
        next->prev = NULL;
    }

    handler = alarm->handler;
    alarm->handler = NULL;

    if (alarm->period > 0) {
        InsertAlarm(alarm, 0, handler);
    }

    if (AlarmQueue.head != NULL) {
        SetTimer(AlarmQueue.head);
    }

    OSDisableScheduler();
    OSClearContext(&tempCtx);
    OSSetCurrentContext(&tempCtx);

    handler(alarm, context);
    OSClearContext(&tempCtx);
    OSSetCurrentContext(context);
    OSEnableScheduler();

    __OSReschedule();
    OSLoadContext(context);
}

static asm void DecrementerExceptionHandler(register __OSException exception, register OSContext* context) {
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
    b       DecrementerExceptionCallback
#endif // __MWERKS__
}

void OSSetAlarmTag(OSAlarm* alarm, u32 tag) {
    alarm->tag = tag;
}

static BOOL OnReset(BOOL final, u32 event) {
    OSAlarm* iter;
    OSAlarm* next;

    if (final) {
        iter = AlarmQueue.head;
        next = (iter != NULL) ? iter->next : NULL;

        while (iter != NULL) {
            if (!__DVDTestAlarm(iter)) {
                OSCancelAlarm(iter);
            }

            iter = next;
            next = (next != NULL) ? next->next : NULL;
        }
    }

    return TRUE;
}

void OSSetAlarmUserData(OSAlarm* alarm, void* userData) {
    alarm->userData = userData;
}

void* OSGetAlarmUserData(OSAlarm* alarm) {
    return alarm->userData;
}
