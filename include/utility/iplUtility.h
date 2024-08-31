#ifndef IPL_UTILITY_H
#define IPL_UTILITY_H

#include <decomp.h>

#include <revolution.h>
#include <revolution/wpad.h>

#include "utility/iplMath.h"

#define UTILITY_CLAMP(x, min, max)  x < min ? min : (x > max ? max : x)

namespace ipl {
    namespace utility {
        /**
         * @brief Converts IR position to Cursor position.
         * @param basePos The IR position.
         * @return The Cursor Position as `ipl::math::VEC2`
         */
        math::VEC2  get_cursor_pos(const math::VEC2& basePos);
    }
}

#endif // IPL_UTILITY_H


