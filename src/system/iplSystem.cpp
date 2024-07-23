#include "ipl.h"
#include <cstring>

namespace ipl {
    namespace System {
        ArgData smArg;
    
        /*
            @Address 0x81332C24
            @Size 0x48
        */
        Arg::Arg() {
            memset(&smArg, 0, 0x02D8);
            OSCreateAlarm(&unkAlarm);
        }
        
        /*
            @Address 0x81334B10
            @Size 0x18
        */
        bool isResetAcceptable() {
            return smArg.pad1[0x249] == 0;
        }
    }
}


