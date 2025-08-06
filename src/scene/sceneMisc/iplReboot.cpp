#include "scene/misc/iplReboot.h"

#include "iplScene.h"

#include "scene/channelSelect/iplChannelSelect.h"

#include "iplSystem.h"

namespace ipl {
    namespace scene {
        void Reboot::calc() {
            if (System::unkBool() || (System::hasCreatedAfter() && System::isNandFull())) {
                System::getHomeButtonMenu()->enableLib();

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

                // Tell ChannelSelect that we initialized when startBGM returns true.
                ChannelSelect::setInitFlag(snd::getSystem()->startBGM("WIPL_BGM_MENU"));
                System::getFader()->fadeIn();

                unk_0x2C = unk_0x2C | 2;
            }
        }
    }
}
