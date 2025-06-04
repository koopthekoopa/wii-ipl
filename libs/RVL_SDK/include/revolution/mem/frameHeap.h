#ifndef REVOLUTION_MEM_FRAME_HEAP_H
#define REVOLUTION_MEM_FRAME_HEAP_H

#include <revolution/types.h>

#include <revolution/mem/heapCommon.h>

#ifdef __cplusplus
extern "C" {
#endif

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

MEMHeapHandle   MEMCreateFrmHeapEx(void* start, u32 size, u16 flags);
void*           MEMDestroyFrmHeap(MEMHeapHandle heap);

void*           MEMAllocFromFrmHeapEx(MEMHeapHandle heap, u32 size, int align);
void            MEMFreeToFrmHeap(MEMHeapHandle heap, int mode);

u32             MEMGetAllocatableSizeForFrmHeapEx(MEMHeapHandle heap, int align);

int             MEMRecordStateForFrmHeap(MEMHeapHandle heap, u32 tag);
int             MEMFreeByStateToFrmHeap(MEMHeapHandle heap, u32 tag);

u32             MEMAdjustFrmHeap(MEMHeapHandle heap);

u32             MEMResizeForMBlockFrmHeap(MEMHeapHandle heap, void* memBlock, u32 size);

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_MEM_FRAME_HEAP_H
