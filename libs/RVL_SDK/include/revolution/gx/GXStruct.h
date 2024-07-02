#ifndef REVOLUTION_GX_STRUCTS_H
#define REVOLUTION_GX_STRUCTS_H

#include <revolution/types.h>
#include <revolution/gx/GXEnum.h>
#include <revolution/vi/vitypes.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef struct {
    u8 r, g, b, a;
} GXColor;

typedef struct {
    s16 r, g, b, a;
} GXColorS10;

typedef struct {
    u32 dummy[8];
} GXTexObj;

typedef struct {
    VITVMode    viTVmode;
    u16         fbWidth;
    u16         efbHeight;
    u16         xfbHeight;
    u16         viXOrigin;
    u16         viYOrigin;
    u16         viWidth;
    u16         viHeight;
    VIXFBMode   xFBmode;
    u8          field_rendering;
    u8          aa;
    u8          sample_pattern[12][2];
    u8          vfilter[7];
} GXRenderModeObj;

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_GX_STRUCTS_H


