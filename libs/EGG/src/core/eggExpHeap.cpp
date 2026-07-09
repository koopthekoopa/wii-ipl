#include <egg/core.h>

#include <nw4r/ut.h>

#include <revolution/mem.h>

#include <new>

namespace EGG {
    ExpHeap::ExpHeap(MEMiHeapHead* heapHandle) : Heap(heapHandle) {
    }

    ExpHeap::~ExpHeap() {
        dispose();
        MEMDestroyExpHeap(mHeapHandle);
    }

    ExpHeap* ExpHeap::create(void* heapStart, u32 size, u16 opt) {
        ExpHeap* heap = NULL;

        void* pHeapBuffer = heapStart;
        void* pHeapEnd = PTR_ROUNDDOWN(addOffset(heapStart, size), 4);

        heapStart = PTR_ROUNDUP(heapStart, 4);

        if (heapStart > pHeapEnd || nw4r::ut::GetOffsetFromPtr(heapStart, pHeapEnd) < sizeof(ExpHeap) + 4) {
            return NULL;
        }

        MEMiHeapHead* heapHandle =
            MEMCreateExpHeapEx(addOffset(heapStart, sizeof(ExpHeap)), nw4r::ut::GetOffsetFromPtr(heapStart, pHeapEnd) - sizeof(ExpHeap), opt);

        if (heapHandle != NULL) {
            heap = new (heapStart) ExpHeap(heapHandle);
            heap->registerHeapBuffer(pHeapBuffer);
        }

        return heap;
    }

    ExpHeap* ExpHeap::create(u32 size, Heap* pParentHeap, u16 opt) {
        ExpHeap* heap = NULL;

        if (pParentHeap == NULL) {
            pParentHeap = getCurrentHeap();
        }

        if (size == 0xFFFFFFFF) {
            size = pParentHeap->getAllocatableSize();
        }

        void* heapStart = pParentHeap->alloc(size);
        if (heapStart != NULL) {
            heap = create(heapStart, size, opt);
            if (heap != NULL) {
                heap->mpParentHeap = pParentHeap;
            } else {
                pParentHeap->free(heapStart);
            }
        }

        return heap;
    }

    void ExpHeap::destroy() {
        Heap* pParentHeap = findParentHeap();

        this->~ExpHeap();
        if (pParentHeap != NULL) {
            pParentHeap->free(this);
        }
    }

    void* ExpHeap::alloc(u32 size, s32 align) {
        return MEMAllocFromExpHeapEx(mHeapHandle, size, align);
    }

    void ExpHeap::free(void* pBlock) {
        MEMFreeToExpHeap(mHeapHandle, pBlock);
    }

    u32 ExpHeap::resizeForMBlock(void* pBlock, u32 size) {
        return MEMResizeForMBlockExpHeap(mHeapHandle, pBlock, size);
    }

    u32 ExpHeap::getAllocatableSize(s32 align) {
        return MEMGetAllocatableSizeForExpHeapEx(mHeapHandle, align);
    }

    u32 ExpHeap::adjust() {
        u32 adjustSize = MEMAdjustExpHeap(mHeapHandle) + sizeof(ExpHeap);

        if (adjustSize != 0) {
            Heap* parentHeap = findParentHeap();
            parentHeap->resizeForMBlock(mpHeapBuffer, adjustSize);
        }

        return adjustSize;
    }

    void ExpHeap::initAllocator(Allocator* allocator, s32 align) {
        MEMInitAllocatorForExpHeap(allocator, mHeapHandle, align);
    }

    namespace {
        void free_all_visitor(void* ptr, MEMiHeapHead* heapHandle, u32 unk) {
            MEMFreeToExpHeap(heapHandle, ptr);
        }
    }  // namespace

    void ExpHeap::freeAll() {
        dispose();
        MEMVisitAllocatedForExpHeap(mHeapHandle, free_all_visitor, 0);
    }
}  // namespace EGG
