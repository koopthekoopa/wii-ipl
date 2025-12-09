#include "iplSceneUI.h"

#include "scene/textWriter/iplTextWriter.h"
#include "scene/button/iplButton.h"
#include "scene/faceSelect/iplFaceSelect.h"
#include "scene/mailAddSel/iplMailAddressSelect.h"
#include "scene/board/iplBoard.h"

#include <RVLFaceLib.h>
#include <RVLFaceLibInternal.h>

#include "iplSystem.h"

namespace ipl {
    namespace scene {
        bool InputFormObserver::onNigaoeButton() {
            return mpInstance->onNigaoeButton();
        }

        void InputFormObserver::pointNigaoeButton() {
            mpInstance->pointNigaoeButton();
        }

        void InputFormObserver::leftNigaoeButton() {
            mpInstance->leftNigaoeButton();
        }

        void InputFormObserver::moveNigaoeButton() {
            mpInstance->moveNigaoeButton();
        }

        void nigaoeMakeIcon(nigaoe::Object* obj, void* work) {
            TextWriter* textWriter = static_cast<TextWriter*>(work);
            textWriter->setNigaoe(obj);
        }

        TextWriter::TextWriter(EGG::Heap* heap) :
        FaderSceneBase(heap),
        mState(STATE_NORMAL),
        mSelectedFaceId(-1),
        mpNigaoe(NULL),
        mbClosing(false),
        unk_0x7D(true),
        mNwc24ErrCountdown(0) {
            setSceneParentFlags(SCN_PARENT_FLAG_CANDRAW | SCN_PARENT_FLAG_CANCALC);
        }

        TextWriter::~TextWriter() {

        }

        void TextWriter::destroy() {
            getMemoManager()->setWCString(L"");
            delete mpNigaoe;
            delete mWCString;
        }

        void TextWriter::prepare() {
            mpBalloonFile = System::getNandManager()->readLayoutAsync(getSceneHeap(), "balloon.ash");
        }

        void TextWriter::create() {
            System::getFader()->fadeIn();

            System::getKeyboard()->setKeyboardType(0, keyboard::Manager::LETTER);

            // Load dictionary
            void* sysDict = System::getKeyboard()->getZiSystemDic();
            void* oemDict = System::getKeyboard()->getZiOemDic();
            getMemoInputForm()->setZiDictionary(oemDict, sysDict);

            mWCString = new wchar_t[WC_STRING_LENGTH];

            // Setup memo
            mpEventObserver = new InputFormObserver(this);
            getMemoInputForm()->setNigaoeEventObserver(mpEventObserver);
            getMemoInputForm()->setHeaderCaption(System::getMessage(MESG_TEXTWRITER_HEADER));
            getMemoInputForm()->setMiiName(System::getMessage(MESG_TEXTWRITER_ADD_MII));
            getMemoInputForm()->setTouchLetterCaption(System::getMessage(MESG_TEXTWRITER_LETTER_TEXT));
            getMemoManager()->setWCString(L"");
            getMemoInputForm()->setDefaultNigaoe();

            // Setup button class
            getButton()->setEventHandler(this);

            getMemoInputForm()->setCloseWithSend(false);

            // Start keyboard
            System::getKeyboard()->startMgr();
            System::getKeyboard()->deactivate();

            mSelectedFaceId = -1;
            mpNigaoe = NULL;
            mbClosing = false;
            unk_0x7D = true;
            mNwc24ErrCountdown = 0;

            // Text balloon for Mii face
            // What the fuck is up with these two floats
            f32 f0 = 30.0f;
            f32 f1 = 120.0f;
            mpNigaoeBalloon = new TextBalloon(getSceneHeap(), mpBalloonFile, "arc", "my_IplTopBalloon_a.brlyt", math::VEC3(0.0f, 0.0f, 0.0f), f1, f0);
            
            // Scroller
            mpScroller = new utility::YoungBScroller();
        }

        void TextWriter::draw() {
            if (System::canDrawScene()) {
                System::getKeyboard()->memoDraw();
                mpNigaoeBalloon->draw();
            }
        }

        SceneCommand TextWriter::calcFadein() {
            return getMemoInputForm()->isWholePaneInAnimation() ? SCENE_CONTINUE : SCENE_NEXT;
        }

        void TextWriter::initCalcNormal() {
            System::getKeyboard()->activate();
        }

        SceneCommand TextWriter::calcNormal() {
            // Face select loop
            if (mState == STATE_SEL_FACE) {
                FaceSelect* faceSelect = static_cast<FaceSelect*>(System::getScene(SCENE_FACE_SELECT));
                if (faceSelect == NULL && System::getReservedScene() == NULL) {
                    System::getKeyboard()->activate();

                    Button* button = getButton();
                    button->setEventHandler(this);

                    mState = STATE_NORMAL;
                }
            }

            // Creating face select
            if (mState == STATE_SEL_FACE) {
                FaceSelect* faceSelect = static_cast<FaceSelect*>(System::getScene(SCENE_FACE_SELECT));
                if (faceSelect != NULL) {
                    int selected = faceSelect->getSelectedFaceId();
                    if (selected != -1 && selected != mSelectedFaceId) {
                        mSelectedFaceId = selected;
                        System::getMiiManager()->create(System::getMem2App(), 76, 76, selected, nigaoeMakeIcon, this);
                    }
                }
                return SCENE_CONTINUE;
            }
            // Scroll to face
            else if (mState == STATE_TO_SEL_FACE) {
                f32 interp = textinput::util::hermiteInterporation(mToFace_Frame, 0.0f, mToFace_Dest, 0.0f, mToFace_Duration, 0.0f, 0.0f);
                getMemoInputForm()->setScroll(interp);
                if ((mToFace_Frame += 1.0f) > mToFace_Duration) {
                    mState = STATE_SEL_FACE;
                    createChildScene(SCENE_FACE_SELECT, this, NULL);
                    getButton()->setEventHandler(NULL);
                }
                mpNigaoeBalloon->calc();
                return SCENE_CONTINUE;
            }
            // Dialog window
            else if (mState == STATE_DIALOG) {
                if (System::getDialog()->getLastResult() == DialogWindow::RESULT_BUTTON) {
                    System::getKeyboard()->activate();
                    mState = STATE_NORMAL;
                }
                return SCENE_CONTINUE;
            }
            // Sending
            else if (mState == STATE_SEND) {
                openNWC24();
            }
            // Sending error
            if (mState == STATE_SEND_ERR) {
                if (System::getDialog()->getLastResult() == DialogWindow::RESULT_BUTTON) {
                    System::getKeyboard()->activate();

                    mState = STATE_NORMAL;

                    Button* button = getButton();
                    button->setEventHandler(this);
                }
                return SCENE_CONTINUE;
            }

            bool appearing;

            Button* button = getButton();
            appearing = false;

            keyboard::Manager::State state = *System::getKeyboard()->getState();

            switch (state.iplType) {
                case keyboard::Manager::STATE_APPEARING: {
                    getButton()->setEventHandler(NULL);
                    getButton()->animation(Button::IDANIM_DISAPPEAR_LEFT_AND_RIGHT_BUTTON);
                    appearing = true;
                    break;
                }
                case keyboard::Manager::STATE_DISAPPEARING: {
                    getButton()->animation(Button::IDANIM_APPEAR_LEFT_AND_RIGHT_BUTTON);
                    break;
                }
                case keyboard::Manager::STATE_HIDDEN_AFTER_DISAPPEAR: {
                    getButton()->enableBtn();

                    mpManager->init();
                    getButton()->setEventHandler(this);
                    break;
                }
                default: {
                    break;
                }
            }

            if (!appearing && mState != STATE_DONE && button != NULL) {
                if (button->isActive() && !mpScroller->isActive()) {
                    button->update();
                }
            }

            if (state.type == textinput::extend::memo::Manager::ST_Hidden) {
                if (getMemoInputForm()->getEditMode() == textinput::extend::memo::InputForm::EM_Disp) {
                    // Calculate balloon
                    mpNigaoeBalloon->calc();
                    if (mState == STATE_NORMAL) {
                        // Calculate scrolling
                        mpScroller->calc();
                        if (mpScroller->isActive()) {
                            if ((getMemoInputForm()->getScroll() < getMemoInputForm()->getScrollMax() && mpScroller->isDown())
                            || ( getMemoInputForm()->getScroll() > 0.0f                               && mpScroller->isUp())) {
                                // Memo scrolling
                                getMemoInputForm()->setAddScroll(mpScroller->getSpeed(), mpScroller->isUp(), mpScroller->isDown());

                                // Memo scrolling sound
                                if (mpScroller->isUp()) {
                                    if (getMemoInputForm()->getScroll() + mpScroller->getSpeed() < getMemoInputForm()->getScrollMax()) {
                                        mpScroller->addSoundFreq(mpScroller->getSpeed());
                                    }
                                    else {
                                        mpScroller->addSoundFreq((getMemoInputForm()->getScroll() + mpScroller->getSpeed()) - getMemoInputForm()->getScrollMax());
                                    }
                                }
                                else if (mpScroller->isDown()) {
                                    if (getMemoInputForm()->getScroll() + mpScroller->getSpeed() > 0.0f) {
                                        mpScroller->addSoundFreq(mpScroller->getSpeed());
                                    }
                                    else {
                                        mpScroller->addSoundFreq(getMemoInputForm()->getScroll() + mpScroller->getSpeed());
                                    }
                                }
                            }
                            else {
                                getMemoInputForm()->setAddScroll(0.0f, false, false);
                            }
                        }
                    }
                    else {
                        getMemoInputForm()->setAddScroll(0.0f, false, false);
                    }
                }
            }

            return mState == STATE_DONE ? SCENE_NEXT : SCENE_CONTINUE;
        }

        void TextWriter::initCalcFadeout() {
            getButton()->setEventHandler(NULL);

            static_cast<MailAddressSelect*>(System::getScene(SCENE_MAIL_ADDRESS_SELECT))->finishMemo(mbClosing);
            
            System::getKeyboard()->endMgr();
            
            mpNigaoeBalloon->calc();
        }

        SceneCommand TextWriter::calcFadeout() {
            mpNigaoeBalloon->calc();

            return getMemoInputForm()->isWholePaneInAnimation() ? SCENE_CONTINUE : SCENE_NEXT;
        }

        void TextWriter::pointNigaoeButton() {
            if (mSelectedFaceId == -1) {
                return;
            }
            mpNigaoeBalloon->fadein();
        }

        void TextWriter::leftNigaoeButton() {
            if (mSelectedFaceId == -1) {
                return;
            }
            mpNigaoeBalloon->fadeoutForce();
        }

        void TextWriter::moveNigaoeButton() {
            if (mSelectedFaceId != -1) {
                nw4r::lyt::Pane* nigaoePane = getMemoInputForm()->getNigaoePane();

                math::VEC3 vec(0.0f, 0.0f, 0.0f);
                MTXMultVec(nigaoePane->GetGlobalMtx(), vec, vec);

                f32 val = 50.0f;
                vec.y = vec.y + val;

                mpNigaoeBalloon->updatePos(vec);
            }
        }

        bool TextWriter::onNigaoeButton() {
            Button* button = getButton();

            if (mState != STATE_NORMAL) {
                return false;
            }

            if (!button->isActive() || button->getCurrentReservedCommandIndex() != 0) {
                return false;
            }

            // Check for Miis
            bool hasNigaoe = false;
            for (int i = 0; i < RFL_MAX_DATABASE; i++) {
                if (System::getMiiManager()->isAvalable(i)) {
                    hasNigaoe = true;
                }
            }

            if (!hasNigaoe) {
                // No Miis found

                System::getKeyboard()->deactivate();
                mState = STATE_DIALOG;

                System::getDialog()->callBtn1(MESG_TEXTWRITER_NO_MII, MESG_CMN_OK);

                return false;
            }
            else {
                // Miis found

                System::getKeyboard()->deactivate();
                mState = STATE_TO_SEL_FACE;

                mToFace_Frame = 0.0f;
                mToFace_Dest = getMemoInputForm()->getScroll();

                button->animation(Button::IDANIM_DISAPPEAR_LEFT_AND_RIGHT_BUTTON);
                button->reserveAnm(Button::IDANIM_APPEAR_LEFT_BUTTON);

                return true;
            }
        }

        void TextWriter::onEventDerived(u32 compId, u32 event, const controller::Interface* con) {
            if (mState != STATE_SEL_FACE) {
                if (getMemoManager()->getState()->getStateType() != textinput::extend::memo::Manager::ST_Appearing) {
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
                                    button->reserveAnm(Button::IDANIM_DISAPPEAR_LEFT_AND_RIGHT_BUTTON);
                                    button->reserveText(Button::TEXT_LEFT_BUTTON, MESG_ADDRESS_BACK);
                                    button->reserveAnm(Button::IDANIM_APPEAR_LEFT_BUTTON);
                                    button->setEventHandler(NULL);

                                    mbClosing = false;

                                    // Goodbye keyboard
                                    System::getKeyboard()->deactivate();
                                    System::getKeyboard()->sendRelease();

                                    mpNigaoeBalloon->fadeoutForce();

                                    mState = STATE_DONE;
                                }
                                else if (Button::cmpButtonName(paneName, Button::BTN_CREATE_R_BUTTON) == 0) {
                                    button->animation(Button::IDANIM_SELECT_CREATE_R);
                                    button->setEventHandler(NULL);

                                    mpNigaoeBalloon->fadeoutForce();

                                    openNWC24();

                                    System::getKeyboard()->deactivate();
                                }
                            }
                            break;
                        }
                    }
                }
            }
        }

        void TextWriter::onSend() {
            Button* button = getButton();

            snd::getSystem()->startSE("WIPL_SE_DECIDE");

            unk_0x7D = false;

            // Copy memo contents
            wmemcpy(mWCString, getMemoInputForm()->getSendString()->getWCString(), WC_STRING_LENGTH);

            // Get my user ID (as this is a memo)
            NWC24UserId myUserId;
            getMyUserID(&myUserId);
            if (sendMessageByNWC24(myUserId, mWCString) != 0) {
                OSReport("送信失敗\n"); // "Send failure"
            }

            closeNWC24();

            unk_0x7D = true;

            // Receive sent memo
            System::receiveImmediately();

            // Button animation
            button->reserveAnm(Button::IDANIM_DISAPPEAR_LEFT_AND_RIGHT_BUTTON);
            button->reserveText(Button::TEXT_LEFT_BUTTON, MESG_CMN_BACK);
            button->reserveAnm(Button::IDANIM_APPEAR_BOARD_BUTTON);
            button->setEventHandler(NULL);

            mbClosing = true;

            // Goodbye keyboard
            System::getKeyboard()->deactivate();
            System::getKeyboard()->sendRelease();

            getMemoInputForm()->setCloseWithSend(true);

            mState = STATE_DONE;
        }

        textinput::MemoManager* TextWriter::getMemoManager() {
            return System::getKeyboard()->memoMgr();
        }

        textinput::MemoInputForm* TextWriter::getMemoInputForm() {
            return System::getKeyboard()->memoFrm();
        }

        void TextWriter::openNWC24() {
            if (System::getNwc24Manager()->open()) {
                mState = STATE_NORMAL;
                onSend();
            }
            else {
                if (mState == STATE_NORMAL) {
                    mState = STATE_SEND;
                    mNwc24ErrCountdown = 0;
                }
                else if (mState == STATE_SEND) {
                    if ((mNwc24ErrCountdown += 1) >= 300) {
                        mState = STATE_SEND_ERR;
                        System::getDialog()->callBtn1(MESG_TEXTWRITER_SEND_ERROR, MESG_CMN_OK);
                    }
                }
            }
        }

        int TextWriter::sendMessageByNWC24(NWC24UserId userId, const wchar_t* wcString) {
            NWC24MsgObj msgObj;

            // Create message object
            if (!System::getNwc24Manager()->initMsgObj(&msgObj, NWC24_MSGTYPE_WII_MENU)) {
                OSReport("NWC24InitMsgObj err\n");
                return SEND_ERR_NWC24;
            }

            OSReport("[to]: %016llu\n", userId);

            // Set message to ID (in this case, my user ID)
            if (!System::getNwc24Manager()->setMsgToId(&msgObj, userId)) {
                OSReport("NWC24SetMsgToId err\n");
                return SEND_ERR_NWC24;
            }

            // Set memo contents
            if (*wcString != 0) {
                if (!System::getNwc24Manager()->setMsgText(&msgObj, (char*)wcString, wcslen(wcString) * sizeof(wchar_t), NWC24_UTF_16BE, NWC24_ENC_8BIT)) {
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
            if (!System::getNwc24Manager()->setMsgMBNoReply(&msgObj, true)) {
                OSReport("NWC24SetMsgMBNoReply err\n");
                return SEND_ERR_NWC24;
            }

            // Memo date
            utility::Date date = static_cast<Board*>(System::getScene(SCENE_BOARD))->getDate();
            if (!System::getNwc24Manager()->setMsgMBRegDate(&msgObj, date.year, date.month, date.day)) {
                OSReport("setMsgMBRegDate err\n");
                return SEND_ERR_NWC24;
            }

            // Send!
            if (!System::getNwc24Manager()->commitMsg(&msgObj)) {
                OSReport("NWC24CommitMsg err\n");
                return SEND_ERR_NWC24;
            }

            return SEND_ERR_SUCCESS;
        }

        void TextWriter::closeNWC24() {
            System::getNwc24Manager()->close();
        }

        void TextWriter::getMyUserID(NWC24UserId* myUserId) {
            NWC24GetMyUserId(myUserId);
        }

        void TextWriter::setNigaoe(nigaoe::Object* nigaoe) {
            if (mpNigaoe != NULL) {
                delete mpNigaoe;
            }
            mpNigaoe = nigaoe;

            // Set Mii face texture
            nw4r::lyt::Material* nigaoeMat = System::getKeyboard()->memoFrm()->getNigaoePaneMaterial();
            nigaoeMat->SetTexture(GX_TEXMAP0, mpNigaoe->getIconTexture());

            // Set Mii name
            wchar_t* faceName;
            int faceId = mpNigaoe->getIndex();
            if (faceId >= 0) {
                faceName = (wchar_t*)RFLiGetCharData(faceId)->name;
            }
            else {
                faceName = NULL;
            }
            mpNigaoeBalloon->init(faceName, RFL_NAME_LENGTH);

            // Adjust balloon position

            nw4r::lyt::Pane* nigaoePane = System::getKeyboard()->memoFrm()->getNigaoePane();
            math::VEC3 vec(0.0f, 0.0f, 0.0f);

            MTXMultVec(nigaoePane->GetGlobalMtx(), vec, vec);

            f32 val = 50.0f;
            vec.y = vec.y + val;

            mpNigaoeBalloon->setPos(vec, false, 0);
            mpNigaoeBalloon->fadein();
        }

        Button* TextWriter::getButton() {
            return static_cast<Button*>(System::getScene(SCENE_BUTTON));
        }
    }
}
