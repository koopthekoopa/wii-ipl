#ifndef NW4R_SND_SOUND_THREAD_H
#define NW4R_SND_SOUND_THREAD_H
#include <nw4r/snd/types.h>

#include <nw4r/snd/AxManager.h>

#include <nw4r/ut.h>

#include <revolution/OS.h>

namespace nw4r {
    namespace snd {
        namespace detail {
            class SoundThread {
                public:
                    class Callback {
                        public:
                            ut::LinkListNode    mLink;          // 0x00

                            virtual ~Callback() {}              // 0x08

                            virtual void    UpdatePlayer() {}   // 0x0C
                            virtual void    EndSoundFrame() {}  // 0x10
                    };
                    typedef ut::LinkList<Callback, offsetof(Callback, mLink)> CallbackList;

                    static SoundThread& GetInstance();

                    bool                Create(s32 priority);

                    OSMutex&            GetSoundMutex() { return mMutex; }

                private:
                    typedef enum ThreadMessage {
                        MSG_NONE = 0,
                        MSG_AX_CALLBACK,
                        MSG_SHUTDOWN,
                    } ThreadMessage;

                    static const int MSG_QUEUE_CAPACITY = 8;

                    SoundThread() :
                    mCreateFlag(false) {}

                    ~SoundThread() {}

                    void            SoundThreadProc();

                    static void     AxCallback();
                    static void*    SoundThreadFunc(void* arg);

                    void            Lock()      { OSLockMutex(&mMutex); }
                    void            Unlock()    { OSUnlockMutex(&mMutex); }

                private:
                    OSThread                    mThread;                        // 0x00
                    u64                         mThreadStack[1024];             // 0x318
                    OSThreadQueue               mThreadQueue;                   // 0x2318

                    mutable OSMutex             mMutex;                         // 0x2320

                    OSMessageQueue              mMsgQueue;                      // 0x2338
                    OSMessage                   mMsgBuffer[MSG_QUEUE_CAPACITY]; // 0x2358

                    AxManager::CallbackListNode mAxCallbackNode;                // 0x2378
                    CallbackList                mCallbackList;                  // 0x2384

                    u32                         mProcessTick;                   // 0x2390
                    bool                        mCreateFlag;                    // 0x2394
            };
        }
    }
}

#endif
