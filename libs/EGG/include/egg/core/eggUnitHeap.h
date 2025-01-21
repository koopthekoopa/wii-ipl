#ifndef EGG_CORE_UNIT_HEAP_H
#define EGG_CORE_UNIT_HEAP_H

#include <egg/core/eggHeap.h>

namespace EGG {
    class UnitHeap : public Heap {
        public:
            static int          calcHeapSize(u32, u32, long);
            static UnitHeap*    create(u32, u32, EGG::Heap*, long, u16);
    };
}

#endif // EGG_CORE_UNIT_HEAP_H
