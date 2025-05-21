#include <nw4r/lyt/animation.h>
#include <nw4r/lyt/layout.h>
#include <nw4r/lyt/material.h>
#include <nw4r/lyt/pane.h>

#include <nw4r/lyt/common.h>

#include <nw4r/db.h>

#include <revolution.h>

#include <cstring>
#include <new>

namespace {
    using namespace nw4r;
    using namespace nw4r::lyt;

    inline bool RIsSame(const f32 a, const f32 b, const f32 tolerance) {
        f32 c = a - b;
        return -tolerance < c && c < tolerance;
    }

    u16 GetStepCurveValue(f32 frame, const res::StepKey* keyArray, u32 keySize) {
        if (keySize == 1 || frame <= keyArray[0].frame) {
            return keyArray[0].value;
        }

        if (frame >= keyArray[keySize - 1].frame) {
            return keyArray[keySize - 1].value;
        }

        int ikeyL = 0;
        int ikeyR = keySize - 1;

        while (ikeyL != ikeyR - 1 && ikeyL != ikeyR) {
            int ikeyCenter = (ikeyL + ikeyR) / 2;
            const res::StepKey& centerKey = keyArray[ikeyCenter];

            if (frame < centerKey.frame) {
                ikeyR = ikeyCenter;
            }
            else {
                ikeyL = ikeyCenter;
            }
        }

        if (RIsSame(frame, keyArray[ikeyR].frame, 0.001f)) {
            return keyArray[ikeyR].value;
        }
        else {
            return keyArray[ikeyL].value;
        }
    }

    f32 GetHermiteCurveValue(f32 frame, const res::HermiteKey* keyArray, u32 keySize) {
        if (keySize == 1 || frame <= keyArray[0].frame) {
            return keyArray[0].value;
        }

        if (frame >= keyArray[keySize - 1].frame) {
            return keyArray[keySize - 1].value;
        }

        int ikeyL = 0;
        int ikeyR = keySize - 1;

        while (ikeyL != ikeyR - 1 && ikeyL != ikeyR)     {
            int ikeyCenter = (ikeyL + ikeyR) / 2;
            if (frame <= keyArray[ikeyCenter].frame) {
                ikeyR = ikeyCenter;
            }
            else {
                ikeyL = ikeyCenter;
            }
        }

        const res::HermiteKey& key0 = keyArray[ikeyL];
        const res::HermiteKey& key1 = keyArray[ikeyR];

        if (RIsSame(frame, key1.frame, 0.001f)) {
            if (ikeyR < keySize - 1 && keyArray[ikeyR + 1].frame == key1.frame) {
                return keyArray[ikeyR + 1].value;
            }
            else {
                return key1.value;
            }
        }

        f32 t1 = frame - key0.frame;
        f32 t2 = 1.0f / (key1.frame - key0.frame);
        f32 v0 = key0.value;
        f32 v1 = key1.value;
        f32 s0 = key0.slope;
        f32 s1 = key1.slope;

        f32 t1t1t2       = t1         * t1 * t2;
        f32 t1t1t2t2     = t1t1t2     * t2;
        f32 t1t1t1t2t2   = t1         * t1t1t2t2;
        f32 t1t1t1t2t2t2 = t1t1t1t2t2 * t2;

        // oh god
        return v0 * (( 2.0f * t1t1t1t2t2t2) - (3.0f * t1t1t2t2) + 1.0f)
             + v1 * ((-2.0f * t1t1t1t2t2t2) + (3.0f * t1t1t2t2)       )
             + s0 * ((        t1t1t1t2t2 )  - (2.0f * t1t1t2  ) + t1  )
             + s1 * ((        t1t1t1t2t2 )  - (      t1t1t2   )       );
    }

    void AnimatePainSRT(Pane* pPane, const res::AnimationInfo* pAnimInfo, const u32* animTargetOffsets, f32 frame) {
        for (int i = 0; i < pAnimInfo->num; i++) {
            const res::AnimationTarget* pAnimTarget = detail::ConvertOffsToPtr<res::AnimationTarget>(pAnimInfo, animTargetOffsets[i]);

            NW4R_ASSERT(pAnimTarget->target < ANIMTARGET_PANE_MAX);

            const res::HermiteKey* keys = detail::ConvertOffsToPtr<res::HermiteKey>(pAnimTarget,
                                                                                    pAnimTarget->keysOffset);
 
            pPane->SetSRTElement(pAnimTarget->target,
                                GetHermiteCurveValue(frame, keys, pAnimTarget->keyNum));
        }
    }

    void AnimateVisibility(Pane* pPane, const res::AnimationInfo* pAnimInfo, const u32* animTargetOffsets, f32 frame) {
        for (int i = 0; i < pAnimInfo->num; i++) {
            const res::AnimationTarget* pAnimTarget = detail::ConvertOffsToPtr<res::AnimationTarget>(pAnimInfo,
                                                                                                    animTargetOffsets[i]);

            NW4R_ASSERT(pAnimTarget->target < ANIMTARGET_PANE_MAX);

            const res::StepKey* keys = detail::ConvertOffsToPtr<res::StepKey>(pAnimTarget,
                                                                            pAnimTarget->keysOffset);
                

            pPane->SetVisible(GetStepCurveValue(frame,
                                                keys,
                                                pAnimTarget->keyNum) != 0);
        }
    }

    void AnimateVertexColor(Pane* pPane, const res::AnimationInfo* pAnimInfo, const u32* animTargetOffsets, f32 frame) NO_INLINE {
        for (int i = 0; i < pAnimInfo->num; i++) {
            const res::AnimationTarget* pAnimTarget = detail::ConvertOffsToPtr<res::AnimationTarget>(pAnimInfo,
                                                                                                    animTargetOffsets[i]);

            NW4R_ASSERT(pAnimTarget->target < ANIMTARGET_PANE_COLOR_MAX);

            const res::HermiteKey* keys = detail::ConvertOffsToPtr<res::HermiteKey>(pAnimTarget,
                                                                                    pAnimTarget->keysOffset);

            f32 value = GetHermiteCurveValue(frame, keys, pAnimTarget->keyNum);
            value += 0.5f;

            u8 u8Val;
            OSf32tou8(&value, &u8Val);

            pPane->SetColorElement(pAnimTarget->target,
                                    u8Val);
        }
    }

    void AnimateMaterialColor(Material* pMaterial, const res::AnimationInfo* pAnimInfo, const u32* animTargetOffsets, f32 frame) NO_INLINE {
        for (int i = 0; i < pAnimInfo->num; i++) {
            const res::AnimationTarget* pAnimTarget = detail::ConvertOffsToPtr<res::AnimationTarget>(pAnimInfo,
                                                                                                    animTargetOffsets[i]);

            NW4R_ASSERT(pAnimTarget->target < ANIMTARGET_MATCOLOR_MAX);

            const res::HermiteKey* keys = detail::ConvertOffsToPtr<res::HermiteKey>(pAnimTarget,
                                                                                    pAnimTarget->keysOffset);

            f32 value = GetHermiteCurveValue(frame, keys, pAnimTarget->keyNum);
            value += 0.5f;

            s16 s16Val;
            OSf32tos16(&value, &s16Val);
            s16Val = ut::Min<s16>(ut::Max<s16>(s16Val, -1024), 1023);

            pMaterial->SetColorElement(pAnimTarget->target,
                                        s16Val);
        }
    }

    void AnimateTextureSRT(Material* pMaterial, const res::AnimationInfo* pAnimInfo, const u32* animTargetOffsets, f32 frame) {
        for (int i = 0; i < pAnimInfo->num; i++) {
            const res::AnimationTarget* pAnimTarget = detail::ConvertOffsToPtr<res::AnimationTarget>(pAnimInfo,
                                                                                                    animTargetOffsets[i]);

            if (pAnimTarget->id < pMaterial->GetTexSRTCap()) {
                NW4R_ASSERT(pAnimTarget->target < ANIMTARGET_TEXSRT_MAX);

                const res::HermiteKey* keys = detail::ConvertOffsToPtr<res::HermiteKey>(pAnimTarget,
                                                                                        pAnimTarget->keysOffset);

                pMaterial->SetTexSRTElement(pAnimTarget->id,
                                            pAnimTarget->target,
                                            GetHermiteCurveValue(frame, keys, pAnimTarget->keyNum));
            }
        }
    }

    void AnimateTexturePattern(Material* pMaterial, const res::AnimationInfo* pAnimInfo, const u32* animTargetOffsets, f32 frame, void* *tpls) {
        // Not `i`?
        for (int j = 0; j < pAnimInfo->num; j++) {
            const res::AnimationTarget* pAnimTarget = detail::ConvertOffsToPtr<res::AnimationTarget>(pAnimInfo,
                                                                                                    animTargetOffsets[j]);

            if (pAnimTarget->id < pMaterial->GetTextureNum() && pAnimTarget->target == ANIMTARGET_TEXPATTURN_IMAGE) {
                const res::StepKey* keys = detail::ConvertOffsToPtr<res::StepKey>(pAnimTarget,
                                                                                pAnimTarget->keysOffset);

                u16 fileIdx = GetStepCurveValue(frame,
                                                keys,
                                                pAnimTarget->keyNum);

                pMaterial->SetTextureNoWrap(pAnimTarget->id,
                                            static_cast<TPLPalette*>(tpls[fileIdx]));
            }
        }
    }

    void AnimateIndTexSRT(Material* pMaterial, const res::AnimationInfo* pAnimInfo, const u32* animTargetOffsets, f32 frame) {
        for (int i = 0; i < pAnimInfo->num; i++) {
            const res::AnimationTarget* pAnimTarget = detail::ConvertOffsToPtr<res::AnimationTarget>(pAnimInfo,
                                                                                                    animTargetOffsets[i]);

            if (pAnimTarget->id < pMaterial->GetIndTexSRTCap()) {
                NW4R_ASSERT(pAnimTarget->target < ANIMTARGET_TEXSRT_MAX);

                const res::HermiteKey* keys = detail::ConvertOffsToPtr<res::HermiteKey>(pAnimTarget,
                                                                                        pAnimTarget->keysOffset);

                pMaterial->SetIndTexSRTElement(pAnimTarget->id,
                                                pAnimTarget->target,
                                                GetHermiteCurveValue(frame, keys, pAnimTarget->keyNum));
            }
        }
    }
}

namespace nw4r {
    namespace lyt {
        AnimTransform::AnimTransform():
        mLink(),
        mpRes(NULL),
        mFrame(0.0f) {}

        AnimTransform::~AnimTransform() {}

        u16 AnimTransform::GetFrameSize() const {
            return mpRes->frameSize;
        }

        bool AnimTransform::IsLoopData() const {
            return mpRes->loop;
        }

        AnimTransformBasic::AnimTransformBasic():
        mpFileResAry(NULL),
        mAnimLinkAry(NULL),
        mAnimLinkNum(0) {}

        AnimTransformBasic::~AnimTransformBasic() {
            if (mAnimLinkAry != NULL) {
                Layout::FreeMemory(mAnimLinkAry);
            }

            if (mpFileResAry != NULL) {
                Layout::FreeMemory(mpFileResAry);
            }
        }

        void AnimTransformBasic::SetResource(const res::AnimationBlock* pRes, ResourceAccessor* pResAccessor) {
            mpRes = pRes;
            mpFileResAry = NULL;

            if (pRes->fileNum != 0) {
                mpFileResAry = static_cast<void**>(Layout::AllocMemory(sizeof(*mpFileResAry) * pRes->fileNum));

                if (mpFileResAry != NULL) {
                    const u32* fileNameOffsets = detail::ConvertOffsToPtr<u32>(mpRes, sizeof(*mpRes));

                    for (int i = 0; i < mpRes->fileNum; i++) {
                        mpFileResAry[i] = pResAccessor->GetResource(RESOURCE_TYPE_TEXTURE, detail::GetStrTableStr(fileNameOffsets, i), 0);
                    }
                }
            }

            mAnimLinkAry = static_cast<AnimationLink*>(Layout::AllocMemory(sizeof(*mAnimLinkAry) * pRes->animContNum));

            if (mAnimLinkAry != NULL) {
                mAnimLinkNum = pRes->animContNum;
                memset(mAnimLinkAry, 0, sizeof(*mAnimLinkAry) * pRes->animContNum);

                for (u16 i = 0; i < pRes->animContNum; i++) {
                    new(&mAnimLinkAry[i]) AnimationLink();
                }
            }
        }

        void AnimTransformBasic::Bind(Pane* pPane, bool bRecursive) {
            const u32* animContOffsets = detail::ConvertOffsToPtr<u32>(mpRes, mpRes->animContOffsetsOffset);

            for (u16 i = 0; i < mpRes->animContNum; i++) {
                const res::AnimationContent* pAnimCont = detail::ConvertOffsToPtr<res::AnimationContent>(mpRes, animContOffsets[i]);

                if (pAnimCont->type == res::AnimationContent::ANIMTYPE_PANE) {
                    Pane* pFindPane = pPane->FindPaneByName(pAnimCont->name, bRecursive);

                    if (pFindPane != NULL) {
                        mAnimLinkAry[i].SetAnimTransform(this, i);
                        pFindPane->AddAnimationLink(&mAnimLinkAry[i]);
                    }
                }
                else {
                    Material* pFindMat = pPane->FindMaterialByName(pAnimCont->name, bRecursive);

                    if (pFindMat != NULL) {
                        mAnimLinkAry[i].SetAnimTransform(this, i);
                        pFindMat->AddAnimationLink(&mAnimLinkAry[i]);
                    }
                }
            }
        }

        void AnimTransformBasic::Bind(Material* pMaterial) {
            const u32* animContOffsets = detail::ConvertOffsToPtr<u32>(mpRes, mpRes->animContOffsetsOffset);

            for (u16 i = 0; i < mpRes->animContNum; i++) {
                const res::AnimationContent* pAnimCont = detail::ConvertOffsToPtr<res::AnimationContent>(mpRes, animContOffsets[i]);

                if (pAnimCont->type != res::AnimationContent::ANIMTYPE_MATERIAL) {
                    continue;
                }

                if (detail::EqualsMaterialName(pMaterial->GetName(), pAnimCont->name)) {
                    mAnimLinkAry[i].SetAnimTransform(this, i);
                    pMaterial->AddAnimationLink(&mAnimLinkAry[i]);
                }
            }
        }

        void AnimTransformBasic::Animate(u32 idx, Pane* pPane) {
            u32 animContOffsets = detail::ConvertOffsToPtr<u32>(mpRes, mpRes->animContOffsetsOffset)[idx];

            const res::AnimationContent* pAnimCont = detail::ConvertOffsToPtr<res::AnimationContent>(mpRes, animContOffsets);

            const u32* animInfoOffsets = detail::ConvertOffsToPtr<u32>(pAnimCont, sizeof(*pAnimCont));

            for (int i = 0; i < pAnimCont->num; i++) {
                const res::AnimationInfo* pAnimInfo = detail::ConvertOffsToPtr<res::AnimationInfo>(pAnimCont, animInfoOffsets[i]);

                const u32* animTargetOffsets = detail::ConvertOffsToPtr<u32>(pAnimInfo, sizeof(*pAnimInfo));

                switch (pAnimInfo->kind) {
                    case res::AnimationInfo::ANIM_INFO_PANE_PAIN_SRT: {
                        AnimatePainSRT(pPane, pAnimInfo, animTargetOffsets, mFrame);
                        break;
                    }
                    case res::AnimationInfo::ANIM_INFO_PANE_VISIBILITY: {
                        AnimateVisibility(pPane, pAnimInfo, animTargetOffsets, mFrame);
                        break;
                    }
                    case res::AnimationInfo::ANIM_INFO_PANE_VERTEX_COLOR: {
                        AnimateVertexColor(pPane, pAnimInfo, animTargetOffsets, mFrame);
                        break;
                    }
                }
            }
        }

        void AnimTransformBasic::Animate(u32 idx, Material* pMaterial) {
            u32 animContOffsets = detail::ConvertOffsToPtr<u32>(mpRes, mpRes->animContOffsetsOffset)[idx];

            const res::AnimationContent* pAnimCont = detail::ConvertOffsToPtr<res::AnimationContent>(mpRes, animContOffsets);

            const u32* animInfoOffsets = detail::ConvertOffsToPtr<u32>(pAnimCont, sizeof(*pAnimCont));

            for (int i = 0; i < pAnimCont->num; i++) {
                const res::AnimationInfo* pAnimInfo = detail::ConvertOffsToPtr<res::AnimationInfo>(pAnimCont, animInfoOffsets[i]);

                const u32* animTargetOffsets = detail::ConvertOffsToPtr<u32>(pAnimInfo, sizeof(*pAnimInfo));

                switch (pAnimInfo->kind) {
                    case res::AnimationInfo::ANIM_INFO_MATERIAL_COLOR: {
                        AnimateMaterialColor(pMaterial, pAnimInfo, animTargetOffsets, mFrame);
                        break;
                    }
                    case res::AnimationInfo::ANIM_INFO_MATERIAL_TEXTURE_SRT: {
                        AnimateTextureSRT(pMaterial, pAnimInfo, animTargetOffsets, mFrame);
                        break;
                    }
                    case res::AnimationInfo::ANIM_INFO_MATERIAL_TEXTURE_PATTERN: {
                        if (mpFileResAry != NULL) {
                            AnimateTexturePattern(pMaterial, pAnimInfo, animTargetOffsets, mFrame, mpFileResAry);
                        }
                        break;
                    }
                    case res::AnimationInfo::ANIM_INFO_MATERIAL_IND_TEX_SRT: {
                        AnimateIndTexSRT(pMaterial, pAnimInfo, animTargetOffsets, mFrame);
                        break;
                    }
                }
            }
        }

        AnimationLink* detail::FindAnimationLink(AnimationLinkList* pAnimList, AnimTransform* pAnimTrans) {
            for (AnimationLinkList::Iterator it = pAnimList->GetBeginIter(); it != pAnimList->GetEndIter(); it++) {
                if (pAnimTrans == it->GetAnimTransform()) {
                    return &(*it);
                }
            }
            return NULL;
        }
    }
}
