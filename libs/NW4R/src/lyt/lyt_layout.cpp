#include <nw4r/lyt/layout.h>

#include <nw4r/lyt/common.h>

#include <nw4r/lyt/pane.h>
#include <nw4r/lyt/bounding.h>
#include <nw4r/lyt/picture.h>
#include <nw4r/lyt/textbox.h>
#include <nw4r/lyt/window.h>

#include <nw4r/lyt/group.h>

#include <new>

namespace {
    using namespace nw4r;
    using namespace nw4r::lyt;

    template<class T> T* CreateObject() {
        void* pMem = Layout::AllocMemory(sizeof(T));

        if (pMem != NULL) {
            return new(pMem) T();
        }
        else {
            return NULL;
        }
    }

    template<class T, typename Param1> T* CreateObject(Param1 p1) {
        void* pMem = Layout::AllocMemory(sizeof(T));

        if (pMem) {
            return new(pMem) T(p1);
        }
        else {
            return NULL;
        }
    }

    template<class T, typename Param1, typename Param2> T* CreateObject(Param1 p1, Param2 p2) {
        void* pMem = Layout::AllocMemory(sizeof(T));

        if (pMem) {
            return new(pMem) T(p1, p2);
        }
        else {
            return NULL;
        }
    }

    void SetTagProcessorImpl(Pane* pPane, ut::WideTagProcessor* pTagProcessor) {
        TextBox* pTextBox = ut::DynamicCast<TextBox*>(pPane);
        if (pTextBox != NULL) {
            pTextBox->SetTagProcessor(pTagProcessor);
        }
        for (PaneList::Iterator it = pPane->GetChildList().GetBeginIter(); it != pPane->GetChildList().GetEndIter(); it++) {
            SetTagProcessorImpl(&(*it), pTagProcessor);
        }
    }
}

namespace nw4r {
    namespace lyt {
        MEMAllocator*   Layout::mspAllocator;

        Layout::Layout():
        mpRootPane(NULL),
        mpGroupContainer(NULL),
        mLayoutSize(0.0f, 0.0f),
        mOriginType(ORIGINTYPE_TOPLEFT) {}

        Layout::~Layout() {
            if (mpGroupContainer != NULL) {
                mpGroupContainer->~GroupContainer();
                FreeMemory(mpGroupContainer);
            }

            if (mpRootPane != NULL && !mpRootPane->IsUserAllocated()) {
                mpRootPane->~Pane();
                FreeMemory(mpRootPane);
            }

            for (AnimTransformList::Iterator it = mAnimTransList.GetBeginIter(); it != mAnimTransList.GetEndIter();) {
                AnimTransformList::Iterator currIt = it++;

                mAnimTransList.Erase(currIt);
                currIt->~AnimTransform();
                FreeMemory(&*currIt);
            }
        }

        bool Layout::Build(const void* lytResBuf, ResourceAccessor* pResAcsr) {
            const res::BinaryFileHeader* fileHead = static_cast<const res::BinaryFileHeader*>(lytResBuf);

            if (!detail::TestFileHeader(*fileHead, res::FILE_HEADER_SIGNATURE_LAYOUT)) {
                return false;
            }

            ResBlockSet resBlockSet = {};
            resBlockSet.pResAccessor = pResAcsr;

            Pane* pParentPane = NULL;
            Pane* pLastPane = NULL;

            bool bReadRootGroup = false;
            int  groupNestLevel = 0;

            void* dataPtr = reinterpret_cast<void*>(reinterpret_cast<u32>(lytResBuf) + fileHead->headerSize);

            for (int i = 0; i < fileHead->dataBlocks; i++) {
                res::DataBlockHeader* pDataBlockHead = static_cast<res::DataBlockHeader*>(dataPtr);

                switch (detail::GetSignatureInt(pDataBlockHead->kind)) {
                    /* Layout meta data */

                    // Layout
                    case res::OBJECT_SIGNATURE_LAYOUT: {
                        res::Layout* pResLyt = static_cast<res::Layout*>(dataPtr);
                        mOriginType = pResLyt->originType != ORIGINTYPE_TOPLEFT; // Interesting way of doing it.
                        mLayoutSize = pResLyt->layoutSize;
                        break;
                    }
                    // Texture list entry
                    case res::OBJECT_SIGNATURE_TEXTURE_LIST: {
                        resBlockSet.pTextureList = static_cast<res::TextureList*>(dataPtr);
                        break;
                    }
                    // Font list entry
                    case res::OBJECT_SIGNATURE_FONT_LIST: {
                        resBlockSet.pFontList = static_cast<res::FontList*>(dataPtr);
                        break;
                    }
                    // Material entry
                    case res::OBJECT_SIGNATURE_MATERIAL_LIST: {
                        resBlockSet.pMaterialList = static_cast<res::MaterialList*>(dataPtr);
                        break;
                    }

                    /* Pane data */

                    // Pane entry
                    case res::OBJECT_SIGNATURE_PANE:
                    case res::OBJECT_SIGNATURE_BOUNDING:
                    case res::OBJECT_SIGNATURE_PICTURE:
                    case res::OBJECT_SIGNATURE_TEXT_BOX:
                    case res::OBJECT_SIGNATURE_WINDOW: {
                        Pane* pPane = BuildPaneObj(detail::GetSignatureInt(pDataBlockHead->kind), dataPtr, resBlockSet);
                        if (pPane != NULL) {
                            if (mpRootPane == NULL) {
                                mpRootPane = pPane;
                            }
                            if (pParentPane != NULL) {
                                pParentPane->AppendChild(pPane);
                            }

                            pLastPane = pPane;
                        }
                        break;
                    }
                    // Start of child pane
                    case res::OBJECT_SIGNATURE_PANE_CHILD_START: {
                        pParentPane = pLastPane;
                        break;
                    }
                    // End of child pane
                    case res::OBJECT_SIGNATURE_PANE_CHILD_END: {
                        pLastPane = pParentPane;
                        pParentPane = pLastPane->GetParent();
                        break;
                    }

                    /* Group data */

                    // Group entry
                    case res::OBJECT_SIGNATURE_GROUP: {
                        if (!bReadRootGroup) {
                            bReadRootGroup = true;
                            mpGroupContainer = CreateObject<GroupContainer>();
                        }
                        else if (mpGroupContainer && groupNestLevel == 1) {
                            Group* pGroup = CreateObject<Group>(reinterpret_cast<const res::Group*>(pDataBlockHead), mpRootPane);
                            if (pGroup != NULL) {
                                mpGroupContainer->AppendGroup(pGroup);
                            }
                        }
                        break;
                    }
                    // Start of child group (only used for RootGroup)
                    case res::OBJECT_SIGNATURE_GROUP_CHILD_START: {
                        groupNestLevel++;
                        break;
                    }
                    // End of child group (only used for RootGroup)
                    case res::OBJECT_SIGNATURE_GROUP_CHILD_END: {
                        groupNestLevel--;
                        break;
                    }
                }

                dataPtr = reinterpret_cast<void*>(reinterpret_cast<u32>(dataPtr) + pDataBlockHead->size);
            }

            return true;
        }

        AnimTransform* Layout::CreateAnimTransform(const void* anmResBuf, ResourceAccessor* pResAcsr) {
            const res::BinaryFileHeader* pFileHead = static_cast<const res::BinaryFileHeader*>(anmResBuf);

            if (!detail::TestFileHeader(*pFileHead)) {
                return NULL;
            }

            const res::AnimationBlock* pInfoBlock = NULL;
            const res::DataBlockHeader* pDataBlockHead = detail::ConvertOffsToPtr<res::DataBlockHeader>(pFileHead,
                                                                                                        pFileHead->headerSize);

            AnimTransform* ret = NULL;

            for (int i = 0; i < pFileHead->dataBlocks; i++) {
                switch (detail::GetSignatureInt(pDataBlockHead->kind)) {
                    case res::OBJECT_SIGNATURE_PANE_ANIM: {
                        switch (detail::GetSignatureInt(pFileHead->signature)) {
                            case res::FILE_HEADER_SIGNATURE_ANIMATION:
                            case res::AnimationInfo::ANIM_INFO_PANE_PAIN_SRT:
                            case res::AnimationInfo::ANIM_INFO_PANE_VISIBILITY:
                            case res::AnimationInfo::ANIM_INFO_PANE_VERTEX_COLOR:
                            case res::AnimationInfo::ANIM_INFO_MATERIAL_COLOR:
                            case res::AnimationInfo::ANIM_INFO_MATERIAL_TEXTURE_SRT:
                            case res::AnimationInfo::ANIM_INFO_MATERIAL_TEXTURE_PATTERN: {
                                AnimTransformBasic* pAnimTrans = CreateObject<AnimTransformBasic>();
                                if (pAnimTrans != NULL) {
                                    pInfoBlock = reinterpret_cast<const res::AnimationBlock*>(pDataBlockHead);

                                    pAnimTrans->SetResource(pInfoBlock, pResAcsr);
                                    ret = pAnimTrans;
                                }
                            }
                        }

                        if (ret) {
                            mAnimTransList.PushBack(ret);
                        }
                    }
                }

                pDataBlockHead = detail::ConvertOffsToPtr<res::DataBlockHeader>(pDataBlockHead,
                                                                                pDataBlockHead->size);
            }

            return ret;
        }

        void Layout::BindAnimation(AnimTransform* pAnimTrans) {
            if (mpRootPane != NULL) {
                mpRootPane->BindAnimation(pAnimTrans, true);
            }
        }

        void Layout::UnbindAnimation(AnimTransform* pAnimTrans) {
            if (mpRootPane != NULL) {
                mpRootPane->UnbindAnimation(pAnimTrans, true);
            }
        }

        void Layout::UnbindAllAnimation() {
            UnbindAnimation(NULL);
        }

        void Layout::SetAnimationEnable(AnimTransform* pAnimTrans, bool bEnable) {
            if (mpRootPane != NULL) {
                mpRootPane->SetAnimationEnable(pAnimTrans, bEnable, true);
            }
        }

        void Layout::CalculateMtx(const DrawInfo& drawInfo) {
            if (mpRootPane != NULL) {
                mpRootPane->CalculateMtx(drawInfo);
            }
        }

        void Layout::Draw(const DrawInfo& drawInfo) {
            if (mpRootPane != NULL) {
                mpRootPane->Draw(drawInfo);
            }
        }

        void Layout::Animate(u32 option) {
            if (mpRootPane != NULL) {
                mpRootPane->Animate(option);
            }
        }

        const ut::Rect Layout::GetLayoutRect() const {
            if (mOriginType == ORIGINTYPE_CENTER) {
                return ut::Rect(-mLayoutSize.width / 2.0f,  mLayoutSize.height / 2.0f,
                                 mLayoutSize.width / 2.0f, -mLayoutSize.height / 2.0f);
            }
            else {
                return ut::Rect(0.0f, 0.0f, mLayoutSize.width, mLayoutSize.height);
            }
        }

        void Layout::SetTagProcessor(ut::WideTagProcessor* pTagProcessor) {
            SetTagProcessorImpl(mpRootPane, pTagProcessor);
        }

        Pane* Layout::BuildPaneObj(s32 kind, const void* dataPtr, const ResBlockSet& resBlockSet) {
            switch (kind) {
                case res::OBJECT_SIGNATURE_PANE: {
                    const res::Pane* pResPane = static_cast<const res::Pane*>(dataPtr);
                    return CreateObject<Pane>(pResPane);
                }
                case res::OBJECT_SIGNATURE_PICTURE: {
                    const res::Picture* pResPic = static_cast<const res::Picture*>(dataPtr);
                    return CreateObject<Picture>(pResPic, resBlockSet);
                }
                case res::OBJECT_SIGNATURE_TEXT_BOX: {
                    const res::TextBox* pBlock = static_cast<const res::TextBox*>(dataPtr);
                    return CreateObject<TextBox>(pBlock, resBlockSet);
                }
                case res::OBJECT_SIGNATURE_WINDOW: {
                    const res::Window* pBlock = static_cast<const res::Window*>(dataPtr);
                    return CreateObject<Window>(pBlock, resBlockSet);
                }
                case res::OBJECT_SIGNATURE_BOUNDING: {
                    const res::Bounding* pResBounding = static_cast<const res::Bounding*>(dataPtr);
                    return CreateObject<Bounding>(pResBounding, resBlockSet);
                }
                default: {
                    return NULL;
                }
            }
        }
    }
}
