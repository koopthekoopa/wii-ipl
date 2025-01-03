#ifndef REVOLUTION_AX_AUX_H
#define REVOLUTION_AX_AUX_H

#include <revolution/types.h>

#ifdef __cplusplus
extern "C" {
#endif

#define AX_SAMPLES_PER_FRAME 96
#define AX_SAMPLE_DEPTH_BYTES sizeof(u32)
#define AX_SAMPLES_PER_FRAME_RMT 18
#define AX_FRAME_SIZE (AX_SAMPLES_PER_FRAME * AX_SAMPLE_DEPTH_BYTES)

/**
 * Stereo: Left, Right, Surround
 * DPL2:   Left, Right, Left Surround, Right Surround
 */
typedef enum {
    AX_STEREO_L,
    AX_STEREO_R,
    AX_STEREO_S,

    AX_STEREO_MAX
} AXStereoChannel;

typedef enum {
    AX_DPL2_L,
    AX_DPL2_R,
    AX_DPL2_LS,
    AX_DPL2_RS,

    AX_DPL2_MAX
} AXDPL2Channel;

typedef void (*AXAuxCallback)(void* chans, void* context);

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_AX_AUX_H


