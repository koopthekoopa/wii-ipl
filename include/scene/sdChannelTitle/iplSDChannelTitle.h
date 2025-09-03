#ifndef IPL_SCENE_SD_CHANNEL_TITLE_H
#define IPL_SCENE_SD_CHANNEL_TITLE_H

#include "iplSceneHeader.h"

namespace ipl {
    namespace scene {
        class SDChannelSelect;
        FADER_SCENE_CLASS(SDChannelTitle) {
            public:
                SDChannelTitle(EGG::Heap* heap, SDChannelSelect* chanSel);

            private:
                u8  unk_0x58[0x3460];
        };
    }
}

#endif // IPL_SCENE_SD_CHANNEL_TITLE_H
