#ifndef REVOLUTION_MEM_HEAP_COMMON_H
#define REVOLUTION_MEM_HEAP_COMMON_H

#include <revolution/types.h>

#include <revolution/mem/list.h>

#include <revolution/os/OSMutex.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef enum MEMHeapOpt {
    MEM_HEAP_OPT_CLEAR_ALLOC    = (1 << 0),
    MEM_HEAP_OPT_DEBUG_FILL     = (1 << 1),
    MEM_HEAP_OPT_CAN_LOCK       = (1 << 2)
} MEMHeapOpt;

typedef struct MEMiHeapHead {
    u32     magic;      // 0x00

    MEMLink link;       // 0x04
    MEMList list;       // 0x0C

    void*   heapStart;  // 0x18
    void*   heapEnd;    // 0x1C

    OSMutex mutex;      // 0x20

    union {
        u32 attr;
        struct {
            u32 reserved    : 24;   // 11111111111111111111111100000000
            u32 optFlag     : 8;    // 00000000000000000000000011111111
        };
    };                  // 0x38
} MEMiHeapHead;

typedef MEMiHeapHead* MEMHeapHandle;

void            MEMiInitHeapHead(MEMHeapHandle heap, u32 magic, void* heapStart, void* heapEnd, u16 optFlag);
void            MEMiFinalizeHeap(MEMHeapHandle heap);
MEMHeapHandle   MEMFindContainHeap(const void* memBlock);

static inline void* MEMGetHeapStartAddress(MEMHeapHandle heap) {
    return heap->heapStart;
}

static inline void* MEMGetHeapEndAddress(MEMHeapHandle heap) {
    return heap->heapEnd;
}

static s32 MEMGetHeapTotalSize(const MEMiHeapHead* heap) {
    return (u32)(heap->heapEnd) - (u32)(heap);
}

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_MEM_HEAP_COMMON_H
