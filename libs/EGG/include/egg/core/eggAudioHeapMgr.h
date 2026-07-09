#ifndef EGG_AUDIO_HEAP_MGR_H
#define EGG_AUDIO_HEAP_MGR_H

#include <egg/core/eggAllocator.h>
#include <egg/core/eggHeap.h>

#include <nw4r/snd.h>

#include <revolution/os.h>

namespace EGG {
    // Forward declarations
    class Allocator;
    class Heap;

    class SoundHeapMgr {
    public:
        SoundHeapMgr() NO_INLINE {}

        ~SoundHeapMgr() { destroySoundHeap(); }

        virtual bool loadState(s32 id) {
            s32 level = mHeap.GetCurrentLevel();

            if (id > 0 && level >= id) {
                mHeap.LoadState(id);
                return true;
            }

            return false;
        }  // 0x08

        virtual s32 getCurrentLevel() { return mHeap.GetCurrentLevel(); }  // 0x0C

        s32 saveState() { return mHeap.SaveState(); }

        nw4r::snd::SoundHeap& getSoundHeap() { return mHeap; }

        void createSoundHeap(Heap* pHeap, u32 size);
        void createSoundHeap(Allocator* pAllocator, u32 size);
        void destroySoundHeap();

    protected:
        nw4r::snd::SoundHeap mHeap;  // 0x04
    };
}  // namespace EGG

#endif  // EGG_AUDIO_HEAP_MGR_H
