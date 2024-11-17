#define UNIT_DOESNT_MATCH

#include <decomp.h>

#include "system/iplSystem.h"

#include <cstring>

namespace ipl {
    System::Arg System::smArg;

    System::Arg::Arg() {
        memset(&smArg, 0, sizeof(Arg));
        OSCreateAlarm(&mUnkAlarm);
    }
}


