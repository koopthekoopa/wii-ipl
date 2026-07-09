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
        Heap* mpContainHeap;  // 0x04

    public:
        nw4r::ut::Link mLink;  // 0x08
    };
}  // namespace EGG

#endif  // EGG_CORE_DISPOSER_H
