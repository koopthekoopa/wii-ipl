#include "scene/iplFaderSceneBase.h"

namespace ipl {
    namespace scene {
        FaderSceneBase::FaderSceneBase(EGG::Heap* heap) :
        Base(heap),
        mScnFadeState(FADE_STATE_FADE_IN) {}

        void FaderSceneBase::calc() {
            if (mScnFadeState != FADE_STATE_DONE) {
                calcCommon();
            }

            switch (mScnFadeState) {
                case FADE_STATE_FADE_IN: {
                    if (calcFadein() != SCENE_CONTINUE) {
                        mScnFadeState = FADE_STATE_INIT_NORMAL;
                    }
                    break;
                }
                case FADE_STATE_INIT_NORMAL: {
                    initCalcNormal();
                    mScnFadeState = FADE_STATE_NORMAL;
                }
                case FADE_STATE_NORMAL: {
                    if (calcNormal() != SCENE_CONTINUE) {
                        mScnFadeState = FADE_STATE_INIT_FADE_OUT;
                    }
                    break;
                }
                case FADE_STATE_INIT_FADE_OUT: {
                    initCalcFadeout();
                    mScnFadeState = FADE_STATE_FADE_OUT;
                }
                case FADE_STATE_FADE_OUT: {
                    if (calcFadeout() != SCENE_CONTINUE) {
                        u32 result = mScnState | SCN_STATE_DESTROY_REQ;
                        mScnFadeState = FADE_STATE_DONE;
                        mScnState = result;
                    }
                    break;
                }
            }

            if (mScnFadeState != FADE_STATE_DONE) {
                calcCommonAfter();
            }
        }
    }
}
