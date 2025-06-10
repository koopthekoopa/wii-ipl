#include <revolution/mem.h>
#include <revolution/os.h>

#include <string.h>
#include <math.h>

#include <private/mem.h>

static MEMHeapHandle InitFrameHeap_(void* start, void* end, u16 flags) {
    MEMHeapHandle heap = (MEMHeapHandle)start;
    MEMiFrmHeapHead* frmHeap = (MEMiFrmHeapHead*)AddU32ToPtr(heap, sizeof(MEMiHeapHead));

    MEMiInitHeapHead(heap, 'FRMH', AddU32ToPtr(frmHeap, sizeof(MEMiFrmHeapHead)), end, flags);

    frmHeap->head = heap->heapStart;
    frmHeap->tail = heap->heapEnd;
    frmHeap->state = NULL;
    return heap;
}

MEMHeapHandle MEMCreateFrmHeapEx(void* start, u32 size, u16 flags) {
    void* end = MEM_PTR_ROUNDDOWN(AddU32ToPtr(start, size), 4);
    start = MEM_PTR_ROUNDUP(start, 4);

    if (GetUIntPtr(start) > GetUIntPtr(end) || GetOffsetFromPtr(start, end) < sizeof(MEMiHeapHead) + sizeof(MEMiFrmHeapHead)) {
        return NULL;
    }

    return InitFrameHeap_(start, end, flags);
}

void* MEMDestroyFrmHeap(MEMHeapHandle heap) {
    MEMiFinalizeHeap(heap);
    return (void*)heap;
}

static void* AllocFromHead_(MEMiFrmHeapHead* frmHeap, u32 size, int align) {
    void* newBlock = MEM_PTR_ROUNDUP(GetUIntPtr(frmHeap->head), align);
    void* endAddress = AddU32ToPtr(newBlock, size);
    MEMHeapHandle heap;

    if (GetUIntPtr(endAddress) > GetUIntPtr(frmHeap->tail)) {
        return NULL;
    }

    heap = (MEMHeapHandle)SubU32ToPtr(frmHeap, sizeof(MEMiHeapHead));
    FillAllocMemory(heap, frmHeap->head, GetOffsetFromPtr(frmHeap->head, endAddress));
    frmHeap->head = endAddress;
    return newBlock;
}

static void* AllocFromTail_(MEMiFrmHeapHead* frmHeap, u32 size, int align) {
    void* newBlock = MEM_PTR_ROUNDDOWN(SubU32ToPtr(frmHeap->tail, size), align);
    MEMHeapHandle heap;

    if (GetUIntPtr(newBlock) < GetUIntPtr(frmHeap->head)) {
        return NULL;
    }

    heap = (MEMHeapHandle)SubU32ToPtr(frmHeap, sizeof(MEMiHeapHead));
    FillAllocMemory(heap, newBlock, GetOffsetFromPtr(newBlock, frmHeap->tail));
    frmHeap->tail = newBlock;
    return newBlock;
}

void* MEMAllocFromFrmHeapEx(MEMHeapHandle heap, u32 size, int align) {
    void* memory = NULL;
    MEMiFrmHeapHead* frmHeap = (MEMiFrmHeapHead*)AddU32ToPtr(heap, sizeof(MEMiHeapHead));

    if (size == 0) {
        size = 1;
    }
    size = MEM_ROUNDUP(size, 4);

    LockHeap(heap);

    if (align >= 0) {
        memory = AllocFromHead_(frmHeap, size, align);
    }
    else {
        memory = AllocFromTail_(frmHeap, size, -align);
    }

    UnlockHeap(heap);

    return memory;
}

void MEMFreeToFrmHeap(MEMHeapHandle heap, int mode) {
    LockHeap(heap);

    if (mode & 1) {
        MEMiFrmHeapHead* frmHeap = (MEMiFrmHeapHead*)AddU32ToPtr(heap, sizeof(MEMiHeapHead));
        frmHeap->head = heap->heapStart;
        frmHeap->state = NULL;
    }
    if (mode & 2) {
        MEMiFrmHeapHead* frmHeap = (MEMiFrmHeapHead*)AddU32ToPtr(heap, sizeof(MEMiHeapHead));
        MEMiFrmHeapState* state;
        for (state = frmHeap->state; state; state = state->prevState) {
            state->tail = heap->heapEnd;
        }
        frmHeap->tail = heap->heapEnd;
    }
    
    UnlockHeap(heap);
}

u32 MEMGetAllocatableSizeForFrmHeapEx(MEMHeapHandle heap, int align) {
    BOOL enabled;
    u32 size;
    MEMiFrmHeapHead* frmHeap;
    void* block;
    
    align = abs(align);
    enabled = OSDisableInterrupts();
    frmHeap = (MEMiFrmHeapHead*)AddU32ToPtr(heap, sizeof(MEMiHeapHead));
    block = MEM_PTR_ROUNDUP(frmHeap->head, align);

    if (GetUIntPtr(block) > GetUIntPtr(frmHeap->tail))
        size = 0;
    else
        size = GetOffsetFromPtr(block, frmHeap->tail);

    OSRestoreInterrupts(enabled);

    return size;
}

int MEMRecordStateForFrmHeap(MEMHeapHandle heap, u32 tag) {
    BOOL ret;
    MEMiFrmHeapHead* frmHeap;
    MEMiFrmHeapState* state;
    void* oldHeadAllocator;

    LockHeap(heap);

    frmHeap = (MEMiFrmHeapHead*)AddU32ToPtr(heap, sizeof(MEMiHeapHead));
    oldHeadAllocator = frmHeap->head;
    state = (MEMiFrmHeapState*)AllocFromHead_(frmHeap, sizeof(MEMiFrmHeapState), 4);

    if (!state) {
        ret = FALSE;
        goto ret_;
    }

    state->tag = tag;
    state->head = oldHeadAllocator;
    state->tail = frmHeap->tail;
    state->prevState = frmHeap->state;
    frmHeap->state = state;
    ret = TRUE;

ret_:
    UnlockHeap(heap);

    return ret;
}

int MEMFreeByStateToFrmHeap(MEMHeapHandle heap, u32 tag) {
    BOOL ret;
    MEMiFrmHeapHead* frmHeap;
    MEMiFrmHeapState* state;
    void* oldHeadAllocator;
    void* oldTailAllocator;

    LockHeap(heap);

    frmHeap = (MEMiFrmHeapHead*)AddU32ToPtr(heap, sizeof(MEMiHeapHead));
    state = frmHeap->state;

    if (tag != 0)
        for (; state; state = state->prevState)
        if (state->tag == tag)
            break;

    if (!state) {
        ret = FALSE;
        goto ret_;
    }

    oldHeadAllocator = frmHeap->head;
    oldTailAllocator = frmHeap->tail;
    frmHeap->head = state->head;
    frmHeap->tail = state->tail;
    frmHeap->state = state->prevState;
    ret = TRUE;

ret_:
    UnlockHeap(heap);

    return ret;
}

u32 MEMAdjustFrmHeap(MEMHeapHandle heap) {
    MEMiFrmHeapHead* frm;
    u32 newSize;

    LockHeap(heap);
    frm = AddU32ToPtr(heap, sizeof(MEMiHeapHead));

    if (GetOffsetFromPtr(frm->tail, heap->heapEnd) != 0) {
        newSize = 0;
    }
    else {
        heap->heapEnd = frm->head;
        frm->tail = frm->head;
        newSize = GetOffsetFromPtr(heap, frm->head);
    }

    UnlockHeap(heap);
    return newSize;
}

u32 MEMResizeForMBlockFrmHeap(MEMHeapHandle heap, void* memBlock, u32 size) {
    MEMiFrmHeapHead* frm;
    u32 offset;
    u8* newHead;

    if (size == 0) {
        size = 1;
    }
    size = MEM_ROUNDUP(size, 4);

    LockHeap(heap);
    frm = AddU32ToPtr(heap, sizeof(MEMiHeapHead));

    offset = GetOffsetFromPtr(memBlock, frm->head);
    newHead = AddU32ToPtr(memBlock, size);

    if (size != offset) {
        if (size > offset) {
            if (ComparePtr(newHead, frm->tail) > 0) {
                size = 0;
                goto exit;
            }

            FillAllocMemory(heap, frm->head, size - offset);
        }

        frm->head = newHead;
    }

exit:
    UnlockHeap(heap);
    return size;
}
