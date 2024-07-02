#ifndef EGG_DISPOSER_H
#define EGG_DISPOSER_H

#include <nw4r/ut/list.h>

namespace EGG {
    class Heap;

    class Disposer {
        public:
            Disposer();
            virtual ~Disposer();
        
        private:
            Heap* mpHeap;
            nw4r::ut::Link mLink;
    };
}

#endif // EGG_DISPOSER_H


