#ifndef EGG_CORE_FRM_HEAP_H
#define EGG_CORE_FRM_HEAP_H

#include <egg/core/eggHeap.h>

namespace EGG {
    class FrmHeap : public Heap {
        public:
            static FrmHeap* create(u32, EGG::Heap*, u16);
    };
}

#endif // EGG_CORE_FRM_HEAP_H
