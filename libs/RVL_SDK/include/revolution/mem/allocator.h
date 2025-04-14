#ifndef REVOLUTION_MEM_ALLOCATOR_H
#define REVOLUTION_MEM_ALLOCATOR_H

#include <revolution/mem/heapCommon.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef struct MEMAllocator MEMAllocator;

typedef void* (*MEMAllocatorAllocFunc)(MEMAllocator* allocator, u32 size);
typedef void (*MEMAllocatorFreeFunc)(MEMAllocator* allocator, void* block);

typedef struct MEMAllocatorFunc {
    MEMAllocatorAllocFunc   allocFunc;  // 0x00
    MEMAllocatorFreeFunc    freeFunc;   // 0x04
} MEMAllocatorFunc;

typedef struct MEMAllocator {
    const MEMAllocatorFunc* func;       // 0x00
    
    void*                   heap;       // 0x04
    
    u32                     heapParam1; // 0x08
    u32                     heapParam2; // 0x0C
} MEMAllocator;

void*   MEMAllocFromAllocator(MEMAllocator*, u32 size);
void    MEMFreeToAllocator(MEMAllocator*, void* buffer);

void    MEMInitAllocatorForExpHeap(MEMAllocator* allocator, MEMHeapHandle heap, s32 align);
void    MEMInitAllocatorForFrmHeap(MEMAllocator* allocator, MEMHeapHandle heap, s32 align);
void    MEMInitAllocatorForUnitHeap(MEMAllocator* allocator, MEMHeapHandle heap);

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_MEM_ALLOCATOR_H
