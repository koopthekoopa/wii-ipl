#ifndef IPL_SCENE_SD_CHANNEL_SELECT_H
#define IPL_SCENE_SD_CHANNEL_SELECT_H

#include "iplSceneHeader.h"

namespace ipl {
    namespace scene {
        FADER_SCENE_CLASS(SDChannelSelect) {
            public:
                SDChannelSelect(EGG::Heap* heap);

            private:
                u8  unk_0x58[0x728];
        };
    }
}

#endif // IPL_SCENE_SD_CHANNEL_SELECT_H
