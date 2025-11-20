#define KEEP_OLD_NULL

#include <internal/RFLi_LibConfig.h>

#include <RVLFaceLib.h>
#include <RVLFaceLibInternal.h>

#include <internal/RFLi_FaceConfig.h>
#include <internal/RFLi_FaceConfig/offsets.h>
#include <internal/RFLi_FaceConfig/colors.h>

#include <revolution/os.h>
#include <revolution/base/PPCArch.h>
#include <revolution/gx.h>

#include <stddef.h>
#include <string.h>

#define ARRAY_SIZE(x)       (sizeof((x)) / sizeof((x)[0]))

#define VTX_COORDS_IN_POS   3
#define VTX_COORDS_IN_NRM   3
#define VTX_COORDS_IN_TXC   2

#define VTX_COORD_SIZE      sizeof(s16)
#define VTX_POS_SIZE        (VTX_COORD_SIZE * VTX_COORDS_IN_POS)
#define VTX_NRM_SIZE        (VTX_COORD_SIZE * VTX_COORDS_IN_NRM)
#define VTX_TXC_SIZE        (VTX_COORD_SIZE * VTX_COORDS_IN_TXC)

#define NUM_VTX_POS(size)   ((size) / VTX_POS_SIZE)
#define SIZE_VTX_POS(count) ((count) * VTX_POS_SIZE)

#define NUM_VTX_NRM(size)   ((size) / VTX_NRM_SIZE)
#define SIZE_VTX_NRM(count) ((count) * VTX_NRM_SIZE)

#define NUM_VTX_TXC(size)   ((size) / VTX_TXC_SIZE)
#define SIZE_VTX_TXC(count) (count * VTX_TXC_SIZE)

RFLiCoordinateData coordinateData = {1, 2, 0, FALSE, FALSE, FALSE};

const RFLDrawCoreSetting cDefaultDrawCoreSetting2Tev = {
    1,          GX_TEXCOORD0, GX_TEXMAP0, 2,    GX_TEV_SWAP0,
    GX_KCOLOR0, GX_TEVPREV,   GX_PNMTX0,  GX_FALSE
};

const RFLDrawCoreSetting cDefaultDrawCoreSetting1Tev = {
    1,          GX_TEXCOORD0, GX_TEXMAP0, 1,    GX_TEV_SWAP0,
    GX_KCOLOR0, GX_TEVPREV,   GX_PNMTX0,  GX_FALSE
};

static const GXColor cFacelineColor[RFLi_FACELINE_COLOR_MAX+1] = {
    {240, 216, 196, 255},
    {255, 188, 128, 255},
    {216, 136, 80, 255},
    {255, 176, 144, 255},
    {152, 80, 48, 255},
    {82, 46, 28, 255},
};

static const GXColor cHairColor[RFLi_HAIR_COLOR_MAX+1] = {
    {30, 26, 24, 255},
    {56, 32, 21, 255},
    {85, 38, 23, 255},
    {112, 64, 36, 255},
    {114, 114, 120, 255},
    {73, 54, 26, 255},
    {122, 89, 40, 255},
    {193, 159, 100, 255},
};

static const GXColor cBeardColor[RFLi_BEARD_COLOR_MAX+1] = {
    {30, 26, 24, 255},
    {56, 32, 21, 255},
    {85, 38, 23, 255},
    {112, 64, 36, 255},
    {114, 114, 120, 255},
    {73, 54, 26, 255},
    {122, 89, 40, 255},
    {193, 159, 100, 255},
};

static const GXColor cGlassColor[RFLi_GLASS_COLOR_MAX+1] = {
    {16, 16, 16, 255},
    {96, 56, 16, 255},
    {152, 24, 16, 255},
    {32, 48, 96, 255},
    {144, 88, 0, 255},
    {96, 88, 80, 255}
};

static const GXColor cFavoriteColor[RFLFavoriteColor_Max] = {
    {184, 64,  48, 255},    // RFLFavoriteColor_Red
    {240, 120, 40, 255},    // RFLFavoriteColor_Orange
    {248, 216, 32, 255},    // RFLFavoriteColor_Yellow
    {128, 200, 40, 255},    // RFLFavoriteColor_YellowGreen
    {0, 116, 40, 255},      // RFLFavoriteColor_Green
    {32, 72, 152, 255},     // RFLFavoriteColor_Blue
    {64, 160, 216, 255},    // RFLFavoriteColor_SkyBlue
    {232, 96, 120, 255},    // RFLFavoriteColor_Pink
    {112, 44, 168, 255},    // RFLFavoriteColor_Purple
    {72, 56, 24, 255},      // RFLFavoriteColor_Brown
    {224, 224, 224, 255},   // RFLFavoriteColor_White
    {24, 24, 20, 255},      // RFLFavoriteColor_Black
};

static const GXColor cWhite = {255, 255, 255, 255};

typedef union {
    RFLCoordinate coord;
    struct {
        s8 x, y, z;
        s8 dummy;
    };
} RFL_COORDINATE;

#define RFL_COORD_TYPE_X    0x01000000
#define RFL_COORD_TYPE_Y    0x00010000
#define RFL_COORD_TYPE_Z    0x00000100

#define RFL_COORD_TYPE_RX   0x11000000
#define RFL_COORD_TYPE_RY   0x00110000
#define RFL_COORD_TYPE_RZ   0x00001100

#define RFL_COORD_TYPE_RMSK 0x10101000

void RFLSetCoordinate(RFLCoordinate up, RFLCoordinate front) {
    RFLCoordinate right;

    RFL_COORDINATE u;
    RFL_COORDINATE f;
    RFL_COORDINATE r;

    RFLi_ASSERTLINE_MSG((up & front) == 0, 148, "upとfrontが直交していません。"); // "Up and front are not perpendicular."

    u.coord = up;
    f.coord = front;

    r.x = (u.y * f.z) - (u.z * f.y);
    r.y = (u.z * f.x) - (u.x * f.z);
    r.z = (u.x * f.y) - (u.y * f.x);

    right = r.coord;

    if (up & RFL_COORD_TYPE_X) {
        coordinateData.uOff = 0;
    }
    else if (up & RFL_COORD_TYPE_Y) {
        coordinateData.uOff = 1;
    }
    else {
        coordinateData.uOff = 2;
    }

    if (front & RFL_COORD_TYPE_X) {
        coordinateData.fOff = 0;
    }
    else if (front & RFL_COORD_TYPE_Y) {
        coordinateData.fOff = 1;
    }
    else {
        coordinateData.fOff = 2;
    }

    if (right & RFL_COORD_TYPE_X) {
        coordinateData.rOff = 0;
    }
    else if (right & RFL_COORD_TYPE_Y) {
        coordinateData.rOff = 1;
    }
    else {
        coordinateData.rOff = 2;
    }

    coordinateData.uRev = (up & RFL_COORD_TYPE_RMSK) != 0;
    coordinateData.fRev = (front & RFL_COORD_TYPE_RMSK) != 0;
    coordinateData.rRev = (right & RFL_COORD_TYPE_RMSK) != 0;
}

u32 RFLiGetExpressionNum(u32 expressionFlag) {
    u32 num = 0;
    u32 flag = 1;
    int i;

    for (i = 0; i < RFLExp_Max; i++) {
        if (expressionFlag & (flag << i)) {
            num++;
        }
    }

    return num;
}

u32 RFLGetModelBufferSize(RFLResolution resolution, u32 expressionFlag) {
    u32 maskTexSize;
    u32 expressionNum;

    expressionNum = RFLiGetExpressionNum(expressionFlag);
    RFLi_ASSERTLINE(expressionNum > 0, 218);

    maskTexSize = RFLiGetMaskBufSize(resolution);

    return OSRoundUp32B(expressionNum * sizeof(GXTexObj)) +
           OSRoundUp32B(sizeof(RFLiCharModelRes)) +
           OSRoundUp32B(maskTexSize * expressionNum);
}

RFLErrcode RFLInitCharModel(RFLCharModel* charModel, RFLDataSource source, RFLMiddleDatabase* middleDB, u16 index, void* bufferPtr, RFLResolution resolution, u32 expressionFlag) {
    RFLiCharInfo info;
    RFLErrcode err = RFLiPickupCharInfo(&info, source, middleDB, index);
    if (err == RFLErrcode_Success) {
        RFLiInitCharModel(charModel, &info, bufferPtr, resolution, expressionFlag);
    }

    return err;
}

void RFLiInitCharModel(RFLCharModel* charModel, const RFLiCharInfo* info, void* bufferPtr,  RFLResolution resolution, u32 expressionFlag) {
    RFLi_MASKRSL maxResolution;
    u32 maskTexSize;
    u8* maskTexBuffer[RFLExp_Max];
    RFLiCharModel* charModel_ = (RFLiCharModel*)charModel;
    u8* ptr8;

    RFLi_ASSERTLINE_NULL(charModel, 294);
    RFLi_ASSERTLINE_NULL(bufferPtr, 295);
    RFLi_ASSERTLINE_ALIGN(bufferPtr, 32, 296);
    RFLi_ASSERTLINE(RFLiGetExpressionNum(expressionFlag) > 0, 297);

    charModel_->resolution = resolution;

    ptr8 = bufferPtr;

    maskTexSize = RFLiGetMaskBufSize(resolution);
    maxResolution = RFLiGetMaxMaskRsl(resolution);

    charModel_->resource = ptr8;
    ptr8 += OSRoundUp32B(sizeof(RFLiCharModelRes));
    ptr8 = (u8*)OSRoundUp32B((u32)ptr8);

    {
        int i;
        for (i = 0; i < RFLExp_Max; i++) {
            if (expressionFlag & (1 << i)) {
                charModel_->maskTexObj[i] = (GXTexObj*)ptr8;
                ptr8 += 32;
            }
            else {
                charModel_->maskTexObj[i] = NULL;
            }
        }
    }

    ptr8 = (u8*)OSRoundUp32B((u32)ptr8);

    {
        int i;
        for (i = 0; i < RFLExp_Max; i++) {
            if (expressionFlag & (1 << i)) {
                maskTexBuffer[i] = ptr8;
                ptr8 += maskTexSize;
            }
            else {
                maskTexBuffer[i] = NULL;
            }
        }
    }

    RFLiInitCharModelRes(charModel_->resource, info);

    {
        int i;
        BOOL initIdx = FALSE;
        GXBool mipmap = GX_FALSE;
        f32 max_lod = 0.0f;

        switch (resolution) {
            case RFLResolution_64M: {
                max_lod = 1.0f;
                mipmap = GX_TRUE;
                break;
            }
            case RFLResolution_128M: {
                max_lod = 2.0f;
                mipmap = GX_TRUE;
                break;
            }
            case RFLResolution_256M: {
                max_lod = 3.0f;
                mipmap = GX_TRUE;
                break;
            }
            default: {
                break;
            }
        }

        for (i = 0; i < RFLExp_Max; i++) {
            if (charModel_->maskTexObj[i] != NULL) {
                GXInitTexObj(charModel_->maskTexObj[i], maskTexBuffer[i], maxResolution, maxResolution, GX_TF_RGB5A3, GX_CLAMP, GX_CLAMP, mipmap);
                if (mipmap) {
                    GXInitTexObjLOD(charModel_->maskTexObj[i], GX_LIN_MIP_LIN, GX_LINEAR, 0.0f, max_lod, 0.0f, FALSE, FALSE, GX_ANISO_1);
                }
                else {
                    GXInitTexObjLOD(charModel_->maskTexObj[i], GX_LINEAR, GX_LINEAR, 0.0f, 0.0f, 0.0f, FALSE, FALSE, GX_ANISO_1);
                }

                if (!initIdx) {
                    charModel_->expressionIdx = (RFLExpression)i;
                    initIdx = TRUE;
                }
            }
        }
    }

    RFLiMakeTexture(info, maskTexBuffer, resolution);
}

void RFLSetMtx(RFLCharModel* charModel, const MtxPtr mvMtx) {
    RFLiCharModel* charModel_ = (RFLiCharModel*)charModel;

    RFLi_ASSERTLINE_NULL(charModel, 434);
    RFLi_ASSERTLINE_NULL(mvMtx, 435);

    MTXCopy(mvMtx, charModel_->posMtx);
    MTXInvXpose(mvMtx, charModel_->nrmMtx);
}

void RFLSetMtxPosNrm(RFLCharModel* charModel, const MtxPtr posMtx, const MtxPtr nrmMtx) {
    RFLiCharModel* charModel_ = (RFLiCharModel*)charModel;

    RFLi_ASSERTLINE_NULL(charModel, 457);
    RFLi_ASSERTLINE_NULL(posMtx, 458);
    RFLi_ASSERTLINE_NULL(nrmMtx, 459);

    MTXCopy(posMtx, charModel_->posMtx);
    MTXCopy(nrmMtx, charModel_->nrmMtx);
}

void RFLSetExpression(RFLCharModel* charModel, RFLExpression expression) {
    RFLiCharModel* charModel_ = (RFLiCharModel*)charModel;

    RFLi_ASSERTLINE_NULL(charModel, 480);
    RFLi_ASSERTLINE_NULL(charModel_->maskTexObj[expression], 481);

    charModel_->expressionIdx = expression;
}

RFLExpression RFLGetExpression(const RFLCharModel* charModel) {
    const RFLiCharModel* charModel_ = (RFLiCharModel*)charModel;

    RFLi_ASSERTLINE_NULL(charModel, 499);

    return charModel_->expressionIdx;
}

BOOL RFLIsAvailableExpression(const RFLCharModel* charModel, RFLExpression expression) {
    const RFLiCharModel* charModel_ = (RFLiCharModel*)charModel;

    RFLi_ASSERTLINE_NULL(charModel, 518);

    return charModel_->maskTexObj[expression] != NULL;
}

GXColor RFLiGetFavoriteColor(const RFLiCharInfo* info) {
    RFLi_ASSERTLINE_NULL(info, 533);

    return cFavoriteColor[info->personal.favoriteColor];
}

GXColor RFLGetFavoriteColor(RFLFavoriteColor favoriteColor) {
    return cFavoriteColor[favoriteColor];
}

GXColor RFLiGetFacelineColor(const RFLiCharInfo* info) {
    int color = 0;

    RFLi_ASSERTLINE_NULL(info, 564);

    if (info->faceline.color < ARRAY_SIZE(cFacelineColor)) {
        color = info->faceline.color;
    }

    return cFacelineColor[color];
}

void RFLLoadDrawSetting(const RFLDrawSetting* setting) {
    RFLi_ASSERTLINE_NULL(setting, 588);

    GXSetAlphaCompare(GX_GREATER, 0, GX_AOP_OR, GX_NEVER, 0);
    GXSetBlendMode(GX_BM_BLEND, GX_BL_SRCALPHA, GX_BL_INVSRCALPHA, GX_LO_COPY);
    GXSetZMode(TRUE, GX_LEQUAL, TRUE);
    GXSetZCompLoc(setting->zCompLoc);
    GXSetColorUpdate(TRUE);
    GXSetAlphaUpdate(TRUE);
    GXSetDither(FALSE);
    GXSetDstAlpha(FALSE, 0);

    if (setting->lightEnable) {
        GXSetTevDirect(GX_TEVSTAGE1);
        GXSetTevSwapMode(GX_TEVSTAGE1, GX_TEV_SWAP0, GX_TEV_SWAP0);
        GXSetTevOrder(GX_TEVSTAGE1, GX_TEXCOORD_NULL, GX_TEXMAP_NULL, GX_COLOR0A0);
        GXSetTevColorIn(GX_TEVSTAGE1, GX_CC_ZERO, GX_CC_CPREV, GX_CC_RASC, GX_CC_ZERO);
        GXSetTevColorOp(GX_TEVSTAGE1, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, TRUE, GX_TEVPREV);
        GXSetTevAlphaIn(GX_TEVSTAGE1, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO, GX_CA_APREV);
        GXSetTevAlphaOp(GX_TEVSTAGE1, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, TRUE, GX_TEVPREV);

        RFLLoadMaterialSetting(&cDefaultDrawCoreSetting2Tev);
        RFLLoadVertexSetting(&cDefaultDrawCoreSetting2Tev);
        GXSetNumChans(1);

        GXSetChanCtrl(GX_COLOR0, TRUE, GX_SRC_REG, GX_SRC_REG, setting->lightMask, setting->diffFn, setting->attnFn);
        GXSetChanCtrl(GX_ALPHA0, FALSE, GX_SRC_REG, GX_SRC_REG, GX_LIGHT_NULL, GX_DF_NONE, GX_AF_NONE);
        GXSetChanAmbColor(GX_COLOR0, setting->ambientColor);
        GXSetChanMatColor(GX_COLOR0, cWhite);
    }
    else {
        RFLLoadMaterialSetting(&cDefaultDrawCoreSetting1Tev);
        RFLLoadVertexSetting(&cDefaultDrawCoreSetting1Tev);
        GXSetNumChans(0);
    }
}

void RFLDrawOpa(const RFLCharModel* charModel) {
    RFLDrawOpaCore(charModel, &cDefaultDrawCoreSetting2Tev);
}

void RFLDrawXlu(const RFLCharModel* charModel) {
    RFLDrawXluCore(charModel, &cDefaultDrawCoreSetting2Tev);
}

void RFLLoadVertexSetting(const RFLDrawCoreSetting* setting) {
    RFLi_ASSERTLINE_NULL(setting, 690);
    RFLi_ASSERTLINE(setting->txcGenNum >= 1 && setting->txcGenNum <= 8, 691);
    RFLi_ASSERTLINE(setting->txcID >= GX_TEXCOORD0 && setting->txcID < setting->txcGenNum, 692);

    GXClearVtxDesc();
    GXSetVtxDesc(GX_VA_POS, GX_INDEX8);
    GXSetVtxDesc(GX_VA_NRM, GX_INDEX8);
    GXSetVtxDesc(GX_VA_TEX0, GX_INDEX8);
    GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_POS, GX_POS_XYZ, GX_S16, 8);
    GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_NRM, GX_NRM_XYZ, GX_S16, 14);
    GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_TEX0, GX_TEX_ST, GX_S16, 13);
    GXSetNumTexGens(setting->txcGenNum);
}

void RFLLoadMaterialSetting(const RFLDrawCoreSetting* setting) {
    RFLi_ASSERTLINE_NULL(setting, 721);
    RFLi_ASSERTLINE(setting->texMapID >= GX_TEXMAP0 && setting->texMapID <= GX_TEXMAP7, 722);
    RFLi_ASSERTLINE(setting->tevStageNum >= 1 && setting->tevStageNum <= 16, 723);
    RFLi_ASSERTLINE(setting->tevSwapTable >= GX_TEV_SWAP0 && setting->tevSwapTable <= GX_TEV_SWAP2, 724);
    RFLi_ASSERTLINE(setting->tevKColorID >= GX_KCOLOR0 && setting->tevKColorID <= GX_KCOLOR3, 725);
    RFLi_ASSERTLINE(setting->tevOutRegID >= GX_TEVPREV && setting->tevOutRegID <= GX_TEVREG2, 726);
    RFLi_ASSERTLINE(setting->tevStageNum >= 2 || setting->tevOutRegID == GX_TEVPREV, 727);

    GXSetTevSwapModeTable(setting->tevSwapTable, GX_CH_RED, GX_CH_GREEN, GX_CH_BLUE, GX_CH_ALPHA);
    GXSetTevSwapModeTable(setting->tevSwapTable + 1, GX_CH_RED, GX_CH_ALPHA, GX_CH_BLUE, GX_CH_GREEN);
    GXSetNumTevStages(setting->tevStageNum);
    GXSetTevDirect(GX_TEVSTAGE0);
    GXSetTevAlphaOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, TRUE, setting->tevOutRegID);
    GXSetTevColorOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, TRUE, setting->tevOutRegID);
    GXSetTevKColorSel(GX_TEVSTAGE0, (GXTevKColorSel)(setting->tevKColorID + GX_TEV_KCSEL_K0));
    GXSetTevKAlphaSel(GX_TEVSTAGE0, GX_TEV_KASEL_8_8);
}

void RFLDrawOpaCore(const RFLCharModel* charModel, const RFLDrawCoreSetting* setting) {
    const RFLiCharModel* charModel_ = (RFLiCharModel*)charModel;
    const RFLiCharModelRes* charModelRes;

    RFLi_ASSERTLINE_NULL(charModel, 760);
    RFLi_ASSERTLINE_NULL(setting, 761);

    charModelRes = (RFLiCharModelRes*)charModel_->resource;

    GXSetTevAlphaIn(GX_TEVSTAGE0, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO, GX_CA_KONST);

    // @bug Copy and paste error
    GXSetTevSwapMode(GX_TEVSTAGE0, setting->tevSwapTable, setting->tevSwapTable);
    GXSetTevSwapMode(GX_TEVSTAGE0, setting->tevSwapTable, setting->tevSwapTable);

    GXSetCullMode(setting->reverseCulling ? GX_CULL_FRONT : GX_CULL_BACK);

    GXLoadPosMtxImm(charModel_->posMtx, setting->posNrmMtxID);
    GXLoadNrmMtxImm(charModel_->nrmMtx, setting->posNrmMtxID);
    GXSetCurrentMtx(setting->posNrmMtxID);

    GXSetTexCoordGen(setting->txcID, GX_TG_MTX2x4, GX_TG_POS, GX_IDENTITY);
    GXSetVtxDesc(GX_VA_TEX0, GX_NONE);
    GXSetTevOrder(GX_TEVSTAGE0, GX_TEXCOORD_NULL, GX_TEXMAP_NULL, GX_COLOR_NULL);
    GXSetTevColorIn(GX_TEVSTAGE0, GX_CC_ZERO, GX_CC_ZERO, GX_CC_ZERO, GX_CC_KONST);

    if (charModelRes->dlSizeBeard > 0) {
        GXSetTevKColor(setting->tevKColorID, cBeardColor[charModelRes->colorIdxBeard]);
        GXSetArray(GX_VA_POS, (void*)charModelRes->vtxPosBeard, 6);
        GXSetArray(GX_VA_NRM, (void*)charModelRes->vtxNrmBeard, 6);
        GXCallDisplayList((void*)charModelRes->dlBeard, charModelRes->dlSizeBeard);
    }

    GXSetTevKColor(setting->tevKColorID, cFacelineColor[charModelRes->colorIdxFaceline]);

    if (charModelRes->dlSizeNose > 0) {
        GXSetArray(GX_VA_POS, (void*)charModelRes->vtxPosNose, 6);
        GXSetArray(GX_VA_NRM, (void*)charModelRes->vtxNrmNose, 6);
        GXCallDisplayList((void*)charModelRes->dlNose, charModelRes->dlSizeNose);
    }

    if (charModelRes->flipHair) {
        GXSetCullMode(setting->reverseCulling ? GX_CULL_BACK : GX_CULL_FRONT);
    }

    if (charModelRes->dlSizeForehead > 0) {
        GXSetArray(GX_VA_POS, (void*)charModelRes->vtxPosForehead, 6);
        GXSetArray(GX_VA_NRM, (void*)charModelRes->vtxNrmForehead, 6);
        GXCallDisplayList((void*)charModelRes->dlForehead, charModelRes->dlSizeForehead);
    }

    if (charModelRes->dlSizeHair > 0) {
        GXSetTevKColor(setting->tevKColorID, cHairColor[charModelRes->colorIdxHair]);
        GXSetArray(GX_VA_POS, (void*)charModelRes->vtxPosHair, 6);
        GXSetArray(GX_VA_NRM, (void*)charModelRes->vtxNrmHair, 6);
        GXCallDisplayList((void*)charModelRes->dlHair, charModelRes->dlSizeHair);
    }

    GXSetTevOrder(GX_TEVSTAGE0, setting->txcID, setting->texMapID, GX_COLOR_NULL);
    GXSetTexCoordGen(setting->txcID, GX_TG_MTX2x4, GX_TG_TEX0, GX_IDENTITY);
    GXSetVtxDesc(GX_VA_TEX0, GX_INDEX8);

    if (charModelRes->dlSizeCap > 0) {
        GXSetTevColorIn(GX_TEVSTAGE0, GX_CC_ZERO, GX_CC_KONST, GX_CC_TEXC, GX_CC_KONST);
        GXSetTevColorOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_DIVIDE_2, GX_TRUE, setting->tevOutRegID);
        GXSetTevKColor(setting->tevKColorID, cFavoriteColor[charModelRes->colorIdxFavorite]);

        GXLoadTexObj(&charModelRes->texObjCap, setting->texMapID);
        GXSetArray(GX_VA_POS, (void*)charModelRes->vtxPosCap, 6);
        GXSetArray(GX_VA_NRM, (void*)charModelRes->vtxNrmCap, 6);
        GXSetArray(GX_VA_TEX0, (void*)charModelRes->vtxTxcCap, 4);
        GXCallDisplayList((void*)charModelRes->dlCap, charModelRes->dlSizeCap);

        GXSetTevColorOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, setting->tevOutRegID);
    }

    GXSetTevColorIn(GX_TEVSTAGE0, GX_CC_KONST, GX_CC_TEXC, GX_CC_TEXA, GX_CC_ZERO);
    GXSetTevKColor(setting->tevKColorID, cFacelineColor[charModelRes->colorIdxFaceline]);
    GXSetTevSwapMode(GX_TEVSTAGE0, setting->tevSwapTable, (GXTevSwapSel)(setting->tevSwapTable + 1));

    if (charModelRes->flipHair) {
        GXSetCullMode(setting->reverseCulling ? GX_CULL_FRONT : GX_CULL_BACK);
    }

    GXLoadTexObj(&charModelRes->texObjFaceline, setting->texMapID);
    GXSetArray(GX_VA_POS, (void*)charModelRes->vtxPosFaceline, 6);
    GXSetArray(GX_VA_NRM, (void*)charModelRes->vtxNrmFaceline, 6);
    GXSetArray(GX_VA_TEX0, (void*)charModelRes->vtxTxcFaceline, 4);
    GXCallDisplayList((void*)charModelRes->dlFaceline, charModelRes->dlSizeFaceline);
}

void RFLDrawXluCore(const RFLCharModel* charModel, const RFLDrawCoreSetting* setting) {
    const RFLiCharModel* charModel_ = (RFLiCharModel*)charModel;
    const RFLiCharModelRes* charModelRes;

    RFLi_ASSERTLINE_NULL(charModel, 897);
    RFLi_ASSERTLINE_NULL(setting, 898);

    charModelRes = (RFLiCharModelRes*)charModel_->resource;

    GXSetTevOrder(GX_TEVSTAGE0, setting->txcID, setting->texMapID, GX_COLOR_NULL);
    GXSetTevAlphaIn(GX_TEVSTAGE0, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO, GX_CA_TEXA);
    GXSetTevSwapMode(GX_TEVSTAGE0, setting->tevSwapTable, setting->tevSwapTable);

    GXLoadPosMtxImm(charModel_->posMtx, setting->posNrmMtxID);
    GXLoadNrmMtxImm(charModel_->nrmMtx, setting->posNrmMtxID);
    GXSetCurrentMtx(setting->posNrmMtxID);

    GXSetTexCoordGen(setting->txcID, GX_TG_MTX2x4, GX_TG_TEX0, GX_IDENTITY);
    GXSetTevColorIn(GX_TEVSTAGE0, GX_CC_ZERO, GX_CC_ZERO, GX_CC_ZERO, GX_CC_TEXC);
    GXSetCullMode(setting->reverseCulling ? GX_CULL_FRONT : GX_CULL_BACK);

    GXLoadTexObj(charModel_->maskTexObj[charModel_->expressionIdx], setting->texMapID);
    GXSetArray(GX_VA_POS, (void*)charModelRes->vtxPosMask, 6);
    GXSetArray(GX_VA_NRM, (void*)charModelRes->vtxNrmMask, 6);
    GXSetArray(GX_VA_TEX0, (void*)charModelRes->vtxTxcMask, 4);
    GXCallDisplayList((void*)charModelRes->dlMask, charModelRes->dlSizeMask);

    if (charModelRes->dlSizeNoseline > 0) {
        GXSetTevColorIn(GX_TEVSTAGE0, GX_CC_ZERO, GX_CC_ZERO, GX_CC_ZERO, GX_CC_ZERO);
        GXLoadTexObj(&charModelRes->texObjNoseline, setting->texMapID);
        GXSetArray(GX_VA_POS, (void*)charModelRes->vtxPosNoseline, 6);
        GXSetArray(GX_VA_NRM, (void*)charModelRes->vtxNrmNoseline, 6);
        GXSetArray(GX_VA_TEX0, (void*)charModelRes->vtxTxcNoseline, 4);
        GXCallDisplayList((void*)charModelRes->dlNoseline, charModelRes->dlSizeNoseline);
    }

    if (charModelRes->dlSizeGlass > 0) {
        GXSetTevKColor(setting->tevKColorID, cGlassColor[charModelRes->colorIdxGlass]);
        GXSetCullMode(GX_CULL_NONE);
        GXSetTevColorIn(GX_TEVSTAGE0, GX_CC_ZERO, GX_CC_KONST, GX_CC_TEXC, GX_CC_ZERO);
        GXLoadTexObj(&charModelRes->texObjGlass, setting->texMapID);
        GXSetArray(GX_VA_POS, (void*)charModelRes->vtxPosGlass, 6);
        GXSetArray(GX_VA_NRM, (void*)charModelRes->vtxNrmGlass, 6);
        GXSetArray(GX_VA_TEX0, (void*)charModelRes->vtxTxcGlass, 4);
        GXCallDisplayList((void*)charModelRes->dlGlass, charModelRes->dlSizeGlass);
    }
}

// DEBUG NON MATCH AND FAKE MATCH RELEASE
void RFLiInitCharModelRes(RFLiCharModelRes* charModelRes /* r30 */, const RFLiCharInfo* info /* r29 */) {
    RFLiPositionData noseTrans; // r31+0x38
    RFLiPositionData beardTrans; // r31+0x2C
    RFLiPositionData hairTrans; // r31+0x20

    GXSetMisc(GX_MT_XF_FLUSH, GX_FALSE);
    GXSetMisc(GX_MT_DL_SAVE_CONTEXT, GX_TRUE);

    {
        RFLiCharShapeRes arg; // r31+0x264

        arg.parts = RFLiPartsShp_Faceline;
        arg.index = info->faceline.type;
        arg.vtxPosBuf = charModelRes->vtxPosFaceline;
        arg.vtxNrmBuf = charModelRes->vtxNrmFaceline;
        arg.vtxTxcBuf = charModelRes->vtxTxcFaceline;
        arg.dlBuf = charModelRes->dlFaceline;
        arg.vtxPosBufSize = NUM_VTX_POS(sizeof(charModelRes->vtxPosFaceline));
        arg.vtxNrmBufSize = NUM_VTX_NRM(sizeof(charModelRes->vtxNrmFaceline));
        arg.vtxTxcBufSize = NUM_VTX_TXC(sizeof(charModelRes->vtxTxcFaceline));
        arg.dlBufSize = sizeof(charModelRes->dlFaceline);
        arg.noseTrans = &noseTrans;
        arg.beardTrans = &beardTrans;
        arg.hairTrans = &hairTrans;
        arg.flipX = FALSE;
        arg.transform = FALSE;
        RFLiInitShapeRes(&arg);

        charModelRes->dlSizeFaceline = arg.dlSize;
    }

    {
        RFLiCharShapeRes arg; // r31+0x220

        arg.parts = RFLiPartsShp_Cap;
        arg.index = info->hair.type;
        arg.vtxPosBuf = charModelRes->vtxPosCap;
        arg.vtxNrmBuf = charModelRes->vtxNrmCap;
        arg.vtxTxcBuf = charModelRes->vtxTxcCap;
        arg.dlBuf = charModelRes->dlCap;
        arg.vtxPosBufSize = NUM_VTX_POS(sizeof(charModelRes->vtxPosCap));
        arg.vtxNrmBufSize = NUM_VTX_NRM(sizeof(charModelRes->vtxNrmCap));
        arg.vtxTxcBufSize = NUM_VTX_TXC(sizeof(charModelRes->vtxTxcCap));
        arg.dlBufSize = sizeof(charModelRes->dlCap);
        arg.flipX = info->hair.flip;
        arg.transform = TRUE;
        arg.posScale = 1.0f;
        arg.posTrans = &hairTrans;
        RFLiInitShapeRes(&arg);

        charModelRes->dlSizeCap = arg.dlSize;
        charModelRes->vtxPosHair = &charModelRes->vtxPosCap[arg.vtxPosSize * 4 - arg.vtxPosSize];
        charModelRes->vtxNrmHair = &charModelRes->vtxNrmCap[arg.vtxNrmSize * 4 - arg.vtxNrmSize];
        charModelRes->dlHair = charModelRes->dlNose + OSRoundUp32B(arg.dlSize) + offsetof(RFLiCharModelRes, dlCap);
    }

    {
        RFLiCharShapeRes arg; // r31+0x1DC

        // some weird crap going on 
        #ifndef RFL_DEBUG
        int fake_value = 4;
        #else
        #define fake_value 4
        #endif // RFL_DEBUG

        arg.parts = RFLiPartsShp_Hair;
        arg.index = info->hair.type;
        arg.vtxPosBuf = charModelRes->vtxPosHair;
        arg.vtxNrmBuf = charModelRes->vtxNrmHair;
        arg.dlBuf = charModelRes->dlHair;
        arg.vtxPosBufSize = NUM_VTX_POS(sizeof(charModelRes->vtxPosCap)) - (((u32)charModelRes->vtxPosHair - (u32)charModelRes->vtxPosCap) / VTX_COORD_SIZE) / VTX_COORDS_IN_POS;
        arg.vtxNrmBufSize = NUM_VTX_POS(sizeof(charModelRes->vtxNrmCap)) - (((u32)charModelRes->vtxNrmHair - (u32)charModelRes->vtxNrmCap) / VTX_COORD_SIZE) / VTX_COORDS_IN_NRM;
        arg.dlBufSize = sizeof(charModelRes->dlCap) - ((u32)charModelRes->dlHair - (u32)charModelRes->dlCap);
        arg.flipX = info->hair.flip;
        arg.transform = TRUE;
        arg.posScale = 1.0f;
        arg.posTrans = &hairTrans;
        RFLiInitShapeRes(&arg);

        charModelRes->dlSizeHair = arg.dlSize;
        charModelRes->vtxPosForehead = &charModelRes->vtxPosHair[arg.vtxPosSize * fake_value - arg.vtxPosSize];
        charModelRes->vtxNrmForehead = &charModelRes->vtxNrmHair[arg.vtxNrmSize * fake_value - arg.vtxNrmSize];
        charModelRes->dlForehead = charModelRes->dlHair + OSRoundUp32B(arg.dlSize);
        charModelRes->flipHair = info->hair.flip;

        #ifdef RFL_DEBUG
        #undef fake_value
        #endif // RFL_DEBUG
    }

    {
        RFLiCharShapeRes arg; // r31+0x198

        arg.parts = RFLiPartsShp_Forehead;
        arg.index = info->hair.type;
        arg.vtxPosBuf = charModelRes->vtxPosForehead;
        arg.vtxNrmBuf = charModelRes->vtxNrmForehead;
        arg.dlBuf = charModelRes->dlForehead;
        arg.vtxPosBufSize = NUM_VTX_POS(sizeof(charModelRes->vtxPosCap)) - (((u32)charModelRes->vtxPosForehead - (u32)charModelRes->vtxPosCap) / VTX_COORD_SIZE) / VTX_COORDS_IN_POS;
        arg.vtxNrmBufSize = NUM_VTX_POS(sizeof(charModelRes->vtxNrmCap)) - (((u32)charModelRes->vtxNrmForehead - (u32)charModelRes->vtxNrmCap) / VTX_COORD_SIZE) / VTX_COORDS_IN_NRM;
        arg.dlBufSize = sizeof(charModelRes->dlCap) - ((u32)charModelRes->dlForehead - (u32)charModelRes->dlCap);
        arg.flipX = info->hair.flip;
        arg.transform = TRUE;
        arg.posScale = 1.0f;
        arg.posTrans = &hairTrans;
        RFLiInitShapeRes(&arg);

        charModelRes->dlSizeForehead = arg.dlSize;
    }

    {
        RFLiCharShapeRes arg; // r31+0x154

        arg.parts = RFLiPartsShp_Beard;
        arg.index = info->beard.type;
        arg.vtxPosBuf = charModelRes->vtxPosBeard;
        arg.vtxNrmBuf = charModelRes->vtxNrmBeard;
        arg.dlBuf = charModelRes->dlBeard;
        arg.vtxPosBufSize = NUM_VTX_POS(sizeof(charModelRes->vtxPosBeard));
        arg.vtxNrmBufSize = NUM_VTX_NRM(sizeof(charModelRes->vtxNrmBeard));
        arg.dlBufSize = sizeof(charModelRes->dlBeard);
        arg.flipX = FALSE;
        arg.transform = TRUE;
        arg.posScale = 1.0f;
        arg.posTrans = &beardTrans;
        RFLiInitShapeRes(&arg);

        charModelRes->dlSizeBeard = arg.dlSize;
    }

    {
        f32 scale; // f31
        RFLiPositionData trans; // r31+0x14
        {
            RFLiCharShapeRes arg; // r31+0x110

            scale = 0.4f + 0.175f * info->nose.scale;

            trans.x = noseTrans.x;
            trans.y = +noseTrans.y + -1.5f * (info->nose.y - 8);
            trans.z = noseTrans.z;

            arg.parts = RFLiPartsShp_Nose;
            arg.index = info->nose.type;
            arg.vtxPosBuf = charModelRes->vtxPosNose;
            arg.vtxNrmBuf = charModelRes->vtxNrmNose;
            arg.dlBuf = charModelRes->dlNose;
            arg.vtxPosBufSize = NUM_VTX_POS(sizeof(charModelRes->vtxPosNose));
            arg.vtxNrmBufSize = NUM_VTX_NRM(sizeof(charModelRes->vtxNrmNose));
            arg.dlBufSize = sizeof(charModelRes->dlNose);
            arg.flipX = FALSE;
            arg.transform = TRUE;
            arg.posScale = scale;
            arg.posTrans = &trans;
            RFLiInitShapeRes(&arg);

            charModelRes->dlSizeNose = arg.dlSize;
        }
        {
            RFLiCharShapeRes arg; // r31+0xCC

            arg.parts = RFLiPartsShp_Noseline;
            arg.index = info->nose.type;
            arg.vtxPosBuf = charModelRes->vtxPosNoseline;
            arg.vtxNrmBuf = charModelRes->vtxNrmNoseline;
            arg.vtxTxcBuf = charModelRes->vtxTxcNoseline;
            arg.dlBuf = charModelRes->dlNoseline;
            arg.vtxPosBufSize = NUM_VTX_POS(sizeof(charModelRes->vtxPosNoseline));
            arg.vtxNrmBufSize = NUM_VTX_NRM(sizeof(charModelRes->vtxNrmNoseline));
            arg.vtxTxcBufSize = NUM_VTX_TXC(sizeof(charModelRes->vtxTxcNoseline));
            arg.dlBufSize = sizeof(charModelRes->dlNoseline);
            arg.flipX = FALSE;
            arg.transform = TRUE;
            arg.posScale = scale;
            arg.posTrans = &trans;
            RFLiInitShapeRes(&arg);

            charModelRes->dlSizeNoseline = arg.dlSize;
        }
    }

    {
        RFLiCharShapeRes arg; // r31+0x88

        arg.parts = RFLiPartsShp_Mask;
        arg.index = info->faceline.type;
        arg.vtxPosBuf = charModelRes->vtxPosMask;
        arg.vtxNrmBuf = charModelRes->vtxNrmMask;
        arg.vtxTxcBuf = charModelRes->vtxTxcMask;
        arg.dlBuf = charModelRes->dlMask;
        arg.vtxPosBufSize = NUM_VTX_POS(sizeof(charModelRes->vtxPosMask));
        arg.vtxNrmBufSize = NUM_VTX_NRM(sizeof(charModelRes->vtxNrmMask));
        arg.vtxTxcBufSize = NUM_VTX_TXC(sizeof(charModelRes->vtxTxcMask));
        arg.dlBufSize = sizeof(charModelRes->dlMask);
        arg.flipX = FALSE;
        arg.transform = FALSE;
        RFLiInitShapeRes(&arg);

        charModelRes->dlSizeMask = arg.dlSize;
    }

    {
        RFLiCharShapeRes arg; // r31+0x44
        f32 scale; // f30
        RFLiPositionData trans; // r31+0x8

        scale = 0.15f * info->glass.scale + 0.4f;

        trans.x = noseTrans.x;
        trans.y = 5.0f + noseTrans.y + -1.5f * (info->glass.y - 11);
        trans.z = 2.0f + noseTrans.z;

        arg.parts = RFLiPartsShp_Glass;
        arg.index = 0;
        arg.vtxPosBuf = charModelRes->vtxPosGlass;
        arg.vtxNrmBuf = charModelRes->vtxNrmGlass;
        arg.vtxTxcBuf = charModelRes->vtxTxcGlass;
        arg.dlBuf = charModelRes->dlGlass;
        arg.vtxPosBufSize = NUM_VTX_POS(sizeof(charModelRes->vtxPosGlass));
        arg.vtxNrmBufSize = NUM_VTX_NRM(sizeof(charModelRes->vtxNrmGlass));
        arg.vtxTxcBufSize = NUM_VTX_TXC(sizeof(charModelRes->vtxTxcGlass));
        arg.dlBufSize = sizeof(charModelRes->dlGlass);
        arg.flipX = FALSE;
        arg.transform = TRUE;
        arg.posScale = scale;
        arg.posTrans = &trans;
        RFLiInitShapeRes(&arg);

        charModelRes->dlSizeGlass = arg.dlSize;
    }

    RFLiInitTexRes(&charModelRes->texObjFaceline, RFLiPartsShpTex_Face, info->faceline.texture, charModelRes->texFaceline);

    if (charModelRes->dlSizeCap > 0) {
        RFLiInitTexRes(&charModelRes->texObjCap, RFLiPartsShpTex_Cap, info->hair.type, charModelRes->texCap);
    }

    if (charModelRes->dlSizeNoseline > 0) {
        RFLiInitTexRes(&charModelRes->texObjNoseline, RFLiPartsShpTex_Noseline, info->nose.type, charModelRes->texNoseline);
    }

    RFLiInitTexRes(&charModelRes->texObjGlass, RFLiPartsShpTex_Glass, info->glass.type, charModelRes->texGlass);

    charModelRes->colorIdxFaceline = info->faceline.color;
    charModelRes->colorIdxHair = info->hair.color;
    charModelRes->colorIdxBeard = info->beard.color;
    charModelRes->colorIdxGlass = info->glass.color;
    charModelRes->colorIdxFavorite = info->personal.favoriteColor;

    DCFlushRange(charModelRes, sizeof(RFLiCharModelRes)+0x10 /*?*/);
}

// DEBUG NON MATCH
void RFLiInitShapeRes(RFLiCharShapeRes* arg /* r30 */) {
    void* res; // r31+0xE8
    u8* ptr8; // r29
    BOOL skipTxc; // r31+0xE4

    static const u32 csHeader[RFLiPartsShp_Max] = { 'nose', 'frhd', 'face', 'hair', 'cap_', 'berd', 'nsln', 'mask', 'glas' };

    RFLi_ASSERTLINE_NULL(arg, 1261);
    RFLi_ASSERTLINE_NULL(arg->vtxPosBuf, 1262);
    RFLi_ASSERTLINE_NULL(arg->vtxNrmBuf, 1263);
    RFLi_ASSERTLINE_NULL(arg->dlBuf, 1264);
    RFLi_ASSERTLINE_ALIGN(arg->dlBuf, 32, 1265);

    skipTxc = arg->parts == RFLiPartsShp_Nose || arg->parts == RFLiPartsShp_Forehead ||
            arg->parts == RFLiPartsShp_Hair ||
            arg->parts == RFLiPartsShp_Beard;

    if (!skipTxc) {
        RFLi_ASSERTLINE_NULL(arg->vtxTxcBuf, 1273);
    }

    if (arg->transform) {
        RFLi_ASSERTLINE_NULL(arg->posTrans, 1277);
    }

    {
        u32 fileSize = RFLiGetShapeSize(arg->parts, arg->index); // r31+0xE0
        res = RFLiAlloc32(fileSize);
        RFLi_ASSERTLINE_NULL(res, 1287);
    }

    {
        void* result = RFLiLoadShape(arg->parts, arg->index, res); // r31+0xDC
        RFLi_ASSERTLINE_MSG(result, 1290, "ファイルの読み込みに失敗しました。"); // "Failed to read file."
    }

    {
        u32 header;

        ptr8 = res;
        header = *(u32*)ptr8; // r31+0xD8
        RFLi_ASSERTLINE_MSG(header == csHeader[arg->parts], 1304, "ヘッダとpartsが一致しません"); // "Header and "parts" do not match"

        ptr8 += sizeof(header);
    }

    if (arg->parts == RFLiPartsShp_Faceline) {
        RFLi_ASSERTLINE_NULL(arg->noseTrans, 1310);
        RFLi_ASSERTLINE_NULL(arg->beardTrans, 1311);
        // Missing assert for arg->hairTrans?

        memcpy(arg->noseTrans, ptr8, sizeof(RFLiPositionData)); ptr8 += sizeof(RFLiPositionData);
        memcpy(arg->beardTrans, ptr8, sizeof(RFLiPositionData)); ptr8 += sizeof(RFLiPositionData);
        memcpy(arg->hairTrans, ptr8, sizeof(RFLiPositionData)); ptr8 += sizeof(RFLiPositionData);
    }

    {
        u16 size = *(u16*)ptr8; // r31+0xA
        if (size == 0) {
            arg->vtxPosSize = 0;
            arg->vtxNrmSize = 0;
            arg->vtxTxcSize = 0;

            arg->dlSize = 0;

            RFLiFree(res);
            return;
        }
    }

    arg->vtxPosSize = *(u16*)ptr8;
    RFLi_ASSERTLINE_MSG(arg->vtxPosSize <= arg->vtxPosBufSize, 1351, "vtxPosSize(%d) > vtxPosBufSize(%d) parts:%d index:%d", arg->vtxPosSize, arg->vtxPosBufSize, arg->parts, arg->index);
    ptr8 += sizeof(arg->vtxPosSize);

    {
        u32 byteSize; // r31+0xD4
        s16* ptr16; // r31+0xD0 

        ptr16 = (s16*)ptr8;
        byteSize = SIZE_VTX_POS(arg->vtxPosSize);

        if (arg->transform) {
            int i; // r31+0xCC
            s32 s = 256.0f * arg->posScale; // r31+0xC8
            s32 tx = 256.0f * arg->posTrans->x; // r31+0xC4
            s32 ty = 256.0f * arg->posTrans->y; // r31+0xC0
            s32 tz = 256.0f * arg->posTrans->z; // r31+0xBC

            for (i = 0; i < arg->vtxPosSize; i++) {
                s16 temp[3]; // r31+0xFC

                if (arg->flipX) {
                    temp[0] = tx + ((-ptr16[0] * s) >> 8);
                }
                else {
                    temp[0] = tx + ((ptr16[0] * s) >> 8);
                }

                temp[1] = ty + ((ptr16[1] * s) >> 8);
                temp[2] = tz + ((ptr16[2] * s) >> 8);

                RFLiTransformCoordinate(&arg->vtxPosBuf[i * VTX_COORDS_IN_POS], temp);
                ptr16 += VTX_COORDS_IN_POS;
            }
        }
        else if (arg->flipX) {
            int i; // r31+0xB8

            for (i = 0; i < arg->vtxPosSize; i++) {
                s16 temp[3]; // r31+0xF4
                
                temp[0] = -ptr16[0];
                temp[1] =  ptr16[1];
                temp[2] =  ptr16[2];

                RFLiTransformCoordinate(&arg->vtxPosBuf[i * VTX_COORDS_IN_POS], temp);
                ptr16 += VTX_COORDS_IN_POS;
            }
        }
        else {
            int i; // r31+0xB4
            
            for (i = 0; i < arg->vtxPosSize; i++) {
                RFLiTransformCoordinate(&arg->vtxPosBuf[i * VTX_COORDS_IN_POS], ptr16);
                ptr16 += VTX_COORDS_IN_POS;
            }
        }

        ptr8 += byteSize;
    }

    arg->vtxNrmSize = *(u16*)ptr8;
    RFLi_ASSERTLINE_MSG(arg->vtxNrmSize <= arg->vtxNrmBufSize, 1415, "vtxNrmSize(%d) > vtxNrmBufSize(%d) parts:%d index:%d", arg->vtxNrmSize, arg->vtxNrmBufSize, arg->parts, arg->index);
    ptr8 += sizeof(u16);

    {
        u32 byteSize; // r31+0xB0
        s16* ptr16; // r31+0xAC

        ptr16 = (s16*)ptr8;
        byteSize = SIZE_VTX_NRM(arg->vtxNrmSize);
    
        if (arg->flipX) {
            int i; // r31+0xA8

            for (i = 0; i < arg->vtxNrmSize; i++) {
                s16 temp[3]; // r31+0xEC

                temp[0] = -ptr16[0];
                temp[1] =  ptr16[1];
                temp[2] =  ptr16[2];

                RFLiTransformCoordinate(&arg->vtxNrmBuf[i * VTX_COORDS_IN_NRM], temp);
                ptr16 += VTX_COORDS_IN_NRM;
            }
        }
        else {
            int i; // r31+0xA4
            for (i = 0; i < arg->vtxNrmSize; i++) {
                RFLiTransformCoordinate(&arg->vtxNrmBuf[i * VTX_COORDS_IN_NRM], ptr16);
                ptr16 += VTX_COORDS_IN_NRM;
            }
        }

        ptr8 += byteSize;
    }

    {
        u32 byteSize; // r31+0xA0

        if (skipTxc) {
            arg->vtxTxcSize = 0;
        }
        else {
            arg->vtxTxcSize = *(u16*)ptr8;
            RFLi_ASSERTLINE_MSG(arg->vtxTxcSize <= arg->vtxTxcBufSize, 1460, "vtxTxcSize(%d) > vtxTxcBufSize(%d) parts:%d index:%d", arg->vtxTxcSize, arg->vtxTxcBufSize, arg->parts, arg->index);
            ptr8 += sizeof(u16);

            byteSize = SIZE_VTX_TXC(arg->vtxTxcSize);
            memcpy(arg->vtxTxcBuf, ptr8, byteSize);
            ptr8 += byteSize;
        }
    }

    {
        int primitiveNum = *ptr8++; // r31+0x9C
        int i, j; // r31+0x94

        DCInvalidateRange(arg->dlBuf, arg->dlBufSize);
        GXBeginDisplayList(arg->dlBuf, arg->dlBufSize);

        for (i = 0; i < primitiveNum; i++) {
            u16 vtxNum = *ptr8++; // r31+0x8
            GXPrimitive prim = *ptr8++; // r31+0x90

            GXBegin(prim, GX_VTXFMT0, vtxNum); {
                for (j = 0; j < vtxNum; j++) {
                    GXPosition1x8(*ptr8++);
                    GXNormal1x8(*ptr8++);

                    if (!skipTxc) {
                        GXTexCoord1x8(*ptr8++);
                    }
                }
            }
            GXEnd();
        }

        arg->dlSize = GXEndDisplayList();
    }

    RFLiFree(res);
}

void RFLiInitTexRes(GXTexObj* texObj, RFLiPartsShpTex parts, u16 index, void* buf) {
    RFLTexture* res;
    u32 resSize;
    u32 fileSize;

    RFLi_ASSERTLINE_NULL(texObj, 1523);
    RFLi_ASSERTLINE_NULL(buf, 1524);
    RFLi_ASSERTLINE_ALIGN(buf, 32, 1525);

    fileSize = RFLiGetShpTexSize(parts, index);
    res = RFLiAlloc32(fileSize);
    RFLi_ASSERTLINE_NULL(res, 1534);

    {
        void* result = RFLiLoadShpTexture(parts, index, res);
        RFLi_ASSERTLINE_MSG(result, 1537, "ファイルの読み込みに失敗しました。"); // "Failed to read file."
    }

    switch (parts) {
        case RFLiPartsShpTex_Face: {
            RFLi_ASSERTLINE(res->format == GX_TF_RGB5A3, 1542);
            resSize = res->height * res->width * 2;
            break;
        }
        case RFLiPartsShpTex_Cap:
        case RFLiPartsShpTex_Noseline: {
            RFLi_ASSERTLINE(res->format == GX_TF_I4, 1548);
            resSize = res->height * res->width / 2;
            break;
        }
        case RFLiPartsShpTex_Glass: {
            RFLi_ASSERTLINE(res->format == GX_TF_IA4, 1553);
            resSize = res->height * res->width;
            break;
        }
        default: {
            RFLi_ASSERTLINE_MSG(FALSE, 1558, "無効なパーツの種類です。"); // "Invalid part type."
            break;
        }
    }

    memcpy(buf, RFLiGetTexImage(res), resSize);
    GXInitTexObj(texObj, buf, res->width, res->height, res->format, res->wrapS, res->wrapT, FALSE);
    GXInitTexObjLOD(texObj, GX_LINEAR, GX_LINEAR, 0.0f, 0.0f, 0.0f, FALSE, FALSE, GX_ANISO_1);
    RFLiFree(res);
}

void RFLiTransformCoordinate(s16* to, const s16* from) {
    RFLi_ASSERTLINE_NULL(from, 1595);
    RFLi_ASSERTLINE_NULL(to, 1596);
    to[coordinateData.rOff] = coordinateData.rRev ? -from[0] : from[0];
    to[coordinateData.uOff] = coordinateData.uRev ? -from[1] : from[1];
    to[coordinateData.fOff] = coordinateData.fRev ? -from[2] : from[2];
}

void RFLDrawShape(const RFLCharModel* charModel) {
    const RFLiCharModel* charModel_ = (RFLiCharModel*)charModel;
    const RFLiCharModelRes* res;
    GXCullMode cullMode;

    RFLi_ASSERTLINE_NULL(charModel, 1628);

    res = (const RFLiCharModelRes*)charModel_->resource;

    GXClearVtxDesc();
    GXSetVtxDesc(GX_VA_POS, GX_INDEX8);
    GXSetVtxDesc(GX_VA_NRM, GX_INDEX8);

    GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_POS, GX_POS_XYZ, GX_S16, 8);
    GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_NRM, GX_NRM_XYZ, GX_S16, 14);
    GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_TEX0, GX_TEX_ST, GX_S16, 13);

    GXLoadPosMtxImm(charModel_->posMtx, GX_PNMTX0);
    GXLoadNrmMtxImm(charModel_->nrmMtx, GX_PNMTX0);
    GXSetCurrentMtx(GX_PNMTX0);

    if (res->dlSizeBeard > 0) {
        GXSetArray(GX_VA_POS, (void*)res->vtxPosBeard, 6);
        GXSetArray(GX_VA_NRM, (void*)res->vtxNrmBeard, 6);
        GXCallDisplayList((void*)res->dlBeard, res->dlSizeBeard);
    }

    if (res->dlSizeNose > 0) {
        GXSetArray(GX_VA_POS, (void*)res->vtxPosNose, 6);
        GXSetArray(GX_VA_NRM, (void*)res->vtxNrmNose, 6);
        GXCallDisplayList((void*)res->dlNose, res->dlSizeNose);
    }

    if (res->flipHair) {
        GXGetCullMode(&cullMode);
        switch (cullMode) {
            case GX_CULL_BACK: {
                GXSetCullMode(GX_CULL_FRONT);
                break;
            }
            case GX_CULL_FRONT: {
                GXSetCullMode(GX_CULL_BACK);
                break;
            }
            default: {
                break;
            }
        }
    }

    if (res->dlSizeForehead > 0) {
        GXSetArray(GX_VA_POS, (void*)res->vtxPosForehead, 6);
        GXSetArray(GX_VA_NRM, (void*)res->vtxNrmForehead, 6);
        GXCallDisplayList((void*)res->dlForehead, res->dlSizeForehead);
    }

    if (res->dlSizeHair > 0) {
        GXSetArray(GX_VA_POS, (void*)res->vtxPosHair, 6);
        GXSetArray(GX_VA_NRM, (void*)res->vtxNrmHair, 6);
        GXCallDisplayList((void*)res->dlHair, res->dlSizeHair);
    }

    GXSetVtxDesc(GX_VA_TEX0, GX_INDEX8);
    if (res->dlSizeCap > 0) {
        GXSetArray(GX_VA_POS, (void*)res->vtxPosCap, 6);
        GXSetArray(GX_VA_NRM, (void*)res->vtxNrmCap, 6);
        GXSetArray(GX_VA_TEX0, (void*)res->vtxTxcCap, 4);
        GXCallDisplayList((void*)res->dlCap, res->dlSizeCap);
    }

    if (res->flipHair) {
        switch (cullMode) {
            case GX_CULL_BACK: {
                GXSetCullMode(GX_CULL_BACK);
                break;
            }
            case GX_CULL_FRONT: {
                GXSetCullMode(GX_CULL_FRONT);
                break;
            }
            default: {
                break;
            }
        }
    }

    GXSetArray(GX_VA_POS, (void*)res->vtxPosFaceline, 6);
    GXSetArray(GX_VA_NRM, (void*)res->vtxNrmFaceline, 6);
    GXSetArray(GX_VA_TEX0, (void*)res->vtxTxcFaceline, 4);
    GXCallDisplayList((void*)res->dlFaceline, res->dlSizeFaceline);
}

void RFLCopyCharModel(RFLCharModel* dstCharModel, void* dstBufferPtr, const RFLCharModel* srcCharModel) {
    RFLiCharModel* dstModel = (RFLiCharModel*)dstCharModel;
    const RFLiCharModel* srcModel = (const RFLiCharModel*)srcCharModel;
    RFLiCharModelRes* dstRes = (RFLiCharModelRes*)dstBufferPtr;
    const RFLiCharModelRes* srcRes = (const RFLiCharModelRes*)srcModel->resource;

    RFLi_ASSERTLINE_NULL(dstCharModel, 1762);
    RFLi_ASSERTLINE_NULL(srcCharModel, 1763);
    RFLi_ASSERTLINE_NULL(dstBufferPtr, 1764);
    RFLi_ASSERTLINE_ALIGN(dstBufferPtr, 32, 1765);

    memcpy(dstModel->posMtx, srcModel->posMtx, sizeof(Mtx));
    memcpy(dstModel->nrmMtx, srcModel->nrmMtx, sizeof(Mtx));

    dstModel->expressionIdx = srcModel->expressionIdx;
    dstModel->resolution = srcModel->resolution;
    dstModel->resource = dstBufferPtr;

    memcpy(dstModel->resource, srcModel->resource, OSRoundUp32B(sizeof(RFLiCharModelRes)));

    #define COPY_TEX(texObj, tex)                                                                           \
    {                                                                                                       \
        const GXTexObj* srcTex = &srcRes->texObj;                                                           \
        GXInitTexObj(&dstRes->texObj, dstRes->tex,  GXGetTexObjWidth(srcTex),                               \
                                                    GXGetTexObjHeight(srcTex),                              \
                                                    GXGetTexObjFmt(srcTex),                                 \
                                                    GXGetTexObjWrapS(srcTex),                               \
                                                    GXGetTexObjWrapT(srcTex),                               \
                                                    GX_FALSE);                                              \
        GXInitTexObjLOD(&dstRes->texObj, GX_LINEAR, GX_LINEAR, 0, 0, 0, GX_FALSE, GX_FALSE, GX_ANISO_1);    \
    }

    COPY_TEX(texObjFaceline, texFaceline);
    if (dstRes->dlSizeCap != 0) COPY_TEX(texObjCap, texCap);
    if (dstRes->dlSizeNoseline != 0) COPY_TEX(texObjNoseline, texNoseline);
    COPY_TEX(texObjGlass, texGlass);

    dstRes->vtxPosHair = (s16*)((u32)dstRes + ((u32)srcRes->vtxPosHair - (u32)srcRes));
    dstRes->vtxNrmHair = (s16*)((u32)dstRes + ((u32)srcRes->vtxNrmHair - (u32)srcRes));
    dstRes->dlHair = (u8*)((u32)dstRes + ((u32)srcRes->dlHair - (u32)srcRes));

    dstRes->vtxPosForehead = (s16*)((u32)dstRes + ((u32)srcRes->vtxPosForehead - (u32)srcRes));
    dstRes->vtxNrmForehead = (s16*)((u32)dstRes + ((u32)srcRes->vtxNrmForehead - (u32)srcRes));
    dstRes->dlForehead = (u8*)((u32)dstRes + ((u32)srcRes->dlForehead - (u32)srcRes));
    
    DCFlushRangeNoSync(dstRes, OSRoundUp32B(sizeof(*dstRes)));

    {
        int i;
        u32 maskTexSize = RFLiGetMaskBufSize(srcModel->resolution);
        RFLi_MASKRSL maxResolution = RFLiGetMaxMaskRsl(srcModel->resolution);
        int initIdx = 0;
        GXBool mipmap = GX_FALSE;
        f32 max_lod = 0.0f;

        switch (srcModel->resolution) {
            case RFLResolution_64M: {
                max_lod = 1.0f;
                mipmap = GX_TRUE;
                break;
            }
            case RFLResolution_128M: {
                max_lod = 2.0f;
                mipmap = GX_TRUE;
                break;
            }
            case RFLResolution_256M: {
                max_lod = 3.0f;
                mipmap = GX_TRUE;
                break;
            }
            default: {
                break;
            }
        }

        for (i = 0; i < RFLExp_Max; i++) {
            if (srcModel->maskTexObj[i] != NULL) {
                void* srcTexImg = OSPhysicalToCached((u32)GXGetTexObjData(srcModel->maskTexObj[i]));
                void* dstTexImg;
                u32 texObjOffset = (u32)srcModel->maskTexObj[i] - (u32)srcModel->resource;
                u32 texImgOffset = (u32)srcTexImg - (u32)srcModel->resource;

                dstModel->maskTexObj[i] = (GXTexObj*)((u8*)dstBufferPtr + texObjOffset);
                dstTexImg = ((u8*)dstBufferPtr + texImgOffset);

                memcpy(dstTexImg, srcTexImg, maskTexSize);
                DCFlushRangeNoSync(dstTexImg, maskTexSize);

                GXInitTexObj(dstModel->maskTexObj[i], dstTexImg, maxResolution, maxResolution, GX_TF_RGB5A3, GX_CLAMP, GX_CLAMP, mipmap);
            
                if (mipmap) {
                    GXInitTexObjLOD(dstModel->maskTexObj[i], GX_LIN_MIP_LIN, GX_LINEAR, 0, max_lod, 0, GX_FALSE, GX_FALSE, GX_ANISO_1);
                }
                else {
                    GXInitTexObjLOD(dstModel->maskTexObj[i], GX_LINEAR, GX_LINEAR, 0, 0, 0, GX_FALSE, GX_FALSE, GX_ANISO_1);
                }
            }
            else {
                dstModel->maskTexObj[i] = NULL;
            }
        }
    }

    PPCSync();
}

#if RFL_BUILD >= 20080306
void RFLSetModelDrawDoneCallback(RFLSimpleCB cb) {
    RFLiGetManager()->mCreateModelCB = cb;
}
#endif
