#ifndef BASE_SCENE_FADER_H
#define BASE_SCENE_FADER_H

#include "scene/iplSceneBase.h"

#define FADER_SCENE_CLASS(x)    class x : public ipl::scene::FaderSceneBase

namespace ipl {
    namespace scene {
        enum SceneReturn {
            SCENE_CONTINUE = 0,
            SCENE_DONE,
        };

        SCENE_CLASS(FaderSceneBase) {
            public:
                FaderSceneBase(EGG::Heap* pHeap);
                virtual ~FaderSceneBase();

                virtual void        calc();             // 0x40

                virtual void        initCalcNormal();   // 0x4C
                virtual void        initCalcFadeout();  // 0x50

                virtual void        calcCommon();       // 0x54

                virtual SceneReturn calcFadein();       // 0x58
                virtual SceneReturn calcNormal();       // 0x5C
                virtual SceneReturn calcFadeout();      // 0x60

                virtual void        calcCommonAfter();  // 0x64
            
            private:
                int mState; // 0x54
        };
    }
}

#endif // BASE_SCENE_FADER_H


