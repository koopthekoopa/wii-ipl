#define UNIT_DOESNT_MATCH

#include "system/odh.h"

/**
 * @note Address: 0x8135DDB0 (4.3U)
 * @note Size: 0x24
 */
s32 CArGBAOdh::ScaleLimit(s32 scale) {
    s32 newScale = scale;
    
    if (newScale < 0) {
        newScale = 0;
    } else if (scale > 255) {
        newScale = 0xFF;
    }
    
    return newScale;
}


