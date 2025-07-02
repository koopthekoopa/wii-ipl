#include <nw4r/snd/SoundHeap.h>
#include <nw4r/snd/DisposeCallbackManager.h>

namespace nw4r {
    namespace snd {
        SoundHeap::SoundHeap() {
            OSInitMutex(&mMutex);
        }

        SoundHeap::~SoundHeap() {
            mFrameHeap.Destroy();
        }

        bool SoundHeap::Create(void* base, u32 size) {
            return mFrameHeap.Create(base, size);
        }

        void SoundHeap::Destroy() {
            mFrameHeap.Destroy();
        }

        void* SoundHeap::Alloc(u32 size) {
            ut::detail::AutoLock<OSMutex> lock(mMutex);
            return mFrameHeap.Alloc(size, DisposeCallbackFunc, NULL);
        }

        void* SoundHeap::Alloc(u32 size, detail::FrameHeap::FreeCallback callback, void* callbackArg) {
            ut::detail::AutoLock<OSMutex> lock(mMutex);
            return mFrameHeap.Alloc(size, callback, callbackArg);
        }

        void SoundHeap::DisposeCallbackFunc(void* buffer, u32 size, void* callbackArg) {
            detail::DisposeCallbackManager::Dispose(buffer, size, callbackArg);
            detail::DisposeCallbackManager::DisposeWave(buffer, size, callbackArg);
        }
    }
}
