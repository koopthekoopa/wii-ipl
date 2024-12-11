#include "scene/iplFaderSceneBase.h"

namespace ipl {
    namespace scene {
        FaderSceneBase::FaderSceneBase(EGG::Heap* pHeap) :
        Base(pHeap),
        mState(FADE_STATE_FADE_IN) {}

        void FaderSceneBase::calc() {
            if (mState != FADE_STATE_DONE) {
                calcCommon();
            }

            switch (mState) {
                case FADE_STATE_FADE_IN: {
                    if (calcFadein() != SCENE_CONTINUE) {
                        mState = FADE_STATE_INIT_NORMAL;
                    }
                    break;
                }
                case FADE_STATE_INIT_NORMAL: {
                    initCalcNormal();
                    mState = FADE_STATE_NORMAL;
                }
                case FADE_STATE_NORMAL: {
                    if (calcNormal() != SCENE_CONTINUE) {
                        mState = FADE_STATE_INIT_FADE_OUT;
                    }
                    break;
                }
                case FADE_STATE_INIT_FADE_OUT: {
                    initCalcFadeout();
                    mState = FADE_STATE_FADE_OUT;
                }
                case FADE_STATE_FADE_OUT: {
                    if (calcFadeout() != SCENE_CONTINUE) {
                        u32 result = unk_0x2C | 2;
                        mState = FADE_STATE_DONE;
                        unk_0x2C = result;
                    }
                    break;
                }
            }

            if (mState != FADE_STATE_DONE) {
                calcCommonAfter();
            }
        }
    }
}

