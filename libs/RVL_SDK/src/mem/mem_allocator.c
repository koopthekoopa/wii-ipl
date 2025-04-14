#include <revolution/mem.h>

#include <revolution/os.h>

static void* AllocatorAllocForExpHeap_(MEMAllocator* allocator, u32 size) {
    return MEMAllocFromExpHeapEx(allocator->heap, size, allocator->heapParam1);
}

static void AllocatorFreeForExpHeap_(MEMAllocator* allocator, void* block) {
    MEMFreeToExpHeap(allocator->heap, block);
}

static void* AllocatorAllocForFrmHeap_(MEMAllocator* allocator, u32 size) {
    return MEMAllocFromFrmHeapEx(allocator->heap, size, allocator->heapParam1);
}

static void AllocatorFreeForFrmHeap_(MEMAllocator* allocator, void* block) {
#pragma unused(allocator)
#pragma unused(block)
}

static void* AllocatorAllocForUnitHeap_(MEMAllocator* allocator, u32 size) {
    if (size > MEMGetMemBlockSizeForUnitHeap(allocator->heap)) {
        return NULL;
    }
    return MEMAllocFromUnitHeap(allocator->heap);
}

static void AllocatorFreeForUnitHeap_(MEMAllocator* allocator, void* block) {
    MEMFreeToUnitHeap(allocator->heap, block);
}

void* MEMAllocFromAllocator(MEMAllocator* allocator, u32 size) {
    return allocator->func->allocFunc(allocator, size);
}

void MEMFreeToAllocator(MEMAllocator* allocator, void* block) {
    allocator->func->freeFunc(allocator, block);
}

void MEMInitAllocatorForExpHeap(MEMAllocator* allocator, MEMHeapHandle heap, s32 align) {
    static const MEMAllocatorFunc sAllocatorFunc = {AllocatorAllocForExpHeap_, AllocatorFreeForExpHeap_};
    allocator->func = &sAllocatorFunc;
    allocator->heap = heap;
    allocator->heapParam1 = align;
    allocator->heapParam2 = 0;
}

void MEMInitAllocatorForFrmHeap(MEMAllocator* allocator, MEMHeapHandle heap, s32 align) {
    static const MEMAllocatorFunc sAllocatorFunc = {AllocatorAllocForFrmHeap_, AllocatorFreeForFrmHeap_};
    allocator->func = &sAllocatorFunc;
    allocator->heap = heap;
    allocator->heapParam1 = align;
    allocator->heapParam2 = 0;
}

void MEMInitAllocatorForUnitHeap(MEMAllocator* allocator, MEMHeapHandle heap) {
    static const MEMAllocatorFunc sAllocatorFunc = {AllocatorAllocForUnitHeap_, AllocatorFreeForUnitHeap_};
    allocator->func = &sAllocatorFunc;
    allocator->heap = heap;
    allocator->heapParam1 = 0;
    allocator->heapParam2 = 0;
}
