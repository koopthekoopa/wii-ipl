#include "utility/iplThread.h"

namespace ipl {
    namespace utility {
        void* ut_thread::ThreadMain_(void* param) {
            ut_thread* pThread = ((ut_thread*)param);
            OSInitFastCast();
            return pThread->Run();
        }

        ut_thread::ut_thread() :
        mpStack(NULL),
        mStackSize(0),
        mPriority(16) {}

        ut_thread::~ut_thread() {}

        void ut_thread::Create(void* pStack, u32 stackSize, int priority, bool bStartThread) {
            mStackSize = stackSize;
            mPriority = priority;
            mpStack = pStack;

            OSCreateThread(&mThread, ThreadMain_, this, (u8*)mpStack + mStackSize, mStackSize, mPriority, 0);
            if (bStartThread) {
                OSResumeThread(&mThread);
            }
        }

        void ut_thread::Resume() {
            OSResumeThread(&mThread);
        }

        void ut_thread::Suspend() {
            OSSuspendThread(&mThread);
        }

        BOOL ut_thread::WaitForThreadExit() {
            BOOL result = FALSE;
            OSJoinThread(&mThread, (void*)&result);
            return result;
        }

        bool ut_thread::IsThreadTerminated() {
            return OSIsThreadTerminated(&mThread);
        }

        bool ut_thread::IsThreadSuspended() {
            return OSIsThreadSuspended(&mThread);
        }

        bool ut_thread::SetThreadPriority(int priority) {
            return OSSetThreadPriority(&mThread, priority);
        }
    }
}


