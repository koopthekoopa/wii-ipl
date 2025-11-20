#include <nw4r/lyt/pane.h>
#include <nw4r/lyt/layout.h>
#include <nw4r/lyt/common.h>

#include <nw4r/math.h>

#include <nw4r/db.h>

#include <cstring>

namespace {
    using namespace nw4r;

    void ReverseYAxis(math::MTX34* pMtx) {
        pMtx->m[0][1] = -pMtx->m[0][1];
        pMtx->m[1][1] = -pMtx->m[1][1];
        pMtx->m[2][1] = -pMtx->m[2][1];
    }
}

namespace nw4r {
    namespace lyt {
        NW4R_UT_GET_RUNTIME_TYPEINFO(Pane);

        Pane::Pane() {
            Init();

            mBasePosition = 4;

            memset(mName, 0, sizeof(mName));
            memset(mUserData, 0, sizeof(mUserData));

            mTranslate  = math::VEC3(0.0f, 0.0f, 0.0f);

            mRotate     = math::VEC3(0.0f, 0.0f, 0.0f);

            mScale      = math::VEC2(1.0f, 1.0f);
            mSize       = Size(0.0f, 0.0f);

            mAlpha      = ut::Color(255);
            mGlbAlpha   = mAlpha;

            mFlag = 0;

            SetVisible(true);
        }

        Pane::Pane(const res::Pane* pBlock) {
            Init();

            mBasePosition = pBlock->basePosition;

            SetName(pBlock->name);
            SetUserData(pBlock->userData);

            mTranslate  = pBlock->translate;

            mRotate     = pBlock->rotate;

            mScale      = pBlock->scale;
            mSize       = pBlock->size;

            mAlpha      = pBlock->alpha;
            mGlbAlpha   = mAlpha;

            mFlag       = pBlock->flag;
        }

        void Pane::Init() {
            mpParent = NULL;
            mpMaterial = NULL;
            mbUserAllocated = false;
        }

        Pane::~Pane() {
            for (PaneList::Iterator it = mChildList.GetBeginIter(); it != mChildList.GetEndIter();) {
                PaneList::Iterator currIt = it++;
                mChildList.Erase(currIt);

                if (!currIt->IsUserAllocated()) {
                    currIt->~Pane();
                    Layout::FreeMemory(&*currIt);
                }
            }

            UnbindAnimationSelf(NULL);

            if (mpMaterial != NULL && !mpMaterial->IsUserAllocated()) {
                mpMaterial->~Material();
                Layout::FreeMemory(mpMaterial);
            }
        }

        void Pane::SetName(const char* name) {
            strncpy(mName, name, sizeof(mName));
        }

        void Pane::SetUserData(const char* userData) {
            strncpy(mUserData, userData, sizeof(mUserData));
        }

        void Pane::AppendChild(Pane* pChild) {
            InsertChild(mChildList.GetEndIter(), pChild);
        }

        void Pane::PrependChild(Pane* pChild) {
            InsertChild(mChildList.GetBeginIter(), pChild);
        }

        void Pane::InsertChild(Pane* pNext, Pane* pChild) {
            InsertChild(mChildList.GetIteratorFromPointer(pNext), pChild);
        }

        void Pane::InsertChild(PaneList::Iterator next, Pane* pChild) {
            mChildList.Insert(next, pChild);
            pChild->mpParent = this;
        }

        void Pane::RemoveChild(Pane* pChild) {
            mChildList.Erase(pChild);
            pChild->mpParent = NULL;
        }

        const ut::Rect Pane::GetPaneRect(const DrawInfo& drawInfo) const {
            ut::Rect ret;
            math::VEC2 basePt = GetVtxPos();

            ret.left = basePt.x;
            ret.top = basePt.y;
            ret.right = ret.left + mSize.width;
            ret.bottom = ret.top + mSize.height;

            if (drawInfo.IsYAxisUp()) {
                ret.top = -ret.top;
                ret.bottom = -ret.bottom;
            }

            return ret;
        }

        ut::Color Pane::GetVtxColor(u32 idx) const {
            return ut::Color(ut::Color::WHITE);
        }

        void Pane::SetVtxColor(u32, ut::Color) {}

        u8 Pane::GetColorElement(u32 idx) const {
            NW4R_ASSERT(idx < ANIMTARGET_PANE_COLOR_MAX);
            switch (idx) {
                case ANIMTARGET_PANE_COLOR_ALPHA: {
                    return mAlpha;
                }
                default: {
                    return GetVtxColorElement(idx);
                }
            }
        }

        void Pane::SetColorElement(u32 idx, u8 value) {
            NW4R_ASSERT(idx < ANIMTARGET_PANE_COLOR_MAX);
            switch (idx) {
                case ANIMTARGET_PANE_COLOR_ALPHA: {
                    mAlpha = value;
                    break;
                } 
                default: {
                    SetVtxColorElement(idx, value);
                    break;
                }
            }
        }

        u8 Pane::GetVtxColorElement(u32 idx) const {
            return 255;
        }

        void Pane::SetVtxColorElement(u32 idx, u8 alpha) {}

        Pane* Pane::FindPaneByName(const char* findName, bool bRecursive) {
            if (detail::EqualsPaneName(mName, findName)) {
                return this;
            }

            if (bRecursive) {
                for (PaneList::Iterator it = mChildList.GetBeginIter(); it != mChildList.GetEndIter(); it++) {
                    if (Pane* pane = it->FindPaneByName(findName, true)) {
                        return pane;
                    }
                }
            }

            return NULL;
        }

        Material* Pane::FindMaterialByName(const char* findName, bool bRecursive) {
            if (mpMaterial != NULL && detail::EqualsMaterialName(mpMaterial->GetName(), findName)) {
                return mpMaterial;
            }

            if (bRecursive) {
                for (PaneList::Iterator it = mChildList.GetBeginIter(); it != mChildList.GetEndIter(); it++) {
                    if (Material* pMaterial = it->FindMaterialByName(findName, true)) {
                        return pMaterial;
                    }
                }
            }

            return NULL;
        }

        void Pane::CalculateMtx(const DrawInfo& drawInfo) {
            const f32 invAlpha = 1.0f / 255.0f;

            if (!IsVisible() && !drawInfo.IsInvisiblePaneCalculateMtx()) {
                return;
            }

            {
                math::MTX34 mtx1;
                math::MTX34 mtx2;
                math::MTX34 rotateMtx;

                {
                    math::VEC2 scale(mScale);

                    if (drawInfo.IsLocationAdjust() && IsLocationAdjust()) {
                        scale.x *= drawInfo.GetLocationAdjustScale().x;
                        scale.y *= drawInfo.GetLocationAdjustScale().y;
                    }

                    MTXScale(mtx2, scale.x, scale.y, 1.0f);
                }

                MTXRotRad(rotateMtx, 'x', MTXDegToRad(mRotate.x));
                MTXConcat(rotateMtx, mtx2, mtx1);

                MTXRotRad(rotateMtx, 'y', MTXDegToRad(mRotate.y));
                MTXConcat(rotateMtx, mtx1, mtx2);

                MTXRotRad(rotateMtx, 'z', MTXDegToRad(mRotate.z));
                MTXConcat(rotateMtx, mtx2, mtx1);

                MTXTransApply(mtx1, mMtx, mTranslate.x, mTranslate.y, mTranslate.z);
            }

            if (mpParent != NULL) {
                math::MTX34Mult(&mGlbMtx, &mpParent->mGlbMtx, &mMtx);
            }
            else if (drawInfo.IsMultipleViewMtxOnDraw()) {
                mGlbMtx = mMtx;
            }
            else {
                math::MTX34Mult(&mGlbMtx, &drawInfo.GetViewMtx(), &mMtx);
            }

            if (drawInfo.IsInfluencedAlpha() && mpParent != NULL) {
                mGlbAlpha = mAlpha * drawInfo.GetGlobalAlpha();
            }
            else {
                mGlbAlpha = mAlpha;
            }

            f32 crGlobalAlpha = drawInfo.GetGlobalAlpha();
            bool bCrInfluenced = drawInfo.IsInfluencedAlpha();

            bool bModDrawInfo = IsInfluencedAlpha() && mAlpha != 0xFF;

            if (bModDrawInfo) {
                DrawInfo& mtDrawInfo = const_cast<DrawInfo& >(drawInfo);

                mtDrawInfo.SetGlobalAlpha(crGlobalAlpha * mAlpha * invAlpha);
                mtDrawInfo.SetInfluencedAlpha(true);
            }

            CalculateMtxChild(drawInfo);

            if (bModDrawInfo) {
                DrawInfo& mtDrawInfo = const_cast<DrawInfo& >(drawInfo);

                mtDrawInfo.SetGlobalAlpha(crGlobalAlpha);
                mtDrawInfo.SetInfluencedAlpha(bCrInfluenced);
            }
        }

        void Pane::CalculateMtxChild(const DrawInfo& drawInfo) {
            for (PaneList::Iterator it = mChildList.GetBeginIter(); it != mChildList.GetEndIter(); it++) {
                it->CalculateMtx(drawInfo);
            }
        }

        void Pane::Draw(const DrawInfo& drawInfo) {
            if (IsVisible()) {
                DrawSelf(drawInfo);

                for (PaneList::Iterator it = mChildList.GetBeginIter(); it != mChildList.GetEndIter(); it++) {
                    it->Draw(drawInfo);
                }
            }
        }

        void Pane::DrawSelf(const DrawInfo& drawInfo) {}
        
        void Pane::Animate(u32 option) {
            AnimateSelf(option);
        
            if (IsVisible() || !(option & ANIMOPTION_SKIP_INVISIBLE)) {
                for (PaneList::Iterator it = mChildList.GetBeginIter(); it != mChildList.GetEndIter(); it++) {
                    it->Animate(option);
                }
            }
        }
        
        void Pane::AnimateSelf(u32 option) {
            for (AnimationLinkList::Iterator it = mAnimList.GetBeginIter(); it != mAnimList.GetEndIter(); it++) {
                if (it->IsEnable()) {
                    AnimTransform *animTrans = it->GetAnimTransform();
    
                    animTrans->Animate(it->GetIndex(), this);
                }
            }
        
            if ((IsVisible() || !(option & ANIMOPTION_SKIP_INVISIBLE)) && mpMaterial != NULL) {
                mpMaterial->Animate();
            }
        }

        void Pane::BindAnimation(AnimTransform *animTrans, bool bRecursive) {
            animTrans->Bind(this, bRecursive);
        }

        void Pane::UnbindAnimation(AnimTransform *animTrans, bool bRecursive) {
            UnbindAnimationSelf(animTrans);

            if (bRecursive) {
                for (PaneList::Iterator it = mChildList.GetBeginIter(); it != mChildList.GetEndIter(); it++) {
                    it->UnbindAnimation(animTrans, bRecursive);
                }
            }
        }

        void Pane::UnbindAllAnimation(bool bRecursive) {
            UnbindAnimation(NULL, bRecursive);
        }

        void Pane::UnbindAnimationSelf(AnimTransform *animTrans) {
            if (mpMaterial != NULL) {
                mpMaterial->UnbindAnimation(animTrans);
            }

            for (AnimationLinkList::Iterator it = mAnimList.GetBeginIter(); it != mAnimList.GetEndIter();) {
                AnimationLinkList::Iterator currIt = it++;

                if (animTrans == NULL || currIt->GetAnimTransform() == animTrans) {
                    mAnimList.Erase(currIt);
                    currIt->Reset();
                }
            }
        }

        void Pane::AddAnimationLink(AnimationLink *animationLink) {
            mAnimList.PushBack(animationLink);
        }

        AnimationLink *Pane::FindAnimationLink(AnimTransform *animTrans) {
            if (AnimationLink *ret = detail::FindAnimationLink(&mAnimList, animTrans)) {
                return ret;
            }

            if (mpMaterial != NULL) {
                if (AnimationLink *ret = mpMaterial->FindAnimationLink(animTrans)) {
                    return ret;
                }
            }

            return NULL;
        }

        void Pane::SetAnimationEnable(AnimTransform *animTrans, bool bEnable, bool bRecursive) {
            if (AnimationLink *animLink = detail::FindAnimationLink(&mAnimList, animTrans)) {
                animLink->SetEnable(bEnable);
            }

            if (mpMaterial != NULL) {
                mpMaterial->SetAnimationEnable(animTrans, bEnable);
            }

            if (bRecursive) {
                for (PaneList::Iterator it = mChildList.GetBeginIter(); it != mChildList.GetEndIter(); it++) {
                    it->SetAnimationEnable(animTrans, bEnable, bRecursive);
                }
            }
        }

        void Pane::LoadMtx(const DrawInfo& drawInfo) {
            math::MTX34 mtx;
            MtxPtr mtxPtr = NULL;

            if (drawInfo.IsMultipleViewMtxOnDraw()) {
                math::MTX34Mult(&mtx, &drawInfo.GetViewMtx(), &mGlbMtx);

                if (drawInfo.IsYAxisUp()) {
                    ReverseYAxis(&mtx);
                }

                mtxPtr = mtx;
            }
            else if (drawInfo.IsYAxisUp()) {
                math::MTX34Copy(&mtx, &mGlbMtx);
                ReverseYAxis(&mtx);
                mtxPtr = mtx;
            }
            else {
                mtxPtr = mGlbMtx;
            }

            GXLoadPosMtxImm(mtxPtr, 0);
            GXSetCurrentMtx(0);
        }

        math::VEC2 Pane::GetVtxPos() const {
            math::VEC2 basePt(0.0f, 0.0f);

            switch (mBasePosition % HORIZONTALPOSITION_MAX) {
                default:
                case HORIZONTALPOSITION_LEFT: {
                    basePt.x = 0.0f;
                    break;
                }
                case HORIZONTALPOSITION_CENTER: {
                    basePt.x = -mSize.width / 2.0f;
                    break;
                }
                case HORIZONTALPOSITION_RIGHT: {
                    basePt.x = -mSize.width;
                    break;
                }
            }

            switch (mBasePosition / VERTICALPOSITION_MAX) {
                default:
                case VERTICALPOSITION_TOP: {
                    basePt.y = 0.0f;
                    break;
                }
                case VERTICALPOSITION_CENTER: {
                    basePt.y = -mSize.height / 2.0f;
                    break;
                }
                case VERTICALPOSITION_BOTTOM: {
                    basePt.y = -mSize.height;
                    break;
                }
            }

            return basePt;
        }

        Material *Pane::GetMaterial() const {
            return mpMaterial;
        }
    }
}
