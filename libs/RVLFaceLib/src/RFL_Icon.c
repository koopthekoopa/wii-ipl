#define KEEP_OLD_NULL

#include <internal/RFLi_LibConfig.h>

#include <RVLFaceLib.h>
#include <RVLFaceLibInternal.h>

#include <internal/RFLi_FaceConfig.h>
#include <internal/RFLi_FaceConfig/offsets.h>
#include <internal/RFLi_FaceConfig/colors.h>

#include <revolution/gx.h>
#include <revolution/mtx.h>

#include <math.h>

RFLErrcode RFLMakeIcon(void* buf, RFLDataSource source, RFLMiddleDatabase* middleDB, u16 index, RFLExpression expression, const RFLIconSetting* setting) {
    RFLiCharInfo info;

    RFLErrcode err = RFLiPickupCharInfo(&info, source, middleDB, index);
    if (err == RFLErrcode_Success) {
        RFLiMakeIcon(buf, &info, expression, setting);
    }

    return err;
}

void RFLiMakeIconFromData(void* buf, const RFLiCharData* data, RFLExpression expression, const RFLIconSetting* setting) {
    RFLiCharInfo info;

    RFLiConvertRaw2Info(data, &info);
    RFLiMakeIcon(buf, &info, expression, setting);
}

void RFLiMakeIcon(void* buf, const RFLiCharInfo* info, RFLExpression expression, const RFLIconSetting* setting) {
    RFLCharModel model;
    void* modelBuf;

    f32 vp[6];

    u32 byteSize;

    Mtx viewMtx;

    u32 scissorOffsetX, scissorOffsetY;
    u32 scissorWidth, scissorHeight;

    RFLiCoordinateData coordData;

    RFLi_ASSERTLINE_NULL(buf, 96);
    RFLi_ASSERTLINE_NULL(info, 97);
    RFLi_ASSERTLINE_NULL(setting, 98);

    RFLi_ASSERTLINE(setting->width >= 16 && setting->width <= 512, 100);
    RFLi_ASSERTLINE(setting->height >= 16 && setting->height <= 512, 101);

    {
        RFLiCoordinateData iconCoordData = { 1, 2, 0, 0, 0, 0 };

        byteSize = (setting->width * setting->height) * 2;

        coordData = *RFLiGetCoordinateData();
        RFLiSetCoordinateData(&iconCoordData);
    }

    {
        u32 bufSize;
        RFLResolution resolution;
        RFLExpFlag expFlag;

        if ((setting->width > 128 || setting->height > 128) && RFLiGetUseDeluxTex()) {
            resolution = RFLResolution_256;
        }
        else if (setting->width > 64 || setting->height > 64) {
            resolution = RFLResolution_128;
        }
        else {
            resolution = RFLResolution_64;
        }

        expFlag = 1 << expression;

        bufSize = RFLGetModelBufferSize(resolution, expFlag);
        modelBuf = RFLiAlloc32(bufSize);
        RFLi_ASSERTLINE_NULL(modelBuf, 128);

        RFLiInitCharModel(&model, info, modelBuf, resolution, expFlag);

        RFLSetExpression(&model, expression);
    }

    {
        GXColor backColor;
        if (setting->bgType == RFLIconBG_Direct) {
            backColor = setting->bgColor;
        }
        else {
            backColor = RFLGetFavoriteColor(info->personal.favoriteColor);
        }
        backColor.a = 0;
    
        GXGetScissor(&scissorOffsetX, &scissorOffsetY, &scissorWidth, &scissorHeight);
        GXSetScissor(0, 0, setting->width, setting->height);

        RFLiSetupCopyTex(GX_TF_RGB5A3, setting->width, setting->height, buf, backColor);

        GXGetViewportv(vp);
        GXSetViewport(0.0f, 0.0f, setting->width, setting->height, 0.0f, 1.0f);
    }

    {
        Mtx44 projMtx;
        f32 fovy;
        f32 aspect;

        aspect = (f32)setting->width / (f32)setting->height;

        // TODO: Get the division to match.
        if (setting->width < setting->height) {
            fovy = 2 * (/*(180.0f / (f32)M_PI)*/ 57.2957801818848f * atan2f(43.2f / aspect, 500.0f));
        }
        else {
            fovy = 2 * (/*(180.0f / (f32)M_PI)*/ 57.2957801818848f * atan2f(43.2f, 500.0f));
        }

        MTXPerspective(projMtx, fovy, aspect, 500.0f, 700.0f);
        GXSetProjection(projMtx, GX_PERSPECTIVE);
    }

    {
        
        RFLiPositionData cameraPos = (RFLiPositionData){0.0f, 34.5f, 600.0f};
        RFLiPositionData target = (RFLiPositionData){0.0f, 34.5f, 0.0f};
        RFLiPositionData cameraUp = (RFLiPositionData){0.0f, 1.0f, 0.0f};
        
        MTXLookAt(viewMtx, (Vec*)&cameraPos, (Vec*)&cameraUp, (Vec*)&target);
    }

    {
        GXLightObj light;
        RFLiPositionData pos;

        GXInitLightColor(&light, (GXColor){255, 255, 255, 255});

        pos = (RFLiPositionData){1600.0f, 1500.0f, 6000.0f};

        MTXMultVec(viewMtx, (Vec*)&pos, (Vec*)&pos);
        GXInitLightPos(&light, pos.x, pos.y, pos.z);
        GXLoadLightObjImm(&light, GX_LIGHT0);
        RFLSetMtx(&model, viewMtx);
    }

    {
        RFLDrawSetting drawSetting;
        drawSetting.lightEnable = GX_TRUE;
        drawSetting.lightMask = GX_LIGHT0;
        drawSetting.diffFn = GX_DF_CLAMP;
        drawSetting.attnFn = GX_AF_NONE;
        drawSetting.ambientColor = (GXColor){160, 160, 160, 255};
        drawSetting.zCompLoc = 0;
        RFLLoadDrawSetting(&drawSetting);
    }

    if (!setting->drawXluOnly) {
        GXSetColorUpdate(TRUE);
        GXSetAlphaUpdate(GX_TRUE);
        GXSetBlendMode(GX_BM_BLEND, GX_BL_SRCALPHA, GX_BL_INVSRCALPHA, GX_LO_COPY);
        RFLDrawOpa(&model);
    }

    GXSetZMode(GX_TRUE, GX_LEQUAL, GX_FALSE);
    GXSetBlendMode(GX_BM_BLEND, GX_BL_SRCALPHA, GX_BL_INVSRCALPHA, GX_LO_COPY);
    GXSetColorUpdate(GX_TRUE);
    GXSetAlphaUpdate(GX_FALSE);
    RFLDrawXlu(&model);

    GXSetBlendMode(GX_BM_BLEND, GX_BL_ONE, GX_BL_INVSRCALPHA, GX_LO_COPY);
    GXSetAlphaUpdate(GX_TRUE);
    GXSetColorUpdate(GX_FALSE);
    RFLDrawXlu(&model);

    GXSetZMode(GX_TRUE, GX_LEQUAL, GX_TRUE);
    GXSetColorUpdate(GX_TRUE);
#if RFL_BUILD < 20080306
    GXDrawDone();
#endif
    GXCopyTex(buf, GX_TRUE);

#if RFL_BUILD >= 20080306
    GXPixModeSync();
    if (RFLiGetManager()->mDrawIconCB == NULL) {
        GXDrawDone();
    }
    else {
        RFLiGetManager()->mDrawIconCB();
    }
#else
    GXDrawDone();
    GXPixModeSync();
#endif // RFL_BUILD

    RFLiFree(modelBuf);

    GXSetViewportv(vp);
    GXSetScissor(scissorOffsetX, scissorOffsetY, scissorWidth, scissorHeight);

    RFLiSetCoordinateData(&coordData);
}

#if RFL_BUILD >= 20080306
void RFLSetIconDrawDoneCallback(RFLSimpleCB cb) {
    RFLiGetManager()->mDrawIconCB = cb;
}
#endif // RFL_BUILD
