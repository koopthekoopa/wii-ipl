#include "iplSceneUI.h"

#include "scene/parentalDialog/iplParentalDialog.h"

#include "iplSystem.h"
#include "iplSound.h"

#include <revolution/sc.h>

#include <cstring>
#include <cwchar>

#include "utility/iplCharacterCode.h"

namespace ipl {
    namespace scene {
        const char* ParentalDialog::mscButtonName[ParentalDialog::BTN_MAX] = {
            "B_BtnA",
            "B_BtnB",
            "B_BtnC",
        };

        ParentalDialog::ParentalDialog(EGG::Heap* heap, BOOL launchTitle) :
        FaderSceneBase(heap),
        mState(STATE_NORMAL),
        mpLayout(NULL),
        mpLayoutFile(NULL),
        mpEvent(NULL),
        mpGui(NULL),
        mpTemporary(launchTitle),
        mResult(RESULT_NONE),
        mbInputPin(false),
        mAttempts(0) {
            for (int i = 0; i < BTN_MAX; i++) {
                mbHovered[i] = FALSE;
            }

            memset(&mMyPin, 0, sizeof(mMyPin));
        }

        void ParentalDialog::prepare() {
            mpLayoutFile = System::getNandManager()->readLayoutAsync(getSceneHeap(), "prntDlg.ash");
        }

        void ParentalDialog::create() {
            // Init layout
            mpLayout = new layout::Object(getSceneHeap(), mpLayoutFile, "arc", "my_ParentalWindow_a.brlyt");

            // Bind animations
            mpLayout->bindToGroup("my_ParentalWindow_a_DialogIn.brlan",     "G_InOut", false);
            mpLayout->bindToGroup("my_ParentalWindow_a_DialogOut.brlan",    "G_InOut", false, false);
            mpLayout->bindToGroup("my_ParentalWindow_a_FocusBtn_on.brlan",  "G_FocusBtnA", false, false);
            mpLayout->bindToGroup("my_ParentalWindow_a_FocusBtn_off.brlan", "G_FocusBtnA", false, false);
            mpLayout->bindToGroup("my_ParentalWindow_a_SelectBtn_Ac.brlan", "G_FocusBtnA", false, false);
            mpLayout->bindToGroup("my_ParentalWindow_a_FocusBtn_on.brlan",  "G_FocusBtnB", false, false);
            mpLayout->bindToGroup("my_ParentalWindow_a_FocusBtn_off.brlan", "G_FocusBtnB", false, false);
            mpLayout->bindToGroup("my_ParentalWindow_a_SelectBtn_Ac.brlan", "G_FocusBtnB", false, false);
            mpLayout->bindToGroup("my_ParentalWindow_a_FocusBtn_on.brlan",  "G_FocusBtnC", false, false);
            mpLayout->bindToGroup("my_ParentalWindow_a_FocusBtn_off.brlan", "G_FocusBtnC", false, false);
            mpLayout->bindToGroup("my_ParentalWindow_a_SelectBtn_Ac.brlan", "G_FocusBtnC", false, false);
            mpLayout->bindToGroup("my_ParentalWindow_a_BeforeAfter.brlan",  "G_BrforeAfter", false, false);
            mpLayout->bindToGroup("my_ParentalWindow_a_OffBtn.brlan",       "G_OnOffBtnB", false, false);
            mpLayout->bindToGroup("my_ParentalWindow_a_OnBtn.brlan",        "G_OnOffBtnB", false, false);
            mpLayout->finishBinding();

            // Setup interface
            mpEvent = new ParentalDialogEvent(this);
            mpGui = new gui::PaneManager(mpEvent, mpLayout->getDrawInfo(), NULL, NULL);
            mpGui->createLayoutScene(*mpLayout->getLayout());
            mpGui->setAllComponentTriggerTarget(false);
            for (int i = 0; i < BTN_MAX; i++) {
                mpGui->setTriggerTarget(mpLayout->FindPaneByName(mscButtonName[i]), true);
            }

            // Set button text
            set_textbox("T_BtnA", MESG_CMN_QUIT);
            set_textbox("T_BtnB", MESG_CMN_OK);
            set_textbox("T_Dialog", MESG_PARENTAL_DLG_TITLE);
            set_textbox("T_Before", MESG_PARENTAL_DLG_PIN);

            // Fade in
            mpLayout->getAnim(ANIM_DIALOG_IN)->play();

            // Enable buttons
            mpLayout->getAnim(ANIM_CHANGE_INPUT_BUTTON)->initAnmFrame();
            mpLayout->getAnim(ANIM_DECIDE_BUTTON_ENABLE)->initAnmFrame();
        }

        FaderSceneCommand ParentalDialog::calcFadein() {
            return !mpLayout->getAnim(ANIM_DIALOG_IN)->isPlaying() ? FADER_SCN_NEXT : FADER_SCN_CONTINUE;
        }

        FaderSceneCommand ParentalDialog::calcNormal() {
            switch (mState) {
                case STATE_NORMAL: {
                    stt_normal();
                    break;
                }
                case STATE_WAIT_SEL_ANIM: {
                    stt_wait_sel_anm();
                    break;
                }
                case STATE_WAIT_INPUT: {
                    stt_wait_input();
                    break;
                }
                case STATE_WAIT_MSG: {
                    stt_wait_msg();
                    break;
                }
            }

            return mState == STATE_DONE ? FADER_SCN_NEXT : FADER_SCN_CONTINUE;
        }

        void ParentalDialog::initCalcFadeout() {
            mpLayout->getAnim(ANIM_DIALOG_OUT)->play();
        }

        FaderSceneCommand ParentalDialog::calcFadeout() {
            return !mpLayout->getAnim(ANIM_DIALOG_OUT)->isPlaying() ? FADER_SCN_NEXT : FADER_SCN_CONTINUE;
        }

        void ParentalDialog::calcCommonAfter() {
            mpLayout->calc();
            mpGui->calc();
        }

        void ParentalDialog::draw() {
            if (System::canDrawScene()) {
                utility::Graphics::setDefaultOrtho();
                mpLayout->draw();
            }
        }

        void ParentalDialog::stt_normal() {
            if (!System::getResetHandler()->isResetting()) {
                mpGui->update();
            }
        }

        void ParentalDialog::stt_wait_sel_anm() {
            if (!mpLayout->getAnim(ANIM_BTN_CANCEL_SELECT)->isPlaying() && !mpLayout->getAnim(ANIM_BTN_DECIDE_SELECT)->isPlaying()) {
                mState = STATE_DONE;
            }
        }

        void ParentalDialog::stt_wait_input() {
            keyboard::Manager::State* state = System::getKeyboard()->getState();

            switch (state->iplType) {
                case keyboard::Manager::STATE_DISAPPEARING: {
                    if (state->pressOK) {
                        // We got the pin!
                        memset(&mMyPin, 0, sizeof(mMyPin));
                        wcsncpy(mMyPin, state->wcString, SC_PARENTAL_PASSWORD_LENGTH);

                        mpLayout->getAnim(ANIM_DECIDE_BUTTON_ENABLE)->play();

                        mpLayout->getAnim(ANIM_CHANGE_INPUT_BUTTON)->setAnimType(ANIM_TYPE_FORWARD);
                        mpLayout->getAnim(ANIM_CHANGE_INPUT_BUTTON)->play();

                        mbInputPin = true;
                    }
                    break;
                }
                case keyboard::Manager::STATE_HIDDEN_AFTER_DISAPPEAR: {
                    mState = STATE_NORMAL;
                    break;
                }
                case keyboard::Manager::STATE_HIDDEN:
                case keyboard::Manager::STATE_APPEARING: {
                    if (state->wcString != NULL) {
                        if (*state->wcString == 0) {
                            System::getKeyboard()->memoMgr()->setTitleText(System::getMessage(MESG_PARENTAL_DLG_NO_PIN));
                        }
                        else {
                            System::getKeyboard()->memoMgr()->setTitleText(L"");
                        }
                    }
                    break;
                }
                default: {
                    break;
                }
            }
        }

        void ParentalDialog::stt_wait_msg() {
            switch (System::getDialog()->getLastResult()) {
                case DialogWindow::RESULT_BUTTON: {
                    if (mAttempts < ATTEMPTS_MAX) {
                        // Try again!
                        mpLayout->getAnim(ANIM_CHANGE_INPUT_BUTTON)->setAnimType(ANIM_TYPE_BACKWARD);
                        mpLayout->getAnim(ANIM_CHANGE_INPUT_BUTTON)->play();
                        mState = STATE_NORMAL;
                    }
                    else {
                        // Exit out if too many attempts
                        mResult = RESULT_OVER_ATTEMPTS;
                        mState = STATE_DONE;
                    }
                    break;
                }
                case DialogWindow::RESULT_WAIT: {
                    mState = STATE_DONE;
                    break;
                }
            }
        }

        void ParentalDialog::start_point_event(const char* paneName, controller::Interface* con) {
            int btnNo = get_button_no(paneName);
            if (btnNo != -1 && mbHovered[btnNo] == FALSE) {
                switch (btnNo) {
                    case BTN_CANCEL: {
                        mpLayout->getAnim(ANIM_BTN_CANCEL_FOCUS_IN)->play();
                        snd::getSystem()->startSE("WIPL_SE_BT_TARGETTING");
                        if (con != NULL) {
                            con->rumble();
                        }
                        break;
                    }
                    case BTN_DECIDE: {
                        if (mbInputPin) {
                            snd::getSystem()->startSE("WIPL_SE_BT_TARGETTING");
                            if (con != NULL) {
                                con->rumble();
                            }
                            mpLayout->getAnim(ANIM_BTN_DECIDE_FOCUS_IN)->play();
                        }
                        break;
                    }
                    case BTN_INPUT: {
                        snd::getSystem()->startSE("WIPL_SE_BT_TARGETTING");
                        if (con != NULL) {
                            con->rumble();
                        }
                        mpLayout->getAnim(ANIM_BTN_INPUT_FOCUS_IN)->play();
                        break;
                    }
                }
                mbHovered[btnNo]++;
            }
        }

        void ParentalDialog::start_left_event(const char* paneName) {
            int btnNo = get_button_no(paneName);
            if (btnNo != -1 && mbHovered[btnNo] == TRUE) {
                switch (btnNo) {
                    case BTN_CANCEL: {
                        mpLayout->getAnim(ANIM_BTN_CANCEL_FOCUS_OUT)->play();
                        break;
                    }
                    case BTN_DECIDE: {
                        if (mbInputPin) {
                            mpLayout->getAnim(ANIM_BTN_DECIDE_FOCUS_OUT)->play();
                        }
                        break;
                    }
                    case BTN_INPUT: {
                        mpLayout->getAnim(ANIM_BTN_INPUT_FOCUS_OUT)->play();
                        break;
                    }
                }
                mbHovered[btnNo]--;
            }
        }

        void ParentalDialog::start_trig_event(const char* paneName, int chan) {
            int btnNo = get_button_no(paneName);
            if (btnNo != -1) {
                switch (btnNo) {
                    case BTN_CANCEL: {
                        reset_gui();

                        mpLayout->getAnim(ANIM_BTN_CANCEL_SELECT)->play();
                        snd::getSystem()->startSE("WIPL_SE_CANCEL");

                        mState = STATE_WAIT_SEL_ANIM;
                        mResult = RESULT_CANCELLED;

                        break;
                    }
                    case BTN_DECIDE: {
                        if (mbInputPin) {
                            reset_gui();

                            mpLayout->getAnim(ANIM_BTN_DECIDE_SELECT)->play();
                            snd::getSystem()->startSE("WIPL_SE_DECIDE");

                            if (check()) {
                                // Correct!!
                                System::getDialog()->callBtn0(mpTemporary == FALSE ? MESG_PARENTAL_DLG_SUCCESS : MESG_PARENTAL_DLG_SUCCESS_TEMP, 180);
                                mResult = RESULT_SUCCESS;
                                mState = STATE_WAIT_MSG;
                            }
                            else {
                                // Incorrect!!
                                mAttempts++;
                                System::getDialog()->callBtn1(MESG_PARENTAL_DLG_BAD_PIN, MESG_CMN_OK);
                                mpLayout->getAnim(ANIM_DECIDE_BUTTON_DISABLE)->play();
                                mbInputPin = false;
                                mState = STATE_WAIT_MSG;
                            }
                        }
                        break;
                    }
                    case BTN_INPUT: {
                        reset_gui();

                        mpLayout->getAnim(ANIM_BTN_INPUT_SELECT)->play();
                        snd::getSystem()->startSE("WIPL_SE_DECIDE");

                        wchar_t wcString[2] = L"";
                        keyboard::Manager::KeyboardSetting setting;

                        System::getKeyboard()->init();

                        setting.type = keyboard::Manager::NUMERIC;
                        setting.wcString = wcString;
                        setting.stringLimit = 4;
                        setting.rowLimit = 1;

                        System::getKeyboard()->start(chan, setting);
                        System::getKeyboard()->memoMgr()->setSecretInputMode(true);
                        System::getKeyboard()->memoMgr()->setTitleText(System::getMessage(MESG_PARENTAL_DLG_NO_PIN));

                        mState = STATE_WAIT_INPUT;
                        
                        break;
                    }
                }
            }
        }

        int ParentalDialog::get_button_no(const char* paneName) const {
            int result = -1;
            for (int i = 0; i < BTN_MAX; i++) {
                if (strcmp(mscButtonName[i], paneName) == 0) {
                    result = i;
                    break;
                }
            }
            return result;
        }

        void ParentalDialog::reset_gui() {
            mpGui->init();
            for (int i = 0; i < BTN_MAX; i++) {
                mbHovered[i] = FALSE;
            }
        }

        BOOL ParentalDialog::check() const {
            u8 myPin[SC_PARENTAL_PASSWORD_LENGTH+1];

            SCParentalControlsInfo pcInfo;

            BOOL pcInfoResult= SCGetParentalControl(&pcInfo);
            memset(myPin, 0, sizeof(myPin));
            utility::CharacterCode::UTF16ToANSI(myPin, mMyPin, SC_PARENTAL_PASSWORD_LENGTH);

            BOOL result = FALSE;
            if (pcInfoResult) {
                if (strncmp((char*)pcInfo.password, (char*)myPin, SC_PARENTAL_PASSWORD_LENGTH) == 0) {
                    result = TRUE;
                }
            }
            return result;
        }

        void ParentalDialog::set_textbox(const char* paneName, u32 msgId) {
            nw4r::lyt::TextBox* pane = nw4r::ut::DynamicCast<nw4r::lyt::TextBox*>(mpLayout->FindPaneByName(paneName));
            pane->SetString(System::getMessage(msgId));
        }

        void ParentalDialogEvent::onEvent(u32 compId, u32 event, void* data) {
            gui::PaneComponent* component = static_cast<gui::PaneComponent*>(mpManager->getComponent(compId));
            const char* paneName = component->getPane()->GetName();

            controller::Interface* con = reinterpret_cast<controller::Interface*>(data);

            switch (event) {
                // Pointer on button
                case ::gui::EventHandler::ON_POINT: {
                    mpInstance->start_point_event(paneName, con);
                    break;
                }
                // Pointer not on button anymore
                case ::gui::EventHandler::ON_LEFT: {
                    mpInstance->start_left_event(paneName);
                    break;
                }
                // Pointer click on button
                case ::gui::EventHandler::ON_TRIG: {
                    if (mpInstance->mState == ParentalDialog::STATE_NORMAL && con->downTrg(controller::BTN_INTERACT)) {
                        mpInstance->start_trig_event(paneName, con->getChannel());
                    }
                    break;
                }
            }
        }
    }
}
