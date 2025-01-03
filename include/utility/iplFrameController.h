#ifndef IPL_FRAME_CONTROLLER_H
#define IPL_FRAME_CONTROLLER_H

#include <revolution/types.h>

namespace ipl {
    enum {
        ANIM_PLAYBACK_FORWARD = 0,
        ANIM_PLAYBACK_BACKWARD,
        ANIM_PLAYBACK_LOOP,
        ANIM_PLAYBACK_ALTERNATE
    };
    namespace utility {
        class FrameController {
            public:
                virtual         ~FrameController();
                virtual         void unkvt0(bool something) = 0;
                virtual         void unkvt4(bool something) = 0;
                
                void            init(int playback, f32 maxFrame, f32 begin, f32 speed);
                void            initFrame();

                void            calc();

            protected:
                f32     initAnmFrame;   // 0x04
                f32     mBeginFrame;    // 0x08
                f32     mFrame;         // 0x0C
                f32     mSpeed;         // 0x10

                int     unk_0x14;
                int     mPlayback;      // 0x18
                bool    unk_0x1C;
        };
    }
}

#endif // IPL_FRAME_CONTROLLER_H
