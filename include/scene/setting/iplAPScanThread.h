#ifndef IPL_AP_SCAN_THREAD_H
#define IPL_AP_SCAN_THREAD_H

#include <egg/core.h>

extern "C" {
#include <revolution/wd.h>
}

#include "utility/iplThread.h"

namespace ipl {
    namespace scene {
        class APScanThread : public utility::ut_thread {
        public:
            APScanThread();

            virtual ~APScanThread();      // 0x08
            virtual void* Run();          // 0x0C
            virtual void unk_0x2C() = 0;  // 0x2C

            void setResultData(unsigned short* buffer);
            void setParam();

        private:
            WDScanParam mScanParam;  // 0x32C
            u8* mpScanBuffer;        // 0x37C
        };
    }  // namespace scene
}  // namespace ipl

#endif  // IPL_AP_SCAN_THREAD_H
