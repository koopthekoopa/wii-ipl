#ifndef IPL_LIMIT_OVER_H
#define IPL_LIMIT_OVER_H

#include "iplSceneHeader.h"

namespace ipl {
    namespace scene {
        FADER_SCENE_CLASS(LimitOver) {
            public:
                LimitOver(EGG::Heap* heap);
                virtual ~LimitOver();

                virtual BOOL        isReady() const;

                virtual void        prepare();
                virtual void        create();
                virtual void        draw();

                virtual SceneCommand calcFadein();
                virtual SceneCommand calcNormal();
                virtual SceneCommand calcFadeout();

            private:
                u32                 getCountryIndex_();
                
                layout::Object*     mpLayout;       // 0x58
                nand::LayoutFile*   mpLayoutFile;   // 0x5C

                nw4r::lyt::Pane*    mpTextPane;     // 0x60
                nw4r::lyt::Pane*    mpPushPane;     // 0x64

                OSTick              mWaitTick;      // 0x68
                OSTick              mPushTick;      // 0x6C

                bool                mbFadedIn;      // 0x70
                bool                mbDoneInit;     // 0x71

                u32                 mWpadMask;      // 0x74
        };
    }
}

#endif // IPL_LIMIT_OVER_H
