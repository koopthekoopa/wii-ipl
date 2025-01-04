#include "system/iplSystem.h"
#include "utility/iplFrameController.h"

namespace ipl {
    namespace utility {
        void FrameController::init(int type, f32 maxFrame, f32 minFrame, f32 speed) {
            mAnmType = type;

            mMaxFrame = maxFrame;
            mMinFrame = minFrame;

            mSpeed = speed;

            mState = 0;

            mbBounceBack = false;

            initFrame();
        }

        void FrameController::initFrame() {
            float frame;
            if (mAnmType == ANIM_TYPE_BACKWARD) {
                frame = mMaxFrame;
            }
            else {
                frame = mMinFrame;
            }
            mFrame = frame;
        }

        void FrameController::calc() {
            f32 speed = mSpeed * System::getAnimDelta();
            if (mState == ANIM_STATE_PLAY) {
                switch (mAnmType) {
                    // Animate normally; Once reaching the maximum frame, the animation stops.
                    case ANIM_TYPE_FORWARD: {
                        if ((mFrame += speed) >= mMaxFrame) {
                            mFrame = mMaxFrame;
                            mState = ANIM_STATE_READY;
                        }
                        break;
                    }
                    // Animate in reverse; Once reaching the minimum frame, the animation stops.
                    case ANIM_TYPE_BACKWARD: {
                        if ((mFrame -= speed) <= mMinFrame) {
                            mFrame = mMinFrame;
                            mState = ANIM_STATE_READY;
                        }
                        break;
                    }
                    // Animate forever; Once reaching the maximum frame, the animation repeats.
                    case ANIM_TYPE_LOOP: {
                        if ((mFrame += speed) >= mMaxFrame) {
                            while (mFrame >= mMaxFrame) {
                                mFrame -= (mMaxFrame - mMinFrame);
                            }
                        }
                        break;
                    }
                    // Animate in a bouncy way; Once reaching the maximum frame, it then animates forward.
                    // And once reaching the minimum frame, it animates forwards. Then repeat.
                    case ANIM_TYPE_BOUNCE: {
                        if (mbBounceBack == false) {
                            if ((mFrame += speed) >= mMaxFrame) {
                                mFrame = mMaxFrame;
                                mbBounceBack = true;
                            }
                        }
                        else {
                            if ((mFrame -= speed) <= mMinFrame) {
                                mFrame = mMinFrame;
                                mbBounceBack = false;
                            }
                        }
                        break;
                    }
                }
            }
            else if (mState == ANIM_STATE_STOP) {
                mState = ANIM_STATE_READY;
            }
        }
    }
}
