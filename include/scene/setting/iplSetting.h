#ifndef IPL_SCENE_SETTING_H
#define IPL_SCENE_SETTING_H

#include "iplSceneHeader.h"

namespace ipl {
    namespace scene {
        FADER_SCENE_CLASS(Setting) {
            public:
                Setting(EGG::Heap* heap, int arg);

                enum {
                    ARG_NORMAL_PAGE = 0,
                    ARG_INTERNET_SETTING,
                    ARG_SETUP,
                    ARG_UPDATE,
                    ARG_INTERNET_PAGE,
                    ARG_UNK_5,
                    ARG_UNK_6,
                };

            private:
                u8  unk_0x58[0xB68];
        };
    }
}

#endif // IPL_SCENE_SETTING_H
