#ifndef EGG_CORE_ALLOCATOR_H
#define EGG_CORE_ALLOCATOR_H

#include <egg/core/eggHeap.h>

#include <revolution/mem/allocator.h>

namespace EGG {
    class Allocator : public MEMAllocator {
    public:
        Allocator(Heap* heap, s32 align = 32);
        virtual ~Allocator();

        virtual void* alloc(u32 size);
        virtual void free(void* ptr);

        operator MEMAllocator*() { return this; }
    };
}  // namespace EGG

#endif  // EGG_CORE_ALLOCATOR_H
