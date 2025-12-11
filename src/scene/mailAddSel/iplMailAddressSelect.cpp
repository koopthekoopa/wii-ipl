#include "iplSceneUI.h"

#include "scene/mailAddSel/iplMailAddressSelect.h"
#include "scene/button/iplButton.h"
#include "scene/parentalDialog/iplParentalDialog.h"

#include "scene/textWriter/iplTextWriter.h"
#include "scene/letterWriter/iplLetterWriter.h"

#include "scene/setting/iplNCDSetting.h"

#include "iplSystem.h"

#pragma sym on

namespace ipl {
    namespace scene {
        inline Button* getButton() {
            return static_cast<Button*>(System::getScene(SCENE_BUTTON));
        }

        const char* MailAddressSelect::mscButtonName[MailAddressSelect::BTN_MAX] = {
            "B_MailIn",
            "B_LetterIn",
            "B_AdressIn",
        };

        MailAddressSelect::MailAddressSelect(EGG::Heap* heap) :
        FaderSceneBase(heap),
        ButtonEventHandlerBase(),
        mpLayout(NULL),
        mpLayoutFile(NULL),
        mpEvent(NULL),
        mpGui(NULL),
        mState(STATE_NORMAL),
        mbParentalBypass(false) {
            setSceneParentFlags(SCN_PARENTFLAG_CALC | SCN_PARENTFLAG_DRAW);

            for (int i = 0; i < BTN_MAX; i++) {
                mbHovered[i] = FALSE;
            }
        }

        MailAddressSelect::~MailAddressSelect() {
            
        }

        void MailAddressSelect::prepare() {
            mpLayoutFile = System::getNandManager()->readLayoutAsync(getSceneHeap(), "mlAdSel.ash");
        }

        void MailAddressSelect::create() {
            // Create layout
            mpLayout = new layout::Object(getSceneHeap(), mpLayoutFile, "arc", "my_Mail_a.brlyt");

            // Bind animations
            mpLayout->bindToGroup("my_Mail_a_SelectIn.brlan",        "G_SelectInOut",  false);
            mpLayout->bindToGroup("my_Mail_a_SelectOut.brlan",       "G_SelectInOut",  false, false);
            mpLayout->bindToGroup("my_Mail_a_MailFoucusIn.brlan",    "G_MailFoucus",   false, false);
            mpLayout->bindToGroup("my_Mail_a_MailFoucusOut.brlan",   "G_MailFoucus",   false, false);
            mpLayout->bindToGroup("my_Mail_a_MailIn.brlan",          "G_AdressInOut",  false, false);
            mpLayout->bindToGroup("my_Mail_a_MailOut.brlan",         "G_AdressInOut",  false, false);
            mpLayout->bindToGroup("my_Mail_a_LetterFoucusIn.brlan",  "G_LetterFoucus", false, false);
            mpLayout->bindToGroup("my_Mail_a_LetterFoucusOut.brlan", "G_LetterFoucus", false, false);
            mpLayout->bindToGroup("my_Mail_a_LetterIn.brlan",        "G_AdressInOut",  false, false);
            mpLayout->bindToGroup("my_Mail_a_LetterOut.brlan",       "G_AdressInOut",  false, false);
            mpLayout->bindToGroup("my_Mail_a_AdressFoucusIn.brlan",  "G_AdressFoucus", false, false);
            mpLayout->bindToGroup("my_Mail_a_AdressFoucusOut.brlan", "G_AdressFoucus", false, false);
            mpLayout->bindToGroup("my_Mail_a_AdressIn.brlan",        "G_AdressInOut",  false, false);
            mpLayout->bindToGroup("my_Mail_a_AdressOut.brlan",       "G_AdressInOut",  false, false);
            mpLayout->finishBinding();
            mpLayout->getAnim(ANIM_FADE_IN)->play();

            // Create button event
            mpEvent = new MailAddressEvent(this);

            // Create interface
            mpGui = new gui::PaneManager(mpEvent, mpLayout->getDrawInfo(), NULL, NULL);
            mpGui->createLayoutScene(*mpLayout->getLayout());
            mpGui->setAllComponentTriggerTarget(false);

            // Set pane buttons
            for (int i = 0; i < BTN_MAX; i++) {
                mpGui->setTriggerTarget(mpLayout->FindPaneByName(mscButtonName[i]), true);
            }

            set_textbox("T_Mail", MESG_TEXTWRITER_HEADER);
            set_textbox("T_Adress", MESG_ADDRESS_TITLE);

#ifdef KOREAN_BUILD
            if (SCGetAspectRatio() == SC_ASPECT_RATIO_16x9) {
                nw4r::lyt::Size size;

                size = nw4r::ut::DynamicCast<nw4r::lyt::TextBox*>(mpLayout->FindPaneByName("T_Mail"))->GetFontSize();
                size.width += 1.0f;
                nw4r::ut::DynamicCast<nw4r::lyt::TextBox*>(mpLayout->FindPaneByName("T_Mail"))->SetFontSize(size);
            }
#endif // KOREAN_BUILD

            // Pause NWC24 Receive
            System::stopReceiveSchedule();
        }

        void MailAddressSelect::calcCommon() {
            mpLayout->calc();
            mpGui->calc();
        }

        FaderSceneCommand MailAddressSelect::calcFadein() {
            FaderSceneCommand result = FADER_SCN_CONTINUE;

            bool res = false;
            if (!mpLayout->getAnim(ANIM_FADE_IN)->isPlaying()) {
                if (getButton()->isActive()) {
                    res = true;
                }
            }

            if (res) {
                if (!getButton()->hasReservedAnim()) {
                    result = FADER_SCN_NEXT;
                }
            }

            return result;
        }

        void MailAddressSelect::initCalcNormal() {
            getButton()->setEventHandler(this);
        }

        FaderSceneCommand MailAddressSelect::calcNormal() {
            Button* button = getButton();

            switch (mState) {
                case STATE_NORMAL: {
                    if (button != NULL) {
                        if (button->isActive() && !button->hasReservedAnim()) {
                            button->update();
                        }
                    }

                    if (mState == STATE_NORMAL) {
                        if (button->isActive() && !button->hasReservedAnim()) {
                            mpGui->update();
                        }
                    }
                    break;
                }
                case STATE_DISABLE_SCENE: {
                    reset_gui();
                    break;
                }
                case STATE_CLOSING: {
                    if (getChild() == NULL) {
                        mState = STATE_DONE;
                    }
                    break;
                }
                case STATE_WAIT_FOR_ZOOM_OUT: {
                    if (!mpLayout->isPlaying(ANIM_BTN_MAIL_ZOOM_OUT)
                    && !mpLayout->isPlaying(ANIM_BTN_LETTER_ZOOM_OUT)
                    && !mpLayout->isPlaying(ANIM_BTN_ADDRESS_ZOOM_OUT)) {
                        button->setEventHandler(this);

                        mState = STATE_NORMAL;
                    }
                    break;
                }
                case STATE_NO_NETWORK_DIALOG: {
                    switch (System::getDialog()->getLastResult()) {
                        case DialogWindow::RESULT_LEFT_BUTTON: {
                            mState = STATE_NORMAL;
                            break;
                        }
                        case DialogWindow::RESULT_RIGHT_BUTTON: {
                            SCParentalControlsInfo pcInfo;
                            if (SCGetParentalControl(&pcInfo) && (pcInfo.enable & SC_PARENTAL_FLAG_ENABLED)) {
                                getButton()->setEventHandler(NULL);
                                getButton()->animation(Button::IDANIM_DISAPPEAR_LEFT_BUTTON);

                                createChildScene(SCENE_PARENTAL_DIALOG, this, NULL, (void*)TRUE);

                                mbParentalBypass = false;
                                mState = STATE_PARENTAL_DIALOG;
                            }
                            else {
                                System::getFader()->fadeOut();

                                reserveAllSceneDestruction(SCENE_SETTING, (void*)1);

                                mState = STATE_DONE;
                            }
                            break;
                        }
                        default: {
                            break;
                        }
                    }
                    break;
                }
                case STATE_PARENTAL_DIALOG: {
                    ParentalDialog* parentalDlg = static_cast<ParentalDialog*>(System::getScene(SCENE_PARENTAL_DIALOG));
                    if (parentalDlg != NULL) {
                        switch (parentalDlg->getResult()) {
                            case ParentalDialog::RESULT_SUCCESS: {
                                mbParentalBypass = true;
                                mState = STATE_PARENTAL_CHECK;
                                break;
                            }
                            case ParentalDialog::RESULT_OVER_ATTEMPTS:
                            case ParentalDialog::RESULT_CANCELLED: {
                                mbParentalBypass = false;
                                mState = STATE_PARENTAL_CHECK;
                                break;
                            }
                            default: {
                                break;
                            }
                        }
                    }
                    break;
                }
                case STATE_PARENTAL_CHECK: {
                    if (getChild() == NULL) {
                        if (mbParentalBypass) {
                            System::getFader()->fadeOut();

                            reserveAllSceneDestruction(SCENE_SETTING, (void*)1);

                            mState = STATE_DONE;
                        }
                        else {
                            getButton()->animation(Button::IDANIM_APPEAR_LEFT_BUTTON);
                            getButton()->setEventHandler(this);

                            mState = STATE_NORMAL;
                        }
                    }
                    break;
                }
                case STATE_DIALOG: {
                    if (System::getDialog()->getLastResult() != DialogWindow::RESULT_NONE) {
                        mState = STATE_NORMAL;
                    }
                    break;
                }
                case STATE_NO_WC24_DIALOG: {
                    switch (System::getDialog()->getLastResult()) {
                        case DialogWindow::RESULT_LEFT_BUTTON: {
                            mState = STATE_NORMAL;
                            break;
                        }
                        case DialogWindow::RESULT_RIGHT_BUTTON: {
                            System::getFader()->fadeOut();

                            reserveAllSceneDestruction(SCENE_SETTING, (void*)4);

                            mState = STATE_DONE;
                            break;
                        }
                        default: {
                            break;
                        }
                    }
                    break;
                }
                case STATE_CHECK_NETWORK: {
                    if (check_network()) {
                        button->animation(Button::IDANIM_DISAPPEAR_LEFT_BUTTON);
                        button->reserveText(Button::BTN_CH_SEL, MESG_LETTERWRITER_POST);
                        button->reserveAnm(Button::IDANIM_APPEAR_LEFT_BUTTON);

                        createChildScene(SCENE_LETTER_WRITER, this, NULL, (void*)LetterWriter::MAIL_ADDRESS_SEL);

                        button->setEventHandler(NULL);

                        mpLayout->getAnim(ANIM_BTN_LETTER_ZOOM_IN)->play();

                        mState = STATE_DISABLE_SCENE;
                    }
                    else {
                        if ((mNwc24ErrCountdown += 1) > 300) {
                            mNwc24ErrCountdown = 0;
                            System::getDialog()->callBtn1(MESG_ERROR_NWC24_FATAL, MESG_CMN_OK);
                            mState = STATE_DIALOG;
                        }
                    }
                    break;
                }
            }

            return mState == STATE_DONE ? FADER_SCN_NEXT : FADER_SCN_CONTINUE;
        }

        void MailAddressSelect::initCalcFadeout() {
            getButton()->setEventHandler(NULL);
            
            if (System::getFader()->getStatus() == EGG::Fader::PREPARE_OUT) {
                mpLayout->getAnim(ANIM_FADE_OUT)->play();
            }
        }

        FaderSceneCommand MailAddressSelect::calcFadeout() {
            if (System::getFader()->getStatus() == EGG::Fader::PREPARE_OUT) {
                return !mpLayout->getAnim(ANIM_FADE_OUT)->isPlaying() ? FADER_SCN_NEXT : FADER_SCN_CONTINUE;
            }
            else {
                return System::getFader()->getStatus() == EGG::Fader::PREPARE_IN ? FADER_SCN_NEXT : FADER_SCN_CONTINUE;
            }
        }

        void MailAddressSelect::destroy() {
            // Resume NWC24 Receive
            System::startReceiveSchedule();
        }

        void MailAddressSelect::draw() {
            if (System::canDrawScene()) {
                utility::Graphics::setOrtho();
                mpLayout->draw();
            }
        }

        void MailAddressSelect::start_point_event(const char* paneName, controller::Interface* con) {
            int btnNo = get_button_no(paneName);
            if (btnNo != -1) {
                if (mbHovered[btnNo] == FALSE) {
                    snd::getSystem()->startSE("WIPL_SE_BT_TARGETTING");
                    if (con != NULL) {
                        con->rumble();
                    }
                    start_focusin_anm(btnNo);
                }
                mbHovered[btnNo]++;
            }
        }

        void MailAddressSelect::start_left_event(const char* paneName) {
            int btnNo = get_button_no(paneName);
            if (btnNo != -1) {
                if (mbHovered[btnNo] == TRUE) {
                    start_focusout_anm(btnNo);
                }
                mbHovered[btnNo]--;
            }
        }

        void MailAddressSelect::start_trig_event(const char* paneName) {
            int btnNo = get_button_no(paneName);
            int animId = -1;

            Button* button = getButton();

            if (mState == STATE_NORMAL) {
                switch (btnNo) {
                    case BTN_MAIL: {
                        animId = ANIM_BTN_MAIL_ZOOM_IN;

                        button->reserveAnm(Button::IDANIM_DISAPPEAR_LEFT_BUTTON);
                        button->reserveText(Button::BTN_BBS_BOARD, MESG_CMN_BACK_ALT_2);
                        button->reserveText(Button::BTN_CH_SEL, MESG_TEXTWRITER_POST);
                        button->reserveAnm(Button::IDANIM_APPEAR_LEFT_AND_RIGHT_BUTTON);

                        snd::getSystem()->startSE("WIPL_SE_DECIDE");

                        createChildScene(SCENE_TEXT_WRITER, this, NULL);
                        break;
                    }
                    case BTN_LETTER: {
                        snd::getSystem()->startSE("WIPL_SE_DECIDE");

                        mNwc24ErrCountdown = 0;
                        mState = STATE_CHECK_NETWORK;
                        break;
                    }
                    case BTN_ADDRESS: {
                        button->animation(Button::IDANIM_DISAPPEAR_LEFT_BUTTON);
                        button->reserveText(Button::BTN_CH_SEL, MESG_ADDRESS_REGISTER);
                        button->reserveAnm(Button::IDANIM_APPEAR_LEFT_AND_RIGHT_BUTTON);

                        animId = ANIM_BTN_ADDRESS_ZOOM_IN;

                        snd::getSystem()->startSE("WIPL_SE_DECIDE");

                        createChildScene(SCENE_ADDRESS, this, NULL);
                        break;
                    }
                }

                if (animId != -1) {
                    button->setEventHandler(NULL);

                    mpLayout->getAnim(animId)->play();

                    mState = STATE_DISABLE_SCENE;
                }
            }
        }

        void MailAddressSelect::start_focusin_anm(int btnNo) {
            int animId = -1;

            switch (btnNo) {
                case BTN_MAIL: {
                    animId = ANIM_BTN_MAIL_FOCUS_IN;
                    break;
                }
                case BTN_LETTER: {
                    animId = ANIM_BTN_LETTER_FOCUS_IN;
                    break;
                }
                case BTN_ADDRESS: {
                    animId = ANIM_BTN_ADDRESS_FOCUS_IN;
                    break;
                }
            }

            if (animId != -1) {
                mpLayout->getAnim(animId)->play();
            }
        }

        void MailAddressSelect::start_focusout_anm(int btnNo) {
            int animId = -1;

            switch (btnNo) {
                case BTN_MAIL: {
                    animId = ANIM_BTN_MAIL_FOCUS_OUT;
                    break;
                }
                case BTN_LETTER: {
                    animId = ANIM_BTN_LETTER_FOCUS_OUT;
                    break;
                }
                case BTN_ADDRESS: {
                    animId = ANIM_BTN_ADDRESS_FOCUS_OUT;
                    break;
                }
            }

            if (animId != -1) {
                mpLayout->getAnim(animId)->play();
            }
        }

        int MailAddressSelect::get_button_no(const char* paneName) {
            int result = -1;
            for (int i = 0; i < BTN_MAX; i++) {
                if (strcmp(mscButtonName[i], paneName) == 0) {
                    result = i;
                    break;
                }
            }
            return result;
        }

        void MailAddressSelect::finishMemo(bool closing) {
            if (closing) {
                mState = STATE_CLOSING;
            }
            else {
                mpLayout->getAnim(ANIM_BTN_MAIL_ZOOM_OUT)->play();
                mState = STATE_WAIT_FOR_ZOOM_OUT;
            }
        }

        void MailAddressSelect::finishLetter(bool closing) {
            if (closing) {
                mState = STATE_CLOSING;
            }
            else {
                mpLayout->getAnim(ANIM_BTN_LETTER_ZOOM_OUT)->play();
                mState = STATE_WAIT_FOR_ZOOM_OUT;
            }
        }

        void MailAddressSelect::finishAddress() {
            mpLayout->getAnim(ANIM_BTN_ADDRESS_ZOOM_OUT)->play();
            mState = STATE_WAIT_FOR_ZOOM_OUT;
        }

        void MailAddressSelect::set_textbox(const char* paneName, u32 msgId) {
            nw4r::lyt::TextBox* pane = nw4r::ut::DynamicCast<nw4r::lyt::TextBox*>(mpLayout->FindPaneByName(paneName));
            pane->SetString(System::getMessage(msgId));
        }

        void MailAddressSelect::set_err_msg(wchar_t* outErrMsg, u32 outErrMsgLen, u32 errMsgId, s32 nwc24Err) {
            memset(outErrMsg, 0, outErrMsgLen * sizeof(wchar_t));

            wcsncat(outErrMsg, System::getMessage(MESG_ERROR_CODE), outErrMsgLen - wcslen(outErrMsg));

            wchar_t nwc24ErrStr[32];
            memset(nwc24ErrStr, 0, sizeof(nwc24ErrStr));
            swprintf(nwc24ErrStr, sizeof(nwc24ErrStr)/sizeof(wchar_t), L"%06d\n", nwc24Err);
            wcsncat(outErrMsg, nwc24ErrStr, outErrMsgLen - wcslen(outErrMsg));

            wcsncat(outErrMsg, System::getMessage(errMsgId), outErrMsgLen - wcslen(outErrMsg));
        }

        BOOL MailAddressSelect::check_network() {
            BOOL result = FALSE;

            // NCD Check
            if (!ncd::NCDSetting::getConnectEnableFlag()) {
                System::getDialog()->callBtn2(MESG_NETWORK_NO_CONFIG, MESG_NETWORK_SETTINGS_BTN, MESG_CMN_QUIT);
                mState = STATE_NO_NETWORK_DIALOG;
                goto exit;
            }

            // WC24 Check
            if (!(SCGetWCFlags() & SC_WC_FLAGS_ENABLED)) {
                System::getDialog()->callBtn2(MESG_NETWORK_NO_WC24_CONFIG, MESG_NETWORK_SETTINGS_BTN, MESG_CMN_QUIT);
                mState = STATE_NO_WC24_DIALOG;
                goto exit;
            }

            // Parental check
            if (is_parental_restriction()) {
                System::getDialog()->callBtn1(MESG_NETWORK_PARENTAL_RESTRICT, MESG_CMN_OK);
                mState = STATE_DIALOG;
                goto exit;
            }

            if (!System::getNwc24Manager()->open()) {
                goto exit;
            }

            NWC24Err checkErr = System::getNwc24Manager()->check(1);
            s32 errorCode = System::getNwc24Manager()->getErrCode();

            wchar_t errStr[256] = L"";

            // WC24 library check
            switch (checkErr) {
                case NWC24_ERR_NETWORK: {
#ifndef VERSION_43E
                    set_err_msg(errStr, sizeof(errStr)/sizeof(wchar_t), MESG_ERROR_NWC24_NETWORK, errorCode);
#else
                    set_err_msg(errStr, sizeof(errStr)/sizeof(wchar_t), MESG_ERROR_NWC24_NETWORK_ALT, errorCode);
#endif // VERSION_43E

                    System::getDialog()->callBtn1(errStr, MESG_CMN_OK);
                    mState = STATE_DIALOG;
                    break;
                }
                case NWC24_ERR_FULL:
                case NWC24_ERR_SERVER: {
                    set_err_msg(errStr, sizeof(errStr)/sizeof(wchar_t), MESG_ERROR_NWC24_SERVER, errorCode);

                    System::getDialog()->callBtn1(errStr, MESG_CMN_OK);
                    mState = STATE_DIALOG;
                    break;
                }
                default: {
                    result = TRUE;
                    break;
                }
            }

            System::getNwc24Manager()->close();
exit:
            return result;
        }

        bool MailAddressSelect::is_parental_restriction() const {
            SCParentalControlsInfo pcInfo;
            BOOL pcResult = SCGetParentalControl(&pcInfo);

            bool result = false;
            if (pcResult && (pcInfo.enable & SC_PARENTAL_FLAG_ENABLED)) {
                result = true;
            }

            bool result2 = false;
            if (result && (SCGetNetContentRestrictions() & SC_NET_RESTRICTIONS_MSG_BOARD)) {
                result2 = true;
            }

            return result2;
        }

        void MailAddressSelect::onEventDerived(u32 compId, u32 event, const controller::Interface* con) {
            gui::PaneComponent* component = static_cast<gui::PaneComponent*>(mpManager->getComponent(compId));
            const char* paneName = component->getPane()->GetName();

            switch (event) {
                // Pointer click on button
                case ::gui::EventHandler::ON_TRIG: {
                    if (con->downTrg(controller::BTN_INTERACT)) {
                        Button* button = static_cast<Button*>(System::getScene(SCENE_BUTTON));

                        if (Button::cmpButtonName(paneName, Button::BTN_EXIT) == 0) {
                            // Button scene animation
                            button->animation(Button::IDANIM_SELECT_CALENDAR_EXIT);
                            button->reserveAnm(Button::IDANIM_DISAPPEAR_LEFT_BUTTON);
                            button->reserveAnm(Button::IDANIM_APPEAR_BOARD_BUTTON);
                            button->setEventHandler(NULL);

                            mState = STATE_DONE;

                            snd::getSystem()->startSE("WIPL_SE_CANCEL");
                        }
                    }
                    break;
                }
            }
        }

        void MailAddressSelect::reset_gui() {
            mpGui->init();
            for (int i = 0; i < BTN_MAX; i++) {
                mbHovered[i] = FALSE;
            }
        }

        void MailAddressEvent::onEvent(u32 compId, u32 event, void* data) {
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
                    if (con->downTrg(controller::BTN_INTERACT)) {
                        mpInstance->start_trig_event(paneName);
                    }
                    break;
                }
            }
        }
    }
}
