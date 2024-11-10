#ifndef EGG_CORE_HEAP_H
#define EGG_CORE_HEAP_H

#include <decomp.h>

#include <egg/core/eggDisposer.h>

#include <revolution/types.h>

#include <size_t.h>

namespace EGG {
    class Heap : Disposer {
        public:
            enum HeapKind {
                HEAP_EXPANDED = 1,
                HEAP_FRAME = 2
            };
            
            virtual ~Heap();                                            // 0x08

            virtual HeapKind    getHeapKind() const = 0;                // 0x0C

            virtual void        initAllocator(undefined4*, s32) = 0;    // 0x10

            virtual void*       alloc(u32 size, s32 align) = 0;         // 0x14
            virtual void        free(void*) = 0;                        // 0x18
    };
}

void *operator  new(size_t size);
void *operator  new(size_t size, int align);
void *operator  new(size_t size, EGG::Heap *pHeap, int align);

void *operator  new[](size_t size);
void *operator  new[](size_t size, int align);
void *operator  new[](size_t size, EGG::Heap *pHeap, int align);

void operator   delete(void *ptr);
void operator   delete[](void *ptr);

// errr
#define BUFFER_HEAP DEFAULT_ALIGN
#define CLASS_HEAP  4

#endif // EGG_CORE_HEAP_H


