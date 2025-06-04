#ifndef PRIVATE_MEM_H
#define PRIVATE_MEM_H

#include <revolution/types.h>

#include <revolution/mem/heapCommon.h>

#include <stddef.h>
#include <string.h>

#ifdef __cplusplus
extern "C" {
#endif

#define MEM_ROUNDUP(x, align)       (((x) + (align)-1) & (-(align)))
#define MEM_PTR_ROUNDUP(x, align)   ((void*)((((u32)(x)) + (align)-1) & (~((align)-1))))

#define MEM_ROUNDDOWN(x, align)     ((x) & (-(align)))
#define MEM_PTR_ROUNDDOWN(x, align) ((void*)(((u32)(x)) & (~((align)-1))))

static u32 GetUIntPtr(const void* p) {
    return (u32)p;
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

static u32 GetOffsetFromPtr(const void* start, const void* end) {
    return GetUIntPtr(end) - GetUIntPtr(start);
}

static u16 GetOptForHeap(const MEMiHeapHead* heap) {
    return heap->optFlag;
}

static void SetOptForHeap(MEMiHeapHead* heap, u16 opt) {
    heap->optFlag = (u8)opt;
}

static void LockHeap(MEMiHeapHead* heap) {
    if (GetOptForHeap(heap) & MEM_HEAP_OPT_CAN_LOCK) {
        OSLockMutex(&heap->mutex);
    }
}

static void UnlockHeap(MEMiHeapHead* heap) {
    if (GetOptForHeap(heap) & MEM_HEAP_OPT_CAN_LOCK) {
        OSUnlockMutex(&heap->mutex);
    }
}

static void FillAllocMemory(MEMiHeapHead* heap, void* memBlock, u32 size) {
    if (GetOptForHeap(heap) & MEM_HEAP_OPT_CLEAR_ALLOC) {
        memset(memBlock, 0, size);
    }
}

static void FillFreeMemory(MEMiHeapHead* heap, void* memBlock, u32 size) {
    if (GetOptForHeap(heap) & MEM_HEAP_OPT_CLEAR_ALLOC) {
        memset(memBlock, 0, size);
    }
}

static inline s32 ComparePtr(void *p0, void *p1) {
    return (u32)p0 - (u32)p1;
}

#ifdef __cplusplus
}
#endif

#endif // PRIVATE_MEM_H
