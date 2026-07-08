#include "scene/channelEdit/iplChanAppBase.h"

#include "scene/channelEdit/iplChannelEdit.h"

namespace ipl {
    namespace scene {
        ChanAppBase::ChanAppBase(EGG::Heap* heap, nand::LayoutFile* layoutFile, const char* layoutDir, const char* layoutFileName)
            : AnmController(heap), ::gui::EventHandler(), mState(STATE_IDLE) {
            mpLayout = new (heap) layout::Object(heap, layoutFile, layoutDir, layoutFileName);

            add_animation("it_ObjChannelEdit_a_DataIn.brlan", "G_DataAll");
            add_animation("it_ObjChannelEdit_a_DataOut.brlan", "G_DataAll");
            add_animation("it_ObjChannelEdit_a_SelectIn.brlan", "G_Select");
            add_animation("it_ObjChannelEdit_a_SelectWiiFoucusIn.brlan", "G_SelectWii");
            add_animation("it_ObjChannelEdit_a_SelectWiiFoucusOut.brlan", "G_SelectWii");
            add_animation("it_ObjChannelEdit_a_SelectWiiFlash.brlan", "G_Select");
            add_animation("it_ObjChannelEdit_a_SelectSdIn.brlan", "G_SelectSd");
            add_animation("it_ObjChannelEdit_a_SelectSdOut.brlan", "G_SelectSd");
            add_animation("it_ObjChannelEdit_a_SelectSdFlash.brlan", "G_Select");
            add_animation("it_ObjChannelEdit_a_ArwL1.brlan", "G_Arw");
            add_animation("it_ObjChannelEdit_a_AwrR1.brlan", "G_Arw");
            add_animation("it_ObjChannelEdit_a_Select.brlan", "G_ArwR_Ac");
            add_animation("it_ObjChannelEdit_a_Select.brlan", "G_ArwL_Ac");
            add_animation("it_ObjChannelEdit_a_FocusOn.brlan", "G_ArwR_Focus");
            add_animation("it_ObjChannelEdit_a_FocusOn.brlan", "G_ArwL_Focus");
            add_animation("it_ObjChannelEdit_a_FocusOff.brlan", "G_ArwR_Focus");
            add_animation("it_ObjChannelEdit_a_FocusOff.brlan", "G_ArwL_Focus");
            add_animation("it_ObjChannelEdit_a_Loop.brlan", "G_ArwRoop");
            add_animation("it_ObjChannelEdit_a_Appear.brlan", "G_ArwR_End");
            add_animation("it_ObjChannelEdit_a_Appear.brlan", "G_ArwL_End");
            add_animation("it_ObjChannelEdit_a_Lost.brlan", "G_ArwR_End");
            add_animation("it_ObjChannelEdit_a_Lost.brlan", "G_ArwL_End");
            add_animation("it_ObjChannelEdit_a_ErrorTxtIn.brlan", "G_ErrorTxt");
            add_animation("it_ObjChannelEdit_a_ErrorTxtOut.brlan", "G_ErrorTxt");

            get_animation(ANIM_SELECT_WII_OUT)->animator->setAnmType(ANIM_TYPE_BACKWARD);
            get_animation(ANIM_SELECT_SD_OUT)->animator->setAnmType(ANIM_TYPE_BACKWARD);
            mpLayout->finishBinding();

            set_textbox("T_SelectWii_00", MESG_SAVEDATA_EDIT_WII);
            set_textbox("T_SelectWii_01", MESG_SAVEDATA_EDIT_WII);
            set_textbox("T_SelectSd_00", MESG_SAVEDATA_EDIT_SD_CARD);
            set_textbox("T_SelectSd_01", MESG_SAVEDATA_EDIT_SD_CARD);
            set_textbox("T_Error_00", L" ");

            set_visible("N_ArwR", false);
            set_visible("N_ArwL", false);

            set_visible("N_Capa_00", false);
            set_visible("T_Capa_00", false);

            mpGui = new (heap) gui::PaneManager(this, mpLayout->getDrawInfo(), NULL, NULL, true);
            mpGui->createLayoutScene(*mpLayout->getNW4RLyt());
            mpGui->setAllComponentTriggerTarget(false);

            mpGui->setTriggerTarget(mpLayout->FindPaneByName("B_ArwR"), true);
            mpGui->setTriggerTarget(mpLayout->FindPaneByName("B_ArwL"), true);
            mpGui->setTriggerTarget(mpLayout->FindPaneByName("B_SelectWii_00"), true);
            mpGui->setTriggerTarget(mpLayout->FindPaneByName("B_SelectSd_00"), true);

            add_anmpane("B_ArwR", get_animation(ANIM_ARROW_R_FOCUS_ON), get_animation(ANIM_ARROW_R_FOCUS_OFF));
            add_anmpane("B_ArwL", get_animation(ANIM_ARROW_L_FOCUS_ON), get_animation(ANIM_ARROW_L_FOCUS_OFF));
            add_anmpane("B_SelectWii_00", get_animation(ANIM_SELECT_WII_IN), get_animation(ANIM_SELECT_WII_OUT));
            add_anmpane("B_SelectSd_00", get_animation(ANIM_SELECT_SD_IN), get_animation(ANIM_SELECT_SD_OUT));
        }

        ChanAppBase::~ChanAppBase() {
            delete mpLayout;
            delete mpGui;
        }

        void ChanAppBase::calc() {
            AnmPane* anmPane;

            mpLayout->calc();
            mpGui->calc();
            anmPane = NULL;
            while (anmPane = (AnmPane*)nw4r::ut::List_GetNext(&mPaneList, anmPane), anmPane != NULL) {
                anmPane->calc();
            }

            switch (mState) {
                case STATE_IDLE: {
                    break;
                }
                case STATE_FADE_IN_1ST: {
                    on_fadein1st();
                    break;
                }
                case STATE_FADE_IN_2ND: {
                    on_fadein2nd();
                    break;
                }
                case STATE_FADE_OUT: {
                    on_fadeout();
                    break;
                }
                case STATE_CHANGE_SD_TO_WII: {
                    on_change_sd_to_wii();
                    break;
                }
                case STATE_CHANGE_WII_TO_SD: {
                    on_change_wii_to_sd();
                    break;
                }
                case STATE_SCROLL_R: {
                    on_scroll_r();
                    break;
                }
                case STATE_SCROLL_L: {
                    on_scroll_l();
                    break;
                }
                case STATE_TEXT_FADEIN: {
                    on_text_fadein();
                    break;
                }
                case STATE_TEXT_FADEOUT: {
                    on_text_fadeout();
                    break;
                }
                default: {
                    break;
                }
            }
        }

        void ChanAppBase::draw() {
            mpLayout->draw();
        }

        void ChanAppBase::update() {
            mpGui->update();
        }

        void ChanAppBase::anmFadein() {
            do_animation(ANIM_DATA_IN, ANIM_TYPE_FORWARD, true);
            mState = STATE_FADE_IN_1ST;
        }

        void ChanAppBase::anmFadeout(bool isErr) {
            do_animation(ANIM_DATA_OUT, ANIM_TYPE_FORWARD, true);
            if (isErr) {
                do_animation(ANIM_ERROR_TEXT_OUT, ANIM_TYPE_FORWARD, true);
            }
            mState = STATE_FADE_OUT;
        }

        void ChanAppBase::anmChangeWiitoSD() {
            do_animation(ANIM_SELECT_SD_FLASH, ANIM_TYPE_FORWARD, true);
            mState = STATE_CHANGE_WII_TO_SD;
        }

        void ChanAppBase::anmChangeSDtoWii() {
            do_animation(ANIM_SELECT_WII_FLASH, ANIM_TYPE_FORWARD, true);
            mState = STATE_CHANGE_SD_TO_WII;
        }

        void ChanAppBase::anmScrollR(bool playButtonAnm) {
            do_animation(ANIM_ARROWS_MOVE_L, ANIM_TYPE_FORWARD, true);
            if (playButtonAnm) {
                do_animation(ANIM_ARROW_R_SELECT, ANIM_TYPE_FORWARD, true);
            }
            mState = STATE_SCROLL_R;
        }

        void ChanAppBase::anmScrollL(bool playButtonAnm) {
            do_animation(ANIM_ARROWS_MOVE_R, ANIM_TYPE_FORWARD, true);
            if (playButtonAnm) {
                do_animation(ANIM_ARROW_L_SELECT, ANIM_TYPE_FORWARD, true);
            }
            mState = STATE_SCROLL_L;
        }

        void ChanAppBase::anmTextFadein(u32 msgId) {
            set_textbox("T_Error_00", msgId);
            do_animation(ANIM_ERROR_TEXT_IN, ANIM_TYPE_FORWARD, true);
            mState = STATE_TEXT_FADEIN;
        }

        void ChanAppBase::anmTextFadeout() {
            do_animation(ANIM_ERROR_TEXT_OUT, ANIM_TYPE_FORWARD, true);
            mState = STATE_TEXT_FADEOUT;
        }

        void ChanAppBase::anmArwAppear(bool arwR, bool arwL) {
            if (arwR) {
                set_visible("N_ArwR", true);
                do_animation(ANIM_ARROW_R_FOCUS_OFF, ANIM_TYPE_FORWARD, false);
                do_animation(ANIM_ARROW_R_END, ANIM_TYPE_FORWARD, false);
            }
            if (arwL) {
                set_visible("N_ArwL", true);
                do_animation(ANIM_ARROW_L_FOCUS_OFF, ANIM_TYPE_FORWARD, false);
                do_animation(ANIM_ARROW_L_END, ANIM_TYPE_FORWARD, false);
            }
            do_animation(ANIM_ARROW_R_LOOP, ANIM_TYPE_LOOP, true);
        }

        void ChanAppBase::anmArwDisappear(bool arwR, bool arwL) {
            if (arwR)
                do_animation(ANIM_ARROW_R_LOST, ANIM_TYPE_FORWARD, false);
            if (arwL)
                do_animation(ANIM_ARROW_L_LOST, ANIM_TYPE_FORWARD, false);
        }

        void ChanAppBase::onEvent(u32 compId, u32 event, void* data) {
            gui::PaneComponent* paneComponent = (gui::PaneComponent*)mpManager->getComponent(compId);
            const char* paneName = paneComponent->getPane()->GetName();

            controller::Interface* con = (controller::Interface*)data;

            AnmPane* anmPane;
            switch (event) {
                case ON_POINT: {
                    anmPane = get_anmpane(paneName);
                    if (anmPane != NULL) {
                        ChannelEdit* sceneChannelEdit = (ChannelEdit*)System::getScene(SCENE_CHANNEL_EDIT);
                        sceneChannelEdit->onPoint(anmPane);
                    }
                    break;
                }
                case ON_LEFT: {
                    anmPane = get_anmpane(paneName);
                    if (anmPane != NULL) {
                        ChannelEdit* sceneChannelEdit = (ChannelEdit*)System::getScene(SCENE_CHANNEL_EDIT);
                        sceneChannelEdit->onLeft(anmPane);
                    }
                    break;
                }
                case ON_TRIG: {
                    if (!con->downTrg(controller::BTN_INTERACT)) {
                        break;
                    }
                    anmPane = get_anmpane(paneName);
                    if (anmPane != NULL) {
                        ChannelEdit* sceneChannelEdit = (ChannelEdit*)System::getScene(SCENE_CHANNEL_EDIT);
                        sceneChannelEdit->onTrig(anmPane);
                    }
                    break;
                }
            }
        }

        WAIT_FOR_ANIM_STATE(ChanAppBase::on_fadein1st, ANIM_DATA_IN, {
            do_animation(ANIM_SELECT_IN, ANIM_TYPE_FORWARD, true);
            mState = STATE_FADE_IN_2ND;
        });
        WAIT_FOR_ANIM_STATE(ChanAppBase::on_fadein2nd, ANIM_SELECT_IN, mState = STATE_IDLE);
        WAIT_FOR_ANIM_STATE(ChanAppBase::on_fadeout, ANIM_DATA_OUT, mState = STATE_IDLE);
        WAIT_FOR_ANIM_STATE(ChanAppBase::on_change_wii_to_sd, ANIM_SELECT_SD_FLASH, mState = STATE_IDLE);
        WAIT_FOR_ANIM_STATE(ChanAppBase::on_change_sd_to_wii, ANIM_SELECT_WII_FLASH, mState = STATE_IDLE);
        WAIT_FOR_ANIM_STATE(ChanAppBase::on_scroll_r, ANIM_ARROWS_MOVE_L, {
            get_animation(ANIM_ARROWS_MOVE_L)->animator->init();
            mpLayout->calc();

            mState = STATE_IDLE;
        });
        WAIT_FOR_ANIM_STATE(ChanAppBase::on_scroll_l, ANIM_ARROWS_MOVE_R, {
            get_animation(ANIM_ARROWS_MOVE_L)->animator->init();
            mpLayout->calc();

            mState = STATE_IDLE;
        });
        WAIT_FOR_ANIM_STATE(ChanAppBase::on_text_fadein, ANIM_ERROR_TEXT_IN, mState = STATE_IDLE);
        WAIT_FOR_ANIM_STATE(ChanAppBase::on_text_fadeout, ANIM_ERROR_TEXT_OUT, mState = STATE_IDLE);
    }  // namespace scene
}  // namespace ipl
