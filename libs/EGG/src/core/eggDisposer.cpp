#include "egg/core/eggDisposer.h"

#include "egg/core/eggHeap.h"

namespace EGG {
    Disposer::Disposer() {
        mpHeap = Heap::findContainHeap(this);
        if (mpHeap) {
            mpHeap->appendDisposer(this);
        }
    }

    Disposer::~Disposer() {
        if (mpHeap) {
            mpHeap->removeDisposer(this);
        }
    }

}  // namespace EGG
