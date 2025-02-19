#ifndef REVOLUTION_OS_ALLOCATER_H
#define REVOLUTION_OS_ALLOCATER_H

#include <revolution/types.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef int OSHeapHandle;

extern volatile OSHeapHandle __OSCurrHeap;

void*           OSInitAlloc(void* arenaStart, void* arenaEnd, int maxHeaps);

OSHeapHandle    OSCreateHeap(void* start, void* end);
OSHeapHandle    OSSetCurrentHeap(OSHeapHandle heap);

void*           OSAllocFromHeap(OSHeapHandle heap, u32 size);
void            OSFreeToHeap(OSHeapHandle heap, void* ptr);

#ifdef __cplusplus
}
#endif

#endif  // REVOLUTION_OS_ALLOCATER_H
