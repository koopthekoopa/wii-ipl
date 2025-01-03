#ifndef NW4R_LYT_PANE_H
#define NW4R_LYT_PANE_H

#include <revolution/types.h>

#include <nw4r/math/types.h>

#include <nw4r/lyt/types.h>
#include <nw4r/lyt/animation.h>
#include <nw4r/lyt/material.h>

#include <nw4r/ut.h>

namespace nw4r {
    namespace lyt {
        class Pane;

        namespace detail {
            class PaneBase {
                public:
                    inline PaneBase() : mLink() {}
                    virtual ~PaneBase();

                    NW4R_CREATE_LINKLIST;
            };
        }

        class Pane : detail::PaneBase {
            NW4R_UT_RUNTIME_TYPEINFO;

            public:
                Pane();
                virtual ~Pane();                                                                                        // 0x08

                virtual void        CalculateMtx(const undefined4& drawInfo);                                           // 0x10

                virtual void        Draw(const undefined4& drawInfo);                                                   // 0x14
                virtual void        DrawSelf(const undefined4& drawInfo);                                               // 0x18

                virtual void        Animate(u32 option);                                                                // 0x1C
                virtual void        AnimateSelf(u32 option);                                                            // 0x20

                virtual ut::Color   GetVtxColor(u32 idx) const;                                                         // 0x24
                virtual void        SetVtxColor(u32 idx, ut::Color valuw);                                              // 0x28
                virtual u8          GetVtxColorElement(u32 idx) const;                                                  // 0x2C
                virtual void        SetVtxColorElement(u32 idx, u8 element);                                            // 0x30

                virtual undefined   GetColorElement(u32 idx) const;                                                     // 0x34
                virtual void        SetColorElement(u32 idx, u8 color);                                                 // 0x38
                
                virtual Pane*       FindPaneByName(const char* findName, bool bRecursive = true);                       // 0x3C
                virtual Pane*       FindMatertialByName(const char* findName, bool bRecursive = true);                  // 0x40

                virtual Pane*       BindAnimation(undefined4* pAnimTrans, bool bRecursive = true);                      // 0x44
                
                virtual void        UnbindAnimation(undefined4* pAnimTrans, bool bRecursive = true);                    // 0x48
                virtual void        UnbindAllAnimation(bool bRecursive = true);                                         // 0x4C
                virtual void        UnbindAnimationSelf(undefined4* pAnimTrans);                                        // 0x50
                
                virtual void        FindAnimationLink(undefined4* pAnimTrans);                                          // 0x54

                virtual void        SetAnimationEnable(undefined4* pAnimTrans, bool bEnable, bool bRecursive = true);   // 0x58

                virtual Material*   GetMaterial() const;                                                                // 0x5C

                virtual void*       LoadMtx(const undefined4& drawInfo);                                                // 0x60

                const math::VEC3&   GetTranslate()                              { return mTranslate; }
                void                SetTranslate(const math::VEC3& translate)   { mTranslate = translate; }
                void                SetTranslate(const math::VEC2& translate)   { SetTranslate(math::VEC3(translate.x, translate.y, 0)); }

                const math::VEC3&   GetRotate() const                           { return mRotate; }
                void                SetRotate(const math::VEC3& rotate)         { mRotate = rotate; }

                const math::VEC2&   GetScale() const                            { return mScale; }
                void                SetScale(const math::VEC2& scale)           { mScale = scale; }

                const Size&         GetSize() const                             { return mSize; }
                void                SetSize(const Size& size)                   { mSize = size; }

                void                SetVisible(bool visible)                    { detail::SetBit(&mFlags, 0, visible); };
            
            private:
                Pane*                           mpParent;                       // 0x0C

                NW4R_LINKLIST(detail::PaneBase) mChildList;                     // 0x10
                NW4R_LINKLIST(AnimationLink)    mAnimList;                      // 0x1C

                Material*                       mpMaterial;                     // 0x28

                math::VEC3                      mTranslate;                     // 0x2C
                math::VEC3                      mRotate;                        // 0x38
                math::VEC2                      mScale;                         // 0x44
                Size                            mSize;                          // 0x4C

                math::MTX34                     mMtx;                           // 0x54
                math::MTX34                     mGlobalMtx;                     // 0x84
                
                char                            mName[NW4R_RES_NAME_SIZE-1];    // 0xB4
                char                            mUserData[8];                   // 0xC4
                
                u8                              mBasePosition;                  // 0xCC
                u8                              mAlpha;                         // 0xCD
                u8                              mGlbAlpha;                      // 0xCE
                u8                              mFlags;                         // 0xCF
                bool                            mbUserAllocated;                // 0xD0
        };
    }
}

#endif // NW4R_LYT_PANE_H
