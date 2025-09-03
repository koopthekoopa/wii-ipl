#ifndef IPL_SCENE_SETTING_H
#define IPL_SCENE_SETTING_H

#include "iplSceneHeader.h"

namespace ipl {
    namespace scene {
        enum {
            SETTING_SCENE_INITIAL_SETUP = 2,
            SETTING_SCENE_UPDATE_BEFORE_SETUP = 5,
        };

        FADER_SCENE_CLASS(Setting) {
            public:
                Setting(EGG::Heap* heap, int);

            private:
                u8  unk_0x58[0xB68];
        };
    }
}

#endif // IPL_SCENE_SETTING_H
