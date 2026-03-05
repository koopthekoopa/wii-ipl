#ifndef HOME_BUTTON_FRAME_CONTROLLER_H
#define HOME_BUTTON_FRAME_CONTROLLER_H

#include <revolution/types.h>

namespace homebutton {
    enum {
        ANIM_TYPE_FORWARD = 0,
        ANIM_TYPE_BACKWARD,
        ANIM_TYPE_LOOP,
        ANIM_TYPE_ALTERNATE
    };

    class FrameController {
        protected:
            enum {
                ANIM_STATE_STOP = 0,
                ANIM_STATE_PLAY,
                ANIM_STATE_STOP_REQ,
            };

        public:
            FrameController()           {}
            virtual ~FrameController()  {}

            void            init(int type, f32 maxFrame, f32 minFrame, f32 delta);
            void            initFrame();

            virtual void    calc();
            
            void            setMaxFrame(f32 value)      { mMaxFrame = value; }
            f32             getMaxFrame() const         { return mMaxFrame; }
            f32             getLastFrame() const        { return mMaxFrame - 1.0f; }
            
            void            setMinFrame(f32 value)      { mMinFrame = value; }
            f32             getMinFrame() const         { return mMinFrame; }

            f32             getLength() const           { return mMaxFrame - mMinFrame; }
            
            void            setCurrentFrame(f32 value)  { mFrame = value; }
            f32             getCurrentFrame() const     { return mFrame; }
            
            void            setDelta(f32 value)         { mDelta = value; }
            f32             getDelta() const            { return mDelta; }

            void            setAnmType(int value)       { mAnmType = value; }
            int             getAnmType() const          { return mAnmType; }

            void            play()                      { initFrame(); restart(); }
            void            restart()                   { mState = ANIM_STATE_PLAY; }
            void            stop()                      { mState = ANIM_STATE_STOP; }

            bool            isPlaying() const           { return mState == ANIM_STATE_PLAY; }

        protected:
            f32     mMaxFrame;      // 0x04
            f32     mMinFrame;      // 0x08
            f32     mFrame;         // 0x0C
            
            f32     mDelta;         // 0x10

            int     mState;         // 0x14
            
            int     mAnmType;       // 0x18

        private:
            bool    mbAlternateBack;   // 0x1C
    };
}

#endif // HOME_BUTTON_FRAME_CONTROLLER_H
