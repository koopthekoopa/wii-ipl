#ifndef EGG_CORE_UNIT_HEAP_H
#define EGG_CORE_UNIT_HEAP_H

#include <egg/core/eggHeap.h>

#include <revolution/mem/unitHeap.h>

namespace EGG {
    class Allocator;
    class UnitHeap : public Heap, private MEMiUntHeapHead {
    public:
        static UnitHeap* create(void* heapStart, u32 size, u32 unitSize, s32 align, u16 opt = 0) NO_INLINE;
        static UnitHeap* create(u32 size, u32 unitSize, EGG::Heap* parentHeap, s32 align, u16 opt = 0);

        UnitHeap(MEMiHeapHead* heapHandle);
        ~UnitHeap() override;

        virtual EHeapKind getHeapKind() const override { return HEAP_KIND_UNIT; }  // 0x0C

        virtual void initAllocator(Allocator* allocator, s32 align = 4) override;  // 0x10

        virtual void* alloc(u32 size, s32 align = 4) override;
        virtual void free(void* block) override;
        virtual void destroy() override;

        u32 resizeForMBlock(void* ptr, u32 size) override;
        u32 getAllocatableSize(s32 align = 4) override;
        u32 adjust() override;

        static u32 calcHeapSize(u32 unitSize, u32 unitCount, s32 align);
    };
}  // namespace EGG

#endif  // EGG_CORE_UNIT_HEAP_H
