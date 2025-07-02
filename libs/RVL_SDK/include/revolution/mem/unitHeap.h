#ifndef REVOLUTION_MEM_UNIT_HEAP_H
#define REVOLUTION_MEM_UNIT_HEAP_H

#include <revolution/types.h>

#include <revolution/mem/heapCommon.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef struct MEMiUntHeapMBlockHead MEMiUntHeapMBlockHead;
struct MEMiUntHeapMBlockHead {
    MEMiUntHeapMBlockHead*  next;       // 0x00
};

typedef struct MEMiUntHeapHead {
    MEMiUntHeapMBlockHead*  freeList;   // 0x00
    u32                     blockSize;  // 0x04
} MEMiUntHeapHead;

MEMHeapHandle   MEMCreateUnitHeapEx(void* start, u32 heapSize, u32 memBlockSize, int align, u16 flags);
void*           MEMDestroyUnitHeap(MEMHeapHandle heap);

void*           MEMAllocFromUnitHeap(MEMHeapHandle heap);
void            MEMFreeToUnitHeap(MEMHeapHandle heap, void* addr);

u32             MEMCalcHeapSizeForUnitHeap(u32 unit_size, u32 unit_count, int align);

static u32 MEMGetMemBlockSizeForUnitHeap(MEMHeapHandle heap) {
    return ((MEMiUntHeapHead*)((u8*)heap + sizeof(MEMiHeapHead)))->blockSize;
}

static inline MEMHeapHandle MEMCreateUnitHeap(void* start, u32 heapSize, u32 memBlockSize) {
    return MEMCreateUnitHeapEx(start, heapSize, memBlockSize, 4, 0);
}

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_MEM_UNIT_HEAP_H
