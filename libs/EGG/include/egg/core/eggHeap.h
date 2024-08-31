#ifndef EGG_CORE_HEAP_H
#define EGG_CORE_HEAP_H

#include <revolution/types.h>

#include <size_t.h>

#include <egg/core/eggDisposer.h>

namespace EGG {
    class Heap : Disposer {
        // stub
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

#define BUFFER_HEAP DEFAULT_ALIGN
#define CLASS_HEAP  4

#endif // EGG_CORE_HEAP_H


