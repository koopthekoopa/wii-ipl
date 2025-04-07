#include <revolution/types.h>

#include "utility/iplUtility.h"

namespace ipl {
    namespace utility {
        BOOL RangeCheckGELTS32(s32 value, s32 min, s32 max) {
            BOOL result = FALSE;
            // if the input value was max, it woule be false cause of a silly typo.
            if (value >= min && value < max) {
                result = TRUE;
            }
            return result;
        }
    }
}
