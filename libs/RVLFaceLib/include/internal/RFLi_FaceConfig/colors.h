#ifndef RFLi_FACE_CONFIGURATION_COLORS_H
#define RFLi_FACE_CONFIGURATION_COLORS_H

#include <RFL_Types.h>
#include <internal/RFLi_FaceConfig.h>

#ifdef __cplusplus
extern "C" {
#endif

static const GXColor RFLi_MOLE_COLOR0 = { 18, 15, 15, 255 };

static const GXColor RFLi_EYE_COLOR1[RFLi_EYE_COLOR_MAX+1] = {
    { 0, 0, 0, 255 },
    { 124, 128, 128, 255 },
    { 112, 80, 64, 255 },
    { 112, 110, 64, 255 },
    { 88, 104, 184, 255 },
    { 72, 128, 104, 255 }
};

static const GXColor RFLi_EYEBROW_COLOR0[RFLi_EYEBROW_COLOR_MAX+1] = {
    { 30, 26, 24, 255 },
    { 56, 32, 21, 255 },
    { 85, 38, 23, 255 },
    { 112, 64, 36, 255 },
    { 114, 114, 120, 255 },
    { 73, 54, 26, 255 },
    { 122, 89, 40, 255 },
    { 193, 159, 100, 255 }
};

static const GXColor RFLi_MOUTH_COLOR0[RFLi_MOUTH_COLOR_MAX+1] = {
    { 190, 78, 38, 255 },
    { 216, 48, 40, 255 },
    { 207, 68, 71, 255}
};

static const GXColor RFLi_MOUTH_COLOR1[RFLi_MOUTH_COLOR_MAX+1] = {
    { 113, 42, 4, 255 },
    { 120, 21, 16, 255 },
    { 126, 37, 40, 255 }
};

static const GXColor RFLi_BEARD_COLOR0[RFLi_BEARD_COLOR_MAX+1] = {
    { 30, 26, 24, 255 },
    { 56, 32, 21, 255 },
    { 85, 38, 23, 255 },
    { 112, 64, 36, 255 },
    { 114, 114, 120, 255 },
    { 73, 54, 26, 255 },
    { 122, 89, 40, 255 },
    { 193, 159, 100, 255 }
};

#ifdef __cplusplus
}
#endif

#endif // RFLi_FACE_CONFIGURATION_COLORS_H
