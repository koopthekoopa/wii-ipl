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

void*   MEMAllocFromUnitHeap(MEMHeapHandle heap);
void    MEMFreeToUnitHeap(MEMHeapHandle heap, void* memBlock);

static u32 MEMGetMemBlockSizeForUnitHeap(MEMHeapHandle heap) {
    return ((MEMiUntHeapHead*)((u8*)heap + sizeof(MEMiHeapHead)))->blockSize;
}

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_MEM_UNIT_HEAP_H
