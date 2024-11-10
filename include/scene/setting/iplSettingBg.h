#ifndef IPL_SETTING_BG_H
#define IPL_SETTING_BG_H

#include "scene/iplFaderSceneBase.h"

namespace ipl {
    namespace scene {
        SCENE_CLASS(SettingBg) {
            public:
                SettingBg(EGG::Heap* pHeap, int unk);
                virtual ~SettingBg();

                virtual void    prepare();
                virtual void    create();
                virtual void    calc();
                virtual void    draw();
            
            private:
                int unkID;                          // 0x54

                layout::Object*     mpLayout;       // 0x58
                nand::LayoutFile*   mpLayoutFile;   // 0x5C
        };
    }
}

#endif // IPL_SETTING_BG_H


