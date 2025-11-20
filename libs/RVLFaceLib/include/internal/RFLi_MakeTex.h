#ifndef RFLi_MAKE_TEXTURE_H
#define RFLi_MAKE_TEXTURE_H

#include <revolution/types.h>

#include <RFL_Types.h>
#include <internal/RFLi_Types.h>
#include <internal/RFLi_Texture.h>

#include <revolution/gx/GXEnum.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef struct {
    f32         x;      // 0x00
    f32         y;      // 0x04

    f32         width;  // 0x08
    f32         height; // 0x0C

    f32         angle;  // 0x10
    RFLi_ORIGIN origin; // 0x14
    RFLTexObj   ngtobj; // 0x18
} RFLiFacePart;

typedef struct {
    RFLiFacePart    eyeR;       // 0x00
    RFLiFacePart    eyeL;       // 0x40

    RFLiFacePart    eyebrowR;   // 0x80
    RFLiFacePart    eyebrowL;   // 0xC0

    RFLiFacePart    mouth;      // 0x100

    RFLiFacePart    mustacheR;  // 0x140
    RFLiFacePart    mustacheL;  // 0x180
    RFLiFacePart    mole;       // 0x1C0
} RFLiFaceData;

// HMMMMM...

void            RFLiSetupCopyTex(GXTexFmt texFmt, u16 width, u16 height, void* buf, GXColor clearColor);

void            RFLiMakeTexture(const RFLiCharInfo* pCharInfo, u8** texBuffer, RFLResolution resolution);

void            RFLiInitFaceParts(const RFLiCharInfo* pCharInfo, RFLiFaceData* pFace);
void            RFLiInitRFLTexture(RFLTexObj* pRFLTexObj);

void            RFLiSetup2DCameraAndParam();

void            RFLiSetTev4Mole();
void            RFLiSetTev4Mouth(u32 mouthColor);
void            RFLiSetTev4Eye(u32 eyeColor, u32 eyeType);
void            RFLiSetTev4Eyebrow(u32 eyebrowColor);
void            RFLiSetTev4Mustache(u32 mustacheColor);

void            RFLiSetFaceParts(const RFLiCharInfo* pCharInfo, RFLiFaceData* pFace, RFLi_MASKRSL resolution);
void            RFLiCapture(u8* texBuffer, const RFLiCharInfo* pCharInfo, RFLiFaceData* pFace, RFLi_MASKRSL resolution);
void            RFLiDrawFaceParts(RFLiFacePart* pParts);

void            RFLiDrawQuad(f32 x, f32 y, f32 width, f32 height, f32 rotZ, RFLi_ORIGIN origin);

RFLi_MASKRSL    RFLiGetMaxMaskRsl(RFLResolution resolution);
u32             RFLiGetMaskSize(RFLi_MASKRSL maskResolution);
u32             RFLiGetMaskBufSize(RFLResolution resolution);

#ifdef __cplusplus
}
#endif

#endif // RFLi_MAKE_TEXTURE_H
