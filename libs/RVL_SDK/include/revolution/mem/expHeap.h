#ifndef REVOLUTION_MEM_EXP_HEAP_H
#define REVOLUTION_MEM_EXP_HEAP_H

#include <revolution/types.h>

#include <revolution/mem/list.h>
#include <revolution/mem/heapCommon.h>

#include <revolution/os/OSMutex.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef struct MEMiExpHeapBlockHead MEMiExpHeapBlockHead;

typedef struct MEMiExpHeapMBlockHead MEMiExpHeapMBlockHead;

typedef struct MEMiExpBlockLink {
    MEMiExpHeapMBlockHead *prev;
    MEMiExpHeapMBlockHead *next;
} MEMiExpBlockLink;

typedef struct MEMiExpBlockList {
    MEMiExpHeapMBlockHead *head;
    MEMiExpHeapMBlockHead *tail;
} MEMiExpBlockList;

struct MEMiExpHeapMBlockHead {
    u16     signature;              // 0x00

    union {
        u16 val;
        struct {
            u16 dir         : 1;    // 1000000000000000
            u16 align       : 7;    // 0111111100000000
            u16 groupID     : 8;    // 0000000011111111
        } fields;
    } attribute;                    // 0x02

    u32 blockSize;                  // 0x04

    MEMiExpBlockLink    link;       // 0x08
};


typedef struct MEMiExpHeapHead {
    MEMiExpBlockList freeBlocks;    // 0x00
    MEMiExpBlockList usedBlocks;    // 0x08

    u16 groupID;                    // 0x10

    union {
        u16 val;
        struct {
            u16 _reserved : 15;     // 1111111111111110
            u16 allocMode : 1;      // 0000000000000001
        } fields;
    } attribute;                    // 0x12
} MEMiExpHeapHead;

MEMHeapHandle   MEMCreateExpHeapEx(void* startAddress, u32 size, u16 opt);
void*           MEMDestroyExpHeap(MEMHeapHandle heap);

void*           MEMAllocFromExpHeapEx(MEMHeapHandle heap, u32 size, int align);
u32             MEMResizeForMBlockExpHeap(MEMHeapHandle heap, void* block, u32 size);
void            MEMFreeToExpHeap(MEMHeapHandle heap, void* block);

u32             MEMGetTotalFreeSizeForExpHeap(MEMHeapHandle heap);
u32             MEMGetAllocatableSizeForExpHeapEx(MEMHeapHandle heap, int align);

void            MEMVisitAllocatedForExpHeap(MEMHeapHandle heap, void (*visitor)(void* , MEMHeapHandle , u32), u32 param);

u32             MEMAdjustExpHeap(MEMHeapHandle heap);

inline MEMHeapHandle MEMCreateExpHeap(void* start, u32 size) {
    return MEMCreateExpHeapEx(start, size, 0);
}

inline void* MEMAllocFromExpHeap(MEMHeapHandle heap, u32 size) {
    return MEMAllocFromExpHeapEx(heap, size, 4);
}

inline u32 MEMGetAllocatableSizeForExpHeap(MEMiHeapHead* heap) {
    return MEMGetAllocatableSizeForExpHeapEx(heap, 4);
}

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_MEM_EXP_HEAP_H
