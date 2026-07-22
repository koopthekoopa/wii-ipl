
#include "scene/memory/iplMemory.h"

#include "scene/settingSelect/iplSettingButton.h"
#include "scene/settingSelect/iplSettingSelect.h"

#include "sound/iplSound.h"

namespace ipl {
    namespace scene {
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
            : scene::Base(heap), mState(STATE_ON_NORMAL), mpSavedataBase(NULL), mpSavedataEdit(NULL), mpNandSDCardManager(NULL),
              mPage(MEMORY_PAGE_WII), mpCurrentBox(NULL), mPageOffset(0), mSdState(NandSDWorker::SD_STATE_INITIAL), mArwRVisible(false),
              mArwLVisible(false), mProcessType(PROC_NUL) {
            System::stopReceiveSchedule();
            nw4r::ut::List_Init(&mSavedataBoxList, offsetof(SavedataBox, mLink));
        }

        Memory::~Memory() {
            delete mpSavedataBase;
            delete mpSavedataEdit;
            delete mpNandSDCardManager;

            SavedataBox* currBox = (SavedataBox*)nw4r::ut::List_GetNext(&mSavedataBoxList, NULL);
            while (currBox != NULL) {
                nw4r::ut::List_Remove(&mSavedataBoxList, currBox);
                delete currBox;
                currBox = (SavedataBox*)nw4r::ut::List_GetNext(&mSavedataBoxList, NULL);
            }

            for (int i = 0; i < 15; i++) {
                delete mpBalloons[i];
            }
        }

        void Memory::prepare() {
            System::getBS2Manager()->abort();

            mpLayout = System::getNandManager()->readLayoutAsync(getSceneHeap(), "wiiMem.ash");
            mpBalloonFilm = System::getNandManager()->readLayoutAsync(getSceneHeap(), "balloon.ash");
            mpCorruptFile = System::getNandManager()->readAsync(getSceneHeap(), "corrupt_texture.tpl");
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

            mpSavedataBase = new SavedataBase(System::getMem2App(), mpLayout, "arc", "it_ObjCubeEdit_a.brlyt");
            mpSavedataBase->anmFadein();

            for (int i = 0; i < 45; i++) {
                nw4r::ut::List_Append(&mSavedataBoxList, new SavedataBox(System::getMem2App(), mpLayout, "arc", "it_ObjDataEdit_b.brlyt"));
            }

            mpSavedataEdit = new SavedataEdit(System::getMem2App(), mpLayout, "arc", "081210_sys4_mn_DataDetail_a.brlyt");

            mpNandSDCardManager = new (System::getMem2App(), 32) NandSDCardManager(NandSDCardManager::NAND_MODE_SAVES);

            for (int i = 0; i < MAX_BALLOONS; i++) {
                nw4r::lyt::Pane* currPane = mpSavedataBase->getLytObject()->FindPaneByName(panes[1][i]);
                nw4r::math::VEC3 translation(0, 0, 0);
                PSMTXMultVec(currPane->GetGlobalMtx(), translation, translation);
                translation.y -= 55.0f;

                mpBalloons[i] = new TextBalloon(getSceneHeap(), mpBalloonFilm, "arc", "my_IplTopBalloon_a.brlyt", translation, 90.f, 60.f);

                SavedataBox* box = (SavedataBox*)nw4r::ut::List_GetNth(&mSavedataBoxList, i + 15);
                box->setTextBalloon(mpBalloons[i]);
            }

            TPLBind((TPLPalette*)mpCorruptFile->getBuffer());
            send_getbanner_cmd(true);
            mState = STATE_ON_FADEIN1ST;
        }

        void Memory::calc() {
            mpNandSDCardManager->calc();

            SettingSelect* sceneSettingSelect = (SettingSelect*)System::getScene(SCENE_SETTING_SELECT);
            if (!sceneSettingSelect->isWaitingChild())
                return;

            mpSavedataBase->calc();

            SavedataBox* currBox = NULL;
            while (currBox = (SavedataBox*)nw4r::ut::List_GetNext(&mSavedataBoxList, currBox), currBox != NULL)
                currBox->calc();

            mpSavedataEdit->calc();

            for (int i = 0; i < MAX_BALLOONS; i++)
                mpBalloons[i]->calc();

            switch (mState) {
                case STATE_ON_NORMAL: {
                    on_normal();
                    break;
                }
                case STATE_ON_FADEIN1ST: {
                    on_fadein1st();
                    break;
                }
                case STATE_ON_FADEIN2ND: {
                    on_fadein2nd();
                    break;
                }
                case STATE_ON_FADEOUT1ST: {
                    on_fadeout1st();
                    break;
                }
                case STATE_ON_FADEOUT2ND: {
                    on_fadeout2nd();
                    break;
                }
                case STATE_ON_SCROLL_R: {
                    on_scroll_r();
                    break;
                }
                case STATE_ON_SCROLL_L: {
                    on_scroll_l();
                    break;
                }
                case STATE_ON_CHANGE_TAG1ST: {
                    on_change_tag1st();
                    break;
                }
                case STATE_ON_CHANGE_TAG2ND: {
                    on_change_tag2nd();
                    break;
                }
                case STATE_ON_TRIG_COPY: {
                    on_trig_copy();
                    break;
                }
                case STATE_10: {
                    break;
                }
                case STATE_ON_EDIT: {
                    on_edit();
                    break;
                }
                case STATE_ON_EDIT_FADEIN: {
                    on_edit_fadein();
                    break;
                }
                case STATE_ON_EDIT_FADEOUT1ST: {
                    on_edit_fadeout1st();
                    break;
                }
                case STATE_ON_EDIT_FADEOUT2ND: {
                    on_edit_fadeout2nd();
                    break;
                }
                case STATE_ON_VERIFY1ST: {
                    on_verify1st();
                    break;
                }
                case STATE_ON_VERIFY2ND: {
                    on_verify2nd();
                    break;
                }
                case STATE_ON_VERIFY_COPY: {
                    on_verify_copy();
                    break;
                }
                case STATE_ON_VERIFY_DEL: {
                    on_verify_del();
                    break;
                }
                case STATE_ON_VERIFY_FORMAT: {
                    on_verify_format();
                    break;
                }
                case STATE_ON_END_FORMAT: {
                    on_end_format();
                    break;
                }
                case STATE_ON_SD_MOUNT: {
                    on_sd_mount();
                    break;
                }
                case STATE_ON_SD_MESSAGE1ST: {
                    on_sd_message1st();
                    break;
                }
                case STATE_ON_SD_MESSAGE2ND: {
                    on_sd_message2nd();
                    break;
                }
                case STATE_ON_SD_MESSAGE3RD: {
                    on_sd_message3rd();
                    break;
                }
                case STATE_ON_PROCESS: {
                    on_process();
                    break;
                }
                case STATE_ON_END_PROCESS: {
                    on_end_process();
                    break;
                }
                case STATE_ON_EXIST_SAVE: {
                    on_exist_save();
                    break;
                }
                case STATE_ON_SD_MOUNT_ONLY: {
                    on_sd_mount_only();
                    break;
                }
                case STATE_ON_TRIG_MOVE: {
                    on_trig_move();
                    break;
                }
                case STATE_ON_VERIFY_MOVE: {
                    on_verify_move();
                    break;
                }
            }
        }

        void Memory::setpos_savedata_box() {
            int i = 0;
            SavedataBox* box = NULL;

            while (box = (SavedataBox*)nw4r::ut::List_GetNext(&mSavedataBoxList, box), box != NULL) {
                nw4r::lyt::Pane* currPane = mpSavedataBase->getLytObject()->FindPaneByName(panes[0][i]);
                nw4r::math::VEC3 translation(0, 0, 0);
                PSMTXMultVec(currPane->GetGlobalMtx(), translation, translation);
                box->setTranslate(translation);
                i++;

                if (box->getTextBalloon() != NULL) {
                    box->terminateBalloon();
                }
            }
        }

        void Memory::fadein_savedata_box() {
            int i = 0;
            SavedataBox* box = NULL;
            while (box = (SavedataBox*)nw4r::ut::List_GetNext(&mSavedataBoxList, box), box != NULL) {
                nw4r::lyt::Pane* currPane = mpSavedataBase->getLytObject()->FindPaneByName(panes[0][i]);
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
            for (int i = 0; i < MAX_BALLOONS; i++) {
                SavedataBox* box = (SavedataBox*)nw4r::ut::List_GetNth(&mSavedataBoxList, i + 15);
                mpNandSDCardManager->cmdGetWiiBanner(box, mPageOffset + i, isWiiNotSD);
            }
        }

        void Memory::update_sdcard_slot() {
            if (mPage != MEMORY_PAGE_SD) {
                return;
            }

            mSdState = mpNandSDCardManager->getWorker()->get_sd_state();
            if (mSdState == NandSDWorker::SD_STATE_READY) {
                return;
            }

            mpNandSDCardManager->cmdCleanQueue();

            mPageOffset = 0;

            SavedataBox* box;
            box = NULL;
            while (box = (SavedataBox*)nw4r::ut::List_GetNext(&mSavedataBoxList, box), box != NULL) {
                if (box->getTextBalloon() != NULL) {
                    box->terminateBalloon();
                }
            }

            switch (mState) {
                case STATE_ON_NORMAL: {
                    fadeout_savedata_box();
                    mState = STATE_ON_CHANGE_TAG1ST;
                    break;
                }
                case STATE_ON_EDIT: {
                    mpSavedataEdit->anmClear();
                    mpSavedataEdit->anmFadeout();
                    mState = STATE_ON_EDIT_FADEOUT2ND;
                    break;
                }
                case STATE_ON_VERIFY_COPY:
                case STATE_ON_VERIFY_DEL:
                case STATE_ON_VERIFY_MOVE: {
                    System::getDialog()->terminate();
                    mpSavedataEdit->anmClear();
                    mpSavedataEdit->anmSelectFadein();
                    mState = STATE_ON_EDIT_FADEIN;
                    break;
                }
                case STATE_ON_VERIFY1ST: {
                    mpSavedataEdit->anmClear();
                    mpSavedataEdit->anmSelectFadein();
                    mState = STATE_ON_VERIFY2ND;
                    break;
                }
                default: {
                    break;
                }
            }
        }

        void Memory::update_arw() {
            if (!mArwRVisible && enable_scroll_r()) {
                mpSavedataBase->anmArwAppear(true, false);
                mArwRVisible = true;
            } else if (mArwRVisible && !enable_scroll_r()) {
                mpSavedataBase->anmArwDisappear(true, false);
                mArwRVisible = false;
            }
            if (!mArwLVisible && enable_scroll_l()) {
                mpSavedataBase->anmArwAppear(false, true);
                mArwLVisible = true;
            } else if (mArwLVisible && !enable_scroll_l()) {
                mpSavedataBase->anmArwDisappear(false, true);
                mArwLVisible = false;
            }
        }

        void Memory::update_free() {
            if (!mPage) {
                update_nand_free();
            } else {
                update_sd_free();
            }
        }

        void Memory::update_nand_free() {
            int blocksFree = mpNandSDCardManager->getNandBlocksFree();
            if (blocksFree < 0) {
                mpSavedataBase->set_visible("N_Capa_00", false);
                mpSavedataBase->set_visible("T_Capa_00", false);
                return;
            }

            const wchar_t scNumber[10] = {L'0', L'1', L'2', L'3', L'4', L'5', L'6', L'7', L'8', L'9'};
            wchar_t digits[5] = L"";
            wchar_t blocksFreeMsg[0x40] = L"";

            digits[0] = scNumber[blocksFree / 1000];
            digits[1] = scNumber[blocksFree / 100 % 10];
            digits[2] = scNumber[blocksFree / 10 % 10];
            digits[3] = scNumber[blocksFree % 10];

            int zeroOffset;
            for (zeroOffset = 0; zeroOffset < 3; zeroOffset++) {
                if (digits[zeroOffset] != L'0') {
                    break;
                }
            }

            int blockOpenOffset = 0;

            const wchar_t* blockOpenMsg = System::getMessage(MESG_CHAN_EDIT_BLOCKS_OPEN);
            const wchar_t* unkMsg = System::getMessage(MESG_CHAN_EDIT_BLANK);

            while (true) {
                wchar_t chr = *blockOpenMsg++;
                blocksFreeMsg[blockOpenOffset++] = chr;
                if (chr == L'\0') {
                    break;
                }
            };
            blocksFreeMsg[--blockOpenOffset] = L' ';
            wcscpy(blocksFreeMsg + blockOpenOffset, digits + zeroOffset);

            wcscat(blocksFreeMsg, unkMsg);

            mpSavedataBase->set_visible("T_Capa_00", true);
            mpSavedataBase->set_visible("N_Capa_00", true);
            mpSavedataBase->set_textbox("T_Capa_00", blocksFreeMsg);
        }

        void Memory::update_sd_free() {
            if (mpNandSDCardManager->getWorker()->get_sd_state() != NandSDWorker::SD_STATE_READY) {
                mpSavedataBase->set_visible("N_Capa_00", false);
                mpSavedataBase->set_visible("T_Capa_00", false);
                return;
            }

            int blocksFree = mpNandSDCardManager->getSDBlocksFree();
            if (blocksFree < 0) {
                mpSavedataBase->set_visible("N_Capa_00", false);
                mpSavedataBase->set_visible("T_Capa_00", false);
                return;
            }

            const wchar_t scNumber[10] = {L'0', L'1', L'2', L'3', L'4', L'5', L'6', L'7', L'8', L'9'};
            wchar_t digits[7] = L"";
            wchar_t blocksFreeMsg[0x40] = L"";

            digits[0] = scNumber[blocksFree / 100000];
            digits[1] = scNumber[blocksFree / 10000 % 10];
            digits[2] = scNumber[blocksFree / 1000 % 10];
            digits[3] = scNumber[blocksFree / 100 % 10];
            digits[4] = scNumber[blocksFree / 10 % 10];
            digits[5] = scNumber[blocksFree % 10];

            int zeroOffset;
            for (zeroOffset = 0; zeroOffset < 5; zeroOffset++) {
                if (digits[zeroOffset] != L'0') {
                    break;
                }
            }

            int blockOpenOffset = 0;

            const wchar_t* blockOpenMsg = System::getMessage(MESG_CHAN_EDIT_BLOCKS_OPEN);
            const wchar_t* unkMsg = System::getMessage(MESG_CHAN_EDIT_BLANK);

            while (true) {
                wchar_t chr = *blockOpenMsg++;
                blocksFreeMsg[blockOpenOffset++] = chr;
                if (chr == L'\0') {
                    break;
                }
            };
            blocksFreeMsg[--blockOpenOffset] = L' ';
            wcscpy(blocksFreeMsg + blockOpenOffset, digits + zeroOffset);

            wcscat(blocksFreeMsg, unkMsg);

            mpSavedataBase->set_visible("T_Capa_00", true);
            mpSavedataBase->set_visible("N_Capa_00", true);
            mpSavedataBase->set_textbox("T_Capa_00", blocksFreeMsg);
        }

        void Memory::start_process(int processType) {
            System::getHomeButtonMenu()->disable();

            mProcessType = processType;

            snd::getSystem()->startSE("WIPL_SE_COPYING");
            if (processType == PROC_FMT) {
                mpSavedataEdit->anmShowBtn0Dialog(MESG_DATA_FORMATTING, true, true);
            } else {
                mpSavedataEdit->anmStartWaitAnm();
            }
            mState = STATE_ON_PROCESS;
        }

        void Memory::stop_process() {
            System::getHomeButtonMenu()->enable();
            snd::getSystem()->startSE("WIPL_SE_COPY_FINISH");
            mpSavedataEdit->anmStopWaitAnm();
        }

        void Memory::start_scroll_r(bool playButtonAnm, bool playSound) {
            mpNandSDCardManager->cmdCleanQueue();

            SavedataBox* box = NULL;
            while (box = (SavedataBox*)nw4r::ut::List_GetNext(&mSavedataBoxList, box), box != NULL) {
                box->clearEvent();
            }

            if (playSound) {
                snd::getSystem()->startSE("WSD_SELECT");
            }

            mpSavedataBase->anmScrollR(playButtonAnm);
            mState = STATE_ON_SCROLL_R;
        }

        void Memory::start_scroll_l(bool playButtonAnm, bool playSound) {
            mpNandSDCardManager->cmdCleanQueue();

            SavedataBox* box = NULL;
            while (box = (SavedataBox*)nw4r::ut::List_GetNext(&mSavedataBoxList, box), box != NULL) {
                box->clearEvent();
            }

            if (playSound) {
                snd::getSystem()->startSE("WSD_SELECT");
            }

            mpSavedataBase->anmScrollL(playButtonAnm);
            mState = STATE_ON_SCROLL_L;
        }

        bool Memory::enable_scroll_r() {
            if (mState != STATE_ON_NORMAL)
                return false;

            if (mPage == MEMORY_PAGE_WII) {
                return mpNandSDCardManager->getWorker()->get_nand_save_num() - mPageOffset > 15;
            } else {
                if (mpNandSDCardManager->getWorker()->get_sd_state() == NandSDWorker::SD_STATE_READY) {
                    return mpNandSDCardManager->getWorker()->get_sd_save_num() - mPageOffset > 15;
                } else {
                    return false;
                }
            }
        }

        bool Memory::enable_scroll_l() {
            if (mState != STATE_ON_NORMAL)
                return false;
            return mPageOffset > 0;
        }

        void Memory::draw() {
            if (!System::onDefaultDrawLayer()) {
                return;
            }

            utility::Graphics::setOrtho(0);
            mpSavedataBase->draw();

            SavedataBox* box = NULL;
            while (box = (SavedataBox*)nw4r::ut::List_GetNext(&mSavedataBoxList, box), box != NULL) {
                box->draw();
            }

            for (int i = 0; i < MAX_BALLOONS; i++) {
                mpBalloons[i]->draw();
            }

            mpSavedataBase->getLytObject()->draw("N_ArwR");
            mpSavedataBase->getLytObject()->draw("N_ArwL");

            mpSavedataEdit->draw();
        }

        BOOL Memory::isResetAcceptable() const {
            return mProcessType == PROC_NUL;
        }

        void Memory::onPoint(AnmPane* pane) {
            if ((strcmp(pane->getName(), "B_SelectWii_00") == 0 && mPage == MEMORY_PAGE_WII) ||
                (strcmp(pane->getName(), "B_SelectSd_00") == 0 && mPage == MEMORY_PAGE_SD)) {
                return;
            }

            snd::getSystem()->startSE("WIPL_SE_BT_TARGETTING");

            controller::Interface* controller = System::getYoungController();
            if (controller != NULL) {
                controller->rumble();
            }
            pane->on_cmd_recv(AnmPane::ANIM_CMD_POINT);
        }

        void Memory::onLeft(AnmPane* pane) {
            if ((strcmp(pane->getName(), "B_SelectWii_00") == 0 && mPage == MEMORY_PAGE_WII) ||
                (strcmp(pane->getName(), "B_SelectSd_00") == 0 && mPage == MEMORY_PAGE_SD)) {
                return;
            }

            pane->on_cmd_recv(AnmPane::ANIM_CMD_LEFT);
        }

        void Memory::onTrig(AnmPane* pane) {
            if (mState != STATE_ON_NORMAL && mState != STATE_ON_SD_MESSAGE1ST) {
                return;
            }

            if (strcmp(pane->getName(), "B_SelectWii_00") == 0 && mPage == MEMORY_PAGE_SD) {
                SavedataBox* box = NULL;
                while (box = (SavedataBox*)nw4r::ut::List_GetNext(&mSavedataBoxList, box), box != NULL) {
                    box->setBannerFileInfo(NULL);
                }

                snd::getSystem()->startSE("WIPL_SE_BT_PUSH");

                mPageOffset = 0;
                mpNandSDCardManager->cmdCleanQueue();
                mpNandSDCardManager->cmdListNand();
                mPage = MEMORY_PAGE_WII;

                mpSavedataBase->anmArwDisappear(mArwRVisible, mArwLVisible);
                mArwRVisible = false;
                mArwLVisible = false;

                mpSavedataBase->set_visible("N_Capa_00", false);
                mpSavedataBase->set_visible("T_Capa_00", false);

                if (mState == STATE_ON_NORMAL) {
                    mpSavedataBase->anmChangeWiitoSD();
                    fadeout_savedata_box();
                    mState = STATE_ON_CHANGE_TAG1ST;
                } else {
                    mpSavedataBase->anmTextFadeout();
                    mState = STATE_ON_SD_MESSAGE3RD;
                }
            } else if (strcmp(pane->getName(), "B_SelectSd_00") == 0 && mPage == MEMORY_PAGE_WII) {
                SavedataBox* box = NULL;
                while (box = (SavedataBox*)nw4r::ut::List_GetNext(&mSavedataBoxList, box), box != NULL) {
                    box->setBannerFileInfo(NULL);
                }

                snd::getSystem()->startSE("WIPL_SE_BT_PUSH");

                mpNandSDCardManager->cmdSDMount();
                mPageOffset = 0;
                mpNandSDCardManager->cmdCleanQueue();
                mpNandSDCardManager->cmdListSD();
                mPage = MEMORY_PAGE_SD;

                mpSavedataBase->anmArwDisappear(mArwRVisible, mArwLVisible);
                mArwRVisible = false;
                mArwLVisible = false;

                mpSavedataBase->set_visible("N_Capa_00", false);
                mpSavedataBase->set_visible("T_Capa_00", false);

                if (mState == STATE_ON_NORMAL) {
                    mpSavedataBase->anmChangeSDtoWii();
                    fadeout_savedata_box();
                    mState = STATE_ON_CHANGE_TAG1ST;
                } else {
                    mpSavedataBase->anmTextFadeout();
                    mState = STATE_ON_SD_MESSAGE3RD;
                }
            } else if (strcmp(pane->getName(), "B_ArwR") == 0 && enable_scroll_r()) {
                start_scroll_r(true, true);
            } else if (strcmp(pane->getName(), "B_ArwL") == 0 && enable_scroll_l()) {
                start_scroll_l(true, true);
            }
        }

        void Memory::onTrig(SavedataBox* box) {
            if (mState != STATE_ON_NORMAL) {
                return;
            }

            mpCurrentBox = box;
            if (box->getTextBalloon() != NULL) {
                box->getTextBalloon()->terminate();
            }

            mpSavedataEdit->anmFadein(box);
            snd::getSystem()->startSE("WIPL_SE_DECIDE");
            mState = STATE_ON_EDIT_FADEIN;
        }

        void Memory::onTrigButton(bool isErr) {
            mpSavedataBase->anmArwDisappear(mArwRVisible, mArwLVisible);

            mpSavedataBase->anmFadeout(isErr);
            if (!isErr) {
                fadeout_savedata_box();
            }
            mpNandSDCardManager->cmdTerminate();
            mState = STATE_ON_FADEOUT1ST;
        }

        void Memory::onTrigCopy() {
            if (mPage == MEMORY_PAGE_WII) {
                mpNandSDCardManager->cmdSDMount();
            } else {
                mpNandSDCardManager->cmdExistNandSave(mpCurrentBox->getBanner()->getSDTitleId());
            }
            mActionIntent = MEMORY_INTENT_COPY;
            mState = STATE_ON_TRIG_COPY;
            return;
        }

        void Memory::onTrigDel() {
            if (mPage == MEMORY_PAGE_SD) {
                mSdState = mpNandSDCardManager->getWorker()->get_sd_state();
                switch (mSdState) {
                    case NandSDWorker::SD_STATE_READY: {
                        if (mpNandSDCardManager->isSDWriteProtected()) {
                            mpSavedataEdit->anmSelectFadeout(MESG_DATA_SD_CARD_LOCKED);
                            mState = STATE_ON_VERIFY1ST;
                        } else {
                            mpSavedataEdit->anmShowS2Btn2Dialog(MESG_DATA_ERASE_DIALOG);
                            mState = STATE_ON_VERIFY_DEL;
                        }
                        break;
                    }
                    default: {
                        mpSavedataEdit->anmSelectFadeout(MESG_DATA_SD_PROCESS_FAILED);
                        mState = STATE_ON_VERIFY1ST;
                        break;
                    }
                }
            } else {
                mpSavedataEdit->anmShowS2Btn2Dialog(MESG_DATA_ERASE_DIALOG);
                mState = STATE_ON_VERIFY_DEL;
            }
        }

        void Memory::onTrigMove() {
            if (mPage == MEMORY_PAGE_WII) {
                mpNandSDCardManager->cmdSDMount();
            } else {
                mpNandSDCardManager->cmdExistNandSave(mpCurrentBox->getBanner()->getSDTitleId());
            }
            mActionIntent = MEMORY_INTENT_MOVE;
            mState = STATE_ON_TRIG_MOVE;
        }

        void Memory::getCorruptIconTexture(GXTexObj* out) const {
            TPLGetGXTexObjFromPalette((TPLPalette*)mpCorruptFile->getBuffer(), out, 1);
        }

        void Memory::getCorruptBannerTexture(GXTexObj* out) const {
            TPLGetGXTexObjFromPalette((TPLPalette*)mpCorruptFile->getBuffer(), out, 0);
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

            mpSavedataBase->update();

            SavedataBox* box = NULL;
            while (box = (SavedataBox*)nw4r::ut::List_GetNext(&mSavedataBoxList, box), box != NULL)
                box->update();

            if (mPage == MEMORY_PAGE_WII) {
                if (mPageOffset == mpNandSDCardManager->getWorker()->get_nand_save_num() && enable_scroll_l()) {
                    start_scroll_l(false, false);
                    return;
                }
            } else {
                if (mPageOffset == mpNandSDCardManager->getWorker()->get_sd_save_num() && enable_scroll_l()) {
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
            if (!mpSavedataBase->isIdle()) {
                return;
            }
            if (mpNandSDCardManager->isWorking()) {
                return;
            }

            fadein_savedata_box();
            mState = STATE_ON_FADEIN2ND;
        }

        void Memory::on_fadein2nd() {
            SavedataBox* box = NULL;
            while (box = (SavedataBox*)nw4r::ut::List_GetNext(&mSavedataBoxList, box), box != NULL) {
                if (!box->isIdle()) {
                    return;
                }
            }
            mState = STATE_ON_NORMAL;
        }

        void Memory::on_fadeout1st() {
            if (!mpSavedataBase->isIdle()) {
                return;
            }

            if (!mpNandSDCardManager->isTerminated()) {
                return;
            }

            mState = STATE_ON_FADEOUT2ND;
        }

        void Memory::on_fadeout2nd() {
            requestSceneDestruction();
            System::getBS2Manager()->restart();
            OSReport(" ... bs2 manager restarted\n");
        }

        void Memory::on_scroll_r() {
            if (mpSavedataBase->isIdle()) {
                mPageOffset += 15;
                SavedataBox* box = NULL;
                while (box = (SavedataBox*)nw4r::ut::List_GetNext(&mSavedataBoxList, box), box != NULL) {
                    box->setBannerFileInfo(NULL);
                }

                send_getbanner_cmd(mPage == MEMORY_PAGE_WII);
                mState = STATE_ON_NORMAL;
            }
            setpos_savedata_box();
        }

        void Memory::on_scroll_l() {
            if (mpSavedataBase->isIdle()) {
                mPageOffset -= 15;
                SavedataBox* box = NULL;
                while (box = (SavedataBox*)nw4r::ut::List_GetNext(&mSavedataBoxList, box), box != NULL) {
                    box->setBannerFileInfo(NULL);
                }

                send_getbanner_cmd(mPage == MEMORY_PAGE_WII);
                mState = STATE_ON_NORMAL;
            }
            setpos_savedata_box();
        }

        void Memory::on_change_tag1st() {
            if (mpNandSDCardManager->isWorking() || !mpNandSDCardManager->sdWorkerReadyMaybe()) {
                return;
            }

            SavedataBox* box = NULL;
            while (box = (SavedataBox*)nw4r::ut::List_GetNext(&mSavedataBoxList, box), box != NULL) {
                if (!box->isIdle()) {
                    return;
                }
                if (box->getBanner() != NULL) {
                    box->setBannerFileInfo(NULL);
                }
            }

            if (mPage == MEMORY_PAGE_SD) {
                mSdState = mpNandSDCardManager->getWorker()->get_sd_state();
                switch (mSdState) {
                    case NandSDWorker::SD_STATE_EJECTED: {
                        if (!mpSavedataBase->isIdle()) {
                            return;
                        }
                        mpSavedataBase->anmTextFadein(MESG_DATA_NO_SD_CARD);
                        mState = STATE_ON_SD_MESSAGE1ST;
                        break;
                    }
                    case NandSDWorker::SD_STATE_INSERTED: {
                        mpNandSDCardManager->cmdSDMount();
                        mState = STATE_ON_SD_MOUNT;
                        break;
                    }
                    case NandSDWorker::SD_STATE_BROKEN:
                    case NandSDWorker::SD_STATE_ILLEGAL: {
                        if (!mpSavedataBase->isIdle()) {
                            return;
                        }
                        mpSavedataBase->anmTextFadein(MESG_DATA_SD_DEVICE_BAD);
                        mState = STATE_ON_SD_MESSAGE1ST;
                        break;
                    }
                    case NandSDWorker::SD_STATE_READY: {
                        if (!mpSavedataBase->isIdle()) {
                            return;
                        }
                        send_getbanner_cmd(false);
                        fadein_savedata_box();
                        mState = STATE_ON_CHANGE_TAG2ND;
                        break;
                    }
                    case NandSDWorker::SD_STATE_ERROR:
                    default: {
                        if (!mpSavedataBase->isIdle()) {
                            return;
                        }
                        mpSavedataBase->anmTextFadein(MESG_DATA_SD_PROCESS_FAILED);
                        mState = STATE_ON_SD_MESSAGE1ST;
                        break;
                    }
                }
            } else {
                send_getbanner_cmd(true);
                fadein_savedata_box();
                mState = STATE_ON_CHANGE_TAG2ND;
            }
        }

        void Memory::on_change_tag2nd() {
            SavedataBox* box = NULL;
            while (box = (SavedataBox*)nw4r::ut::List_GetNext(&mSavedataBoxList, box), box != NULL) {
                if (!box->isIdle()) {
                    return;
                }
            }
            mState = STATE_ON_NORMAL;
        }

        void Memory::on_trig_copy() {
            if (mpCurrentBox->getBanner()->getFilePerms() == 1) {
                mpSavedataEdit->anmSelectFadeout(MESG_DATA_FILE_CANT_BE_COPIED);
                mState = STATE_ON_VERIFY1ST;
                return;
            }
            if (mpNandSDCardManager->isWorking())
                return;

            if (mPage == MEMORY_PAGE_WII) {
                mSdState = mpNandSDCardManager->getWorker()->get_sd_state();
                switch (mSdState) {
                    case NandSDWorker::SD_STATE_EJECTED: {
                        mpSavedataEdit->anmSelectFadeout(MESG_DATA_NO_SD_CARD);
                        mState = STATE_ON_VERIFY1ST;
                        break;
                    }
                    case NandSDWorker::SD_STATE_INSERTED: {
                        OSReport("NEED MOUNT\n");
                        mpNandSDCardManager->cmdSDMount();
                        mState = STATE_ON_SD_MOUNT_ONLY;
                        break;
                    }
                    case NandSDWorker::SD_STATE_BROKEN:
                    case NandSDWorker::SD_STATE_ILLEGAL: {
                        mpSavedataEdit->anmSelectFadeout(MESG_DATA_SD_DEVICE_BAD);
                        mState = STATE_ON_VERIFY1ST;
                        break;
                    }
                    case NandSDWorker::SD_STATE_READY: {
                        if (mpNandSDCardManager->isSDWriteProtected()) {
                            mpSavedataEdit->anmSelectFadeout(MESG_DATA_SD_CARD_LOCKED);
                            mState = STATE_ON_VERIFY1ST;
                            return;
                        }
                        mpNandSDCardManager->cmdExistSDSave(mpCurrentBox->getBanner()->getWiiTitleId());
                        mState = STATE_ON_EXIST_SAVE;
                        break;
                    }
                    case NandSDWorker::SD_STATE_ERROR:
                    default: {
                        mpSavedataEdit->anmSelectFadeout(MESG_DATA_SD_PROCESS_FAILED);
                        mState = STATE_ON_VERIFY1ST;
                        break;
                    }
                }
            } else {
                if (mpNandSDCardManager->getAsyncResult()) {
                    mpSavedataEdit->anmSelectFadeout(MESG_DATA_ALREADY_EXISTS_WII);
                    mState = STATE_ON_VERIFY1ST;
                } else {
                    mpSavedataEdit->anmShowS2Btn2Dialog(MESG_DATA_COPY_TO_WII_DIALOG);
                    mState = STATE_ON_VERIFY_COPY;
                }
            }
        }

        void Memory::on_edit_fadein() {
            if (!mpSavedataEdit->isIdle()) {
                return;
            }
            mState = STATE_ON_EDIT;
        }

        void Memory::on_edit() {
            if (mpSavedataEdit->isIdle()) {
                SettingButton* sceneSettingButton = (SettingButton*)System::getScene(SCENE_SETTING_BUTTON);
                if (sceneSettingButton->update()) {
                    mState = STATE_ON_EDIT_FADEOUT1ST;
                    return;
                }
            }
            mpSavedataEdit->update();
            update_sdcard_slot();
        }

        void Memory::on_edit_fadeout1st() {
            SettingButton* sceneSettingButton = (SettingButton*)System::getScene(SCENE_SETTING_BUTTON);
            if (!sceneSettingButton->isPlaying()) {
                mpSavedataEdit->anmFadeout();
                mState = STATE_ON_EDIT_FADEOUT2ND;
            }
        }

        void Memory::on_edit_fadeout2nd() {
            if (!mpSavedataEdit->isIdle()) {
                return;
            }
            mState = STATE_ON_NORMAL;
        }

        void Memory::on_verify1st() {
            if (mpSavedataEdit->isIdle()) {
                SettingButton* sceneSettingButton = (SettingButton*)System::getScene(SCENE_SETTING_BUTTON);
                if (sceneSettingButton->update()) {
                    mpSavedataEdit->anmSelectFadein();
                    mState = STATE_ON_VERIFY2ND;
                }
            }
            mActionIntent = MEMORY_INTENT_NONE;
            update_sdcard_slot();
        }

        void Memory::on_verify2nd() {
            if (!mpSavedataEdit->isIdle()) {
                return;
            }
            mState = STATE_ON_EDIT;
        }

        void Memory::on_verify_copy() {
            if (!mpSavedataEdit->isIdle() || mpNandSDCardManager->isWorking()) {
                return;
            }

            switch (System::getDialog()->getLastResult()) {
                case DialogWindow::RESULT_LEFT_BUTTON: {
                    if (mPage == MEMORY_PAGE_WII) {
                        if (mpNandSDCardManager->getWorker()->get_sd_state() == NandSDWorker::SD_STATE_READY) {
                            start_process(PROC_CPY);
                            mpNandSDCardManager->cmdCopySaveNandToSD(mpCurrentBox->getBanner()->getWiiTitleId());
                            mpSavedataEdit->anmTextFadein(MESG_DATA_COPYING_TO_SD);
                        } else if (mpNandSDCardManager->getWorker()->get_sd_state() == NandSDWorker::SD_STATE_EJECTED) {
                            mpSavedataEdit->anmTextFadein(MESG_DATA_NO_SD_CARD);
                            mState = STATE_ON_END_PROCESS;
                            return;
                        } else {
                            mpSavedataEdit->anmTextFadein(MESG_DATA_SD_PROCESS_FAILED);
                            mState = STATE_ON_END_PROCESS;
                            return;
                        }
                    } else {
                        start_process(PROC_CPY);
                        mpNandSDCardManager->cmdCopySaveSDToNand(mpCurrentBox->getBanner()->getSDTitleId());
                        mpSavedataEdit->anmTextFadein(MESG_DATA_COPYING_TO_WII);
                    }
                    break;
                }
                case DialogWindow::RESULT_RIGHT_BUTTON: {
                    mpSavedataEdit->anmSelectFadein();
                    mState = STATE_ON_EDIT_FADEIN;
                    break;
                }
            }
            update_sdcard_slot();
        }

        void Memory::on_verify_del() {
            if (!mpSavedataEdit->isIdle()) {
                return;
            }

            switch (System::getDialog()->getLastResult()) {
                case DialogWindow::RESULT_LEFT_BUTTON: {
                    start_process(PROC_DEL);
                    if (mPage == MEMORY_PAGE_WII) {
                        mpNandSDCardManager->cmdDelNandSave(mpCurrentBox);
                        mpSavedataEdit->anmTextFadein(MESG_DATA_ERASING);
                    } else {
                        mpNandSDCardManager->cmdDelSDSave(mpCurrentBox);
                        mpSavedataEdit->anmTextFadein(MESG_DATA_ERASING_SD);
                    }
                    break;
                }
                case DialogWindow::RESULT_RIGHT_BUTTON: {
                    mpSavedataEdit->anmSelectFadein();
                    mState = STATE_ON_EDIT_FADEIN;
                    break;
                }
            }
            update_sdcard_slot();
        }

        void Memory::on_verify_format() {
            if (!mpSavedataEdit->isIdle()) {
                return;
            }

            switch (System::getDialog()->getLastResult()) {
                case DialogWindow::RESULT_LEFT_BUTTON: {
                    start_process(PROC_FMT);
                    mpNandSDCardManager->cmdSDFormat();
                    break;
                }
                case DialogWindow::RESULT_RIGHT_BUTTON: {
                    if (mPage == MEMORY_PAGE_WII) {
                        mState = STATE_ON_EDIT;
                    } else {
                        mpSavedataBase->anmTextFadein(MESG_DATA_SD_DEVICE_BAD);
                        mState = STATE_ON_SD_MESSAGE1ST;
                    }
                    break;
                }
            }
        }

        void Memory::on_end_format() {
            if (System::getDialog()->getLastResult() != DialogWindow::RESULT_WAIT)
                return;
            if (mPage == MEMORY_PAGE_WII) {
                mState = STATE_ON_EDIT;
            } else if (mpNandSDCardManager->getWorker()->get_sd_state() != NandSDWorker::SD_STATE_INITIAL) {
                mpSavedataBase->anmTextFadein(MESG_DATA_SD_DEVICE_BAD);
                mState = STATE_ON_SD_MESSAGE1ST;
            }
        }

        void Memory::on_sd_mount() {
            if (mpNandSDCardManager->isWorking()) {
                return;
            }
            mpNandSDCardManager->cmdListSD();
            mState = STATE_ON_CHANGE_TAG1ST;
        }

        void Memory::on_sd_message1st() {
            if (!mpSavedataEdit->isIdle())
                return;

            SettingButton* sceneSettingButton = (SettingButton*)System::getScene(SCENE_SETTING_BUTTON);
            if (sceneSettingButton->update()) {
                onTrigButton(true);
                return;
            }

            if (mSdState != mpNandSDCardManager->getWorker()->get_sd_state() && mpSavedataBase->isIdle()) {
                mpSavedataBase->anmTextFadeout();
                mState = STATE_ON_SD_MESSAGE2ND;
            } else {
                mpSavedataBase->update();
            }
        }

        void Memory::on_sd_message2nd() {
            if (!mpSavedataBase->isIdle())
                return;
            mState = STATE_ON_CHANGE_TAG1ST;
        }

        void Memory::on_sd_message3rd() {
            if (!mpSavedataBase->isIdle())
                return;
            if (mPage == MEMORY_PAGE_WII) {
                mpSavedataBase->anmChangeWiitoSD();
                mState = STATE_ON_CHANGE_TAG1ST;
            } else {
                mpSavedataBase->anmChangeSDtoWii();
                mState = STATE_ON_CHANGE_TAG1ST;
            }
        }

        void Memory::on_process() {
            if (mpNandSDCardManager->isWorking()) {
                return;
            }

            if (!mpSavedataEdit->isIdle()) {
                return;
            }

            int result = mpNandSDCardManager->getAsyncResult();
            if (result == 0) {
                if (mProcessType == PROC_FMT) {
                    mpSavedataEdit->anmHideBtn0Dialog();
                } else if (mProcessType == PROC_CPY) {
                    mpSavedataEdit->anmTextFadein(MESG_DATA_COPIED);
                } else if (mProcessType == PROC_DEL) {
                    mpSavedataEdit->anmTextFadein(MESG_DATA_ERASED);
                } else if (mProcessType == PROC_MOV) {
                    switch (mpCurrentBox->getBanner()->getFilePerms()) {
                        case 0: {
                            mpSavedataEdit->anmTextFadein(MESG_DATA_MOVED);
                            break;
                        }
                        case 4: {
                            mpSavedataEdit->anmTextFadein(MESG_DATA_MOVED_PARTIAL_LOCK);
                            break;
                        }
                        case 3:
                        case 5: {
                            mpSavedataEdit->anmTextFadein(MESG_DATA_MOVED_CONSOLE_LOCK);
                            break;
                        }
                    }
                }
                if (mProcessType == PROC_DEL || mProcessType == PROC_MOV) {
                    mpSavedataEdit->anmClear();
                    mpNandSDCardManager->cmdCleanQueue();
                    mpNandSDCardManager->calc();

                    SavedataBox* box = NULL;
                    while (box = (SavedataBox*)nw4r::ut::List_GetNext(&mSavedataBoxList, box), box != NULL) {
                        box->setBannerFileInfo(NULL);
                    }

                    if (mPage == MEMORY_PAGE_WII) {
                        mpNandSDCardManager->cmdGetNandFree();
                        send_getbanner_cmd(true);
                    } else {
                        mpNandSDCardManager->cmdGetSDFree();
                        send_getbanner_cmd(false);
                    }
                }
            } else {
                if (0 < result && (result & 0x01) && mProcessType == PROC_CPY && mPage == MEMORY_PAGE_WII) {
                    mpSavedataEdit->anmTextFadein(MESG_DATA_COPIED_SOME_NON_SD);
                } else if (0 < result && (result & 0x02) && mProcessType == PROC_CPY && mPage == MEMORY_PAGE_WII) {
                    switch (mpCurrentBox->getBanner()->getFilePerms()) {
                        case 3: {
                            mpSavedataEdit->anmTextFadein(MESG_DATA_COPIED_CONSOLE_LOCK);
                            break;
                        }
                        case 4:
                        default: {
                            mpSavedataEdit->anmTextFadein(MESG_DATA_COPIED_PARTIAL_LOCK);
                            break;
                        }
                    }
                } else if (0 < result && (result & 0b100) && mProcessType == PROC_CPY && mPage == MEMORY_PAGE_WII) {
                    mpSavedataEdit->anmTextFadein(MESG_DATA_COPIED_CONSOLE_LOCK);
                } else if (0 < result && result == 1 && mPage == MEMORY_PAGE_SD) {
                    mpSavedataEdit->anmTextFadein(mProcessType == PROC_CPY ? MESG_DATA_NOT_FULLY_COPIED : MESG_DATA_NOT_FULLY_MOVED);
                } else {
                    if (result == -6) {
                        mpSavedataEdit->anmTextFadein(mPage == MEMORY_PAGE_WII ? MESG_DATA_ALREADY_EXISTS_SD : MESG_DATA_ALREADY_EXISTS_WII);
                    } else if (result == -7) {
                        mpSavedataEdit->anmTextFadein(mPage == MEMORY_PAGE_WII ? MESG_DATA_NOT_ENOUGH_FREE_SD : MESG_DATA_NOT_ENOUGH_FREE_WII);
                    } else if (result == -12) {
                        mpSavedataEdit->anmTextFadein(MESG_DATA_FILENAME_CONFLICT);
                    } else if (result == -14) {
                        mpSavedataEdit->anmTextFadein(mProcessType == PROC_CPY ? MESG_DATA_MUST_PLAY_TO_COPY : MESG_DATA_MUST_PLAY_TO_MOVE);
                    } else if (result == -13) {
                        mpSavedataEdit->anmTextFadein(MESG_DATA_FILE_CANT_BE_COPIED);
                    } else if (result == -15) {
                        mpSavedataEdit->anmTextFadein(mProcessType == PROC_CPY ? MESG_DATA_CANT_COPY_TO_WII : MESG_DATA_CANT_MOVE_TO_WII);

                    } else {
                        OSReport("fail:  async result = %d\n", result);
                        switch (mProcessType) {
                            case PROC_CPY: {
                                mpSavedataEdit->anmTextFadein(MESG_DATA_COPY_UNK_ERROR);
                                break;
                            }
                            case PROC_DEL: {
                                mpSavedataEdit->anmTextFadein(MESG_DATA_DEL_UNK_ERROR);
                                break;
                            }
                            case PROC_FMT: {
                                mpSavedataEdit->anmHideBtn0Dialog();
                                break;
                            }
                            case PROC_MOV: {
                                mpSavedataEdit->anmTextFadein(MESG_DATA_MOVE_UNK_ERROR);
                                break;
                            }
                        }
                    }
                }
            }

            stop_process();
            mState = STATE_ON_END_PROCESS;
        }

        void Memory::on_end_process() {
            if (!mpSavedataEdit->isIdle()) {
                return;
            }

            if (mProcessType == PROC_FMT) {
                if (mpNandSDCardManager->getWorker()->get_sd_state() == NandSDWorker::SD_STATE_READY) {
                    mpSavedataEdit->anmShowBtn0Dialog(MESG_DATA_SD_FORMATTED, false, false);
                    mState = STATE_ON_END_FORMAT;
                } else {
                    mpSavedataEdit->anmShowBtn0Dialog(MESG_DATA_SD_NOT_FORMATTED, false, false);
                    mState = STATE_ON_END_FORMAT;
                }
            } else {
                mpSavedataEdit->anmTextFadeout();
                mState = STATE_ON_EDIT_FADEOUT2ND;
            }
            mProcessType = PROC_NUL;
        }

        void Memory::on_exist_save() {
            if (mpNandSDCardManager->isWorking()) {
                return;
            }

            if (mpNandSDCardManager->getAsyncResult() == 0) {
                switch (mActionIntent) {
                    case MEMORY_INTENT_COPY: {
                        mpSavedataEdit->anmShowS2Btn2Dialog(MESG_DATA_COPY_DIALOG);
                        mState = STATE_ON_VERIFY_COPY;
                        break;
                    }
                    case MEMORY_INTENT_MOVE: {
                        mpSavedataEdit->anmShowS2Btn2Dialog(MESG_DATA_MOVE_DIALOG);
                        mState = STATE_ON_VERIFY_MOVE;
                        break;
                    }
                    default: {
                        break;
                    }
                }
                mActionIntent = MEMORY_INTENT_NONE;
            } else if (mpNandSDCardManager->getAsyncResult() == 1) {
                mpSavedataEdit->anmSelectFadeout(MESG_DATA_ALREADY_EXISTS_SD);
                mState = STATE_ON_VERIFY1ST;
            } else {
                mpSavedataEdit->anmSelectFadeout(MESG_DATA_SD_PROCESS_FAILED);
                mState = STATE_ON_VERIFY1ST;
            }
        }
        void Memory::on_sd_mount_only() {
            if (mpNandSDCardManager->isWorking())
                return;
            switch (mActionIntent) {
                case MEMORY_INTENT_COPY: {
                    mState = STATE_ON_TRIG_COPY;
                    break;
                }
                case MEMORY_INTENT_MOVE: {
                    mState = STATE_ON_TRIG_MOVE;
                    break;
                }
                default: {
                    break;
                }
            }
        }
        void Memory::on_trig_move() {
            if (mpCurrentBox->getBanner()->getFilePerms() == 1) {
                mpSavedataEdit->anmSelectFadeout(MESG_DATA_FILE_CANT_BE_MOVED);
                mState = STATE_ON_VERIFY1ST;
                return;
            }

            if (mpNandSDCardManager->isWorking()) {
                return;
            }

            if (mPage == MEMORY_PAGE_WII) {
                if (mpCurrentBox->getBanner()->getFilePerms() == 2) {
                    mpSavedataEdit->anmSelectFadeout(MESG_DATA_PARTIAL_COPY_ERROR);
                    mState = STATE_ON_VERIFY1ST;
                    return;
                }

                mSdState = mpNandSDCardManager->getWorker()->get_sd_state();
                switch (mSdState) {
                    case NandSDWorker::SD_STATE_EJECTED: {
                        mpSavedataEdit->anmSelectFadeout(MESG_DATA_NO_SD_CARD);
                        mState = STATE_ON_VERIFY1ST;
                        break;
                    }
                    case NandSDWorker::SD_STATE_INSERTED: {
                        OSReport("NEED MOUNT\n");
                        mpNandSDCardManager->cmdSDMount();
                        mState = STATE_ON_SD_MOUNT_ONLY;
                        break;
                    }
                    case NandSDWorker::SD_STATE_BROKEN:
                    case NandSDWorker::SD_STATE_ILLEGAL: {
                        mpSavedataEdit->anmSelectFadeout(MESG_DATA_SD_DEVICE_BAD);
                        mState = STATE_ON_VERIFY1ST;
                        break;
                    }
                    case NandSDWorker::SD_STATE_READY: {
                        if (mpNandSDCardManager->isSDWriteProtected()) {
                            mpSavedataEdit->anmSelectFadeout(MESG_DATA_SD_CARD_LOCKED);
                            mState = STATE_ON_VERIFY1ST;
                            return;
                        }
                        mpNandSDCardManager->cmdExistSDSave(mpCurrentBox->getBanner()->getWiiTitleId());
                        mState = STATE_ON_EXIST_SAVE;
                        mActionIntent = MEMORY_INTENT_MOVE;
                        break;
                    }
                    case NandSDWorker::SD_STATE_ERROR:
                    default: {
                        mpSavedataEdit->anmSelectFadeout(MESG_DATA_SD_PROCESS_FAILED);
                        mState = STATE_ON_VERIFY1ST;
                        break;
                    }
                }
            } else {
                mSdState = mpNandSDCardManager->getWorker()->get_sd_state();
                switch (mSdState) {
                    case NandSDWorker::SD_STATE_READY: {
                        if (mpNandSDCardManager->isSDWriteProtected()) {
                            mpSavedataEdit->anmSelectFadeout(MESG_DATA_SD_CARD_LOCKED);
                            mState = STATE_ON_VERIFY1ST;
                        } else if (mpNandSDCardManager->getAsyncResult()) {
                            mpSavedataEdit->anmSelectFadeout(MESG_DATA_ALREADY_EXISTS_WII);
                            mState = STATE_ON_VERIFY1ST;
                        } else {
                            mpSavedataEdit->anmShowS2Btn2Dialog(MESG_DATA_MOVE_TO_WII_DIALOG);
                            mState = STATE_ON_VERIFY_MOVE;
                        }
                        break;
                    }
                    default: {
                        mpSavedataEdit->anmSelectFadeout(MESG_DATA_SD_PROCESS_FAILED);
                        mState = STATE_ON_VERIFY1ST;
                    }
                }
            }
        }
        void Memory::on_verify_move() {
            if (!mpSavedataEdit->isIdle() || mpNandSDCardManager->isWorking()) {
                return;
            }

            switch (System::getDialog()->getLastResult()) {
                case DialogWindow::RESULT_LEFT_BUTTON: {
                    if (mPage == MEMORY_PAGE_WII) {
                        if (mpNandSDCardManager->getWorker()->get_sd_state() == NandSDWorker::SD_STATE_READY) {
                            start_process(PROC_MOV);
                            mpNandSDCardManager->cmdMoveSaveNandToSD(mpCurrentBox);
                            mpSavedataEdit->anmTextFadein(MESG_DATA_MOVING_TO_SD);
                        } else if (mpNandSDCardManager->getWorker()->get_sd_state() == NandSDWorker::SD_STATE_EJECTED) {
                            mpSavedataEdit->anmTextFadein(MESG_DATA_NO_SD_CARD);
                            mState = STATE_ON_END_PROCESS;
                            return;
                        } else {
                            mpSavedataEdit->anmTextFadein(MESG_DATA_SD_PROCESS_FAILED);
                            mState = STATE_ON_END_PROCESS;
                            return;
                        }
                    } else {
                        start_process(PROC_MOV);
                        mpNandSDCardManager->cmdMoveSaveSDToNand(mpCurrentBox);
                        mpSavedataEdit->anmTextFadein(MESG_DATA_MOVING_TO_WII);
                    }
                    break;
                }
                case DialogWindow::RESULT_RIGHT_BUTTON: {
                    mpSavedataEdit->anmSelectFadein();
                    mState = STATE_ON_EDIT_FADEIN;
                    break;
                }
            }
            update_sdcard_slot();
        }
    }  // namespace scene
}  // namespace ipl
