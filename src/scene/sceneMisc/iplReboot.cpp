#include "scene/misc/iplReboot.h"

#include "iplScene.h"

#include "scene/channelSelect/iplChannelSelect.h"

#include "scene/settingSelect/iplSettingSelectArg.h"

#include "iplSystem.h"

namespace ipl {
    namespace scene {
        void Reboot::calc() {
            if (System::createdAfterAndLibMgr() || (System::hasCreatedAfter() && System::isNandFull())) {
                System::getHomeButtonMenu()->enableLib();

                switch (mSettingsType) {
                    case REBOOT_DATA_MANAGEMENT: {  
                        reserveSceneChange(SCENE_SETTING_BG, (void*)SettingSelectArg::ARG_START_AFTER_REBOOT);
                        break;
                    }
                    case REBOOT_SETTINGS: {
                        reserveSceneChange(SCENE_SETTING, (void*)6);
                        break;
                    }
                }

                // Tell ChannelSelect that we initialized when startBGM returns true.
                ChannelSelect::setInitFlag(snd::getSystem()->startBGM("WIPL_BGM_MENU"));
                System::getFader()->fadeIn();

                setSceneState(SCN_STATE_DESTROY_REQ);
            }
        }
    }
}
