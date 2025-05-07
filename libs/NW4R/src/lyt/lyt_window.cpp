#include <nw4r/lyt/window.h>

#include <nw4r/lyt/resources.h>
#include <nw4r/lyt/types.h>
#include <nw4r/lyt/layout.h>
#include <nw4r/lyt/common.h>

#include <nw4r/math.h>

#include <new>

namespace nw4r {
    namespace lyt {
        NW4R_UT_GET_DERIVED_RUNTIME_TYPEINFO(Window, Pane);
    }
}

namespace {
    using namespace nw4r;
    using namespace nw4r::lyt;

    typedef struct TextureFlipInfo {
        u8 coords[VERTEXCOLOR_MAX][FLIPINDEX_MAX];  // 0x00
        u8 idx[FLIPINDEX_MAX];                      // 0x08
    } TextureFlipInfo;

    TextureFlipInfo& GetTexutreFlipInfo(u8 textureFlip) {
        NW4R_ASSERT(textureFlip < TEXTUREFLIP_MAX);

        static TextureFlipInfo flipInfos[] = {                                                      //    0    1    2    3
                                                                                        // in order of    LT   RT   LB   RB
            {{{0, 0}, {1, 0}, {0, 1}, {1, 1}}, {0, 1}}, //    0    1    2    3              No flip
            {{{1, 0}, {0, 0}, {1, 1}, {0, 1}}, {0, 1}}, //    1    0    3    2              Horizontal flip
            {{{0, 1}, {1, 1}, {0, 0}, {1, 0}}, {0, 1}}, //    2    3    0    1              Vertical flip
            {{{0, 1}, {0, 0}, {1, 1}, {1, 0}}, {1, 0}}, //    2    0    3    1, Index flip  Clockwise  90 degrees
            {{{1, 1}, {0, 1}, {1, 0}, {0, 0}}, {0, 1}}, //    3    2    1    0              Clockwise 180 degrees
            {{{1, 0}, {1, 1}, {0, 0}, {0, 1}}, {1, 0}}  //    1    3    0    2, Index flip  Clockwise 270 degrees 
        };

        return flipInfos[textureFlip];
    }

    void GetLTFrameSize(math::VEC2* pPt, Size* pSize, const math::VEC2& basePt, const Size& winSize, const WindowFrameSize& frameSize) {
        *pPt = basePt;
        pSize->width = winSize.width - frameSize.r;
        pSize->height = frameSize.t;
    }

    void GetLTTexCoord(math::VEC2* texCds, const Size& polSize, const Size& texSize, u8 textureFlip) {
        TextureFlipInfo& flipInfo = GetTexutreFlipInfo(textureFlip);
        int ix = flipInfo.idx[FLIPINDEX_X];
        int iy = flipInfo.idx[FLIPINDEX_Y];

        const math::VEC2 tSz(texSize.width, texSize.height);

        texCds[VERTEXCOLOR_LT][ix] = texCds[VERTEXCOLOR_LB][ix] =
            flipInfo.coords[VERTEXCOLOR_LT][ix];

        texCds[VERTEXCOLOR_LT][iy] = texCds[VERTEXCOLOR_RT][iy] =
            flipInfo.coords[VERTEXCOLOR_LT][iy];

        texCds[VERTEXCOLOR_RB][ix] = texCds[VERTEXCOLOR_RT][ix] =
            flipInfo.coords[VERTEXCOLOR_LT][ix] + polSize.width /
            ((flipInfo.coords[VERTEXCOLOR_RT][ix] - flipInfo.coords[VERTEXCOLOR_LT][ix]) * tSz[ix]);
        
        texCds[VERTEXCOLOR_RB][iy] = texCds[VERTEXCOLOR_LB][iy] =
            flipInfo.coords[VERTEXCOLOR_LT][iy] + polSize.height /
            ((flipInfo.coords[VERTEXCOLOR_LB][iy] - flipInfo.coords[VERTEXCOLOR_LT][iy]) * tSz[iy]);
    }

    void GetRTFrameSize(math::VEC2* pPt, Size* pSize, const math::VEC2& basePt, const Size& winSize, const WindowFrameSize& frameSize) {
        *pPt = math::VEC2(basePt.x + winSize.width - frameSize.r, basePt.y);
        pSize->width = frameSize.r;
        pSize->height = winSize.height - frameSize.b;
    }

    void GetRTTexCoord(math::VEC2* texCds, const Size& polSize, const Size& texSize, u8 textureFlip) {
        TextureFlipInfo& flipInfo = GetTexutreFlipInfo(textureFlip);
        int ix = flipInfo.idx[FLIPINDEX_X];
        int iy = flipInfo.idx[FLIPINDEX_Y];

        const math::VEC2 tSz(texSize.width, texSize.height);

        texCds[VERTEXCOLOR_RT][ix] = texCds[VERTEXCOLOR_RB][ix] =
            flipInfo.coords[VERTEXCOLOR_RT][ix];

        texCds[VERTEXCOLOR_RT][iy] = texCds[VERTEXCOLOR_LT][iy] =
            flipInfo.coords[VERTEXCOLOR_RT][iy];

        texCds[VERTEXCOLOR_LB][ix] = texCds[VERTEXCOLOR_LT][ix] =
            flipInfo.coords[VERTEXCOLOR_RT][ix] + polSize.width /
            ((flipInfo.coords[VERTEXCOLOR_LT][ix] - flipInfo.coords[VERTEXCOLOR_RT][ix]) * tSz[ix]);
        
        texCds[VERTEXCOLOR_LB][iy] = texCds[VERTEXCOLOR_RB][iy] =
            flipInfo.coords[VERTEXCOLOR_RT][iy] + polSize.height /
            ((flipInfo.coords[VERTEXCOLOR_RB][iy] - flipInfo.coords[VERTEXCOLOR_RT][iy]) * tSz[iy]);
    }

    void GetLBFrameSize(math::VEC2* pPt, Size* pSize, const math::VEC2& basePt, const Size& winSize, const WindowFrameSize& frameSize) {
        *pPt = math::VEC2(basePt.x, basePt.y + frameSize.t);
        pSize->width = frameSize.l;
        pSize->height = winSize.height - frameSize.t;
    }

    void GetLBTexCoord(math::VEC2* texCds, const Size& polSize, const Size& texSize, u8 textureFlip) {
        TextureFlipInfo& flipInfo = GetTexutreFlipInfo(textureFlip);
        int ix = flipInfo.idx[FLIPINDEX_X];
        int iy = flipInfo.idx[FLIPINDEX_Y];

        const math::VEC2 tSz(texSize.width, texSize.height);

        texCds[VERTEXCOLOR_LB][ix] = texCds[VERTEXCOLOR_LT][ix] =
            flipInfo.coords[VERTEXCOLOR_LB][ix];

        texCds[VERTEXCOLOR_LB][iy] = texCds[VERTEXCOLOR_RB][iy] =
            flipInfo.coords[VERTEXCOLOR_LB][iy];

        texCds[VERTEXCOLOR_RT][ix] = texCds[VERTEXCOLOR_RB][ix] =
            flipInfo.coords[VERTEXCOLOR_LB][ix] + polSize.width /
            ((flipInfo.coords[VERTEXCOLOR_RB][ix] - flipInfo.coords[VERTEXCOLOR_LB][ix]) * tSz[ix]);
        
        texCds[VERTEXCOLOR_RT][iy] = texCds[VERTEXCOLOR_LT][iy] =
            flipInfo.coords[VERTEXCOLOR_LB][iy] + polSize.height / 
            ((flipInfo.coords[VERTEXCOLOR_LT][iy] - flipInfo.coords[VERTEXCOLOR_LB][iy]) * tSz[iy]);
    }

    void GetRBFrameSize(math::VEC2* pPt, Size* pSize, const math::VEC2& basePt, const Size& winSize, const WindowFrameSize& frameSize) {
        *pPt = math::VEC2(basePt.x + frameSize.l, basePt.y + winSize.height - frameSize.b);
        pSize->width = winSize.width - frameSize.l;
        pSize->height = frameSize.b;
    }

    void GetRBTexCoord(math::VEC2* texCds, const Size& polSize, const Size& texSize, u8 textureFlip) {
        TextureFlipInfo& flipInfo = GetTexutreFlipInfo(textureFlip);
        int ix = flipInfo.idx[FLIPINDEX_X];
        int iy = flipInfo.idx[FLIPINDEX_Y];

        const math::VEC2 tSz(texSize.width, texSize.height);

        texCds[VERTEXCOLOR_RB][ix] = texCds[VERTEXCOLOR_RT][ix] =
            flipInfo.coords[VERTEXCOLOR_RB][ix];

        texCds[VERTEXCOLOR_RB][iy] = texCds[VERTEXCOLOR_LB][iy] =
            flipInfo.coords[VERTEXCOLOR_RB][iy];

        texCds[VERTEXCOLOR_LT][ix] = texCds[VERTEXCOLOR_LB][ix] =
            flipInfo.coords[VERTEXCOLOR_RB][ix] + polSize.width /
            ((flipInfo.coords[VERTEXCOLOR_LB][ix] - flipInfo.coords[VERTEXCOLOR_RB][ix]) * tSz[ix]);

        texCds[VERTEXCOLOR_LT][iy] = texCds[VERTEXCOLOR_RT][iy] =
            flipInfo.coords[VERTEXCOLOR_RB][iy] + polSize.height /
            ((flipInfo.coords[VERTEXCOLOR_RT][iy] - flipInfo.coords[VERTEXCOLOR_RB][iy]) * tSz[iy]);
    }
}

namespace nw4r {
    namespace lyt {
        Window::Window(const res::Window* pBlock, const ResBlockSet& resBlockSet) :
        Pane(pBlock) {
            mContentInflation = pBlock->inflation;

            const u32* const matOffsTbl = detail::ConvertOffsToPtr<u32>(resBlockSet.pMaterialList,
                                                                        sizeof(*resBlockSet.pMaterialList));

            {
                const res::WindowContent* pResContent = detail::ConvertOffsToPtr<res::WindowContent>(pBlock,
                                                                                                    pBlock->contentOffset);

                for (int i = 0; i < (int)ARRSIZE(mContent.vtxColors); i++) {
                    mContent.vtxColors[i] = pResContent->vtxCols[i];
                }

                if (pResContent->texCoordNum) {
                    u8 texCoordNum = ut::Min<u8>(pResContent->texCoordNum, GX_MAX_TEXCOORD);
                    mContent.texCoordAry.Reserve(texCoordNum);

                    if (!mContent.texCoordAry.IsEmpty()) {
                        mContent.texCoordAry.Copy(&pResContent[1], texCoordNum);
                    }
                }

                void* pMemMaterial = Layout::AllocMemory(sizeof(Material));
                if (pMemMaterial != NULL) {
                    const res::Material* pResMaterial = detail::ConvertOffsToPtr<res::Material>(resBlockSet.pMaterialList,
                                                                                                matOffsTbl[pResContent->materialIdx]);
                    mpMaterial = new(pMemMaterial) Material(pResMaterial, resBlockSet);
                }
            }

            mFrameNum = 0;
            mFrames = NULL;

            if (pBlock->frameNum) {
                mFrames = static_cast<Frame*>(Layout::AllocMemory(sizeof(*mFrames) * pBlock->frameNum));
                if (mFrames != NULL) {
                    mFrameNum = pBlock->frameNum;
                    const u32* frameOffsetTable = detail::ConvertOffsToPtr<u32>(pBlock,
                                                                                pBlock->frameOffsetTableOffset);

                    for (int i = 0; i < mFrameNum; i++) {
                        const res::WindowFrame* pResWindowFrame = detail::ConvertOffsToPtr<res::WindowFrame>(pBlock,
                                                                                                            frameOffsetTable[i]);
                        mFrames[i].textureFlip = pResWindowFrame->textureFlip;
                        mFrames[i].pMaterial = NULL;

                        if (void* pMemMaterial = Layout::AllocMemory(sizeof(Material))) {
                            const res::Material* pResMaterial = detail::ConvertOffsToPtr<res::Material>(resBlockSet.pMaterialList,
                                                                                                        matOffsTbl[pResWindowFrame->materialIdx]);
                            mFrames[i].pMaterial = new(pMemMaterial) Material(pResMaterial, resBlockSet);
                        }
                    }
                }
            }
        }

        Window::~Window() {
            if (mFrames != NULL) {
                for (int i = 0; i < mFrameNum; i++) {
                    mFrames[i].pMaterial->~Material();
                    Layout::FreeMemory(mFrames[i].pMaterial);
                }
                Layout::FreeMemory(mFrames);
            }

            if (mpMaterial != NULL && !mpMaterial->IsUserAllocated()) {
                mpMaterial->~Material();
                Layout::FreeMemory(mpMaterial);
                mpMaterial = NULL;
            }

            mContent.texCoordAry.Free();
        }

        Material* Window::FindMaterialByName(const char* findName, bool bRecursive) {
            if (mpMaterial != NULL && detail::EqualsMaterialName(mpMaterial->GetName(), findName)) {
                return mpMaterial;
            }

            for (int i = 0; i < mFrameNum; i++) {
                if (detail::EqualsMaterialName(mFrames[i].pMaterial->GetName(), findName)) {
                    return mFrames[i].pMaterial;
                }
            }

            if (bRecursive) {
                for (PaneList::Iterator it = mChildList.GetBeginIter(); it != mChildList.GetEndIter(); it++) {
                    Material* pMat = it->FindMaterialByName(findName, true);
                    if (pMat) {
                        return pMat;
                    }
                }
            }

            return NULL;
        }

        AnimationLink* Window::FindAnimationLink(AnimTransform* pAnimTrans) {
            if (AnimationLink* ret = Pane::FindAnimationLink(pAnimTrans)) {
                return ret;
            }

            for (int i = 0; i < mFrameNum; i++) {
                if (AnimationLink* ret = mFrames[i].pMaterial->FindAnimationLink(pAnimTrans)) {
                    return ret;
                }
            }

            return NULL;
        }

        void Window::SetAnimationEnable(AnimTransform* pAnimTrans, bool bEnable, bool bRecursive) {
            for (int i = 0; i < mFrameNum; i++) {
                mFrames[i].pMaterial->SetAnimationEnable(pAnimTrans, bEnable);
            }

            Pane::SetAnimationEnable(pAnimTrans, bEnable, bRecursive);
        }

        ut::Color Window::GetVtxColor(u32 idx) const {
            NW4R_ASSERT(idx < VERTEXCOLOR_MAX);
            return mContent.vtxColors[idx];
        }

        void Window::SetVtxColor(u32 idx, ut::Color value) {
            NW4R_ASSERT(idx < VERTEXCOLOR_MAX);
            mContent.vtxColors[idx] = value;
        }

        u8 Window::GetVtxColorElement(u32 idx) const {
            return detail::GetVtxColorElement(mContent.vtxColors, idx);
        }

        void Window::SetVtxColorElement(u32 idx, u8 value) {
            detail::SetVtxColorElement(mContent.vtxColors, idx, value);
        }

        void Window::DrawSelf(const DrawInfo& drawInfo) {
            LoadMtx(drawInfo);
            WindowFrameSize frameSize = GetFrameSize(mFrameNum, mFrames);

            math::VEC2 basePt = GetVtxPos();

            DrawContent(basePt, frameSize, mGlbAlpha);

            switch (mFrameNum) {
                case 1: {
                    DrawFrame(basePt,* mFrames, frameSize, mGlbAlpha);
                    break;
                }
                case 4: {
                    DrawFrame4(basePt, mFrames, frameSize, mGlbAlpha);
                    break;
                }
                case 8: {
                    DrawFrame8(basePt, mFrames, frameSize, mGlbAlpha);
                    break;
                }
            }
        }

        void Window::AnimateSelf(u32 option) {
            Pane::AnimateSelf(option);

            if (IsVisible() || !(option & ANIMOPTION_SKIP_INVISIBLE)) {
                for (int i = 0; i < mFrameNum; i++) {
                    mFrames[i].pMaterial->Animate();
                }
            }
        }

        void Window::UnbindAnimationSelf(AnimTransform* pAnimTrans) {
            for (int i = 0; i < mFrameNum; i++) {
                mFrames[i].pMaterial->UnbindAnimation(pAnimTrans);
            }

            Pane::UnbindAnimationSelf(pAnimTrans);
        }

        void Window::DrawContent(const math::VEC2& basePt, const WindowFrameSize& frameSize, u8 alpha) {
            bool bUseVtxCol = mpMaterial->SetupGX(detail::IsModulateVertexColor(mContent.vtxColors, alpha), alpha);
        
            detail::SetVertexFormat(bUseVtxCol, mContent.texCoordAry.GetSize());
        
            detail::DrawQuad(math::VEC2(basePt.x + frameSize.l - mContentInflation.l, basePt.y + frameSize.t - mContentInflation.t),
                             Size(mSize.width  - frameSize.l + mContentInflation.l - frameSize.r + mContentInflation.r,
                                  mSize.height - frameSize.t + mContentInflation.t - frameSize.b + mContentInflation.b),
                             mContent.texCoordAry.GetSize(),
                             mContent.texCoordAry.GetArray(),
                             bUseVtxCol ? mContent.vtxColors : NULL, alpha);
        }

        void Window::DrawFrame(const math::VEC2& basePt, const Frame& frame, const WindowFrameSize& frameSize, u8 alpha) {
            if (frame.pMaterial->GetTextureNum() == GX_TEXMAP0) {
                return;
            }

            const bool bUseVtxCol = frame.pMaterial->SetupGX(detail::IsModulateVertexColor(NULL, alpha), alpha);
            detail::SetVertexFormat(bUseVtxCol, GX_TEXMAP1);

            const Size texSize = detail::GetTextureSize(frame.pMaterial, GX_TEXMAP0);
            const ut::Color vtxColors[VERTEXCOLOR_MAX];

            detail::TexCoords texCds[1];

            math::VEC2 polPt;
            Size polSize;

            #define DRAW_QUAD_FOR_FRAME_1(corner_, frameIdx_) {                                             \
                Get##corner_##FrameSize(&polPt, &polSize, basePt, mSize, frameSize);                        \
                Get##corner_##TexCoord(*texCds, polSize, texSize, frameIdx_);                               \
                detail::DrawQuad(polPt, polSize, GX_TEXMAP1, texCds, bUseVtxCol ? vtxColors : NULL, alpha); \
            }

            DRAW_QUAD_FOR_FRAME_1(LT, TEXTUREFLIP_NONE);
            DRAW_QUAD_FOR_FRAME_1(RT, TEXTUREFLIP_H);
            DRAW_QUAD_FOR_FRAME_1(RB, TEXTUREFLIP_180);
            DRAW_QUAD_FOR_FRAME_1(LB, TEXTUREFLIP_V);

            #undef DRAW_QUAD_FOR_FRAME_1
        }

        void Window::DrawFrame4(const math::VEC2& basePt, const Frame* frames, const WindowFrameSize& frameSize, u8 alpha) {
            const ut::Color vtxColors[VERTEXCOLOR_MAX];

            detail::TexCoords texCds[1];

            math::VEC2 polPt;
            Size polSize;

            bool bModVtxCol = detail::IsModulateVertexColor(NULL, alpha);

            #define DRAW_QUAD_FOR_FRAME_4(corner_, frameIdx_) {                                                                                 \
                if (frames[frameIdx_].pMaterial->GetTextureNum() > GX_TEXMAP0) {                                                                \
                    bool bUseVtxCol = frames[frameIdx_].pMaterial->SetupGX(bModVtxCol, alpha);                                                  \
                    Get##corner_##FrameSize(&polPt, &polSize, basePt, mSize, frameSize);                                                        \
                    Get##corner_##TexCoord(*texCds, polSize,                                                                                    \
                                            detail::GetTextureSize(frames[frameIdx_].pMaterial, GX_TEXMAP0), frames[frameIdx_].textureFlip);    \
                    detail::SetVertexFormat(bUseVtxCol, GX_TEXMAP1);                                                                            \
                    detail::DrawQuad(polPt, polSize, GX_TEXMAP1, texCds, bUseVtxCol ? vtxColors : NULL, alpha);                                 \
                }                                                                                                                               \
            }

            DRAW_QUAD_FOR_FRAME_4(LT, TEXTUREFLIP_NONE);
            DRAW_QUAD_FOR_FRAME_4(RT, TEXTUREFLIP_H);
            DRAW_QUAD_FOR_FRAME_4(RB, TEXTUREFLIP_90);
            DRAW_QUAD_FOR_FRAME_4(LB, TEXTUREFLIP_V);

            #undef DRAW_QUAD_FOR_FRAME_4
        }

        void Window::DrawFrame8(const math::VEC2& basePt, const Frame* frames, const WindowFrameSize& frameSize, u8 alpha) {
            const ut::Color vtxColors[VERTEXCOLOR_MAX];

            detail::TexCoords texCds[1];

            Size polSize;

            bool bModVtxCol = detail::IsModulateVertexColor(NULL, alpha);

            #define DRAW_QUAD_FOR_FRAME_8(corner_, frameIdx_, polSizeInit_, basePtInit_) {                                  \
                if (frames[WINDOWFRAME_##frameIdx_].pMaterial->GetTextureNum() > GX_TEXMAP0) {                              \
                    bool bUseVtxCol = frames[WINDOWFRAME_##frameIdx_].pMaterial->SetupGX(bModVtxCol, alpha);                \
                    polSize = polSizeInit_;                                                                                 \
                    Get##corner_##TexCoord(*texCds, polSize,                                                                \
                                            detail::GetTextureSize(frames[WINDOWFRAME_##frameIdx_].pMaterial, GX_TEXMAP0),  \
                                            frames[WINDOWFRAME_##frameIdx_].textureFlip);                                   \
                    detail::SetVertexFormat(bUseVtxCol, GX_TEXMAP1);                                                        \
                    detail::DrawQuad(basePtInit_, polSize, GX_TEXMAP1, texCds, bUseVtxCol ? vtxColors : NULL, alpha);       \
                }                                                                                                           \
            }

            DRAW_QUAD_FOR_FRAME_8(LT, LT, Size(frameSize.l, frameSize.t), basePt);

            DRAW_QUAD_FOR_FRAME_8(LT, T, Size(mSize.width - frameSize.l - frameSize.r, frameSize.t),
                                math::VEC2(basePt.x + frameSize.l, basePt.y));

            DRAW_QUAD_FOR_FRAME_8(RT, RT, Size(frameSize.r, frameSize.t),
                                math::VEC2(basePt.x + mSize.width - frameSize.r, basePt.y));

            DRAW_QUAD_FOR_FRAME_8(RT, R, Size(frameSize.r, mSize.height - frameSize.t - frameSize.b),
                                math::VEC2(basePt.x + mSize.width - frameSize.r, basePt.y + frameSize.t));

            DRAW_QUAD_FOR_FRAME_8(RB, RB, Size(frameSize.r, frameSize.b),
                                math::VEC2(basePt.x + mSize.width - frameSize.r, basePt.y + mSize.height - frameSize.b));

            DRAW_QUAD_FOR_FRAME_8(RB, B, Size(mSize.width - frameSize.l - frameSize.r, frameSize.b),
                                math::VEC2(basePt.x + frameSize.l, basePt.y + mSize.height - frameSize.b));

            DRAW_QUAD_FOR_FRAME_8(LB, LB, Size(frameSize.l, frameSize.b),
                                math::VEC2(basePt.x, basePt.y + mSize.height - frameSize.b));

            DRAW_QUAD_FOR_FRAME_8(LB, L, Size(frameSize.l, mSize.height - frameSize.t - frameSize.b),
                                math::VEC2(basePt.x, basePt.y + frameSize.t));

            #undef DRAW_QUAD_FOR_FRAME_8
        }

        WindowFrameSize Window::GetFrameSize(u8 frameNum, const Frame* frames) {
            WindowFrameSize ret = {};

            switch (frameNum) {
                case 1: {
                    Size texSize = detail::GetTextureSize(frames->pMaterial, GX_TEXMAP0);
                    ret.l = texSize.width;
                    ret.t = texSize.height;
                    ret.r = texSize.width;
                    ret.b = texSize.height;
                    break;
                }
                case 4:
                case 8: {
                    Size texSize = detail::GetTextureSize(frames[WINDOWFRAME_LT].pMaterial, GX_TEXMAP0);
                    ret.l = texSize.width;
                    ret.t = texSize.height;
                    texSize = detail::GetTextureSize(frames[WINDOWFRAME_RB].pMaterial, GX_TEXMAP0);
                    ret.r = texSize.width;
                    ret.b = texSize.height;
                    break;
                }
            }

            return ret;
        }

        Material* Window::GetFrameMaterial(u32 frameIdx) const {
            NW4R_ASSERT(frameIdx < WINDOWFRAME_MAX);
            if (frameIdx >= mFrameNum) {
                return NULL;
            }

            return mFrames[frameIdx].pMaterial;
        }

        Material* Window::GetContentMaterial() const {
            return GetMaterial();
        }
    }
}
