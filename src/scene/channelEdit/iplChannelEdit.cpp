
#include "scene/channelEdit/iplChannelEdit.h"

#include "scene/settingSelect/iplSettingButton.h"
#include "scene/settingSelect/iplSettingSelect.h"

#include "sound/iplSound.h"

namespace ipl {
    namespace scene {
        // clang-format off
        static const char* panes[3][15] = {
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

        ChannelEdit::ChannelEdit(EGG::Heap* heap)
            : scene::Base(heap), mState(STATE_ON_NORMAL), mpChanAppBase(NULL), mpChanAppEdit(NULL), mpNandSDCardManager(NULL), mPage(PAGE_WII),
              mpCurrentBox(NULL), mPageOffset(0), mSDState(NandSDWorker::SD_STATE_INITIAL), mArwRVisible(false), mArwLVisible(false),
              mProcessType(PROC_NUL), mActionIntent(INTENT_NONE) {
            System::stopReceiveSchedule();
            nw4r::ut::List_Init(&mChanAppBoxList, offsetof(ChanAppBox, mLink));
        }

        ChannelEdit::~ChannelEdit() {
            delete mpChanAppBase;
            delete mpChanAppEdit;
            delete mpNandSDCardManager;

            ChanAppBox* currBox = (ChanAppBox*)nw4r::ut::List_GetNext(&mChanAppBoxList, NULL);
            while (currBox != NULL) {
                nw4r::ut::List_Remove(&mChanAppBoxList, currBox);
                delete currBox;
                currBox = (ChanAppBox*)nw4r::ut::List_GetNext(&mChanAppBoxList, NULL);
            }

            for (int i = 0; i < MAX_BALLOONS; i++) {
                delete mpBalloons[i];
            }
        }

        void ChannelEdit::prepare() {
            System::getBS2Manager()->abort();

            mpLayoutFile = System::getNandManager()->readLayoutAsync(getSceneHeap(), "chanEdit.ash");
            mpBalloonFile = System::getNandManager()->readLayoutAsync(getSceneHeap(), "balloon.ash");
            mpCorruptIconFile = System::getNandManager()->readAsync(getSceneHeap(), "corrupt_icon.ash");
            mpTmpTitleIconFile = System::getNandManager()->readAsync(getSceneHeap(), "tmptitle_icon.ash");
        }

        void ChannelEdit::create() {
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

            mpChanAppBase = new ChanAppBase(System::getMem2App(), mpLayoutFile, "arc", "it_ObjChannelEdit_a.brlyt");
            mpChanAppBase->anmFadein();

            for (int i = 0; i < 45; i++) {
                nw4r::ut::List_Append(&mChanAppBoxList, new ChanAppBox(System::getMem2App(), mpLayoutFile, "arc", "it_ObjChannelEdit_b.brlyt"));
            }

            mpChanAppEdit = new ChanAppEdit(System::getMem2App(), mpLayoutFile, "arc", "mn_ChannelDetail_a.brlyt");

            mpNandSDCardManager = new (System::getMem2App(), 32) NandSDCardManager(NandSDCardManager::NAND_MODE_APPS);

            for (int i = 0; i < MAX_BALLOONS; i++) {
                nw4r::lyt::Pane* currPane = mpChanAppBase->getLytObject()->FindPaneByName(panes[1][i]);
                nw4r::math::VEC3 translation(0, 0, 0);
                PSMTXMultVec(currPane->GetGlobalMtx(), translation, translation);
                translation.y -= 55.0f;

                mpBalloons[i] = new TextBalloon(getSceneHeap(), mpBalloonFile, "arc", "my_IplTopBalloon_a.brlyt", translation, 90.f, 60.f);

                ChanAppBox* box = (ChanAppBox*)nw4r::ut::List_GetNth(&mChanAppBoxList, i + 15);
                box->setTextBalloon(mpBalloons[i]);
            }

            send_getthumbnail_cmd(true);
            mState = STATE_ON_FADEIN1ST;
        }

        void ChannelEdit::calc() {
            mpNandSDCardManager->calc();

            if (!((SettingSelect*)System::getScene(SCENE_SETTING_SELECT))->isWaitingChild()) {
                return;
            }

            mpChanAppBase->calc();

            ChanAppBox* currBox = NULL;
            while (currBox = (ChanAppBox*)nw4r::ut::List_GetNext(&mChanAppBoxList, currBox), currBox != NULL) {
                currBox->calc();
            }

            mpChanAppEdit->calc();

            for (int i = 0; i < MAX_BALLOONS; i++) {
                mpBalloons[i]->calc();
            }

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
                case STATE_ON_END_DEL: {
                    on_end_del();
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
                case STATE_ON_EXIST_APP: {
                    on_exist_app();
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
                case STATE_ON_END_MOVE: {
                    on_end_move();
                    break;
                }
            }
        }

        void ChannelEdit::setpos_chanapp_box() {
            int i = 0;
            ChanAppBox* box = NULL;

            while (box = (ChanAppBox*)nw4r::ut::List_GetNext(&mChanAppBoxList, box), box != NULL) {
                nw4r::lyt::Pane* currPane = mpChanAppBase->getLytObject()->FindPaneByName(panes[0][i]);
                nw4r::math::VEC3 translation(0, 0, 0);
                PSMTXMultVec(currPane->GetGlobalMtx(), translation, translation);
                box->setTranslate(translation);
                i++;

                if (box->getTextBalloon() != NULL) {
                    box->terminateBalloon();
                }
            }
        }

        void ChannelEdit::fadein_chanapp_box() {
            int i = 0;
            ChanAppBox* box = NULL;
            while (box = (ChanAppBox*)nw4r::ut::List_GetNext(&mChanAppBoxList, box), box != NULL) {
                nw4r::lyt::Pane* currPane = mpChanAppBase->getLytObject()->FindPaneByName(panes[0][i]);
                nw4r::math::VEC3 translation(0, 0, 0);
                PSMTXMultVec(currPane->GetGlobalMtx(), translation, translation);
                box->setTranslate(translation);

                box->anmFadein();
                i++;
            }
        }

        void ChannelEdit::fadeout_chanapp_box() {
            ChanAppBox* box = NULL;
            while (box = (ChanAppBox*)nw4r::ut::List_GetNext(&mChanAppBoxList, box), box != NULL) {
                box->setThumbnail(NULL);
                box->anmFadeout();
            }
        }

        void ChannelEdit::send_getthumbnail_cmd(bool isWiiNotSD) {
            for (int i = 0; i < MAX_BALLOONS; i++) {
                ChanAppBox* box = (ChanAppBox*)nw4r::ut::List_GetNth(&mChanAppBoxList, i + 15);
                mpNandSDCardManager->cmdGetThumbnail(box, mPageOffset + i, isWiiNotSD);
            }
        }

        void ChannelEdit::update_sdcard_slot() {
            if (mPage != PAGE_SD)
                return;

            mSDState = mpNandSDCardManager->getWorker()->get_sd_state();
            if (mSDState == NandSDWorker::SD_STATE_READY)
                return;

            mpNandSDCardManager->cmdCleanQueue();

            mPageOffset = 0;

            ChanAppBox* box;
            box = NULL;
            while (box = (ChanAppBox*)nw4r::ut::List_GetNext(&mChanAppBoxList, box), box != NULL) {
                if (box->getTextBalloon() != NULL) {
                    box->terminateBalloon();
                }
            }

            mpChanAppEdit->clearAllThumbnails();

            switch (mState) {
                case STATE_ON_NORMAL: {
                    fadeout_chanapp_box();
                    mState = STATE_ON_CHANGE_TAG1ST;
                    break;
                }
                case STATE_ON_EDIT: {
                    mpChanAppEdit->anmClear();
                    mpChanAppEdit->anmFadeout();
                    mState = STATE_ON_EDIT_FADEOUT2ND;
                    break;
                }
                case STATE_ON_VERIFY_COPY:
                case STATE_ON_VERIFY_DEL:
                case STATE_ON_VERIFY_MOVE: {
                    System::getDialog()->terminate();
                    mpChanAppEdit->anmClear();
                    mpChanAppEdit->anmSelectFadein();
                    mState = STATE_ON_EDIT_FADEIN;
                    break;
                }
                case STATE_ON_VERIFY1ST: {
                    mpChanAppEdit->anmClear();
                    mpChanAppEdit->anmSelectFadein();
                    mState = STATE_ON_VERIFY2ND;
                    break;
                }
                default: {
                    break;
                }
            }
        }

        void ChannelEdit::update_arw() {
            if (!mArwRVisible && enable_scroll_r()) {
                mpChanAppBase->anmArwAppear(true, false);
                mArwRVisible = true;
            } else if (mArwRVisible && !enable_scroll_r()) {
                mpChanAppBase->anmArwDisappear(true, false);
                mArwRVisible = false;
            }
            if (!mArwLVisible && enable_scroll_l()) {
                mpChanAppBase->anmArwAppear(false, true);
                mArwLVisible = true;
            } else if (mArwLVisible && !enable_scroll_l()) {
                mpChanAppBase->anmArwDisappear(false, true);
                mArwLVisible = false;
            }
        }

        void ChannelEdit::update_free() {
            if (mPage == PAGE_WII) {
                update_nand_free();
            } else {
                update_sd_free();
            }
        }

        void ChannelEdit::update_nand_free() {
            int blocksFree = mpNandSDCardManager->getNandBlocksFree();
            if (blocksFree < 0) {
                mpChanAppBase->set_visible("N_Capa_00", false);
                mpChanAppBase->set_visible("T_Capa_00", false);
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

            mpChanAppBase->set_visible("T_Capa_00", true);
            mpChanAppBase->set_visible("N_Capa_00", true);
            mpChanAppBase->set_textbox("T_Capa_00", blocksFreeMsg);
        }

        void ChannelEdit::update_sd_free() {
            if (mpNandSDCardManager->getWorker()->get_sd_state() != NandSDWorker::SD_STATE_READY) {
                mpChanAppBase->set_visible("N_Capa_00", false);
                mpChanAppBase->set_visible("T_Capa_00", false);
                return;
            }

            int blocksFree = mpNandSDCardManager->getSDBlocksFree();
            if (blocksFree < 0) {
                mpChanAppBase->set_visible("N_Capa_00", false);
                mpChanAppBase->set_visible("T_Capa_00", false);
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

            mpChanAppBase->set_visible("T_Capa_00", true);
            mpChanAppBase->set_visible("N_Capa_00", true);
            mpChanAppBase->set_textbox("T_Capa_00", blocksFreeMsg);
        }

        void ChannelEdit::start_process(int processType) {
            System::getHomeButtonMenu()->disable();

            mProcessType = processType;

            mpNandSDCardManager->disableThumbnailFetching();

            snd::getSystem()->startSE("WIPL_SE_COPYING");
            if (processType == PROC_FMT) {
                mpChanAppEdit->anmShowBtn0Dialog(MESG_DATA_FORMATTING, true, true);
            } else {
                mpChanAppEdit->anmStartWaitAnm();
            }
            mState = STATE_ON_PROCESS;
        }

        void ChannelEdit::stop_process() {
            mpNandSDCardManager->enableThumbnailFetching();
            System::getHomeButtonMenu()->enable();
            snd::getSystem()->startSE("WIPL_SE_COPY_FINISH");
            mpChanAppEdit->anmStopWaitAnm();
        }

        void ChannelEdit::start_scroll_r(bool playButtonAnm, bool playSound) {
            mpNandSDCardManager->cmdCleanQueue();

            ChanAppBox* box = NULL;
            while (box = (ChanAppBox*)nw4r::ut::List_GetNext(&mChanAppBoxList, box), box != NULL) {
                box->clearEvent();
            }

            if (playSound) {
                snd::getSystem()->startSE("WSD_SELECT");
            }

            mpChanAppBase->anmScrollR(playButtonAnm);
            mState = STATE_ON_SCROLL_R;
        }

        void ChannelEdit::start_scroll_l(bool playButtonAnm, bool playSound) {
            mpNandSDCardManager->cmdCleanQueue();

            ChanAppBox* box = NULL;
            while (box = (ChanAppBox*)nw4r::ut::List_GetNext(&mChanAppBoxList, box), box != NULL) {
                box->clearEvent();
            }

            if (playSound) {
                snd::getSystem()->startSE("WSD_SELECT");
            }

            mpChanAppBase->anmScrollL(playButtonAnm);
            mState = STATE_ON_SCROLL_L;
        }

        bool ChannelEdit::enable_scroll_r() {
            if (mState != STATE_ON_NORMAL) {
                return false;
            }

            if (mPage == PAGE_WII) {
                return mpNandSDCardManager->getWorker()->get_nand_app_num() - mPageOffset > 15;
            } else {
                if (mpNandSDCardManager->getWorker()->get_sd_state() == NandSDWorker::SD_STATE_READY) {
                    return mpNandSDCardManager->getWorker()->get_sd_app_num() - mPageOffset > 15;
                } else {
                    return false;
                }
            }
        }

        bool ChannelEdit::enable_scroll_l() {
            if (mState != STATE_ON_NORMAL) {
                return false;
            }
            return mPageOffset > 0;
        }

        void ChannelEdit::draw() {
            if (!System::onDefaultDrawLayer()) {
                return;
            }

            utility::Graphics::setOrtho(0);
            mpChanAppBase->draw();

            ChanAppBox* box = NULL;
            while (box = (ChanAppBox*)nw4r::ut::List_GetNext(&mChanAppBoxList, box), box != NULL) {
                box->draw();
            }

            for (int i = 0; i < MAX_BALLOONS; i++) {
                mpBalloons[i]->draw();
            }

            mpChanAppBase->getLytObject()->draw("N_ArwR");
            mpChanAppBase->getLytObject()->draw("N_ArwL");

            mpChanAppEdit->draw();
        }

        BOOL ChannelEdit::isResetAcceptable() const {
            return mProcessType == PROC_NUL;
        }

        void ChannelEdit::onPoint(AnmPane* pane) {
            if ((strcmp(pane->getName(), "B_SelectWii_00") == 0 && mPage == PAGE_WII) ||
                (strcmp(pane->getName(), "B_SelectSd_00") == 0 && mPage == PAGE_SD)) {
                return;
            }

            snd::getSystem()->startSE("WIPL_SE_BT_TARGETTING");

            controller::Interface* controller = System::getYoungController();
            if (controller != NULL) {
                controller->rumble();
            }
            pane->on_cmd_recv(AnmPane::ANIM_CMD_POINT);
        }

        void ChannelEdit::onLeft(AnmPane* pane) {
            if ((strcmp(pane->getName(), "B_SelectWii_00") == 0 && mPage == PAGE_WII) ||
                (strcmp(pane->getName(), "B_SelectSd_00") == 0 && mPage == PAGE_SD)) {
                return;
            }

            pane->on_cmd_recv(AnmPane::ANIM_CMD_LEFT);
        }

        void ChannelEdit::onTrig(AnmPane* pane) {
            if (mState != STATE_ON_NORMAL && mState != STATE_ON_SD_MESSAGE1ST) {
                return;
            }

            if (strcmp(pane->getName(), "B_SelectWii_00") == 0 && mPage == PAGE_SD) {
                ChanAppBox* box = NULL;
                while (box = (ChanAppBox*)nw4r::ut::List_GetNext(&mChanAppBoxList, box), box != NULL) {
                    box->setThumbnail(NULL);
                }

                snd::getSystem()->startSE("WIPL_SE_BT_PUSH");

                mPageOffset = 0;
                mpNandSDCardManager->cmdCleanQueue();
                mpNandSDCardManager->cmdListNand();
                mPage = PAGE_WII;

                mpChanAppBase->anmArwDisappear(mArwRVisible, mArwLVisible);
                mArwRVisible = false;
                mArwLVisible = false;

                mpChanAppBase->set_visible("N_Capa_00", false);
                mpChanAppBase->set_visible("T_Capa_00", false);

                if (mState == STATE_ON_NORMAL) {
                    mpChanAppBase->anmChangeWiitoSD();
                    fadeout_chanapp_box();
                    mState = STATE_ON_CHANGE_TAG1ST;
                } else {
                    mpChanAppBase->anmTextFadeout();
                    mState = STATE_ON_SD_MESSAGE3RD;
                }
            } else if (strcmp(pane->getName(), "B_SelectSd_00") == 0 && mPage == PAGE_WII) {
                ChanAppBox* box = NULL;
                while (box = (ChanAppBox*)nw4r::ut::List_GetNext(&mChanAppBoxList, box), box != NULL) {
                    box->setThumbnail(NULL);
                }

                snd::getSystem()->startSE("WIPL_SE_BT_PUSH");

                mpNandSDCardManager->cmdSDMount();
                mPageOffset = 0;
                mpNandSDCardManager->cmdCleanQueue();
                mpNandSDCardManager->cmdListSD();
                mPage = PAGE_SD;

                mpChanAppBase->anmArwDisappear(mArwRVisible, mArwLVisible);
                mArwRVisible = false;
                mArwLVisible = false;

                mpChanAppBase->set_visible("N_Capa_00", false);
                mpChanAppBase->set_visible("T_Capa_00", false);

                if (mState == STATE_ON_NORMAL) {
                    mpChanAppBase->anmChangeSDtoWii();
                    fadeout_chanapp_box();
                    mState = STATE_ON_CHANGE_TAG1ST;
                } else {
                    mpChanAppBase->anmTextFadeout();
                    mState = STATE_ON_SD_MESSAGE3RD;
                }
            } else if (strcmp(pane->getName(), "B_ArwR") == 0 && enable_scroll_r()) {
                start_scroll_r(true, true);
            } else if (strcmp(pane->getName(), "B_ArwL") == 0 && enable_scroll_l()) {
                start_scroll_l(true, true);
            }
        }

        void ChannelEdit::onTrig(ChanAppBox* box) {
            if (mState != STATE_ON_NORMAL) {
                return;
            }

            mpCurrentBox = box;
            if (box->getTextBalloon() != NULL)
                box->getTextBalloon()->terminate();

            mpChanAppEdit->anmFadein(box);
            snd::getSystem()->startSE("WIPL_SE_DECIDE");
            mState = STATE_ON_EDIT_FADEIN;
        }

        void ChannelEdit::onTrigButton(bool isErr) {
            mpChanAppBase->anmArwDisappear(mArwRVisible, mArwLVisible);

            mpChanAppBase->anmFadeout(isErr);
            if (!isErr) {
                fadeout_chanapp_box();
            }
            mpNandSDCardManager->cmdTerminate();
            mState = STATE_ON_FADEOUT1ST;
        }

        void ChannelEdit::onTrigCopy() {
            if (mPage == PAGE_WII) {
                mpNandSDCardManager->cmdSDMount();
            } else {
                mpNandSDCardManager->cmdExistNandApp(mpCurrentBox->getThumbnail()->getSDTitleId());
            }
            mActionIntent = INTENT_COPY;
            mState = STATE_ON_TRIG_COPY;
            return;
        }

        void ChannelEdit::onTrigDel() {
            if (mPage == PAGE_SD) {
                mSDState = mpNandSDCardManager->getWorker()->get_sd_state();
                switch (mSDState) {
                    case NandSDWorker::SD_STATE_READY: {
                        if (mpNandSDCardManager->isSDWriteProtected()) {
                            mpChanAppEdit->anmSelectFadeout(MESG_DATA_SD_CARD_LOCKED);
                            mState = STATE_ON_VERIFY1ST;
                        } else {
                            mpChanAppEdit->anmShowS2Btn2Dialog(MESG_DATA_ERASE_DIALOG);
                            mState = STATE_ON_VERIFY_DEL;
                        }
                        break;
                    }
                    default: {
                        mpChanAppEdit->anmSelectFadeout(MESG_DATA_SD_PROCESS_FAILED);
                        mState = STATE_ON_VERIFY1ST;
                        break;
                    }
                }
            } else {
                mpChanAppEdit->anmShowS2Btn2Dialog(MESG_DATA_ERASE_DIALOG);
                mState = STATE_ON_VERIFY_DEL;
            }
        }

        void ChannelEdit::onTrigMove() {
            if (mPage == PAGE_WII) {
                mpNandSDCardManager->cmdSDMount();
            } else {
                mpNandSDCardManager->cmdExistNandApp(mpCurrentBox->getThumbnail()->getSDTitleId());
            }
            mActionIntent = INTENT_MOVE;
            mState = STATE_ON_TRIG_MOVE;
        }

        void ChannelEdit::on_normal() {
            SettingButton* settingSel = (SettingButton*)System::getScene(SCENE_SETTING_BUTTON);
            if (settingSel->update()) {
                onTrigButton(false);

                ChanAppBox* box = NULL;
                while (box = (ChanAppBox*)nw4r::ut::List_GetNext(&mChanAppBoxList, box), box != NULL) {
                    box->setThumbnail(NULL);
                }
                return;
            }

            update_sdcard_slot();
            update_arw();
            update_free();

            mpChanAppBase->update();

            ChanAppBox* box = NULL;
            while (box = (ChanAppBox*)nw4r::ut::List_GetNext(&mChanAppBoxList, box), box != NULL) {
                box->update();
            }

            if (mPage == PAGE_WII) {
                if (mPageOffset == mpNandSDCardManager->getWorker()->get_nand_app_num() && enable_scroll_l()) {
                    start_scroll_l(false, false);
                    return;
                }
            } else {
                if (mPageOffset == mpNandSDCardManager->getWorker()->get_sd_app_num() && enable_scroll_l()) {
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

        void ChannelEdit::on_fadein1st() {
            if (!mpChanAppBase->isIdle()) {
                return;
            }
            if (mpNandSDCardManager->isWorking()) {
                return;
            }

            fadein_chanapp_box();
            mState = STATE_ON_FADEIN2ND;
        }

        void ChannelEdit::on_fadein2nd() {
            ChanAppBox* box = NULL;
            while (box = (ChanAppBox*)nw4r::ut::List_GetNext(&mChanAppBoxList, box), box != NULL) {
                if (!box->isIdle()) {
                    return;
                }
            }
            mState = STATE_ON_NORMAL;
        }

        void ChannelEdit::on_fadeout1st() {
            if (!mpChanAppBase->isIdle()) {
                return;
            }

            if (!mpNandSDCardManager->isTerminated()) {
                return;
            }

            mState = STATE_ON_FADEOUT2ND;
        }

        void ChannelEdit::on_fadeout2nd() {
            requestSceneDestruction();
            System::getBS2Manager()->restart();
            OSReport(" ... bs2 manager restarted\n");
        }

        void ChannelEdit::on_scroll_r() {
            if (mpChanAppBase->isIdle() && sd_worker_ready(mpNandSDCardManager)) {
                mPageOffset += 15;
                ChanAppBox* box = NULL;
                while (box = (ChanAppBox*)nw4r::ut::List_GetNext(&mChanAppBoxList, box), box != NULL) {
                    box->setThumbnail(NULL);
                }

                send_getthumbnail_cmd(mPage == PAGE_WII);
                mState = STATE_ON_NORMAL;
            }
            setpos_chanapp_box();
        }

        void ChannelEdit::on_scroll_l() {
            if (mpChanAppBase->isIdle() && sd_worker_ready(mpNandSDCardManager)) {
                mPageOffset -= 15;
                ChanAppBox* box = NULL;
                while (box = (ChanAppBox*)nw4r::ut::List_GetNext(&mChanAppBoxList, box), box != NULL) {
                    box->setThumbnail(NULL);
                }

                send_getthumbnail_cmd(mPage == PAGE_WII);
                mState = STATE_ON_NORMAL;
            }
            setpos_chanapp_box();
        }

        void ChannelEdit::on_change_tag1st() {
            if (mpNandSDCardManager->isWorking() || !sd_worker_ready(mpNandSDCardManager))
                return;

            ChanAppBox* box = NULL;
            while (box = (ChanAppBox*)nw4r::ut::List_GetNext(&mChanAppBoxList, box), box != NULL) {
                if (!box->isIdle()) {
                    return;
                }
                if (box->getThumbnail() != NULL) {
                    box->setThumbnail(NULL);
                }
            }

            if (mPage == PAGE_SD) {
                mSDState = mpNandSDCardManager->getWorker()->get_sd_state();
                switch (mSDState) {
                    case NandSDWorker::SD_STATE_EJECTED: {
                        if (!mpChanAppBase->isIdle())
                            return;
                        mpChanAppBase->anmTextFadein(MESG_DATA_NO_SD_CARD);
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
                        if (!mpChanAppBase->isIdle()) {
                            return;
                        }
                        mpChanAppBase->anmTextFadein(MESG_DATA_SD_DEVICE_BAD);
                        mState = STATE_ON_SD_MESSAGE1ST;
                        break;
                    }
                    case NandSDWorker::SD_STATE_READY: {
                        if (!mpChanAppBase->isIdle()) {
                            return;
                        }
                        send_getthumbnail_cmd(false);
                        fadein_chanapp_box();
                        mState = STATE_ON_CHANGE_TAG2ND;
                        break;
                    }
                    case NandSDWorker::SD_STATE_ERROR:
                    default: {
                        OSReport("get async resutl = %d\n", mpNandSDCardManager->getAsyncResult());
                        if (mpChanAppBase->isIdle()) {
                            mpChanAppBase->anmTextFadein(0x97);
                            mState = STATE_ON_SD_MESSAGE1ST;
                        }
                        break;
                    }
                }
            } else {
                send_getthumbnail_cmd(true);
                fadein_chanapp_box();
                mState = STATE_ON_CHANGE_TAG2ND;
            }
        }

        void ChannelEdit::on_change_tag2nd() {
            ChanAppBox* box = NULL;
            while (box = (ChanAppBox*)nw4r::ut::List_GetNext(&mChanAppBoxList, box), box != NULL) {
                if (!box->isIdle()) {
                    return;
                }
            }
            mState = STATE_ON_NORMAL;
        }

        void ChannelEdit::on_trig_copy() {
            if (mpNandSDCardManager->isWorking()) {
                return;
            }

            if (mpCurrentBox->getThumbnail()->getIsCorrupt()) {
                mpChanAppEdit->anmSelectFadeout(MESG_DATA_FILE_CANT_BE_COPIED);
                mState = STATE_ON_VERIFY1ST;
                return;
            }

            if (mPage == PAGE_WII) {
                if (mpCurrentBox->getThumbnail()->getMatchesTmpTitle()) {
                    mpChanAppEdit->anmSelectFadeout(MESG_DATA_FILE_CANT_BE_COPIED);
                    mState = STATE_ON_VERIFY1ST;
                    return;
                }
                mSDState = mpNandSDCardManager->getWorker()->get_sd_state();
                switch (mSDState) {
                    case NandSDWorker::SD_STATE_EJECTED: {
                        mpChanAppEdit->anmSelectFadeout(MESG_DATA_NO_SD_CARD);
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
                        mpChanAppEdit->anmSelectFadeout(MESG_DATA_SD_DEVICE_BAD);
                        mState = STATE_ON_VERIFY1ST;
                        break;
                    }
                    case NandSDWorker::SD_STATE_READY: {
                        if (mpNandSDCardManager->isSDWriteProtected()) {
                            mpChanAppEdit->anmSelectFadeout(MESG_DATA_SD_CARD_LOCKED);
                            mState = STATE_ON_VERIFY1ST;
                            return;
                        }
                        mpNandSDCardManager->cmdExistSDApp(mpCurrentBox->getThumbnail()->getWiiTitleId());
                        mState = STATE_ON_EXIST_APP;
                        break;
                    }
                    case NandSDWorker::SD_STATE_ERROR:
                    default: {
                        mpChanAppEdit->anmSelectFadeout(MESG_DATA_SD_PROCESS_FAILED);
                        mState = STATE_ON_VERIFY1ST;
                        break;
                    }
                }
            } else {
                if (mpNandSDCardManager->getAsyncResult() != NandSDWorker::RESULT_OK) {
                    if (mpCurrentBox->getThumbnail()->getSDTitleId() == (ESTitleId32)mpNandSDCardManager->getTmpTitle()) {
                        u32 numFreeChannels;
                        SCGetFreeChannelAppCount(&numFreeChannels);
                        if (numFreeChannels == 0) {
                            mpChanAppEdit->anmSelectFadeout(MESG_DATA_TOO_FEW_RESOURCES);
                            mState = STATE_ON_VERIFY1ST;
                        } else {
                            mpChanAppEdit->anmShowS2Btn2Dialog(MESG_DATA_COPY_TO_WII_DIALOG);
                            mState = STATE_ON_VERIFY_COPY;
                        }
                    } else {
                        mpChanAppEdit->anmSelectFadeout(MESG_DATA_ALREADY_EXISTS_WII);
                        mState = STATE_ON_VERIFY1ST;
                    }
                } else {
                    mpChanAppEdit->anmShowS2Btn2Dialog(MESG_DATA_COPY_TO_WII_DIALOG);
                    mState = STATE_ON_VERIFY_COPY;
                }
            }
        }

        void ChannelEdit::on_edit_fadein() {
            if (!mpChanAppEdit->isIdle()) {
                return;
            }
            mState = STATE_ON_EDIT;
        }

        void ChannelEdit::on_edit() {
            if (mpChanAppEdit->isIdle()) {
                SettingButton* settingSel = (SettingButton*)System::getScene(SCENE_SETTING_BUTTON);
                if (settingSel->update()) {
                    mState = STATE_ON_EDIT_FADEOUT1ST;
                    return;
                }
            }
            mpChanAppEdit->update();
            update_sdcard_slot();
        }

        void ChannelEdit::on_edit_fadeout1st() {
            SettingButton* settingSel = (SettingButton*)System::getScene(SCENE_SETTING_BUTTON);
            if (!settingSel->isPlaying()) {
                mpChanAppEdit->anmFadeout();
                mState = STATE_ON_EDIT_FADEOUT2ND;
            }
        }

        void ChannelEdit::on_edit_fadeout2nd() {
            if (!mpChanAppEdit->isIdle()) {
                return;
            }
            mState = STATE_ON_NORMAL;
        }

        void ChannelEdit::on_verify1st() {
            if (mpChanAppEdit->isIdle()) {
                SettingButton* settingSel = (SettingButton*)System::getScene(SCENE_SETTING_BUTTON);
                if (settingSel->update()) {
                    mpChanAppEdit->anmSelectFadein();
                    mState = STATE_ON_VERIFY2ND;
                }
            }
            mActionIntent = INTENT_NONE;
            update_sdcard_slot();
        }

        void ChannelEdit::on_verify2nd() {
            if (!mpChanAppEdit->isIdle()) {
                return;
            }
            mState = STATE_ON_EDIT;
        }

        void ChannelEdit::on_verify_copy() {
            if (!mpChanAppEdit->isIdle() || mpNandSDCardManager->isWorking())
                return;

            switch (System::getDialog()->getLastResult()) {
                case DialogWindow::RESULT_LEFT_BUTTON: {
                    if (mPage == PAGE_WII) {
                        if (mpNandSDCardManager->getWorker()->get_sd_state() == NandSDWorker::SD_STATE_READY) {
                            start_process(PROC_CPY);
                            mpNandSDCardManager->cmdCopyAppNandToSD(mpCurrentBox->getThumbnail()->getWiiTitleId());
                            mpChanAppEdit->anmTextFadein(MESG_DATA_COPYING_TO_SD);
                        } else if (mpNandSDCardManager->getWorker()->get_sd_state() == NandSDWorker::SD_STATE_EJECTED) {
                            mpChanAppEdit->anmTextFadein(MESG_DATA_NO_SD_CARD);
                            mState = STATE_ON_END_PROCESS;
                            return;
                        } else {
                            mpChanAppEdit->anmTextFadein(MESG_DATA_SD_PROCESS_FAILED);
                            mState = STATE_ON_END_PROCESS;
                            return;
                        }
                    } else {
                        start_process(PROC_CPY);
                        mpNandSDCardManager->cmdCopyAppSDToNand(mpCurrentBox->getThumbnail()->getSDTitleId());
                        mpChanAppEdit->anmTextFadein(MESG_DATA_COPYING_TO_WII);
                    }
                    break;
                }
                case DialogWindow::RESULT_RIGHT_BUTTON: {
                    mpChanAppEdit->anmSelectFadein();
                    mState = STATE_ON_EDIT_FADEIN;
                    break;
                }
            }
            update_sdcard_slot();
        }

        void ChannelEdit::on_verify_del() {
            if (!mpChanAppEdit->isIdle())
                return;

            switch (System::getDialog()->getLastResult()) {
                case DialogWindow::RESULT_LEFT_BUTTON:
                    start_process(PROC_DEL);
                    if (mPage == PAGE_WII) {
                        mpNandSDCardManager->cmdDelNandApp(mpCurrentBox);
                        if (TVRCManager::getHandle()->isTVRCChannel(ES_TITLE_CODE(mpCurrentBox->getThumbnail()->getWiiTitleId()))) {
                            TVRCManager::getHandle()->resetProcessAsync(TRUE);
                        }
                        mpChanAppEdit->anmTextFadein(MESG_DATA_ERASING);
                    } else {
                        mpNandSDCardManager->cmdDelSDApp(mpCurrentBox);
                        mpChanAppEdit->anmTextFadein(MESG_DATA_ERASING_SD);
                    }
                    break;
                case DialogWindow::RESULT_RIGHT_BUTTON:
                    mpChanAppEdit->anmSelectFadein();
                    mState = STATE_ON_EDIT_FADEIN;
                    break;
            }
            update_sdcard_slot();
        }

        void ChannelEdit::on_verify_format() {
            if (!mpChanAppEdit->isIdle()) {
                return;
            }

            switch (System::getDialog()->getLastResult()) {
                case DialogWindow::RESULT_LEFT_BUTTON: {
                    start_process(PROC_FMT);
                    mpNandSDCardManager->cmdSDFormat();
                    break;
                }
                case DialogWindow::RESULT_RIGHT_BUTTON: {
                    if (mPage == PAGE_WII) {
                        mState = STATE_ON_EDIT;
                    } else {
                        mpChanAppBase->anmTextFadein(MESG_DATA_SD_DEVICE_BAD);
                        mState = STATE_ON_SD_MESSAGE1ST;
                    }
                    break;
                }
            }
        }

        void ChannelEdit::on_end_format() {
            if (System::getDialog()->getLastResult() != DialogWindow::RESULT_WAIT) {
                return;
            }

            if (mPage == PAGE_WII) {
                mState = STATE_ON_EDIT;
            } else if (mpNandSDCardManager->getWorker()->get_sd_state() != NandSDWorker::SD_STATE_INITIAL) {
                mpChanAppBase->anmTextFadein(MESG_DATA_SD_DEVICE_BAD);
                mState = STATE_ON_SD_MESSAGE1ST;
            }
        }

        void ChannelEdit::on_end_del() {
            if (!mpChanAppEdit->isIdle()) {
                return;
            }

            mpNandSDCardManager->cmdCleanQueue();
            mpNandSDCardManager->calc();

            ChanAppBox* box = NULL;
            while (box = (ChanAppBox*)nw4r::ut::List_GetNext(&mChanAppBoxList, box), box != NULL) {
                box->setThumbnail(NULL);
            }

            if (mPage == 0) {
                mpNandSDCardManager->cmdGetNandFree();
                send_getthumbnail_cmd(true);
            } else {
                mpNandSDCardManager->cmdGetSDFree();
                send_getthumbnail_cmd(false);
            }

            mpChanAppEdit->anmTextFadein(MESG_DATA_ERASED);
            stop_process();

            mState = STATE_ON_END_PROCESS;
        }

        void ChannelEdit::on_sd_mount() {
            if (mpNandSDCardManager->isWorking()) {
                return;
            }
            mpNandSDCardManager->cmdListSD();
            mState = STATE_ON_CHANGE_TAG1ST;
        }

        void ChannelEdit::on_sd_message1st() {
            if (!mpChanAppEdit->isIdle()) {
                return;
            }

            SettingButton* settingSel = (SettingButton*)System::getScene(SCENE_SETTING_BUTTON);
            if (settingSel->update()) {
                onTrigButton(true);
                return;
            }

            if (mSDState != mpNandSDCardManager->getWorker()->get_sd_state() && mpChanAppBase->isIdle()) {
                mpChanAppBase->anmTextFadeout();
                mState = STATE_ON_SD_MESSAGE2ND;
            } else {
                mpChanAppBase->update();
            }
        }

        void ChannelEdit::on_sd_message2nd() {
            if (!mpChanAppBase->isIdle()) {
                return;
            }
            mState = STATE_ON_CHANGE_TAG1ST;
        }

        void ChannelEdit::on_sd_message3rd() {
            if (!mpChanAppBase->isIdle()) {
                return;
            }
            if (mPage == PAGE_WII) {
                mpChanAppBase->anmChangeWiitoSD();
                mState = STATE_ON_CHANGE_TAG1ST;
            } else {
                mpChanAppBase->anmChangeSDtoWii();
                mState = STATE_ON_CHANGE_TAG1ST;
            }
        }

        void ChannelEdit::on_process() {
            if (mpNandSDCardManager->isWorking()) {
                return;
            }

            if (!mpChanAppEdit->isIdle()) {
                return;
            }

            int result = mpNandSDCardManager->getAsyncResult();
            if (result == 0) {
                if (mProcessType == PROC_FMT) {
                    mpChanAppEdit->anmHideBtn0Dialog();
                } else if (mProcessType == PROC_CPY) {
                    mpChanAppEdit->anmTextFadein(MESG_DATA_COPIED);
                    System::getChannelManager()->reserveRefresh();
                } else if (mProcessType == PROC_DEL) {
                    System::getChannelManager()->reserveRefresh();
                    mpChanAppEdit->anmClear();
                    mState = STATE_ON_END_DEL;
                    return;
                } else if (mProcessType == PROC_MOV) {
                    System::getChannelManager()->reserveRefresh();
                    mpChanAppEdit->anmClear();
                    mState = STATE_ON_END_MOVE;
                    return;
                }
            } else {
                if (result == NandSDWorker::RESULT_ALREADY_EXISTS) {
                    mpChanAppEdit->anmTextFadein(mPage == PAGE_WII ? MESG_DATA_ALREADY_EXISTS_SD : MESG_DATA_ALREADY_EXISTS_WII);
                } else if (result == NandSDWorker::RESULT_OUT_OF_SPACE) {
                    mpChanAppEdit->anmTextFadein(mPage == PAGE_WII ? MESG_DATA_NOT_ENOUGH_FREE_SD : MESG_DATA_TOO_FEW_RESOURCES);
                } else if (result == NandSDWorker::RESULT_UNK_N12) {
                    mpChanAppEdit->anmTextFadein(MESG_DATA_FILENAME_CONFLICT);
                } else if (result == NandSDWorker::RESULT_NOT_TRANSFERRABLE) {
                    mpChanAppEdit->anmTextFadein(mProcessType == PROC_MOV ? MESG_DATA_CANT_MOVE_TO_DEVICE : MESG_DATA_CANT_COPY_TO_DEVICE);
                } else if (result == NandSDWorker::RESULT_VERSION_ERR) {
                    mpChanAppEdit->anmTextFadein(mProcessType == PROC_MOV ? MESG_DATA_CANT_MOVE_VERSION_ERR : MESG_DATA_CANT_COPY_VERSION_ERR);
                } else {
                    OSReport("fail:  async result = %d\n", result);
                    switch (mProcessType) {
                        case PROC_CPY: {
                            mpChanAppEdit->anmTextFadein(MESG_DATA_COPY_UNK_ERROR);
                            break;
                        }
                        case PROC_DEL: {
                            mpChanAppEdit->anmTextFadein(MESG_DATA_DEL_UNK_ERROR);
                            break;
                        }
                        case PROC_FMT: {
                            mpChanAppEdit->anmHideBtn0Dialog();
                            break;
                        }
                        case PROC_MOV: {
                            mpChanAppEdit->anmTextFadein(MESG_DATA_MOVE_UNK_ERROR);
                            break;
                        }
                    }
                }
            }

            stop_process();
            mState = STATE_ON_END_PROCESS;
        }

        void ChannelEdit::on_end_process() {
            if (!mpChanAppEdit->isIdle())
                return;

            if (mProcessType == PROC_FMT) {
                if (mpNandSDCardManager->getWorker()->get_sd_state() == NandSDWorker::SD_STATE_READY) {
                    mpChanAppEdit->anmShowBtn0Dialog(MESG_DATA_SD_FORMATTED, false, false);
                    mState = STATE_ON_END_FORMAT;
                } else {
                    mpChanAppEdit->anmShowBtn0Dialog(MESG_DATA_SD_NOT_FORMATTED, false, false);
                    mState = STATE_ON_END_FORMAT;
                }
            } else {
                mpChanAppEdit->anmTextFadeout();
                mState = STATE_ON_EDIT_FADEOUT2ND;
            }
            mProcessType = PROC_NUL;
        }

        void ChannelEdit::on_exist_app() {
            if (mpNandSDCardManager->isWorking()) {
                return;
            }

            if (mpNandSDCardManager->getAsyncResult() == 0) {
                switch (mActionIntent) {
                    case INTENT_COPY: {
                        mpChanAppEdit->anmShowS2Btn2Dialog(MESG_DATA_COPY_DIALOG);
                        mState = STATE_ON_VERIFY_COPY;
                        break;
                    }
                    case INTENT_MOVE: {
                        mpChanAppEdit->anmShowS2Btn2Dialog(MESG_DATA_MOVE_DIALOG);
                        mState = STATE_ON_VERIFY_MOVE;
                        break;
                    }
                    default: {
                        break;
                    }
                }
                mActionIntent = INTENT_NONE;
            } else if (mpNandSDCardManager->getAsyncResult() == 1) {
                mpChanAppEdit->anmSelectFadeout(MESG_DATA_ALREADY_EXISTS_SD);
                mState = STATE_ON_VERIFY1ST;
            } else {
                mpChanAppEdit->anmSelectFadeout(MESG_DATA_SD_PROCESS_FAILED);
                mState = STATE_ON_VERIFY1ST;
            }
        }

        void ChannelEdit::on_sd_mount_only() {
            if (mpNandSDCardManager->isWorking()) {
                return;
            }
            switch (mActionIntent) {
                case INTENT_COPY: {
                    mState = STATE_ON_TRIG_COPY;
                    break;
                }
                case INTENT_MOVE: {
                    mState = STATE_ON_TRIG_MOVE;
                    break;
                }
                default: {
                    break;
                }
            }
        }
        void ChannelEdit::on_trig_move() {
            if (mpNandSDCardManager->isWorking()) {
                return;
            }

            if (mpCurrentBox->getThumbnail()->getIsCorrupt()) {
                mpChanAppEdit->anmSelectFadeout(MESG_DATA_FILE_CANT_BE_MOVED);
                mState = STATE_ON_VERIFY1ST;
                return;
            }

            if (mPage == PAGE_WII) {
                if (mpCurrentBox->getThumbnail()->getMatchesTmpTitle()) {
                    mpChanAppEdit->anmSelectFadeout(MESG_DATA_FILE_CANT_BE_MOVED);
                    mState = STATE_ON_VERIFY1ST;
                    return;
                }

                mSDState = mpNandSDCardManager->getWorker()->get_sd_state();
                switch (mSDState) {
                    case NandSDWorker::SD_STATE_EJECTED: {
                        mpChanAppEdit->anmSelectFadeout(MESG_DATA_NO_SD_CARD);
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
                        mpChanAppEdit->anmSelectFadeout(MESG_DATA_SD_DEVICE_BAD);
                        mState = STATE_ON_VERIFY1ST;
                        break;
                    }
                    case NandSDWorker::SD_STATE_READY: {
                        if (mpNandSDCardManager->isSDWriteProtected()) {
                            mpChanAppEdit->anmSelectFadeout(MESG_DATA_SD_CARD_LOCKED);
                            mState = STATE_ON_VERIFY1ST;
                            return;
                        }
                        mpNandSDCardManager->cmdExistSDApp(mpCurrentBox->getThumbnail()->getWiiTitleId());
                        mState = STATE_ON_EXIST_APP;
                        mActionIntent = INTENT_MOVE;
                        break;
                    }
                    case NandSDWorker::SD_STATE_ERROR:
                    default: {
                        mpChanAppEdit->anmSelectFadeout(MESG_DATA_SD_PROCESS_FAILED);
                        mState = STATE_ON_VERIFY1ST;
                        break;
                    }
                }
            } else {
                mSDState = mpNandSDCardManager->getWorker()->get_sd_state();
                switch (mSDState) {
                    case NandSDWorker::SD_STATE_READY: {
                        if (mpNandSDCardManager->isSDWriteProtected()) {
                            mpChanAppEdit->anmSelectFadeout(MESG_DATA_SD_CARD_LOCKED);
                            mState = STATE_ON_VERIFY1ST;
                        } else if (mpNandSDCardManager->getAsyncResult() != NandSDWorker::RESULT_OK) {
                            if (mpCurrentBox->getThumbnail()->getSDTitleId() == (ESTitleId32)mpNandSDCardManager->getTmpTitle()) {
                                u32 numFreeChannels;
                                SCGetFreeChannelAppCount(&numFreeChannels);
                                if (numFreeChannels == 0) {
                                    mpChanAppEdit->anmSelectFadeout(MESG_DATA_TOO_FEW_RESOURCES);
                                    mState = STATE_ON_VERIFY1ST;
                                } else {
                                    mpChanAppEdit->anmShowS2Btn2Dialog(MESG_DATA_MOVE_TO_WII_DIALOG);
                                    mState = STATE_ON_VERIFY_MOVE;
                                }
                            } else {
                                mpChanAppEdit->anmSelectFadeout(MESG_DATA_ALREADY_EXISTS_WII);
                                mState = STATE_ON_VERIFY1ST;
                            }
                        } else {
                            mpChanAppEdit->anmShowS2Btn2Dialog(MESG_DATA_MOVE_TO_WII_DIALOG);
                            mState = STATE_ON_VERIFY_MOVE;
                        }
                        break;
                    }
                    default: {
                        mpChanAppEdit->anmSelectFadeout(MESG_DATA_SD_PROCESS_FAILED);
                        mState = STATE_ON_VERIFY1ST;
                        break;
                    }
                }
            }
        }
        void ChannelEdit::on_verify_move() {
            if (!mpChanAppEdit->isIdle() || mpNandSDCardManager->isWorking()) {
                return;
            }

            switch (System::getDialog()->getLastResult()) {
                case DialogWindow::RESULT_LEFT_BUTTON: {
                    if (mPage == PAGE_WII) {
                        if (mpNandSDCardManager->getWorker()->get_sd_state() == NandSDWorker::SD_STATE_READY) {
                            start_process(PROC_MOV);
                            mpNandSDCardManager->cmdMoveAppNandToSD(mpCurrentBox);
                            if (TVRCManager::getHandle()->isTVRCChannel(ES_TITLE_CODE(mpCurrentBox->getThumbnail()->getWiiTitleId()))) {
                                TVRCManager::getHandle()->resetProcessAsync(TRUE);
                            }
                            mpChanAppEdit->anmTextFadein(MESG_DATA_MOVING_TO_SD);
                        } else if (mpNandSDCardManager->getWorker()->get_sd_state() == NandSDWorker::SD_STATE_EJECTED) {
                            mpChanAppEdit->anmTextFadein(MESG_DATA_NO_SD_CARD);
                            mState = STATE_ON_END_PROCESS;
                            return;
                        } else {
                            mpChanAppEdit->anmTextFadein(MESG_DATA_SD_PROCESS_FAILED);
                            mState = STATE_ON_END_PROCESS;
                            return;
                        }
                    } else {
                        start_process(PROC_MOV);
                        mpNandSDCardManager->cmdMoveAppSDToNand(mpCurrentBox);
                        mpChanAppEdit->anmTextFadein(MESG_DATA_MOVING_TO_WII);
                    }
                    break;
                }
                case DialogWindow::RESULT_RIGHT_BUTTON: {
                    mpChanAppEdit->anmSelectFadein();
                    mState = STATE_ON_EDIT_FADEIN;
                    break;
                }
            }
            update_sdcard_slot();
        }
        void ChannelEdit::on_end_move() {
            if (!mpChanAppEdit->isIdle()) {
                return;
            }

            mpNandSDCardManager->cmdCleanQueue();
            mpNandSDCardManager->calc();

            ChanAppBox* box = NULL;
            while (box = (ChanAppBox*)nw4r::ut::List_GetNext(&mChanAppBoxList, box), box != NULL) {
                box->setThumbnail(NULL);
            }

            if (mPage == PAGE_WII) {
                mpNandSDCardManager->cmdGetNandFree();
                send_getthumbnail_cmd(true);
            } else {
                mpNandSDCardManager->cmdGetSDFree();
                send_getthumbnail_cmd(false);
            }

            mpChanAppEdit->anmTextFadein(MESG_DATA_MOVED);
            stop_process();

            mState = STATE_ON_END_PROCESS;
        }
    }  // namespace scene
}  // namespace ipl
