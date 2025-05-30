#ifndef IPL_SCENE_SETTING_BG_H
#define IPL_SCENE_SETTING_BG_H

#include "iplSceneHeader.h"

namespace ipl {
    namespace scene {
        SCENE_CLASS(SettingBg) {
            public:
                SettingBg(EGG::Heap* heap, int type);
                virtual ~SettingBg();

                virtual void    prepare();
                virtual void    create();
                virtual void    calc();
                virtual void    draw();
            
            private:
                int                 mSettingType;   // 0x54

                layout::Object*     mpLayout;       // 0x58
                nand::LayoutFile*   mpLayoutFile;   // 0x5C
        };
    }
}

#endif // IPL_SCENE_SETTING_BG_H
