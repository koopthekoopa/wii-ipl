#include "iplSceneUI.h"

#include "scene/letterWriter/iplLetterWriter.h"
#include "scene/button/iplButton.h"
#include "scene/mailAddSel/iplMailAddressSelect.h"
#include "scene/address/iplAddress.h"
#include "scene/board/iplBoard.h"

#include <RVLFaceLib.h>
#include <RVLFaceLibInternal.h>

#include "iplSystem.h"
#include "system/iplPlayTimeLog.h"

namespace ipl {
    namespace scene {
        LetterWriter::LetterWriter(EGG::Heap* heap, int type) :
        TextWriter(heap),
        mbToFriend(false),
        mLetterState(LETTER_STATE_NORMAL),
        mLetterType((textinput::extend::letter::InputForm::Type)type),
        mpTextSubjectWork(NULL),
        mpCaptionString(NULL),
        mpCaptionAllocator(NULL),
        mNwc24ErrCountdown2(0) {
            setSceneParentFlags(SCN_PARENT_FLAG_CANDRAW | SCN_PARENT_FLAG_CANCALC); // already set by TextWriter base
        }

        LetterWriter::~LetterWriter() {

        }

        void LetterWriter::destroy() {
            getLetterManager()->setWCString(L"");

            delete mpTextSubjectWork;
            delete mpCaptionString;
            delete mpCaptionAllocator;

            delete mpNigaoe;
            delete mWCString;
        }

        void LetterWriter::create() {
            System::getKeyboard()->setKeyboardType(0, keyboard::Manager::PHOTO_LETTER);

            // Load dictionary
            void* sysDict = System::getKeyboard()->getZiSystemDic();
            void* oemDict = System::getKeyboard()->getZiOemDic();
            getLetterInputForm()->setZiDictionary(oemDict, sysDict);

            mWCString = new wchar_t[WC_STRING_LENGTH];

            // Setup letter
            mpEventObserver = new InputFormObserver(this);
            getLetterInputForm()->setNigaoeEventObserver(mpEventObserver);
            getLetterInputForm()->setHeaderCaption(L"");
            getLetterInputForm()->setMiiName(System::getMessage(MESG_TEXTWRITER_ADD_MII));
            getLetterInputForm()->setTouchLetterCaption(System::getMessage(MESG_LETTERWRITER_LETTER_TEXT));
            getLetterManager()->setWCString(L"");
            getLetterInputForm()->setDefaultNigaoe();

            // Setup button class
            getButton()->setEventHandler(this);

            getLetterInputForm()->setCloseWithSend(false);
            getLetterInputForm()->setPhotoDraw(false);
            getLetterInputForm()->setType(mLetterType);

            // Start keyboard
            System::getKeyboard()->startMgr();
            System::getKeyboard()->deactivate();

            mSelectedFaceId = -1;
            mpNigaoe = NULL;
            mbClosing = false;
            unk_0x7D = true;
            mNwc24ErrCountdown = 0;
            mpCaptionString = 0;

            mpCaptionAllocator = new EGG::Allocator(getSceneHeap(), 4);

            mpTextSubjectWork = new u8[mTextSubjectWorkSize];

            mpCaptionString = new textinput::tistring::StringBase(WC_STRING_LENGTH);
            mpCaptionString->create(mpCaptionAllocator);

            getLetterInputForm()->setCloseWithSend(false);
            mNwc24ErrCountdown2 = 0;

            // Text balloon for Mii face
            // What the fuck is up with these two floats
            mpNigaoeBalloon = new TextBalloon(getSceneHeap(), mpBalloonFile, "arc", "my_IplTopBalloon_a.brlyt", math::VEC3(0.0f, 0.0f, 0.0f), 120.0f, 30.0f);
            
            // Scroller
            mpScroller = new utility::YoungBScroller();

            getLetterInputForm()->setSendOutMessage(System::getMessage(MESG_LETTERWRITER_SENDING));
        }

        SceneCommand LetterWriter::calcFadein() {
            return TextWriter::calcFadein();
        }

        void LetterWriter::initCalcNormal() {
            // A mix of switch statements and if statements...
            switch (mLetterType) {
                case textinput::extend::letter::InputForm::T_Picture:
                case textinput::extend::letter::InputForm::T_AddressSel: {
                    if (mLetterType == textinput::extend::letter::InputForm::T_Picture) {
                        createChildScene(SCENE_ADDRESS, this, NULL, (void*)2);
                    }
                    else {
                        createChildScene(SCENE_ADDRESS, this, NULL, (void*)1);
                    }

                    mLetterState = LETTER_STATE_DISABLE_UI;

                    System::getKeyboard()->deactivate();

                    if (mLetterType == textinput::extend::letter::InputForm::T_Picture) {
                        Board* board = getBoard();

                        setPhoto(board->getPictureTexObj());

                        f32 width, height;
                        height = board->getPictureHeight();
                        width = board->getPictureWidth();
                        getLetterInputForm()->resizePhotoPane(width, height);
                        getLetterInputForm()->setPhotoDraw(true);
                    }
                    return;
                }
                default: {
                    if (mLetterType == textinput::extend::letter::InputForm::T_Reply) {
                        mNwc24ErrCountdown2 = 0;

                        System::getKeyboard()->deactivate();

                        mbToFriend = false;
                        mLetterState = LETTER_STATE_SEND;

                        TextWriter::initCalcNormal();
                    }
                    else {
                        Address* address = static_cast<Address*>(System::getScene(SCENE_ADDRESS));
                        memcpy(&mFriendInfo, &address->getFriendCache()->getInfo(address->getChosenFriendIndex()), sizeof(NWC24FriendInfo));

                        const wchar_t* caption = makeHeaderCaption((const wchar_t*)mFriendInfo.attr.name);
                        getLetterInputForm()->setHeaderCaption(caption);

                        mbToFriend = true;
                        mLetterState = LETTER_STATE_NORMAL;

                        TextWriter::initCalcNormal();
                    }
                }
            }
        }

        BOOL LetterWriter::getFriendInfo() {
            int result = getBoard()->getFriendInfo(&mFriendInfo);

            switch (result) {
                case Board::FRIEND_CODE_ERR_SUCCESS: {
                    mbToFriend = true;
                    mLetterState = LETTER_STATE_NORMAL;

                    System::getKeyboard()->activate();

                    const wchar_t* caption = makeHeaderCaption((const wchar_t*)mFriendInfo.attr.name);
                    getLetterInputForm()->setHeaderCaption(caption);

                    return TRUE;
                }
                case Board::FRIEND_CODE_ERR_NWC24: {
                    if ((mNwc24ErrCountdown2 += 1) > 300) {
                        mLetterState = LETTER_STATE_EXIT_ON_ERROR;
                        System::getDialog()->callBtn1(MESG_LETTERWRITER_NWC24_ERROR, MESG_CMN_OK);
                    }
                    break;
                }
                case Board::FRIEND_CODE_ERR_NULL: {
                    mLetterState = LETTER_STATE_EXIT_ON_ERROR;
                    System::getDialog()->callBtn1(MESG_LETTERWRITER_FRIEND_NULL, MESG_CMN_OK);
                    break;
                }
                default: {
                    break;
                }
            }

            return FALSE;
        }

        wchar_t* LetterWriter::makeHeaderCaption(const wchar_t* headerCaption) {
            mpCaptionString->clear();
            mpCaptionString->set(System::getMessage(MESG_LETTERWRITER_LETTER_HEADER));

            wchar_t* unk = wcsstr(mpCaptionString->getWCString(), L"xxxxxxxxxx");

            mpCaptionString->replace((unk - mpCaptionString->getWCString()), RFL_NAME_LENGTH, headerCaption);
            return mpCaptionString->getWCString();
        }

        SceneCommand LetterWriter::calcNormal() {
            const wchar_t* caption;

            switch (mLetterState) {
                case LETTER_STATE_SEND: {
                    System::getKeyboard()->deactivate();

                    getFriendInfo();

                    return SCENE_CONTINUE;
                }
                case LETTER_STATE_EXIT_ON_ERROR: {
                    if (System::getDialog()->getLastResult() == DialogWindow::RESULT_BUTTON) {
                        System::getKeyboard()->deactivate();
                        mLetterState = LETTER_STATE_NORMAL;

                        Button* button = getButton();

                        button->reserveAnm(Button::IDANIM_DISAPPEAR_LEFT_AND_RIGHT_BUTTON);
                        button->reserveText(Button::BTN_BBS_BOARD, MESG_CMN_BACK_ALT);
                        button->reserveText(Button::BTN_CH_SEL, MESG_LETTERWRITER_REPLY);

                        if (getBoard()->isOptOut()) {
                            button->reserveAnm(Button::IDANIM_OPTOUT_IN_ALT);
                        }
                        else {
                            button->reserveAnm(Button::IDANIM_APPEAR_ALL_BUTTONS);
                        }

                        button->setEventHandler(this);

                        mState = STATE_DONE;
                    }

                    return SCENE_CONTINUE;
                }
                case LETTER_STATE_DISABLE_UI: {
                    mLetterState = LETTER_STATE_ENABLE_UI;

                    System::getKeyboard()->deactivate();

                    getButton()->setEventHandler(NULL);

                    return SCENE_CONTINUE;
                }
                case LETTER_STATE_ENABLE_UI: {
                    if (System::getScene(SCENE_ADDRESS) == NULL && System::getReservedScene() == NULL) {
                        mLetterState = LETTER_STATE_NORMAL;

                        System::getKeyboard()->activate();

                        Button* button = getButton();
                        button->setEventHandler(this);

                        if (!mbToFriend) {
                            System::getKeyboard()->deactivate();
                            mState = STATE_DONE;
                        }
                        else {
                            caption = makeHeaderCaption((const wchar_t*)mFriendInfo.attr.name);
                            getLetterInputForm()->setHeaderCaption(caption);
                        }
                    }

                    return SCENE_CONTINUE;
                }
                case LETTER_STATE_NORMAL:
                default: {
                    break;
                }
            }

            return TextWriter::calcNormal();
        }

        void LetterWriter::initCalcFadeout() {
            getButton()->setEventHandler(NULL);

            switch (mLetterType) {
                case textinput::extend::letter::InputForm::T_AddressSel: {
                    static_cast<MailAddressSelect*>(System::getScene(SCENE_MAIL_ADDRESS_SELECT))->finishLetter(mbClosing);
                    break;
                }
                default: {
                    break;
                }
            }

            System::getKeyboard()->endMgr();
        }

        void LetterWriter::onEventDerived(u32 compId, u32 event, const controller::Interface* con) {
            if (mState != STATE_SEL_FACE) {
                if (getMemoManager()->getState()->getStateType() != textinput::extend::memo::Manager::ST_Appearing) {
                    if (mLetterState != LETTER_STATE_NORMAL) {
                        return;
                    }

                    gui::PaneComponent* component = static_cast<gui::PaneComponent*>(mpManager->getComponent(compId));
                    const char* paneName = component->getPane()->GetName();

                    switch (event) {
                        // Pointer click on button
                        case ::gui::EventHandler::ON_TRIG: {
                            if (con->downTrg(controller::BTN_INTERACT)) {
                                Button* button = getButton();

                                if (Button::cmpButtonName(paneName, Button::BTN_EXIT) == 0) {
                                    // Play sound
                                    snd::getSystem()->startSE("WIPL_SE_CANCEL");

                                    // Button animation and text
                                    button->animation(Button::IDANIM_SELECT_CALENDAR_EXIT);
                                    switch (mLetterType) {
                                        case textinput::extend::letter::InputForm::T_Picture: {
                                            button->reserveAnm(Button::IDANIM_DISAPPEAR_LEFT_AND_RIGHT_BUTTON);
                                            button->reserveText(Button::TEXT_LEFT_BUTTON, MESG_CMN_BACK_ALT);
                                            button->reserveText(Button::TEXT_RIGHT_BUTTON, MESG_LETTERWRITER_SEND);
                                            button->reserveAnm(Button::IDANIM_APPEAR_LEFT_AND_RIGHT_BUTTON);
                                            break;
                                        }
                                        case textinput::extend::letter::InputForm::T_Reply: {
                                            button->reserveAnm(Button::IDANIM_DISAPPEAR_LEFT_AND_RIGHT_BUTTON);
                                            button->reserveText(Button::TEXT_LEFT_BUTTON, MESG_CMN_BACK_ALT);
                                            button->reserveText(Button::TEXT_RIGHT_BUTTON, MESG_LETTERWRITER_REPLY);
                                            if (getBoard()->isOptOut()) {
                                                button->reserveAnm(Button::IDANIM_OPTOUT_IN_ALT);
                                            }
                                            else {
                                                button->reserveAnm(Button::IDANIM_APPEAR_ALL_BUTTONS);
                                            }
                                            break;
                                        }
                                        case textinput::extend::letter::InputForm::T_Address: {
                                            button->reserveAnm(Button::IDANIM_DISAPPEAR_LEFT_AND_RIGHT_BUTTON);
                                            button->reserveText(Button::TEXT_LEFT_BUTTON, MESG_ADDRESS_BACK);
                                            button->reserveText(Button::TEXT_RIGHT_BUTTON, MESG_ADDRESS_REGISTER);
                                            button->reserveAnm(Button::IDANIM_APPEAR_LEFT_AND_RIGHT_BUTTON);
                                            break;
                                        }
                                        case textinput::extend::letter::InputForm::T_AddressSel:
                                        default: {
                                            button->reserveAnm(Button::IDANIM_DISAPPEAR_LEFT_AND_RIGHT_BUTTON);
                                            button->reserveText(Button::TEXT_LEFT_BUTTON, MESG_ADDRESS_BACK);
                                            button->reserveAnm(Button::IDANIM_APPEAR_LEFT_BUTTON);
                                            break;
                                        }
                                    }
                                    button->setEventHandler(NULL);

                                    mbClosing = false;

                                    // Goodbye keyboard
                                    System::getKeyboard()->deactivate();
                                    System::getKeyboard()->sendRelease();

                                    mState = STATE_DONE;
                                }
                                else if (Button::cmpButtonName(paneName, Button::BTN_CREATE_R_BUTTON) == 0) {
                                    button->animation(Button::IDANIM_SELECT_CREATE_R);
                                    button->setEventHandler(NULL);

                                    System::getKeyboard()->deactivate();

                                    if (mLetterType != textinput::extend::letter::InputForm::T_Address) {
                                        openNWC24();
                                    }
                                    else {
                                        onSend();
                                    }
                                }
                            }
                            break;
                        }
                    }
                }
            }
        }

        SceneCommand LetterWriter::calcFadeout() {
            return TextWriter::calcFadeout();
        }

        void LetterWriter::onSend() {
            Button* button = getButton();

            snd::getSystem()->startSE("WIPL_SE_DECIDE");

            unk_0x7D = false;

            // Copy letter contents
            wmemcpy(mWCString, getMemoInputForm()->getSendString()->getWCString(), WC_STRING_LENGTH);

            // Get my user ID
            NWC24UserId myUserId;
            if (mbToFriend) {
                myUserId = mFriendInfo.addr.wiiId;
            }
            else {
                getMyUserID(&myUserId);
            }

            if (sendMessageByNWC24(myUserId, mWCString) != 0) {
                OSReport("送信失敗\n"); // "Send failure"
            }
            else {
                PlayTimeLog::sendMsgLog((wchar_t*)mFriendInfo.attr.name);
                getBoard()->reopen_log();
            }

            if (mLetterType != textinput::extend::letter::InputForm::T_Address) {
                closeNWC24();
            }

            unk_0x7D = true;

            // Button animation
            button->animation(Button::IDANIM_SELECT_CREATE_R);
            switch (mLetterType) {
                case textinput::extend::letter::InputForm::T_Picture: {
                    button->reserveAnm(Button::IDANIM_DISAPPEAR_LEFT_AND_RIGHT_BUTTON);
                    button->reserveText(Button::TEXT_LEFT_BUTTON, MESG_CMN_BACK_ALT);
                    button->reserveText(Button::TEXT_RIGHT_BUTTON, MESG_LETTERWRITER_SEND);
                    button->reserveAnm(Button::IDANIM_APPEAR_LEFT_AND_RIGHT_BUTTON);
                    break;
                }
                case textinput::extend::letter::InputForm::T_Reply: {
                    button->reserveAnm(Button::IDANIM_DISAPPEAR_LEFT_AND_RIGHT_BUTTON);
                    button->reserveText(Button::TEXT_LEFT_BUTTON, MESG_CMN_BACK_ALT);
                    button->reserveText(Button::TEXT_RIGHT_BUTTON, MESG_LETTERWRITER_REPLY);
                    if (getBoard()->isOptOut()) {
                        button->reserveAnm(Button::IDANIM_OPTOUT_IN_ALT);
                    }
                    else {
                        button->reserveAnm(Button::IDANIM_APPEAR_ALL_BUTTONS);
                    }
                    break;
                }
                case textinput::extend::letter::InputForm::T_Address: {
                    button->reserveAnm(Button::IDANIM_DISAPPEAR_LEFT_AND_RIGHT_BUTTON);
                    button->reserveText(Button::TEXT_LEFT_BUTTON, MESG_ADDRESS_BACK);
                    button->reserveText(Button::TEXT_RIGHT_BUTTON, MESG_ADDRESS_REGISTER);
                    button->reserveAnm(Button::IDANIM_APPEAR_LEFT_AND_RIGHT_BUTTON);
                    break;
                }
                case textinput::extend::letter::InputForm::T_AddressSel:
                default: {
                    button->reserveAnm(Button::IDANIM_DISAPPEAR_LEFT_AND_RIGHT_BUTTON);
                    button->reserveText(Button::TEXT_LEFT_BUTTON, MESG_ADDRESS_BACK);
                    button->reserveAnm(Button::IDANIM_APPEAR_BOARD_BUTTON);
                    break;
                }
            }
            button->setEventHandler(NULL);

            mbClosing = true;

            // Goodbye keyboard
            System::getKeyboard()->deactivate();
            System::getKeyboard()->sendRelease();

            getMemoInputForm()->setCloseWithSend(true);

            mState = STATE_DONE;
        }

        int LetterWriter::sendMessageByNWC24(NWC24UserId userId, const wchar_t* wcString) {
            if (mbToFriend && mFriendInfo.attr.type == NWC24_FRIENDTYPE_EMAIL) {
                return sendToPC(userId, wcString);
            }
            else {
                return sendToWii(userId, wcString);
            }
        }

        int LetterWriter::sendToWii(NWC24UserId userId, const wchar_t* wcString) {
            NWC24MsgObj msgObj;

            // Create message object
            if (!System::getNwc24Manager()->initMsgObj(&msgObj, NWC24_MSGTYPE_WII_MENU)) {
                OSReport("NWC24InitMsgObj err\n");
                return SEND_ERR_NWC24;
            }

            // Set message to ID (in this case, my user ID)
            if (!System::getNwc24Manager()->setMsgToId(&msgObj, userId)) {
                OSReport("NWC24SetMsgToId err\n");
                return SEND_ERR_NWC24;
            }

            OSReport("[to]: %016llu\n", userId);

            // Set letter contents
            if (*wcString != 0) {
                if (!System::getNwc24Manager()->setMsgText(&msgObj, (char*)wcString, wcslen(wcString) * sizeof(wchar_t), NWC24_UTF_16BE, NWC24_ENC_BASE64)) {
                    OSReport("NWC24SetMsgText err\n");
                    return SEND_ERR_NWC24;
                }
            }
            else {
                wchar_t blank[2];
                blank[0] = L' ';
                blank[1] = 0;

                if (!System::getNwc24Manager()->setMsgText(&msgObj, (char*)blank, wcslen(blank) * sizeof(wchar_t), NWC24_UTF_16BE, NWC24_ENC_BASE64)) {
                    OSReport("NWC24SetMsgText err\n");
                    return SEND_ERR_NWC24;
                }
            }

            // Set Mii (if any)
            if (mSelectedFaceId != -1) {
                RFLCharData data;
                RFLErrcode err = RFLiSetOfficial2NWC24Msg(&msgObj, &data, mSelectedFaceId);
                if (err != RFLErrcode_Success) {
                    OSReport("RFLSetOfficial2NWC24Msg err = %d\n", err);
                    return SEND_ERR_RFL;
                }
            }

            // Do not reply
            if (!System::getNwc24Manager()->setMsgMBNoReply(&msgObj, false)) {
                OSReport("NWC24SetMsgMBNoReply err\n");
                return SEND_ERR_NWC24;
            }
            
            if (!System::getNwc24Manager()->setLedPattern(&msgObj)) {
                OSReport("setMsgCommand err\n");
                return SEND_ERR_NWC24;
            }

            if (mLetterType == textinput::extend::letter::InputForm::T_Picture) {
                Board* board = getBoard();
                u32 picLength = 0;
                const void* picData = board->getPicture(&picLength);
                if (NWC24SetMsgAttached(&msgObj, picData, picLength, NWC24_X_WII_PICTURE) != NWC24_OK) {
                    OSReport("NWC24SetMsgAttached err\n");
                    return SEND_ERR_NWC24;
                }
            }

            // Send!
            if (!System::getNwc24Manager()->commitMsg(&msgObj)) {
                OSReport("NWC24CommitMsg err\n");
                return SEND_ERR_NWC24;
            }

            return SEND_ERR_SUCCESS;
        }

        int LetterWriter::sendToPC(NWC24UserId userId, const wchar_t* wcString) {
            NWC24MsgObj msgObj;

            // Create message object
            if (!System::getNwc24Manager()->initMsgObj(&msgObj, NWC24_MSGTYPE_PUBLIC)) {
                OSReport("NWC24InitMsgObj err\n");
                return SEND_ERR_NWC24;
            }

            // Set message to ID (in this case, my user ID)
            if (!System::getNwc24Manager()->setMsgToAddr(&msgObj, mFriendInfo.addr.mailAddr, strlen(mFriendInfo.addr.mailAddr))) {
                OSReport("NWC24SetMsgToAddr err\n");
                return SEND_ERR_NWC24;
            }

            OSReport("[LetterWriter]: send to %s\n", mFriendInfo.addr.mailAddr);

            // Set letter contents
            const wchar_t* subject = System::getMessage(MESG_LETTERWRITER_EMAIL_SUBJECT);
            if (!System::getNwc24Manager()->setMsgSubjectAndTextPublic(&msgObj, (u16*)subject, wcslen(subject), (u16*)wcString, wcslen(wcString), mpTextSubjectWork, mTextSubjectWorkSize)) {
                OSReport("setMsgSubjectAndTextPublic err\n");
                return SEND_ERR_NWC24;
            }

            // Send!
            if (!System::getNwc24Manager()->commitMsg(&msgObj)) {
                OSReport("NWC24CommitMsg err\n");
                return SEND_ERR_NWC24;
            }

            return SEND_ERR_SUCCESS;
        }

        void LetterWriter::setPhoto(const GXTexObj& texObj) {
            getLetterInputForm()->getPhotoPaneMaterial()->SetTexture(GX_TEXMAP0, texObj);
        }

        textinput::MemoManager* LetterWriter::getLetterManager() {
            return System::getKeyboard()->memoMgr();
        }

        textinput::LetterInputForm* LetterWriter::getLetterInputForm() {
            return (textinput::LetterInputForm*)getMemoInputForm();
        }

        Board* LetterWriter::getBoard() {
            return static_cast<Board*>(System::getScene(SCENE_BOARD));
        }
    }
}
