
#include "scene/channelEdit/iplChannelEdit.h"

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
            : scene::Base(heap), mState(CHANEDIT_STATE_ON_NORMAL), pChanAppBase(NULL), pChanAppEdit(NULL), pNandSDCardManager(NULL),
              mPage(CHANEDIT_PAGE_WII), pCurrBox(NULL), mPageOffset(0), mSdState(NandSDWorker::SD_STATE_INITIAL), mArwRVisible(false),
              mArwLVisible(false), mProcessType(CHANEDIT_PROC_NUL), mActionIntent(CHANEDIT_INTENT_NONE) {
            System::stopReceiveSchedule();
            nw4r::ut::List_Init(&mChanAppBoxList, offsetof(ChanAppBox, mLink));
        }
        ChannelEdit::~ChannelEdit() {
            delete pChanAppBase;
            delete pChanAppEdit;
            delete pNandSDCardManager;

            ChanAppBox* currBox = (ChanAppBox*)nw4r::ut::List_GetNext(&mChanAppBoxList, NULL);
            while (currBox != NULL) {
                nw4r::ut::List_Remove(&mChanAppBoxList, currBox);
                delete currBox;
                currBox = (ChanAppBox*)nw4r::ut::List_GetNext(&mChanAppBoxList, NULL);
            }

            for (int i = 0; i < 15; i++) {
                delete mTextBalloonArr[i];
            }
        }

        void ChannelEdit::prepare() {
            System::getBS2Manager()->abort();

            pChanEditLytFile = System::getNandManager()->readLayoutAsync(getSceneHeap(), "chanEdit.ash");
            pBalloonLytFile = System::getNandManager()->readLayoutAsync(getSceneHeap(), "balloon.ash");
            pCorruptIconFile = System::getNandManager()->readAsync(getSceneHeap(), "corrupt_icon.ash");
            pTmptitleIconFile = System::getNandManager()->readAsync(getSceneHeap(), "tmptitle_icon.ash");
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

            pChanAppBase = new ChanAppBase(System::getMem2App(), pChanEditLytFile, "arc", "it_ObjChannelEdit_a.brlyt");
            pChanAppBase->anmFadein();

            for (int i = 0; i < 45; i++) {
                nw4r::ut::List_Append(&mChanAppBoxList, new ChanAppBox(System::getMem2App(), pChanEditLytFile, "arc", "it_ObjChannelEdit_b.brlyt"));
            }

            pChanAppEdit = new ChanAppEdit(System::getMem2App(), pChanEditLytFile, "arc", "mn_ChannelDetail_a.brlyt");

            pNandSDCardManager = new (System::getMem2App(), 32) NandSDCardManager(NandSDCardManager::NAND_MANAGER_MODE_APPS);

            for (int i = 0; i < 15; i++) {
                nw4r::lyt::Pane* currPane = pChanAppBase->getLytObject()->FindPaneByName(panes[1][i]);
                nw4r::math::VEC3 translation(0, 0, 0);
                PSMTXMultVec(currPane->GetGlobalMtx(), translation, translation);
                translation.y -= 55.0f;

                mTextBalloonArr[i] = new TextBalloon(getSceneHeap(), pBalloonLytFile, "arc", "my_IplTopBalloon_a.brlyt", translation, 90.f, 60.f);

                ChanAppBox* box = (ChanAppBox*)nw4r::ut::List_GetNth(&mChanAppBoxList, i + 15);
                box->setTextBalloon(mTextBalloonArr[i]);
            }

            send_getthumbnail_cmd(true);
            mState = CHANEDIT_STATE_ON_FADEIN1ST;
        }

        void ChannelEdit::calc() {
            pNandSDCardManager->calc();

            SettingSelect* sceneSettingSelect = (SettingSelect*)System::getScene(SCENE_SETTING_SELECT);
            if (!sceneSettingSelect->isWaitingChild())
                return;

            pChanAppBase->calc();

            ChanAppBox* currBox = NULL;
            while (currBox = (ChanAppBox*)nw4r::ut::List_GetNext(&mChanAppBoxList, currBox), currBox != NULL)
                currBox->calc();

            pChanAppEdit->calc();

            for (int i = 0; i < 15; i++)
                mTextBalloonArr[i]->calc();

            switch (mState) {
                case CHANEDIT_STATE_ON_NORMAL:
                    on_normal();
                    break;
                case CHANEDIT_STATE_ON_FADEIN1ST:
                    on_fadein1st();
                    break;
                case CHANEDIT_STATE_ON_FADEIN2ND:
                    on_fadein2nd();
                    break;
                case CHANEDIT_STATE_ON_FADEOUT1ST:
                    on_fadeout1st();
                    break;
                case CHANEDIT_STATE_ON_FADEOUT2ND:
                    on_fadeout2nd();
                    break;
                case CHANEDIT_STATE_ON_SCROLL_R:
                    on_scroll_r();
                    break;
                case CHANEDIT_STATE_ON_SCROLL_L:
                    on_scroll_l();
                    break;
                case CHANEDIT_STATE_ON_CHANGE_TAG1ST:
                    on_change_tag1st();
                    break;
                case CHANEDIT_STATE_ON_CHANGE_TAG2ND:
                    on_change_tag2nd();
                    break;
                case CHANEDIT_STATE_ON_TRIG_COPY:
                    on_trig_copy();
                    break;
                case CHANEDIT_STATE_ON_EDIT:
                    on_edit();
                    break;
                case CHANEDIT_STATE_ON_EDIT_FADEIN:
                    on_edit_fadein();
                    break;
                case CHANEDIT_STATE_ON_EDIT_FADEOUT1ST:
                    on_edit_fadeout1st();
                    break;
                case CHANEDIT_STATE_ON_EDIT_FADEOUT2ND:
                    on_edit_fadeout2nd();
                    break;
                case CHANEDIT_STATE_ON_VERIFY1ST:
                    on_verify1st();
                    break;
                case CHANEDIT_STATE_ON_VERIFY2ND:
                    on_verify2nd();
                    break;
                case CHANEDIT_STATE_ON_VERIFY_COPY:
                    on_verify_copy();
                    break;
                case CHANEDIT_STATE_ON_VERIFY_DEL:
                    on_verify_del();
                    break;
                case CHANEDIT_STATE_ON_VERIFY_FORMAT:
                    on_verify_format();
                    break;
                case CHANEDIT_STATE_ON_END_FORMAT:
                    on_end_format();
                    break;
                case CHANEDIT_STATE_ON_END_DEL:
                    on_end_del();
                    break;
                case CHANEDIT_STATE_ON_SD_MOUNT:
                    on_sd_mount();
                    break;
                case CHANEDIT_STATE_ON_SD_MESSAGE1ST:
                    on_sd_message1st();
                    break;
                case CHANEDIT_STATE_ON_SD_MESSAGE2ND:
                    on_sd_message2nd();
                    break;
                case CHANEDIT_STATE_ON_SD_MESSAGE3RD:
                    on_sd_message3rd();
                    break;
                case CHANEDIT_STATE_ON_PROCESS:
                    on_process();
                    break;
                case CHANEDIT_STATE_ON_END_PROCESS:
                    on_end_process();
                    break;
                case CHANEDIT_STATE_ON_EXIST_APP:
                    on_exist_app();
                    break;
                case CHANEDIT_STATE_ON_SD_MOUNT_ONLY:
                    on_sd_mount_only();
                    break;
                case CHANEDIT_STATE_ON_TRIG_MOVE:
                    on_trig_move();
                    break;
                case CHANEDIT_STATE_ON_VERIFY_MOVE:
                    on_verify_move();
                    break;
                case CHANEDIT_STATE_ON_END_MOVE:
                    on_end_move();
                    break;
            }
        }

        void ChannelEdit::setpos_chanapp_box() {
            int i;
            ChanAppBox* box;

            i = 0;
            box = NULL;
            while (box = (ChanAppBox*)nw4r::ut::List_GetNext(&mChanAppBoxList, box), box != NULL) {
                nw4r::lyt::Pane* currPane = pChanAppBase->getLytObject()->FindPaneByName(panes[0][i]);
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
        void ChannelEdit::fadein_chanapp_box() {
            int i = 0;
            ChanAppBox* box = NULL;
            while (box = (ChanAppBox*)nw4r::ut::List_GetNext(&mChanAppBoxList, box), box != NULL) {
                nw4r::lyt::Pane* currPane = pChanAppBase->getLytObject()->FindPaneByName(panes[0][i]);
                nw4r::math::VEC3 translation(0, 0, 0);
                PSMTXMultVec(currPane->GetGlobalMtx(), translation, translation);
                box->setTranslate(translation);

                box->anmFadein();
                i++;
            }
        }
        void ChannelEdit::fadeout_chanapp_box() {
            ChanAppBox* box;
            box = NULL;
            while (box = (ChanAppBox*)nw4r::ut::List_GetNext(&mChanAppBoxList, box), box != NULL) {
                box->setThumbnail(NULL);
                box->anmFadeout();
            }
        }

        void ChannelEdit::send_getthumbnail_cmd(bool isWiiNotSD) {
            for (int i = 0; i < 15; i++) {
                ChanAppBox* box = (ChanAppBox*)nw4r::ut::List_GetNth(&mChanAppBoxList, i + 15);
                pNandSDCardManager->cmdGetThumbnail(box, mPageOffset + i, isWiiNotSD);
            }
        }

        void ChannelEdit::update_sdcard_slot() {
            if (mPage != CHANEDIT_PAGE_SD)
                return;

            mSdState = pNandSDCardManager->getWorker()->get_sd_state();
            if (mSdState == NandSDWorker::SD_STATE_READY)
                return;

            pNandSDCardManager->cmdCleanQueue();

            mPageOffset = 0;

            ChanAppBox* box;
            box = NULL;
            while (box = (ChanAppBox*)nw4r::ut::List_GetNext(&mChanAppBoxList, box), box != NULL) {
                if (box->getTextBalloon() != NULL) {
                    box->getTextBalloon()->terminate();
                    box->setTextBalloonInitialized(false);
                }
            }

            pChanAppEdit->clearAllThumbnails();

            switch (mState) {
                case CHANEDIT_STATE_ON_NORMAL:
                    fadeout_chanapp_box();
                    mState = CHANEDIT_STATE_ON_CHANGE_TAG1ST;
                    break;
                case CHANEDIT_STATE_ON_EDIT:
                    pChanAppEdit->anmClear();
                    pChanAppEdit->anmFadeout();
                    mState = CHANEDIT_STATE_ON_EDIT_FADEOUT2ND;
                    break;
                case CHANEDIT_STATE_ON_VERIFY_COPY:
                case CHANEDIT_STATE_ON_VERIFY_DEL:
                case CHANEDIT_STATE_ON_VERIFY_MOVE:
                    System::getDialog()->terminate();
                    pChanAppEdit->anmClear();
                    pChanAppEdit->anmSelectFadein();
                    mState = CHANEDIT_STATE_ON_EDIT_FADEIN;
                    break;
                case CHANEDIT_STATE_ON_VERIFY1ST:
                    pChanAppEdit->anmClear();
                    pChanAppEdit->anmSelectFadein();
                    mState = CHANEDIT_STATE_ON_VERIFY2ND;
                    break;
                default:
                    break;
            }
        }

        void ChannelEdit::update_arw() {
            if (!mArwRVisible && enable_scroll_r()) {
                pChanAppBase->anmArwAppear(true, false);
                mArwRVisible = true;
            } else if (mArwRVisible && !enable_scroll_r()) {
                pChanAppBase->anmArwDisappear(true, false);
                mArwRVisible = false;
            }
            if (!mArwLVisible && enable_scroll_l()) {
                pChanAppBase->anmArwAppear(false, true);
                mArwLVisible = true;
            } else if (mArwLVisible && !enable_scroll_l()) {
                pChanAppBase->anmArwDisappear(false, true);
                mArwLVisible = false;
            }
        }
        void ChannelEdit::update_free() {
            if (mPage == CHANEDIT_PAGE_WII)
                update_nand_free();
            else
                update_sd_free();
        }
        void ChannelEdit::update_nand_free() {
            int blocksFree = pNandSDCardManager->getNandBlocksFree();
            if (blocksFree < 0) {
                pChanAppBase->set_visible("N_Capa_00", false);
                pChanAppBase->set_visible("T_Capa_00", false);
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

            pChanAppBase->set_visible("T_Capa_00", true);
            pChanAppBase->set_visible("N_Capa_00", true);
            pChanAppBase->set_textbox("T_Capa_00", blocksFreeMsg);
        }
        void ChannelEdit::update_sd_free() {
            if (pNandSDCardManager->getWorker()->get_sd_state() != NandSDWorker::SD_STATE_READY) {
                pChanAppBase->set_visible("N_Capa_00", false);
                pChanAppBase->set_visible("T_Capa_00", false);
                return;
            }

            int blocksFree = pNandSDCardManager->getSDBlocksFree();
            if (blocksFree < 0) {
                pChanAppBase->set_visible("N_Capa_00", false);
                pChanAppBase->set_visible("T_Capa_00", false);
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

            pChanAppBase->set_visible("T_Capa_00", true);
            pChanAppBase->set_visible("N_Capa_00", true);
            pChanAppBase->set_textbox("T_Capa_00", blocksFreeMsg);
        }

        void ChannelEdit::start_process(int processType) {
            System::getHomeButtonMenu()->disable();

            mProcessType = processType;

            pNandSDCardManager->disableThumbnailFetching();

            snd::getSystem()->startSE("WIPL_SE_COPYING");
            if (processType == CHANEDIT_PROC_FMT) {
                pChanAppEdit->anmShowBtn0Dialog(MESG_DATA_FORMATTING, true, true);
            } else {
                pChanAppEdit->anmStartWaitAnm();
            }
            mState = CHANEDIT_STATE_ON_PROCESS;
        }
        void ChannelEdit::stop_process() {
            pNandSDCardManager->enableThumbnailFetching();
            System::getHomeButtonMenu()->enable();
            snd::getSystem()->startSE("WIPL_SE_COPY_FINISH");
            pChanAppEdit->anmStopWaitAnm();
        }

        void ChannelEdit::start_scroll_r(bool playButtonAnm, bool playSound) {
            pNandSDCardManager->cmdCleanQueue();

            ChanAppBox* box = NULL;
            while (box = (ChanAppBox*)nw4r::ut::List_GetNext(&mChanAppBoxList, box), box != NULL)
                box->clearEvent();

            if (playSound)
                snd::getSystem()->startSE("WSD_SELECT");

            pChanAppBase->anmScrollR(playButtonAnm);
            mState = CHANEDIT_STATE_ON_SCROLL_R;
        }

        void ChannelEdit::start_scroll_l(bool playButtonAnm, bool playSound) {
            pNandSDCardManager->cmdCleanQueue();

            ChanAppBox* box = NULL;
            while (box = (ChanAppBox*)nw4r::ut::List_GetNext(&mChanAppBoxList, box), box != NULL)
                box->clearEvent();

            if (playSound)
                snd::getSystem()->startSE("WSD_SELECT");

            pChanAppBase->anmScrollL(playButtonAnm);
            mState = CHANEDIT_STATE_ON_SCROLL_L;
        }

        bool ChannelEdit::enable_scroll_r() {
            if (mState != CHANEDIT_STATE_ON_NORMAL)
                return false;

            if (mPage == CHANEDIT_PAGE_WII) {
                return pNandSDCardManager->getWorker()->get_nand_app_num() - mPageOffset > 15;
            } else {
                if (pNandSDCardManager->getWorker()->get_sd_state() == NandSDWorker::SD_STATE_READY)
                    return pNandSDCardManager->getWorker()->get_sd_app_num() - mPageOffset > 15;
                else
                    return false;
            }
        }
        bool ChannelEdit::enable_scroll_l() {
            if (mState != CHANEDIT_STATE_ON_NORMAL)
                return false;
            return mPageOffset > 0;
        }

        void ChannelEdit::draw() {
            if (!System::onDefaultDrawLayer())
                return;

            utility::Graphics::setOrtho(0);
            pChanAppBase->draw();

            ChanAppBox* box = NULL;
            while (box = (ChanAppBox*)nw4r::ut::List_GetNext(&mChanAppBoxList, box), box != NULL)
                box->draw();

            for (int i = 0; i < 15; i++) {
                mTextBalloonArr[i]->draw();
            }

            pChanAppBase->getLytObject()->draw("N_ArwR");
            pChanAppBase->getLytObject()->draw("N_ArwL");

            pChanAppEdit->draw();
        }

        BOOL ChannelEdit::isResetAcceptable() const {
            return mProcessType == CHANEDIT_PROC_NUL;
        }

        void ChannelEdit::onPoint(AnmPane* pane) {
            if ((strcmp(pane->getName(), "B_SelectWii_00") == 0 && mPage == CHANEDIT_PAGE_WII) ||
                (strcmp(pane->getName(), "B_SelectSd_00") == 0 && mPage == CHANEDIT_PAGE_SD))
                return;

            snd::getSystem()->startSE("WIPL_SE_BT_TARGETTING");

            controller::Interface* controller = System::getYoungController();
            if (controller != NULL)
                controller->rumble();
            pane->on_cmd_recv(AnmPane::ANIM_CMD_POINT);
        }
        void ChannelEdit::onLeft(AnmPane* pane) {
            if ((strcmp(pane->getName(), "B_SelectWii_00") == 0 && mPage == CHANEDIT_PAGE_WII) ||
                (strcmp(pane->getName(), "B_SelectSd_00") == 0 && mPage == CHANEDIT_PAGE_SD))
                return;

            pane->on_cmd_recv(AnmPane::ANIM_CMD_LEFT);
        }
        void ChannelEdit::onTrig(AnmPane* pane) {
            if (mState != CHANEDIT_STATE_ON_NORMAL && mState != CHANEDIT_STATE_ON_SD_MESSAGE1ST)
                return;

            if (strcmp(pane->getName(), "B_SelectWii_00") == 0 && mPage == CHANEDIT_PAGE_SD) {
                ChanAppBox* box = NULL;
                while (box = (ChanAppBox*)nw4r::ut::List_GetNext(&mChanAppBoxList, box), box != NULL)
                    box->setThumbnail(NULL);

                snd::getSystem()->startSE("WIPL_SE_BT_PUSH");

                mPageOffset = 0;
                pNandSDCardManager->cmdCleanQueue();
                pNandSDCardManager->cmdListNand();
                mPage = CHANEDIT_PAGE_WII;

                pChanAppBase->anmArwDisappear(mArwRVisible, mArwLVisible);
                mArwRVisible = false;
                mArwLVisible = false;

                pChanAppBase->set_visible("N_Capa_00", false);
                pChanAppBase->set_visible("T_Capa_00", false);

                if (mState == CHANEDIT_STATE_ON_NORMAL) {
                    pChanAppBase->anmChangeWiitoSD();
                    fadeout_chanapp_box();
                    mState = CHANEDIT_STATE_ON_CHANGE_TAG1ST;
                } else {
                    pChanAppBase->anmTextFadeout();
                    mState = CHANEDIT_STATE_ON_SD_MESSAGE3RD;
                }
            } else if (strcmp(pane->getName(), "B_SelectSd_00") == 0 && mPage == CHANEDIT_PAGE_WII) {
                ChanAppBox* box = NULL;
                while (box = (ChanAppBox*)nw4r::ut::List_GetNext(&mChanAppBoxList, box), box != NULL)
                    box->setThumbnail(NULL);

                snd::getSystem()->startSE("WIPL_SE_BT_PUSH");

                pNandSDCardManager->cmdSDMount();
                mPageOffset = 0;
                pNandSDCardManager->cmdCleanQueue();
                pNandSDCardManager->cmdListSD();
                mPage = CHANEDIT_PAGE_SD;

                pChanAppBase->anmArwDisappear(mArwRVisible, mArwLVisible);
                mArwRVisible = false;
                mArwLVisible = false;

                pChanAppBase->set_visible("N_Capa_00", false);
                pChanAppBase->set_visible("T_Capa_00", false);

                if (mState == CHANEDIT_STATE_ON_NORMAL) {
                    pChanAppBase->anmChangeSDtoWii();
                    fadeout_chanapp_box();
                    mState = CHANEDIT_STATE_ON_CHANGE_TAG1ST;
                } else {
                    pChanAppBase->anmTextFadeout();
                    mState = CHANEDIT_STATE_ON_SD_MESSAGE3RD;
                }
            } else if (strcmp(pane->getName(), "B_ArwR") == 0 && enable_scroll_r()) {
                start_scroll_r(true, true);
            } else if (strcmp(pane->getName(), "B_ArwL") == 0 && enable_scroll_l()) {
                start_scroll_l(true, true);
            }
        }
        void ChannelEdit::onTrig(ChanAppBox* box) {
            if (mState != CHANEDIT_STATE_ON_NORMAL)
                return;

            pCurrBox = box;
            if (box->getTextBalloon() != NULL)
                box->getTextBalloon()->terminate();

            pChanAppEdit->anmFadein(box);
            snd::getSystem()->startSE("WIPL_SE_DECIDE");
            mState = CHANEDIT_STATE_ON_EDIT_FADEIN;
        }
        void ChannelEdit::onTrigButton(bool isErr) {
            pChanAppBase->anmArwDisappear(mArwRVisible, mArwLVisible);

            pChanAppBase->anmFadeout(isErr);
            if (!isErr) {
                fadeout_chanapp_box();
            }
            pNandSDCardManager->cmdTerminate();
            mState = CHANEDIT_STATE_ON_FADEOUT1ST;
        }
        void ChannelEdit::onTrigCopy() {
            if (mPage == CHANEDIT_PAGE_WII) {
                pNandSDCardManager->cmdSDMount();
            } else {
                pNandSDCardManager->cmdExistNandApp(pCurrBox->getThumbnail()->getSDTitleId());
            }
            mActionIntent = CHANEDIT_INTENT_COPY;
            mState = CHANEDIT_STATE_ON_TRIG_COPY;
            return;
        }
        void ChannelEdit::onTrigDel() {
            if (mPage == CHANEDIT_PAGE_SD) {
                mSdState = pNandSDCardManager->getWorker()->get_sd_state();
                switch (mSdState) {
                    case NandSDWorker::SD_STATE_READY:
                        if (pNandSDCardManager->isSDWriteProtected()) {
                            pChanAppEdit->anmSelectFadeout(MESG_DATA_SD_CARD_LOCKED);
                            mState = CHANEDIT_STATE_ON_VERIFY1ST;
                        } else {
                            pChanAppEdit->anmShowS2Btn2Dialog(MESG_DATA_ERASE_Q);
                            mState = CHANEDIT_STATE_ON_VERIFY_DEL;
                        }
                        break;
                    default:
                        pChanAppEdit->anmSelectFadeout(MESG_DATA_SD_PROCESS_FAILED);
                        mState = CHANEDIT_STATE_ON_VERIFY1ST;
                        break;
                }
            } else {
                pChanAppEdit->anmShowS2Btn2Dialog(MESG_DATA_ERASE_Q);
                mState = CHANEDIT_STATE_ON_VERIFY_DEL;
            }
        }

        void ChannelEdit::onTrigMove() {
            if (mPage == CHANEDIT_PAGE_WII) {
                pNandSDCardManager->cmdSDMount();
            } else {
                pNandSDCardManager->cmdExistNandApp(pCurrBox->getThumbnail()->getSDTitleId());
            }
            mActionIntent = CHANEDIT_INTENT_MOVE;
            mState = CHANEDIT_STATE_ON_TRIG_MOVE;
        }

        void ChannelEdit::on_normal() {
            SettingButton* sceneSettingButton = (SettingButton*)System::getScene(SCENE_SETTING_BUTTON);
            if (sceneSettingButton->update()) {
                onTrigButton(false);

                ChanAppBox* box = NULL;
                while (box = (ChanAppBox*)nw4r::ut::List_GetNext(&mChanAppBoxList, box), box != NULL)
                    box->setThumbnail(NULL);
                return;
            }

            update_sdcard_slot();
            update_arw();
            update_free();

            pChanAppBase->update();

            ChanAppBox* box = NULL;
            while (box = (ChanAppBox*)nw4r::ut::List_GetNext(&mChanAppBoxList, box), box != NULL)
                box->update();

            if (mPage == CHANEDIT_PAGE_WII) {
                if (mPageOffset == pNandSDCardManager->getWorker()->get_nand_app_num() && enable_scroll_l()) {
                    start_scroll_l(false, false);
                    return;
                }
            } else {
                if (mPageOffset == pNandSDCardManager->getWorker()->get_sd_app_num() && enable_scroll_l()) {
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
            if (!pChanAppBase->isIdle())
                return;
            if (pNandSDCardManager->isWorking())
                return;

            fadein_chanapp_box();
            mState = CHANEDIT_STATE_ON_FADEIN2ND;
        }
        void ChannelEdit::on_fadein2nd() {
            ChanAppBox* box = NULL;
            while (box = (ChanAppBox*)nw4r::ut::List_GetNext(&mChanAppBoxList, box), box != NULL) {
                if (!box->isIdle())
                    return;
            }
            mState = CHANEDIT_STATE_ON_NORMAL;
        }
        void ChannelEdit::on_fadeout1st() {
            if (!pChanAppBase->isIdle())
                return;

            if (!pNandSDCardManager->isTerminated())
                return;

            mState = CHANEDIT_STATE_ON_FADEOUT2ND;
        }
        void ChannelEdit::on_fadeout2nd() {
            requestSceneDestruction();
            System::getBS2Manager()->restart();
            OSReport(" ... bs2 manager restarted\n");
        }
        void ChannelEdit::on_scroll_r() {
            if (pChanAppBase->isIdle() && sd_worker_ready(pNandSDCardManager)) {
                mPageOffset += 15;
                ChanAppBox* box = NULL;
                while (box = (ChanAppBox*)nw4r::ut::List_GetNext(&mChanAppBoxList, box), box != NULL)
                    box->setThumbnail(NULL);

                send_getthumbnail_cmd(mPage == CHANEDIT_PAGE_WII);
                mState = CHANEDIT_STATE_ON_NORMAL;
            }
            setpos_chanapp_box();
        }
        void ChannelEdit::on_scroll_l() {
            if (pChanAppBase->isIdle() && sd_worker_ready(pNandSDCardManager)) {
                mPageOffset -= 15;
                ChanAppBox* box = NULL;
                while (box = (ChanAppBox*)nw4r::ut::List_GetNext(&mChanAppBoxList, box), box != NULL)
                    box->setThumbnail(NULL);

                send_getthumbnail_cmd(mPage == CHANEDIT_PAGE_WII);
                mState = CHANEDIT_STATE_ON_NORMAL;
            }
            setpos_chanapp_box();
        }
        void ChannelEdit::on_change_tag1st() {
            if (pNandSDCardManager->isWorking() || !sd_worker_ready(pNandSDCardManager))
                return;

            ChanAppBox* box = NULL;
            while (box = (ChanAppBox*)nw4r::ut::List_GetNext(&mChanAppBoxList, box), box != NULL) {
                if (!box->isIdle())
                    return;
                if (box->getThumbnail() != NULL)
                    box->setThumbnail(NULL);
            }

            if (mPage == CHANEDIT_PAGE_SD) {
                mSdState = pNandSDCardManager->getWorker()->get_sd_state();
                switch (mSdState) {
                    case NandSDWorker::SD_STATE_SLOT_EMPTY:
                        if (!pChanAppBase->isIdle())
                            return;
                        pChanAppBase->anmTextFadein(MESG_DATA_NO_SD_CARD);
                        mState = CHANEDIT_STATE_ON_SD_MESSAGE1ST;
                        break;
                    case NandSDWorker::SD_STATE_NOT_MOUNTED:
                        pNandSDCardManager->cmdSDMount();
                        mState = CHANEDIT_STATE_ON_SD_MOUNT;
                        break;
                    case NandSDWorker::SD_STATE_BROKEN_MEDIA:
                    case NandSDWorker::SD_STATE_ILLEGAL_MEDIA:
                        if (!pChanAppBase->isIdle())
                            return;
                        pChanAppBase->anmTextFadein(MESG_DATA_SD_DEVICE_BAD);
                        mState = CHANEDIT_STATE_ON_SD_MESSAGE1ST;
                        break;
                    case NandSDWorker::SD_STATE_READY:
                        if (!pChanAppBase->isIdle())
                            return;
                        send_getthumbnail_cmd(false);
                        fadein_chanapp_box();
                        mState = CHANEDIT_STATE_ON_CHANGE_TAG2ND;
                        break;
                    case NandSDWorker::SD_STATE_ERRORED:
                    default:
                        OSReport("get async resutl = %d\n", pNandSDCardManager->getAsyncResult());
                        if (pChanAppBase->isIdle()) {
                            pChanAppBase->anmTextFadein(0x97);
                            mState = CHANEDIT_STATE_ON_SD_MESSAGE1ST;
                        }
                        break;
                }
            } else {
                send_getthumbnail_cmd(true);
                fadein_chanapp_box();
                mState = CHANEDIT_STATE_ON_CHANGE_TAG2ND;
            }
        }
        void ChannelEdit::on_change_tag2nd() {
            ChanAppBox* box = NULL;
            while (box = (ChanAppBox*)nw4r::ut::List_GetNext(&mChanAppBoxList, box), box != NULL) {
                if (!box->isIdle())
                    return;
            }
            mState = CHANEDIT_STATE_ON_NORMAL;
        }
        void ChannelEdit::on_trig_copy() {
            if (pNandSDCardManager->isWorking())
                return;

            if (pCurrBox->getThumbnail()->getIsCorrupt()) {
                pChanAppEdit->anmSelectFadeout(MESG_DATA_FILE_CANT_BE_COPIED);
                mState = CHANEDIT_STATE_ON_VERIFY1ST;
                return;
            }

            if (mPage == CHANEDIT_PAGE_WII) {
                if (pCurrBox->getThumbnail()->getMatchesTmpTitle()) {
                    pChanAppEdit->anmSelectFadeout(MESG_DATA_FILE_CANT_BE_COPIED);
                    mState = CHANEDIT_STATE_ON_VERIFY1ST;
                    return;
                }
                mSdState = pNandSDCardManager->getWorker()->get_sd_state();
                switch (mSdState) {
                    case NandSDWorker::SD_STATE_SLOT_EMPTY:
                        pChanAppEdit->anmSelectFadeout(MESG_DATA_NO_SD_CARD);
                        mState = CHANEDIT_STATE_ON_VERIFY1ST;
                        break;
                    case NandSDWorker::SD_STATE_NOT_MOUNTED:
                        OSReport("NEED MOUNT\n");
                        pNandSDCardManager->cmdSDMount();
                        mState = CHANEDIT_STATE_ON_SD_MOUNT_ONLY;
                        break;
                    case NandSDWorker::SD_STATE_BROKEN_MEDIA:
                    case NandSDWorker::SD_STATE_ILLEGAL_MEDIA:
                        pChanAppEdit->anmSelectFadeout(MESG_DATA_SD_DEVICE_BAD);
                        mState = CHANEDIT_STATE_ON_VERIFY1ST;
                        break;
                    case NandSDWorker::SD_STATE_READY:
                        if (pNandSDCardManager->isSDWriteProtected()) {
                            pChanAppEdit->anmSelectFadeout(MESG_DATA_SD_CARD_LOCKED);
                            mState = CHANEDIT_STATE_ON_VERIFY1ST;
                            return;
                        }
                        pNandSDCardManager->cmdExistSDApp(pCurrBox->getThumbnail()->getWiiTitleId());
                        mState = CHANEDIT_STATE_ON_EXIST_APP;
                        break;
                    case NandSDWorker::SD_STATE_ERRORED:
                    default:
                        pChanAppEdit->anmSelectFadeout(MESG_DATA_SD_PROCESS_FAILED);
                        mState = CHANEDIT_STATE_ON_VERIFY1ST;
                        break;
                }
            } else {
                if (pNandSDCardManager->getAsyncResult() != NandSDWorker::WORKER_RESULT_OK) {
                    if (pCurrBox->getThumbnail()->getSDTitleId() == (ESTitleId32)pNandSDCardManager->getTmpTitle()) {
                        u32 numFreeChannels;
                        SCGetFreeChannelAppCount(&numFreeChannels);
                        if (numFreeChannels == 0) {
                            pChanAppEdit->anmSelectFadeout(MESG_DATA_TOO_FEW_RESOURCES);
                            mState = CHANEDIT_STATE_ON_VERIFY1ST;
                        } else {
                            pChanAppEdit->anmShowS2Btn2Dialog(MESG_DATA_COPY_TO_WII_Q);
                            mState = CHANEDIT_STATE_ON_VERIFY_COPY;
                        }
                    } else {
                        pChanAppEdit->anmSelectFadeout(MESG_DATA_ALREADY_EXISTS_WII);
                        mState = CHANEDIT_STATE_ON_VERIFY1ST;
                    }
                } else {
                    pChanAppEdit->anmShowS2Btn2Dialog(MESG_DATA_COPY_TO_WII_Q);
                    mState = CHANEDIT_STATE_ON_VERIFY_COPY;
                }
            }
        }
        void ChannelEdit::on_edit_fadein() {
            if (!pChanAppEdit->isIdle())
                return;
            mState = CHANEDIT_STATE_ON_EDIT;
        }
        void ChannelEdit::on_edit() {
            if (pChanAppEdit->isIdle()) {
                SettingButton* sceneSettingButton = (SettingButton*)System::getScene(SCENE_SETTING_BUTTON);
                if (sceneSettingButton->update()) {
                    mState = CHANEDIT_STATE_ON_EDIT_FADEOUT1ST;
                    return;
                }
            }
            pChanAppEdit->update();
            update_sdcard_slot();
        }
        void ChannelEdit::on_edit_fadeout1st() {
            SettingButton* sceneSettingButton = (SettingButton*)System::getScene(SCENE_SETTING_BUTTON);
            if (!sceneSettingButton->isPlaying()) {
                pChanAppEdit->anmFadeout();
                mState = CHANEDIT_STATE_ON_EDIT_FADEOUT2ND;
            }
        }
        void ChannelEdit::on_edit_fadeout2nd() {
            if (!pChanAppEdit->isIdle())
                return;
            mState = CHANEDIT_STATE_ON_NORMAL;
        }
        void ChannelEdit::on_verify1st() {
            if (pChanAppEdit->isIdle()) {
                SettingButton* sceneSettingButton = (SettingButton*)System::getScene(SCENE_SETTING_BUTTON);
                if (sceneSettingButton->update()) {
                    pChanAppEdit->anmSelectFadein();
                    mState = CHANEDIT_STATE_ON_VERIFY2ND;
                }
            }
            mActionIntent = CHANEDIT_INTENT_NONE;
            update_sdcard_slot();
        }
        void ChannelEdit::on_verify2nd() {
            if (!pChanAppEdit->isIdle())
                return;
            mState = CHANEDIT_STATE_ON_EDIT;
        }
        void ChannelEdit::on_verify_copy() {
            if (!pChanAppEdit->isIdle() || pNandSDCardManager->isWorking())
                return;

            switch (System::getDialog()->getLastResult()) {
                case DialogWindow::RESULT_LEFT_BUTTON:
                    if (mPage == CHANEDIT_PAGE_WII) {
                        if (pNandSDCardManager->getWorker()->get_sd_state() == NandSDWorker::SD_STATE_READY) {
                            start_process(CHANEDIT_PROC_CPY);
                            pNandSDCardManager->cmdCopyAppNandToSD(pCurrBox->getThumbnail()->getWiiTitleId());
                            pChanAppEdit->anmTextFadein(MESG_DATA_COPYING_TO_SD);
                        } else if (pNandSDCardManager->getWorker()->get_sd_state() == NandSDWorker::SD_STATE_SLOT_EMPTY) {
                            pChanAppEdit->anmTextFadein(MESG_DATA_NO_SD_CARD);
                            mState = CHANEDIT_STATE_ON_END_PROCESS;
                            return;
                        } else {
                            pChanAppEdit->anmTextFadein(MESG_DATA_SD_PROCESS_FAILED);
                            mState = CHANEDIT_STATE_ON_END_PROCESS;
                            return;
                        }
                    } else {
                        start_process(CHANEDIT_PROC_CPY);
                        pNandSDCardManager->cmdCopyAppSDToNand(pCurrBox->getThumbnail()->getSDTitleId());
                        pChanAppEdit->anmTextFadein(MESG_DATA_COPYING_TO_WII);
                    }
                    break;
                case DialogWindow::RESULT_RIGHT_BUTTON:
                    pChanAppEdit->anmSelectFadein();
                    mState = CHANEDIT_STATE_ON_EDIT_FADEIN;
                    break;
            }
            update_sdcard_slot();
        }
        void ChannelEdit::on_verify_del() {
            if (!pChanAppEdit->isIdle())
                return;

            switch (System::getDialog()->getLastResult()) {
                case DialogWindow::RESULT_LEFT_BUTTON:
                    start_process(CHANEDIT_PROC_DEL);
                    if (mPage == CHANEDIT_PAGE_WII) {
                        pNandSDCardManager->cmdDelNandApp(pCurrBox);
                        if (TVRCManager::getHandle()->isTVRCChannel(ES_TITLE_CODE(pCurrBox->getThumbnail()->getWiiTitleId()))) {
                            TVRCManager::getHandle()->resetProcessAsync(TRUE);
                        }
                        pChanAppEdit->anmTextFadein(MESG_DATA_ERASING);
                    } else {
                        pNandSDCardManager->cmdDelSDApp(pCurrBox);
                        pChanAppEdit->anmTextFadein(MESG_DATA_ERASING_SD);
                    }
                    break;
                case DialogWindow::RESULT_RIGHT_BUTTON:
                    pChanAppEdit->anmSelectFadein();
                    mState = CHANEDIT_STATE_ON_EDIT_FADEIN;
                    break;
            }
            update_sdcard_slot();
        }
        void ChannelEdit::on_verify_format() {
            if (!pChanAppEdit->isIdle())
                return;

            switch (System::getDialog()->getLastResult()) {
                case DialogWindow::RESULT_LEFT_BUTTON:
                    start_process(CHANEDIT_PROC_FMT);
                    pNandSDCardManager->cmdSDFormat();
                    break;
                case DialogWindow::RESULT_RIGHT_BUTTON:
                    if (mPage == CHANEDIT_PAGE_WII) {
                        mState = CHANEDIT_STATE_ON_EDIT;
                    } else {
                        pChanAppBase->anmTextFadein(MESG_DATA_SD_DEVICE_BAD);
                        mState = CHANEDIT_STATE_ON_SD_MESSAGE1ST;
                    }
                    break;
            }
        }
        void ChannelEdit::on_end_format() {
            if (System::getDialog()->getLastResult() != DialogWindow::RESULT_WAIT)
                return;
            if (mPage == CHANEDIT_PAGE_WII) {
                mState = CHANEDIT_STATE_ON_EDIT;
            } else if (pNandSDCardManager->getWorker()->get_sd_state() != NandSDWorker::SD_STATE_INITIAL) {
                pChanAppBase->anmTextFadein(MESG_DATA_SD_DEVICE_BAD);
                mState = CHANEDIT_STATE_ON_SD_MESSAGE1ST;
            }
        }
        void ChannelEdit::on_end_del() {
            if (!pChanAppEdit->isIdle())
                return;

            pNandSDCardManager->cmdCleanQueue();
            pNandSDCardManager->calc();

            ChanAppBox* box = NULL;
            while (box = (ChanAppBox*)nw4r::ut::List_GetNext(&mChanAppBoxList, box), box != NULL)
                box->setThumbnail(NULL);

            if (mPage == 0) {
                pNandSDCardManager->cmdGetNandFree();
                send_getthumbnail_cmd(true);
            } else {
                pNandSDCardManager->cmdGetSDFree();
                send_getthumbnail_cmd(false);
            }
            pChanAppEdit->anmTextFadein(MESG_DATA_ERASED);
            stop_process();

            mState = CHANEDIT_STATE_ON_END_PROCESS;
        }
        void ChannelEdit::on_sd_mount() {
            if (pNandSDCardManager->isWorking())
                return;
            pNandSDCardManager->cmdListSD();
            mState = CHANEDIT_STATE_ON_CHANGE_TAG1ST;
        }
        void ChannelEdit::on_sd_message1st() {
            if (!pChanAppEdit->isIdle())
                return;

            SettingButton* sceneSettingButton = (SettingButton*)System::getScene(SCENE_SETTING_BUTTON);
            if (sceneSettingButton->update()) {
                onTrigButton(true);
                return;
            }

            if (mSdState != pNandSDCardManager->getWorker()->get_sd_state() && pChanAppBase->isIdle()) {
                pChanAppBase->anmTextFadeout();
                mState = CHANEDIT_STATE_ON_SD_MESSAGE2ND;
            } else {
                pChanAppBase->update();
            }
        }
        void ChannelEdit::on_sd_message2nd() {
            if (!pChanAppBase->isIdle())
                return;
            mState = CHANEDIT_STATE_ON_CHANGE_TAG1ST;
        }
        void ChannelEdit::on_sd_message3rd() {
            if (!pChanAppBase->isIdle())
                return;
            if (mPage == CHANEDIT_PAGE_WII) {
                pChanAppBase->anmChangeWiitoSD();
                mState = CHANEDIT_STATE_ON_CHANGE_TAG1ST;
            } else {
                pChanAppBase->anmChangeSDtoWii();
                mState = CHANEDIT_STATE_ON_CHANGE_TAG1ST;
            }
        }
        void ChannelEdit::on_process() {
            if (pNandSDCardManager->isWorking())
                return;

            if (!pChanAppEdit->isIdle())
                return;

            int result = pNandSDCardManager->getAsyncResult();
            if (result == 0) {
                if (mProcessType == CHANEDIT_PROC_FMT) {
                    pChanAppEdit->anmHideBtn0Dialog();
                } else if (mProcessType == CHANEDIT_PROC_CPY) {
                    pChanAppEdit->anmTextFadein(MESG_DATA_COPIED);
                    System::getChannelManager()->reserveRefresh();
                } else if (mProcessType == CHANEDIT_PROC_DEL) {
                    System::getChannelManager()->reserveRefresh();
                    pChanAppEdit->anmClear();
                    mState = CHANEDIT_STATE_ON_END_DEL;
                    return;
                } else if (mProcessType == CHANEDIT_PROC_MOV) {
                    System::getChannelManager()->reserveRefresh();
                    pChanAppEdit->anmClear();
                    mState = CHANEDIT_STATE_ON_END_MOVE;
                    return;
                }
            } else {
                if (result == NandSDWorker::WORKER_RESULT_ALREADY_EXISTS) {
                    pChanAppEdit->anmTextFadein(mPage == CHANEDIT_PAGE_WII ? MESG_DATA_ALREADY_EXISTS_SD : MESG_DATA_ALREADY_EXISTS_WII);
                } else if (result == NandSDWorker::WORKER_RESULT_NO_SPACE) {
                    pChanAppEdit->anmTextFadein(mPage == CHANEDIT_PAGE_WII ? MESG_DATA_NOT_ENOUGH_FREE_SD : MESG_DATA_TOO_FEW_RESOURCES);
                } else if (result == NandSDWorker::WORKER_RESULT_UNK_N12) {
                    pChanAppEdit->anmTextFadein(MESG_DATA_FILENAME_CONFLICT);
                } else if (result == NandSDWorker::WORKER_RESULT_NOT_TRANSFERRABLE) {
                    pChanAppEdit->anmTextFadein(mProcessType == CHANEDIT_PROC_MOV ? MESG_DATA_CANT_MOV_CHAN_2_WII : MESG_DATA_CANT_CPY_CHAN_2_WII);
                } else if (result == NandSDWorker::WORKER_RESULT_VERSION_ERR) {
                    pChanAppEdit->anmTextFadein(mProcessType == CHANEDIT_PROC_MOV ? MESG_DATA_CANT_MOV_VERSION_ERR : MESG_DATA_CANT_CPY_VERSION_ERR);
                } else {
                    OSReport("fail:  async result = %d\n", result);
                    switch (mProcessType) {
                        case CHANEDIT_PROC_CPY:
                            pChanAppEdit->anmTextFadein(MESG_DATA_COPY_UNK_ERROR);
                            break;
                        case CHANEDIT_PROC_DEL:
                            pChanAppEdit->anmTextFadein(MESG_DATA_DEL_UNK_ERROR);
                            break;
                        case CHANEDIT_PROC_FMT:
                            pChanAppEdit->anmHideBtn0Dialog();
                            break;
                        case CHANEDIT_PROC_MOV:
                            pChanAppEdit->anmTextFadein(MESG_DATA_MOVE_UNK_ERROR);
                            break;
                    }
                }
            }

            stop_process();
            mState = CHANEDIT_STATE_ON_END_PROCESS;
        }
        void ChannelEdit::on_end_process() {
            if (!pChanAppEdit->isIdle())
                return;

            if (mProcessType == CHANEDIT_PROC_FMT) {
                if (pNandSDCardManager->getWorker()->get_sd_state() == NandSDWorker::SD_STATE_READY) {
                    pChanAppEdit->anmShowBtn0Dialog(MESG_DATA_SD_FORMATTED, false, false);
                    mState = CHANEDIT_STATE_ON_END_FORMAT;
                } else {
                    pChanAppEdit->anmShowBtn0Dialog(MESG_DATA_SD_NOT_FORMATTED, false, false);
                    mState = CHANEDIT_STATE_ON_END_FORMAT;
                }
            } else {
                pChanAppEdit->anmTextFadeout();
                mState = CHANEDIT_STATE_ON_EDIT_FADEOUT2ND;
            }
            mProcessType = CHANEDIT_PROC_NUL;
        }
        void ChannelEdit::on_exist_app() {
            if (pNandSDCardManager->isWorking())
                return;

            if (pNandSDCardManager->getAsyncResult() == 0) {
                switch (mActionIntent) {
                    case CHANEDIT_INTENT_COPY:
                        pChanAppEdit->anmShowS2Btn2Dialog(MESG_DATA_COPY_Q);
                        mState = CHANEDIT_STATE_ON_VERIFY_COPY;
                        break;

                    case CHANEDIT_INTENT_MOVE:
                        pChanAppEdit->anmShowS2Btn2Dialog(MESG_DATA_MOVE_Q);
                        mState = CHANEDIT_STATE_ON_VERIFY_MOVE;
                        break;

                    default:
                        break;
                }
                mActionIntent = CHANEDIT_INTENT_NONE;
            } else if (pNandSDCardManager->getAsyncResult() == 1) {
                pChanAppEdit->anmSelectFadeout(MESG_DATA_ALREADY_EXISTS_SD);
                mState = CHANEDIT_STATE_ON_VERIFY1ST;
            } else {
                pChanAppEdit->anmSelectFadeout(MESG_DATA_SD_PROCESS_FAILED);
                mState = CHANEDIT_STATE_ON_VERIFY1ST;
            }
        }
        void ChannelEdit::on_sd_mount_only() {
            if (pNandSDCardManager->isWorking())
                return;
            switch (mActionIntent) {
                case CHANEDIT_INTENT_COPY:
                    mState = CHANEDIT_STATE_ON_TRIG_COPY;
                    break;

                case CHANEDIT_INTENT_MOVE:
                    mState = CHANEDIT_STATE_ON_TRIG_MOVE;
                    break;

                default:
                    break;
            }
        }
        void ChannelEdit::on_trig_move() {
            if (pNandSDCardManager->isWorking())
                return;

            if (pCurrBox->getThumbnail()->getIsCorrupt()) {
                pChanAppEdit->anmSelectFadeout(MESG_DATA_FILE_CANT_BE_MOVED);
                mState = CHANEDIT_STATE_ON_VERIFY1ST;
                return;
            }

            if (mPage == CHANEDIT_PAGE_WII) {
                if (pCurrBox->getThumbnail()->getMatchesTmpTitle()) {
                    pChanAppEdit->anmSelectFadeout(MESG_DATA_FILE_CANT_BE_MOVED);
                    mState = CHANEDIT_STATE_ON_VERIFY1ST;
                    return;
                }

                mSdState = pNandSDCardManager->getWorker()->get_sd_state();
                switch (mSdState) {
                    case NandSDWorker::SD_STATE_SLOT_EMPTY:
                        pChanAppEdit->anmSelectFadeout(MESG_DATA_NO_SD_CARD);
                        mState = CHANEDIT_STATE_ON_VERIFY1ST;
                        break;
                    case NandSDWorker::SD_STATE_NOT_MOUNTED:
                        OSReport("NEED MOUNT\n");
                        pNandSDCardManager->cmdSDMount();
                        mState = CHANEDIT_STATE_ON_SD_MOUNT_ONLY;
                        break;
                    case NandSDWorker::SD_STATE_BROKEN_MEDIA:
                    case NandSDWorker::SD_STATE_ILLEGAL_MEDIA:
                        pChanAppEdit->anmSelectFadeout(MESG_DATA_SD_DEVICE_BAD);
                        mState = CHANEDIT_STATE_ON_VERIFY1ST;
                        break;
                    case NandSDWorker::SD_STATE_READY:
                        if (pNandSDCardManager->isSDWriteProtected()) {
                            pChanAppEdit->anmSelectFadeout(MESG_DATA_SD_CARD_LOCKED);
                            mState = CHANEDIT_STATE_ON_VERIFY1ST;
                            return;
                        }
                        pNandSDCardManager->cmdExistSDApp(pCurrBox->getThumbnail()->getWiiTitleId());
                        mState = CHANEDIT_STATE_ON_EXIST_APP;
                        mActionIntent = CHANEDIT_INTENT_MOVE;
                        break;

                    case NandSDWorker::SD_STATE_ERRORED:
                    default:
                        pChanAppEdit->anmSelectFadeout(MESG_DATA_SD_PROCESS_FAILED);
                        mState = CHANEDIT_STATE_ON_VERIFY1ST;
                        break;
                }
            } else {
                mSdState = pNandSDCardManager->getWorker()->get_sd_state();
                switch (mSdState) {
                    case NandSDWorker::SD_STATE_READY:
                        if (pNandSDCardManager->isSDWriteProtected()) {
                            pChanAppEdit->anmSelectFadeout(MESG_DATA_SD_CARD_LOCKED);
                            mState = CHANEDIT_STATE_ON_VERIFY1ST;
                        } else if (pNandSDCardManager->getAsyncResult() != NandSDWorker::WORKER_RESULT_OK) {
                            if (pCurrBox->getThumbnail()->getSDTitleId() == (ESTitleId32)pNandSDCardManager->getTmpTitle()) {
                                u32 numFreeChannels;
                                SCGetFreeChannelAppCount(&numFreeChannels);
                                if (numFreeChannels == 0) {
                                    pChanAppEdit->anmSelectFadeout(MESG_DATA_TOO_FEW_RESOURCES);
                                    mState = CHANEDIT_STATE_ON_VERIFY1ST;
                                } else {
                                    pChanAppEdit->anmShowS2Btn2Dialog(MESG_DATA_MOVE_TO_WII_Q);
                                    mState = CHANEDIT_STATE_ON_VERIFY_MOVE;
                                }
                            } else {
                                pChanAppEdit->anmSelectFadeout(MESG_DATA_ALREADY_EXISTS_WII);
                                mState = CHANEDIT_STATE_ON_VERIFY1ST;
                            }
                        } else {
                            pChanAppEdit->anmShowS2Btn2Dialog(MESG_DATA_MOVE_TO_WII_Q);
                            mState = CHANEDIT_STATE_ON_VERIFY_MOVE;
                        }
                        break;
                    default:
                        pChanAppEdit->anmSelectFadeout(MESG_DATA_SD_PROCESS_FAILED);
                        mState = CHANEDIT_STATE_ON_VERIFY1ST;
                        break;
                }
            }
        }
        void ChannelEdit::on_verify_move() {
            if (!pChanAppEdit->isIdle() || pNandSDCardManager->isWorking())
                return;

            switch (System::getDialog()->getLastResult()) {
                case DialogWindow::RESULT_LEFT_BUTTON:
                    if (mPage == CHANEDIT_PAGE_WII) {
                        if (pNandSDCardManager->getWorker()->get_sd_state() == NandSDWorker::SD_STATE_READY) {
                            start_process(CHANEDIT_PROC_MOV);
                            pNandSDCardManager->cmdMoveAppNandToSD(pCurrBox);
                            if (TVRCManager::getHandle()->isTVRCChannel(ES_TITLE_CODE(pCurrBox->getThumbnail()->getWiiTitleId()))) {
                                TVRCManager::getHandle()->resetProcessAsync(TRUE);
                            }
                            pChanAppEdit->anmTextFadein(MESG_DATA_MOVING_TO_SD);
                        } else if (pNandSDCardManager->getWorker()->get_sd_state() == NandSDWorker::SD_STATE_SLOT_EMPTY) {
                            pChanAppEdit->anmTextFadein(MESG_DATA_NO_SD_CARD);
                            mState = CHANEDIT_STATE_ON_END_PROCESS;
                            return;
                        } else {
                            pChanAppEdit->anmTextFadein(MESG_DATA_SD_PROCESS_FAILED);
                            mState = CHANEDIT_STATE_ON_END_PROCESS;
                            return;
                        }
                    } else {
                        start_process(CHANEDIT_PROC_MOV);
                        pNandSDCardManager->cmdMoveAppSDToNand(pCurrBox);
                        pChanAppEdit->anmTextFadein(MESG_DATA_MOVING_TO_WII);
                    }
                    break;
                case DialogWindow::RESULT_RIGHT_BUTTON:
                    pChanAppEdit->anmSelectFadein();
                    mState = CHANEDIT_STATE_ON_EDIT_FADEIN;
                    break;
            }
            update_sdcard_slot();
        }
        void ChannelEdit::on_end_move() {
            if (!pChanAppEdit->isIdle())
                return;

            pNandSDCardManager->cmdCleanQueue();
            pNandSDCardManager->calc();

            ChanAppBox* box = NULL;
            while (box = (ChanAppBox*)nw4r::ut::List_GetNext(&mChanAppBoxList, box), box != NULL)
                box->setThumbnail(NULL);

            if (mPage == CHANEDIT_PAGE_WII) {
                pNandSDCardManager->cmdGetNandFree();
                send_getthumbnail_cmd(true);
            } else {
                pNandSDCardManager->cmdGetSDFree();
                send_getthumbnail_cmd(false);
            }
            pChanAppEdit->anmTextFadein(MESG_DATA_MOVED);
            stop_process();
            mState = CHANEDIT_STATE_ON_END_PROCESS;
        }
    }  // namespace scene
}  // namespace ipl
