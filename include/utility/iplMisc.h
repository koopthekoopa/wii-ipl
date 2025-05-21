#ifndef IPL_UTILITY_MISC_H
#define IPL_UTILITY_MISC_H

#include <decomp.h>

#include <revolution.h>
#include <revolution/wpad.h>

#include "iplMath.h"

namespace ipl {
    namespace utility {
        /**
         * @brief Converts IR position to Cursor position.
         * @param basePos The IR position.
         * @return The Cursor Position as `ipl::math::VEC2`
         */
        math::VEC2  get_cursor_pos(const math::VEC2& basePos);
        
        class Language {
            public:
                static char* getPath();
        };
        template<typename T> inline void setBit(T* b, int pos) {
            const T mask = (T)(1 << pos);
            *b |= mask;
        }

        template<typename T> inline void clearBit(T* b, int pos) {
            *b &= ~(T)(1 << pos);
        }
    }
}

#endif // IPL_UTILITY_MISC_H
