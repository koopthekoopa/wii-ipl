#include "scene/iplFaderSceneBase.h"

namespace ipl {
    namespace scene {
        enum {
            STATE_FADE_IN = 0,
            STATE_INIT_NORMAL,
            STATE_NORMAL,
            STATE_INIT_FADE_OUT,
            STATE_FADE_OUT,
            STATE_DONE,
        };

        /**
         * @note Address: 0x8140B208 (4.3U)
         * @note Size: 0x4C
         */
        FaderSceneBase::FaderSceneBase(EGG::Heap* pHeap) :
        Base(pHeap),
        mState(STATE_FADE_IN) {}

        FaderSceneBase::~FaderSceneBase() {}

        /**
         * @note Address: 0x8140B254 (4.3U)
         * @note Size: 0x14C
         */
        void FaderSceneBase::calc() {
            if (mState != STATE_DONE) {
                calcCommon();
            }

            switch(mState) {
                case STATE_FADE_IN: {
                    if (calcFadein() != SCENE_CONTINUE) {
                        mState = STATE_INIT_NORMAL;
                    }
                    break;
                }
                case STATE_INIT_NORMAL: {
                    initCalcNormal();
                    mState = STATE_NORMAL;
                }
                case STATE_NORMAL: {
                    if (calcNormal() != SCENE_CONTINUE) {
                        mState = STATE_INIT_FADE_OUT;
                    }
                    break;
                }
                case STATE_INIT_FADE_OUT: {
                    initCalcFadeout();
                    mState = STATE_FADE_OUT;
                }
                case STATE_FADE_OUT: {
                    if (calcFadeout() != SCENE_CONTINUE) {
                        u32 result = unk_0x2C | 2;
                        mState = STATE_DONE;
                        unk_0x2C = result;
                    }
                    break;
                }
            }

            if (mState != STATE_DONE) {
                calcCommonAfter();
            }
        }

        /**
         * @note Address: 0x8140B3A0 (4.3U)
         * @note Size: 0x8
         */
        SceneReturn FaderSceneBase::calcNormal() {
            return SCENE_DONE;
        }
    }
}

