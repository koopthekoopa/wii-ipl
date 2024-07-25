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
                    virtual ~PaneBase();                                                    // 0x04

                    ut::LinkListNode    mNode;  // 0x00
            };
        }

        class Pane : detail::PaneBase {
            public:
                Pane();
                virtual ~Pane();                                                            // 0x08

                virtual undefined4* GetRuntimeTypeInfo() const;                             // 0x0C

                virtual void CalculateMtx(const undefined4& drawInfo);                      // 0x10

                virtual void Draw(const undefined4& drawInfo);                              // 0x14
                virtual void DrawSelf(const undefined4& drawInfo);                          // 0x18

                virtual void Animate(u32 unk);                                              // 0x1C
                virtual void AnimateSelf(u32 unk);                                          // 0x20

                virtual ut::Color GetVtxColor(u32 index) const;                             // 0x24
                virtual void SetVtxColor(u32 index, ut::Color newColor);                    // 0x28
                virtual u8 GetVtxColorElement(u32 index) const;                             // 0x2C
                virtual void SetVtxColorElement(u32 index, u8 element);                     // 0x30

                virtual undefined GetColorElement(u32 index) const;                         // 0x34
                virtual void SetColorElement(u32 index, u8 color);                          // 0x38
                
                virtual Pane* FindPaneByName(const char* findName, bool bRecursive = true); // 0x3C
                
                

                const math::VEC3& GetTranslate() { return mTranslate; }
                void SetTranslate(const math::VEC3& translate) { mTranslate = translate; }
                void SetTranslate(const math::VEC2& translate) { SetTranslate(math::VEC3(translate.x, translate.y, 0)); }

                const math::VEC3& GetRotate() const { return mRotate; }
                void SetRotate(const math::VEC3& rotate) { mRotate = rotate; }

                const math::VEC2& GetScale() const { return mScale; }
                void SetScale(const math::VEC2& scale) { mScale = scale; }

                const Size& GetSize() const { return mSize; }
                void SetSize(const Size& size) { mSize = size; }

                void SetVisible(bool visible) { detail::SetBit(&mFlags, 0, visible); };
            public:
                Pane*                               mpParent;           // 0x0C
                ut::LinkList<detail::PaneBase, 0>   mChildList;         // 0x10
                ut::LinkList<AnimationLink, 0>      mAnimList;          // 0x1C

                Material*                           mpMaterial;         // 0x28

                math::VEC3                          mTranslate;         // 0x2C
                math::VEC3                          mRotate;            // 0x38
                math::VEC2                          mScale;             // 0x44
                Size                                mSize;              // 0x4C

                math::MTX34                         mMtx;               // 0x54
                math::MTX34                         mGlobalMtx;         // 0x84
                
                char                                mName[16];          // 0xB4
                char                                mUserData[8];       // 0xC4
                
                u8                                  mBasePosition;      // 0xCC
                u8                                  mAlpha;             // 0xCD
                u8                                  mGlbAlpha;          // 0xCE
                u8                                  mFlags;             // 0xCF
                bool                                mbUserAllocated;    // 0xD0
        };
    }
}

#endif // NW4R_LAYOUT_PANE_H


