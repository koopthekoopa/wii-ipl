#include <revolution/os.h>

void OSInitSemaphore(OSSemaphore* sem, s32 count) {
    BOOL enabled = OSDisableInterrupts();

    OSInitThreadQueue(&sem->queue);
    sem->count = count;

    OSRestoreInterrupts(enabled);
}

s32 OSWaitSemaphore(OSSemaphore* sem) {
    BOOL enabled = OSDisableInterrupts();
    s32 count;

    while ((count = ((volatile OSSemaphore*)sem)->count) <= 0) {
        OSSleepThread(&sem->queue);
    }
    sem->count--;

    OSRestoreInterrupts(enabled);

    return count;
}

s32 OSSignalSemaphore(OSSemaphore* sem) {
    BOOL enabled = OSDisableInterrupts();
    s32 count;

    count = sem->count;
    sem->count++;

    OSWakeupThread(&sem->queue);

    OSRestoreInterrupts(enabled);

    return count;
}
