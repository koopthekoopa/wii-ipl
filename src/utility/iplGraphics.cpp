#include "utility/iplGraphics.h"
#include "iplSystem.h"

#include <revolution/gx.h>
#include <revolution/mtx.h>

#include <nw4r/math.h>

namespace ipl {
    namespace utility {
        Graphics::Arg   Graphics::mArg;

        Graphics::Arg::Arg() :
        mOrthoTrans(0, 0, 0),
        mOrthoScale(1, 1) {
            nw4r::math::MTX44Identity(&mProjMtx);
            nw4r::math::MTX34Identity(&mViewMtx);
        }

        void Graphics::setOrtho(u32 id) {
            setOrthoProjection(mArg.mOrthoTrans, mArg.mOrthoScale);

            calcOrthoCamera();
            setCamera(id);
        }

        void Graphics::setDefaultOrtho(u32 id) {
            math::VEC3 translate(0, 0, 0);
            math::VEC2 scale(1, 1);

            setOrthoProjection(translate, scale);

            calcOrthoCamera();
            setCamera(id);
        }

        void Graphics::setOrthoProjection(const math::VEC3& translate, const math::VEC2& scale) {
            nw4r::ut::Rect  projRect(0, 0, 0, 0);
            System::getProjectionRect(&projRect);

            f32 temp_f9 =  projRect.right / scale.x;
            f32 temp_f7 = projRect.left / scale.x;
            C_MTXOrtho(mArg.mProjMtx,
                translate.y - (projRect.top / scale.y),
                translate.y - (projRect.bottom / scale.y),
                translate.x + temp_f7,
                translate.x + temp_f9,
                -100.0f, 100.0f);

            GXSetProjection(mArg.mProjMtx, GX_ORTHOGRAPHIC);
        }

        void Graphics::setOrthoProjection(u32 id) {
            GXRenderModeObj* rMode = System::getRenderModeObj();
            C_MTXOrtho(mArg.mProjMtx,
                 rMode->efbHeight / 2, -rMode->efbHeight / 2,
                -rMode->fbWidth   / 2,  rMode->fbWidth   / 2,
                -100.0f, 100.0f);
            GXSetProjection(mArg.mProjMtx, GX_ORTHOGRAPHIC);

            calcOrthoCamera();
            setCamera(id);
        }

        void Graphics::calcOrthoCamera() {
            nw4r::math::MTX34Identity(&mArg.mViewMtx);
        }

        void Graphics::setCamera(u32 id) {
            GXLoadPosMtxImm(mArg.mViewMtx,id);
            GXSetCurrentMtx(id);
        }

        void Graphics::drawPolygon(const nw4r::ut::Rect &rect, GXColor color) {
            GXClearVtxDesc();

            GXInvalidateVtxCache();
            GXInvalidateTexAll();
                
            GXSetVtxDesc(GX_VA_POS, GX_DIRECT);
            GXSetVtxDesc(GX_VA_CLR0, GX_DIRECT);

            GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_POS, GX_CLR_RGBA, GX_F32, 0);
            GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_CLR0, GX_CLR_RGBA, GX_RGBA8, 0);

            GXSetNumChans(1);
            GXSetNumTexGens(0);
            GXSetNumIndStages(0);
            GXSetNumTevStages(1);

            GXSetTevDirect(GX_TEVSTAGE0);
            GXSetTevColorIn(GX_TEVSTAGE0, GX_CC_ZERO, GX_CC_C0, GX_CC_RASC, GX_CC_ZERO);
            GXSetTevAlphaIn(GX_TEVSTAGE0, GX_CA_ZERO, GX_CA_A0, GX_CA_RASA, GX_CA_ZERO);
            GXSetTevColorOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
            GXSetTevAlphaOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
            GXSetTevOrder(GX_TEVSTAGE0, GX_TEXCOORD_NULL, GX_TEXMAP_NULL, GX_COLOR0A0);

            GXSetChanCtrl(GX_COLOR0A0, GX_FALSE, GX_SRC_VTX, GX_SRC_VTX, 0, GX_DF_CLAMP, GX_AF_NONE);

            GXSetColorUpdate(GX_TRUE);
            GXSetAlphaUpdate(GX_TRUE);

            GXSetBlendMode(GX_BM_BLEND, GX_BL_SRCALPHA, GX_BL_INVSRCALPHA, GX_LO_SET);
            GXSetZMode(GX_FALSE, GX_ALWAYS, GX_FALSE);
            GXSetAlphaCompare(GX_ALWAYS, 0, GX_AOP_OR, GX_ALWAYS, 0);

            GXSetCullMode(GX_CULL_NONE);
            GXSetClipMode(GX_CLIP_ENABLE);

            GXSetTevColor(GX_TEVREG0, color);

            GXBegin(GX_QUADS, GX_VTXFMT0, 4); {
                GXPosition3f32(rect.left, rect.top, 0.0f);
                GXColor4u8(255, 255, 255, 255);
                GXPosition3f32(rect.left, rect.bottom, 0.0f);
                GXColor4u8(255, 255, 255, 255);
                GXPosition3f32(rect.right, rect.bottom, 0.0f);
                GXColor4u8(255, 255, 255, 255);
                GXPosition3f32(rect.right, rect.top, 0.0f);
                GXColor4u8(255, 255, 255, 255);
            } GXEnd();
        }

        void Graphics::drawTexture(const nw4r::ut::Rect &rect, const GXTexObj& texObj, GXColor color, u8 texCoord, Orientation ori) {
            u8 leftTop_x,     leftTop_y;
            u8 leftBottom_x,  leftBottom_y;
            u8 rightBottom_x, rightBottom_y;
            u8 rightTop_x,    rightTop_y;

            switch (ori) {
                case ORIENTATION_0: {
                    leftTop_x = 0;
                    leftTop_y = 0;
                    leftBottom_x = 0;
                    leftBottom_y = texCoord;
                    rightBottom_x = texCoord;
                    rightBottom_y = texCoord;
                    rightTop_x = texCoord;
                    rightTop_y = 0;
                    break;
                }
                case ORIENTATION_1: {
                    leftTop_x = 0;
                    rightBottom_y = 0;
                    rightTop_x = 0;
                    rightTop_y = 0;
                    leftTop_y = texCoord;
                    leftBottom_x = texCoord;
                    leftBottom_y = texCoord;
                    rightBottom_x = texCoord;
                    break;
                }
                case ORIENTATION_2: {
                    leftTop_x = texCoord;
                    leftTop_y = 0;
                    leftBottom_x = 0;
                    leftBottom_y = 0;
                    rightBottom_x = 0;
                    rightBottom_y = texCoord;
                    rightTop_x = texCoord;
                    rightTop_y = texCoord;
                    break;
                }
            }

            GXClearVtxDesc();

            GXInvalidateVtxCache();
            GXInvalidateTexAll();

            GXSetVtxDesc(GX_VA_POS, GX_DIRECT);
            GXSetVtxDesc(GX_VA_TEX0, GX_DIRECT);
            GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_POS, GX_CLR_RGBA, GX_F32, 0);
            GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_TEX0, GX_CLR_RGBA, GX_RGB565, 0);

            GXSetNumChans(0);
            GXSetNumTexGens(1);
            GXSetNumIndStages(0);
            GXSetNumTevStages(1);

            GXSetTevDirect(GX_TEVSTAGE0);
            GXSetTevColorIn(GX_TEVSTAGE0, GX_CC_ZERO, GX_CC_C0, GX_CC_TEXC, GX_CC_ZERO);
            GXSetTevAlphaIn(GX_TEVSTAGE0, GX_CA_ZERO, GX_CA_A0, GX_CA_TEXA, GX_CA_ZERO);
            GXSetTevColorOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
            GXSetTevAlphaOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
            GXSetTevOrder(GX_TEVSTAGE0, GX_TEXCOORD0, GX_TEXMAP0, GX_COLOR_NULL);

            GXSetTexCoordGen2(GX_TEXCOORD0, GX_TG_MTX2x4, GX_TG_TEX0, GX_IDENTITY, GX_FALSE, 0x7D);

            GXSetColorUpdate(GX_TRUE);
            GXSetAlphaUpdate(GX_TRUE);

            GXSetBlendMode(GX_BM_BLEND, GX_BL_SRCALPHA, GX_BL_INVSRCALPHA, GX_LO_SET);
            GXSetZMode(GX_FALSE, GX_ALWAYS, GX_FALSE);
            GXSetAlphaCompare(GX_ALWAYS, 0, GX_AOP_OR, GX_ALWAYS, 0);

            GXSetCullMode(GX_CULL_NONE);
            GXSetClipMode(GX_CLIP_ENABLE);

            GXLoadTexObj(&texObj, GX_TEXMAP0);

            GXSetTevColor(GX_TEVREG0, color);

            GXBegin(GX_QUADS, GX_VTXFMT0, 4); {
                GXPosition3f32(rect.left, rect.top, 0.0f);
                GXTexCoord2u8(leftTop_x, leftTop_y);
                GXPosition3f32(rect.left, rect.bottom, 0.0f);
                GXTexCoord2u8(leftBottom_x, leftBottom_y);
                GXPosition3f32(rect.right, rect.bottom, 0.0f);
                GXTexCoord2u8(rightBottom_x, rightBottom_y);
                GXPosition3f32(rect.right, rect.top, 0.0f);
                GXTexCoord2u8(rightTop_x, rightTop_y);
            } GXEnd();
        }
    }
}
