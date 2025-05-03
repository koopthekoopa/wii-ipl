#ifndef REVOLUTION_GX_STRUCTS_H
#define REVOLUTION_GX_STRUCTS_H

#include <revolution/types.h>
#include <revolution/gx/GXEnum.h>
#include <revolution/vi/vitypes.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef struct _GXColor {
    u8  r, g, b, a; // 0x00
} GXColor;

typedef struct _GXColorS10 {
    s16 r, g, b, a; // 0x00
} GXColorS10;

typedef struct _GXTexObj {
    u32 dummy[8];   // 0x00
} GXTexObj;

typedef struct _GXLightObj {
    u32 dummy[16];  // 0x00
} GXLightObj;

typedef struct _GXTexRegion {
    u32 dummy[4];   // 0x00
} GXTexRegion;

typedef struct _GXTlutObj {
    u32 dummy[3];   // 0x00
} GXTlutObj;

typedef struct _GXTlutRegion {
    u32 dummy[4];   // 0x00
} GXTlutRegion;

typedef struct GXFifoObj {
    u8 pad[128];    // 0x00
} GXFifoObj;

typedef struct _GXFogAdjTable {
    u16 r[10];  // 0x00
} GXFogAdjTable;

typedef struct _GXVtxDescList {
    GXAttr      attr;   // 0x00
    GXAttrType  type;   // 0x04
} GXVtxDescList;

typedef struct _GXVtxAttrFmtList {
    GXAttr      attr;   // 0x00

    GXCompCnt   cnt;    // 0x04
    GXCompType  type;   // 0x08

    u8          frac;   // 0x0C
} GXVtxAttrFmtList;

typedef struct _GXRenderModeObj {
    VITVMode    viTVmode;               // 0x00

    u16         fbWidth;                // 0x04

    u16         efbHeight;              // 0x06
    u16         xfbHeight;              // 0x08

    u16         viXOrigin;              // 0x0A
    u16         viYOrigin;              // 0x0C
    u16         viWidth;                // 0x0E
    u16         viHeight;               // 0x10

    VIXFBMode   xFBmode;                // 0x14

    u8          field_rendering;        // 0x18
    u8          aa;                     // 0x19
    u8          sample_pattern[12][2];  // 0x1A
    u8          vfilter[7];             // 0x32
} GXRenderModeObj;

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_GX_STRUCTS_H
