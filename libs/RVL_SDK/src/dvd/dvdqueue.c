#include <revolution/dvd.h>
#include <private/dvd.h>

#include <revolution/os.h>

typedef struct Queue {
    DVDCommandBlock* next;  // 0x00
    DVDCommandBlock* prev;  // 0x04
} Queue;

#define MAX_QUEUE   4

static Queue WaitingQueue[MAX_QUEUE];

void __DVDClearWaitingQueue() {
    int i;
    for (i = 0; i < MAX_QUEUE; i++) {
        DVDCommandBlock* block = (DVDCommandBlock*)&WaitingQueue[i];
        block->next = block;
        block->prev = block;
    }
}

BOOL __DVDPushWaitingQueue(s32 prio, DVDCommandBlock* block) {
    DVDCommandBlock* b;

    BOOL enabled = OSDisableInterrupts();

    b = (DVDCommandBlock*)&WaitingQueue[prio];
    b->prev->next = block;
    block->prev = b->prev;
    block->next = b;
    b->prev = block;

    OSRestoreInterrupts(enabled);
    return TRUE;
}

static DVDCommandBlock* PopWaitingQueuePrio(s32 prio) {
    DVDCommandBlock* tmp, *block;

    BOOL enabled = OSDisableInterrupts();
    block = (DVDCommandBlock*)&WaitingQueue[prio];

    tmp = block->next;
    block->next = tmp->next;
    tmp->next->prev = block;

    OSRestoreInterrupts(enabled);

    tmp->next = NULL;
    tmp->prev = NULL;
    return tmp;
}

DVDCommandBlock* __DVDPopWaitingQueue() {
    int i;
    DVDCommandBlock* block;

    BOOL enabled = OSDisableInterrupts();

    for (i = 0; i < MAX_QUEUE; i++) {
        block = (DVDCommandBlock*)&WaitingQueue[i];

        if (block->next != block) {
            OSRestoreInterrupts(enabled);
            return PopWaitingQueuePrio(i);
        }
    }

    OSRestoreInterrupts(enabled);
    return NULL;
}

BOOL __DVDCheckWaitingQueue() {
    int i;
    DVDCommandBlock* block;

    BOOL enabled = OSDisableInterrupts();

    for (i = 0; i < MAX_QUEUE; i++) {
        block = (DVDCommandBlock*)&WaitingQueue[i];

        if (block->next != block) {
            OSRestoreInterrupts(enabled);
            return TRUE;
        }
    }

    OSRestoreInterrupts(enabled);
    return FALSE;
}

DVDCommandBlock* __DVDGetNextWaitingQueue() {
    int i;
    DVDCommandBlock*    block;
    DVDCommandBlock*    next;

    BOOL enabled = OSDisableInterrupts();

    for (i = 0; i < MAX_QUEUE; i++) {
        block = (DVDCommandBlock*)&WaitingQueue[i];

        if (block->next != block) {
            next = block->next;
            OSRestoreInterrupts(enabled);
            return next;
        }
    }

    OSRestoreInterrupts(enabled);
    return NULL;
}

BOOL __DVDDequeueWaitingQueue(DVDCommandBlock* block) {
    DVDCommandBlock*    prev;
    DVDCommandBlock*    next;

    BOOL enabled = OSDisableInterrupts();

    prev = block->prev;
    next = block->next;

    if (prev == NULL || next == NULL) {
        OSRestoreInterrupts(enabled);
        return FALSE;
    }

    prev->next = next;
    next->prev = prev;
    OSRestoreInterrupts(enabled);
    return TRUE;
}
