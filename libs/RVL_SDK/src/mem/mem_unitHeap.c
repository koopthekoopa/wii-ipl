#include <revolution/mem.h>
#include <revolution/os.h>

#include <string.h>

#include <private/mem.h>

MEMHeapHandle MEMCreateUnitHeapEx(void* start, u32 heapSize, u32 memBlockSize, int align, u16 flags) {
    MEMHeapHandle heap = (MEMHeapHandle)PTR_ROUNDUP(start, 4);
    MEMiUntHeapHead* unitHeap;
    MEMiUntHeapMBlockHead* block;
    int i;
    u32 count;

    void* heapEnd = PTR_ROUNDDOWN(AddU32ToPtr(start, heapSize), 4);
    void* heapStart;
 
    if (ComparePtr(heap, heapEnd) > 0)
        return NULL;

    memBlockSize = ROUNDUP(memBlockSize, align);

    unitHeap = (MEMiUntHeapHead*)AddU32ToPtr(heap, sizeof(MEMiHeapHead));
    heapStart = PTR_ROUNDUP(AddU32ToPtr(unitHeap, sizeof(MEMiUntHeapHead)), align);

    if (ComparePtr(heapStart, heapEnd) > 0) {
        return NULL;
    }

    count = GetOffsetFromPtr(heapStart, heapEnd) / memBlockSize;
    if (count == 0) {
        return NULL;
    }

    heapEnd = AddU32ToPtr(heapStart, count * memBlockSize);

    MEMiInitHeapHead(heap, 'UNTH', heapStart, heapEnd, flags);

    unitHeap->freeList = (MEMiUntHeapMBlockHead*)heapStart;
    unitHeap->blockSize = memBlockSize;

    block = unitHeap->freeList;
    for (i = 0; i < count - 1; ++i, block = block->next)
        block->next = (MEMiUntHeapMBlockHead*)AddU32ToPtr(block, memBlockSize);
    block->next = NULL;

    return heap;
}

void* MEMDestroyUnitHeap(MEMHeapHandle heap) {
    MEMiFinalizeHeap(heap);
    return (void*)heap;
}

void* MEMAllocFromUnitHeap(MEMHeapHandle heap) {
    MEMiUntHeapHead* unitHeap = (MEMiUntHeapHead*)AddU32ToPtr(heap, sizeof(MEMiHeapHead));
    MEMiUntHeapMBlockHead* block;

    LockHeap(heap);

    block = unitHeap->freeList;
    if (block)
        unitHeap->freeList = block->next;

    UnlockHeap(heap);

    if (block)
        FillAllocMemory(heap, block, unitHeap->blockSize);
    return block;
}

void MEMFreeToUnitHeap(MEMHeapHandle heap, void* addr) {
    MEMiUntHeapHead* unitHeap;
    MEMiUntHeapMBlockHead* block;

    if (addr == NULL)
        return;

    unitHeap = (MEMiUntHeapHead*)AddU32ToPtr(heap, sizeof(MEMiHeapHead));

    LockHeap(heap);

    block = (MEMiUntHeapMBlockHead*)addr;
    block->next = unitHeap->freeList;
    unitHeap->freeList = block;

    UnlockHeap(heap);
}

u32 MEMCalcHeapSizeForUnitHeap(u32 unit_size, u32 unit_count, int align) {
    return sizeof(MEMiHeapHead) + sizeof(MEMiUntHeapHead) + (align - 4) + unit_count * ROUNDUP(unit_size, align);
}
