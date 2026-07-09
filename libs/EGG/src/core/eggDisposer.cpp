#include <egg/core.h>

namespace EGG {
    Disposer::Disposer() {
        mpContainHeap = Heap::findContainHeap(this);

        if (mpContainHeap != NULL) {
            mpContainHeap->appendDisposer(this);
        }
    }

    Disposer::~Disposer() {
        if (mpContainHeap != NULL) {
            mpContainHeap->removeDisposer(this);
        }
    }
}  // namespace EGG
