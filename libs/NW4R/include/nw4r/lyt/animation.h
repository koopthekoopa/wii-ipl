#ifndef NW4R_LYT_ANIMATION_H
#define NW4R_LYT_ANIMATION_H

#include <nw4r/lyt/resourceAccessor.h>
#include <nw4r/lyt/resources.h>

#include <nw4r/ut.h>

namespace nw4r {
    namespace lyt {
        class Pane;
        class Material;
        class AnimTransform {
            public:
                virtual ~AnimTransform();

                void            SetFrame(f32 frame) { mFrame = frame; }
                u16             GetFrameSize() const;
                bool            IsLoopData() const;

                virtual void    SetResource(const res::AnimationBlock* pRes, ResourceAccessor* pResAccessor);
                virtual void    Bind(Pane* pPane, bool bRecursive);
                virtual void    Bind(Material* pMaterial);
                virtual void    Animate(u32 idx, Pane* pPane);
                virtual void    Animate(u32 idx, Material* pMaterial);

                ut::LinkListNode mLink;

            protected:
                const res::AnimationBlock*  mpRes;  // 0x0C
                f32                         mFrame; // 0x10
        };
        typedef ut::LinkList<AnimTransform, 0> AnimTransformList;
        
        class AnimationLink {
            public:
                ut::LinkListNode mLink;

            private:
                AnimTransform*      mAnimTrans; // 0x08

                u16                 mIdx;       // 0x0C
                bool                mbDisable;  // 0x0E
        };
        typedef ut::LinkList<AnimationLink, 0> AnimationLinkList;
    }
}

#endif // NW4R_LYT_ANIMATION_H
