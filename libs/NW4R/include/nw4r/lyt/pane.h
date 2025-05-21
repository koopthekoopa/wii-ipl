#ifndef NW4R_LYT_PANE_H
#define NW4R_LYT_PANE_H

#include <revolution/types.h>

#include <nw4r/ut.h>

#include <nw4r/db.h>

#include <nw4r/math/types.h>

#include <nw4r/lyt/types.h>
#include <nw4r/lyt/drawInfo.h>
#include <nw4r/lyt/animation.h>
#include <nw4r/lyt/material.h>

namespace nw4r {
    namespace lyt {
        class Pane;

        namespace detail {
            class PaneBase {
                public:
                    inline PaneBase() : mLink() {}
                    virtual ~PaneBase() {}

                    ut::LinkListNode mLink;
            };
        }
        typedef ut::LinkList<Pane, 4 /*mLink*/> PaneList;

        enum {
            ANIMOPTION_SKIP_INVISIBLE = (1 << 0),
        };

        class Pane : detail::PaneBase {
            private:
                enum {
                    BIT_VISIBLE = 0,
                    BIT_INFLUENCED_ALPHA,
                    BIT_LOCATION_ADJUST
                };
            public:
                Pane();
                Pane(const res::Pane* pBlock);
                virtual ~Pane();                                                                                                // 0x08
                
                NW4R_UT_RUNTIME_TYPEINFO;

                virtual void            CalculateMtx(const DrawInfo& drawInfo);                                                 // 0x10

                virtual void            Draw(const DrawInfo& drawInfo);                                                         // 0x14
                virtual void            DrawSelf(const DrawInfo& drawInfo);                                                     // 0x18

                virtual void            Animate(u32 option = 0);                                                                // 0x1C
                virtual void            AnimateSelf(u32 option = 0);                                                            // 0x20

                virtual ut::Color       GetVtxColor(u32 idx) const;                                                             // 0x24
                virtual void            SetVtxColor(u32 idx, ut::Color valuw);                                                  // 0x28

                virtual u8              GetColorElement(u32 idx) const;                                                         // 0x2c
                virtual void            SetColorElement(u32 idx, u8 color);                                                     // 0x30

                virtual u8              GetVtxColorElement(u32 idx) const;                                                      // 0x34
                virtual void            SetVtxColorElement(u32 idx, u8 element);                                                // 0x38
                
                virtual Pane*           FindPaneByName(const char* findName, bool bRecursive = true);                           // 0x3C
                virtual Material*       FindMaterialByName(const char* findName, bool bRecursive = true);                       // 0x40

                virtual void            BindAnimation(AnimTransform* pAnimTrans, bool bRecursive = true);                       // 0x44
                
                virtual void            UnbindAnimation(AnimTransform* pAnimTrans, bool bRecursive = true);                     // 0x48
                virtual void            UnbindAllAnimation(bool bRecursive = true);                                             // 0x4C
                virtual void            UnbindAnimationSelf(AnimTransform* pAnimTrans);                                         // 0x50
                
                virtual AnimationLink*  FindAnimationLink(AnimTransform* pAnimTrans);                                           // 0x54

                virtual void            SetAnimationEnable(AnimTransform* pAnimTrans, bool bEnable, bool bRecursive = true);    // 0x58

                virtual Material*       GetMaterial() const;                                                                    // 0x5C

                virtual void            LoadMtx(const DrawInfo& drawInfo);                                                      // 0x60

                Pane*                   GetParent() const                           { return mpParent; }
                PaneList&               GetChildList()                              { return mChildList; }

                const math::VEC3&       GetTranslate()                              { return mTranslate; }
                void                    SetTranslate(const math::VEC3& translate)   { mTranslate = translate; }
                void                    SetTranslate(const math::VEC2& translate)   { SetTranslate(math::VEC3(translate.x, translate.y, 0.0f)); }

                const math::VEC3&       GetRotate() const                           { return mRotate; }
                void                    SetRotate(const math::VEC3& rotate)         { mRotate = rotate; }

                const math::VEC2&       GetScale() const                            { return mScale; }
                void                    SetScale(const math::VEC2& scale)           { mScale = scale; }

                const Size&             GetSize() const                             { return mSize; }
                void                    SetSize(const Size& size)                   { mSize = size; }

                bool                    IsVisible()                                 { return detail::TestBit(mFlag, BIT_VISIBLE); };
                void                    SetVisible(bool visible)                    { detail::SetBit(&mFlag, BIT_VISIBLE, visible); };

                bool                    IsInfluencedAlpha()                         { return detail::TestBit(mFlag, BIT_INFLUENCED_ALPHA); };
                void                    SetInfluencedAlpha(bool visible)            { detail::SetBit(&mFlag, BIT_INFLUENCED_ALPHA, visible); };

                bool                    IsLocationAdjust()                          { return detail::TestBit(mFlag, BIT_LOCATION_ADJUST); };
                void                    SetLocationAdjust(bool visible)             { detail::SetBit(&mFlag, BIT_LOCATION_ADJUST, visible); };

                const math::MTX34&      GetGlobalMtx() const                        { return mGlbMtx; }
                void                    SetGlobalMtx(const math::MTX34& mtx)        { mGlbMtx = mtx; }

                u8                      GetAlpha()                                  { return mAlpha; }
                void                    SetAlpha(u8 alpha)                          { mAlpha = alpha; }

                const char*             GetName() const                             { return mName; }

                void                    SetSRTElement(u32 idx, f32 value)           { NW4R_ASSERT(idx < ANIMTARGET_PANE_MAX); reinterpret_cast<f32*>(&mTranslate)[idx] = value; }

                bool                    IsUserAllocated() const                     { return mbUserAllocated; }

                const ut::Rect          GetPaneRect(const DrawInfo& drawInfo) const;
                
                math::VEC2              GetVtxPos() const;

                void                    SetName(const char* name);
                void                    SetUserData(const char* userData);

                void                    Init();

                void                    InsertChild(PaneList::Iterator next, Pane* pChild);
                void                    InsertChild(Pane* pNext, Pane* pChild);

                void                    PrependChild(Pane* pChild);
                void                    AppendChild(Pane* pChild);

                void                    RemoveChild(Pane* pChild);

                void                    CalculateMtxChild(const DrawInfo& drawInfo);

                void                    AddAnimationLink(AnimationLink* pAnimationLink);
            
            protected:
                Pane*                           mpParent;           // 0x0C

                PaneList                        mChildList;         // 0x10
                AnimationLinkList               mAnimList;          // 0x1C

                Material*                       mpMaterial;         // 0x28

                math::VEC3                      mTranslate;         // 0x2C
                math::VEC3                      mRotate;            // 0x38
                math::VEC2                      mScale;             // 0x44
                Size                            mSize;              // 0x4C

                math::MTX34                     mMtx;               // 0x54
                math::MTX34                     mGlbMtx;            // 0x84
                
                char                            mName[16];          // 0xB4
                char                            mUserData[8];       // 0xC4
                
                u8                              mBasePosition;      // 0xCC
                u8                              mAlpha;             // 0xCD
                u8                              mGlbAlpha;          // 0xCE
                u8                              mFlag;              // 0xCF
                bool                            mbUserAllocated;    // 0xD0
        };
    }
}

#endif // NW4R_LYT_PANE_H
