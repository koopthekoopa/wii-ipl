#ifndef IPL_CHANNEL_RSO_THREAD_H
#define IPL_CHANNEL_RSO_THREAD_H

#include "utility/iplThread.h"

#include <egg/core.h>

typedef void (*CalcFunc)();

namespace ipl {
    namespace channel {
        class RsoThread : utility::ut_thread {
            public:
                /** @param pHeap The work heap used. */
                RsoThread(EGG::Heap* pHeap);
                virtual         ~RsoThread();   // 0x08
                
                virtual void*   Run();          // 0x0C

                /** @brief Start the Banner RSO Thread. */
                void            start();
                /** @param func The new loop function. */
                void            setCalcFunc(CalcFunc func);
            
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


