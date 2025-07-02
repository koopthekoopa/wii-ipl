#ifndef NW4R_SND_TASK_THREAD_H
#define NW4R_SND_TASK_THREAD_H

#include <nw4r/snd/types.h>

#include <nw4r/ut.h>

#include <revolution/os.h>

namespace nw4r {
    namespace snd {
        namespace detail {
            class TaskThread {
                public:
                    TaskThread() :
                    mCreateFlag(false) {}

                    bool                Create(s32 priority);
                    void                Destroy();

                    void                SendWakeupMessage();

                    void                ThreadProc();

                    static void*        ThreadFunc(void* arg);

                    static TaskThread&  GetInstance();

                    enum {
                        MSG_NONE = 0,
                        MSG_EXECUTE,
                        MSG_DONE,
                    };

                private:
                    static const int MSG_QUEUE_CAPACITY = 8;

                    OSThread        mThread;                            // 0x00
                    u64             mThreadStack[THREAD_STACK_SIZE];    // 0x318
                    OSThreadQueue   mThreadQueue;                       // 0x2318

                    OSMessageQueue  mMsgQueue;                          // 0x2320
                    OSMessage       mMsgBuffer[MSG_QUEUE_CAPACITY];     // 0x2340

                    bool            mCreateFlag;                        // 0x2360
                    u8              mPadding[3];                        // 0x2361
            };
        }
    }
}

#endif // NW4R_SND_TASK_THREAD_H
