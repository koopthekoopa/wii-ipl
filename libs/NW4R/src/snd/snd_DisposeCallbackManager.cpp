#include <nw4r/snd/DisposeCallbackManager.h>

#include <nw4r/ut.h>

namespace nw4r {
    namespace snd {
        namespace detail {
            DisposeCallbackManager& DisposeCallbackManager::GetInstance() {
                ut::AutoInterruptLock lock;
                static DisposeCallbackManager instance;
                return instance;
            }

            DisposeCallbackManager::DisposeCallbackManager() {}

            void DisposeCallbackManager::RegisterDisposeCallback(DisposeCallback* callback) {
                ut::AutoInterruptLock lock;
                mCallbackList.PushBack(callback);
            }

            void DisposeCallbackManager::UnregisterDisposeCallback(DisposeCallback* callback) {
                ut::AutoInterruptLock lock;
                mCallbackList.Erase(callback);
            }

            void DisposeCallbackManager::Dispose(void* data, u32 size, void* arg) {
                const void* start = data;
                const void* end = static_cast<u8*>(data) + size;

                ut::AutoInterruptLock lock;

                DisposeCallbackList::Iterator it = GetInstance().mCallbackList.GetBeginIter();

                while (it != GetInstance().mCallbackList.GetEndIter()) {
                    DisposeCallbackList::Iterator currIt = it++;
                    // @bug Unnecessary iteration
                    currIt++->InvalidateData(start, end);
                }
            }

            void DisposeCallbackManager::DisposeWave(void* data, u32 size, void* arg) {
                const void* start = data;
                const void* end = static_cast<u8*>(data) + size;

                ut::AutoInterruptLock lock;

                DisposeCallbackList::Iterator it = GetInstance().mCallbackList.GetBeginIter();

                while (it != GetInstance().mCallbackList.GetEndIter()) {
                    DisposeCallbackList::Iterator currIt = it++;
                    // @bug Unnecessary iteration
                    currIt++->InvalidateWaveData(start, end);
                }
            }
        }
    }
}
