#ifndef IPL_SCENE_NAKAMURA_TEST_H
#define IPL_SCENE_NAKAMURA_TEST_H

#include "iplSceneHeader.h"

namespace ipl {
    namespace scene {
        FADER_SCENE_CLASS(NakamuraTest) {
            public:
                NakamuraTest(EGG::Heap* heap);

            private:
                u8  unk_0x58[0x2B38];
        };
    }
}

#endif // IPL_SCENE_NAKAMURA_TEST_H
