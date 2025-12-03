#include "scene/iplRootScene.h"
#include "scene/misc/iplReboot.h"
#include "scene/iplSceneCreator.h"
#include "scene/setting/iplSetting.h"

#include "iplSystem.h"
#include "utility/iplESMisc.h"

#include <revolution/sc.h>

namespace ipl {
    namespace scene {
        void RootScene::create() {
            createChildScene((int)mInitialSceneID, this, NULL, mInitialArgs);
        }

        void RootScene::proc_boot_scene(int* initialScene, int* initialSubScene) {
            *initialScene = SCENE_NONE;
            *initialSubScene = 0;

            BOOL disableTvrc = FALSE;

            System::requestCreateAfter();
            System::requestCreateLibManager();

            // If setup was not done, then initial setup!!
            if (!SCGetConfigDoneFlag2()) {
                if (SCGetUpdateType() == SC_UPDATE_TYPE_NONE) {
                    *initialScene = SCENE_SETTING;
                    *initialSubScene = SETTING_SCENE_INITIAL_SETUP;
                }
                else {
                    *initialScene = SCENE_SETTING;
                    *initialSubScene = SETTING_SCENE_UPDATE_BEFORE_SETUP;
                }
            }
            else {
                // If the last play title had it's ticket expired, show the channel limit
                if (utility::ESMisc::IsLastTicketExpired(NULL)) {
                    *initialScene = SCENE_LIMIT_OVER;
                    System::getResetHandler()->enableResetToMenu();
                }
                else {
                    // Depending on boot type
                    switch (System::getBS2BootType()) {
                        // Data management
                        case BS2_BOOT_TYPE_RETURN_TO_DATA_MANAGER: {
                            disableTvrc = TRUE;
                            *initialScene = SCENE_REBOOT;
                            *initialSubScene = REBOOT_DATA_MANAGEMENT;
                            System::getResetHandler()->enableResetToMenu();
                            break;
                        }
                        // Back menu
                        case BS2_BOOT_TYPE_RETURN_TO_MENU: {
                            System::stopCreateAfterReq();
                            System::stopCreateLibManagerReq();
                            *initialScene = SCENE_BACK_MENU;
                            System::getResetHandler()->enableResetToMenu();
                            break;
                        }
                        // If we have custom arguments
                        case BS2_BOOT_TYPE_RETURN_ARGS: {
                            // Internet settings
                            if (System::getBS2LaunchCode() == System::LAUNCH_CODE_SETTING) {
                                *initialScene = SCENE_REBOOT;
                                *initialSubScene = REBOOT_SETTINGS;
                                disableTvrc /* = TRUE*/ = *initialSubScene;
                                System::getResetHandler()->enableResetToMenu();
                            }
                            // Data management again
                            else if (System::getBS2LaunchCode() == System::LAUNCH_CODE_DATA_MANAGER) {
                                disableTvrc = TRUE;
                                *initialScene = SCENE_REBOOT;
                                *initialSubScene = REBOOT_DATA_MANAGEMENT;
                                System::getResetHandler()->enableResetToMenu();
                            }
                            // Invalid arguments show health and safety
                            else {
                                System::stopCreateAfterReq();
                                System::stopCreateLibManagerReq();
                                *initialScene = SCENE_HEALTH;
                            }
                            break;
                        }
                        // Invalid boot type (or BS2_BOOT_TYPE_POWER_ON) show health and safety
                        default: {
                            System::stopCreateAfterReq();
                            System::stopCreateLibManagerReq();
                            *initialScene = SCENE_HEALTH;
                            break;
                        }
                    }
                }
            }

            if (disableTvrc) {
                TVRCManager::getHandle()->setEnable(FALSE);
            }
        }
    }
}
