#ifndef REVOLUTION_TPL_H
#define REVOLUTION_TPL_H

#include <revolution/types.h>
#include <revolution/gx/GXEnum.h>
#include <revolution/gx/GXStruct.h>

typedef struct TPLHeader {
    u16             height;         // 0x00
    u16             width;          // 0x02

    u32             format;         // 0x04

    char*           data;           // 0x08

    GXTexWrapMode   wrapS;          // 0x0C
    GXTexWrapMode   wrapT;          // 0x10

    GXTexFilter     minFilter;      // 0x14
    GXTexFilter     magFilter;      // 0x18

    f32             LODBias;        // 0x1C
    u8              edgeLODEnable;  // 0x20
    u8              minLOD;         // 0x21
    u8              maxLOD;         // 0x22

    u8              unpacked;       // 0x23
} TPLHeader;

typedef struct TPLClutHeader {
    u16         numEntries; // 0x00
    u8          unpacked;   // 0x01
    GXTlutFmt   format;     // 0x04
    char*       data;       // 0x08
} TPLClutHeader;

typedef struct TPLDescriptor {
    TPLHeader*      textureHeader;  // 0x00
    TPLClutHeader*  CLUTHeader;     // 0x04
} TPLDescriptor;

typedef struct TPLPalette {
    u32             versionNumber;      // 0x00
    u32             numDescriptors;     // 0x04
    TPLDescriptor*  descriptorArray;    // 0x08
} TPLPalette;

void            TPLBind(TPLPalette* pal);

TPLDescriptor*  TPLGet(TPLPalette* pal, u32 id);
void            TPLGetGXTexObjFromPalette(TPLPalette* pal, GXTexObj* texObj, u32 id);

#endif // REVOLUTION_TPL_H
