
#include "scene/memory/iplMemory.h"

#include "scene/settingSelect/iplSettingButton.h"
#include "scene/settingSelect/iplSettingSelect.h"

#include "sound/iplSound.h"

namespace ipl {
    namespace scene {
        typedef struct {
            wchar_t digits[10];
        } SCNumber;
        static const SCNumber scNumber = {L'0', L'1', L'2', L'3', L'4', L'5', L'6', L'7', L'8', L'9'};
        static const SCNumber scNumber2 = {L'0', L'1', L'2', L'3', L'4', L'5', L'6', L'7', L'8', L'9'};

        // clang-format off
        const char* panes[3][15] = {
            "N_Data_a_00", "N_Data_a_01", "N_Data_a_02", "N_Data_a_03", "N_Data_a_04",
            "N_Data_a_05", "N_Data_a_06", "N_Data_a_07", "N_Data_a_08", "N_Data_a_09",
            "N_Data_a_10", "N_Data_a_11", "N_Data_a_12", "N_Data_a_13", "N_Data_a_14",

            "N_Data_b_00", "N_Data_b_01", "N_Data_b_02", "N_Data_b_03", "N_Data_b_04",
            "N_Data_b_05", "N_Data_b_06", "N_Data_b_07", "N_Data_b_08", "N_Data_b_09",
            "N_Data_b_10", "N_Data_b_11", "N_Data_b_12", "N_Data_b_13", "N_Data_b_14",

            "N_Data_c_00", "N_Data_c_01", "N_Data_c_02", "N_Data_c_03", "N_Data_c_04",
            "N_Data_c_05", "N_Data_c_06", "N_Data_c_07", "N_Data_c_08", "N_Data_c_09",
            "N_Data_c_10", "N_Data_c_11", "N_Data_c_12", "N_Data_c_13", "N_Data_c_14",
        };
        // clang-format on

        Memory::Memory(EGG::Heap* heap)
            : scene::Base(heap), mState(MEMORY_STATE_ON_NORMAL), pSavedataBase(NULL), pSavedataEdit(NULL), pNandSDCardManager(NULL),
              mPage(MEMORY_PAGE_WII), pCurrBox(NULL), mPageOffset(0), mSdState(NandSDWorker::SD_STATE_INITIAL), mArwRVisible(false),
              mArwLVisible(false), mProcessType(MEMORY_PROC_NUL) {
            System::stopReceiveSchedule();
            nw4r::ut::List_Init(&mSavedataBoxList, offsetof(SavedataBox, mLink));
        }
        Memory::~Memory() {
            delete pSavedataBase;
            delete pSavedataEdit;
            delete pNandSDCardManager;

            SavedataBox* currBox = (SavedataBox*)nw4r::ut::List_GetNext(&mSavedataBoxList, NULL);
            while (currBox != NULL) {
                nw4r::ut::List_Remove(&mSavedataBoxList, currBox);
                delete currBox;
                currBox = (SavedataBox*)nw4r::ut::List_GetNext(&mSavedataBoxList, NULL);
            }

            for (int i = 0; i < 15; i++) {
                delete mTextBalloonArr[i];
            }
        }

        void Memory::prepare() {
            System::getBS2Manager()->abort();

            pWiiMemLytFile = System::getNandManager()->readLayoutAsync(getSceneHeap(), "wiiMem.ash");
            pBalloonLytFile = System::getNandManager()->readLayoutAsync(getSceneHeap(), "balloon.ash");
            pCorruptTexFile = System::getNandManager()->readAsync(getSceneHeap(), "corrupt_texture.tpl");
        }

        void Memory::create() {
            System::getMem2App()->dump();

            u32 bs2AbortStart = OSGetTick();
            while (System::getBS2Manager()->getIPLState() != bs2::IPL_STATE_8) {
                System::getBS2Manager()->update();
                OSReport(" ... wait for bs2 abord\n");
                VIWaitForRetrace();
            }
            u32 bs2AbortEnd = OSGetTick();
            OSReport("*** BS2 abort costs: %dms\n", OSTicksToMilliseconds(bs2AbortEnd - bs2AbortStart));

            ES_SetUid(SYSMENU_TITLE_ID);

            pSavedataBase = new SavedataBase(System::getMem2App(), pWiiMemLytFile, "arc", "it_ObjCubeEdit_a.brlyt");
            pSavedataBase->anmFadein();

            for (int i = 0; i < 45; i++) {
                nw4r::ut::List_Append(&mSavedataBoxList, new SavedataBox(System::getMem2App(), pWiiMemLytFile, "arc", "it_ObjDataEdit_b.brlyt"));
            }

            pSavedataEdit = new SavedataEdit(System::getMem2App(), pWiiMemLytFile, "arc", "081210_sys4_mn_DataDetail_a.brlyt");

            pNandSDCardManager = new (System::getMem2App(), 32) NandSDCardManager(NandSDCardManager::NAND_MANAGER_MODE_SAVES);

            for (int i = 0; i < 15; i++) {
                nw4r::lyt::Pane* currPane = pSavedataBase->getLytObject()->FindPaneByName(panes[1][i]);
                nw4r::math::VEC3 translation(0, 0, 0);
                PSMTXMultVec(currPane->GetGlobalMtx(), translation, translation);
                translation.y -= 55.0f;

                mTextBalloonArr[i] = new TextBalloon(getSceneHeap(), pBalloonLytFile, "arc", "my_IplTopBalloon_a.brlyt", translation, 90.f, 60.f);

                SavedataBox* box = (SavedataBox*)nw4r::ut::List_GetNth(&mSavedataBoxList, i + 15);
                box->setTextBalloon(mTextBalloonArr[i]);
            }

            TPLBind((TPLPalette*)pCorruptTexFile->getBuffer());
            send_getbanner_cmd(true);
            mState = MEMORY_STATE_ON_FADEIN1ST;
        }

        void Memory::calc() {
            pNandSDCardManager->calc();

            SettingSelect* sceneSettingSelect = (SettingSelect*)System::getScene(SCENE_SETTING_SELECT);
            if (!sceneSettingSelect->isWaitingChild())
                return;

            pSavedataBase->calc();

            SavedataBox* currBox = NULL;
            while (currBox = (SavedataBox*)nw4r::ut::List_GetNext(&mSavedataBoxList, currBox), currBox != NULL)
                currBox->calc();

            pSavedataEdit->calc();

            for (int i = 0; i < 15; i++)
                mTextBalloonArr[i]->calc();

            switch (mState) {
                case MEMORY_STATE_ON_NORMAL:
                    on_normal();
                    break;
                case MEMORY_STATE_ON_FADEIN1ST:
                    on_fadein1st();
                    break;
                case MEMORY_STATE_ON_FADEIN2ND:
                    on_fadein2nd();
                    break;
                case MEMORY_STATE_ON_FADEOUT1ST:
                    on_fadeout1st();
                    break;
                case MEMORY_STATE_ON_FADEOUT2ND:
                    on_fadeout2nd();
                    break;
                case MEMORY_STATE_ON_SCROLL_R:
                    on_scroll_r();
                    break;
                case MEMORY_STATE_ON_SCROLL_L:
                    on_scroll_l();
                    break;
                case MEMORY_STATE_ON_CHANGE_TAG1ST:
                    on_change_tag1st();
                    break;
                case MEMORY_STATE_ON_CHANGE_TAG2ND:
                    on_change_tag2nd();
                    break;
                case MEMORY_STATE_ON_TRIG_COPY:
                    on_trig_copy();
                    break;
                case MEMORY_STATE_ON_UNUSED_0x0A:
                    break;
                case MEMORY_STATE_ON_EDIT:
                    on_edit();
                    break;
                case MEMORY_STATE_ON_EDIT_FADEIN:
                    on_edit_fadein();
                    break;
                case MEMORY_STATE_ON_EDIT_FADEOUT1ST:
                    on_edit_fadeout1st();
                    break;
                case MEMORY_STATE_ON_EDIT_FADEOUT2ND:
                    on_edit_fadeout2nd();
                    break;
                case MEMORY_STATE_ON_VERIFY1ST:
                    on_verify1st();
                    break;
                case MEMORY_STATE_ON_VERIFY2ND:
                    on_verify2nd();
                    break;
                case MEMORY_STATE_ON_VERIFY_COPY:
                    on_verify_copy();
                    break;
                case MEMORY_STATE_ON_VERIFY_DEL:
                    on_verify_del();
                    break;
                case MEMORY_STATE_ON_VERIFY_FORMAT:
                    on_verify_format();
                    break;
                case MEMORY_STATE_ON_END_FORMAT:
                    on_end_format();
                    break;
                case MEMORY_STATE_ON_SD_MOUNT:
                    on_sd_mount();
                    break;
                case MEMORY_STATE_ON_SD_MESSAGE1ST:
                    on_sd_message1st();
                    break;
                case MEMORY_STATE_ON_SD_MESSAGE2ND:
                    on_sd_message2nd();
                    break;
                case MEMORY_STATE_ON_SD_MESSAGE3RD:
                    on_sd_message3rd();
                    break;
                case MEMORY_STATE_ON_PROCESS:
                    on_process();
                    break;
                case MEMORY_STATE_ON_END_PROCESS:
                    on_end_process();
                    break;
                case MEMORY_STATE_ON_EXIST_SAVE:
                    on_exist_save();
                    break;
                case MEMORY_STATE_ON_SD_MOUNT_ONLY:
                    on_sd_mount_only();
                    break;
                case MEMORY_STATE_ON_TRIG_MOVE:
                    on_trig_move();
                    break;
                case MEMORY_STATE_ON_VERIFY_MOVE:
                    on_verify_move();
                    break;
            }
        }

        void Memory::setpos_savedata_box() {
            int i;
            SavedataBox* box;

            i = 0;
            box = NULL;
            while (box = (SavedataBox*)nw4r::ut::List_GetNext(&mSavedataBoxList, box), box != NULL) {
                nw4r::lyt::Pane* currPane = pSavedataBase->getLytObject()->FindPaneByName(panes[0][i]);
                nw4r::math::VEC3 translation(0, 0, 0);
                PSMTXMultVec(currPane->GetGlobalMtx(), translation, translation);
                box->setTranslate(translation);
                i++;

                if (box->getTextBalloon() != NULL) {
                    box->getTextBalloon()->terminate();
                    box->setTextBalloonInitialized(false);
                }
            }
        }
        void Memory::fadein_savedata_box() {
            int i = 0;
            SavedataBox* box = NULL;
            while (box = (SavedataBox*)nw4r::ut::List_GetNext(&mSavedataBoxList, box), box != NULL) {
                nw4r::lyt::Pane* currPane = pSavedataBase->getLytObject()->FindPaneByName(panes[0][i]);
                nw4r::math::VEC3 translation(0, 0, 0);
                PSMTXMultVec(currPane->GetGlobalMtx(), translation, translation);
                box->setTranslate(translation);

                box->anmFadein();
                i++;
            }
        }
        void Memory::fadeout_savedata_box() {
            SavedataBox* box;
            box = NULL;
            while (box = (SavedataBox*)nw4r::ut::List_GetNext(&mSavedataBoxList, box), box != NULL) {
                box->setBannerFileInfo(NULL);
                box->anmFadeout();
            }
        }

        void Memory::send_getbanner_cmd(bool isWiiNotSD) {
            for (int i = 0; i < 15; i++) {
                SavedataBox* box = (SavedataBox*)nw4r::ut::List_GetNth(&mSavedataBoxList, i + 15);
                pNandSDCardManager->cmdGetWiiBanner(box, mPageOffset + i, isWiiNotSD);
            }
        }

        void Memory::update_sdcard_slot() {
            if (mPage != MEMORY_PAGE_SD)
                return;

            mSdState = pNandSDCardManager->getWorker()->get_sd_state();
            if (mSdState == NandSDWorker::SD_STATE_READY)
                return;

            pNandSDCardManager->cmdCleanQueue();

            mPageOffset = 0;

            SavedataBox* box;
            box = NULL;
            while (box = (SavedataBox*)nw4r::ut::List_GetNext(&mSavedataBoxList, box), box != NULL) {
                if (box->getTextBalloon() != NULL) {
                    box->getTextBalloon()->terminate();
                    box->setTextBalloonInitialized(false);
                }
            }

            switch (mState) {
                case MEMORY_STATE_ON_NORMAL:
                    fadeout_savedata_box();
                    mState = MEMORY_STATE_ON_CHANGE_TAG1ST;
                    break;
                case MEMORY_STATE_ON_EDIT:
                    pSavedataEdit->anmClear();
                    pSavedataEdit->anmFadeout();
                    mState = MEMORY_STATE_ON_EDIT_FADEOUT2ND;
                    break;
                case MEMORY_STATE_ON_VERIFY_COPY:
                case MEMORY_STATE_ON_VERIFY_DEL:
                case MEMORY_STATE_ON_VERIFY_MOVE:
                    System::getDialog()->terminate();
                    pSavedataEdit->anmClear();
                    pSavedataEdit->anmSelectFadein();
                    mState = MEMORY_STATE_ON_EDIT_FADEIN;
                    break;
                case MEMORY_STATE_ON_VERIFY1ST:
                    pSavedataEdit->anmClear();
                    pSavedataEdit->anmSelectFadein();
                    mState = MEMORY_STATE_ON_VERIFY2ND;
                    break;
                default:
                    break;
            }
        }

        void Memory::update_arw() {
            if (!mArwRVisible && enable_scroll_r()) {
                pSavedataBase->anmArwAppear(true, false);
                mArwRVisible = true;
            } else if (mArwRVisible && !enable_scroll_r()) {
                pSavedataBase->anmArwDisappear(true, false);
                mArwRVisible = false;
            }
            if (!mArwLVisible && enable_scroll_l()) {
                pSavedataBase->anmArwAppear(false, true);
                mArwLVisible = true;
            } else if (mArwLVisible && !enable_scroll_l()) {
                pSavedataBase->anmArwDisappear(false, true);
                mArwLVisible = false;
            }
        }
        void Memory::update_free() {
            if (!mPage)
                update_nand_free();
            else
                update_sd_free();
        }
        void Memory::update_nand_free() {
            int blocksFree = pNandSDCardManager->getNandBlocksFree();
            if (blocksFree < 0) {
                pSavedataBase->set_visible("N_Capa_00", false);
                pSavedataBase->set_visible("T_Capa_00", false);
                return;
            }

            SCNumber scDigitData = scNumber;
            wchar_t digits[5] = L"";
            wchar_t blocksFreeMsg[0x40] = L"";

            digits[0] = scDigitData.digits[blocksFree / 1000];
            digits[1] = scDigitData.digits[blocksFree / 100 % 10];
            digits[2] = scDigitData.digits[blocksFree / 10 % 10];
            digits[3] = scDigitData.digits[blocksFree % 10];

            int zeroOffset;
            for (zeroOffset = 0; zeroOffset < 3; zeroOffset++)
                if (digits[zeroOffset] != L'0')
                    break;

            int blockOpenOffset = 0;

            const wchar_t* blockOpenMsg = System::getMessage(MESG_CHAN_EDIT_BLOCKS_OPEN);
            const wchar_t* unkMsg = System::getMessage(MESG_CHAN_EDIT_BLANK);

            while (true) {
                wchar_t chr = *blockOpenMsg++;
                blocksFreeMsg[blockOpenOffset++] = chr;
                if (chr == L'\0')
                    break;
            };
            blocksFreeMsg[--blockOpenOffset] = L' ';
            wcscpy(blocksFreeMsg + blockOpenOffset, digits + zeroOffset);

            wcscat(blocksFreeMsg, unkMsg);

            pSavedataBase->set_visible("T_Capa_00", true);
            pSavedataBase->set_visible("N_Capa_00", true);
            pSavedataBase->set_textbox("T_Capa_00", blocksFreeMsg);
        }
        void Memory::update_sd_free() {
            if (pNandSDCardManager->getWorker()->get_sd_state() != NandSDWorker::SD_STATE_READY) {
                pSavedataBase->set_visible("N_Capa_00", false);
                pSavedataBase->set_visible("T_Capa_00", false);
                return;
            }

            int blocksFree = pNandSDCardManager->getSDBlocksFree();
            if (blocksFree < 0) {
                pSavedataBase->set_visible("N_Capa_00", false);
                pSavedataBase->set_visible("T_Capa_00", false);
                return;
            }

            SCNumber scDigitData = scNumber2;
            wchar_t digits[7] = L"";
            wchar_t blocksFreeMsg[0x40] = L"";

            digits[0] = scDigitData.digits[blocksFree / 100000];
            digits[1] = scDigitData.digits[blocksFree / 10000 % 10];
            digits[2] = scDigitData.digits[blocksFree / 1000 % 10];
            digits[3] = scDigitData.digits[blocksFree / 100 % 10];
            digits[4] = scDigitData.digits[blocksFree / 10 % 10];
            digits[5] = scDigitData.digits[blocksFree % 10];

            int zeroOffset;
            for (zeroOffset = 0; zeroOffset < 5; zeroOffset++)
                if (digits[zeroOffset] != L'0')
                    break;

            int blockOpenOffset = 0;

            const wchar_t* blockOpenMsg = System::getMessage(MESG_CHAN_EDIT_BLOCKS_OPEN);
            const wchar_t* unkMsg = System::getMessage(MESG_CHAN_EDIT_BLANK);

            while (true) {
                wchar_t chr = *blockOpenMsg++;
                blocksFreeMsg[blockOpenOffset++] = chr;
                if (chr == L'\0')
                    break;
            };
            blocksFreeMsg[--blockOpenOffset] = L' ';
            wcscpy(blocksFreeMsg + blockOpenOffset, digits + zeroOffset);

            wcscat(blocksFreeMsg, unkMsg);

            pSavedataBase->set_visible("T_Capa_00", true);
            pSavedataBase->set_visible("N_Capa_00", true);
            pSavedataBase->set_textbox("T_Capa_00", blocksFreeMsg);
        }

        void Memory::start_process(int processType) {
            System::getHomeButtonMenu()->disable();

            mProcessType = processType;

            snd::getSystem()->startSE("WIPL_SE_COPYING");
            if (processType == MEMORY_PROC_FMT) {
                pSavedataEdit->anmShowBtn0Dialog(MESG_MEMORY_FORMATTING, true, true);
            } else {
                pSavedataEdit->anmStartWaitAnm();
            }
            mState = MEMORY_STATE_ON_PROCESS;
        }
        void Memory::stop_process() {
            System::getHomeButtonMenu()->enable();
            snd::getSystem()->startSE("WIPL_SE_COPY_FINISH");
            pSavedataEdit->anmStopWaitAnm();
        }

        void Memory::start_scroll_r(bool playButtonAnm, bool playSound) {
            pNandSDCardManager->cmdCleanQueue();

            SavedataBox* box = NULL;
            while (box = (SavedataBox*)nw4r::ut::List_GetNext(&mSavedataBoxList, box), box != NULL)
                box->clearEvent();

            if (playSound)
                snd::getSystem()->startSE("WSD_SELECT");

            pSavedataBase->anmScrollR(playButtonAnm);
            mState = MEMORY_STATE_ON_SCROLL_R;
        }

        void Memory::start_scroll_l(bool playButtonAnm, bool playSound) {
            pNandSDCardManager->cmdCleanQueue();

            SavedataBox* box = NULL;
            while (box = (SavedataBox*)nw4r::ut::List_GetNext(&mSavedataBoxList, box), box != NULL)
                box->clearEvent();

            if (playSound)
                snd::getSystem()->startSE("WSD_SELECT");

            pSavedataBase->anmScrollL(playButtonAnm);
            mState = MEMORY_STATE_ON_SCROLL_L;
        }

        bool Memory::enable_scroll_r() {
            if (mState != MEMORY_STATE_ON_NORMAL)
                return false;

            if (mPage == MEMORY_PAGE_WII) {
                return pNandSDCardManager->getWorker()->get_nand_save_num() - mPageOffset > 15;
            } else {
                if (pNandSDCardManager->getWorker()->get_sd_state() == NandSDWorker::SD_STATE_READY)
                    return pNandSDCardManager->getWorker()->get_sd_save_num() - mPageOffset > 15;
                else
                    return false;
            }
        }
        bool Memory::enable_scroll_l() {
            if (mState != MEMORY_STATE_ON_NORMAL)
                return false;
            return mPageOffset > 0;
        }

        void Memory::draw() {
            if (!System::onDefaultDrawLayer())
                return;

            utility::Graphics::setOrtho(0);
            pSavedataBase->draw();

            SavedataBox* box = NULL;
            while (box = (SavedataBox*)nw4r::ut::List_GetNext(&mSavedataBoxList, box), box != NULL)
                box->draw();

            for (int i = 0; i < 15; i++) {
                mTextBalloonArr[i]->draw();
            }

            pSavedataBase->getLytObject()->draw("N_ArwR");
            pSavedataBase->getLytObject()->draw("N_ArwL");

            pSavedataEdit->draw();
        }

        BOOL Memory::isResetAcceptable() const {
            return mProcessType == MEMORY_PROC_NUL;
        }

        void Memory::onPoint(AnmPane* pane) {
            if ((strcmp(pane->getName(), "B_SelectWii_00") == 0 && mPage == MEMORY_PAGE_WII) ||
                (strcmp(pane->getName(), "B_SelectSd_00") == 0 && mPage == MEMORY_PAGE_SD))
                return;

            snd::getSystem()->startSE("WIPL_SE_BT_TARGETTING");

            controller::Interface* controller = System::getYoungController();
            if (controller != NULL)
                controller->rumble();
            pane->on_cmd_recv(AnmPane::ANIM_CMD_POINT);
        }
        void Memory::onLeft(AnmPane* pane) {
            if ((strcmp(pane->getName(), "B_SelectWii_00") == 0 && mPage == MEMORY_PAGE_WII) ||
                (strcmp(pane->getName(), "B_SelectSd_00") == 0 && mPage == MEMORY_PAGE_SD))
                return;

            pane->on_cmd_recv(AnmPane::ANIM_CMD_LEFT);
        }
        void Memory::onTrig(AnmPane* pane) {
            if (mState != MEMORY_STATE_ON_NORMAL && mState != MEMORY_STATE_ON_SD_MESSAGE1ST)
                return;

            if (strcmp(pane->getName(), "B_SelectWii_00") == 0 && mPage == MEMORY_PAGE_SD) {
                SavedataBox* box = NULL;
                while (box = (SavedataBox*)nw4r::ut::List_GetNext(&mSavedataBoxList, box), box != NULL)
                    box->setBannerFileInfo(NULL);

                snd::getSystem()->startSE("WIPL_SE_BT_PUSH");

                mPageOffset = 0;
                pNandSDCardManager->cmdCleanQueue();
                pNandSDCardManager->cmdListNand();
                mPage = MEMORY_PAGE_WII;

                pSavedataBase->anmArwDisappear(mArwRVisible, mArwLVisible);
                mArwRVisible = false;
                mArwLVisible = false;

                pSavedataBase->set_visible("N_Capa_00", false);
                pSavedataBase->set_visible("T_Capa_00", false);

                if (mState == MEMORY_STATE_ON_NORMAL) {
                    pSavedataBase->anmChangeWiitoSD();
                    fadeout_savedata_box();
                    mState = MEMORY_STATE_ON_CHANGE_TAG1ST;
                } else {
                    pSavedataBase->anmTextFadeout();
                    mState = MEMORY_STATE_ON_SD_MESSAGE3RD;
                }
            } else if (strcmp(pane->getName(), "B_SelectSd_00") == 0 && mPage == MEMORY_PAGE_WII) {
                SavedataBox* box = NULL;
                while (box = (SavedataBox*)nw4r::ut::List_GetNext(&mSavedataBoxList, box), box != NULL)
                    box->setBannerFileInfo(NULL);

                snd::getSystem()->startSE("WIPL_SE_BT_PUSH");

                pNandSDCardManager->cmdSDMount();
                mPageOffset = 0;
                pNandSDCardManager->cmdCleanQueue();
                pNandSDCardManager->cmdListSD();
                mPage = MEMORY_PAGE_SD;

                pSavedataBase->anmArwDisappear(mArwRVisible, mArwLVisible);
                mArwRVisible = false;
                mArwLVisible = false;

                pSavedataBase->set_visible("N_Capa_00", false);
                pSavedataBase->set_visible("T_Capa_00", false);

                if (mState == MEMORY_STATE_ON_NORMAL) {
                    pSavedataBase->anmChangeSDtoWii();
                    fadeout_savedata_box();
                    mState = MEMORY_STATE_ON_CHANGE_TAG1ST;
                } else {
                    pSavedataBase->anmTextFadeout();
                    mState = MEMORY_STATE_ON_SD_MESSAGE3RD;
                }
            } else if (strcmp(pane->getName(), "B_ArwR") == 0 && enable_scroll_r()) {
                start_scroll_r(true, true);
            } else if (strcmp(pane->getName(), "B_ArwL") == 0 && enable_scroll_l()) {
                start_scroll_l(true, true);
            }
        }
        void Memory::onTrig(SavedataBox* box) {
            if (mState != MEMORY_STATE_ON_NORMAL)
                return;

            pCurrBox = box;
            if (box->getTextBalloon() != NULL)
                box->getTextBalloon()->terminate();

            pSavedataEdit->anmFadein(box);
            snd::getSystem()->startSE("WIPL_SE_DECIDE");
            mState = MEMORY_STATE_ON_EDIT_FADEIN;
        }
        void Memory::onTrigButton(bool isErr) {
            pSavedataBase->anmArwDisappear(mArwRVisible, mArwLVisible);

            pSavedataBase->anmFadeout(isErr);
            if (!isErr) {
                fadeout_savedata_box();
            }
            pNandSDCardManager->cmdTerminate();
            mState = MEMORY_STATE_ON_FADEOUT1ST;
        }
        void Memory::onTrigCopy() {
            if (mPage == MEMORY_PAGE_WII) {
                pNandSDCardManager->cmdSDMount();
            } else {
                pNandSDCardManager->cmdExistNandSave(pCurrBox->getBanner()->getSDTitleId());
            }
            mActionIntent = MEMORY_INTENT_COPY;
            mState = MEMORY_STATE_ON_TRIG_COPY;
            return;
        }
        void Memory::onTrigDel() {
            if (mPage == MEMORY_PAGE_SD) {
                mSdState = pNandSDCardManager->getWorker()->get_sd_state();
                switch (mSdState) {
                    case NandSDWorker::SD_STATE_READY:
                        if (pNandSDCardManager->isSDWriteProtected()) {
                            pSavedataEdit->anmSelectFadeout(MESG_MEMORY_SD_CARD_LOCKED);
                            mState = MEMORY_STATE_ON_VERIFY1ST;
                        } else {
                            pSavedataEdit->anmShowS2Btn2Dialog(MESG_MEMORY_ERASE_Q);
                            mState = MEMORY_STATE_ON_VERIFY_DEL;
                        }
                        break;
                    default:
                        pSavedataEdit->anmSelectFadeout(MESG_MEMORY_SD_PROCESS_FAILED);
                        mState = MEMORY_STATE_ON_VERIFY1ST;
                        break;
                }
            } else {
                pSavedataEdit->anmShowS2Btn2Dialog(MESG_MEMORY_ERASE_Q);
                mState = MEMORY_STATE_ON_VERIFY_DEL;
            }
        }

        void Memory::onTrigMove() {
            if (mPage == MEMORY_PAGE_WII) {
                pNandSDCardManager->cmdSDMount();
            } else {
                pNandSDCardManager->cmdExistNandSave(pCurrBox->getBanner()->getSDTitleId());
            }
            mActionIntent = MEMORY_INTENT_MOVE;
            mState = MEMORY_STATE_ON_TRIG_MOVE;
        }

        void Memory::getCorruptIconTexture(GXTexObj* out) const {
            TPLGetGXTexObjFromPalette((TPLPalette*)pCorruptTexFile->getBuffer(), out, 1);
        }
        void Memory::getCorruptBannerTexture(GXTexObj* out) const {
            TPLGetGXTexObjFromPalette((TPLPalette*)pCorruptTexFile->getBuffer(), out, 0);
        }

        void Memory::on_normal() {
            SettingButton* sceneSettingButton = (SettingButton*)System::getScene(SCENE_SETTING_BUTTON);
            if (sceneSettingButton->update()) {
                onTrigButton(false);
                return;
            }

            update_sdcard_slot();
            update_arw();
            update_free();

            pSavedataBase->update();

            SavedataBox* box = NULL;
            while (box = (SavedataBox*)nw4r::ut::List_GetNext(&mSavedataBoxList, box), box != NULL)
                box->update();

            if (mPage == MEMORY_PAGE_WII) {
                if (mPageOffset == pNandSDCardManager->getWorker()->get_nand_save_num() && enable_scroll_l()) {
                    start_scroll_l(false, false);
                    return;
                }
            } else {
                if (mPageOffset == pNandSDCardManager->getWorker()->get_sd_save_num() && enable_scroll_l()) {
                    start_scroll_l(false, false);
                    return;
                }
            }

            controller::Interface* controller = System::getYoungController();
            if (controller != NULL) {
                if (controller->down(controller::BTN_NEXT_LEFT) && enable_scroll_l()) {
                    start_scroll_l(false, true);
                } else if (controller->down(controller::BTN_NEXT_RIGHT) && enable_scroll_r()) {
                    start_scroll_r(false, true);
                }
            }
        }
        void Memory::on_fadein1st() {
            if (!pSavedataBase->isIdle())
                return;
            if (pNandSDCardManager->isWorking())
                return;

            fadein_savedata_box();
            mState = MEMORY_STATE_ON_FADEIN2ND;
        }
        void Memory::on_fadein2nd() {
            SavedataBox* box = NULL;
            while (box = (SavedataBox*)nw4r::ut::List_GetNext(&mSavedataBoxList, box), box != NULL) {
                if (!box->isIdle())
                    return;
            }
            mState = MEMORY_STATE_ON_NORMAL;
        }
        void Memory::on_fadeout1st() {
            if (!pSavedataBase->isIdle())
                return;

            if (!pNandSDCardManager->isTerminated())
                return;

            mState = MEMORY_STATE_ON_FADEOUT2ND;
        }
        void Memory::on_fadeout2nd() {
            requestSceneDestruction();
            System::getBS2Manager()->restart();
            OSReport(" ... bs2 manager restarted\n");
        }
        void Memory::on_scroll_r() {
            if (pSavedataBase->isIdle()) {
                mPageOffset += 15;
                SavedataBox* box = NULL;
                while (box = (SavedataBox*)nw4r::ut::List_GetNext(&mSavedataBoxList, box), box != NULL)
                    box->setBannerFileInfo(NULL);

                send_getbanner_cmd(mPage == MEMORY_PAGE_WII);
                mState = MEMORY_STATE_ON_NORMAL;
            }
            setpos_savedata_box();
        }
        void Memory::on_scroll_l() {
            if (pSavedataBase->isIdle()) {
                mPageOffset -= 15;
                SavedataBox* box = NULL;
                while (box = (SavedataBox*)nw4r::ut::List_GetNext(&mSavedataBoxList, box), box != NULL)
                    box->setBannerFileInfo(NULL);

                send_getbanner_cmd(mPage == MEMORY_PAGE_WII);
                mState = MEMORY_STATE_ON_NORMAL;
            }
            setpos_savedata_box();
        }
        void Memory::on_change_tag1st() {
            if (pNandSDCardManager->isWorking() || !pNandSDCardManager->sdWorkerReadyMaybe())
                return;

            SavedataBox* box = NULL;
            while (box = (SavedataBox*)nw4r::ut::List_GetNext(&mSavedataBoxList, box), box != NULL) {
                if (!box->isIdle())
                    return;
                if (box->getBanner() != NULL)
                    box->setBannerFileInfo(NULL);
            }

            if (mPage == MEMORY_PAGE_SD) {
                mSdState = pNandSDCardManager->getWorker()->get_sd_state();
                switch (mSdState) {
                    case NandSDWorker::SD_STATE_SLOT_EMPTY:
                        if (!pSavedataBase->isIdle())
                            return;
                        pSavedataBase->anmTextFadein(MESG_MEMORY_NO_SD_CARD);
                        mState = MEMORY_STATE_ON_SD_MESSAGE1ST;
                        break;
                    case NandSDWorker::SD_STATE_NOT_MOUNTED:
                        pNandSDCardManager->cmdSDMount();
                        mState = MEMORY_STATE_ON_SD_MOUNT;
                        break;
                    case NandSDWorker::SD_STATE_BROKEN_MEDIA:
                    case NandSDWorker::SD_STATE_ILLEGAL_MEDIA:
                        if (!pSavedataBase->isIdle())
                            return;
                        pSavedataBase->anmTextFadein(MESG_MEMORY_SD_DEVICE_BAD);
                        mState = MEMORY_STATE_ON_SD_MESSAGE1ST;
                        break;
                    case NandSDWorker::SD_STATE_READY:
                        if (!pSavedataBase->isIdle())
                            return;
                        send_getbanner_cmd(false);
                        fadein_savedata_box();
                        mState = MEMORY_STATE_ON_CHANGE_TAG2ND;
                        break;
                    case NandSDWorker::SD_STATE_ERRORED:
                    default:
                        if (!pSavedataBase->isIdle())
                            return;
                        pSavedataBase->anmTextFadein(MESG_MEMORY_SD_PROCESS_FAILED);
                        mState = MEMORY_STATE_ON_SD_MESSAGE1ST;
                        break;
                }
            } else {
                send_getbanner_cmd(true);
                fadein_savedata_box();
                mState = MEMORY_STATE_ON_CHANGE_TAG2ND;
            }
        }
        void Memory::on_change_tag2nd() {
            SavedataBox* box = NULL;
            while (box = (SavedataBox*)nw4r::ut::List_GetNext(&mSavedataBoxList, box), box != NULL) {
                if (!box->isIdle())
                    return;
            }
            mState = MEMORY_STATE_ON_NORMAL;
        }
        void Memory::on_trig_copy() {
            if (pCurrBox->getBanner()->getFilePerms() == 1) {
                pSavedataEdit->anmSelectFadeout(MESG_MEMORY_FILE_CANT_BE_COPIED);
                mState = MEMORY_STATE_ON_VERIFY1ST;
                return;
            }
            if (pNandSDCardManager->isWorking())
                return;

            if (mPage == MEMORY_PAGE_WII) {
                mSdState = pNandSDCardManager->getWorker()->get_sd_state();
                switch (mSdState) {
                    case NandSDWorker::SD_STATE_SLOT_EMPTY:
                        pSavedataEdit->anmSelectFadeout(MESG_MEMORY_NO_SD_CARD);
                        mState = MEMORY_STATE_ON_VERIFY1ST;
                        break;
                    case NandSDWorker::SD_STATE_NOT_MOUNTED:
                        OSReport("NEED MOUNT\n");
                        pNandSDCardManager->cmdSDMount();
                        mState = MEMORY_STATE_ON_SD_MOUNT_ONLY;
                        break;
                    case NandSDWorker::SD_STATE_BROKEN_MEDIA:
                    case NandSDWorker::SD_STATE_ILLEGAL_MEDIA:
                        pSavedataEdit->anmSelectFadeout(MESG_MEMORY_SD_DEVICE_BAD);
                        mState = MEMORY_STATE_ON_VERIFY1ST;
                        break;
                    case NandSDWorker::SD_STATE_READY:
                        if (pNandSDCardManager->isSDWriteProtected()) {
                            pSavedataEdit->anmSelectFadeout(MESG_MEMORY_SD_CARD_LOCKED);
                            mState = MEMORY_STATE_ON_VERIFY1ST;
                            return;
                        }
                        pNandSDCardManager->cmdExistSDSave(pCurrBox->getBanner()->getWiiTitleId());
                        mState = MEMORY_STATE_ON_EXIST_SAVE;
                        break;
                    case NandSDWorker::SD_STATE_ERRORED:
                    default:
                        pSavedataEdit->anmSelectFadeout(MESG_MEMORY_SD_PROCESS_FAILED);
                        mState = MEMORY_STATE_ON_VERIFY1ST;
                        break;
                }
            } else {
                if (pNandSDCardManager->getAsyncResult()) {
                    pSavedataEdit->anmSelectFadeout(MESG_MEMORY_ALREADY_EXISTS_WII);
                    mState = MEMORY_STATE_ON_VERIFY1ST;
                } else {
                    pSavedataEdit->anmShowS2Btn2Dialog(MESG_MEMORY_COPY_TO_WII_Q);
                    mState = MEMORY_STATE_ON_VERIFY_COPY;
                }
            }
        }
        void Memory::on_edit_fadein() {
            if (!pSavedataEdit->isIdle())
                return;
            mState = MEMORY_STATE_ON_EDIT;
        }
        void Memory::on_edit() {
            if (pSavedataEdit->isIdle()) {
                SettingButton* sceneSettingButton = (SettingButton*)System::getScene(SCENE_SETTING_BUTTON);
                if (sceneSettingButton->update()) {
                    mState = MEMORY_STATE_ON_EDIT_FADEOUT1ST;
                    return;
                }
            }
            pSavedataEdit->update();
            update_sdcard_slot();
        }
        void Memory::on_edit_fadeout1st() {
            SettingButton* sceneSettingButton = (SettingButton*)System::getScene(SCENE_SETTING_BUTTON);
            if (!sceneSettingButton->isPlaying()) {
                pSavedataEdit->anmFadeout();
                mState = MEMORY_STATE_ON_EDIT_FADEOUT2ND;
            }
        }
        void Memory::on_edit_fadeout2nd() {
            if (!pSavedataEdit->isIdle())
                return;
            mState = MEMORY_STATE_ON_NORMAL;
        }
        void Memory::on_verify1st() {
            if (pSavedataEdit->isIdle()) {
                SettingButton* sceneSettingButton = (SettingButton*)System::getScene(SCENE_SETTING_BUTTON);
                if (sceneSettingButton->update()) {
                    pSavedataEdit->anmSelectFadein();
                    mState = MEMORY_STATE_ON_VERIFY2ND;
                }
            }
            mActionIntent = MEMORY_INTENT_NONE;
            update_sdcard_slot();
        }
        void Memory::on_verify2nd() {
            if (!pSavedataEdit->isIdle())
                return;
            mState = MEMORY_STATE_ON_EDIT;
        }
        void Memory::on_verify_copy() {
            if (!pSavedataEdit->isIdle() || pNandSDCardManager->isWorking())
                return;

            switch (System::getDialog()->getLastResult()) {
                case DialogWindow::RESULT_LEFT_BUTTON:
                    if (mPage == MEMORY_PAGE_WII) {
                        if (pNandSDCardManager->getWorker()->get_sd_state() == NandSDWorker::SD_STATE_READY) {
                            start_process(MEMORY_PROC_CPY);
                            pNandSDCardManager->cmdCopySaveNandToSD(pCurrBox->getBanner()->getWiiTitleId());
                            pSavedataEdit->anmTextFadein(MESG_MEMORY_COPYING_TO_SD);
                        } else if (pNandSDCardManager->getWorker()->get_sd_state() == NandSDWorker::SD_STATE_SLOT_EMPTY) {
                            pSavedataEdit->anmTextFadein(MESG_MEMORY_NO_SD_CARD);
                            mState = MEMORY_STATE_ON_END_PROCESS;
                            return;
                        } else {
                            pSavedataEdit->anmTextFadein(MESG_MEMORY_SD_PROCESS_FAILED);
                            mState = MEMORY_STATE_ON_END_PROCESS;
                            return;
                        }
                    } else {
                        start_process(MEMORY_PROC_CPY);
                        pNandSDCardManager->cmdCopySaveSDToNand(pCurrBox->getBanner()->getSDTitleId());
                        pSavedataEdit->anmTextFadein(MESG_MEMORY_COPYING_TO_WII);
                    }
                    break;
                case DialogWindow::RESULT_RIGHT_BUTTON:
                    pSavedataEdit->anmSelectFadein();
                    mState = MEMORY_STATE_ON_EDIT_FADEIN;
                    break;
            }
            update_sdcard_slot();
        }
        void Memory::on_verify_del() {
            if (!pSavedataEdit->isIdle())
                return;

            switch (System::getDialog()->getLastResult()) {
                case DialogWindow::RESULT_LEFT_BUTTON:
                    start_process(MEMORY_PROC_DEL);
                    if (mPage == MEMORY_PAGE_WII) {
                        pNandSDCardManager->cmdDelNandSave(pCurrBox);
                        pSavedataEdit->anmTextFadein(MESG_MEMORY_ERASING);
                    } else {
                        pNandSDCardManager->cmdDelSDSave(pCurrBox);
                        pSavedataEdit->anmTextFadein(MESG_MEMORY_ERASING_SD);
                    }
                    break;
                case DialogWindow::RESULT_RIGHT_BUTTON:
                    pSavedataEdit->anmSelectFadein();
                    mState = MEMORY_STATE_ON_EDIT_FADEIN;
                    break;
            }
            update_sdcard_slot();
        }
        void Memory::on_verify_format() {
            if (!pSavedataEdit->isIdle())
                return;

            switch (System::getDialog()->getLastResult()) {
                case DialogWindow::RESULT_LEFT_BUTTON:
                    start_process(MEMORY_PROC_FMT);
                    pNandSDCardManager->cmdSDFormat();
                    break;
                case DialogWindow::RESULT_RIGHT_BUTTON:
                    if (mPage == MEMORY_PAGE_WII) {
                        mState = MEMORY_STATE_ON_EDIT;
                    } else {
                        pSavedataBase->anmTextFadein(MESG_MEMORY_SD_DEVICE_BAD);
                        mState = MEMORY_STATE_ON_SD_MESSAGE1ST;
                    }
                    break;
            }
        }
        void Memory::on_end_format() {
            if (System::getDialog()->getLastResult() != DialogWindow::RESULT_WAIT)
                return;
            if (mPage == MEMORY_PAGE_WII) {
                mState = MEMORY_STATE_ON_EDIT;
            } else if (pNandSDCardManager->getWorker()->get_sd_state() != NandSDWorker::SD_STATE_INITIAL) {
                pSavedataBase->anmTextFadein(MESG_MEMORY_SD_DEVICE_BAD);
                mState = MEMORY_STATE_ON_SD_MESSAGE1ST;
            }
        }
        void Memory::on_sd_mount() {
            if (pNandSDCardManager->isWorking())
                return;
            pNandSDCardManager->cmdListSD();
            mState = MEMORY_STATE_ON_CHANGE_TAG1ST;
        }
        void Memory::on_sd_message1st() {
            if (!pSavedataEdit->isIdle())
                return;

            SettingButton* sceneSettingButton = (SettingButton*)System::getScene(SCENE_SETTING_BUTTON);
            if (sceneSettingButton->update()) {
                onTrigButton(true);
                return;
            }

            if (mSdState != pNandSDCardManager->getWorker()->get_sd_state() && pSavedataBase->isIdle()) {
                pSavedataBase->anmTextFadeout();
                mState = MEMORY_STATE_ON_SD_MESSAGE2ND;
            } else {
                pSavedataBase->update();
            }
        }
        void Memory::on_sd_message2nd() {
            if (!pSavedataBase->isIdle())
                return;
            mState = MEMORY_STATE_ON_CHANGE_TAG1ST;
        }
        void Memory::on_sd_message3rd() {
            if (!pSavedataBase->isIdle())
                return;
            if (mPage == MEMORY_PAGE_WII) {
                pSavedataBase->anmChangeWiitoSD();
                mState = MEMORY_STATE_ON_CHANGE_TAG1ST;
            } else {
                pSavedataBase->anmChangeSDtoWii();
                mState = MEMORY_STATE_ON_CHANGE_TAG1ST;
            }
        }
        void Memory::on_process() {
            if (pNandSDCardManager->isWorking())
                return;

            if (!pSavedataEdit->isIdle())
                return;

            int result = pNandSDCardManager->getAsyncResult();
            if (result == 0) {
                if (mProcessType == MEMORY_PROC_FMT) {
                    pSavedataEdit->anmHideBtn0Dialog();
                } else if (mProcessType == MEMORY_PROC_CPY) {
                    pSavedataEdit->anmTextFadein(MESG_MEMORY_COPIED);
                } else if (mProcessType == MEMORY_PROC_DEL) {
                    pSavedataEdit->anmTextFadein(MESG_MEMORY_ERASED);
                } else if (mProcessType == MEMORY_PROC_MOV) {
                    switch (pCurrBox->getBanner()->getFilePerms()) {
                        case 0:
                            pSavedataEdit->anmTextFadein(MESG_MEMORY_MOVED);
                            break;
                        case 4:
                            pSavedataEdit->anmTextFadein(MESG_MEMORY_MOVED_PARTIAL_LOCK);
                            break;
                        case 3:
                        case 5:
                            pSavedataEdit->anmTextFadein(MESG_MEMORY_MOVED_CONSOLE_LOCK);
                            break;
                    }
                }
                if (mProcessType == MEMORY_PROC_DEL || mProcessType == MEMORY_PROC_MOV) {
                    pSavedataEdit->anmClear();
                    pNandSDCardManager->cmdCleanQueue();
                    pNandSDCardManager->calc();

                    SavedataBox* box = NULL;
                    while (box = (SavedataBox*)nw4r::ut::List_GetNext(&mSavedataBoxList, box), box != NULL)
                        box->setBannerFileInfo(NULL);

                    if (mPage == MEMORY_PAGE_WII) {
                        pNandSDCardManager->cmdGetNandFree();
                        send_getbanner_cmd(true);
                    } else {
                        pNandSDCardManager->cmdGetSDFree();
                        send_getbanner_cmd(false);
                    }
                }
            } else {
                if (0 < result && (result & 0b001) && mProcessType == MEMORY_PROC_CPY && mPage == MEMORY_PAGE_WII) {
                    pSavedataEdit->anmTextFadein(MESG_MEMORY_COPIED_SOME_NON_SD);
                } else if (0 < result && (result & 0b010) && mProcessType == MEMORY_PROC_CPY && mPage == MEMORY_PAGE_WII) {
                    // int iVar2 = ;
                    switch (pCurrBox->getBanner()->getFilePerms()) {
                        case 3:
                            pSavedataEdit->anmTextFadein(MESG_MEMORY_COPIED_CONSOLE_LOCK);
                            break;
                        case 4:
                        default:
                            pSavedataEdit->anmTextFadein(MESG_MEMORY_COPIED_PARTIAL_LOCK);
                            break;
                    }
                } else if (0 < result && (result & 0b100) && mProcessType == MEMORY_PROC_CPY && mPage == MEMORY_PAGE_WII) {
                    pSavedataEdit->anmTextFadein(MESG_MEMORY_COPIED_CONSOLE_LOCK);
                } else if (0 < result && result == 1 && mPage == MEMORY_PAGE_SD) {
                    pSavedataEdit->anmTextFadein(mProcessType == MEMORY_PROC_CPY ? MESG_MEMORY_NOT_FULLY_COPIED : MESG_MEMORY_NOT_FULLY_MOVED);
                } else {
                    if (result == -6) {
                        pSavedataEdit->anmTextFadein(mPage == MEMORY_PAGE_WII ? MESG_MEMORY_ALREADY_EXISTS_SD : MESG_MEMORY_ALREADY_EXISTS_WII);
                    } else if (result == -7) {
                        pSavedataEdit->anmTextFadein(mPage == MEMORY_PAGE_WII ? MESG_MEMORY_NOT_ENOUGH_FREE_SD : MESG_MEMORY_NOT_ENOUGH_FREE_WII);
                    } else if (result == -12) {
                        pSavedataEdit->anmTextFadein(MESG_MEMORY_FILENAME_CONFLICT);
                    } else if (result == -14) {
                        pSavedataEdit->anmTextFadein(mProcessType == MEMORY_PROC_CPY ? MESG_MEMORY_MUST_PLAY_TO_COPY : MESG_MEMORY_MUST_PLAY_TO_MOVE);
                    } else if (result == -13) {
                        pSavedataEdit->anmTextFadein(MESG_MEMORY_FILE_CANT_BE_COPIED);
                    } else if (result == -15) {
                        pSavedataEdit->anmTextFadein(mProcessType == MEMORY_PROC_CPY ? MESG_MEMORY_CANT_COPY_TO_WII : MESG_MEMORY_CANT_MOVE_TO_WII);

                    } else {
                        OSReport("fail:  async result = %d\n", result);
                        switch (mProcessType) {
                            case MEMORY_PROC_CPY:
                                pSavedataEdit->anmTextFadein(MESG_MEMORY_COPY_UNK_ERROR);
                                break;
                            case MEMORY_PROC_DEL:
                                pSavedataEdit->anmTextFadein(MESG_MEMORY_DEL_UNK_ERROR);
                                break;
                            case MEMORY_PROC_FMT:
                                pSavedataEdit->anmHideBtn0Dialog();
                                break;
                            case MEMORY_PROC_MOV:
                                pSavedataEdit->anmTextFadein(MESG_MEMORY_MOVE_UNK_ERROR);
                                break;
                        }
                    }
                }
            }

            stop_process();
            mState = MEMORY_STATE_ON_END_PROCESS;
        }
        void Memory::on_end_process() {
            if (!pSavedataEdit->isIdle())
                return;

            if (mProcessType == MEMORY_PROC_FMT) {
                if (pNandSDCardManager->getWorker()->get_sd_state() == NandSDWorker::SD_STATE_READY) {
                    pSavedataEdit->anmShowBtn0Dialog(MESG_MEMORY_SD_FORMATTED, false, false);
                    mState = MEMORY_STATE_ON_END_FORMAT;
                } else {
                    pSavedataEdit->anmShowBtn0Dialog(MESG_MEMORY_SD_NOT_FORMATTED, false, false);
                    mState = MEMORY_STATE_ON_END_FORMAT;
                }
            } else {
                pSavedataEdit->anmTextFadeout();
                mState = MEMORY_STATE_ON_EDIT_FADEOUT2ND;
            }
            mProcessType = MEMORY_PROC_NUL;
        }
        void Memory::on_exist_save() {
            if (pNandSDCardManager->isWorking())
                return;

            if (pNandSDCardManager->getAsyncResult() == 0) {
                switch (mActionIntent) {
                    case MEMORY_INTENT_COPY:
                        pSavedataEdit->anmShowS2Btn2Dialog(MESG_MEMORY_COPY_Q);
                        mState = MEMORY_STATE_ON_VERIFY_COPY;
                        break;

                    case MEMORY_INTENT_MOVE:
                        pSavedataEdit->anmShowS2Btn2Dialog(MESG_MEMORY_MOVE_Q);
                        mState = MEMORY_STATE_ON_VERIFY_MOVE;
                        break;

                    default:
                        break;
                }
                mActionIntent = MEMORY_INTENT_NONE;
            } else if (pNandSDCardManager->getAsyncResult() == 1) {
                pSavedataEdit->anmSelectFadeout(MESG_MEMORY_ALREADY_EXISTS_SD);
                mState = MEMORY_STATE_ON_VERIFY1ST;
            } else {
                pSavedataEdit->anmSelectFadeout(MESG_MEMORY_SD_PROCESS_FAILED);
                mState = MEMORY_STATE_ON_VERIFY1ST;
            }
        }
        void Memory::on_sd_mount_only() {
            if (pNandSDCardManager->isWorking())
                return;
            switch (mActionIntent) {
                case MEMORY_INTENT_COPY:
                    mState = MEMORY_STATE_ON_TRIG_COPY;
                    break;

                case MEMORY_INTENT_MOVE:
                    mState = MEMORY_STATE_ON_TRIG_MOVE;
                    break;

                default:
                    break;
            }
        }
        void Memory::on_trig_move() {
            if (pCurrBox->getBanner()->getFilePerms() == 1) {
                pSavedataEdit->anmSelectFadeout(MESG_MEMORY_FILE_CANT_BE_MOVED);
                mState = MEMORY_STATE_ON_VERIFY1ST;
                return;
            }

            if (pNandSDCardManager->isWorking())
                return;

            if (mPage == MEMORY_PAGE_WII) {
                if (pCurrBox->getBanner()->getFilePerms() == 2) {
                    pSavedataEdit->anmSelectFadeout(MESG_MEMORY_NO_MOVE_BC_COPY_BAN);
                    mState = MEMORY_STATE_ON_VERIFY1ST;
                    return;
                }

                mSdState = pNandSDCardManager->getWorker()->get_sd_state();
                switch (mSdState) {
                    case NandSDWorker::SD_STATE_SLOT_EMPTY:
                        pSavedataEdit->anmSelectFadeout(MESG_MEMORY_NO_SD_CARD);
                        mState = MEMORY_STATE_ON_VERIFY1ST;
                        break;
                    case NandSDWorker::SD_STATE_NOT_MOUNTED:
                        OSReport("NEED MOUNT\n");
                        pNandSDCardManager->cmdSDMount();
                        mState = MEMORY_STATE_ON_SD_MOUNT_ONLY;
                        break;
                    case NandSDWorker::SD_STATE_BROKEN_MEDIA:
                    case NandSDWorker::SD_STATE_ILLEGAL_MEDIA:
                        pSavedataEdit->anmSelectFadeout(MESG_MEMORY_SD_DEVICE_BAD);
                        mState = MEMORY_STATE_ON_VERIFY1ST;
                        break;
                    case NandSDWorker::SD_STATE_READY:
                        if (pNandSDCardManager->isSDWriteProtected()) {
                            pSavedataEdit->anmSelectFadeout(MESG_MEMORY_SD_CARD_LOCKED);
                            mState = MEMORY_STATE_ON_VERIFY1ST;
                            return;
                        }
                        pNandSDCardManager->cmdExistSDSave(pCurrBox->getBanner()->getWiiTitleId());
                        mState = MEMORY_STATE_ON_EXIST_SAVE;
                        mActionIntent = MEMORY_INTENT_MOVE;
                        break;

                    case NandSDWorker::SD_STATE_ERRORED:
                    default:
                        pSavedataEdit->anmSelectFadeout(MESG_MEMORY_SD_PROCESS_FAILED);
                        mState = MEMORY_STATE_ON_VERIFY1ST;
                        break;
                }
            } else {
                mSdState = pNandSDCardManager->getWorker()->get_sd_state();
                switch (mSdState) {
                    case NandSDWorker::SD_STATE_READY:
                        if (pNandSDCardManager->isSDWriteProtected()) {
                            pSavedataEdit->anmSelectFadeout(MESG_MEMORY_SD_CARD_LOCKED);
                            mState = MEMORY_STATE_ON_VERIFY1ST;
                        } else if (pNandSDCardManager->getAsyncResult()) {
                            pSavedataEdit->anmSelectFadeout(MESG_MEMORY_ALREADY_EXISTS_WII);
                            mState = MEMORY_STATE_ON_VERIFY1ST;
                        } else {
                            pSavedataEdit->anmShowS2Btn2Dialog(MESG_MEMORY_MOVE_TO_WII_Q);
                            mState = MEMORY_STATE_ON_VERIFY_MOVE;
                        }
                        break;
                    default:
                        pSavedataEdit->anmSelectFadeout(MESG_MEMORY_SD_PROCESS_FAILED);
                        mState = MEMORY_STATE_ON_VERIFY1ST;
                }
            }
        }
        void Memory::on_verify_move() {
            if (!pSavedataEdit->isIdle() || pNandSDCardManager->isWorking())
                return;

            switch (System::getDialog()->getLastResult()) {
                case DialogWindow::RESULT_LEFT_BUTTON:
                    if (mPage == MEMORY_PAGE_WII) {
                        if (pNandSDCardManager->getWorker()->get_sd_state() == NandSDWorker::SD_STATE_READY) {
                            start_process(MEMORY_PROC_MOV);
                            pNandSDCardManager->cmdMoveSaveNandToSD(pCurrBox);
                            pSavedataEdit->anmTextFadein(MESG_MEMORY_MOVING_TO_SD);
                        } else if (pNandSDCardManager->getWorker()->get_sd_state() == NandSDWorker::SD_STATE_SLOT_EMPTY) {
                            pSavedataEdit->anmTextFadein(MESG_MEMORY_NO_SD_CARD);
                            mState = MEMORY_STATE_ON_END_PROCESS;
                            return;
                        } else {
                            pSavedataEdit->anmTextFadein(MESG_MEMORY_SD_PROCESS_FAILED);
                            mState = MEMORY_STATE_ON_END_PROCESS;
                            return;
                        }
                    } else {
                        start_process(MEMORY_PROC_MOV);
                        pNandSDCardManager->cmdMoveSaveSDToNand(pCurrBox);
                        pSavedataEdit->anmTextFadein(MESG_MEMORY_MOVING_TO_WII);
                    }
                    break;
                case DialogWindow::RESULT_RIGHT_BUTTON:
                    pSavedataEdit->anmSelectFadein();
                    mState = MEMORY_STATE_ON_EDIT_FADEIN;
                    break;
            }
            update_sdcard_slot();
        }
    }  // namespace scene
}  // namespace ipl
