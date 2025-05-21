#include "layout/iplLayout.h"

#include "iplUtility.h"

#include "iplSystem.h"

#include <revolution/sc.h>

namespace ipl {
    namespace layout {
        enum {
            FLAG_RECURSIVE = 0,
            FLAG_UNUSED,
        };

        Animator::Animator(nw4r::lyt::AnimTransform* animTrans, bool bRecursive, bool bUnused) :
        mAnimTrans(animTrans) {
            mFlags = 0;

            int anmType;
            f32 maxFrame;

            if (animTrans->IsLoopData()) {
                anmType = ANIM_TYPE_LOOP;
                maxFrame = animTrans->GetFrameSize();
            }
            else {
                anmType = ANIM_TYPE_FORWARD;
                maxFrame = animTrans->GetFrameSize() - 1.0f; // Last frame
            }

            utility::FrameController::init(anmType, maxFrame, 0.0f);

            if (bRecursive != FALSE) {
                mFlags |= (1<<FLAG_RECURSIVE);
            }
            if (bUnused != FALSE) {
                mFlags |= (1<<FLAG_UNUSED);
            }
        }

        void Animator::calc() {
            setFlag(mState != ANIM_STATE_STOP);
            utility::FrameController::calc();
            setFrame();
        }

        void Animator::setFlag(bool flag) {}

        void Animator::setFrame() {
            mAnimTrans->SetFrame(mFrame);
        }

        void Animator::initAnmFrame() {
            mState = ANIM_STATE_STOP_REQ;
            utility::FrameController::initFrame();
            setFrame();
        }

        void Animator::initAnmFrame(f32 frame) {
            mFrame = frame;
            mState = ANIM_STATE_STOP_REQ;
            setFrame();
        }

        PaneAnimator::PaneAnimator(nw4r::lyt::AnimTransform* animTrans, nw4r::lyt::Pane* pane, bool bRecursive, bool bUnused) :
        Animator(animTrans, bRecursive, bUnused),
        mPane(pane) {}

        void PaneAnimator::bind() {
            mPane->BindAnimation(mAnimTrans, mFlags & (1<<FLAG_RECURSIVE));
        }

        void PaneAnimator::setFlag(bool flag) {
            mPane->SetAnimationEnable(mAnimTrans, flag, mFlags & (1<<FLAG_RECURSIVE));
        }

        GroupAnimator::GroupAnimator(nw4r::lyt::AnimTransform* animTrans, nw4r::lyt::Group* group, bool bRecursive, bool bUnused) :
        Animator(animTrans, bRecursive, bUnused),
        mGroup(group) {}

        void GroupAnimator::bind() {
            // Bind all panes contained in the group
            nw4r::lyt::PaneLinkList& list = mGroup->GetPaneList();
            for (nw4r::lyt::PaneLinkList::Iterator it = list.GetBeginIter(); it != list.GetEndIter(); ++it) {
                it->mTarget->BindAnimation(mAnimTrans, mFlags & (1<<FLAG_RECURSIVE));
            }
        }

        void GroupAnimator::setFlag(bool flag) {
            // Enable Animation on all panes contained in the group
            nw4r::lyt::PaneLinkList& list = mGroup->GetPaneList();
            for (nw4r::lyt::PaneLinkList::Iterator it = list.GetBeginIter(); it != list.GetEndIter(); ++it) {
                it->mTarget->SetAnimationEnable(mAnimTrans, flag, mFlags & (1<<FLAG_RECURSIVE));
            }
        }

        Object::Object(EGG::Heap* heap, void* arcBuffer, const char* directory, const char* fileName) :
        mLayout(),
        mArc(),
        mWBF1PrivateLink(),
        mWBF2PrivateLink(),
        mWBF1PublicLink(),
        mWBF2PublicLink(),
        mpHeap(heap),
        mAllocator(heap, CLASS_HEAP),
        mDrawInfo(),
        mCurLink(),
        mArcLinks() {
            attach(arcBuffer, directory);
            init_(fileName);
        }

        Object::Object(EGG::Heap* heap, nand::LayoutFile* file, const char* directory, const char* fileName) :
        mLayout(),
        mArc(),
        mWBF1PrivateLink(),
        mWBF2PrivateLink(),
        mWBF1PublicLink(),
        mWBF2PublicLink(),
        mpHeap(heap),
        mAllocator(heap, CLASS_HEAP),
        mDrawInfo(),
        mCurLink(),
        mArcLinks() {
            u8* buffer;

            // Find layout from common
            if (file->getCmnFile() != NULL) {
                buffer = file->getCmnFile()->getBuffer();
            }
            else {
                buffer = NULL;
            }
            if (buffer != NULL) {
                attach(buffer, directory);
            }

            // Find layout from language
            if (file->getLangFile() != NULL) {
                buffer = file->getLangFile()->getBuffer();
            }
            else {
                buffer = NULL;
            }
            if (buffer != NULL) {
                attach(buffer, directory);
            }

            init_(fileName);
        }

        Object::~Object() {
            Animator* anim;
            while (anim = static_cast<Animator*>(nw4r::ut::List_GetFirst(&mAnims)), anim != NULL) {
                nw4r::ut::List_Remove(&mAnims, anim);
                delete anim;
            }

            nw4r::lyt::Layout::SetAllocator(&mAllocator);
        }

        void Object::init_(const char* fileName) {
            nw4r::ut::List_Init(&mAnims, offsetof(Animator, mLink));

            // Attach font data
            attach_font();

            // Setup memory allocator
            nw4r::lyt::Layout::SetAllocator(&mAllocator);

            // Create layout from file
            void* lytBuf = mArc.GetResource(0, fileName);
            mLayout.Build(lytBuf, &mArc);

            // Setup view
            utility::Graphics::calcOrthoCamera();

            mDrawInfo.SetViewMtx(utility::Graphics::getViewMtx());
            nw4r::ut::Rect lytRect = mLayout.GetLayoutRect();
            mDrawInfo.SetViewRect(lytRect);
            mDrawInfo.SetInvisiblePaneCalculateMtx(true);

            // Adjust location for widescreen
            initLocationAdjust();
        }

        PaneAnimator* Object::bind(const char* fileName, bool bUnused) {
            return bind_(fileName, mLayout.GetRootPane(), true, bUnused);
        }

        PaneAnimator* Object::bind(const char* fileName, const char* paneName, bool bRecursive, bool bUnused) {
            return bind_(fileName, mLayout.GetRootPane()->FindPaneByName(paneName), bRecursive, bUnused);
        }

        PaneAnimator* Object::bind_(const char* fileName, nw4r::lyt::Pane* pane, bool bRecursive, bool bUnused) {
            void* animBuf = mArc.GetResource(0, fileName);

            PaneAnimator* anim = new(mpHeap, CLASS_HEAP) PaneAnimator(mLayout.CreateAnimTransform(animBuf, &mArc),
                                                                      pane,
                                                                      bRecursive,
                                                                      bUnused);
        
            anim->bind();
            anim->setFlag(bUnused);

            nw4r::ut::List_Append(&mAnims, anim);

            return anim;
        }

        void Animator::bind() {}

        GroupAnimator* Object::bindToGroup(const char* fileName, const char* groupName, bool bRecursive, bool bUnused) {
            return bind_(fileName,
                    mLayout.GetGroupContainer()->FindGroupByName(groupName),
                    bRecursive,
                    bUnused);
        }

        GroupAnimator* Object::bindToGroup(const char* fileName, nw4r::lyt::Group* group, bool bRecursive, bool bUnused) {
            return bind_(fileName,
                        group,
                        bRecursive,
                        bUnused);
        }

        GroupAnimator* Object::bind_(const char* fileName, nw4r::lyt::Group* group, bool bRecursive, bool bUnused) {
            void* animBuf = mArc.GetResource(0, fileName);

            GroupAnimator* anim = new(mpHeap, CLASS_HEAP) GroupAnimator(mLayout.CreateAnimTransform(animBuf, &mArc),
                                                                        group,
                                                                        bRecursive,
                                                                        bUnused);
        
            anim->bind();
            anim->setFlag(bUnused);

            nw4r::ut::List_Append(&mAnims, anim);

            return anim;
        }

        void Object::finishBinding() {
            Animator* anim = NULL;
            while (anim = static_cast<Animator*>(nw4r::ut::List_GetNext(&mAnims, anim)), anim != NULL) {
                anim->initFrame();
                anim->setFrame();
            }

            mLayout.Animate();
            mLayout.CalculateMtx(mDrawInfo);
        }

        bool Object::searchFile(const char* fileName) {
            return mArc.GetResource(0, fileName) != NULL;
        }
        
        void Object::calc() {
            initLocationAdjust();

            Animator* anim = NULL;
            while (anim = static_cast<Animator*>(nw4r::ut::List_GetNext(&mAnims, anim)), anim != NULL) {
                anim->calc();
            }

            mLayout.Animate();
            mLayout.CalculateMtx(mDrawInfo);
        }

        static void draw_(nw4r::lyt::Pane* pane, nw4r::lyt::DrawInfo& drawInfo) {
            GXSetZCompLoc(GX_FALSE);
            GXSetZMode(GX_FALSE, GX_ALWAYS, GX_FALSE);
            GXSetCullMode(GX_CULL_NONE);

            pane->Draw(drawInfo);
        }

        void Object::draw() {
            draw_(mLayout.GetRootPane(), mDrawInfo);
        }

        void Object::draw(const char* paneName) {
            draw_(mLayout.GetRootPane()->FindPaneByName(paneName), mDrawInfo);
        }

        void Object::draw(nw4r::lyt::Pane* pane) {
            draw_(pane, mDrawInfo);
        }

        void Object::start(int animIdx) {
            Animator* anim;
            if (animIdx == -1) {
                anim = NULL;
                while (anim = static_cast<Animator*>(nw4r::ut::List_GetNext(&mAnims, anim)), anim != NULL) {
                    anim->initFrame();
                    anim->setState(ANIM_STATE_PLAY);
                }
            }
            else {
                anim = static_cast<Animator*>(nw4r::ut::List_GetNth(&mAnims, animIdx));
                anim->initFrame();
                anim->setState(ANIM_STATE_PLAY);
            }
        }

        void Object::setMaxFrame(float maxFrame, int animIdx) {
            Animator* anim;
            if (animIdx == -1) {
                anim = NULL;
                while (anim = static_cast<Animator*>(nw4r::ut::List_GetNext(&mAnims, anim)), anim != NULL) {
                    anim->setMaxFrame(maxFrame);
                }
            }
            else {
                anim = static_cast<Animator*>(nw4r::ut::List_GetNth(&mAnims, animIdx));
                anim->setMaxFrame(maxFrame);
            }
        }

        void Object::setMinFrame(float minFrame, int animIdx) {
            Animator* anim;
            if (animIdx == -1) {
                anim = NULL;
                while (anim = static_cast<Animator*>(nw4r::ut::List_GetNext(&mAnims, anim)), anim != NULL) {
                    anim->setMinFrame(minFrame);
                }
            }
            else {
                anim = static_cast<Animator*>(nw4r::ut::List_GetNth(&mAnims, animIdx));
                anim->setMinFrame(minFrame);
            }
        }

        void Object::setAnmType(int type, int animIdx) {
            Animator* anim;
            if (animIdx == -1) {
                anim = NULL;
                while (anim = static_cast<Animator*>(nw4r::ut::List_GetNext(&mAnims, anim)), anim != NULL) {
                    anim->setAnimType(type);
                }
            }
            else {
                anim = static_cast<Animator*>(nw4r::ut::List_GetNth(&mAnims, animIdx));
                anim->setAnimType(type);
            }
        }

        bool Object::isPlaying(int animIdx) const {
            bool result = false;

            Animator* anim;
            if (animIdx == -1) {
                anim = NULL;
                while (anim = static_cast<Animator*>(nw4r::ut::List_GetNext(&mAnims, anim)), anim != NULL) {
                    result |= anim->isPlaying();
                }
            }
            else {
                anim = static_cast<Animator*>(nw4r::ut::List_GetNth(&mAnims, animIdx));
                result = anim->isPlaying();
            }

            return result;
        }

        void Object::attach(void* arcBuffer, const char* directory) {
            // Set and attach the link
            mArcLinks[mCurLink].Set(arcBuffer, directory);
            mArc.Attach(&mArcLinks[mCurLink]);

            // Next one!
            mCurLink++;
        }

        void Object::attach_font() {
            if (System::isFontResLoaded()) {
                if (System::getFont() != NULL) {
                    attach(System::getFont(), "arc");
                }

                // Register "wbf1.brfna" (or it's original file name, "RevoIpl_RodinNTLGPro_DB_32_I4.brfnt")
                if (System::getWBFont1Data() != NULL) {
                    mWBF1PrivateLink.Set("RevoIpl_RodinNTLGPro_DB_32_I4.brfnt", System::getWBFont1Data());
                    mArc.RegistFont(&mWBF1PrivateLink);
                    mWBF1PublicLink.Set("wbf1.brfna", System::getWBFont1Data());
                    mArc.RegistFont(&mWBF1PublicLink);
                }

                // Register "wbf2.brfna" (or it's original file name, "RevoIpl_UtrilloProGrecoStd_M_32_I4.brfnt")
                if (System::getWBFont2Data() != NULL) {
                    mWBF2PrivateLink.Set("RevoIpl_UtrilloProGrecoStd_M_32_I4.brfnt", System::getWBFont2Data());
                    mArc.RegistFont(&mWBF2PrivateLink);
                    mWBF2PublicLink.Set("wbf2.brfna", System::getWBFont2Data());
                    mArc.RegistFont(&mWBF2PublicLink);
                }
            }
        }

        void Object::initLocationAdjust() {
            if (SCGetAspectRatio() == SC_ASPECT_RATIO_16x9) {
                nw4r::ut::Rect rect4x3;
                System::getProjectionRect4x3(&rect4x3);
                nw4r::ut::Rect rect16x9;
                System::getProjectionRect16x9(&rect16x9);

                // Adjust the scale of the root pane to stretch to widescreen
                nw4r::math::VEC2 rootScale(rect16x9.GetWidth() / rect4x3.GetWidth(), 1.0f);
                mLayout.GetRootPane()->SetScale(rootScale);

                // Set the scale adjustment for wide screen panes
                nw4r::math::VEC2 adjustScale(rect4x3.GetWidth() / rect16x9.GetWidth(), 1.0f);
                mDrawInfo.SetLocationAdjustScale(adjustScale);
                mDrawInfo.SetLocationAdjust(true);
            }
            else {
                // No adjustments here
                mLayout.GetRootPane()->SetScale(nw4r::math::VEC2(1.0f, 1.0f));

                mDrawInfo.SetLocationAdjustScale(nw4r::math::VEC2(1.0f, 1.0f));
                mDrawInfo.SetLocationAdjust(false);
            }
        }

        void Object::adjustHeap() {
            mpHeap->adjust();
        }

        void Object::destroyHeap() {
            mpHeap->destroy();
        }

        Object* Object::create(EGG::Heap* heap, u32 unk0, nand::LayoutFile* file, const char* directory, const char* fileName) {
            EGG::ExpHeap* expHeap = EGG::ExpHeap::create(unk0, heap, 2);
            return new(expHeap, CLASS_HEAP) Object(expHeap, file, directory, fileName);
        }

        Object* Object::create(EGG::Heap* heap, u32 unk0, void* buffer, const char* directory, const char* fileName) {
            EGG::ExpHeap* expHeap = EGG::ExpHeap::create(unk0, heap, 2);
            return new(expHeap, CLASS_HEAP) Object(expHeap, buffer, directory, fileName);
        }

        PaneAnimator::~PaneAnimator() {}
        GroupAnimator::~GroupAnimator() {}
    }
}
