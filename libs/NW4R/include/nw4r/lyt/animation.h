#ifndef NW4R_LYT_ANIMATION_H
#define NW4R_LYT_ANIMATION_H

#include <nw4r/ut.h>

#include <nw4r/lyt/resources.h>

namespace nw4r {
    namespace lyt {
        class AnimTransform {
            public:
                virtual ~AnimTransform();

                void    SetFrame(f32 frame) { mFrame = frame; }
                
                u16     GetFrameSize() const;

                bool    IsLoopData() const;

                NW4R_CREATE_LINKLIST;

            protected:
                const res::AnimationBlock*  mpRes;  // 0x0C

                f32                         mFrame; // 0x10
        };
        
        class AnimationLink {
            public:
                NW4R_CREATE_LINKLIST;

            private:
                AnimTransform*      mAnimTrans; // 0x08

                u16                 mIdx;       // 0x0C
                bool                mbDisable;  // 0x0E
        };
    }
}

#endif // NW4R_LYT_ANIMATION_H
