#ifndef REVOLUTION_MEM_ALLOCATOR_H
#define REVOLUTION_MEM_ALLOCATOR_H

#include <revolution/types.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef struct MEMAllocator;

typedef void* (*MEMAllocatorAllocFunc)(struct MEMAllocator* allocator, u32 size);
typedef void (*MEMAllocatorFreeFunc)(struct MEMAllocator* allocator, void* block);

typedef struct MEMAllocatorFuncs {
    MEMAllocatorAllocFunc   allocFunc;  // 0x00
    MEMAllocatorFreeFunc    freeFunc;   // 0x04
} MEMAllocatorFunc;

typedef struct MEMAllocator {
    const MEMAllocatorFunc* pFunc;      // 0x00
    
    void*                   pHeap;      // 0x04
    
    u32                     heapParam1; // 0x08
    u32                     heapParam2; // 0x0C
} MEMAllocator;

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_MEM_ALLOCATOR_H


