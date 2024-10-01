#include "iplwww/www_thread.h"

#include "iplwww/www_print.h"

namespace ext_ead {
    namespace www {
        /**
         * @note Address: 0x8136E6B4 (4.3U)
         * @note Size: 0x48
         */
        void* ut_thread::ThreadMain_(void* param) {
            ut_thread* pThread = reinterpret_cast<ut_thread*>(param);
            
            OSInitFastCast();
            return pThread->Run();
        }

        /**
         * @note Address: 0x8136E6FC (4.3U)
         * @note Size: 0x24
         */
        ut_thread::ut_thread() :
        mpStack(NULL),
        mStackSize(0),
        mPriority(16) {}

        /**
         * @note Address: 0x8136E720 (4.3U)
         * @note Size: 0x40
         */
        ut_thread::~ut_thread() {}

        /**
         * @note Address: 0x8136E760 (4.3U)
         * @note Size: 0x7C
         */
        void ut_thread::Create(void* pStack, u32 stackSize, int priority, bool bStartThread) {
            mStackSize = stackSize;
            mPriority = priority;
            mpStack = pStack;

            OSCreateThread(&mThread, ThreadMain_, this, (u8*)mpStack + mStackSize, mStackSize, mPriority, 0);
            if (bStartThread) {
                OSResumeThread(&mThread);
            }
        }

        /**
         * @note Address: 0x8136E7DC (4.3U)
         * @note Size: 0x8
         */
        void ut_thread::Resume() {
            OSResumeThread(&mThread);
        }

        /**
         * @note Address: 0x8136E7E4 (4.3U)
         * @note Size: 0x8
         */
        void ut_thread::Suspend() {
            OSSuspendThread(&mThread);
        }

        /**
         * @note Address: 0x8136E7EC (4.3U)
         * @note Size: 0x50
         */
        BOOL ut_thread::WaitForThreadExit() {
            BOOL result = FALSE;
            if (OSJoinThread(&mThread, (void*)&result)) {
                print::IPLWWWReport(3, "ut_thread: joined successfully.\n");
            }
            return result;
        }

        /**
         * @note Address: 0x8136E83C (4.3U)
         * @note Size: 0x2C
         */
        bool ut_thread::IsThreadTerminated() {
            return OSIsThreadTerminated(&mThread);
        }

        /**
         * @note Address: 0x8136E868 (4.3U)
         * @note Size: 0x2C
         */
        bool ut_thread::IsThreadSuspended() {
            return OSIsThreadSuspended(&mThread);
        }
    }
}


