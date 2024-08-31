#include "utility/iplThread.h"

namespace ipl {
    namespace utility {
        /**
         * @note Address: 0x81364B88 (4.3U)
         * @note Size: 0x48
         */
        void* ut_thread::ThreadMain_(void* param) {
            ut_thread* pThread = reinterpret_cast<ut_thread*>(param);
            
            OSInitFastCast();
            return pThread->Run();
        }

        /**
         * @note Address: 0x81364BD0 (4.3U)
         * @note Size: 0x24
         */
        ut_thread::ut_thread() :
        mpStack(NULL),
        mStackSize(0),
        mPriority(16) {}

        /**
         * @note Address: 0x81364BF4 (4.3U)
         * @note Size: 0x40
         */
        ut_thread::~ut_thread() {}

        /**
         * @note Address: 0x81364C34 (4.3U)
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
         * @note Address: 0x81364CB0 (4.3U)
         * @note Size: 0x8
         */
        void ut_thread::Resume() {
            OSResumeThread(&mThread);
        }

        /**
         * @note Address: 0x81364CB8 (4.3U)
         * @note Size: 0x8
         */
        void ut_thread::Suspend() {
            OSSuspendThread(&mThread);
        }

        /**
         * @note Address: 0x81364CC0 (4.3U)
         * @note Size: 0x34
         */
        BOOL ut_thread::WaitForThreadExit() {
            BOOL result = FALSE;
            OSJoinThread(&mThread, (void*)&result);
            return result;
        }

        /**
         * @note Address: 0x81364CF4 (4.3U)
         * @note Size: 0x2C
         */
        bool ut_thread::IsThreadTerminated() {
            return OSIsThreadTerminated(&mThread);
        }

        /**
         * @note Address: 0x81364D20 (4.3U)
         * @note Size: 0x2C
         */
        bool ut_thread::IsThreadSuspended() {
            return OSIsThreadSuspended(&mThread);
        }
        
        /**
         * @note Address: 0x81364D4C (4.3U)
         * @note Size: 0x2C
         */
        bool ut_thread::SetThreadPriority(int priority) {
            return OSSetThreadPriority(&mThread, priority);
        }
    }
}


