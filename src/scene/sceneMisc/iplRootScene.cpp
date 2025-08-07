#include "scene/iplRootScene.h"
#include "scene/misc/iplReboot.h"
#include "scene/iplSceneCreator.h"

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

            if (!SCGetConfigDoneFlag2()) {
                if (SCGetUpdateType() == SC_UPDATE_TYPE_NONE) {
                    *initialScene = SCENE_SETTING;
                    *initialSubScene = 2;
                }
                else {
                    *initialScene = SCENE_SETTING;
                    *initialSubScene = 5;
                }
            }
            else {
                if (utility::ESMisc::IsLastTicketExpired(NULL)) {
                    *initialScene = SCENE_LIMIT_OVER;
                    System::getResetHandler()->enableResetToMenu();
                }
                else {
                    switch (System::getBS2BootType()) {
                        case BS2_BOOT_TYPE_RETURN_TO_DATA_MANAGER: {
                            disableTvrc = TRUE;
                            *initialScene = SCENE_REBOOT;
                            *initialSubScene = REBOOT_DATA_MANAGEMENT;
                            System::getResetHandler()->enableResetToMenu();
                            break;
                        }
                        case BS2_BOOT_TYPE_RETURN_TO_MENU: {
                            System::stopCreateAfterReq();
                            System::stopCreateLibManagerReq();
                            *initialScene = SCENE_BACK_MENU;
                            System::getResetHandler()->enableResetToMenu();
                            break;
                        }
                        case BS2_BOOT_TYPE_RETURN_ARGS: {
                            if (System::getBS2LaunchCode() == System::LAUNCH_CODE_INTERNET_SETTING) {
                                *initialScene = SCENE_REBOOT;
                                *initialSubScene = REBOOT_INTERNET_SETTINGS;
                                disableTvrc /* = TRUE*/ = *initialSubScene; // This screams fakematch.
                                System::getResetHandler()->enableResetToMenu();
                            }
                            else if (System::getBS2LaunchCode() == System::LAUNCH_CODE_DATA_MANAGER) {
                                disableTvrc = TRUE;
                                *initialScene = SCENE_REBOOT;
                                *initialSubScene = REBOOT_DATA_MANAGEMENT;
                                System::getResetHandler()->enableResetToMenu();
                            }
                            else {
                                System::stopCreateAfterReq();
                                System::stopCreateLibManagerReq();
                                *initialScene = SCENE_HEALTH;
                            }
                            break;
                        }
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
