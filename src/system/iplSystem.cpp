#include "system/iplSystem.h"

#include <cstring>

namespace ipl {
    /**
     * @note Address 0x81089008
     * @note Size 0x2D8
    */
    System::ArgData System::smArg;
    
    /**
     * @note Address 0x81332C24
     * @note Size 0x48
    */
    System::Arg::Arg() {
        memset(&smArg, 0, sizeof(ArgData));
        OSCreateAlarm(&mUnkAlarm);
    }
    
    /**
     * @note Address 0x81334B10
     * @note Size 0x18
    */
    bool System::isResetAcceptable() {
        return !smArg.mbResetDisabled;
    }
}


