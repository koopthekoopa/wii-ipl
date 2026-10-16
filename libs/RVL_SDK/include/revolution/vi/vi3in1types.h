#ifndef REVOLUTION_VI_3IN1_TYPES_H
#define REVOLUTION_VI_3IN1_TYPES_H

#include <revolution/types.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef enum _VIGamma {
    VI_GM_0_1 = 1,
    VI_GM_0_2,
    VI_GM_0_3,
    VI_GM_0_4,
    VI_GM_0_5,
    VI_GM_0_6,
    VI_GM_0_7,
    VI_GM_0_8,
    VI_GM_0_9,
    VI_GM_1_0,
    VI_GM_1_1,
    VI_GM_1_2,
    VI_GM_1_3,
    VI_GM_1_4,
    VI_GM_1_5,
    VI_GM_1_6,
    VI_GM_1_7,
    VI_GM_1_8,
    VI_GM_1_9,
    VI_GM_2_0,
    VI_GM_2_1,
    VI_GM_2_2,
    VI_GM_2_3,
    VI_GM_2_4,
    VI_GM_2_5,
    VI_GM_2_6,
    VI_GM_2_7,
    VI_GM_2_8,
    VI_GM_2_9,
    VI_GM_3_0
} VIGamma;

typedef enum _VIVideoMode {
    VI_VIDEO_MODE_NTSC = 0,
    VI_VIDEO_MODE_MPAL,
    VI_VIDEO_MODE_PAL,
    VI_VIDEO_MODE_RVA, /* ??? */
} VIVideoMode;

typedef enum _VIMacrovision {
    VI_ACP_TYPE_ZERO = 1,
    VI_ACP_TYPE_1,
    VI_ACP_TYPE_2,
    VI_ACP_TYPE_3,
} VIMacrovision;

#ifdef __cplusplus
}
#endif

#endif  // REVOLUTION_VI_3IN1_TYPES_H
