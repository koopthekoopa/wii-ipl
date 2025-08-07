#ifndef EGG_CORE_EXPHEAP_H
#define EGG_CORE_EXPHEAP_H

#include <egg/core/eggHeap.h>

namespace EGG {
    class ExpHeap : public Heap {
        public:
            static ExpHeap* create(void* arena, u32 allocSize, u16 opt);
            static ExpHeap* create(u32 allocSize, Heap* parent, u16 opt);
    };
}

#endif // EGG_CORE_EXPHEAP_H
