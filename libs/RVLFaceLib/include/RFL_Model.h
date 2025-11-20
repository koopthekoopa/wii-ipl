#ifndef RFL_MODEL_H
#define RFL_MODEL_H

#include <RFL_Types.h>
#include <RFL_MiddleDatabase.h>

#include <revolution/mtx.h>
#include <revolution/gx/GXEnum.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef enum {
    RFLCoordinate_XP = 0x01000000,
    RFLCoordinate_XM = 0xFF000000,
    RFLCoordinate_YP = 0x00010000,
    RFLCoordinate_YM = 0x00FF0000,
    RFLCoordinate_ZP = 0x00000100,
    RFLCoordinate_ZM = 0x0000FF00,
} RFLCoordinate;

typedef struct {
    u32 dummy[34];
} RFLCharModel;

typedef struct {
    u8          lightEnable; // 0x00
    u32         lightMask; // 0x04

    GXDiffuseFn diffFn; // 0x08
    GXAttnFn    attnFn; // 0x0C

    GXColor     ambientColor; // 0x10

    GXBool      zCompLoc; // 0x14
} RFLDrawSetting;

typedef struct {
    u8              txcGenNum; // 0x00
    GXTexCoordID    txcID; // 0x04

    GXTexMapID      texMapID; // 0x08

    u8              tevStageNum; // 0x0C
    GXTevSwapSel    tevSwapTable; // 0x10
    GXTevKColorID   tevKColorID; // 0x14
    GXTevRegID      tevOutRegID; // 0x18

    GXPosNrmMtx     posNrmMtxID; // 0x1C

    GXBool          reverseCulling; // 0x20
} RFLDrawCoreSetting;

void            RFLSetCoordinate(RFLCoordinate up, RFLCoordinate front);

u32             RFLGetModelBufferSize(RFLResolution resolution, u32 expressionFlag);

RFLErrcode      RFLInitCharModel(RFLCharModel* charModel, RFLDataSource source, RFLMiddleDatabase* middleDB, u16 index, void* bufferPtr, RFLResolution resolution, u32 expressionFlag);

void            RFLSetMtx(RFLCharModel* charModel, const MtxPtr mvMtx);
void            RFLSetMtxPosNrm(RFLCharModel* charModel, const MtxPtr posMtx, const MtxPtr nrmMtx);

void            RFLSetExpression(RFLCharModel* charModel, RFLExpression expression);
RFLExpression   RFLGetExpression(const RFLCharModel* charModel);
BOOL            RFLIsAvailableExpression(const RFLCharModel* charModel, RFLExpression expression);

GXColor         RFLGetFavoriteColor(RFLFavoriteColor favoriteColor);

void            RFLDrawOpa(const RFLCharModel* charModel);
void            RFLDrawXlu(const RFLCharModel* charModel);

void            RFLLoadVertexSetting(const RFLDrawCoreSetting* setting);
void            RFLLoadMaterialSetting(const RFLDrawCoreSetting* setting);

void            RFLDrawOpaCore(const RFLCharModel* charModel, const RFLDrawCoreSetting* setting);
void            RFLDrawXluCore(const RFLCharModel* charModel, const RFLDrawCoreSetting* setting);

void            RFLDrawShape(const RFLCharModel* charModel);
void            RFLCopyCharModel(RFLCharModel* dstCharModel, void* dstBufferPtr, const RFLCharModel* srcCharModel);

#if RFL_BUILD >= 20080306
void            RFLSetModelDrawDoneCallback(RFLSimpleCB cb);
#endif

#ifdef __cplusplus
}
#endif

#endif // RFL_MODEL_H
