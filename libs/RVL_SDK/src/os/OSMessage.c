#include <revolution/os.h>

void OSInitMessageQueue(OSMessageQueue* queue, OSMessage* msgArray, s32 msgCount) {
    OSInitThreadQueue(&queue->queueSend);
    OSInitThreadQueue(&queue->queueReceive);

    queue->msgArray = msgArray;
    queue->msgCount = msgCount;

    queue->firstIndex = 0;
    queue->usedCount = 0;
}

BOOL OSSendMessage(OSMessageQueue* queue, OSMessage msg, s32 flags) {
    BOOL enabled;
    s32 lastIndex;

    enabled = OSDisableInterrupts();
    while (queue->msgCount <= queue->usedCount) {
        if (!(flags & 1)) {
            OSRestoreInterrupts(enabled);
            return FALSE;
        }
        OSSleepThread(&queue->queueSend);
    }
    lastIndex = (queue->firstIndex + queue->usedCount) % queue->msgCount;
    ((u32*)queue->msgArray)[lastIndex] = (u32)msg;
    queue->usedCount++;

    OSWakeupThread(&queue->queueReceive);
    OSRestoreInterrupts(enabled);

    return TRUE;
}

BOOL OSReceiveMessage(OSMessageQueue* queue, OSMessage* msg, s32 flags) {
    BOOL enabled = OSDisableInterrupts();

    while (queue->usedCount == 0) {
        if (!(flags & 1)) {
            OSRestoreInterrupts(enabled);
            return FALSE;
        }
        OSSleepThread(&queue->queueReceive);
    }
    if (msg != NULL) {
       *(u32*)msg = ((u32*)queue->msgArray)[queue->firstIndex];
    }
    
    queue->firstIndex = (queue->firstIndex + 1) % queue->msgCount;
    queue->usedCount--;
    OSWakeupThread(&queue->queueSend);
    OSRestoreInterrupts(enabled);

    return TRUE;
}

BOOL OSJamMessage(OSMessageQueue* queue, OSMessage msg, s32 flags) {
    BOOL enabled = OSDisableInterrupts();

    while (queue->msgCount <= queue->usedCount) {
        if (!(flags & 1)) {
            OSRestoreInterrupts(enabled);
            return FALSE;
        }
        OSSleepThread(&queue->queueSend);
    }
    queue->firstIndex = (queue->firstIndex + queue->msgCount - 1) % queue->msgCount;
    ((u32*)queue->msgArray)[queue->firstIndex] = (u32)msg;
    queue->usedCount++;

    OSWakeupThread(&queue->queueReceive);
    OSRestoreInterrupts(enabled);

    return TRUE;
}
