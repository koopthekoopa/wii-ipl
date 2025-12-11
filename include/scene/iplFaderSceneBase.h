#ifndef BASE_SCENE_FADER_H
#define BASE_SCENE_FADER_H

#include "scene/iplSceneBase.h"

#define FADER_SCENE_CLASS(x)        class x : public scene::FaderSceneBase

namespace ipl {
    namespace scene {
        enum FaderSceneCommand {
            /* Continue the current scene `calc` function */
            FADER_SCN_CONTINUE = 0,
            /* Onto the next scene `calc` function */
            FADER_SCN_NEXT,
        };

        SCENE_CLASS(FaderSceneBase) {
            public:
                enum {
                    STT_FADE_IN = 0,
                    STT_INIT_NORMAL,
                    STT_NORMAL,
                    STT_INIT_FADE_OUT,
                    STT_FADE_OUT,
                    STT_DONE,
                };

                FaderSceneBase(EGG::Heap* heap);
                virtual ~FaderSceneBase() {}

                virtual void                calc();

                virtual void                initCalcNormal()    {}                          // 0x4C
                virtual void                initCalcFadeout()   {}                          // 0x50

                virtual void                calcCommon()        {}                          // 0x54

                virtual FaderSceneCommand   calcFadein()        { return FADER_SCN_NEXT; }  // 0x58
                virtual FaderSceneCommand   calcNormal()        { return FADER_SCN_NEXT; }  // 0x5C
                virtual FaderSceneCommand   calcFadeout()       { return FADER_SCN_NEXT; }  // 0x60

                virtual void                calcCommonAfter()   {}                          // 0x64

                int                         getSceneFadeState() { return mScnFadeState; }

            protected:
                int mScnFadeState;  // 0x54
        };
    }
}

#endif // BASE_SCENE_FADER_H
