#ifndef REVOLUTION_AXFX_COMMON_H
#define REVOLUTION_AXFX_COMMON_H

#include <revolution/types.h>

#ifdef __cplusplus
extern "C" {
#endif

#define AXFX_STEREO_CHANNEL_MAX 3
#define AXFX_DPL2_CHANNEL_MAX 4

typedef struct AXFX_BUS {
    s32* left;      // 0x00
    s32* right;     // 0x04
    s32* surround;  // 0x08
} AXFX_BUS;

typedef struct AXFX_BUS_DPL2 {
    s32* L;   // 0x00
    s32* R;   // 0x04
    s32* Ls;  // 0x08
    s32* Rs;  // 0x0C
} AXFX_BUS_DPL2;

#ifdef __cplusplus
}
#endif

#endif  // REVOLUTION_AXFX_COMMON_H
