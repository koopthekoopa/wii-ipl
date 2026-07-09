#include <egg/core.h>

#include <nw4r/ut.h>

#include <revolution/mem.h>

#include <new>

namespace EGG {
    UnitHeap::UnitHeap(MEMiHeapHead* heapHandle) : Heap(heapHandle) {
    }

    UnitHeap::~UnitHeap() {
        dispose();
        MEMDestroyUnitHeap(mHeapHandle);
    }

    UnitHeap* UnitHeap::create(void* heapStart, u32 size, u32 unitSize, s32 align, u16 opt) {
        UnitHeap* heap = NULL;

        void* pHeapBuffer = heapStart;
        void* pHeapEnd = PTR_ROUNDDOWN(addOffset(heapStart, size), 4);

        heapStart = PTR_ROUNDUP(heapStart, 4);

        if (heapStart > pHeapEnd || nw4r::ut::GetOffsetFromPtr(heapStart, pHeapEnd) < (sizeof(UnitHeap) - sizeof(MEMiUntHeapHead)) + 4) {
            return NULL;
        }

        MEMiHeapHead* heapHandle =
            MEMCreateUnitHeapEx(addOffset(heapStart, (sizeof(UnitHeap) - sizeof(MEMiUntHeapHead))),
                                nw4r::ut::GetOffsetFromPtr(heapStart, pHeapEnd) - (sizeof(UnitHeap) - sizeof(MEMiUntHeapHead)), unitSize, align, opt);

        if (heapHandle != NULL) {
            heap = new (heapStart) UnitHeap(heapHandle);
        }

        return heap;
    }

    UnitHeap* UnitHeap::create(u32 size, u32 unitSize, EGG::Heap* parentHeap, s32 align, u16 opt) {
        UnitHeap* heap = NULL;

        if (parentHeap == NULL) {
            parentHeap = getCurrentHeap();
        }

        if (size == 0xFFFFFFFF) {
            size = parentHeap->getAllocatableSize();
        }

        void* heapStart = parentHeap->alloc(size);
        if (heapStart != NULL) {
            heap = create(heapStart, size, unitSize, align, opt);
            if (heap != NULL) {
                heap->mpParentHeap = parentHeap;
            } else {
                parentHeap->free(heapStart);
            }
        }

        return heap;
    }

    void UnitHeap::destroy() {
        Heap* parentHeap = findParentHeap();

        this->~UnitHeap();
        if (parentHeap != NULL) {
            parentHeap->free(this);
        }
    }

    void* UnitHeap::alloc(u32 size, s32 align) {
        if (size > MEMGetMemBlockSizeForUnitHeap(mHeapHandle)) {
            return NULL;
        }
        return MEMAllocFromUnitHeap(mHeapHandle);
    }

    void UnitHeap::free(void* ptr) {
        MEMFreeToUnitHeap(mHeapHandle, ptr);
    }

    u32 UnitHeap::resizeForMBlock(void* ptr, u32 size) {
        return 0;
    }

    u32 UnitHeap::getAllocatableSize(s32 align) {
        return 0;
    }

    u32 UnitHeap::adjust() {
        return 0;
    }

    void UnitHeap::initAllocator(Allocator* allocator, s32 align) {
        MEMInitAllocatorForUnitHeap(allocator, mHeapHandle);
    }

    u32 UnitHeap::calcHeapSize(u32 unitSize, u32 unitCount, s32 align) {
        return MEMCalcHeapSizeForUnitHeap(unitSize, unitCount, align) + (sizeof(UnitHeap) - sizeof(MEMiUntHeapHead));
    }
}  // namespace EGG
