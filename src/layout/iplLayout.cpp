#include "layout/iplLayout.h"
#include "utility/iplFrameController.h"

namespace ipl {
    namespace layout {
        Animator::Animator(nw4r::lyt::AnimTransform* animTrans, bool arg0, bool arg1) :
        utility::FrameController(),
        mAnimTrans(animTrans) {
            unk_0x2C = 0;

            int playback;
            f32 maxFrame;

            if (animTrans->IsLoopData()) {
                playback = ANIM_PLAYBACK_LOOP;
                maxFrame = animTrans->GetFrameSize();
            }
            else {
                playback = ANIM_PLAYBACK_FORWARD;
                maxFrame = animTrans->GetFrameSize() - 1.0f;
            }

            init(playback, maxFrame, 0.0, 1.0);

            if (arg0 != FALSE) {
                unk_0x2C |= 1;
            }
            if (arg1 != FALSE) {
                unk_0x2C |= 2;
            }
        }

        void Animator::calc() {
            unkvt4(unk_0x14 != 0);
            utility::FrameController::calc();
            setFrame();
        }

        void Animator::setFlag(bool flag) {}

        void Animator::setFrame() {
            mAnimTrans->SetFrame(mFrame);
        }

        void Animator::initAnmFrame() {
            unk_0x14 = 2;
            utility::FrameController::initFrame();
            setFrame();
        }

        void Animator::initAnmFrame(float frame) {
            mFrame = frame;
            unk_0x14 = 2;
            setFrame();
        }
    }
}
