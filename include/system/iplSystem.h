#ifndef IPL_SYSTEM_H
#define IPL_SYSTEM_H

#include <revolution.h>

namespace ipl {
    namespace System {
        static u8 smArg[0x02D8];
        
        class Arg {
            public:
                Arg();
            
            private:
                u8 unkData[0x01E0]; // 0x0000
                
                OSAlarm unkAlarm; // 0x01E0
        };
    }
}

#endif // IPL_SYSTEM_H


