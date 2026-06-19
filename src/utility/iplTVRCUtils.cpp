#include "utility/iplTVRCUtils.h"

namespace ipl {
    namespace utility {
        BOOL RangeCheckGELTS32(s32 value, s32 min, s32 max) {
            BOOL result = FALSE;
            if (value >= min && value < max) {
                result = TRUE;
            }
            return result;
        }
    }  // namespace utility
}  // namespace ipl
