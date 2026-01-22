#include "scene/address/iplAddressAddSel.h"

#include "iplSceneUI.h"

#include "scene/address/iplAddress.h"
#include "scene/board/iplBoard.h"

#include "iplSystem.h"
#include "iplSound.h"

namespace ipl {
    namespace scene {
        const char* AddressAddSel::mscButtonName[AddressAddSel::BTN_MAX] = {
            "B_btn_00",
            "B_btn_01"
        };

        AddressAddSel::AddressAddSel(EGG::Heap* heap) :
        FaderSceneBase(heap),
        mState(STATE_NORMAL),
        mpLayout(NULL),
        mpEvent(NULL),
        mpGui(NULL) {}

        void AddressAddSel::create() {
            nand::LayoutFile* layoutFile = static_cast<Board*>(System::getScene(SCENE_BOARD))->getLayoutFile();

            // Layout init
            mpLayout = new layout::Object(getSceneHeap(), layoutFile, "arc", "th_Adress_d.brlyt");

            // Bind animations
            mpLayout->bindToGroup("th_Adress_d_btn_strt.brlan", "G_btn_strt_fnsh", false);
            mpLayout->bindToGroup("th_Adress_d_btn_fnsh.brlan", "G_btn_strt_fnsh", false, false);
            mpLayout->bindToGroup("th_Adress_d_btn_in.brlan", "G_btn_00", false, false);
            mpLayout->bindToGroup("th_Adress_d_btn_in.brlan", "G_btn_01", false, false);
            mpLayout->bindToGroup("th_Adress_d_btn_out.brlan", "G_btn_00", false, false);
            mpLayout->bindToGroup("th_Adress_d_btn_out.brlan", "G_btn_01", false, false);
            mpLayout->bindToGroup("th_Adress_d_btn_psh.brlan", "G_btn_00", false, false);
            mpLayout->bindToGroup("th_Adress_d_btn_psh.brlan", "G_btn_01", false, false);
            mpLayout->finishBinding();

            // Play fade in!
            mpLayout->getAnim(ANIM_FADE_IN)->play();

            // Setup GUI and event
            mpEvent = new AddressAddSelEvent(this);
            mpGui = new gui::PaneManager(mpEvent, mpLayout->getDrawInfo(), NULL, NULL);
            mpGui->setupScene(mpLayout);
            mpGui->setAllComponentTriggerTarget(false);
            for (int i = 0; i < BTN_MAX; i++) {
                mpGui->setTriggerTarget(mpLayout->FindPaneByName(mscButtonName[i]), true);
            }

            // Set text to buttons
            set_textbox("T_btn_name_00", MESG_ADDRESS_ADD_SEL_WII);
            set_textbox("T_btn_name_01", MESG_ADDRESS_ADD_SEL_EMAIL);

            // Adjust text scaling (for korean build)
#ifdef KOREAN_BUILD
            if (SCGetAspectRatio() == SC_ASPECT_RATIO_16x9) {
                nw4r::lyt::Size size;

                size = nw4r::ut::DynamicCast<nw4r::lyt::TextBox*>(mpLayout->FindPaneByName("T_btn_name_00"))->GetFontSize();
                size.width += 0.5f;
                nw4r::ut::DynamicCast<nw4r::lyt::TextBox*>(mpLayout->FindPaneByName("T_btn_name_00"))->SetFontSize(size);
            }
#endif // KOREAN_BUILD

            reset_gui();
        }

        FaderSceneCommand AddressAddSel::calcFadein() {
            return !mpLayout->getAnim(ANIM_FADE_IN)->isPlaying() ? FADER_SCN_NEXT : FADER_SCN_CONTINUE;
        }

        void AddressAddSel::initCalcNormal() {
            static_cast<Button*>(System::getScene(SCENE_BUTTON))->setEventHandler(this);
        }

        FaderSceneCommand AddressAddSel::calcNormal() {
            switch (mState) {
                case STATE_NORMAL: {
                    stt_normal();
                    break;
                }
                case STATE_WAIT_DECIDE_ANM: {
                    stt_wait_decide_anm();
                    break;
                }
            }

            return mState == STATE_DONE ? FADER_SCN_NEXT : FADER_SCN_CONTINUE;
        }

        void AddressAddSel::initCalcFadeout() {
            static_cast<Button*>(System::getScene(SCENE_BUTTON))->setEventHandler(NULL);
            mpLayout->getAnim(ANIM_FADE_OUT)->play();
        }

        FaderSceneCommand AddressAddSel::calcFadeout() {
            return !mpLayout->getAnim(ANIM_FADE_OUT)->isPlaying() ? FADER_SCN_NEXT : FADER_SCN_CONTINUE;
        }

        void AddressAddSel::calcCommonAfter() {
            mpLayout->calc();
        }

        void AddressAddSel::draw() {
            if (System::onDefaultDrawLayer()) {
                utility::Graphics::setOrtho();
                mpLayout->draw();
            }
        }

        void AddressAddSel::stt_normal() {
            Button* button = static_cast<Button*>(System::getScene(SCENE_BUTTON));
            if (button->isActive()) {
                button->update();
            }
            if (mState == STATE_NORMAL) {
                mpGui->update();
            }
        }

        void AddressAddSel::stt_wait_decide_anm() {
            if (!mpLayout->getAnim(ANIM_WII_BTN_SELECT)->isPlaying() && !mpLayout->getAnim(ANIM_EMAIL_BTN_SELECT)->isPlaying()) {
                mState = STATE_DONE;
            }
        }

        void AddressAddSel::start_point_event(const char* paneName, controller::Interface* con) {
            int btnNo = get_button_no(paneName);
            //if (btnNo > -1) {
                switch (btnNo) {
                    case BTN_WII:
                    case BTN_EMAIL: {
                        if (mbHovered[btnNo] == FALSE) {
                            // Play hover in animation
                            mpLayout->getAnim(btnNo + ANIM_BTN_FOCUS_IN)->play();

                            // Play nice sound
                            snd::getSystem()->startSE("WIPL_SE_BT_TARGETTING");

                            // Rrrrrumble
                            con->rumble(1);
                        }
                        mbHovered[btnNo]++;
                        break;
                    }
                    default: {
                        break;
                    }
                }
            //}
        }

        void AddressAddSel::start_left_event(const char* paneName) {
            int btnNo = get_button_no(paneName);
            //if (btnNo > -1) {
                switch (btnNo) {
                    case BTN_WII:
                    case BTN_EMAIL: {
                        if (mbHovered[btnNo] == TRUE) {
                            mpLayout->getAnim(btnNo + ANIM_BTN_FOCUS_OUT)->play();
                        }
                        mbHovered[btnNo]--;
                        break;
                    }
                    default: {
                        break;
                    }
                }
            //}
        }

        void AddressAddSel::start_trig_event(const char* paneName) {
            Button* button = static_cast<Button*>(System::getScene(SCENE_BUTTON));
            int btnNo = get_button_no(paneName);
            switch (mState) {
                case STATE_NORMAL: {
                    switch (btnNo) {
                        case BTN_WII:
                        case BTN_EMAIL: {
                            // Change scene!!
                            switch (btnNo) {
                                case BTN_WII: {
                                    reserveSceneChange(SCENE_ADDRESS_EDIT, (void*)Address::SCENE_ADD_WII);
                                    break;
                                }
                                case BTN_EMAIL: {
                                    reserveSceneChange(SCENE_ADDRESS_EDIT, (void*)Address::SCENE_ADD_EMAIL);
                                    break;
                                }
                            }

                            // Button animation
                            button->reserveAnm(Button::IDANIM_DISAPPEAR_LEFT_BUTTON);
                            button->reserveAnm(Button::IDANIM_APPEAR_LEFT_BUTTON);

                            mpLayout->getAnim(btnNo + ANIM_WII_BTN_SELECT)->play();
                            snd::getSystem()->startSE("WIPL_SE_DECIDE");

                            mState = STATE_WAIT_DECIDE_ANM;
                            break;
                        }
                    }
                    break;
                }
            }
        }

        int AddressAddSel::get_button_no(const char* paneName) {
            int result = -1;
            for (int i = 0; i < BTN_MAX; i++) {
                if (strcmp(mscButtonName[i], paneName) == 0) {
                    result = i;
                    break;
                }
            }
            return result;
        }

        void AddressAddSel::reset_gui() {
            mpGui->init();
            for (int i = 0; i < BTN_MAX; i++) {
                mbHovered[i] = FALSE;
            }
        }

        void AddressAddSel::set_textbox(const char* paneName, u32 msgId) {
            nw4r::lyt::TextBox* pane = nw4r::ut::DynamicCast<nw4r::lyt::TextBox*>(mpLayout->FindPaneByName(paneName));
            pane->SetString(System::getMessage(msgId));
        }

        void AddressAddSel::onEventDerived(u32 compId, u32 event, const controller::Interface* con) {
            gui::PaneComponent* component = static_cast<gui::PaneComponent*>(mpManager->getComponent(compId));
            const char* paneName = component->getPane()->GetName();

            switch (event) {
                // Pointer click on button
                case ::gui::EventHandler::ON_TRIG: {
                    if (con != NULL && con->downTrg(controller::BTN_INTERACT)) {
                        Button* button = static_cast<Button*>(System::getScene(SCENE_BUTTON));

                        if (Button::cmpButtonName(paneName, Button::BTN_EXIT) == 0) {
                            // Button scene animation
                            button->reserveAnm(Button::IDANIM_SELECT_CALENDAR_EXIT);
                            button->reserveAnm(Button::IDANIM_DISAPPEAR_LEFT_BUTTON);
                            button->reserveText(Button::TEXT_LEFT_BUTTON, MESG_CMN_BACK);
                            button->reserveText(Button::TEXT_RIGHT_BUTTON, MESG_ADDRESS_REGISTER);
                            button->reserveAnm(Button::IDANIM_APPEAR_LEFT_AND_RIGHT_BUTTON);

                            snd::getSystem()->startSE("WIPL_SE_CANCEL");

                            mState = STATE_DONE;
                        }
                    }
                    break;
                }
            }
        }

        void AddressAddSelEvent::onEvent(u32 compId, u32 event, void* data) {
            gui::PaneComponent* component = static_cast<gui::PaneComponent*>(mpManager->getComponent(compId));
            const char* paneName = component->getPane()->GetName();

            controller::Interface* con = reinterpret_cast<controller::Interface*>(data);

            switch (event) {
                // Pointer on button
                case ::gui::EventHandler::ON_POINT: {
                    if (con != NULL) {
                        mpInstance->start_point_event(paneName, con);
                    }
                    break;
                }
                // Pointer not on button anymore
                case ::gui::EventHandler::ON_LEFT: {
                    mpInstance->start_left_event(paneName);
                    break;
                }
                // Pointer click on button
                case ::gui::EventHandler::ON_TRIG: {
                    if (con != NULL && con->downTrg(controller::BTN_INTERACT)) {
                        mpInstance->start_trig_event(paneName);
                    }
                    break;
                }
            }
        }
    }
}
