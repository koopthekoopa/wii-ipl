#ifndef REVOLUTION_MEM_FRAME_HEAP_H
#define REVOLUTION_MEM_FRAME_HEAP_H

#include <revolution/types.h>

#include <revolution/mem/heapCommon.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef enum {
    MEM_FRM_HEAP_FREE_TO_HEAD = (1 << 0),
    MEM_FRM_HEAP_FREE_TO_TAIL = (1 << 1),
    MEM_FRM_HEAP_FREE_ALL = MEM_FRM_HEAP_FREE_TO_HEAD | MEM_FRM_HEAP_FREE_TO_TAIL
} MEMiFrmFreeFlag;

typedef struct MEMiFrmHeapState MEMiFrmHeapState;
struct MEMiFrmHeapState {
    u32                 tag;        // 0x00
    void*               head;       // 0x04
    void*               tail;       // 0x08
    MEMiFrmHeapState*   prevState;  // 0x0C
};

typedef struct MEMiFrmHeapHead {
    void*               head;   // 0x00
    void*               tail;   // 0x04
    MEMiFrmHeapState*   state;  // 0x08
} MEMiFrmHeapHead;

#define MEM_FRM_HEAP_MIN_SIZE   (sizeof(MEMiHeapHead) + sizeof(MEMiFrmHeapHead))

MEMHeapHandle   MEMCreateFrmHeapEx(void* start, u32 size, u16 flags);
void*           MEMDestroyFrmHeap(MEMHeapHandle heap);

void*           MEMAllocFromFrmHeapEx(MEMHeapHandle heap, u32 size, int align);
void            MEMFreeToFrmHeap(MEMHeapHandle heap, int mode);

u32             MEMGetAllocatableSizeForFrmHeapEx(MEMHeapHandle heap, int align);

int             MEMRecordStateForFrmHeap(MEMHeapHandle heap, u32 tag);
int             MEMFreeByStateToFrmHeap(MEMHeapHandle heap, u32 tag);

u32             MEMAdjustFrmHeap(MEMHeapHandle heap);

u32             MEMResizeForMBlockFrmHeap(MEMHeapHandle heap, void* memBlock, u32 size);

static MEMiHeapHead* MEMCreateFrmHeap(void* start, u32 size) {
    return MEMCreateFrmHeapEx(start, size, 0);
}

static void* MEMAllocFromFrmHeap(MEMiHeapHead* heap, u32 size) {
    return MEMAllocFromFrmHeapEx(heap, size, 4);
}

static u32 MEMGetAllocatableSizeForFrmHeap(MEMiHeapHead* heap) {
    return MEMGetAllocatableSizeForFrmHeapEx(heap, 4);
}

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_MEM_FRAME_HEAP_H
