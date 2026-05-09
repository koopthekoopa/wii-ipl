#include <egg/core/eggAudioHeapMgr.h>

namespace EGG {

    void SoundHeapMgr::createSoundHeap(Allocator* pAllocator, u32 size) {
        if (mHeap.IsValid()) {
            return;
        }
        void* buffer = pAllocator->alloc(size);
        mHeap.Create(buffer, size);
    }

    void SoundHeapMgr::destroySoundHeap() {
        mHeap.Destroy();
    }

}  // namespace EGG
