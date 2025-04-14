#ifndef REVOLUTION_MEM_FRAME_HEAP_H
#define REVOLUTION_MEM_FRAME_HEAP_H

#include <revolution/types.h>

#include <revolution/mem/heapCommon.h>

#ifdef __cplusplus
extern "C" {
#endif

void*   MEMAllocFromFrmHeapEx(MEMHeapHandle heap, u32 size, s32 align);

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_MEM_FRAME_HEAP_H
