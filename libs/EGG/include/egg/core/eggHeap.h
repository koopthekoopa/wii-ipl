#ifndef EGG_CORE_HEAP_H
#define EGG_CORE_HEAP_H

#include <decomp.h>

#include <egg/core/eggDisposer.h>

#include <revolution/types.h>

#include <cstddef>

namespace EGG {
    class Allocator;
    class Heap : Disposer {
        public:
            typedef enum HeapKind {
                HEAP_EXPANDED = 1,
                HEAP_FRAME = 2
            } HeapKind;
            
            virtual ~Heap();                                                        // 0x08

            virtual HeapKind    getHeapKind() const = 0;                            // 0x0C

            virtual void        initAllocator(Allocator* allocator, s32 align) = 0; // 0x10

            virtual void*       alloc(u32 size, s32 align) = 0;                     // 0x14
            virtual void        free(void* buffer) = 0;                             // 0x18

            virtual void        destroy() = 0;                                      // 0x1C
            
            virtual void        resizeForMBlock(void* block, u32 size) = 0;         // 0x20
            
            virtual u32         getAllocatableSize(long align) = 0;                 // 0x24

            virtual void        adjust() = 0;                                       // 0x28

            void                becomeCurrentHeap();
    };
}

void* operator  new(size_t size);
void* operator  new(size_t size, int align);
void* operator  new(size_t size, EGG::Heap *heap, int align);

void* operator  new[](size_t size);
void* operator  new[](size_t size, int align);
void* operator  new[](size_t size, EGG::Heap *heap, int align);

void operator   delete(void* ptr);
void operator   delete[](void* ptr);

// errr
#define BUFFER_HEAP DEFAULT_ALIGN
#define CLASS_HEAP  4

#endif // EGG_CORE_HEAP_H
