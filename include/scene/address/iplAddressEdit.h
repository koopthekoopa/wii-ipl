#ifndef IPL_SCENE_ADDRESS_EDIT_H
#define IPL_SCENE_ADDRESS_EDIT_H

#include "iplSceneHeader.h"

namespace ipl {
    namespace scene {
        FADER_SCENE_CLASS(AddressEdit) {
            public:
                AddressEdit(EGG::Heap* heap, int friendCode);

                enum {
                    SCENE_ADD_WII = 1,
                    SCENE_ADD_EMAIL,
                };

            private:
                u8  unk_0x58[0x498];
        };
    }
}

#endif // IPL_SCENE_ADDRESS_EDIT_H
