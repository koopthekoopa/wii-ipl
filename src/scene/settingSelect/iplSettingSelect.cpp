#include "scene/settingSelect/iplSettingSelect.h"
#include "scene/settingSelect/iplSettingSelectArg.h"
#include "scene/settingSelect/iplSettingButton.h"

#include "iplSceneUI.h"

#include "iplSystem.h"

#include <private/os.h>

namespace ipl {
    namespace scene {
        #define CHANGE_STATE(x) mPrevState = mState; mState = x

        const char* SettingSelect::mscButtonName[SettingSelect::BTN_MAX] = {
            "B_DataManage_00",
            "B_Setting_00",
            "B_SaveData_00",
            "B_Channel_00",
            "B_Wii_00",
            "B_Cube_00",
        };

        SettingSelect::SettingSelect(EGG::Heap* heap, int arg) :
        Base(heap),
        ::gui::EventHandler(),
        mState(STATE_WAIT_BUTTON_FADE_IN),
        mPrevState(STATE_WAIT_BUTTON_FADE_IN),
        mSettingArg(arg),
        mpLayout(NULL),
        mpLayoutFile(NULL),
        mpGui(NULL),
        unk_0x90(0),
        unk_0x94(0) {
            setSceneParentFlags(SCN_PARENT_FLAG_CANCALC | SCN_PARENT_FLAG_CANDRAW);
        }

        void SettingSelect::prepare() {
            mpLayoutFile = System::getNandManager()->readLayoutAsync(getSceneHeap(), "setupSel.ash");
        }

        void SettingSelect::create() {
            mpLayout = new layout::Object(getSceneHeap(), mpLayoutFile, "arc", "it_ObjSetUp_a.brlyt");

            // Data Management button
            mpLayout->bindToGroup("it_ObjSetUp_a_SetUpIn.brlan", "G_DataManage_00", false);
            mpLayout->bindToGroup("it_ObjSetUp_a_SetUpFoucusIn.brlan", "G_DataManage_00", false, false);
            mpLayout->bindToGroup("it_ObjSetUp_a_SetUpFoucusOut.brlan", "G_DataManage_00", false, false);
            mpLayout->bindToGroup("it_ObjSetUp_a_SetUpFoucusFlash.brlan", "G_DataManage_00", false, false);
            mpLayout->bindToGroup("it_ObjSetUp_a_SetUpFoucusFlash.brlan", "G_DataManage_01", false, false);
            mpLayout->bindToGroup("it_ObjSetUp_a_SetUpOut.brlan", "G_DataManage_00", false, false);
            mpLayout->bindToGroup("it_ObjSetUp_a_SetUpBack.brlan", "G_DataManage_00", false, false);

            // Wii Settings button
            mpLayout->bindToGroup("it_ObjSetUp_a_SetUpIn.brlan", "G_Setting_00", false);
            mpLayout->bindToGroup("it_ObjSetUp_a_SetUpFoucusIn.brlan", "G_Setting_00", false, false);
            mpLayout->bindToGroup("it_ObjSetUp_a_SetUpFoucusOut.brlan", "G_Setting_00", false, false);
            mpLayout->bindToGroup("it_ObjSetUp_a_SetUpFoucusFlash.brlan", "G_Setting_00", false, false);
            mpLayout->bindToGroup("it_ObjSetUp_a_SetUpFoucusFlash.brlan", "G_Setting_01", false, false);
            mpLayout->bindToGroup("it_ObjSetUp_a_SetUpOut.brlan", "G_Setting_00", false, false);
            mpLayout->bindToGroup("it_ObjSetUp_a_SetUpBack.brlan", "G_Setting_00", false, false);

            // Save data button
            mpLayout->bindToGroup("it_ObjSetUp_a_DataChannelIn.brlan", "G_SaveData_00", false);
            mpLayout->bindToGroup("it_ObjSetUp_a_DataChannelFoucusIn.brlan", "G_SaveData_00", false, false);
            mpLayout->bindToGroup("it_ObjSetUp_a_DataChannelFoucusOut.brlan", "G_SaveData_00", false, false);
            mpLayout->bindToGroup("it_ObjSetUp_a_DataChannelFoucusFlash.brlan", "G_SaveData_00", false, false);
            mpLayout->bindToGroup("it_ObjSetUp_a_DataChannelFoucusFlash.brlan", "G_SaveData_01", false, false);
            mpLayout->bindToGroup("it_ObjSetUp_a_DataChannelOut.brlan", "G_SaveData_00", false, false);
            mpLayout->bindToGroup("it_ObjSetUp_a_DataChannelBack.brlan", "G_SaveData_00", false, false);

            // Channels button
            mpLayout->bindToGroup("it_ObjSetUp_a_DataChannelIn.brlan", "G_Channel_00", false);
            mpLayout->bindToGroup("it_ObjSetUp_a_DataChannelFoucusIn.brlan", "G_Channel_00", false, false);
            mpLayout->bindToGroup("it_ObjSetUp_a_DataChannelFoucusOut.brlan", "G_Channel_00", false, false);
            mpLayout->bindToGroup("it_ObjSetUp_a_DataChannelFoucusFlash.brlan", "G_Channel_00", false, false);
            mpLayout->bindToGroup("it_ObjSetUp_a_DataChannelFoucusFlash.brlan", "G_Channel_01", false, false);
            mpLayout->bindToGroup("it_ObjSetUp_a_DataChannelOut.brlan", "G_Channel_00", false, false);
            mpLayout->bindToGroup("it_ObjSetUp_a_DataChannelBack.brlan", "G_Channel_00", false, false);

            // Wii save data button
            mpLayout->bindToGroup("it_ObjSetUp_a_SaveDataIn.brlan", "G_Wii_00", false);
            mpLayout->bindToGroup("it_ObjSetUp_a_SaveDataFoucusIn.brlan", "G_Wii_00", false, false);
            mpLayout->bindToGroup("it_ObjSetUp_a_SaveDataFoucusOut.brlan", "G_Wii_00", false, false);
            mpLayout->bindToGroup("it_ObjSetUp_a_SaveDataFoucusFlash.brlan", "G_Wii_00", false, false);
            mpLayout->bindToGroup("it_ObjSetUp_a_SaveDataFoucusFlash.brlan", "G_Wii_01", false, false);
            mpLayout->bindToGroup("it_ObjSetUp_a_SaveDataOut.brlan", "G_Wii_00", false, false);
            mpLayout->bindToGroup("it_ObjSetUp_a_SaveDataBack.brlan", "G_Wii_00", false, false);

            // Gamecube save data button
            mpLayout->bindToGroup("it_ObjSetUp_a_SaveDataIn.brlan", "G_Cube_00", false);
            mpLayout->bindToGroup("it_ObjSetUp_a_SaveDataFoucusIn.brlan", "G_Cube_00", false, false);
            mpLayout->bindToGroup("it_ObjSetUp_a_SaveDataFoucusOut.brlan", "G_Cube_00", false, false);
            mpLayout->bindToGroup("it_ObjSetUp_a_SaveDataFoucusFlash.brlan", "G_Cube_00", false, false);
            mpLayout->bindToGroup("it_ObjSetUp_a_SaveDataFoucusFlash.brlan", "G_Cube_01", false, false);
            mpLayout->bindToGroup("it_ObjSetUp_a_SaveDataOut.brlan", "G_Cube_00", false, false);
            mpLayout->bindToGroup("it_ObjSetUp_a_SaveDataBack.brlan", "G_Cube_00", false, false);
        
            mpLayout->finishBinding();

            mpGui = new gui::PaneManager(this, mpLayout->getDrawInfo(), NULL, NULL, true);
            mpGui->createLayoutScene(*mpLayout->getLayout());
            mpGui->setAllComponentTriggerTarget(false);

            if (mSettingArg == SettingSelectArg::ARG_START_NORMAL) {
                mpGui->setTriggerTarget(mpLayout->FindPaneByName(mscButtonName[BTN_DATA_MANAGE]), true);
                mpGui->setTriggerTarget(mpLayout->FindPaneByName(mscButtonName[BTN_SETTING]), true);
            }
            else {
                mpGui->setTriggerTarget(mpLayout->FindPaneByName(mscButtonName[BTN_SAVEDATA]), true);
                mpGui->setTriggerTarget(mpLayout->FindPaneByName(mscButtonName[BTN_CHANNEL]), true);
            }

            set_text("T_Datamanage0_00", MESG_SETTING_SEL_DATA_MANAGE);
            set_text("T_DataManage_01", MESG_SETTING_SEL_DATA_MANAGE);
            set_text("T_Setting_00", MESG_SETTING_SEL_WII_SETTING);
            set_text("T_SaveData_00", MESG_SETTING_SEL_SAVE_DATA);
            set_text("T_SaveData_01", MESG_SETTING_SEL_SAVE_DATA);
            set_text("T_Channel_00", MESG_SETTING_SEL_CHANNELS);
            set_text("T_Channel_01", MESG_SETTING_SEL_CHANNELS);
            set_text("T_Wii_00", MESG_SETTING_SEL_WII);
            set_text("T_Wii_01", MESG_SETTING_SEL_WII);
            set_text("T_Cube_00", MESG_SETTING_SEL_CUBE);
            set_text("T_Cube_01", MESG_SETTING_SEL_CUBE);

            reset_gui();
        }

        void SettingSelect::calc() {
            switch (mState) {
                case STATE_WAIT_BUTTON_FADE_IN: {
                    stt_wait_button_fadein();
                    break;
                }
                case STATE_1ST_WAIT_FADE_IN: {
                    stt_1st_fadein();
                    break;
                }
                case STATE_1ST_WAIT_FADE_OUT: {
                    stt_1st_fadeout();
                    break;
                }
                case STATE_2ND_WAIT_FADE_IN: {
                    stt_2nd_fadein();
                    break;
                }
                case STATE_2ND_WAIT_FADE_OUT: {
                    stt_2nd_fadeout();
                    break;
                }
                case STATE_3RD_WAIT_FADE_IN: {
                    stt_3rd_fadein();
                    break;
                }
                case STATE_3RD_WAIT_FADE_OUT: {
                    stt_3rd_fadeout();
                    break;
                }
                case STATE_1ST_NORMAL:
                case STATE_2ND_NORMAL:
                case STATE_3RD_NORMAL: {
                    stt_normal();
                    break;
                }
                case STATE_2ND_WAIT_BACK: {
                    stt_wait_2nd_back();
                    break;
                }
                case STATE_3RD_WAIT_BACK: {
                    stt_wait_3rd_back();
                    break;
                }
                case STATE_WAIT_BUTTON_DECIDE: {
                    stt_wait_button_decided();
                    break;
                }
                case STATE_WAIT_BLACK_OUT: {
                    stt_wait_blackout();
                    break;
                }
                case STATE_WAIT_CHILD: {
                    stt_wait_child();
                    break;
                }
                case STATE_WAIT_CHILD_ANIM: {
                    stt_wait_child_anm();
                    break;
                }
                case STATE_16: {
                    fn_81409864();
                    break;
                }
            }

            mpLayout->calc();
            mpGui->calc();
        }

        void SettingSelect::stt_wait_button_fadein() {
            SettingButton* settingButton = static_cast<SettingButton*>(System::getSceneManager()->getScene(SCENE_SETTING_BUTTON));

            if (System::getFader()->getStatus() == EGG::Fader::STATUS_PREPARE_OUT
            && settingButton != NULL && settingButton->getSceneFadeState() != FaderSceneBase::STT_FADE_IN) {
                if (mSettingArg == SettingSelectArg::ARG_START_NORMAL) {
                    mpLayout->getAnim(ANIM_DATA_MANAGE_IN)->play();
                    mpLayout->getAnim(ANIM_SETTING_IN)->play();
                    CHANGE_STATE(STATE_1ST_WAIT_FADE_IN);
                }
                else {
                    layout::Animator* anim = mpLayout->getAnim(ANIM_DATA_MANAGE_FLASH);
                    anim->initAnmFrame(anim->getMaxFrame());

                    mpLayout->getAnim(ANIM_SAVE_DATA_IN)->play();
                    mpLayout->getAnim(ANIM_CHANNEL_IN)->play();
                    CHANGE_STATE(STATE_2ND_WAIT_FADE_IN);
                }
            }
        }

        void SettingSelect::stt_1st_fadein() {
            if (!mpLayout->getAnim(ANIM_DATA_MANAGE_IN)->isPlaying() && !mpLayout->getAnim(7)->isPlaying()) {
                CHANGE_STATE(STATE_1ST_NORMAL);
            }
        }

        void SettingSelect::stt_1st_fadeout() {
            if (is_stopped_all_anm()) {
                if (unk_0x90 != 0) {
                    System::getFader()->fadeOut();
                    CHANGE_STATE(STATE_WAIT_BLACK_OUT);
                }
                else {
                    mpGui->setTriggerTarget(mpLayout->FindPaneByName(mscButtonName[BTN_DATA_MANAGE]), false);
                    mpGui->setTriggerTarget(mpLayout->FindPaneByName(mscButtonName[BTN_SETTING]), false);
                    mpGui->setTriggerTarget(mpLayout->FindPaneByName(mscButtonName[BTN_SAVEDATA]), true);
                    mpGui->setTriggerTarget(mpLayout->FindPaneByName(mscButtonName[BTN_CHANNEL]), true);
                    reset_gui();

                    mpLayout->getAnim(ANIM_SAVE_DATA_IN)->play();
                    mpLayout->getAnim(ANIM_CHANNEL_IN)->play();
                    CHANGE_STATE(STATE_2ND_WAIT_FADE_IN);
                }
            }
        }

        void SettingSelect::stt_2nd_fadein() {
            if (is_stopped_all_anm()) {
                CHANGE_STATE(STATE_2ND_NORMAL);
            }
        }

        void SettingSelect::stt_2nd_fadeout() {
            if (is_stopped_all_anm()) {
                if (unk_0x90 != 0) {
                    CHANGE_STATE(STATE_WAIT_CHILD);
                    reset_gui();
                }
                else {
                    mpGui->setTriggerTarget(mpLayout->FindPaneByName(mscButtonName[BTN_SAVEDATA]), false);
                    mpGui->setTriggerTarget(mpLayout->FindPaneByName(mscButtonName[BTN_CHANNEL]), false);
                    mpGui->setTriggerTarget(mpLayout->FindPaneByName(mscButtonName[BTN_WII_SAVE]), true);
                    mpGui->setTriggerTarget(mpLayout->FindPaneByName(mscButtonName[BTN_GC_SAVE]), true);
                    reset_gui();

                    mpLayout->getAnim(ANIM_WII_SAVE_DATA_IN)->play();
                    mpLayout->getAnim(ANIM_GC_SAVE_DATA_IN)->play();
                    CHANGE_STATE(STATE_3RD_WAIT_FADE_IN);
                }
            }
        }

        void SettingSelect::stt_3rd_fadein() {
            if (is_stopped_all_anm()) {
                CHANGE_STATE(STATE_3RD_NORMAL);
            }
        }

        void SettingSelect::stt_3rd_fadeout() {
            if (is_stopped_all_anm()) {
                CHANGE_STATE(STATE_WAIT_CHILD);
                reset_gui();
            }
        }

        void SettingSelect::stt_normal() {
            int prevState = mState;

            mpGui->update();

            if (prevState == mState) {
                SettingButton* settingButton = static_cast<SettingButton*>(System::getScene(SCENE_SETTING_BUTTON));
                if (settingButton->update()) {
                    CHANGE_STATE(STATE_WAIT_BUTTON_DECIDE);
                }
            }
        }

        void SettingSelect::stt_wait_2nd_back() {
            if (is_stopped_all_anm()) {
                CHANGE_STATE(STATE_1ST_NORMAL);
            }
        }

        void SettingSelect::stt_wait_3rd_back() {
            if (is_stopped_all_anm()) {
                CHANGE_STATE(STATE_2ND_NORMAL);
            }
        }

        void SettingSelect::stt_wait_button_decided() {
            SettingButton* settingButton = static_cast<SettingButton*>(System::getScene(SCENE_SETTING_BUTTON));
            if (!settingButton->isPlaying()) {
                switch (mPrevState) {
                    case STATE_1ST_NORMAL: {
                        System::getChannelManager()->refreshAsync();
                        System::getFader()->fadeOut();
                        unk_0x90 = 4;

                        reserveAllSceneDestruction(SCENE_BOARD, NULL);

                        CHANGE_STATE(STATE_WAIT_BLACK_OUT);
                        break;
                    }
                    case STATE_2ND_NORMAL: {
                        if (System::goingToDataManager()) {
                            System::getChannelManager()->refreshAsync();

                            CHANGE_STATE(STATE_16);
                        }
                        else {
                            mpLayout->getAnim(ANIM_DATA_MANAGE_BACK)->play();
                            mpLayout->getAnim(ANIM_SETTING_IN)->play();
                            mpLayout->getAnim(ANIM_SAVE_DATA_OUT)->play();
                            mpLayout->getAnim(ANIM_CHANNEL_OUT)->play();

                            mpGui->setTriggerTarget(mpLayout->FindPaneByName(mscButtonName[BTN_SAVEDATA]), false);
                            mpGui->setTriggerTarget(mpLayout->FindPaneByName(mscButtonName[BTN_CHANNEL]), false);
                            mpGui->setTriggerTarget(mpLayout->FindPaneByName(mscButtonName[BTN_DATA_MANAGE]), true);
                            mpGui->setTriggerTarget(mpLayout->FindPaneByName(mscButtonName[BTN_SETTING]), true);

                            CHANGE_STATE(STATE_2ND_WAIT_BACK);
                        }
                        break;
                    }
                    case STATE_3RD_NORMAL: {
                        mpLayout->getAnim(ANIM_SAVE_DATA_BACK)->play();
                        mpLayout->getAnim(ANIM_CHANNEL_IN)->play();
                        mpLayout->getAnim(ANIM_WII_SAVE_DATA_OUT)->play();
                        mpLayout->getAnim(ANIM_GC_SAVE_DATA_OUT)->play();

                        mpGui->setTriggerTarget(mpLayout->FindPaneByName(mscButtonName[BTN_WII_SAVE]), false);
                        mpGui->setTriggerTarget(mpLayout->FindPaneByName(mscButtonName[BTN_GC_SAVE]), false);
                        mpGui->setTriggerTarget(mpLayout->FindPaneByName(mscButtonName[BTN_SAVEDATA]), true);
                        mpGui->setTriggerTarget(mpLayout->FindPaneByName(mscButtonName[BTN_CHANNEL]), true);

                        if (mSettingArg == SettingSelectArg::ARG_START_SAVE_DATA) {
                            static_cast<SettingButton*>(System::getScene(SCENE_SETTING_BUTTON))->hideBtn();
                        }

                        CHANGE_STATE(STATE_3RD_WAIT_BACK);
                    }
                }
            }
        }

        void SettingSelect::stt_wait_blackout() {
            if (System::getFader()->getStatus() == EGG::Fader::STATUS_PREPARE_IN) {
                setSceneState(SCN_STATE_DESTROY_REQ);
                CHANGE_STATE(STATE_DONE);
            }
        }

        void SettingSelect::stt_wait_child() {
           if (getChild() == NULL && System::getReservedScene() == NULL) {
                int backAnim = -1;
                int inAnim = -1;

                switch (unk_0x90) {
                    case 13: {
                    #ifndef KOREAN_BUILD
                        backAnim = ANIM_WII_SAVE_DATA_BACK;
                        inAnim = ANIM_GC_SAVE_DATA_IN;
                    #else
                        backAnim = ANIM_SAVE_DATA_BACK;
                        inAnim = ANIM_CHANNEL_IN;
                    #endif
                        break;
                    }
                    case 14: {
                        backAnim = ANIM_GC_SAVE_DATA_BACK;
                        inAnim = ANIM_WII_SAVE_DATA_IN;
                        break;
                    }
                    case 12: {
                        backAnim = ANIM_CHANNEL_BACK;
                        inAnim = ANIM_SAVE_DATA_IN;
                        if (mSettingArg == SettingSelectArg::ARG_START_SAVE_DATA) {
                            static_cast<SettingButton*>(System::getScene(SCENE_SETTING_BUTTON))->hideBtn();
                        }
                        break;
                    }
                }

                mpLayout->getAnim(backAnim)->play();
                mpLayout->getAnim(inAnim)->play();

                CHANGE_STATE(STATE_WAIT_CHILD_ANIM);
           }
        }

        void SettingSelect::stt_wait_child_anm() {
            if (is_stopped_all_anm()) {
                switch (unk_0x90) {
                    case 12: {
                        static_cast<SettingButton*>(System::getScene(SCENE_SETTING_BUTTON))->showWii();
                        CHANGE_STATE(STATE_2ND_NORMAL);
                        break;
                    }
                    case 13:
                    case 14: {
                        static_cast<SettingButton*>(System::getScene(SCENE_SETTING_BUTTON))->showWii();
                    #ifndef KOREAN_BUILD
                        CHANGE_STATE(STATE_3RD_NORMAL);
                    #else
                        CHANGE_STATE(STATE_2ND_NORMAL);
                    #endif
                        break;
                    }
                }

                unk_0x90 = 0;
            }
        }

        void SettingSelect::draw() {
            if (System::canDrawScene()) {
                utility::Graphics::setOrtho();
                mpLayout->draw();
            }
        }

        void SettingSelect::reset_gui() {
            for (int i = 0; i < BTN_MAX; i++) {
                mbHovered[i] = 0;
            }
            mpGui->init();
        }

        void SettingSelect::set_text(const char* paneName, u32 msgId) {
            nw4r::lyt::TextBox* textBox = nw4r::ut::DynamicCast<nw4r::lyt::TextBox*>(mpLayout->FindPaneByName(paneName));
            textBox->SetString(System::getMessage(msgId));
        }

        void SettingSelect::start_point_event(const char* paneName, controller::Interface* con) {
            int btnNo = get_button_no(paneName);

            if (condition(btnNo)) {
                if (mbHovered[btnNo] == FALSE) {
                    start_focusin_anm(btnNo, con);
                }
                mbHovered[btnNo]++;
            }
        }

        void SettingSelect::start_left_event(const char* paneName) {
            int btnNo = get_button_no(paneName);

            if (condition(btnNo)) {
                if (mbHovered[btnNo] == TRUE) {
                    start_focusout_anm(btnNo);
                }
                mbHovered[btnNo]--;
            }
        }

        void SettingSelect::start_trig_event(const char* paneName) {
            int btnNo = get_button_no(paneName);

            if (condition(btnNo)) {
                start_selected_anm(btnNo);
            }
        }

        int SettingSelect::get_button_no(const char* paneName) {
            int btnNo = -1;

            for (int i = 0; i < BTN_MAX; i++) {
                if (strcmp(paneName, mscButtonName[i]) == 0) {
                    btnNo = i;
                    break;
                }
            }

            return btnNo;
        }

        BOOL SettingSelect::condition(int btnNo) {
            BOOL result = FALSE;

            if (btnNo != -1 &&
              (((btnNo == BTN_DATA_MANAGE || btnNo == BTN_SETTING) && mState == STATE_1ST_NORMAL)
            || ((btnNo == BTN_SAVEDATA || btnNo == BTN_CHANNEL) && mState == STATE_2ND_NORMAL)
            || ((btnNo == BTN_WII_SAVE || btnNo == BTN_GC_SAVE) && mState == STATE_3RD_NORMAL))) {
                result = TRUE;
            }

            return result;
        }

        void SettingSelect::start_focusin_anm(int btnNo, controller::Interface* con) {
            int animId = -1;

            switch (btnNo) {
                case BTN_DATA_MANAGE: {
                    animId = ANIM_DATA_MANAGE_FOCUS_IN;
                    break;
                }
                case BTN_SETTING: {
                    animId = ANIM_SETTING_FOCUS_IN;
                    break;
                }
                case BTN_SAVEDATA: {
                    animId = ANIM_SAVE_DATA_FOCUS_IN;
                    break;
                }
                case BTN_CHANNEL: {
                    animId = ANIM_CHANNEL_FOCUS_IN;
                    break;
                }
                case BTN_WII_SAVE: {
                    animId = ANIM_WII_SAVE_DATA_FOCUS_IN;
                    break;
                }
                case BTN_GC_SAVE: {
                    animId = ANIM_GC_SAVE_DATA_FOCUS_IN;
                    break;
                }
            }

            if (animId != -1) {
                snd::getSystem()->startSE("WIPL_SE_BT_TARGETTING");
                if (con != NULL) {
                    con->rumble();
                }

                mpLayout->getAnim(animId)->play();
            }
        }

        void SettingSelect::start_focusout_anm(int btnNo) {
            int animId = -1;

            switch (btnNo) {
                case BTN_DATA_MANAGE: {
                    animId = ANIM_DATA_MANAGE_FOCUS_OUT;
                    break;
                }
                case BTN_SETTING: {
                    animId = ANIM_SETTING_FOCUS_OUT;
                    break;
                }
                case BTN_SAVEDATA: {
                    animId = ANIM_SAVE_DATA_FOCUS_OUT;
                    break;
                }
                case BTN_CHANNEL: {
                    animId = ANIM_CHANNEL_FOCUS_OUT;
                    break;
                }
                case BTN_WII_SAVE: {
                    animId = ANIM_WII_SAVE_DATA_FOCUS_OUT;
                    break;
                }
                case BTN_GC_SAVE: {
                    animId = ANIM_GC_SAVE_DATA_FOCUS_OUT;
                    break;
                }
            }

            if (animId != -1) {
                mpLayout->getAnim(animId)->play();
            }
        }

        void SettingSelect::start_selected_anm(int btnNo) {
            int flashAnim = -1;
            int outAnim = -1;

            switch (btnNo) {
                case BTN_DATA_MANAGE: {
                    flashAnim = ANIM_DATA_MANAGE_FLASH;
                    outAnim = ANIM_SETTING_OUT;
                    CHANGE_STATE(STATE_1ST_WAIT_FADE_OUT);
                    break;
                }
                case BTN_SETTING: {
                    unk_0x90 = 18;
                    flashAnim = ANIM_SETTING_FLASH;
                    outAnim = ANIM_DATA_MANAGE_OUT;
                    reserveAllSceneDestruction(SCENE_SETTING, NULL);
                    CHANGE_STATE(STATE_1ST_WAIT_FADE_OUT);
                    break;
                }
                case BTN_SAVEDATA: {
                #ifdef KOREAN_BUILD
                    unk_0x90 = 13;
                #endif
                    flashAnim = ANIM_SAVE_DATA_FLASH;
                    outAnim = ANIM_CHANNEL_OUT;
                #ifdef KOREAN_BUILD
                    createChildScene(SCENE_MEMORY, this, NULL);
                    static_cast<SettingButton*>(System::getScene(SCENE_SETTING_BUTTON))->hideWii();
                #endif
                    CHANGE_STATE(STATE_2ND_WAIT_FADE_OUT);
                    if (mSettingArg == SettingSelectArg::ARG_START_SAVE_DATA) {
                        static_cast<SettingButton*>(System::getScene(SCENE_SETTING_BUTTON))->showBtn();
                    }
                    break;
                }
                case BTN_CHANNEL: {
                    unk_0x90 = 12;
                    flashAnim = ANIM_CHANNEL_FLASH;
                    outAnim = ANIM_SAVE_DATA_OUT;
                    createChildScene(SCENE_CHANNEL_EDIT, this, NULL);
                    CHANGE_STATE(STATE_2ND_WAIT_FADE_OUT);
                    static_cast<SettingButton*>(System::getScene(SCENE_SETTING_BUTTON))->hideWii();
                    if (mSettingArg == SettingSelectArg::ARG_START_SAVE_DATA) {
                        static_cast<SettingButton*>(System::getScene(SCENE_SETTING_BUTTON))->showBtn();
                    }
                    break;
                }
                case BTN_WII_SAVE: {
                    unk_0x90 = 13;
                    flashAnim = ANIM_WII_SAVE_DATA_FLASH;
                    outAnim = ANIM_GC_SAVE_DATA_OUT;
                    createChildScene(SCENE_MEMORY, this, NULL);
                    CHANGE_STATE(STATE_3RD_WAIT_FADE_OUT);
                    static_cast<SettingButton*>(System::getScene(SCENE_SETTING_BUTTON))->hideWii();
                    break;
                }
                case BTN_GC_SAVE: {
                    unk_0x90 = 14;
                    flashAnim = ANIM_GC_SAVE_DATA_FLASH;
                    outAnim = ANIM_WII_SAVE_DATA_OUT;
                    createChildScene(SCENE_MEMORY_CARD, this, NULL);
                    CHANGE_STATE(STATE_3RD_WAIT_FADE_OUT);
                    static_cast<SettingButton*>(System::getScene(SCENE_SETTING_BUTTON))->hideWii();
                    break;
                }
            }

            if (flashAnim != -1) {
                // Play flash anim
                mpLayout->getAnim(flashAnim)->play();
                mpLayout->getAnim(flashAnim+1)->play();

                // Play out anim
                mpLayout->getAnim(outAnim)->play();

                snd::getSystem()->startSE("WIPL_SE_DECIDE");
            }
        }

        bool SettingSelect::is_stopped_all_anm() const {
            bool result = true;
            
            for (int i = 0; i < ANIM_MAX; i++) {
                result &= !mpLayout->getAnim(i)->isPlaying();
            }
    
            return result;
        }

        void SettingSelect::onEvent(u32 compId, u32 event, void* data) {
            gui::PaneComponent* component = static_cast<gui::PaneComponent*>(mpManager->getComponent(compId));
            const char* paneName = component->getPane()->GetName();
    
            controller::Interface* controller = reinterpret_cast<controller::Interface*>(data);
    
            switch (event) {
                case ::gui::EventHandler::ON_POINT: {
                    start_point_event(paneName, controller);
                    break;
                }
                case ::gui::EventHandler::ON_LEFT: {
                    start_left_event(paneName);
                    break;
                }
                case ::gui::EventHandler::ON_TRIG: {
                    if (controller->downTrg(controller::BTN_INTERACT)) {
                        start_trig_event(paneName);
                    }
                    break;
                }
            }
        }

        void SettingSelect::fn_81409864() {
            switch (unk_0x94) {
                case 0: {
                    fn_814098F4();
                    break;
                }
                case 1: {
                    fn_unk_inline();
                    break;
                }
                case 2: {
                    fn_81409988();
                    break;
                }
                case 3: {
                    fn_814099EC();
                    break;
                }
            }
        }

        void SettingSelect::fn_814098F4() {
            if (System::getChannelManager()->isReady()) {
                for (int i = 0; i < WPAD_MAX_CONTROLLERS; i++) {
                    controller::Interface* con = System::getController(i);
                    if (con != NULL) {
                        con->cancelRumbling();
                    }
                }

                System::getBS2Manager()->abort();
                System::stopReceiveSchedule();
                unk_0x94 = 1;
            }
        }

        void SettingSelect::fn_unk_inline() {
            if (!snd::getSystem()->isSEActive("WIPL_SE_DECIDE")) {
                unk_0x94 = 2;
            }
        }

        void SettingSelect::fn_81409988() {
            __WPADReconnect(TRUE);
            snd::getSystem()->stopAllSound(20);
            System::getFader()->fadeOut();
            unk_0x94 = 3;
        }

        void SettingSelect::fn_814099EC() {
            if (System::getFader()->getStatus() == EGG::Fader::STATUS_PREPARE_IN) {
                while (WPADGetStatus() != 0 || System::getBS2Manager()->getIPLState() != bs2::IPL_STATE_8) {
                    snd::getSystem()->calc();
                    System::getBS2Manager()->update();
                    VIWaitForRetrace();

                    if (WPADGetStatus() != 0) {
                        OSReport("wait for WPAD\n");
                    }

                    if (System::getBS2Manager()->getIPLState() != bs2::IPL_STATE_8) {
                        OSReport("wait for BS2\n");
                    }
                }

                VISetBlack(TRUE);
                VIFlush();
                VIWaitForRetrace();
                OSReport("VI Black\n");

                while (!__OSSyncSram()) {
                    OSReport("sync sram\n");
                }

                while (!System::isReceiveScheduleStopped()) {
                    OSReport("Wait ScheduleStopped\n");
                    OSSleepMilliseconds(5);
                }

                if (System::getDataManagerArg() != NULL) {
                    __OSLaunchTitlelForSystem(System::getBS2LaunchTitle(), 5, System::getDataManagerArg(), NULL);
                }
                else {
                    OSRebootSystem();
                }

                while (TRUE) {
                    OSReport("hoge");
                }
            }
        }
    }
}
