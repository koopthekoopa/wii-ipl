#include "system/iplChannelRsoThread.h"

#include <cstring>

#define STACK_SIZE  0x8000

namespace ipl {
    namespace channel {
        RsoThread::RsoThread(EGG::Heap* heap) :
        mbStarted(false),
        mpCalcFunc(NULL) {
            mpStack = new(heap, DEFAULT_ALIGN) u8[STACK_SIZE];
        }

        RsoThread::~RsoThread() {
            delete[] mpStack;
        }

        void* RsoThread::Run() {
            if (mpCalcFunc != NULL) {
                mpCalcFunc();
            }
            mbStarted = false;
            return this;
        }

        void RsoThread::start() {
            if (!mbStarted) {
                mbStarted = true;

                memset((void*)mpStack, 0, STACK_SIZE);
                Create(mpStack, STACK_SIZE, 17);
            }
        }
        void RsoThread::setCalcFunc(CalcFunc func) {
            mpCalcFunc = func;
            OSInitMessageQueue(&mCalcQueue, &mCalcMsg, 1);
        }
    }
}


