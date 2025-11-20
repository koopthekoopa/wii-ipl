#ifndef RFLi_FACE_CONFIGURATION_H
#define RFLi_FACE_CONFIGURATION_H

#include <RFL_Types.h>

#ifdef __cplusplus
extern "C" {
#endif

/* FACELINE */

#define RFLi_FACELINE_TYPE_MAX  7
#define RFLi_FACELINE_COLOR_MAX 5
#define RFLi_FACELINE_TEX_MAX   11

/* HAIR */

#define RFLi_HAIR_TYPE_MAX      71
#define RFLi_HAIR_COLOR_MAX     7
#define RFLi_HAIR_FLIP_MAX      1

/* EYE */

#define RFLi_EYE_TYPE_MAX       47
#define RFLi_EYE_COLOR_MAX      5
#define RFLi_EYE_SCALE_MAX      7
#define RFLi_EYE_ROT_MAX        7
#define RFLi_EYE_X_MAX          12
#define RFLi_EYE_Y_MAX          18

/* EYEBROW */

#define RFLi_EYEBROW_TYPE_MAX   23
#define RFLi_EYEBROW_COLOR_MAX  7
#define RFLi_EYEBROW_SCALE_MAX  8
#define RFLi_EYEBROW_ROT_MAX    11
#define RFLi_EYEBROW_X_MAX      12
#define RFLi_EYEBROW_Y_MIN      3
#define RFLi_EYEBROW_Y_MAX      18

/* NOSE */

#define RFLi_NOSE_TYPE_MAX      11
#define RFLi_NOSE_SCALE_MAX     8
#define RFLi_NOSE_Y_MAX         18

/* MOUTH */

#define RFLi_MOUTH_TYPE_MAX     23
#define RFLi_MOUTH_COLOR_MAX    2
#define RFLi_MOUTH_SCALE_MAX    8
#define RFLi_MOUTH_Y_MAX        18

/* BEARD */

#define RFLi_BEARD_MUSTACHE_MAX 3
#define RFLi_BEARD_TYPE_MAX     3
#define RFLi_BEARD_COLOR_MAX    7
#define RFLi_BEARD_SCALE_MAX    8
#define RFLi_BEARD_Y_MAX        16

/* MUSTACHE */

/* GLASS */

#define RFLi_GLASS_TYPE_MAX     8
#define RFLi_GLASS_COLOR_MAX    5
#define RFLi_GLASS_SCALE_MAX    7
#define RFLi_GLASS_Y_MAX        20

/* MOLE */

#define RFLi_MOLE_TYPE_MAX      1
#define RFLi_MOLE_SCALE_MAX     8
#define RFLi_MOLE_X_MAX         16
#define RFLi_MOLE_Y_MAX         30

/* HEIGHT & BUILD */

#define RFLi_HEIGHT_MAX         128
#define RFLi_BUILD_MAX          128

/* TEXTURE STUFF */

#ifdef __cplusplus
}
#endif

#endif // RFLi_FACE_CONFIGURATION_H
