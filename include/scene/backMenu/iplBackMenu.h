#ifndef IPL_BACK_MENU_H
#define IPL_BACK_MENU_H

#include "scene/iplFaderSceneBase.h"

namespace ipl {
    namespace scene {
        FADER_SCENE_CLASS(BackMenu) {
            public:
                BackMenu(EGG::Heap* heap);
                virtual ~BackMenu() {}

                virtual BOOL            isReady() const;

                virtual void            prepare();
                virtual void            create();
                virtual void            draw();

                virtual void            initCalcFadeout();

                virtual void            calcCommon();

                virtual SceneCommand    calcFadein();
                virtual SceneCommand    calcNormal();
                virtual SceneCommand    calcFadeout();

                // :sob:
#if defined(VERSION_43K)
                virtual void            someUnusedVirtualMember() = 0;
#endif
            
            private:
                layout::Object* mpLayout;       // 0x58
                u32             unused_0x5C;    // 0x5C
        };
    }
}

#endif // IPL_BACK_MENU_H
