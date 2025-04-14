#ifndef PRIVATE_MEM_H
#define PRIVATE_MEM_H

#include <revolution/types.h>

#include <revolution/mem/heapCommon.h>

#include <stddef.h>
#include <string.h>

#ifdef __cplusplus
extern "C" {
#endif

static u32* GetUIntPtr(const void* p) {
    return (u32*)p;
}

static void* AddU32ToPtr(const void* p, u32 ofs) {
    return (void*)(GetUIntPtr(p) + ofs);
}

static void* SubU32ToPtr(const void* p, u32 ofs) {
    return (void*)(GetUIntPtr(p) - ofs);
}

static const void* AddU32ToCPtr(const void* p, u32 ofs) {
    return (const void*)(GetUIntPtr(p) + ofs);
}

static const void* SubU32ToCPtr(const void* p, u32 ofs) {
    return (const void*)(GetUIntPtr(p) - ofs);
}

static s32 GetOffsetFromPtr(const void* heapStart, const void* heapEnd) {
    return GetUIntPtr(heapEnd) - GetUIntPtr(heapStart);
}

static u16 GetOptForHeap(const MEMHeapHandle heap) {
    return heap->optFlag;
}

static void SetOptForHeap(MEMHeapHandle heap, u16 optFlag) {
    heap->optFlag = (u8)optFlag;
}

static void LockHeap(MEMHeapHandle heap) {
    if (GetOptForHeap(heap) & MEM_HEAP_OPT_CAN_LOCK) {
        OSLockMutex(&heap->mutex);
    }
}

static void UnlockHeap(MEMHeapHandle heap) {
    if (GetOptForHeap(heap) & MEM_HEAP_OPT_CAN_LOCK) {
        OSUnlockMutex(&heap->mutex);
    }
}

static void FillAllocMemory(MEMHeapHandle heap, void* memBlock, u32 size) {
    if (GetOptForHeap(heap) & MEM_HEAP_OPT_CLEAR_ALLOC) {
        memset(memBlock, 0, size);
    }
}

static s32 MEMGetHeapTotalSize(MEMHeapHandle heap) {
    return GetOffsetFromPtr(heap, heap->heapEnd);
}

#ifdef __cplusplus
}
#endif

#endif // PRIVATE_MEM_H
