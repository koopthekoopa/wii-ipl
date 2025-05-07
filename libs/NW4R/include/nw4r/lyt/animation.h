#ifndef NW4R_LYT_ANIMATION_H
#define NW4R_LYT_ANIMATION_H

#include <nw4r/lyt/resourceAccessor.h>
#include <nw4r/lyt/types.h>
#include <nw4r/lyt/resources.h>

#include <nw4r/ut.h>

namespace nw4r {
    namespace lyt {
        class Pane;
        class Material;

        enum {
            ANIMTARGET_PANE_TRANSX,
            ANIMTARGET_PANE_TRANSY,
            ANIMTARGET_PANE_TRANSZ,
        
            ANIMTARGET_PANE_ROTX,
            ANIMTARGET_PANE_ROTY,
            ANIMTARGET_PANE_ROTZ,
        
            ANIMTARGET_PANE_SCALEX,
            ANIMTARGET_PANE_SCALEY,
        
            ANIMTARGET_PANE_SIZEX,
            ANIMTARGET_PANE_SIZEY,
        
            ANIMTARGET_PANE_MAX,
        
            ANIMTARGET_PANE_COLOR_ALPHA = 16,
            ANIMTARGET_PANE_COLOR_MAX,
        };

        enum {
            ANIMTARGET_VERTEXCOLOR_LT_RED,
            ANIMTARGET_VERTEXCOLOR_LT_GREEN,
            ANIMTARGET_VERTEXCOLOR_LT_BLUE,
            ANIMTARGET_VERTEXCOLOR_LT_ALPHA,
        
            ANIMTARGET_VERTEXCOLOR_RT_RED,
            ANIMTARGET_VERTEXCOLOR_RT_GREEN,
            ANIMTARGET_VERTEXCOLOR_RT_BLUE,
            ANIMTARGET_VERTEXCOLOR_RT_ALPHA,
        
            ANIMTARGET_VERTEXCOLOR_LB_RED,
            ANIMTARGET_VERTEXCOLOR_LB_GREEN,
            ANIMTARGET_VERTEXCOLOR_LB_BLUE,
            ANIMTARGET_VERTEXCOLOR_LB_ALPHA,
        
            ANIMTARGET_VERTEXCOLOR_RB_RED,
            ANIMTARGET_VERTEXCOLOR_RB_GREEN,
            ANIMTARGET_VERTEXCOLOR_RB_BLUE,
            ANIMTARGET_VERTEXCOLOR_RB_ALPHA,
        
            ANIMTARGET_VERTEXCOLOR_MAX
        };

        enum {
            ANIMTARGET_MATCOLOR_MATR,
            ANIMTARGET_MATCOLOR_MATG,
            ANIMTARGET_MATCOLOR_MATB,
            ANIMTARGET_MATCOLOR_MATA,
        
            ANIMTARGET_MATCOLOR_TEV0R,
            ANIMTARGET_MATCOLOR_TEV0G,
            ANIMTARGET_MATCOLOR_TEV0B,
            ANIMTARGET_MATCOLOR_TEV0A,
        
            ANIMTARGET_MATCOLOR_TEV1R,
            ANIMTARGET_MATCOLOR_TEV1G,
            ANIMTARGET_MATCOLOR_TEV1B,
            ANIMTARGET_MATCOLOR_TEV1A,
        
            ANIMTARGET_MATCOLOR_TEV2R,
            ANIMTARGET_MATCOLOR_TEV2G,
            ANIMTARGET_MATCOLOR_TEV2B,
            ANIMTARGET_MATCOLOR_TEV2A,
        
            ANIMTARGET_MATCOLOR_TEVK0R,
            ANIMTARGET_MATCOLOR_TEVK0G,
            ANIMTARGET_MATCOLOR_TEVK0B,
            ANIMTARGET_MATCOLOR_TEVK0A,
        
            ANIMTARGET_MATCOLOR_TEVK1R,
            ANIMTARGET_MATCOLOR_TEVK1G,
            ANIMTARGET_MATCOLOR_TEVK1B,
            ANIMTARGET_MATCOLOR_TEVK1A,
        
            ANIMTARGET_MATCOLOR_TEVK2R,
            ANIMTARGET_MATCOLOR_TEVK2G,
            ANIMTARGET_MATCOLOR_TEVK2B,
            ANIMTARGET_MATCOLOR_TEVK2A,
        
            ANIMTARGET_MATCOLOR_TEVK3R,
            ANIMTARGET_MATCOLOR_TEVK3G,
            ANIMTARGET_MATCOLOR_TEVK3B,
            ANIMTARGET_MATCOLOR_TEVK3A,
        
            ANIMTARGET_MATCOLOR_MAX
        };

        enum {
            ANIMTARGET_TEXSRT_TRANSX,
            ANIMTARGET_TEXSRT_TRANSY,
        
            ANIMTARGET_TEXSRT_ROT,
        
            ANIMTARGET_TEXSRT_SCALEX,
            ANIMTARGET_TEXSRT_SCALEY,
        
            ANIMTARGET_TEXSRT_MAX
        };

        enum {
            ANIMTARGET_TEXPATTURN_IMAGE,
        
            ANIMTARGET_TEXPATTURN_MAX
        };

        enum {
            ANIMCURVE_NONE = 0,
            ANIMCURVE_STEP,
            ANIMCURVE_HERMITE,
    
            ANIMCURVE_MAX
        };

        class AnimTransform {
            public:
                AnimTransform();
                virtual ~AnimTransform();

                virtual void    SetResource(const res::AnimationBlock* pRes, ResourceAccessor* pResAccessor);

                virtual void    Bind(Pane* pPane, bool bRecursive);
                virtual void    Bind(Material* pMaterial);

                virtual void    Animate(u32 idx, Pane* pPane);
                virtual void    Animate(u32 idx, Material* pMaterial);

                f32             GetFrameMax() const { return GetFrameSize(); }
                u16             GetFrameSize() const;

                void            SetFrame(f32 frame) { mFrame = frame; }

                bool            IsLoopData() const;

                ut::LinkListNode mLink; // 0x04

            protected:
                const res::AnimationBlock*  mpRes;  // 0x0C
                f32                         mFrame; // 0x10
        };
        typedef ut::LinkList<AnimTransform, 4> AnimTransformList;
        
        class AnimationLink {
            public:
                AnimationLink() : mLink(), mbDisable(false) { Reset(); }
                ~AnimationLink() {}

                AnimTransform*  GetAnimTransform() const                            { return mAnimTrans; }

                u16             GetIndex() const                                    { return mIdx; }
                bool            IsEnable() const                                    { return !mbDisable; }

                void            SetEnable(bool bEnable)                             { mbDisable = !bEnable; }

                void            Reset()                                             { SetAnimTransform(NULL, 0); }

                void            SetAnimTransform(AnimTransform* animTrans, u16 idx) { mAnimTrans = animTrans; mIdx = idx; }

                ut::LinkListNode mLink; // 0x00

            private:
                AnimTransform*  mAnimTrans; // 0x08

                u16             mIdx;       // 0x0C
                bool            mbDisable;  // 0x0E
        };
        typedef ut::LinkList<AnimationLink, 0> AnimationLinkList;

        class AnimTransformBasic : public AnimTransform {
            public:
                AnimTransformBasic();
                virtual ~AnimTransformBasic();

                virtual void    SetResource(const res::AnimationBlock* pRes, ResourceAccessor* pResAccessor);

                virtual void    Bind(Pane* pPane, bool bRecursive);
                virtual void    Bind(Material* pMaterial);

                virtual void    Animate(u32 idx, Pane* pPane);
                virtual void    Animate(u32 idx, Material* pMaterial);

            private:
                void**          mpFileResAry;   // 0x14

                AnimationLink*  mAnimLinkAry;   // 0x18
                u16             mAnimLinkNum;   // 0x1C
        };

        namespace detail {
            AnimationLink* FindAnimationLink(AnimationLinkList* pAnimList, AnimTransform* pAnimTrans);
        }
    }
}

#endif // NW4R_LYT_ANIMATION_H
