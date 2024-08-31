#include "system/iplChannelRsoThread.h"

#include <cstring>

#define STACK_SIZE  0x8000

namespace ipl {
    namespace channel {
        /**
         * @note Address: 0x813598BC (4.3U)
         * @note Size: 0x6C
         */
        RsoThread::RsoThread(EGG::Heap* pHeap) :
        mbStarted(false),
        mpCalcFunc(NULL) {
            mpStack = new(pHeap, BUFFER_HEAP) u8[STACK_SIZE];
        }

        /**
         * @note Address: 0x81359928 (4.3U)
         * @note Size: 0x70
         */
        RsoThread::~RsoThread() {
            delete[] mpStack;
        }

        /**
         * @note Address: 0x81359998 (4.3U)
         * @note Size: 0x48
         */
        void* RsoThread::Run() {
            if (mpCalcFunc != NULL) {
                mpCalcFunc();
            }

            mbStarted = false;

            return this;
        }

        /**
         * @note Address: 0x813599E0 (4.3U)
         * @note Size: 0x7C
         */
        void RsoThread::start() {
            if (!mbStarted) {
                mbStarted = true;

                memset((void*)mpStack, 0, STACK_SIZE);
                Create(mpStack, STACK_SIZE, 17);
            }
        }

        /**
         * @note Address: 0x81359A5C (4.3U)
         * @note Size: 0x14
         */
        void RsoThread::setCalcFunc(CalcFunc func) {
            mpCalcFunc = func;
            OSInitMessageQueue(&mCalcQueue, &mCalcMsg, 1);
        }
    }
}


