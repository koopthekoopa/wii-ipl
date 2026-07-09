#include <egg/core.h>
#include <egg/prim/eggBitFlag.h>

#include <nw4r/ut.h>

#include <revolution/mem.h>
#include <revolution/os.h>

namespace EGG {
    Heap* Heap::sCurrentHeap = NULL;

    nw4r::ut::List Heap::sHeapList;
    BOOL Heap::sIsHeapListInitialized = false;
    OSMutex Heap::sRootMutex;

    Heap* Heap::sAllocatableHeap = NULL;

    void Heap::initialize() {
        nw4r::ut::List_Init(&sHeapList, offsetof(Heap, mLink));
        OSInitMutex(&sRootMutex);
        sIsHeapListInitialized = TRUE;
    }

    Heap::Heap(MEMiHeapHead* pHeapHandle) : mHeapHandle(pHeapHandle), mpHeapBuffer(NULL), mpParentHeap(NULL) {
        nw4r::ut::List_Init(&mDisposerList, offsetof(Disposer, mLink));

        OSLockMutex(&sRootMutex);
        nw4r::ut::List_Append(&sHeapList, this);
        OSUnlockMutex(&sRootMutex);
    }

    Heap::~Heap() {
        OSLockMutex(&sRootMutex);
        nw4r::ut::List_Remove(&sHeapList, this);
        OSUnlockMutex(&sRootMutex);
    }

    void* Heap::alloc(u32 size, int align, Heap* heap) {
        void* ptr = NULL;

        if (sAllocatableHeap != NULL) {
            if (sCurrentHeap != NULL && heap == NULL) {
                heap = sCurrentHeap;
            }

            if (heap != sAllocatableHeap) {
                return NULL;
            }
        }

        if (heap != NULL) {
            return heap->alloc(size, align);
        }

        if (sCurrentHeap != NULL) {
            ptr = sCurrentHeap->alloc(size, align);

            if (ptr == NULL) {
                // stripped out EGG_PRINT
            }

            return ptr;
        }

        return NULL;
    }

    Heap* Heap::findHeap(MEMiHeapHead* pHeapHandle) {
        Heap* pContainHeap = NULL;
        OSLockMutex(&sRootMutex);

        if (sIsHeapListInitialized) {
            Heap* it = NULL;
            while ((it = (Heap*)nw4r::ut::List_GetNext(&sHeapList, it)) != NULL) {
                if (it->mHeapHandle == pHeapHandle) {
                    pContainHeap = it;
                    break;
                }
            }
        }

        OSUnlockMutex(&sRootMutex);
        return pContainHeap;
    }

    Heap* Heap::findParentHeap() {
        return mpParentHeap;
    }

    Heap* Heap::findContainHeap(const void* ptr) {
        Heap* pContainHeap = NULL;
        MEMiHeapHead* pHeapHandle = MEMFindContainHeap(ptr);

        if (pHeapHandle != NULL) {
            pContainHeap = findHeap(pHeapHandle);
        }

        return pContainHeap;
    }

    void Heap::free(void* ptr, Heap* heap) {
        if (heap == NULL) {
            MEMiHeapHead* pHeapHandle = MEMFindContainHeap(ptr);
            if (pHeapHandle == NULL) {
                return;
            }

            heap = findHeap(pHeapHandle);
            if (heap == NULL) {
                return;
            }
        }

        heap->free(ptr);
    }

    void Heap::dispose() {
        Disposer* disposer = NULL;

        while ((disposer = static_cast<Disposer*>(nw4r::ut::List_GetFirst(&mDisposerList))) != NULL) {
            disposer->~Disposer();
        }
    }

    void Heap::dump() {
        // stubbed out
    }

    Heap* Heap::becomeCurrentHeap() {
        OSLockMutex(&sRootMutex);

        Heap* pOldHeap = sCurrentHeap;
        sCurrentHeap = this;

        OSUnlockMutex(&sRootMutex);
        return pOldHeap;
    }

    Heap* Heap::_becomeCurrentHeapWithoutLock() {
        Heap* pOldHeap = sCurrentHeap;
        sCurrentHeap = this;

        return pOldHeap;
    }
}  // namespace EGG

void* operator new(size_t size) {
    return EGG::Heap::alloc(size, 4, NULL);
}

void* operator new(size_t size, int align) {
    return EGG::Heap::alloc(size, align, NULL);
}

void* operator new(size_t size, EGG::Heap* heap, int align) {
    return EGG::Heap::alloc(size, align, heap);
}

void* operator new[](size_t size) {
    return EGG::Heap::alloc(size, 4, NULL);
}

void* operator new[](size_t size, int align) {
    return EGG::Heap::alloc(size, align, NULL);
}

void* operator new[](size_t size, EGG::Heap* heap, int align) {
    return EGG::Heap::alloc(size, align, heap);
}

void operator delete(void* ptr) {
    EGG::Heap::free(ptr, NULL);
    // don't inline. (NO_INLINE did not want to work)
    (void)0;
    (void)0;
    (void)0;
    (void)0;
    (void)0;
}

void operator delete[](void* ptr) {
    EGG::Heap::free(ptr, NULL);
}
