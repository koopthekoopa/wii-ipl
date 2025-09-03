#ifndef IPL_SCENE_KITAYAMA_TEST_H
#define IPL_SCENE_KITAYAMA_TEST_H

#include "iplSceneHeader.h"

namespace ipl {
    namespace scene {
        FADER_SCENE_CLASS(KitayamaTest) {
            public:
                KitayamaTest(EGG::Heap* heap, int);

            private:
                u8  unk_0x58[0x20];
        };
    }
}

#endif // IPL_SCENE_KITAYAMA_TEST_H
