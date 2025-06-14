#ifndef REVOLUTION_AXFX_COMMON_H
#define REVOLUTION_AXFX_COMMON_H

#include <revolution/types.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef struct AXFX_BUS {
    s32*    left;       // 0x00
    s32*    right;      // 0x04
    s32*    surround;   // 0x08
} AXFX_BUS;

typedef struct AXFX_BUFFERUPDATE {
    s32*    left;       // 0x00
    s32*    right;      // 0x04
    s32*    surround;   // 0x08
} AXFX_BUFFERUPDATE;

typedef struct AXFX_BUFFERUPDATE_DPL2 {
    s32*    left;           // 0x00
    s32*    right;          // 0x04
    s32*    left_surround;  // 0x08
    s32*    right_surround; // 0x0C
} AXFX_BUFFERUPDATE_DPL2;

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_AXFX_COMMON_H
