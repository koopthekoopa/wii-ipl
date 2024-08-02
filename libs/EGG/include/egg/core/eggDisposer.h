#ifndef EGG_CORE_DISPOSER_H
#define EGG_CORE_DISPOSER_H

#include <nw4r/ut/list.h>

namespace EGG {
    class Heap;

    class Disposer {
        public:
            Disposer();
            virtual ~Disposer();
        
        private:
            Heap*           mpHeap; // 0x00
            nw4r::ut::Link  mLink;  // 0x04
    };
}

#endif // EGG_CORE_DISPOSER_H


