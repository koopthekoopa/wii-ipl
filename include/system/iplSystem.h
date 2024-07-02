#ifndef IPL_SYSTEM_H
#define IPL_SYSTEM_H

#include <revolution.h>

namespace ipl {
    namespace System {
        extern u8 smArg[0x02D8];
        
        class Arg {
            public:
                Arg();
            
            private:
                u8 unkData[0x01E0];     // 0x0000
                
                OSAlarm unkAlarm;       // 0x01E0
        };
        
        void init(int argc, char** argv);
        void run();
        
        GXRenderModeObj* getRenderModeObj(); // STUB
    }
}

#endif // IPL_SYSTEM_H


