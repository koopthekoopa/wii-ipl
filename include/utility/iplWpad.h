#ifndef IPL_UTILITY_WPAD_H
#define IPL_UTILITY_WPAD_H

#include <revolution/types.h>

namespace ipl {
    namespace utility {
        namespace wpad {
            u32     getWpadConnectedMask();
            BOOL    isIncreaseConnectedWpad(u32 prevMask, u32 nextMask);
        }
    }
}

#endif // IPL_UTILITY_WPAD_H


