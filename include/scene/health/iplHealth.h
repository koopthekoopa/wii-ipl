#ifndef IPL_HEALTH_H
#define IPL_HEALTH_H

#include "scene/iplFaderSceneBase.h"

namespace ipl {
    namespace scene {
        FADER_SCENE_CLASS(skHealth) {
            public:
                skHealth(EGG::Heap* pHeap);
                virtual ~skHealth();

                virtual BOOL        isReady() const;

                virtual void        prepare();
                virtual void        create();
                virtual void        draw();
                virtual void        destroy();

                virtual SceneReturn calcFadein();
                virtual SceneReturn calcNormal();
                virtual SceneReturn calcFadeout();

            private:
                void                check_safe_mode();
                BOOL                finish_safe_mode_check() const;

                u32                 getCountryIndex_();
                
                layout::Object*     mpLayout;       // 0x58
                nand::LayoutFile*   mpLayoutFile;   // 0x5C

                nw4r::lyt::Pane*    mpHasPane;      // 0x60
                nw4r::lyt::Pane*    mpPushPane;     // 0x64

                OSTick              mWaitTick;      // 0x68
                OSTick              mPushTick;      // 0x6C

                bool                mbFadedIn;      // 0x70
                u32                 mWpadMask;      // 0x74
                OSTick              mSafeModeTick;  // 0x78
                bool                mbHeldCombo;    // 0x7C
                bool                mbDoneSafeMode; // 0x7D
        };
    }
}

#endif // IPL_HEALTH_H


