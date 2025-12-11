#include "scene/iplFaderSceneBase.h"

namespace ipl {
    namespace scene {
        FaderSceneBase::FaderSceneBase(EGG::Heap* heap) :
        Base(heap),
        mScnFadeState(STT_FADE_IN) {}

        void FaderSceneBase::calc() {
            if (mScnFadeState != STT_DONE) {
                calcCommon();
            }

            switch (mScnFadeState) {
                case STT_FADE_IN: {
                    if (calcFadein() != FADER_SCN_CONTINUE) {
                        mScnFadeState = STT_INIT_NORMAL;
                    }
                    break;
                }
                case STT_INIT_NORMAL: {
                    initCalcNormal();
                    mScnFadeState = STT_NORMAL;
                }
                case STT_NORMAL: {
                    if (calcNormal() != FADER_SCN_CONTINUE) {
                        mScnFadeState = STT_INIT_FADE_OUT;
                    }
                    break;
                }
                case STT_INIT_FADE_OUT: {
                    initCalcFadeout();
                    mScnFadeState = STT_FADE_OUT;
                }
                case STT_FADE_OUT: {
                    if (calcFadeout() != FADER_SCN_CONTINUE) {
                        requestSceneDestruction();
                        mScnFadeState = STT_DONE;
                    }
                    break;
                }
            }

            if (mScnFadeState != STT_DONE) {
                calcCommonAfter();
            }
        }
    }
}
