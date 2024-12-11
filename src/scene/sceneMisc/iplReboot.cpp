#include "scene/misc/iplReboot.h"

#include "scene/channelSelect/iplChannelSelect.h"

#include "system/iplHomeButton.h"

namespace ipl {
    namespace scene {
        void Reboot::calc() {
            if (System::unkBool() || (System::hasCreatedAfter() && System::isNandFull())) {
                System::getHomeButtonMenu()->setUnk_0x05(true);

                switch (mSettingsType) {
                    // Wii Options
                    case REBOOT_SETTINGS_SELECT: {  
                        reserveSceneChange(SCENE_SETTING_BG, (void*)2);
                        break;
                    }
                     // System Settings
                    case REBOOT_SETTINGS: {
                        reserveSceneChange(SCENE_SETTING, (void*)6);
                        break;
                    }
                }

                ChannelSelect::setInitFlag(snd::getSystem()->startBGM("WIPL_BGM_MENU"));
                System::getFader()->fadeIn();

                unk_0x2C = unk_0x2C | 2;
            }
        }
    }
}


