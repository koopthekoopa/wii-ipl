#ifndef IPL_UTILITY_H
#define IPL_UTILITY_H

#include <decomp_types.h>
#include <revolution.h>
#include <revolution/wpad.h>
#include "utility/iplMath.h"

#define UTILITY_CLAMP(x, min, max) x < min ? min : (x > max ? max : x)

namespace ipl {
    namespace utility {
        math::VEC2 get_cursor_pos(const math::VEC2& basePos);
    }
}

#endif // IPL_UTILITY_H


