#ifndef IPL_SCENE_ADDRESS_H
#define IPL_SCENE_ADDRESS_H

#include "iplSceneHeader.h"

namespace ipl {
    namespace scene {
        FADER_SCENE_CLASS(Address) {
            public:
                Address(EGG::Heap* heap);

                enum {
                    SCENE_ADD_WII = 1,
                    SCENE_ADD_EMAIL,
                };

            private:
                u8  unk_0x58[248];
        };
    }
}

#endif // IPL_SCENE_ADDRESS_H
