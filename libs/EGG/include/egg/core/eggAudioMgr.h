#ifndef EGG_AUDIO_MGR_H
#define EGG_AUDIO_MGR_H

#include <revolution/types.h>

#include <egg/core/eggAudioArcPlayerMgr.h>
#include <egg/core/eggAudioHeapMgr.h>

namespace EGG {
    class Heap;

    class IAudioMgr {
    public:
        struct Arg {
            Heap* pHeap;  // 0x00
            undefined4 unk_0x04;
            s32 soundThreadPrio;  // 0x08
            s32 dvdThreadPrio;    // 0x0C

            Arg() NO_INLINE {
                pHeap = NULL;

                soundThreadPrio = nw4r::snd::SoundSystem::DEFAULT_SOUND_THREAD_PRIORITY;
                dvdThreadPrio = nw4r::snd::SoundSystem::DEFAULT_DVD_THREAD_PRIORITY;

                unk_0x04 = 0;
            }
        };

    public:
        virtual void initialize(Arg* pArg) {}  // 0x08
        virtual void calc() = 0;               // 0x0C
    };

    class SimpleAudioMgr : public IAudioMgr, public SoundHeapMgr, public ArcPlayer {
    public:
        struct SimpleAudioMgrArg : IAudioMgr::Arg {
            static const u32 DEFAULT_SOUND_HEAP_SIZE = 0x8CA000;

            u32 soundHeapSize;  // 0x10
            u32 unk_0x14;

            SimpleAudioMgrArg();
        };

    public:
        SimpleAudioMgr();
        virtual ~SimpleAudioMgr();  // 0x08

        virtual void initialize(Arg* pArg);  // 0x0C
        virtual void calc();                 // 0x10
    };
}  // namespace EGG

#endif
