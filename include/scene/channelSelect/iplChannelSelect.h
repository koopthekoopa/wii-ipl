#ifndef IPL_SCENE_CHANNEL_SELECT_H
#define IPL_SCENE_CHANNEL_SELECT_H

#include "iplSceneHeader.h"

namespace ipl {
    namespace scene {
        FADER_SCENE_CLASS(ChannelSelect) {
            public:
                ChannelSelect(EGG::Heap* heap, int page);

                static void setInitFlag(BOOL value) { msInitFlag = value; }
            
            private:
                u8  unk_0x58[0x278];

                static BOOL msInitFlag;
        };
    }
}

#endif // IPL_SCENE_CHANNEL_SELECT_H
