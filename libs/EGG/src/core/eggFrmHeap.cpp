#include <egg/core.h>

#include <nw4r/ut.h>

#include <revolution/mem.h>

#include <new>

namespace EGG {
    FrmHeap::FrmHeap(MEMiHeapHead* heapHandle) : Heap(heapHandle) {
    }

    FrmHeap::~FrmHeap() {
        dispose();
        MEMDestroyFrmHeap(mHeapHandle);
    }

    FrmHeap* FrmHeap::create(void* heapStart, u32 size, u16 opt) {
        FrmHeap* heap = NULL;

        void* pHeapBuffer = heapStart;
        void* pHeapEnd = PTR_ROUNDDOWN(addOffset(heapStart, size), 4);

        heapStart = PTR_ROUNDUP(heapStart, 4);

        if (heapStart > pHeapEnd || nw4r::ut::GetOffsetFromPtr(heapStart, pHeapEnd) < sizeof(FrmHeap) + 4) {
            return NULL;
        }

        MEMiHeapHead* heapHandle =
            MEMCreateFrmHeapEx(addOffset(heapStart, sizeof(FrmHeap)), nw4r::ut::GetOffsetFromPtr(heapStart, pHeapEnd) - sizeof(FrmHeap), opt);

        if (heapHandle != NULL) {
            heap = new (heapStart) FrmHeap(heapHandle);
        }

        return heap;
    }

    FrmHeap* FrmHeap::create(u32 size, Heap* parentHeap, u16 opt) {
        FrmHeap* heap = NULL;

        if (parentHeap == NULL) {
            parentHeap = getCurrentHeap();
        }

        if (size == 0xFFFFFFFF) {
            size = parentHeap->getAllocatableSize();
        }

        void* heapStart = parentHeap->alloc(size);
        if (heapStart != NULL) {
            heap = create(heapStart, size, opt);
            if (heap != NULL) {
                heap->mpParentHeap = parentHeap;
            } else {
                parentHeap->free(heapStart);
            }
        }

        return heap;
    }

    void FrmHeap::destroy() {
        Heap* parentHeap = findParentHeap();

        this->~FrmHeap();
        if (parentHeap != NULL) {
            parentHeap->free(this);
        }
    }

    void* FrmHeap::alloc(u32 size, s32 align) {
        return MEMAllocFromFrmHeapEx(mHeapHandle, size, align);
    }

    void FrmHeap::free(void* ptr) {
#pragma unused(ptr)
    }

    u32 FrmHeap::resizeForMBlock(void* ptr, u32 size) {
        return MEMResizeForMBlockFrmHeap(mHeapHandle, ptr, size);
    }

    u32 FrmHeap::getAllocatableSize(s32 align) {
        return MEMGetAllocatableSizeForFrmHeapEx(mHeapHandle, align);
    }

    u32 FrmHeap::adjust() {
        return MEMAdjustFrmHeap(mHeapHandle);
    }

    void FrmHeap::initAllocator(Allocator* allocator, s32 align) {
        MEMInitAllocatorForFrmHeap(allocator, mHeapHandle, align);
    }
}  // namespace EGG
