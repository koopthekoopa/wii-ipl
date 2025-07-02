#include <nw4r/snd/TaskThread.h>
#include <nw4r/snd/TaskManager.h>

namespace nw4r {
    namespace snd {
        namespace detail {
            TaskThread& TaskThread::GetInstance() {
                static TaskThread instance;
                return instance;
            }

            bool TaskThread::Create(s32 threadPrio) {
                if (mCreateFlag) {
                    return true;
                }

                mCreateFlag = true;

                OSInitThreadQueue(&mThreadQueue);

                BOOL result = OSCreateThread(&mThread, ThreadFunc, &GetInstance(),
                                            mThreadStack + THREAD_STACK_SIZE,
                                            THREAD_STACK_SIZE * 8,
                                            threadPrio, 0);
                if (result) {
                    OSResumeThread(&mThread);
                }

                return result;
            }

            void TaskThread::SendWakeupMessage() {
                OSSendMessage(&mMsgQueue, (OSMessage)MSG_EXECUTE, 0);
            }

            void* TaskThread::ThreadFunc(void* arg) {
                TaskThread* thread = static_cast<TaskThread*>(arg);
                OSInitMessageQueue(&thread->mMsgQueue, thread->mMsgBuffer, 8);

                thread->ThreadProc();

                return NULL;
            }

            void TaskThread::ThreadProc() {
                OSMessage msg;

                while (true) {
                    OSReceiveMessage(&mMsgQueue, &msg, 1);

                    if (reinterpret_cast<u32>(msg) == MSG_EXECUTE) {
                        TaskManager::GetInstance().Execute();
                    }
                    else if (reinterpret_cast<u32>(msg) == MSG_DONE) {
                        return;
                    }
                }
            }
        }
    }
}
