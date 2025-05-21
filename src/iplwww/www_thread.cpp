#include "iplwww/www_thread.h"

#include "iplwww/www_print.h"

namespace ext_ead {
    namespace www {
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
            if (OSJoinThread(&mThread, (void*)&result)) {
                print::IPLWWWReport(3, "ut_thread: joined successfully.\n");
            }
            return result;
        }

        bool ut_thread::IsThreadTerminated() {
            return OSIsThreadTerminated(&mThread);
        }

        bool ut_thread::IsThreadSuspended() {
            return OSIsThreadSuspended(&mThread);
        }
    }
}
