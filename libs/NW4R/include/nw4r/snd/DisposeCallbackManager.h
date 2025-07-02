#ifndef NW4R_SND_DISPOSE_CALLBACK_MANAGER_H
#define NW4R_SND_DISPOSE_CALLBACK_MANAGER_H

#include <nw4r/snd/DisposeCallback.h>

namespace nw4r {
    namespace snd {
        namespace detail {
            class DisposeCallbackManager {
                public:
                    static DisposeCallbackManager& GetInstance();

                    void RegisterDisposeCallback(DisposeCallback* callback);
                    void UnregisterDisposeCallback(DisposeCallback* callback);

                    static void Dispose(void* mem, u32 size, void* arg);
                    static void DisposeWave(void* mem, u32 size, void* arg);

                private:
                    DisposeCallbackManager();

                    DisposeCallbackList mCallbackList;  // 0x00
            };
        }
    }
}

#endif // NW4R_SND_DISPOSE_CALLBACK_MANAGER_H
