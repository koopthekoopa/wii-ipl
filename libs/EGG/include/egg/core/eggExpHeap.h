#ifndef EGG_CORE_EXPHEAP_H
#define EGG_CORE_EXPHEAP_H

#include <egg/core/eggHeap.h>

namespace EGG {
    class ExpHeap : public Heap {
        public:
            static ExpHeap* create(void*, u32, u16);
            static ExpHeap* create(u32, Heap*, u16);
    };
}

#endif // EGG_CORE_EXPHEAP_H
