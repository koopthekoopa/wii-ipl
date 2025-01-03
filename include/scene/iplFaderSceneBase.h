#ifndef BASE_SCENE_FADER_H
#define BASE_SCENE_FADER_H

#include "scene/iplSceneBase.h"

#define FADER_SCENE_CLASS(x)    class x : public ipl::scene::FaderSceneBase

namespace ipl {
    namespace scene {
        enum SceneCommand {
            /* Continue the current scene `calc` function */
            SCENE_CONTINUE = 0,
            /* Onto the next scene `calc` function */
            SCENE_NEXT,
        };
        
        enum {
            FADE_STATE_FADE_IN = 0,
            FADE_STATE_INIT_NORMAL,
            FADE_STATE_NORMAL,
            FADE_STATE_INIT_FADE_OUT,
            FADE_STATE_FADE_OUT,
            FADE_STATE_DONE,
        };

        SCENE_CLASS(FaderSceneBase) {
            public:
                FaderSceneBase(EGG::Heap* heap);
                virtual ~FaderSceneBase() {}

                virtual void            calc();

                virtual void            initCalcNormal();                           // 0x4C
                virtual void            initCalcFadeout();                          // 0x50

                virtual void            calcCommon()        {}                      // 0x54

                virtual SceneCommand    calcFadein()        { return SCENE_NEXT; }  // 0x58
                virtual SceneCommand    calcNormal()        { return SCENE_NEXT; }  // 0x5C
                virtual SceneCommand    calcFadeout()       { return SCENE_NEXT; }  // 0x60

                virtual void            calcCommonAfter();                          // 0x64
                
                int                     getState()          { return mState; }
            
            private:
                int mState; // 0x54
        };
    }
}

#endif // BASE_SCENE_FADER_H


