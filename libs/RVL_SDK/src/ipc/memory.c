#include <revolution/os.h>
#include <private/os.h>

#include <private/ipc.h>

typedef struct IOSChunk IOSChunk;
struct IOSChunk {
    u32         status;     // 0x00
    u32         size;       // 0x04
    IOSChunk*   prevFree;   // 0x08
    IOSChunk*   nextFree;   // 0x0C
};

typedef struct IOSHeap {
    void*       base;       // 0x00
    u32         owner;      // 0x04
    u32         size;       // 0x08
    IOSChunk*   freeList;   // 0x0C
} IOSHeap;

#define MAX_HEAPS   8

static IOSHeap __heaps[MAX_HEAPS];

IOSHeapId iosCreateHeap(void *ptr, u32 size) {
    IOSError    ret = IPC_RESULT_INVALID;
    u32         mask;
    s32         i;
    IOSHeap*    h;

    mask = OSDisableInterrupts();

    if ((u32)ptr & 31) {
        goto finish;
    }

    for (i = 0; i < ARRSIZE(__heaps); i++) {
        if (__heaps[i].base == 0) {
            break;
        }
    }

    if (i == MAX_HEAPS) {
        ret = IPC_RESULT_MAX;
        goto finish;
    }

    h = __heaps + i;
    h->base = ptr;
    h->size = size;
    h->freeList = ptr;
    h->freeList->status = IPC_HEAP_CHUNK_FREE;
    h->freeList->size = size - sizeof(IOSChunk);
    h->freeList->prevFree = NULL;
    h->freeList->nextFree = NULL;
    ret = i;

finish:
    OSRestoreInterrupts(mask);
    return ret;
}

IOSError iosDestroyHeap(IOSHeapId id) {
    IOSError ret = IPC_RESULT_ACCESS;
    IOSHeap *h;

    int enabled = OSDisableInterrupts();

    if (id < 0 || id >= MAX_HEAPS || __heaps[id].base == NULL) {
        ret = IPC_RESULT_INVALID;
        goto finish;
    }
    h = __heaps + id;

    if (0 == id) {
        ret = IPC_RESULT_ACCESS;
        goto finish;
    }
    
    h->base = 0;
    h->size = 0;
    h->owner = 0;
    h->freeList = 0;

    ret = 0;

finish:
    OSRestoreInterrupts(enabled);

    return ret;
}

static void __iosCoalesceChunk(IOSChunk *p) {
    if (p && ((u32)p->nextFree == ((u32)p + p->size + sizeof(IOSChunk)))) {
        IOSChunk* next = p->nextFree;
        p->nextFree = next->nextFree;

        if (p->nextFree != NULL) {
            p->nextFree->prevFree = p;
        }

        p->size += next->size + sizeof(IOSChunk);
    }
}

static void* __iosAlloc(IOSHeapId id, u32 size, u32 alignment) {
    u32         mask;
    IOSChunk*   p;
    IOSChunk*   best;
    IOSHeap*    h;
    void*       ret = NULL;

    mask = OSDisableInterrupts();

    if (!size) {
        goto finish;
    }

    if (!alignment || (alignment & (alignment - 1))) {
        goto finish;
    }
    
    if (alignment < DEFAULT_ALIGN) {
        alignment = DEFAULT_ALIGN;
    }

    size = OSRoundUp32B(size);

    if (id < 0 || id >= MAX_HEAPS || __heaps[id].base == NULL) {
        ret = NULL;
        goto finish;
    }
    h = __heaps + id;

    p = h->freeList;
    best = NULL;

    while (p != NULL) {
        u32 ptr = (u32)p + sizeof(IOSChunk);
        u32 extra = (alignment - (ptr & (alignment - 1))) & (alignment - 1);

        if ((p->size == size) && !extra) {
            best = p;
            break;
        }
        else if ((p->size >= (size + extra)) && (!best || (p->size < best->size))) {
            best = p;
        }

        p = p->nextFree;
    }

    p = best;

    if (p != NULL) {
        u32 ptr = (u32)p + sizeof(IOSChunk);
        u32 extra = (alignment - (ptr & (alignment - 1))) & (alignment - 1);

        if (p->size > (size + extra + sizeof(IOSChunk))) {
            IOSChunk *n = (IOSChunk *)((u8 *)p + size + extra + sizeof(IOSChunk));
            n->status = IPC_HEAP_CHUNK_FREE;
            n->size = p->size - size - extra - sizeof(IOSChunk);
            n->nextFree = p->nextFree;

            if (n->nextFree) {
                n->nextFree->prevFree = n;
            }

            p->nextFree = n;
            p->size = size + extra;
        }

        p->status = IPC_HEAP_CHUNK_USED;

        if (p->prevFree) {
            p->prevFree->nextFree = p->nextFree;
        }
        else {
            h->freeList = p->nextFree;
        }

        if (p->nextFree) {
            p->nextFree->prevFree = p->prevFree;
        }

        p->prevFree = p->nextFree = NULL;
        ret = (u8*)p + extra + sizeof(IOSChunk);

        if (extra) {
            IOSChunk* n = (IOSChunk*)ret-1;
            n->status = IPC_HEAP_CHUNK_FORALIGN;
            n->prevFree = p;
        }
    }

finish:
    OSRestoreInterrupts(mask);
    return ret;
}

void* iosAlloc(IOSHeapId id, u32 size) {
    return __iosAlloc(id, size, DEFAULT_ALIGN);
}

void* iosAllocAligned(IOSHeapId id, u32 size, u32 alignment) {
    return __iosAlloc(id, size, alignment);
}

IOSError iosFree(IOSHeapId id, void* ptr) {
    u32         mask;
    IOSChunk*   p;
    IOSHeap*    h;
    IOSError    ret = IPC_RESULT_INVALID;
    IOSChunk*   prev;

    mask = OSDisableInterrupts();

    if (!ptr) {
        goto finish;
    }

    if (id < 0 || id >= MAX_HEAPS || __heaps[id].base == NULL) {
        ret = IPC_RESULT_INVALID;
        goto finish;
    }
    h = __heaps + id;

    if ((u32)ptr < ((u32)h->base + sizeof(IOSChunk)) || (u32)ptr > ((u32)h->base + h->size)) {
        goto finish;
    }

    p = (IOSChunk*)ptr - 1;

    if (p->status == IPC_HEAP_CHUNK_FORALIGN) {
        p = p->prevFree;
    }

    if (p->status != IPC_HEAP_CHUNK_USED) {
        goto finish;
    }

    p->status = IPC_HEAP_CHUNK_FREE;
    prev = h->freeList;

    while (prev != NULL) {
        if (!prev->nextFree || prev->nextFree > p) {
            break;
        }

        prev = prev->nextFree;
    }

    if (prev && p > prev) {
        p->prevFree = prev;
        p->nextFree = prev->nextFree;
        prev->nextFree = p;

        if (p->nextFree) {
            p->nextFree->prevFree = p;
        }
    }
    else {
        p->nextFree = h->freeList;
        h->freeList = p;
        p->prevFree = NULL;

        if (p->nextFree) {
            p->nextFree->prevFree = p;
        }
    }

    __iosCoalesceChunk(p);
    __iosCoalesceChunk(p->prevFree);

    ret = IPC_RESULT_OK;

finish:
    OSRestoreInterrupts(mask);
    return ret;
}
