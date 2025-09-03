#ifndef IPL_SCENE_MEMORY_CARD_H
#define IPL_SCENE_MEMORY_CARD_H

#include "iplSceneHeader.h"

namespace ipl {
    namespace scene {
        SCENE_CLASS(MemoryCard) {
            public:
                MemoryCard(EGG::Heap* heap);

            private:
                u8  unk_0x54[0x7C];
        };
    }
}

#endif // IPL_SCENE_MEMORY_CARD_H
