#ifndef EGG_HEAP_H
#define EGG_HEAP_H

#include <size_t.h>
#include <egg/core/eggDisposer.h>

namespace EGG {
    class Heap : Disposer {
        
    };
}

void *operator new[](size_t size, EGG::Heap *pHeap, int align);
void operator delete(void *ptr);
void operator delete[](void *ptr);

#endif // EGG_HEAP_H


