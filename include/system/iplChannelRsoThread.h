#ifndef IPL_CHANNEL_RSO_THREAD_H
#define IPL_CHANNEL_RSO_THREAD_H

#include "utility/iplThread.h"

#include <egg/core.h>

namespace ipl {
    namespace channel {
        typedef void (*CalcFunc)();
        
        class RsoThread : public utility::ut_thread {
            public:
                /** @param heap The work heap used. */
                RsoThread(EGG::Heap* heap);
                virtual         ~RsoThread();   // 0x08
                
                virtual void*   Run();          // 0x0C

                void            start();
                /** @param func The new loop function. */
                void            setCalcFunc(CalcFunc func);

                OSMessageQueue* getCalcQueue() { return &mCalcQueue; }
            
            private:
                u8*             mpStack;        // 0x32C
                
                bool            mbStarted;      // 0x330

                CalcFunc        mpCalcFunc;     // 0x334
                OSMessageQueue  mCalcQueue;     // 0x338
                OSMessage       mCalcMsg;       // 0x358
        };
    }
}

#endif // IPL_CHANNEL_RSO_THREAD_H


