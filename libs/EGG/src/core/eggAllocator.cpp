#include <egg/core.h>

namespace EGG {
    Allocator::Allocator(Heap* heap, s32 align) {
        heap->initAllocator(this, align);
    }

    Allocator::~Allocator() {
    }

    void* Allocator::alloc(u32 size) {
        return MEMAllocFromAllocator(this, size);
    }

    void Allocator::free(void* ptr) {
        MEMFreeToAllocator(this, ptr);
    }
}  // namespace EGG
