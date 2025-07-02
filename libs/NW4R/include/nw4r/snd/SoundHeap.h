#ifndef NW4R_SND_SOUND_HEAP_H
#define NW4R_SND_SOUND_HEAP_H
#include <nw4r/snd/types.h>

#include <nw4r/snd/FrameHeap.h>
#include <nw4r/snd/SoundMemoryAllocatable.h>

#include <nw4r/ut.h>

#include <revolution/os.h>

namespace nw4r {
    namespace snd {
        class SoundHeap : public SoundMemoryAllocatable {
            public:
                SoundHeap();
                virtual ~SoundHeap(); // 0x08

                virtual void*   Alloc(u32 size);    // 0x0C
                void*           Alloc(u32 size, detail::FrameHeap::FreeCallback callback, void* callbackArg);

                bool            Create(void* base, u32 size);
                void            Destroy();

                void Clear() {
                    ut::AutoMutexLock lock(mMutex);
                    mFrameHeap.Clear();
                }

                int             SaveState();
                void            LoadState(int id);

                bool            IsValid()   { return mFrameHeap.IsValid(); }

                int GetCurrentLevel() const {
                    ut::detail::AutoLock<OSMutex> lock(mMutex);
                    return mFrameHeap.GetCurrentLevel();
                }

                u32 GetFreeSize() const {
                    ut::detail::AutoLock<OSMutex> lock(mMutex);
                    return mFrameHeap.GetFreeSize();
                }

            private:
                static void DisposeCallbackFunc(void* buffer, u32 size, void* callbackArg);

                mutable OSMutex     mMutex;     // 0x00
                detail::FrameHeap   mFrameHeap; // 0x1C
        };
    }
}

#endif
