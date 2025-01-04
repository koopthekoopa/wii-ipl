#include "homebutton/HBMFrameController.h"
#pragma sym on
namespace homebutton {
    void FrameController::init(int type, f32 maxFrame, f32 minFrame, f32 delta) {
        mAnmType = type;

        mMaxFrame = maxFrame;
        mMinFrame = minFrame;

        mDelta = delta;

        mState = ANIM_STATE_READY;

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
        if (mState == ANIM_STATE_PLAY) {
            switch (mAnmType) {
                // Animate normally; Once reaching the maximum frame, the animation stops.
                case ANIM_TYPE_FORWARD: {
                    if ((mFrame += mDelta) >= getLastFrame()) {
                        mFrame = getLastFrame();
                        mState = ANIM_STATE_READY;
                    }
                    break;
                }
                // Animate in reverse; Once reaching the minimum frame, the animation stops.
                case ANIM_TYPE_BACKWARD: {
                    if ((mFrame -= mDelta) <= mMinFrame) {
                        mFrame = mMinFrame;
                        mState = ANIM_STATE_READY;
                    }
                    break;
                }
                // Animate forever; Once reaching the maximum frame, the animation repeats.
                case ANIM_TYPE_LOOP: {
                    if ((mFrame += mDelta) >= mMaxFrame) {
                        mFrame -= (mMaxFrame - mMinFrame);
                    }
                    break;
                }
                // Animate in a bouncy way; Once reaching the maximum frame, it then animates forward.
                // And once reaching the minimum frame, it animates forwards. Then repeat.
                case ANIM_TYPE_BOUNCE: {
                    if (mbBounceBack == false) {
                        if ((mFrame += mDelta) >= getLastFrame()) {
                            mFrame = getLastFrame();
                            mbBounceBack = true;
                        }
                    }
                    else {
                        if ((mFrame -= mDelta) <= mMinFrame) {
                            mFrame = mMinFrame;
                            mbBounceBack = false;
                        }
                    }
                    break;
                }
            }
        }
    }
}
