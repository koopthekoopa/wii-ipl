#include "system/odh.h"

s32 CArGBAOdh::ScaleLimit(s32 scale) {
    s32 newScale = scale;
    
    if (newScale < 0) {
        newScale = 0;
    } else if (scale > 255) {
        newScale = 255;
    }
    
    return newScale;
}


