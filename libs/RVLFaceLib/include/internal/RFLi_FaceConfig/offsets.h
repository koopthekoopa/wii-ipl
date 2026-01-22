#ifndef RFLi_FACE_CONFIGURATION_OFFSETS_H
#define RFLi_FACE_CONFIGURATION_OFFSETS_H

#include <RFL_Types.h>
#include <internal/RFLi_FaceConfig.h>

#ifdef __cplusplus
extern "C" {
#endif

static const u8 RFLi_EYE_ROT_OFFSET[] = {
    29, 28, 28, 28, 29, 28, 28, 28,
    29, 28, 28, 28, 28, 29, 29, 28,
    28, 28, 29, 29, 28, 29, 28, 29,
    29, 28, 29, 28, 28, 29, 28, 28,
    28, 29, 29, 29, 28, 28, 29, 29,
    29, 28, 28, 29, 29, 29, 29, 29,
    28, 28
};

static const u8 RFLi_EYEBROW_ROT_OFFSET[] = {
    26, 26, 27, 25, 26, 25, 26, 25,
    28, 25, 26, 24, 27, 27, 26, 26,
    25, 25, 26, 26, 27, 26, 25, 27
};

#ifdef __cplusplus
}
#endif

#endif // RFLi_FACE_CONFIGURATION_OFFSETS_H
