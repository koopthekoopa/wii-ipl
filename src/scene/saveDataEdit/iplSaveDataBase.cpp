#include "scene/saveDataEdit/iplSavedataBase.h"

#include "scene/memory/iplMemory.h"

#include "layout/iplGuiManager.h"
#include "layout/iplLayout.h"

#include "system/iplController.h"
#include "system/iplSystem.h"

namespace ipl {
    namespace scene {
        enum SavedataBaseAnimIdx {
            ANIM_SWITCH = 0x00,             // 0x00
            ANIM_DATA_IN = 0x01,            // 0x01
            ANIM_DATA_OUT = 0x02,           // 0x02
            ANIM_SELECT_IN = 0x03,          // 0x03
            ANIM_SELECT_WII_IN = 0x04,      // 0x04
            ANIM_SELECT_WII_OUT = 0x05,     // 0x05
            ANIM_SELECT_WII_FLASH = 0x06,   // 0x06
            ANIM_SELECT_SD_IN = 0x07,       // 0x07
            ANIM_SELECT_SD_OUT = 0x08,      // 0x08
            ANIM_SELECT_SD_FLASH = 0x09,    // 0x09
            ANIM_ARROWS_MOVE_L = 0x0a,      // 0x0a
            ANIM_ARROWS_MOVE_R = 0x0b,      // 0x0b
            ANIM_ARROW_R_SELECT = 0x0c,     // 0x0c
            ANIM_ARROW_L_SELECT = 0x0d,     // 0x0d
            ANIM_ARROW_R_FOCUS_ON = 0x0e,   // 0x0e
            ANIM_ARROW_L_FOCUS_ON = 0x0f,   // 0x0f
            ANIM_ARROW_R_FOCUS_OFF = 0x10,  // 0x10
            ANIM_ARROW_L_FOCUS_OFF = 0x11,  // 0x11
            ANIM_ARROW_R_LOOP = 0x12,       // 0x12
            ANIM_ARROW_R_END = 0x13,        // 0x13
            ANIM_ARROW_L_END = 0x14,        // 0x14
            ANIM_ARROW_R_LOST = 0x15,       // 0x15
            ANIM_ARROW_L_LOST = 0x16,       // 0x16
            ANIM_ERROR_TEXT_IN = 0x17,      // 0x17
            ANIM_ERROR_TEXT_OUT = 0x18,     // 0x18
        };

        SavedataBase::SavedataBase(EGG::Heap* heap, nand::LayoutFile* lytFile, const char* lytFolder, const char* lytFileName)
            : AnmController(heap), ::gui::EventHandler(), mState(SAVEDATA_IDLE) {
            pLytObj = new (heap) layout::Object(heap, lytFile, lytFolder, lytFileName);

            add_animation("it_ObjCubeEdit_a_WiiSwitch.brlan", "G_Switch");
            add_animation("it_ObjCubeEdit_a_DataIn.brlan", "G_DataAll");
            add_animation("it_ObjCubeEdit_a_DataOut.brlan", "G_DataAll");
            add_animation("it_ObjCubeEdit_a_SelectIn.brlan", "G_Select");
            add_animation("it_ObjCubeEdit_a_SelectWiiFoucusIn.brlan", "G_SelectWii");
            add_animation("it_ObjCubeEdit_a_SelectWiiFoucusOut.brlan", "G_SelectWii");
            add_animation("it_ObjCubeEdit_a_SelectWiiFlash.brlan", "G_Select");
            add_animation("it_ObjCubeEdit_a_SelectSdIn.brlan", "G_SelectSd");
            add_animation("it_ObjCubeEdit_a_SelectSdOut.brlan", "G_SelectSd");
            add_animation("it_ObjCubeEdit_a_SelectSdFlash.brlan", "G_Select");
            add_animation("it_ObjCubeEdit_a_ArwL1.brlan", "G_Arw");
            add_animation("it_ObjCubeEdit_a_AwrR1.brlan", "G_Arw");
            add_animation("it_ObjCubeEdit_a_Select.brlan", "G_ArwR_Ac");
            add_animation("it_ObjCubeEdit_a_Select.brlan", "G_ArwL_Ac");
            add_animation("it_ObjCubeEdit_a_FocusOn.brlan", "G_ArwR_Focus");
            add_animation("it_ObjCubeEdit_a_FocusOn.brlan", "G_ArwL_Focus");

            add_animation("it_ObjCubeEdit_a_FocusOff.brlan", "G_ArwR_Focus");
            add_animation("it_ObjCubeEdit_a_FocusOff.brlan", "G_ArwL_Focus");
            add_animation("it_ObjCubeEdit_a_Loop.brlan", "G_ArwRoop");
            add_animation("it_ObjCubeEdit_a_Appear.brlan", "G_ArwR_End");
            add_animation("it_ObjCubeEdit_a_Appear.brlan", "G_ArwL_End");
            add_animation("it_ObjCubeEdit_a_Lost.brlan", "G_ArwR_End");
            add_animation("it_ObjCubeEdit_a_Lost.brlan", "G_ArwL_End");
            add_animation("it_ObjCubeEdit_a_ErrorTxtIn.brlan", "G_ErrorTxt");
            add_animation("it_ObjCubeEdit_a_ErrorTxtOut.brlan", "G_ErrorTxt");

            get_animation(ANIM_SELECT_WII_OUT)->animator->setAnmType(ANIM_TYPE_BACKWARD);
            get_animation(ANIM_SELECT_SD_OUT)->animator->setAnmType(ANIM_TYPE_BACKWARD);
            do_animation(ANIM_SWITCH, ANIM_TYPE_FORWARD, true);
            pLytObj->finishBinding();

            set_textbox("T_SelectWii_00", MESG_SAVEDATA_EDIT_WII);
            set_textbox("T_SelectWii_01", MESG_SAVEDATA_EDIT_WII);
            set_textbox("T_SelectSd_00", MESG_SAVEDATA_EDIT_SD_CARD);
            set_textbox("T_SelectSd_01", MESG_SAVEDATA_EDIT_SD_CARD);
            set_textbox("T_Error_00", L" ");

            set_visible("N_ArwR", false);
            set_visible("N_ArwL", false);

            set_visible("N_Capa_00", false);
            set_visible("T_Capa_00", false);

            pPaneManager = new (heap) ipl::gui::PaneManager(this, pLytObj->getDrawInfo(), NULL, NULL, true);
            pPaneManager->createLayoutScene(*pLytObj->getNW4RLyt());
            pPaneManager->setAllComponentTriggerTarget(false);

            pPaneManager->setTriggerTarget(pLytObj->FindPaneByName("B_ArwR"), true);
            pPaneManager->setTriggerTarget(pLytObj->FindPaneByName("B_ArwL"), true);
            pPaneManager->setTriggerTarget(pLytObj->FindPaneByName("B_SelectWii_00"), true);
            pPaneManager->setTriggerTarget(pLytObj->FindPaneByName("B_SelectSd_00"), true);

            add_anmpane("B_ArwR", get_animation(ANIM_ARROW_R_FOCUS_ON), get_animation(ANIM_ARROW_R_FOCUS_OFF));
            add_anmpane("B_ArwL", get_animation(ANIM_ARROW_L_FOCUS_ON), get_animation(ANIM_ARROW_L_FOCUS_OFF));
            add_anmpane("B_SelectWii_00", get_animation(ANIM_SELECT_WII_IN), get_animation(ANIM_SELECT_WII_OUT));
            add_anmpane("B_SelectSd_00", get_animation(ANIM_SELECT_SD_IN), get_animation(ANIM_SELECT_SD_OUT));
        }

        SavedataBase::~SavedataBase() {
            delete pLytObj;
            delete pPaneManager;
        }

        void SavedataBase::calc() {
            AnmPane* anmPane;

            pLytObj->calc();
            pPaneManager->calc();
            anmPane = NULL;
            while (anmPane = (AnmPane*)nw4r::ut::List_GetNext(&mPaneList, anmPane), anmPane != NULL)
                anmPane->calc();

            switch (mState) {
                case SAVEDATA_IDLE:
                    break;
                case SAVEDATA_FADEIN1ST:
                    on_fadein1st();
                    break;
                case SAVEDATA_FADEIN2ND:
                    on_fadein2nd();
                    break;
                case SAVEDATA_FADEOUT:
                    on_fadeout();
                    break;
                case SAVEDATA_CHANGE_SD_TO_WII:
                    on_change_sd_to_wii();
                    break;
                case SAVEDATA_CHANGE_WII_TO_SD:
                    on_change_wii_to_sd();
                    break;
                case SAVEDATA_SCROLL_R:
                    on_scroll_r();
                    break;
                case SAVEDATA_SCROLL_L:
                    on_scroll_l();
                    break;
                case SAVEDATA_TEXT_FADEIN:
                    on_text_fadein();
                    break;
                case SAVEDATA_TEXT_FADEOUT:
                    on_text_fadeout();
                    break;
            }
        }

        void SavedataBase::draw() {
            pLytObj->draw();
        }

        void SavedataBase::update() {
            pPaneManager->update();
        }

        void SavedataBase::anmFadein() {
            do_animation(ANIM_DATA_IN, ANIM_TYPE_FORWARD, true);
            mState = SAVEDATA_FADEIN1ST;
        }
        void SavedataBase::anmFadeout(bool isErr) {
            do_animation(ANIM_DATA_OUT, ANIM_TYPE_FORWARD, true);
            if (isErr) {
                do_animation(ANIM_ERROR_TEXT_OUT, ANIM_TYPE_FORWARD, true);
            }
            mState = SAVEDATA_FADEOUT;
        }

        void SavedataBase::anmChangeWiitoSD() {
            do_animation(ANIM_SELECT_SD_FLASH, ANIM_TYPE_FORWARD, true);
            mState = SAVEDATA_CHANGE_WII_TO_SD;
        }
        void SavedataBase::anmChangeSDtoWii() {
            do_animation(ANIM_SELECT_WII_FLASH, ANIM_TYPE_FORWARD, true);
            mState = SAVEDATA_CHANGE_SD_TO_WII;
        }

        void SavedataBase::anmScrollR(bool playButtonAnm) {
            do_animation(ANIM_ARROWS_MOVE_L, ANIM_TYPE_FORWARD, true);
            if (playButtonAnm)
                do_animation(ANIM_ARROW_R_SELECT, ANIM_TYPE_FORWARD, true);
            mState = SAVEDATA_SCROLL_R;
        }
        void SavedataBase::anmScrollL(bool playButtonAnm) {
            do_animation(ANIM_ARROWS_MOVE_R, ANIM_TYPE_FORWARD, true);
            if (playButtonAnm)
                do_animation(ANIM_ARROW_L_SELECT, ANIM_TYPE_FORWARD, true);
            mState = SAVEDATA_SCROLL_L;
        }

        void SavedataBase::anmTextFadein(u32 msgId) {
            set_textbox("T_Error_00", msgId);
            do_animation(ANIM_ERROR_TEXT_IN, ANIM_TYPE_FORWARD, true);
            mState = SAVEDATA_TEXT_FADEIN;
        }
        void SavedataBase::anmTextFadeout() {
            do_animation(ANIM_ERROR_TEXT_OUT, ANIM_TYPE_FORWARD, true);
            mState = SAVEDATA_TEXT_FADEOUT;
        }

        void SavedataBase::anmArwAppear(bool arwR, bool arwL) {
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

        void SavedataBase::anmArwDisappear(bool arwR, bool arwL) {
            if (arwR)
                do_animation(ANIM_ARROW_R_LOST, ANIM_TYPE_FORWARD, true);
            if (arwL)
                do_animation(ANIM_ARROW_L_LOST, ANIM_TYPE_FORWARD, true);
        }

        void SavedataBase::onEvent(u32 compId, u32 event, void* data) {
            gui::PaneComponent* paneComponent = (gui::PaneComponent*)mpManager->getComponent(compId);
            const char* paneName = paneComponent->getPane()->GetName();

            AnmPane* anmPane;
            switch (event) {
                case ON_POINT:
                    anmPane = get_anmpane(paneName);
                    if (anmPane != NULL) {
                        Memory* sceneMemory = (Memory*)System::getScene(SCENE_MEMORY);
                        sceneMemory->onPoint(anmPane);
                    }
                    break;
                case ON_LEFT:
                    anmPane = get_anmpane(paneName);
                    if (anmPane != NULL) {
                        Memory* sceneMemory = (Memory*)System::getScene(SCENE_MEMORY);
                        sceneMemory->onLeft(anmPane);
                    }
                    break;
                case ON_TRIG:
                    if (!((controller::Interface*)data)->downTrg(controller::BTN_INTERACT))
                        break;
                    anmPane = get_anmpane(paneName);
                    if (anmPane != NULL) {
                        Memory* sceneMemory = (Memory*)System::getScene(SCENE_MEMORY);
                        sceneMemory->onTrig(anmPane);
                    }
                    break;
            }
        }

        WAIT_FOR_ANIM_STATE(SavedataBase::on_fadein1st, ANIM_DATA_IN, {
            do_animation(ANIM_SELECT_IN, ANIM_TYPE_FORWARD, true);
            mState = SAVEDATA_FADEIN2ND;
        });
        WAIT_FOR_ANIM_STATE(SavedataBase::on_fadein2nd, ANIM_SELECT_IN, mState = SAVEDATA_IDLE);
        WAIT_FOR_ANIM_STATE(SavedataBase::on_fadeout, ANIM_DATA_OUT, mState = SAVEDATA_IDLE);
        WAIT_FOR_ANIM_STATE(SavedataBase::on_change_wii_to_sd, ANIM_SELECT_SD_FLASH, mState = SAVEDATA_IDLE);
        WAIT_FOR_ANIM_STATE(SavedataBase::on_change_sd_to_wii, ANIM_SELECT_WII_FLASH, mState = SAVEDATA_IDLE);
        WAIT_FOR_ANIM_STATE(SavedataBase::on_scroll_r, ANIM_ARROWS_MOVE_L, {
            get_animation(ANIM_ARROWS_MOVE_L)->animator->init();
            pLytObj->calc();

            mState = SAVEDATA_IDLE;
        });
        WAIT_FOR_ANIM_STATE(SavedataBase::on_scroll_l, ANIM_ARROWS_MOVE_R, {
            get_animation(ANIM_ARROWS_MOVE_L)->animator->init();
            pLytObj->calc();

            mState = SAVEDATA_IDLE;
        });
        WAIT_FOR_ANIM_STATE(SavedataBase::on_text_fadein, ANIM_ERROR_TEXT_IN, mState = SAVEDATA_IDLE);
        WAIT_FOR_ANIM_STATE(SavedataBase::on_text_fadeout, ANIM_ERROR_TEXT_OUT, mState = SAVEDATA_IDLE);
    }  // namespace scene
}  // namespace ipl
