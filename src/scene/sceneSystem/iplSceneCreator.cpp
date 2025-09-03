#include "scene/iplSceneCreator.h"

#include "scene/iplRootScene.h"
#include "scene/channelSelect/iplChannelSelect.h"
#include "scene/channelTitle/iplChannelTitle.h"
#include "scene/board/iplBoard.h"
#include "scene/button/iplButton.h"
#include "scene/calendar/iplCalendar.h"
#include "scene/mailAddSel/iplMailAddressSelect.h"
#include "scene/textWriter/iplTextWriter.h"
#include "scene/letterWriter/iplLetterWriter.h"
#include "scene/channelEdit/iplChannelEdit.h"
#include "scene/memory/iplMemory.h"
#include "scene/memoryCard/iplMemoryCard.h"
#include "scene/setting/iplSetting.h"
#include "scene/settingSelect/iplSettingSelect.h"
#include "scene/settingSelect/iplSettingButton.h"
#include "scene/settingSelect/iplSettingBg.h"
#include "scene/address/iplAddress.h"
#include "scene/address/iplAddressEdit.h"
#include "scene/address/iplAddressAddSel.h"
#include "scene/nakamuraTest/iplNakamuraTest.h"
#include "scene/health/iplHealth.h"
#include "scene/parentalDialog/iplParentalDialog.h"
#include "scene/faceSelect/iplFaceSelect.h"
#include "scene/kitayamaTest/iplKitayamaTest.h"
#include "scene/backMenu/iplBackMenu.h"
#include "scene/limitOver/iplLimitOver.h"
#include "scene/misc/iplReboot.h"
#include "scene/sdChannelSelect/iplSDChannelSelect.h"
#include "scene/sdChannelTitle/iplSDChannelTitle.h"
#include "scene/sdButton/iplSDButton.h"

namespace ipl {
    namespace scene {
        int Creator::size(int sceneId) {
            switch (sceneId) {
                case SCENE_CHANNEL_SELECT:
                case SCENE_CHANNEL_TITLE:
                case SCENE_BOARD:
                case SCENE_CALENDAR:
                case SCENE_CHANNEL_EDIT:
                case SCENE_MEMORY:
                case SCENE_MEMORY_CARD:
                case SCENE_UNUSED_16:
                case SCENE_UNUSED_17:
                case SCENE_SETTING:
                case SCENE_SETTING_SELECT:
                case SCENE_NAKAMURA_TEST:
                case SCENE_HEALTH:
                case SCENE_KITAYAMA_TEST:
                case SCENE_LIMIT_OVER:
                case SCENE_SD_CHANNEL_SELECT:
                case SCENE_SD_CHANNEL_TITLE: {
                    return SCENE_BIG_SIZE;
                }
                case SCENE_BUTTON:
                case SCENE_MAIL_ADDRESS_SELECT:
                case SCENE_UNUSED_9:
                case SCENE_ADDRESS:
                case SCENE_SETTING_BUTTON:
                case SCENE_PARENTAL_DIALOG:
                case SCENE_FACE_SELECT:
                case SCENE_BACK_MENU:
                case SCENE_SD_BUTTON: {
                    return SCENE_MEDIUM_SIZE;
                }
                case SCENE_NONE:
                case SCENE_ROOT:
                case SCENE_ARROW:
                case SCENE_TEXT_WRITER:
                case SCENE_LETTER_WRITER:
                case SCENE_UNUSED_15:
                case SCENE_SETTING_BG:
                case SCENE_ADDRESS_EDIT:
                case SCENE_ADDRESS_ADD_SELECT:
                case SCENE_REBOOT:
                case SCENE_UNUSED_33:
                default: {
                    return SCENE_SMALL_SIZE;
                }
            }
        }

        SceneObj* Creator::create(int sceneId, EGG::Heap* heap, void* arg) {
            SceneObj* scene = NULL;

            switch (sceneId) {
                case SCENE_ROOT: {
                    scene = new RootScene(heap, (int)arg);
                    break;
                }
                case SCENE_CHANNEL_SELECT: {
                    scene = new ChannelSelect(heap, (int)arg);
                    break;
                }
                case SCENE_CHANNEL_TITLE: {
                    scene = new ChannelTitle(heap, (ChannelSelect*)arg);
                    break;
                }
                case SCENE_BOARD: {
                    scene = new Board(heap, (int)arg);
                    break;
                }
                case SCENE_BUTTON: {
                    scene = new Button(heap);
                    break;
                }
                case SCENE_ARROW: {
                    scene = new Arrow(heap);
                    break;
                }
                case SCENE_CALENDAR: {
                    scene = new Calendar(heap);
                    break;
                }
                case SCENE_MAIL_ADDRESS_SELECT: {
                    scene = new MailAddressSelect(heap);
                    break;
                }
                case SCENE_CHANNEL_EDIT: {
                    scene = new ChannelEdit(heap);
                    break;
                }
                case SCENE_MEMORY: {
                    scene = new Memory(heap);
                    break;
                }
                case SCENE_MEMORY_CARD: {
                    scene = new MemoryCard(heap);
                    break;
                }
                case SCENE_SETTING: {
                    scene = new Setting(heap, (int)arg);
                    break;
                }
                case SCENE_SETTING_SELECT: {
                    scene = new SettingSelect(heap, (int)arg);
                    break;
                }
                case SCENE_ADDRESS: {
                    scene = new Address(heap, (int)arg);
                    break;
                }
                case SCENE_SETTING_BG: {
                    scene = new SettingBg(heap, (int)arg);
                    break;
                }
                case SCENE_SETTING_BUTTON: {
                    scene = new SettingButton(heap, (int)arg);
                    break;
                }
                case SCENE_ADDRESS_EDIT: {
                    scene = new AddressEdit(heap, (int)arg);
                    break;
                }
                case SCENE_ADDRESS_ADD_SELECT: {
                    scene = new AddressAddSel(heap);
                    break;
                }
                case SCENE_TEXT_WRITER: {
                    scene = new TextWriter(heap);
                    break;
                }
                case SCENE_LETTER_WRITER: {
                    scene = new LetterWriter(heap, (int)arg);
                    break;
                }
                case SCENE_NAKAMURA_TEST: {
                    scene = new NakamuraTest(heap);
                    break;
                }
                case SCENE_KITAYAMA_TEST: {
                    scene = new KitayamaTest(heap, (int)arg);
                    break;
                }
                case SCENE_HEALTH: {
                    scene = new skHealth(heap);
                    break;
                }
                case SCENE_PARENTAL_DIALOG: {
                    scene = new ParentalDialog(heap, (int)arg);
                    break;
                }
                case SCENE_FACE_SELECT: {
                    scene = new FaceSelect(heap, (int)arg);
                    break;
                }
                case SCENE_BACK_MENU: {
                    scene = new BackMenu(heap);
                    break;
                }
                case SCENE_LIMIT_OVER: {
                    scene = new LimitOver(heap);
                    break;
                }
                case SCENE_REBOOT: {
                    scene = new Reboot(heap, (int)arg);
                    break;
                }
                case SCENE_SD_CHANNEL_SELECT: {
                    scene = new SDChannelSelect(heap);
                    break;
                }
                case SCENE_SD_CHANNEL_TITLE: {
                    scene = new SDChannelTitle(heap, (SDChannelSelect*)arg);
                    break;
                }
                case SCENE_SD_BUTTON: {
                    scene = new SDButton(heap);
                    break;
                }
                case SCENE_SD_ARROW: {
                    scene = new SDArrow(heap);
                    break;
                }
                default: {
                    break;
                }
            }

            return scene;
        }
    }
}
