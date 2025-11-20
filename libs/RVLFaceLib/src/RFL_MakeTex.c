#define KEEP_OLD_NULL

#include <internal/RFLi_LibConfig.h>

#include <RVLFaceLib.h>
#include <RVLFaceLibInternal.h>

#include <internal/RFLi_Debug.h>

#include <internal/RFLi_FaceConfig.h>
#include <internal/RFLi_FaceConfig/offsets.h>
#include <internal/RFLi_FaceConfig/colors.h>

#include <revolution/os.h>
#include <revolution/mtx.h>
#include <revolution/gx.h>

#include <math.h>

#define TRANS_X_BASE    0.88961464f
#define TRANS_Y_BASE    0.9276675f

void RFLiSetupCopyTex(GXTexFmt texFmt, u16 width, u16 height, void* buf, GXColor clearColor) {
    RFLi_ASSERTLINE_NULL(buf, 36);

    GXSetFog(GX_FOG_NONE, 1.0f, 1.0f, 0.0f, 0.0f, (GXColor){0, 0, 0, 0});

    GXSetColorUpdate(GX_TRUE);
    GXSetAlphaUpdate(GX_TRUE);
    GXSetDstAlpha(GX_FALSE, 0);

    GXSetZMode(GX_TRUE, GX_LEQUAL, GX_TRUE);
    GXSetPixelFmt(GX_PF_RGBA6_Z24, GX_ZC_LINEAR);

    GXSetCopyFilter(GX_FALSE, NULL, GX_FALSE, NULL);
    GXSetCopyClamp(GX_CLAMP_TOP + GX_CLAMP_BOTTOM);

    GXSetTexCopySrc(0, 0, width, height);
    GXSetTexCopyDst(width, height, texFmt, GX_FALSE);

    GXSetCopyClear(clearColor, 0x1000000-1);

    DCInvalidateRange(buf, 2 * width * height);
    GXCopyTex(buf, GX_TRUE);

    GXPixModeSync();
}

// DEBUG NON MATCH
void RFLiMakeTexture(const RFLiCharInfo* pCharInfo /* r28 */, u8** texBuffer /* r29 */, RFLResolution resolution /* r27 */) {
    int i; // r30

    RFLiCharInfo info[RFLExp_Max]; // r31+0xF78
    RFLiFaceData face[RFLExp_Max]; // r31+0x178

    u32 texSizeEye = RFLiGetTexSize(RFLiPartsTex_Eye, 0); // r31+0x100
    u32 texSizeEyebrow = RFLiGetTexSize(RFLiPartsTex_Eyebrow, 0); // r31+0xFC
    u32 texSizeMouth = RFLiGetTexSize(RFLiPartsTex_Mouth, 0); // r31+0xF8
    u32 texSizeMustache = RFLiGetTexSize(RFLiPartsTex_Mustache, 0); // r31+0xF4
    u32 texSizeMole = RFLiGetTexSize(RFLiPartsTex_Mole, 0); // r31+0xF0

    u8* bufEyeNormal; // r31+0xEC
    u8* bufEyeBNormal; // r31+0xE8
    u8* bufMouthNormal; // r31+0xE4
    u8* bufMustacheNormal; // r31+0xE0
    u8* bufMoleNormal; // r31+0xDC
    u8* bufEyeSmile; // r31+0xD8
    u8* bufMouthAnger; // r31+0xD4
    u8* bufEyeSorrow; // r31+0xD0
    u8* bufMouthSorrow; // r31+0xCC
    u8* bufEyeSurprise; // r31+0xC8
    u8* bufEyeBlink; // r31+0xC4
    u8* bufOpenMouth; // r31+0xC0
    u8** bufEye[RFLExp_Max]; // r31+0x158
    u8** bufMouth[RFLExp_Max]; // r31+0x13C

    RFLTexture* texEyeNormal; // r31+0xBC
    RFLTexture* texEyeBNormal; // r31+0xB8
    RFLTexture* texMouthNormal; // r31+0xB4
    RFLTexture* texMustacheNormal; // r31+0xB0
    RFLTexture* texMoleNormal; // r31+0xAC
    RFLTexture* texEyeSmile; // r31+0xA8
    RFLTexture* texMouthAnger; // r31+0xA4
    RFLTexture* texEyeSad; // r31+0xA0
    RFLTexture* texMouthSad; // r31+0x9C
    RFLTexture* texEyeSurprise; // r31+0x98
    RFLTexture* texEyeBlink; // r31+0x94
    RFLTexture* texOpenMouth; // r31+0x90
    RFLTexture** texEye[RFLExp_Max]; // r31+0x120
    RFLTexture** texMouth[RFLExp_Max]; // r31+0x104

    u32 scissorOffsetX; // r31+0x8C
    u32 scissorOffsetY; // r31+0x88
    u32 scissorWidth; // r31+0x84
    u32 scissorHeight; // r31+0x80

    bufEyeNormal = NULL;
    bufEyeBNormal = NULL;
    bufMouthNormal = NULL;
    bufMustacheNormal = NULL;
    bufMoleNormal = NULL;
    bufEyeSmile = NULL;
    bufMouthAnger = NULL;
    bufEyeSorrow = NULL;
    bufMouthSorrow = NULL;
    bufEyeSurprise = NULL;
    bufEyeBlink = NULL;
    bufOpenMouth = NULL;
    
    bufEye[RFLExp_Normal] = &bufEyeNormal;
    bufEye[RFLExp_Smile] = &bufEyeSmile;
    bufEye[RFLExp_Anger] = &bufEyeNormal;
    bufEye[RFLExp_Sorrow] = &bufEyeSorrow;
    bufEye[RFLExp_Surprise] = &bufEyeSurprise;
    bufEye[RFLExp_Blink] = &bufEyeBlink;
    bufEye[RFLExp_OpenMouth] = &bufEyeNormal;

    bufMouth[RFLExp_Normal] = &bufMouthNormal;
    bufMouth[RFLExp_Smile] = &bufMouthNormal;
    bufMouth[RFLExp_Anger] = &bufMouthAnger;
    bufMouth[RFLExp_Sorrow] = &bufMouthSorrow;
    bufMouth[RFLExp_Surprise] = &bufMouthNormal;
    bufMouth[RFLExp_Blink] = &bufMouthNormal;
    bufMouth[RFLExp_OpenMouth] = &bufOpenMouth;

    texEyeNormal = NULL;
    texEyeBNormal = NULL;
    texMouthNormal = NULL;
    texMustacheNormal = NULL;
    texMoleNormal = NULL;
    texEyeSmile = NULL;
    texMouthAnger = NULL;
    texEyeSad = NULL;
    texMouthSad = NULL;
    texEyeSurprise = NULL;
    texEyeBlink = NULL;
    texOpenMouth = NULL;
    
    texEye[RFLExp_Normal] = &texEyeNormal;
    texEye[RFLExp_Smile] = &texEyeSmile;
    texEye[RFLExp_Anger] = &texEyeNormal;
    texEye[RFLExp_Sorrow] = &texEyeSad;
    texEye[RFLExp_Surprise] = &texEyeSurprise;
    texEye[RFLExp_Blink] = &texEyeBlink;
    texEye[RFLExp_OpenMouth] = &texEyeNormal;

    texMouth[RFLExp_Normal] = &texMouthNormal;
    texMouth[RFLExp_Smile] = &texMouthNormal;
    texMouth[RFLExp_Anger] = &texMouthAnger;
    texMouth[RFLExp_Sorrow] = &texMouthSad;
    texMouth[RFLExp_Surprise] = &texMouthNormal;
    texMouth[RFLExp_Blink] = &texMouthNormal;
    texMouth[RFLExp_OpenMouth] = &texOpenMouth;

    if (texBuffer[RFLExp_Normal] != NULL) {
        info[RFLExp_Normal] = *pCharInfo;
    }

    if (texBuffer[RFLExp_Smile] != NULL) {
        int changeEyeRot = 0; // r31+0x7C
        RFLExpression exp = RFLExp_Smile; // r31+0x78

        info[exp] = *pCharInfo;
        info[exp].eye.type = 48;

        changeEyeRot = RFLi_EYE_ROT_OFFSET[pCharInfo->eye.type] - RFLi_EYE_ROT_OFFSET[info[exp].eye.type];
        if (changeEyeRot + (int)info[exp].eye.rotate < 0) {
            info[exp].eye.rotate = 0;
        }
        else if (changeEyeRot + (int)info[exp].eye.rotate > RFLi_EYE_ROT_MAX) {
            info[exp].eye.rotate = RFLi_EYE_ROT_MAX;
        }
        else {
            info[exp].eye.rotate += changeEyeRot;
        }
    }

    if (texBuffer[RFLExp_Anger] != NULL) {
        int changeEyebrowRot = 0; // r31+0x74
        int changeEyeRot = 0; // r31+0x70
        RFLExpression exp = RFLExp_Anger; // r31+0x6C

        info[exp] = *pCharInfo;

        changeEyebrowRot = 2;
        if (changeEyebrowRot + (int)info[exp].eyebrow.rotate < 0) {
            info[exp].eyebrow.rotate = 0;
        }
        else if (changeEyebrowRot + (int)info[exp].eyebrow.rotate > RFLi_EYEBROW_ROT_MAX) {
            info[exp].eyebrow.rotate = RFLi_EYEBROW_ROT_MAX;
        }
        else {
            info[exp].eyebrow.rotate += changeEyebrowRot;
        }

        changeEyeRot = 2;
        if (changeEyeRot + (int)info[exp].eye.rotate < 0) {
            info[exp].eye.rotate = 0;
        }
        else if (changeEyeRot + (int)info[exp].eye.rotate > RFLi_EYE_ROT_MAX) {
            info[exp].eye.rotate = RFLi_EYE_ROT_MAX;
        }
        else {
            info[exp].eye.rotate += changeEyeRot;
        }

        info[exp].mouth.type = 10;
    }

    if (texBuffer[RFLExp_Sorrow] != NULL) {
        int changeEyebrowRot = 0; // r31+0x68
        int changeEyeRot = 0; // r31+0x64
        RFLExpression exp = RFLExp_Sorrow; // r31+0x60

        info[exp] = *pCharInfo;

        changeEyebrowRot = -2;
        if (changeEyebrowRot + (int)info[exp].eyebrow.rotate < 0) {
            info[exp].eyebrow.rotate = 0;
        }
        else if (changeEyebrowRot + (int)info[exp].eyebrow.rotate > RFLi_EYEBROW_ROT_MAX) {
            info[exp].eyebrow.rotate = RFLi_EYEBROW_ROT_MAX;
        }
        else {
            info[exp].eyebrow.rotate += changeEyebrowRot;
        }

        changeEyeRot = -2;
        if (changeEyeRot + (int)info[exp].eye.rotate < 0) {
            info[exp].eye.rotate = 0;
        }
        else if (changeEyeRot + (int)info[exp].eye.rotate > RFLi_EYE_ROT_MAX) {
            info[exp].eye.rotate = RFLi_EYE_ROT_MAX;
        }
        else {
            info[exp].eye.rotate += changeEyeRot;
        }

        info[exp].mouth.type = 12;
    }

    if (texBuffer[RFLExp_Surprise] != NULL) {
        int changeEyeRot = 0; // r31+0x5C
        RFLExpression exp = RFLExp_Surprise; // r31+0x58

        info[exp] = *pCharInfo;
        info[exp].eyebrow.y -= 2;
        info[exp].eye.type = 49;

        changeEyeRot = RFLi_EYE_ROT_OFFSET[pCharInfo->eye.type] - RFLi_EYE_ROT_OFFSET[info[exp].eye.type];
        if (changeEyeRot + (int)info[exp].eye.rotate < 0) {
            info[exp].eye.rotate = 0;
        }
        else if (changeEyeRot + (int)info[exp].eye.rotate > RFLi_EYE_ROT_MAX) {
            info[exp].eye.rotate = RFLi_EYE_ROT_MAX;
        } else {
            info[exp].eye.rotate += changeEyeRot;
        }
    }

    if (texBuffer[RFLExp_Blink] != NULL) {
        int changeEyeRot = 0; // r31+0x54
        RFLExpression exp = RFLExp_Blink; // r31+0x50

        info[exp] = *pCharInfo;
        info[exp].eye.type = 26;

        changeEyeRot = RFLi_EYE_ROT_OFFSET[pCharInfo->eye.type] - RFLi_EYE_ROT_OFFSET[info[exp].eye.type];
        if (changeEyeRot + (int)info[exp].eye.rotate < 0) {
            info[exp].eye.rotate = 0;
        }
        else if (changeEyeRot + (int)info[exp].eye.rotate > RFLi_EYE_ROT_MAX) {
            info[exp].eye.rotate = RFLi_EYE_ROT_MAX;
        }
        else {
            info[exp].eye.rotate += changeEyeRot;
        }
    }

    if (texBuffer[RFLExp_OpenMouth] != NULL) {
        RFLExpression exp = RFLExp_OpenMouth; // r31+0x4C

        info[exp] = *pCharInfo;
        info[exp].mouth.type = 24;
    }

    for (i = 0; i < RFLExp_Max; i++) {
        if (texBuffer[i] == NULL) {
            continue;
        }

        if (*bufEye[i] == NULL) {
            *bufEye[i] = RFLiAlloc32(texSizeEye);
        }
        if (*bufMouth[i] == NULL) {
            *bufMouth[i] = RFLiAlloc32(texSizeMouth);
        }
        if (bufEyeBNormal == NULL) {
            bufEyeBNormal = RFLiAlloc32(texSizeEyebrow);
        }
        if (bufMustacheNormal == NULL) {
            bufMustacheNormal = RFLiAlloc32(texSizeMustache);
        }
        if (bufMoleNormal == NULL) {
            bufMoleNormal = RFLiAlloc32(texSizeMole);
        }

        RFLi_ASSERTLINE_NULL(*bufEye[i], 343);
        RFLi_ASSERTLINE_NULL(*bufMouth[i], 344);
        RFLi_ASSERTLINE_NULL(bufEyeBNormal, 345);
        RFLi_ASSERTLINE_NULL(bufMustacheNormal, 346);
        RFLi_ASSERTLINE_NULL(bufMoleNormal, 347);

        if (*texEye[i] == NULL) {
            *texEye[i] = RFLiLoadTexture(RFLiPartsTex_Eye, info[i].eye.type, *bufEye[i]);
            DCStoreRange(*bufEye[i], texSizeEye);
        }
        if (*texMouth[i] == NULL) {
            *texMouth[i] = RFLiLoadTexture(RFLiPartsTex_Mouth, info[i].mouth.type, *bufMouth[i]);
            DCStoreRange(*bufMouth[i], texSizeMouth);
        }
        if (texEyeBNormal == NULL) {
            texEyeBNormal = RFLiLoadTexture(RFLiPartsTex_Eyebrow, info[i].eyebrow.type, bufEyeBNormal);
            DCStoreRange(bufEyeBNormal, texSizeEyebrow);
        }
        if (texMustacheNormal == NULL) {
            texMustacheNormal = RFLiLoadTexture(RFLiPartsTex_Mustache, info[i].beard.mustache, bufMustacheNormal);
            DCStoreRange(bufMustacheNormal, texSizeMustache);
        }
        if (texMoleNormal == NULL) {
            texMoleNormal = RFLiLoadTexture(RFLiPartsTex_Mole, info[i].mole.type, bufMoleNormal);
            DCStoreRange(bufMoleNormal, texSizeMole);
        }

        face[i].eyeR.ngtobj.texture = *texEye[i];
        face[i].eyeL.ngtobj.texture = *texEye[i];

        face[i].eyebrowR.ngtobj.texture = texEyeBNormal;
        face[i].eyebrowL.ngtobj.texture = texEyeBNormal;

        face[i].mouth.ngtobj.texture = *texMouth[i];

        face[i].mustacheR.ngtobj.texture = texMustacheNormal;
        face[i].mustacheL.ngtobj.texture = texMustacheNormal;

        face[i].mole.ngtobj.texture = texMoleNormal;

        RFLiInitRFLTexture(&face[i].eyeR.ngtobj);
        RFLiInitRFLTexture(&face[i].eyeL.ngtobj);

        RFLiInitRFLTexture(&face[i].eyebrowR.ngtobj);
        RFLiInitRFLTexture(&face[i].eyebrowL.ngtobj);

        RFLiInitRFLTexture(&face[i].mouth.ngtobj);

        RFLiInitRFLTexture(&face[i].mustacheR.ngtobj);
        RFLiInitRFLTexture(&face[i].mustacheL.ngtobj);

        RFLiInitRFLTexture(&face[i].mole.ngtobj);
    }

    {
        RFLi_MASKRSL maxResolution = RFLiGetMaxMaskRsl(resolution); // r31+0x48

        for (i = 0; i < RFLExp_Max; i++) {
            if (texBuffer[i] != NULL) {
                break;
            }
        }

        RFLiSetupCopyTex(GX_TF_RGB5A3, maxResolution, maxResolution, texBuffer[i], (GXColor){0, 0, 0, 0});
    }

    {
        u32 size = RFLiGetMaskBufSize(resolution); // r31+0x44

        for (i = 0; i < RFLExp_Max; i++) {
            if (texBuffer[i] != NULL) {
                DCInvalidateRange(texBuffer[i], size);
            }
        }
    }

    GXGetScissor(&scissorOffsetX, &scissorOffsetY, &scissorWidth, &scissorHeight);

    for (i = 0; i < RFLExp_Max; i++) {
        u8* ptr;

        if (texBuffer[i] == NULL) {
            continue;
        }

        ptr = texBuffer[i];

        if (resolution & 256) {
            GXSetTexCopySrc(0, 0, 256, 256);
            GXSetTexCopyDst(256, 256, GX_TF_RGB5A3, FALSE);
            GXSetScissor(0, 0, 256, 256);
            RFLiSetFaceParts(&info[i], &face[i], RFLi_MASKRSL_256);
            RFLiCapture(ptr, &info[i], &face[i], RFLi_MASKRSL_256);
            ptr += RFLiGetMaskSize(RFLi_MASKRSL_256);
        }

        if (resolution & 128) {
            GXSetTexCopySrc(0, 0, 128, 128);
            GXSetTexCopyDst(128, 128, GX_TF_RGB5A3, FALSE);
            GXSetScissor(0, 0, 128, 128);
            RFLiSetFaceParts(&info[i], &face[i], RFLi_MASKRSL_128);
            RFLiCapture(ptr, &info[i], &face[i], RFLi_MASKRSL_128);
            ptr += RFLiGetMaskSize(RFLi_MASKRSL_128);
        }

        if (resolution & 64) {
            GXSetTexCopySrc(0, 0, 64, 64);
            GXSetTexCopyDst(64, 64, GX_TF_RGB5A3, FALSE);
            GXSetScissor(0, 0, 64, 64);
            RFLiSetFaceParts(&info[i], &face[i], RFLi_MASKRSL_64);
            RFLiCapture(ptr, &info[i], &face[i], RFLi_MASKRSL_64);
            ptr += RFLiGetMaskSize(RFLi_MASKRSL_64);
        }

        if (resolution & 32) {
            GXSetTexCopySrc(0, 0, 32, 32);
            GXSetTexCopyDst(32, 32, GX_TF_RGB5A3, FALSE);
            GXSetScissor(0, 0, 32, 32);
            RFLiSetFaceParts(&info[i], &face[i], RFLi_MASKRSL_32);
            RFLiCapture(ptr, &info[i], &face[i], RFLi_MASKRSL_32);
            ptr += RFLiGetMaskSize(RFLi_MASKRSL_32);
        }
    }

    if (bufEyeNormal != NULL) {
        RFLiFree(bufEyeNormal);
    }

    if (bufEyeBNormal != NULL) {
        RFLiFree(bufEyeBNormal);
    }

    if (bufMouthNormal != NULL) {
        RFLiFree(bufMouthNormal);
    }

    if (bufMustacheNormal != NULL) {
        RFLiFree(bufMustacheNormal);
    }

    if (bufMoleNormal != NULL) {
        RFLiFree(bufMoleNormal);
    }

    if (bufEyeSmile != NULL) {
        RFLiFree(bufEyeSmile);
    }

    if (bufMouthAnger != NULL) {
        RFLiFree(bufMouthAnger);
    }

    if (bufEyeSorrow != NULL) {
        RFLiFree(bufEyeSorrow);
    }

    if (bufMouthSorrow != NULL) {
        RFLiFree(bufMouthSorrow);
    }

    if (bufEyeSurprise != NULL) {
        RFLiFree(bufEyeSurprise);
    }

    if (bufEyeBlink != NULL) {
        RFLiFree(bufEyeBlink);
    }

    if (bufOpenMouth != NULL) {
        RFLiFree(bufOpenMouth);
    }

    GXSetScissor(scissorOffsetX, scissorOffsetY, scissorWidth, scissorHeight);
}

void RFLiInitFaceParts(const RFLiCharInfo* pCharInfo, RFLiFaceData* pFace) {
    pFace->eyeR.ngtobj.texture = RFLiLoadTexture(RFLiPartsTex_Eye, pCharInfo->eye.type, pFace->eyeR.ngtobj.imageData);
    RFLiInitRFLTexture(&pFace->eyeR.ngtobj);
    pFace->eyeL.ngtobj.texture = pFace->eyeR.ngtobj.texture;
    RFLiInitRFLTexture(&pFace->eyeL.ngtobj);

    pFace->eyebrowR.ngtobj.texture = RFLiLoadTexture(RFLiPartsTex_Eyebrow, pCharInfo->eyebrow.type, pFace->eyebrowR.ngtobj.imageData);
    RFLiInitRFLTexture(&pFace->eyebrowR.ngtobj);
    pFace->eyebrowL.ngtobj.texture = pFace->eyebrowR.ngtobj.texture;
    RFLiInitRFLTexture(&pFace->eyebrowL.ngtobj);

    pFace->mouth.ngtobj.texture = RFLiLoadTexture(RFLiPartsTex_Mouth, pCharInfo->mouth.type, pFace->mouth.ngtobj.imageData);
    RFLiInitRFLTexture(&pFace->mouth.ngtobj);

    pFace->mustacheR.ngtobj.texture = RFLiLoadTexture(RFLiPartsTex_Mustache, pCharInfo->beard.mustache, pFace->mustacheR.ngtobj.imageData);
    RFLiInitRFLTexture(&pFace->mustacheR.ngtobj);
    pFace->mustacheL.ngtobj.texture = pFace->mustacheR.ngtobj.texture;
    RFLiInitRFLTexture(&pFace->mustacheL.ngtobj);

    pFace->mole.ngtobj.texture = RFLiLoadTexture(RFLiPartsTex_Mole, pCharInfo->mole.type, pFace->mole.ngtobj.imageData);
    RFLiInitRFLTexture(&pFace->mole.ngtobj);
}

void RFLiInitRFLTexture(RFLTexObj* pRFLTexObj) {
    RFLTexture* pTexture = pRFLTexObj->texture;

    GXInitTexObj(&pRFLTexObj->tobj, RFLiGetTexImage(pTexture), pTexture->width, pTexture->height, pTexture->format, GX_CLAMP, GX_CLAMP, FALSE);
    GXInitTexObjLOD(&pRFLTexObj->tobj, pTexture->minFilter, pTexture->magFilter, pTexture->minLOD, pTexture->maxLOD, pTexture->LODBias, (GXBool)pTexture->enableBiasClamp,  (GXBool)pTexture->enableEdgeLOD, pTexture->enableMaxAniso);
}

void RFLiSetup2DCameraAndParam() {
    Mtx44 projMtx;

    static const int SCREEN_WIDTH = 608;
    static const int SCREEN_HEIGHT = 448;

    C_MTXOrtho(projMtx, 0.0f, SCREEN_HEIGHT, 0.0f, SCREEN_WIDTH, 0.0f, 1.0f);
    GXSetProjection(projMtx, GX_ORTHOGRAPHIC);
    GXSetViewport(0.0f, 0.0f, SCREEN_WIDTH, SCREEN_HEIGHT, 0.0f, 1.0f);
    GXSetZScaleOffset(1.0f, 0.0f);
    GXSetCullMode(GX_CULL_BACK);
    GXSetZMode(GX_FALSE, GX_LEQUAL, GX_FALSE);
    GXSetZCompLoc(GX_FALSE);
    GXSetAlphaCompare(GX_GREATER, 0, GX_AOP_OR, GX_NEVER, 0);
    GXSetAlphaUpdate(GX_TRUE);
    GXSetDither(GX_FALSE);
    GXClearVtxDesc();
    GXInvalidateVtxCache();
    GXSetVtxDesc(GX_VA_POS, GX_DIRECT);
    GXSetVtxDesc(GX_VA_CLR0, GX_DIRECT);
    GXSetVtxDesc(GX_VA_TEX0, GX_DIRECT);
    GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_POS, GX_POS_XY, GX_F32, 0);
    GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_CLR0, GX_CLR_RGBA, GX_RGBA8, 0);
    GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_TEX0, GX_TEX_ST, GX_S16, 8);
    GXSetNumChans(1);
    GXSetChanCtrl(GX_COLOR0A0, GX_FALSE, GX_SRC_REG, GX_SRC_VTX, GX_LIGHT_NULL, GX_DF_NONE, GX_AF_NONE);
    GXSetNumTexGens(1);
    GXSetTexCoordGen(GX_TEXCOORD0, GX_TG_MTX2x4, GX_TG_TEX0, GX_IDENTITY);
    GXSetTevSwapModeTable(GX_TEV_SWAP0, GX_CH_RED, GX_CH_GREEN, GX_CH_BLUE, GX_CH_ALPHA);
    GXSetTevSwapModeTable(GX_TEV_SWAP1, GX_CH_RED, GX_CH_RED, GX_CH_RED, GX_CH_ALPHA);
    GXSetTevSwapModeTable(GX_TEV_SWAP2, GX_CH_GREEN, GX_CH_GREEN, GX_CH_GREEN, GX_CH_ALPHA);
    GXSetTevSwapModeTable(GX_TEV_SWAP3, GX_CH_BLUE, GX_CH_BLUE, GX_CH_BLUE, GX_CH_ALPHA);
}

void RFLiSetTev4Mole() {
    GXSetNumTevStages(1);

    GXSetTevSwapMode(GX_TEVSTAGE0, GX_TEV_SWAP0, GX_TEV_SWAP0);
    GXSetTevOrder(GX_TEVSTAGE0, GX_TEXCOORD0, GX_TEXMAP0, GX_COLOR0A0);
    GXSetTevColorIn(GX_TEVSTAGE0, GX_CC_ZERO, GX_CC_ZERO, GX_CC_ZERO, GX_CC_C0);
    GXSetTevAlphaIn(GX_TEVSTAGE0, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO, GX_CA_TEXA);
    GXSetTevColorOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, 1, GX_TEVPREV);
    GXSetTevAlphaOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, 1, GX_TEVPREV);
    GXSetTevColor(GX_TEVREG0, RFLi_MOLE_COLOR0);
}

void RFLiSetTev4Mouth(u32 mouthColor) {
    GXColor color0;
    GXColor color1;

    GXSetNumTevStages(3);

    GXSetTevSwapMode(GX_TEVSTAGE0, GX_TEV_SWAP1, GX_TEV_SWAP1);
    GXSetTevOrder(GX_TEVSTAGE0, GX_TEXCOORD0, GX_TEXMAP0, GX_COLOR0A0);
    GXSetTevColorIn(GX_TEVSTAGE0, GX_CC_ZERO, GX_CC_C0, GX_CC_TEXC, GX_CC_ZERO);
    GXSetTevAlphaIn(GX_TEVSTAGE0, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO, GX_CA_TEXA);
    GXSetTevColorOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, 1, GX_TEVPREV);
    GXSetTevAlphaOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, 1, GX_TEVPREV);

    GXSetTevSwapMode(GX_TEVSTAGE1, GX_TEV_SWAP3, GX_TEV_SWAP2);
    GXSetTevOrder(GX_TEVSTAGE1, GX_TEXCOORD0, GX_TEXMAP0, GX_COLOR0A0);
    GXSetTevColorIn(GX_TEVSTAGE1, GX_CC_ZERO, GX_CC_C1, GX_CC_TEXC, GX_CC_CPREV);
    GXSetTevAlphaIn(GX_TEVSTAGE1, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO, GX_CA_APREV);
    GXSetTevColorOp(GX_TEVSTAGE1, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, 1, GX_TEVPREV);
    GXSetTevAlphaOp(GX_TEVSTAGE1, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, 1, GX_TEVPREV);

    GXSetTevSwapMode(GX_TEVSTAGE2, GX_TEV_SWAP2, GX_TEV_SWAP3);
    GXSetTevOrder(GX_TEVSTAGE2, GX_TEXCOORD0, GX_TEXMAP0, GX_COLOR0A0);
    GXSetTevColorIn(GX_TEVSTAGE2, GX_CC_ZERO, GX_CC_ONE, GX_CC_TEXC, GX_CC_CPREV);
    GXSetTevAlphaIn(GX_TEVSTAGE2, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO, GX_CA_APREV);
    GXSetTevColorOp(GX_TEVSTAGE2, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, 1, GX_TEVPREV);
    GXSetTevAlphaOp(GX_TEVSTAGE2, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, 1, GX_TEVPREV);

    color0 = RFLi_MOUTH_COLOR0[mouthColor];
    color1 = RFLi_MOUTH_COLOR1[mouthColor];

    GXSetTevColor(GX_TEVREG0, color0);
    GXSetTevColor(GX_TEVREG1, color1);
}

void RFLiSetTev4Eye(u32 eyeColor, u32 eyeType) {
    GXColor color0;
    GXColor color1;

    GXSetNumTevStages(3);
    GXSetTevSwapMode(GX_TEVSTAGE0, GX_TEV_SWAP1, GX_TEV_SWAP1);
    GXSetTevOrder(GX_TEVSTAGE0, GX_TEXCOORD0, GX_TEXMAP0, GX_COLOR0A0);
    GXSetTevColorIn(GX_TEVSTAGE0, GX_CC_ZERO, GX_CC_C0, GX_CC_TEXC, GX_CC_ZERO);
    GXSetTevAlphaIn(GX_TEVSTAGE0, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO, GX_CA_TEXA);
    GXSetTevColorOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
    GXSetTevAlphaOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
    GXSetTevSwapMode(GX_TEVSTAGE1, GX_TEV_SWAP3, GX_TEV_SWAP3);
    GXSetTevOrder(GX_TEVSTAGE1, GX_TEXCOORD0, GX_TEXMAP0, GX_COLOR0A0);
    GXSetTevColorIn(GX_TEVSTAGE1, GX_CC_ZERO, GX_CC_C1, GX_CC_TEXC, GX_CC_CPREV);
    GXSetTevAlphaIn(GX_TEVSTAGE1, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO, GX_CA_APREV);
    GXSetTevColorOp(GX_TEVSTAGE1, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
    GXSetTevAlphaOp(GX_TEVSTAGE1, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
    GXSetTevSwapMode(GX_TEVSTAGE2, GX_TEV_SWAP2, GX_TEV_SWAP2);
    GXSetTevOrder(GX_TEVSTAGE2, GX_TEXCOORD0, GX_TEXMAP0, GX_COLOR0A0);
    GXSetTevColorIn(GX_TEVSTAGE2, GX_CC_ZERO, GX_CC_ONE, GX_CC_TEXC, GX_CC_CPREV);
    GXSetTevAlphaIn(GX_TEVSTAGE2, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO, GX_CA_APREV);
    GXSetTevColorOp(GX_TEVSTAGE2, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
    GXSetTevAlphaOp(GX_TEVSTAGE2, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);

    switch (eyeType) {
        case 9:
            color0 = (GXColor){255, 130, 0, 255};
            break;
        case 20:
            color0 = (GXColor){0, 255, 255, 255};
            break;
        default:
            color0 = (GXColor){0, 0, 0, 255};
            break;
    }

    color1 = RFLi_EYE_COLOR1[eyeColor];

    GXSetTevColor(GX_TEVREG0, color0);
    GXSetTevColor(GX_TEVREG1, color1);
}

void RFLiSetTev4Eyebrow(u32 eyebrowColor) {
    GXColor color0;

    GXSetNumTevStages(1);
    GXSetTevSwapMode(GX_TEVSTAGE0, GX_TEV_SWAP0, GX_TEV_SWAP0);
    GXSetTevOrder(GX_TEVSTAGE0, GX_TEXCOORD0, GX_TEXMAP0, GX_COLOR0A0);
    GXSetTevColorIn(GX_TEVSTAGE0, GX_CC_ZERO, GX_CC_ZERO, GX_CC_ZERO, GX_CC_C0);
    GXSetTevAlphaIn(GX_TEVSTAGE0, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO, GX_CA_TEXA);
    GXSetTevColorOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
    GXSetTevAlphaOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);

    color0 = RFLi_EYEBROW_COLOR0[eyebrowColor];

    GXSetTevColor(GX_TEVREG0, color0);
}

void RFLiSetTev4Mustache(u32 color) {
    GXColor color0;

    GXSetNumTevStages(1);
    GXSetTevSwapMode(GX_TEVSTAGE0, GX_TEV_SWAP0, GX_TEV_SWAP0);
    GXSetTevOrder(GX_TEVSTAGE0, GX_TEXCOORD0, GX_TEXMAP0, GX_COLOR0A0);
    GXSetTevColorIn(GX_TEVSTAGE0, GX_CC_ZERO, GX_CC_ZERO, GX_CC_ZERO, GX_CC_C0);
    GXSetTevAlphaIn(GX_TEVSTAGE0, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO, GX_CA_TEXA);
    GXSetTevColorOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
    GXSetTevAlphaOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);

    color0 = RFLi_BEARD_COLOR0[color];

    GXSetTevColor(GX_TEVREG0, color0);
}

void RFLiSetFaceParts(const RFLiCharInfo* pCharInfo, RFLiFaceData* pFace, RFLi_MASKRSL resolution) {
    #define SCALE2DIM(scale)       (1.0 + UNIT_SCALE * (scale))
    #define ROT2ANG(rotate)        (UNIT_ANGLE * ((rotate) % 32))
    #define UNIT(x)                ((x) / 64.0f)

    // UNUSED. not sure which function these are in
    static const f32 RATIO_X = 1.12408220767975f;
    static const f32 RATIO_Y = 1.07797241210938f;
    static const f32 OFFSET_X = 3.53233122825623f;
    static const f32 OFFSET_Y = 4.6292781829834f;

    static const f32 UNIT_ANGLE = (360.0f / 32.0f);

    static const f32 UNIT_TRANS_X_EYE = TRANS_X_BASE;
    static const f32 UNIT_TRANS_X_MOLE = 2.0f * UNIT_TRANS_X_EYE;
    static const f32 UNIT_TRANS_Y = 1.1600001f * TRANS_Y_BASE;

    static const f32 UNIT_SCALE = 0.4f;

    static const f32 BASE_EYE_X = UNIT(0);
    static const f32 BASE_EYE_Y = 18.451525f;
    static const f32 BASE_EYE_W = UNIT(342);
    static const f32 BASE_EYE_H = UNIT(288);

    static const f32 BASE_EYEBROW_X = UNIT(0);
    static const f32 BASE_EYEBROW_Y = 16.549807f;
    static const f32 BASE_EYEBROW_W = UNIT(324);
    static const f32 BASE_EYEBROW_H = UNIT(288);

    static const f32 BASE_MOUTH_Y = 29.25885f;
    static const f32 BASE_MOUTH_W = UNIT(396);
    static const f32 BASE_MOUTH_H = UNIT(288);

    static const f32 BASE_MUSTACHE_Y = 31.763554f;
    static const f32 BASE_MUSTACHE_W = UNIT(288);
    static const f32 BASE_MUSTACHE_H = UNIT(576);

    static const f32 BASE_MOLE_X = 17.766165f;
    static const f32 BASE_MOLE_Y = 17.95986f;
    // Should be UNIT(64) but causes matching issues.
    static const f32 BASE_MOLE_W = UNIT(0);
    static const f32 BASE_MOLE_H = UNIT(0);

    f32 eyeX = BASE_EYE_X + UNIT_TRANS_X_EYE * pCharInfo->eye.x;
    f32 eyeY = BASE_EYE_Y + UNIT_TRANS_Y * pCharInfo->eye.y;
    f32 eyeW = BASE_EYE_W * SCALE2DIM(pCharInfo->eye.scale);
    f32 eyeH = BASE_EYE_H * SCALE2DIM(pCharInfo->eye.scale);
    f32 eyeA = ROT2ANG(pCharInfo->eye.rotate + RFLi_EYE_ROT_OFFSET[pCharInfo->eye.type]);

    f32 eyebrowX = BASE_EYEBROW_X + UNIT_TRANS_X_EYE * pCharInfo->eyebrow.x;
    f32 eyebrowY = BASE_EYEBROW_Y + UNIT_TRANS_Y * pCharInfo->eyebrow.y;
    f32 eyebrowW = BASE_EYEBROW_W * SCALE2DIM(pCharInfo->eyebrow.scale);
    f32 eyebrowH = BASE_EYEBROW_H * SCALE2DIM(pCharInfo->eyebrow.scale);
    f32 eyebrowA = ROT2ANG(pCharInfo->eyebrow.rotate + RFLi_EYEBROW_ROT_OFFSET[pCharInfo->eyebrow.type]);

    f32 mouthY = BASE_MOUTH_Y + UNIT_TRANS_Y * pCharInfo->mouth.y;
    f32 mouthW = BASE_MOUTH_W * SCALE2DIM(pCharInfo->mouth.scale);
    f32 mouthH = BASE_MOUTH_H * SCALE2DIM(pCharInfo->mouth.scale);

    f32 mustacheY = BASE_MUSTACHE_Y + UNIT_TRANS_Y * pCharInfo->beard.y;
    f32 mustacheW = BASE_MUSTACHE_W * SCALE2DIM(pCharInfo->beard.scale);
    f32 mustacheH = BASE_MUSTACHE_H * SCALE2DIM(pCharInfo->beard.scale);

    f32 moleX = BASE_MOLE_X + UNIT_TRANS_X_MOLE * pCharInfo->mole.x;
    f32 moleY = BASE_MOLE_Y + UNIT_TRANS_Y * pCharInfo->mole.y;
    f32 moleW = BASE_MOLE_W + SCALE2DIM(pCharInfo->mole.scale);
    f32 moleH = BASE_MOLE_H + SCALE2DIM(pCharInfo->mole.scale);

    f32 resolution_ = UNIT(resolution);

    pFace->eyeR.x = resolution_ * (32.0f - eyeX);
    pFace->eyeR.y = eyeY * resolution_;
    pFace->eyeR.width = eyeW * resolution_;
    pFace->eyeR.height = eyeH * resolution_;
    pFace->eyeR.angle = eyeA;
    pFace->eyeR.origin = RFL_ORIGIN_RIGHT;

    pFace->eyeL.x = resolution_ * (32.0f + eyeX);
    pFace->eyeL.y = eyeY * resolution_;
    pFace->eyeL.width = eyeW * resolution_;
    pFace->eyeL.height = eyeH * resolution_;
    pFace->eyeL.angle = 360.0f - eyeA;
    pFace->eyeL.origin = RFL_ORIGIN_LEFT;

    pFace->eyebrowR.x = resolution_ * (32.0f - eyebrowX);
    pFace->eyebrowR.y = eyebrowY * resolution_;
    pFace->eyebrowR.width = eyebrowW * resolution_;
    pFace->eyebrowR.height = eyebrowH * resolution_;
    pFace->eyebrowR.angle = eyebrowA;
    pFace->eyebrowR.origin = RFL_ORIGIN_RIGHT;

    pFace->eyebrowL.x = resolution_ * (32.0f + eyebrowX);
    pFace->eyebrowL.y = eyebrowY * resolution_;
    pFace->eyebrowL.width = eyebrowW * resolution_;
    pFace->eyebrowL.height = eyebrowH * resolution_;
    pFace->eyebrowL.angle = 360.0f - eyebrowA;
    pFace->eyebrowL.origin = RFL_ORIGIN_LEFT;

    pFace->mouth.x = 32.0f * resolution_;
    pFace->mouth.y = mouthY * resolution_;
    pFace->mouth.width = mouthW * resolution_;
    pFace->mouth.height = mouthH * resolution_;
    pFace->mouth.angle = 0.0f;
    pFace->mouth.origin = RFL_ORIGIN_CENTER;

    pFace->mustacheR.x = 32.0f * resolution_;
    pFace->mustacheR.y = mustacheY * resolution_;
    pFace->mustacheR.width = mustacheW * resolution_;
    pFace->mustacheR.height = mustacheH * resolution_;
    pFace->mustacheR.angle = 0.0f;
    pFace->mustacheR.origin = RFL_ORIGIN_RIGHT;

    pFace->mustacheL.x = 32.0f * resolution_;
    pFace->mustacheL.y = mustacheY * resolution_;
    pFace->mustacheL.width = mustacheW * resolution_;
    pFace->mustacheL.height = mustacheH * resolution_;
    pFace->mustacheL.angle = 0.0f;
    pFace->mustacheL.origin = RFL_ORIGIN_LEFT;

    pFace->mole.x = moleX * resolution_;
    pFace->mole.y = moleY * resolution_;
    pFace->mole.width = moleW * resolution_;
    pFace->mole.height = moleH * resolution_;
    pFace->mole.angle = 0.0f;
    pFace->mole.origin = RFL_ORIGIN_CENTER;
    
    #undef SCALE2DIM
    #undef ROT2ANG
    #undef UNIT
}

void RFLiCapture(u8* texBuffer, const RFLiCharInfo* pCharInfo, RFLiFaceData* pFace, RFLi_MASKRSL resolution) {
    f32 vp[GX_VIEWPORT_SZ];

    GXInvalidateTexAll();
    GXGetViewportv(vp);
    RFLiSetup2DCameraAndParam();

    GXSetTevDirect(GX_TEVSTAGE0);
    GXSetTevDirect(GX_TEVSTAGE1);
    GXSetTevDirect(GX_TEVSTAGE2);
    GXSetBlendMode(GX_BM_BLEND, GX_BL_INVDSTALPHA, GX_BL_DSTALPHA, GX_LO_SET);
    GXSetColorUpdate(GX_TRUE);

    RFLiSetTev4Mustache(pCharInfo->beard.color);
    RFLiDrawFaceParts(&pFace->mustacheR);
    RFLiDrawFaceParts(&pFace->mustacheL);

    RFLiSetTev4Mouth(pCharInfo->mouth.color);
    RFLiDrawFaceParts(&pFace->mouth);

    RFLiSetTev4Eyebrow(pCharInfo->eyebrow.color);
    RFLiDrawFaceParts(&pFace->eyebrowR);
    RFLiDrawFaceParts(&pFace->eyebrowL);

    RFLiSetTev4Eye(pCharInfo->eye.color, pCharInfo->eye.type);
    RFLiDrawFaceParts(&pFace->eyeR);
    RFLiDrawFaceParts(&pFace->eyeL);

    RFLiSetTev4Mole();
    RFLiDrawFaceParts(&pFace->mole);

    GXSetColorUpdate(GX_FALSE);
    GXCopyTex(texBuffer, GX_TRUE);
    GXPixModeSync();
    GXSetBlendMode(GX_BM_BLEND, GX_BL_INVDSTALPHA, GX_BL_ONE, GX_LO_SET);

    RFLiSetTev4Mustache(pCharInfo->beard.color);
    RFLiDrawFaceParts(&pFace->mustacheR);
    RFLiDrawFaceParts(&pFace->mustacheL);

    RFLiSetTev4Mouth(pCharInfo->mouth.color);
    RFLiDrawFaceParts(&pFace->mouth);

    RFLiSetTev4Eyebrow(pCharInfo->eyebrow.color);
    RFLiDrawFaceParts(&pFace->eyebrowR);
    RFLiDrawFaceParts(&pFace->eyebrowL);

    RFLiSetTev4Eye(pCharInfo->eye.color, pCharInfo->eye.type);
    RFLiDrawFaceParts(&pFace->eyeR);
    RFLiDrawFaceParts(&pFace->eyeL);

    RFLiSetTev4Mole();
    RFLiDrawFaceParts(&pFace->mole);

    GXSetColorUpdate(GX_TRUE);

#if RFL_BUILD >= 20080306
    if (RFLiGetManager()->mCreateModelCB == NULL) {
        GXDrawDone();
    }
    else {
        RFLiGetManager()->mCreateModelCB();
    }
#else
    GXDrawDone();
#endif

    DCInvalidateRange(texBuffer, RFLiGetMaskSize(resolution));
    GXCopyTex(texBuffer, GX_TRUE);

    GXPixModeSync();

    GXSetViewportv(vp);
}

void RFLiDrawFaceParts(RFLiFacePart* pParts) {
    GXLoadTexObj(&pParts->ngtobj.tobj, GX_TEXMAP0);
    RFLiDrawQuad(pParts->x, pParts->y, pParts->width, pParts->height, pParts->angle, pParts->origin);
}

void RFLiDrawQuad(f32 x, f32 y, f32 width, f32 height, f32 rotZ, RFLi_ORIGIN origin) {
    Mtx rotMtx;
    Mtx mv;
    f32 xOrigin;
    s16 s0;
    s16 s1;

    // UNUSED. not sure which function these are in
    static const f32 RATIO_X = 1.12408220767975f;
    static const f32 RATIO_Y = 1.07797241210938f;

    MTXIdentity(mv);
    MTXScaleApply(mv, mv, width, height, 1.0f);
    MTXRotRad(rotMtx, 'z', ((f32)M_PI / 180.0f) * rotZ);
    MTXConcat(rotMtx, mv, mv);
    MTXScaleApply(mv, mv, TRANS_X_BASE, TRANS_Y_BASE, 1.0f);
    MTXTransApply(mv, mv, x, y, 0.0f);

    GXLoadPosMtxImm(mv, GX_PNMTX0);
    GXSetCurrentMtx(GX_PNMTX0);

    switch (origin) {
        case RFL_ORIGIN_CENTER: {
            xOrigin = -0.5f;
            s0 = 256;
            s1 = 0;
            break;
        }
        case RFL_ORIGIN_RIGHT: {
            xOrigin = -1.0f;
            s0 = 256;
            s1 = 0;
            break;
        }
        case RFL_ORIGIN_LEFT: {
            xOrigin = 0.0f;
            s0 = 0;
            s1 = 256;
            break;
        }
    }

    GXBegin(GX_QUADS, GX_VTXFMT0, 4); {
        GXPosition2f32(1.0 + xOrigin, -0.5f);
        GXColor1u32(0x000000FF);
        GXTexCoord2s16(s0, 0);

        GXPosition2f32(1.0 + xOrigin, 0.5f);
        GXColor1u32(0x000000FF);
        GXTexCoord2s16(s0, 256);

        GXPosition2f32(xOrigin, 0.5f);
        GXColor1u32(0x000000FF);
        GXTexCoord2s16(s1, 256);

        GXPosition2f32(xOrigin, -0.5f);
        GXColor1u32(0x000000FF);
        GXTexCoord2s16(s1, 0);
    }
    GXEnd();
}

RFLi_MASKRSL RFLiGetMaxMaskRsl(RFLResolution resolution) {
    switch (resolution) {
        case RFLResolution_64:
        case RFLResolution_64M: {
            return RFLi_MASKRSL_64;
        }
        case RFLResolution_128:
        case RFLResolution_128M: {
            return RFLi_MASKRSL_128;
        }
        case RFLResolution_256:
        case RFLResolution_256M: {
            return RFLi_MASKRSL_256;
        }
        default: {
            RFLi_ASSERTLINE_MSG(FALSE, 1319, "invalid resolution (%08x)", resolution);
            return RFLi_MASKRSL_64;
        }
    }
}

u32 RFLiGetMaskSize(RFLi_MASKRSL maskResolution) {
    return 2 * (maskResolution * maskResolution);
}


u32 RFLiGetMaskBufSize(RFLResolution resolution) {
    u32 size = 0;

    if (resolution & 32) {
        size += RFLiGetMaskSize(RFLi_MASKRSL_32);
    }

    if (resolution & 64) {
        size += RFLiGetMaskSize(RFLi_MASKRSL_64);
    }

    if (resolution & 128) {
        size += RFLiGetMaskSize(RFLi_MASKRSL_128);
    }

    if (resolution & 256) {
        size += RFLiGetMaskSize(RFLi_MASKRSL_256);
    }

    RFLi_ASSERTLINE_MSG(size != 0, 1356, "invalid resolution (%08x)", resolution);

    return size;
}
