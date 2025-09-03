#ifndef IPL_SCENE_PARENTAL_DIALOG_H
#define IPL_SCENE_PARENTAL_DIALOG_H

#include "iplSceneHeader.h"

namespace ipl {
    namespace scene {
        FADER_SCENE_CLASS(ParentalDialog) {
            public:
                ParentalDialog(EGG::Heap* heap, int);

            private:
                u8  unk_0x58[0x38];
        };
    }
}

#endif // IPL_SCENE_PARENTAL_DIALOG_H
