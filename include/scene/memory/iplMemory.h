#ifndef IPL_SCENE_MEMORY_H
#define IPL_SCENE_MEMORY_H

#include "iplSceneHeader.h"

namespace ipl {
    namespace scene {
        SCENE_CLASS(Memory) {
            public:
                Memory(EGG::Heap* heap);

            private:
                u8  unk_0x54[0x80];
        };
    }
}

#endif // IPL_SCENE_MEMORY_H
