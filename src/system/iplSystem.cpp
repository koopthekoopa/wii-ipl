#include "ipl.h"
#include <cstring>

namespace ipl {
    namespace System {
        /*
            @Address 0x81332C24
            @Size 0x48
        */
        Arg::Arg() {
            memset(smArg, 0, 0x02D8);
            OSCreateAlarm(&unkAlarm);
        }
        
        /*
            @Address 0x81334B10
            @Size 0x18
        */
        bool isResetAcceptable() {
            return smArg[0x02B9] == 0;
        }
    }
}


