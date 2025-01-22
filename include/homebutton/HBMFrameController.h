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

    enum {
        ANIM_STATE_READY = 0,
        ANIM_STATE_PLAY,
        ANIM_STATE_STOP,
    };

    class FrameController {
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
            
            void            setCurrentFrame(f32 value)  { mFrame = value; }
            f32             getCurrentFrame() const     { return mFrame; }
            
            void            setDelta(f32 value)         { mDelta = value; }
            f32             getDelta() const            { return mDelta; }
            
            void            setState(int value)         { mState = value; }
            int             getState() const            { return mState; }
            
            void            setAnimType(int value)      { mAnmType = value; }
            int             getAnimType() const         { return mAnmType; }

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
