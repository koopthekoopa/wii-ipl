#ifndef RFLi_TEXTURE_H
#define RFLi_TEXTURE_H

#include <revolution/types.h>

#include <RFL_Types.h>
#include <internal/RFLi_Types.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef struct {
    u8  format;             // 0x00
    u8  transparency;       // 0x01

    u16 width;              // 0x02
    u16 height;             // 0x04

    u8  wrapS;              // 0x06
    u8  wrapT;              // 0x07

    u8  indexTexture;       // 0x08
    u8  colorFormat;        // 0x09

    u16 numColors;          // 0x0A
    u32 paletteOffset;      // 0x0C

    u8  enableLOD;          // 0x10
    u8  enableEdgeLOD;      // 0x11
    u8  enableBiasClamp;    // 0x12
    u8  enableMaxAniso;     // 0x13

    u8  minFilter;          // 0x14
    u8  magFilter;          // 0x15

    s8  minLOD;             // 0x16
    s8  maxLOD;             // 0x17

    u8  mipmapLevel;        // 0x18
    s8  reserved;           // 0x19
    s16 LODBias;            // 0x1A

    u32 imageOffset;        // 0x1C
} RFLTexture;

typedef struct {
    RFLTexture* texture;    // 0x00
    u8*         imageData;  // 0x04
    GXTexObj    tobj;       // 0x08
} RFLTexObj;

static inline void* RFLiGetTexImage(const RFLTexture* tex) {
    return (u8*)tex + tex->imageOffset;
}

#ifdef __cplusplus
}
#endif

#endif // RFLi_TEXTURE_H
