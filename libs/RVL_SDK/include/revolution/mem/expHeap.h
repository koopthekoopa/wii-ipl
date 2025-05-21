#ifndef REVOLUTION_MEM_EXP_HEAP_H
#define REVOLUTION_MEM_EXP_HEAP_H

#include <revolution/types.h>

#include <revolution/mem/list.h>
#include <revolution/mem/heapCommon.h>

#include <revolution/os/OSMutex.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef struct MEMiExpHeapMBlockHead MEMiExpHeapMBlockHead;

struct MEMiExpHeapMBlockHead {
    u16     magic;                  // 0x00

    union {
        u16 attr;
        struct {
            u16 allocDir    : 1;    // 1000000000000000
            u16 alignment   : 7;    // 0111111100000000
            u16 groupID     : 8;    // 0000000011111111
        } fields;
    } attribute;                    // 0x02

    u32 blockSize;                  // 0x04

    MEMiExpHeapMBlockHead*  prev;   // 0x08
    MEMiExpHeapMBlockHead*  next;   // 0x0C
};

void*   MEMAllocFromExpHeapEx(MEMHeapHandle heap, u32 size, s32 align);
void    MEMFreeToExpHeap(MEMHeapHandle heap, void* memBlock);

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_MEM_EXP_HEAP_H
