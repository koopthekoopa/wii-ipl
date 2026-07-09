#ifndef EGG_CORE_EXPHEAP_H
#define EGG_CORE_EXPHEAP_H

#include <egg/core/eggHeap.h>

namespace EGG {
    class Allocator;
    class ExpHeap : public Heap {
    public:
        static ExpHeap* create(void* heapStart, u32 size, u16 opt = 0) NO_INLINE;
        static ExpHeap* create(u32 size, Heap* parentHeap, u16 opt = 0);

        explicit ExpHeap(MEMiHeapHead* heapHandle);
        virtual ~ExpHeap();  // 0x08

        virtual EHeapKind getHeapKind() const { return HEAP_KIND_EXPAND; }  // 0x0C

        virtual void initAllocator(Allocator* allocator,
                                   s32 align = 4);  // 0x10

        virtual void* alloc(u32 size, s32 align = 4);  // 0x14
        virtual void free(void* ptr);                  // 0x18
        virtual void destroy();                        // 0x1C

        virtual u32 resizeForMBlock(void* ptr, u32 size);  // 0x20
        virtual u32 getAllocatableSize(s32 align = 4);     // 0x24
        virtual u32 adjust();                              // 0x28

        void freeAll();
    };
}  // namespace EGG

#endif  // EGG_CORE_EXPHEAP_H
