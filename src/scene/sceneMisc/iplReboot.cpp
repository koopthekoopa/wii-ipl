#include "scene/misc/iplReboot.h"

#include "scene/channelSelect/iplChannelSelect.h"

#include "system/iplHomeButton.h"

namespace ipl {
    namespace scene {
        /**
         * @note Address: 0x813DA778
         * @note Size: 0x10C
         */
        void Reboot::calc() {
            if (System::unkBool() || (System::hasCreatedAfter() && System::isNandFull())) {
                System::getHomeMenu()->setUnk_0x05(true);

                switch(unk_0x54) {
                    case FALSE: {
                        reserveSceneChange(21, (void*)2);
                        break;
                    }
                    case TRUE: {
                        reserveSceneChange(18, (void*)6);
                        break;
                    }
                }

                ChannelSelect::setInitFlag(snd::getSystem()->startBGM("WIPL_BGM_MENU"));

                System::getGlobalFader()->fadeIn();

                unk_0x2C = unk_0x2C | 2;
            }
        }

        // TODO: sort out the ordering
        void Base::draw() {}
    }
}


