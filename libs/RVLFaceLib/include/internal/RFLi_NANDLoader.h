#ifndef RFLi_NAND_LOADER_H
#define RFLi_NAND_LOADER_H

#include <RFL_Types.h>
#include <internal/RFLi_Types.h>
#include <internal/RFLi_Texture.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef enum {
    RFLiArcID_Beard = 0,
    RFLiArcID_Eye,
    RFLiArcID_Eyebrow,
    RFLiArcID_Faceline,
    RFLiArcID_FaceTex,
    RFLiArcID_ForeHead,
    RFLiArcID_Glass,
    RFLiArcID_GlassTex,
    RFLiArcID_Hair,
    RFLiArcID_Mask,
    RFLiArcID_Mole,
    RFLiArcID_Mouth,
    RFLiArcID_Mustache,
    RFLiArcID_Nose,
    RFLiArcID_Nline,
    RFLiArcID_NlineTex,
    RFLiArcID_Cap,
    RFLiArcID_CapTex,
    RFLiArcID_Max,
} RFLiArcID;

typedef struct {
    u16 num; // 0x00
    u16 maxsize; // 0x02
    u32 offset; // 0x04
} RFLiNANDArchive;

typedef struct {
    RFLiNANDArchive archive[RFLiArcID_Max]; // 0x00

    u32             mCacheSize;             // 0x90
    void*           mCacheBuffer;           // 0x94
    BOOL            mCached;                // 0x98

    u16             mVersion;               // 0x9C

    u8*             mHeaderBuf1;            // 0xA0
    u8*             mHeaderBuf2;            // 0xA4

    u8              mReadCount;             // 0xA8
} RFLiNANDLoader;

void        RFLiInitLoader();

RFLErrcode  RFLiLoadResourceHeaderAsync();

u32         RFLiGetTexSize(RFLiPartsTex parts, u16 index);
RFLTexture* RFLiLoadTexture(RFLiPartsTex parts, u16 index, void* texBuffer);

u32         RFLiGetShpTexSize(RFLiPartsShpTex parts, u16 index);
RFLTexture* RFLiLoadShpTexture(RFLiPartsShpTex parts, u16 index, void* texBuffer);

u32         RFLiGetShapeSize(RFLiPartsShp parts, u16 index);
void*       RFLiLoadShape(RFLiPartsShp parts, u16 index, void* shpBuffer);

#ifdef __cplusplus
}
#endif

#endif // RFLi_NAND_LOADER_H
