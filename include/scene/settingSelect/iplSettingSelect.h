#ifndef IPL_SCENE_SETTING_SELECT_H
#define IPL_SCENE_SETTING_SELECT_H

#include "iplSceneHeader.h"

namespace ipl {
    namespace scene {
        SCENE_CLASS(SettingSelect) {
            public:
                SettingSelect(EGG::Heap* heap, int);

            private:
                u8  unk_0x54[0x44];
        };
    }
}

#endif // IPL_SCENE_SETTING_SELECT_H
