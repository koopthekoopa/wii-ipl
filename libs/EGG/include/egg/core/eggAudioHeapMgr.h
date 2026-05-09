#ifndef EGG_CORE_AUDIO_HEAP_MGR_H
#define EGG_CORE_AUDIO_HEAP_MGR_H

#include <egg/core/eggAllocator.h>

#include <nw4r/snd/SoundHeap.h>

namespace EGG {
    class SoundHeapMgr {
    public:
        SoundHeapMgr() {}
        virtual ~SoundHeapMgr() {
            destroySoundHeap();
        }

        void createSoundHeap(Allocator* pAllocator, u32 size);
        void destroySoundHeap();

    protected:
        nw4r::snd::SoundHeap mHeap;  // 0x04
    };
}  // namespace EGG

#endif  // EGG_CORE_AUDIO_HEAP_MGR_H
