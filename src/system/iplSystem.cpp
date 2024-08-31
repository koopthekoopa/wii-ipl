#define UNIT_DOESNT_MATCH

#include <decomp.h>

#include "system/iplSystem.h"

#include <cstring>

namespace ipl {
    System::Arg System::smArg;  /** @note Address 0x81089008 (4.3J/U/E) Size 0x2D8 */
    
    /**
     * @note Address 0x81332C24
     * @note Size 0x48
    */
    System::Arg::Arg() {
        memset(&smArg, 0, sizeof(Arg));
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


