#ifndef RFLi_MODEL_H
#define RFLi_MODEL_H

#include <RFL_Types.h>
#include <internal/RFLi_Types.h>
#include <internal/RFLi_Debug.h>

#include <RFL_Model.h>

#include <revolution/gx/GXStruct.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef struct {
    u8  uOff;   // 0x00
    u8  fOff;   // 0x01
    u8  rOff;   // 0x02
    int uRev;   // 0x04
    int fRev;   // 0x08
    int rRev;   // 0x0C
} RFLiCoordinateData;

typedef struct {
    f32 x;  // 0x00
    f32 y;  // 0x04
    f32 z;  // 0x08
} RFLiPositionData;

typedef struct {
    Mtx             posMtx;                 // 0x00
    Mtx             nrmMtx;                 // 0x30

    RFLExpression   expressionIdx;          // 0x60
    RFLResolution   resolution;             // 0x64

    void*           resource;               // 0x68

    GXTexObj*       maskTexObj[RFLExp_Max]; // 0x6C
} RFLiCharModel;

typedef struct {
    u8          dlNose[192];            // 0x00
    u8          dlCap[1376];            // 0xC0
    u8          dlFaceline[736];        // 0x620
    u8          dlBeard[352];           // 0x900
    u8          dlNoseline[96];         // 0xA60
    u8          dlMask[896];            // 0xAC0
    u8          dlGlass[64];            // 0xE40

    u8          texFaceline[16384];     // 0xE80
    u8          texCap[1024];           // 0x4E80
    u8          texNoseline[1024];      // 0x5280
    u8          texGlass[4096];         // 0x5680

    s16         vtxPosNose[69];         // 0x6680
    s16         vtxNrmNose[69];         // 0x670A
    s16         vtxPosCap[519];         // 0x6794
    s16         vtxNrmCap[738];         // 0x6BA2
    s16         vtxTxcCap[190];         // 0x7166
    s16         vtxPosFaceline[198];    // 0x72E2
    s16         vtxNrmFaceline[198];    // 0x746E
    s16         vtxTxcFaceline[230];    // 0x75FA
    s16         vtxPosBeard[120];       // 0x77C6
    s16         vtxNrmBeard[204];       // 0x78B6
    s16         vtxPosNoseline[18];     // 0x7A4E
    s16         vtxNrmNoseline[6];      // 0x7A72
    s16         vtxTxcNoseline[14];     // 0x7A7E
    s16         vtxPosMask[264];        // 0x7A9A
    s16         vtxNrmMask[258];        // 0x7CAA
    s16         vtxTxcMask[352];        // 0x7EAE
    s16         vtxPosGlass[12];        // 0x816E
    s16         vtxNrmGlass[3];         // 0x8186
    s16         vtxTxcGlass[8];         // 0x818C

    GXTexObj    texObjFaceline;         // 0x819C
    GXTexObj    texObjCap;              // 0x81BC
    GXTexObj    texObjNoseline;         // 0x81DC
    GXTexObj    texObjGlass;            // 0x81FC

    s16*        vtxPosHair;             // 0x821C
    s16*        vtxNrmHair;             // 0x8220
    u8*         dlHair;                 // 0x8224

    s16*        vtxPosForehead;         // 0x8228
    s16*        vtxNrmForehead;         // 0x822C
    u8*         dlForehead;             // 0x8230

    u16         dlSizeNose;             // 0x8234
    u16         dlSizeFaceline;         // 0x8236
    u16         dlSizeHair;             // 0x8238
    u16         dlSizeCap;              // 0x823A
    u16         dlSizeForehead;         // 0x823C
    u16         dlSizeBeard;            // 0x823E
    u16         dlSizeNoseline;         // 0x8240
    u16         dlSizeMask;             // 0x8242
    u16         dlSizeGlass;            // 0x8244

    u8          colorIdxFaceline;       // 0x8246
    u8          colorIdxHair;           // 0x8247
    u8          colorIdxBeard;          // 0x8248
    u8          colorIdxGlass;          // 0x8249
    u8          colorIdxFavorite;       // 0x824A

    BOOL        flipHair;               // 0x824C
} RFLiCharModelRes;

typedef struct {
    RFLiPartsShp        parts;          // 0x00
    u16                 index;          // 0x04

    BOOL                transform;      // 0x08
    BOOL                flipX;          // 0x0C

    s16*                vtxPosBuf;      // 0x10
    s16*                vtxNrmBuf;      // 0x14
    s16*                vtxTxcBuf;      // 0x18
    u8*                 dlBuf;          // 0x1C

    u16                 vtxPosBufSize;  // 0x20
    u16                 vtxNrmBufSize;  // 0x22
    u16                 vtxTxcBufSize;  // 0x24
    u16                 dlBufSize;      // 0x26

    u16                 vtxPosSize;     // 0x28
    u16                 vtxNrmSize;     // 0x2A
    u16                 vtxTxcSize;     // 0x2C
    u16                 dlSize;         // 0x2E

    f32                 posScale;       // 0x30
    RFLiPositionData*   posTrans;       // 0x34

    RFLiPositionData*   noseTrans;      // 0x38
    RFLiPositionData*   beardTrans;     // 0x3C
    RFLiPositionData*   hairTrans;      // 0x40
} RFLiCharShapeRes;

extern RFLiCoordinateData coordinateData;

u32     RFLiGetExpressionNum(u32 expressionFlag);

void    RFLiInitCharModel(RFLCharModel* charModel, const RFLiCharInfo* info, void* bufferPtr, RFLResolution resolution, u32 expressionFlag);

GXColor RFLiGetFavoriteColor(const RFLiCharInfo* info);
GXColor RFLiGetFacelineColor(const RFLiCharInfo* info);

void    RFLiInitCharModelRes(RFLiCharModelRes* charModelRes, const RFLiCharInfo* info);
void    RFLiInitShapeRes(RFLiCharShapeRes* arg);
void    RFLiInitTexRes(GXTexObj* texObj, RFLiPartsShpTex parts, u16 index, void* buf);

void    RFLiTransformCoordinate(s16* to, const s16* from);

inline void RFLiSetCoordinateData(const RFLiCoordinateData* data) {
    RFLi_ASSERTLINE_NULL(data, 281);
    coordinateData = *data;
}

static inline RFLiCoordinateData* RFLiGetCoordinateData() {
    return &coordinateData;
}

#ifdef __cplusplus
}
#endif

#endif // RFLi_MODEL_H
