#include <egg/core.h>

#include <nw4r/math.h>
#include <nw4r/ut.h>

#include <private/gx.h>
#include <revolution/gx.h>

#include <revolution/mtx.h>

namespace EGG {
    ColorFader::ColorFader(f32 x, f32 y, f32 width, f32 height, nw4r::ut::Color color, EStatus status)
        : mFadeFrame(DEFAULT_FRAME), mFrame(0), mSpace(x, y, x + width, y + height) {
        setColor(color);
        setStatus(status);

        mFlags.set(BIT_INIT);
    }

#ifndef NON_MATCHING
    nw4r::ut::Rect ForceCTORWeak() {
        return nw4r::ut::Rect(NULL, NULL, NULL, NULL);
    }
#endif  // NON_MATCHING

    void ColorFader::setFrame(u16 frame) {
        mFadeFrame = frame;
    }

    void ColorFader::setColor(nw4r::ut::Color color) {
        mColor.r = color.r;
        mColor.g = color.g;
        mColor.b = color.b;
    }

    void ColorFader::setStatus(EStatus status) {
        if (status == PREPARE_IN) {
            mStatus = PREPARE_IN;
            mColor.a = 255;
        } else if (status == PREPARE_OUT) {
            mStatus = PREPARE_OUT;
            mColor.a = 0;
        }
    }

    bool ColorFader::fadeIn() {
        bool success = mStatus == PREPARE_IN;

        if (success) {
            mStatus = FADE_IN;
            mFrame = 0;
        }

        return success;
    }

    bool ColorFader::fadeOut() {
        bool success = mStatus == PREPARE_OUT;

        if (success) {
            mStatus = FADE_OUT;
            mFrame = 0;
        }

        return success;
    }

    bool ColorFader::calc() {
        bool finished = false;

        if (mStatus == PREPARE_OUT) {
            mColor.a = 0;
        } else if (mStatus == PREPARE_IN) {
            mColor.a = 255;
        } else if (mStatus == FADE_IN) {
            u16 frame = mFrame;

            if (mFrame++ > mFadeFrame) {
                mStatus = PREPARE_OUT;
                finished = mFlags.onBit(BIT_FINISH_AFTER_IN);
                frame = mFadeFrame;
            }

            mColor.a = 255 - (frame * 255 / mFadeFrame);
        } else if (mStatus == FADE_OUT) {
            u16 frame = mFrame++;

            if (frame > mFadeFrame) {
                if (frame > mFadeFrame + 1) {
                    mStatus = PREPARE_IN;
                    finished = mFlags.onBit(BIT_FINISH_AFTER_OUT);
                }

                frame = mFadeFrame;
            }

            mColor.a = frame * 255 / mFadeFrame;
        }

        return finished;
    }

    void ColorFader::draw() {
        if (mColor.a == 0) {
            return;
        }

        Mtx44 projMtx;
        C_MTXOrtho(projMtx, mSpace.top, mSpace.bottom, mSpace.left, mSpace.right, 0.0f, 1.0f);
        GXSetProjection(projMtx, GX_ORTHOGRAPHIC);

        GXSetViewport(mSpace.left, mSpace.top, mSpace.GetWidth(), mSpace.GetHeight(), 0.0f, 1.0f);
        GXSetScissor(mSpace.left, mSpace.top, mSpace.GetWidth(), mSpace.GetHeight());

        Mtx posMtx;
        PSMTXIdentity(posMtx);
        GXLoadPosMtxImm(posMtx, GX_PNMTX0);
        GXSetCurrentMtx(GX_PNMTX0);

        GXClearVtxDesc();
        GXInvalidateVtxCache();
        GXSetVtxDesc(GX_VA_POS, GX_DIRECT);
        GXSetVtxDesc(GX_VA_CLR0, GX_NONE);
        GXSetVtxDesc(GX_VA_TEX0, GX_NONE);
        GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_POS, GX_POS_XYZ, GX_F32, 0);

        GXSetNumChans(1);
        GXSetChanMatColor(GX_COLOR0A0, mColor);
        GXSetChanCtrl(GX_COLOR0A0, GX_FALSE, GX_SRC_REG, GX_SRC_REG, GX_LIGHT_NULL, GX_DF_NONE, GX_AF_NONE);

        GXSetNumTexGens(0);
        GXSetNumIndStages(0);
        __GXSetIndirectMask(0);

        GXSetNumTevStages(1);
        GXSetTevOp(GX_TEVSTAGE0, GX_PASSCLR);
        GXSetTevOrder(GX_TEVSTAGE0, GX_TEXCOORD_NULL, GX_TEXMAP_NULL, GX_COLOR0A0);

        if (mColor.a == 255) {
            GXSetBlendMode(GX_BM_NONE, GX_BL_ONE, GX_BL_ZERO, GX_LO_SET);
        } else {
            GXSetBlendMode(GX_BM_BLEND, GX_BL_SRCALPHA, GX_BL_INVSRCALPHA, GX_LO_SET);
        }

        GXSetColorUpdate(GX_TRUE);
        GXSetAlphaUpdate(GX_TRUE);
        GXSetZMode(GX_FALSE, GX_NEVER, GX_FALSE);
        GXSetCullMode(GX_CULL_BACK);

        GXBegin(GX_QUADS, GX_VTXFMT0, 4);
        {
            GXPosition3f32(mSpace.left, mSpace.top, 0.0f);
            GXPosition3f32(mSpace.right, mSpace.top, 0.0f);
            GXPosition3f32(mSpace.right, mSpace.bottom, 0.0f);
            GXPosition3f32(mSpace.left, mSpace.bottom, 0.0f);
        }
        GXEnd();
    }

    // might be generated weaks, but causes matching issues with the IPL units.
    ColorFader::~ColorFader() {
    }

    ColorFader::EStatus ColorFader::getStatus() const {
        return mStatus;
    }
}  // namespace EGG
