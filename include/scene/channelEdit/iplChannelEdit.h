#ifndef IPL_SCENE_CHANNEL_EDIT_H
#define IPL_SCENE_CHANNEL_EDIT_H

#include "iplSceneHeader.h"

namespace ipl {
    namespace scene {
        SCENE_CLASS(ChannelEdit) {
            public:
                ChannelEdit(EGG::Heap* heap);

            private:
                u8  unk_0x54[0x84];
        };
    }
}

#endif // IPL_SCENE_CHANNEL_EDIT_H
