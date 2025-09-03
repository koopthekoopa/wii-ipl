#ifndef IPL_SCENE_MAIL_SELECT_ADDRESS_H
#define IPL_SCENE_MAIL_SELECT_ADDRESS_H

#include "iplSceneHeader.h"

namespace ipl {
    namespace scene {
        FADER_SCENE_CLASS(MailAddressSelect) {
            public:
                MailAddressSelect(EGG::Heap* heap);

            private:
                u8  unk_0x58[0x34];
        };
    }
}

#endif // IPL_SCENE_MAIL_SELECT_ADDRESS_H
