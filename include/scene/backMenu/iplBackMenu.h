#ifndef IPL_BACK_MENU_H
#define IPL_BACK_MENU_H

#include <egg/core.h>

#include "scene/iplFaderSceneBase.h"

#include "layout/iplLayout.h"

namespace ipl {
    namespace scene {
        FADER_SCENE_CLASS(BackMenu) {
            public:
                BackMenu(EGG::Heap* pHeap);
                virtual ~BackMenu() {}

                virtual BOOL        isReady() const;

                virtual void        prepare();
                virtual void        create();
                virtual void        draw();

                virtual void        initCalcFadeout();

                virtual void        calcCommon();

                virtual SceneReturn calcFadein();
                virtual SceneReturn calcNormal();
                virtual SceneReturn calcFadeout();
            
            private:
                layout::Object* mpLayout;   // 0x58
                undefined4      unk_0x5C;   // 0x5C
        };
    }
}

#endif // IPL_BACK_MENU_H


