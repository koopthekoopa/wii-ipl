#include <revolution/ax.h>
#include <private/ax.h>

#include <revolution/os.h>

#define STACK_MAX (AX_PRIORITY_MAX + 1)

static AXVPB* __AXStackHead[STACK_MAX];
static AXVPB* __AXStackTail[STACK_MAX];
static AXVPB* __AXCallbackStack = NULL;

AXVPB* __AXGetStackHead(u32 priority) {
    return __AXStackHead[priority];
}

void __AXServiceCallbackStack() {
    AXVPB* vpb;

    for (vpb = __AXPopCallbackStack(); vpb; vpb = __AXPopCallbackStack()) {
        if (vpb->priority != AX_PRIORITY_FREE) {
            if (vpb->callback) {
                vpb->callback(vpb);
            }
    
            __AXRemoveFromStack(vpb);
            __AXPushFreeStack(vpb);
        }
    }
}

void __AXInitVoiceStacks() {
    u32 i;

    __AXCallbackStack = NULL;
    for (i = 0; i < STACK_MAX; i++) {
        __AXStackHead[i] = __AXStackTail[i] = 0;
    }
}

void __AXAllocInit() {
    __AXInitVoiceStacks();
}

void __AXPushFreeStack(AXVPB* vpb) {
    vpb->next = __AXStackHead[AX_PRIORITY_FREE];
    __AXStackHead[AX_PRIORITY_FREE] = vpb;
    vpb->priority = AX_PRIORITY_FREE;
}

AXVPB* __AXPopFreeStack() {
    AXVPB* vpb;

    vpb = (void*)(u32)&__AXStackHead[AX_PRIORITY_FREE]->next;
    if (vpb) {
        __AXStackHead[AX_PRIORITY_FREE] = vpb->next;
    }
    return vpb;
}

void __AXPushCallbackStack(AXVPB* vpb) {
    vpb->next1 = __AXCallbackStack;
    __AXCallbackStack = vpb;
}

AXVPB* __AXPopCallbackStack() {
    AXVPB* vpb;

    vpb = (void*)(u32)&__AXCallbackStack[AX_PRIORITY_FREE];
    if (vpb) {
        __AXCallbackStack = vpb->next1;
    }
    return vpb;
}

void __AXRemoveFromStack(AXVPB* vpb) {
    u32 i;
    AXVPB* head;
    AXVPB* tail;

    i = vpb->priority;
    head = __AXStackHead[i];
    tail = __AXStackTail[i];
    if (head == tail) {
        __AXStackHead[i] = __AXStackTail[i] = 0;
        return;
    }

    if (vpb == head) {
        __AXStackHead[i] = vpb->next;
        __AXStackHead[i]->prev = 0;
        return;
    }

    if (vpb == tail) {
        __AXStackTail[i] = vpb->prev;
        __AXStackTail[i]->next = 0;
        return;
    }

    head = vpb->prev;
    tail = vpb->next;
    head->next = tail;
    tail->prev = head;
}

void __AXPushStackHead(AXVPB* vpb, u32 priority) {
    vpb->next = __AXStackHead[priority];
    vpb->prev = 0;

    if (vpb->next) {
        __AXStackHead[priority]->prev = vpb;
        __AXStackHead[priority] = vpb;
    }
    else {
        __AXStackTail[priority] = vpb;
        __AXStackHead[priority] = vpb;
    }

    vpb->priority = priority;
}

AXVPB* __AXPopStackFromBottom(u32 priority) {
    AXVPB* vpb;

    vpb = NULL;
    if (__AXStackHead[priority]) {
        if (__AXStackHead[priority] == __AXStackTail[priority]) {
            vpb = __AXStackHead[priority];
            __AXStackHead[priority] = __AXStackTail[priority] = 0;
        }
        else if (__AXStackTail[priority]) {
            vpb = __AXStackTail[priority];
            __AXStackTail[priority] = vpb->prev;
            __AXStackTail[priority]->next = 0;
        }
    }

    return vpb;
}

void AXFreeVoice(AXVPB* vpb) {
    BOOL old;

    old = OSDisableInterrupts();
    __AXRemoveFromStack(vpb);
    if (vpb->pb.state == AX_VOICE_RUN) {
        vpb->depop = TRUE;
    }
    __AXSetPBDefault(vpb);
    __AXPushFreeStack(vpb);

    OSRestoreInterrupts(old);
}

AXVPB* AXAcquireVoice(u32 priority, AXVoiceCallback callback, u32 userContext) {
    BOOL old;
    AXVPB* vpb;
    u32 i;

    old = OSDisableInterrupts();
    vpb = __AXPopFreeStack();
    if (vpb == 0) {
        for (i = 1; i < priority; i++) {
            vpb = __AXPopStackFromBottom(i);
            if (vpb) {
                if (vpb->pb.state == AX_VOICE_RUN) {
                    vpb->depop = TRUE;
                }
                if (vpb->callback != 0) {
                    vpb->callback(vpb);
                }
                break;
            }
        }
    }

    if (vpb) {
        __AXPushStackHead(vpb, priority);
        vpb->callback = callback;
        vpb->userContext = userContext;
        __AXSetPBDefault(vpb);
    }

    OSRestoreInterrupts(old);
    return vpb;
}

void AXSetVoicePriority(AXVPB* vpb, u32 priority) {
    BOOL old;

    old = OSDisableInterrupts();
    __AXRemoveFromStack(vpb);
    __AXPushStackHead(vpb, priority);

    OSRestoreInterrupts(old);
}
