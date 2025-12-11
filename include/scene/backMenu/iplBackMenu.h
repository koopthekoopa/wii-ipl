#ifndef IPL_SCENE_BACK_MENU_H
#define IPL_SCENE_BACK_MENU_H

#include "iplSceneHeader.h"

namespace ipl {
    namespace scene {
        FADER_SCENE_CLASS(BackMenu) {
            public:
                BackMenu(EGG::Heap* heap);

                virtual BOOL                isReady() const;

                virtual void                prepare();
                virtual void                create();
                virtual void                draw();

                virtual void                initCalcFadeout();

                virtual void                calcCommon();

                virtual FaderSceneCommand   calcFadein();
                virtual FaderSceneCommand   calcNormal();
                virtual FaderSceneCommand   calcFadeout();

                // Fuck this
#if defined(VERSION_43K) && defined(VERY_DIRTY_MATCH_HACK)
                virtual void                SomeSortOfPaddingIdfk() = 0;
#endif
            
            private:
                layout::Object* mpLayout;       // 0x58
                u32             unused_0x5C;    // 0x5C
        };
    }
}

#endif // IPL_SCENE_BACK_MENU_H
