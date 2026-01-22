#ifndef IPL_SCENE_CHANNEL_TITLE_H
#define IPL_SCENE_CHANNEL_TITLE_H

#include "iplSceneHeader.h"

namespace ipl {
    namespace scene {
        class ChannelSelect;

        FADER_SCENE_CLASS(ChannelTitle) {
            public:
                ChannelTitle(EGG::Heap* heap, ChannelSelect* chanSel);

                BOOL    isInLaunching() const;

            private:
                u8  unk_0x58[0x3B0];
        };
    }
}

#endif // IPL_SCENE_CHANNEL_TITLE_H
