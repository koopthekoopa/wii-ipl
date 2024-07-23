#ifndef NW4R_LAYOUT_PANE_H
#define NW4R_LAYOUT_PANE_H

#include <revolution/types.h>
#include <nw4r/math/types.h>
#include <nw4r/lyt/types.h>
#include <nw4r/lyt/material.h>
#include <nw4r/ut/LinkList.h>
#include <stddef.h>

namespace nw4r {
    namespace lyt {
        class Pane;

        namespace detail {
            class PaneBase {
                public:
                    inline PaneBase() : mNode() {}
                    virtual ~PaneBase();

                    ut::LinkListNode    mNode;  // 0x00
            };
        }

        class Pane : detail::PaneBase {
            public:
                Pane();
                virtual ~Pane();

                virtual undefined4* GetRuntimeTypeInfo() const;

                virtual void CalculateMtx(const undefined4& drawInfo);

                virtual void Draw(const undefined4& drawInfo);
                virtual void DrawSelf(const undefined4& drawInfo);

                virtual void Animate(u32 unk);
                virtual void AnimateSelf(u32 unk);

                virtual ut::Color GetVtxColor(u32 index) const;
                virtual void SetVtxColor(u32 index, ut::Color newColor);
                virtual u8 GetVtxColorElement(u32 index) const;
                virtual void SetVtxColorElement(u32 index, u8 element);

                virtual undefined GetColorElement(u32 index) const;
                virtual void SetColorElement(u32 index, u8 value);

                const math::VEC3& GetTranslate() { return mTranslate; }
                void SetTranslate(const math::VEC2& translate);
                void SetTranslate(const math::VEC3& translate);

                const math::VEC2& GetScale() const { return mScale; }
                void SetScale(const math::VEC2& value) { mScale = value; }

                const Size& GetSize() const { return mSize; }
                void SetSize(const Size& value) { mSize = value; }

                void SetVisible(bool visible);

                virtual Pane* FindPaneByName(const char* findName, bool bRecursive = true);
            
            public:
                Pane*                               mpParent;       // 0x0C
                ut::LinkList<detail::PaneBase, 0>   mChildList;     // 0x10
                ut::LinkList<AnimationLink, 0>      mAnimList;      // 0x1C

                Material*                           mpMaterial;     // 0x28

                math::VEC3                          mTranslate;     // 0x2C
                math::VEC3                          mRotate;        // 0x38
                math::VEC2                          mScale;         // 0x44
                Size                                mSize;          // 0x4C

                math::MTX34                         mMtx;           // 0x54
                math::MTX34                         mGlobalMtx;     // 0x84
                
                char                                mName[16];      // 0xB4
                char                                mUserData[8];   // 0xC4
                
                u8                                  unk_0xCC;       // 0xCC
                u8                                  mAlpha;         // 0xCD
                u8                                  unk_0xCE;       // 0xCE
                u8                                  mFlags;         // 0xCF
                u8                                  unk_0xCF;       // 0xD0
        };
    }
}

#endif // NW4R_LAYOUT_PANE_H


