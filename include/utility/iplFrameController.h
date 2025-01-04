#ifndef IPL_FRAME_CONTROLLER_H
#define IPL_FRAME_CONTROLLER_H

#include <decomp.h>

#include <revolution/types.h>

namespace ipl {
    enum {
        ANIM_TYPE_FORWARD = 0,
        ANIM_TYPE_BACKWARD,
        ANIM_TYPE_LOOP,
        ANIM_TYPE_ALTERNATE
    };

    enum {
        ANIM_STATUS_NOTPLAY = 0,
        ANIM_STATUS_PLAY,
        ANIM_STATUS_STOP,
    };
    
    namespace utility {
        class FrameController {
            public:
                FrameController()           {}
                virtual ~FrameController()  {}
                
                void            init(int type, f32 maxFrame, f32 minFrame, f32 speed);
                void            initFrame();

                virtual void    calc();

                f32     mMaxFrame;      // 0x04
                f32     mMinFrame;      // 0x08
                f32     mFrame;         // 0x0C
                f32     mSpeed;         // 0x10

                int     mStatus;        // 0x14
                int     mAnmType;       // 0x18
                bool    unk_0x1C;
        };
    }
}

#endif // IPL_FRAME_CONTROLLER_H
