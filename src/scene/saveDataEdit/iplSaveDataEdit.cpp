#include "scene/saveDataEdit/iplSavedataEdit.h"

#include "scene/memory/iplMemory.h"

#include "scene/settingSelect/iplSettingButton.h"

#include "layout/iplGuiManager.h"
#include "layout/iplLayout.h"

#include "sound/iplSound.h"
#include "system/iplController.h"
#include "system/iplSystem.h"

namespace ipl {
    namespace scene {
        // stripped out function generated a weak
        void forceWeakFunc(nw4r::math::VEC3& vec) {
            math::VEC3 end(vec);
        }

        SavedataEdit::SavedataEdit(EGG::Heap* heap, nand::LayoutFile* layoutFile, const char* layoutDir, const char* layoutFileName)
            : AnmController(heap), ::gui::EventHandler(), mState(STATE_IDLE), mLinearInterp(), mpSavedataBox(NULL), mMsgId(0) {
            mpLayout = new (heap) layout::Object(heap, layoutFile, layoutDir, layoutFileName);

            // New filenames for 4.0 (10th December 2008)
            add_animation("081210_sys4_mn_DataDetail_a_SeenIn.brlan", "G_Mask");
            add_animation("081210_sys4_mn_DataDetail_a_SeenOut.brlan", "G_Mask");
            add_animation("081210_sys4_mn_DataDetail_a_CopyFoucusIn.brlan", "G_Copy");
            add_animation("081210_sys4_mn_DataDetail_a_CopyFoucusOut.brlan", "G_Copy");
            add_animation("081210_sys4_mn_DataDetail_a_CopyFlash.brlan", "G_CopyFlash");
            add_animation("081210_sys4_mn_DataDetail_a_DelFoucusIn.brlan", "G_Del");
            add_animation("081210_sys4_mn_DataDetail_a_DelFoucusOut.brlan", "G_Del");
            add_animation("081210_sys4_mn_DataDetail_a_DelFlash.brlan", "G_DelFlash");
            add_animation("081210_sys4_mn_DataDetail_a_SelectOut.brlan", "G_Select");
            add_animation("081210_sys4_mn_DataDetail_a_SeenOutYes.brlan", "G_Mask");
            add_animation("081210_sys4_mn_DataDetail_a_SeenOutYesOk.brlan", "G_Mask");
            add_animation("081210_sys4_mn_DataDetail_a_Wait.brlan", "G_Wait");
            add_animation("081210_sys4_mn_DataDetail_a_MoveFoucusIn.brlan", "G_Move");
            add_animation("081210_sys4_mn_DataDetail_a_MoveFoucusOut.brlan", "G_Move");
            add_animation("081210_sys4_mn_DataDetail_a_MoveFlash.brlan", "G_MoveFlash");

            mpLayout->finishBinding();
            set_textbox("T_Move_00", MESG_SAVEDATA_EDIT_MOVE);
            set_textbox("T_Copy_00", MESG_SAVEDATA_EDIT_COPY);
            set_textbox("T_Del_00", MESG_SAVEDATA_EDIT_DEL);
            set_textbox("T_Block_00", L" ");
            set_textbox("T_Message_00", L" ");
            set_textbox("T_Title_00", L" ");
            set_textbox("T_Title_01", L" ");

            set_visible("N_Copy", true);
            set_visible("Mask_00", false);
            set_visible("N_Window", false);
            set_visible("N_Wait", false);
            set_visible("T_Block_01", false);
            set_visible("Banner_01", false);
            set_visible("BaseMove_off", false);
            set_visible("BaseMove_off_00", false);
            set_visible("T_Move_off", false);
            set_visible("T_Move_off_00", false);

            mpGui = new gui::PaneManager(this, mpLayout->getDrawInfo(), NULL, NULL, true);
            mpGui->createLayoutScene(*mpLayout->getNW4RLyt());
            mpGui->setAllComponentTriggerTarget(false);

            mpGui->setTriggerTarget(mpLayout->FindPaneByName("B_Move_00"), true);
            mpGui->setTriggerTarget(mpLayout->FindPaneByName("B_Copy_00"), true);
            mpGui->setTriggerTarget(mpLayout->FindPaneByName("B_Del_00"), true);

            add_anmpane("B_Move_00", get_animation(ANIM_MOVE_IN), get_animation(ANIM_MOVE_OUT));
            add_anmpane("B_Copy_00", get_animation(ANIM_COPY_IN), get_animation(ANIM_COPY_OUT));
            add_anmpane("B_Del_00", get_animation(ANIM_DEL_IN), get_animation(ANIM_DEL_OUT));
        }

        SavedataEdit::~SavedataEdit() {
            delete mpLayout;
            delete mpGui;
        }

        void SavedataEdit::calc() {
            AnmPane* anmPane;

            mpLayout->calc();
            mpGui->calc();
            anmPane = NULL;
            while (anmPane = (AnmPane*)nw4r::ut::List_GetNext(&mPaneList, anmPane), anmPane != NULL)
                anmPane->calc();

            switch (mState) {
                case STATE_IDLE:
                    break;
                case STATE_FADEIN:
                    on_fadein();
                    break;
                case STATE_FADEOUT:
                    on_fadeout();
                    break;
                case STATE_HIDE_BTN0_DIALOG:
                    on_hide_btn0_dialog();
                    break;
                case STATE_SHOW_BTN2_DIALOG1ST:
                    on_show_btn2_dialog1st();
                    break;
                case STATE_SHOW_BTN2_DIALOG2ND:
                    on_show_btn2_dialog2nd();
                    break;
                case STATE_SELECT_FADEIN:
                    on_select_fadein();
                    break;
                case STATE_SELECT_FADEOUT1ST:
                    on_select_fadeout1st();
                    break;
                case STATE_SELECT_FADEOUT2ND:
                    on_select_fadeout2nd();
                    break;
                case STATE_TEXT_FADEIN:
                    on_text_fadein();
                    break;
                case STATE_TEXT_FADEOUT:
                    on_text_fadeout();
                    break;
                case STATE_TRIG_DEL:
                    on_trig_del();
                    break;
            }
            return;
        }

        void SavedataEdit::draw() {
            mpLayout->draw();
        }

        void SavedataEdit::update() {
            mpGui->update();
        }

        void SavedataEdit::anmFadein(SavedataBox* box) {
            mpSavedataBox = box;
            set_visible("Mask_00", true);
            set_visible("N_Window", true);
            set_visible("Banner_00", true);
            set_visible("BlockLine", true);

            switch (box->getBanner()->getFilePerms()) {
                case 1:
                    set_visible("BaseMove_off", true);
                    set_visible("BaseMove_off_00", true);
                    break;
                case 2:
                    set_visible("BaseMove_off", true);
                    set_visible("BaseMove_off_00", false);
                    break;
                case 0:
                case 3:
                default:
                    set_visible("BaseMove_off", false);
                    set_visible("BaseMove_off_00", false);
                    break;
            }

            set_textbox("T_Title_00", L" ");
            set_textbox("T_Title_01", L" ");
            if (!box->getBanner()->isCorrupt()) {
                set_textbox("T_Title_00", box->getBanner()->getSaveName());
                set_textbox("T_Title_01", box->getBanner()->getSaveSubName());
            } else {
                set_textbox("T_Title_00", L"???");
            }

            if (!box->getBanner()->isCorrupt()) {
                set_texture("Banner_00", *box->getBanner()->loadBannerTexture());
            } else {
                GXTexObj corruptIconTex;
                Memory* sceneMemory = (Memory*)System::getScene(SCENE_MEMORY);
                sceneMemory->getCorruptBannerTexture(&corruptIconTex);

                set_texture("Banner_00", corruptIconTex);
            }
            u32 blockCount = box->getBanner()->getBlockCount();

            const wchar_t scNumber[10] = {L'0', L'1', L'2', L'3', L'4', L'5', L'6', L'7', L'8', L'9'};

            wchar_t blockTextDigits[5] = L"";
            wchar_t blockText[5] = L"";

            blockTextDigits[0] = scNumber[blockCount / 1000];
            blockTextDigits[1] = scNumber[blockCount / 100 % 10];
            blockTextDigits[2] = scNumber[blockCount / 10 % 10];
            blockTextDigits[3] = scNumber[blockCount % 10];

            int zeroOffset;
            for (zeroOffset = 0; zeroOffset < 3; zeroOffset++)
                if (blockTextDigits[zeroOffset] != L'0')
                    break;
            wcscpy(blockText, blockTextDigits + zeroOffset);

            set_textbox("T_Block_00", blockText);

            mLinearInterp.init(ANIM_TYPE_FORWARD, 12, 0, box->getTranslate(), math::VEC3(0, 0, 0));
            mLinearInterp.play();

            set_translate("N_Window", mLinearInterp.get());
            change_button_text(MESG_CMN_BACK_ALT_3);

            AnmPane* anmPane = NULL;
            while (anmPane = (AnmPane*)nw4r::ut::List_GetNext(&mPaneList, anmPane), anmPane != NULL)
                clear_anmpane(anmPane->getName());

            do_animation(ANIM_MASK_IN, ANIM_TYPE_FORWARD, true);
            mState = STATE_FADEIN;
        }
        void SavedataEdit::anmFadeout() {
            mpSavedataBox = NULL;
            change_button_text(MESG_CMN_BACK_ALT);
            do_animation(ANIM_MASK_OUT, ANIM_TYPE_FORWARD, true);
            mState = STATE_FADEOUT;
        }

        void SavedataEdit::anmHideBtn0Dialog() {
            System::getDialog()->terminate();
            mState = STATE_HIDE_BTN0_DIALOG;
        }
        void SavedataEdit::anmShowBtn0Dialog(u32 msgId, bool dontWait, bool showLoading) {
            System::getDialog()->callBtn0(msgId, dontWait ? 0 : 180, showLoading);
        }
        void SavedataEdit::anmShowS2Btn2Dialog(u32 msgId) {
            set_textbox("T_Message_00", msgId);
            mState = STATE_SHOW_BTN2_DIALOG1ST;
        }

        void SavedataEdit::anmSelectFadein() {
            set_textbox("T_Message_00", L" ");
            do_animation(ANIM_SELECT_OUT, ANIM_TYPE_BACKWARD, true);

            change_button_text(MESG_CMN_BACK_ALT_3);

            AnmPane* anmPane = NULL;
            while (anmPane = (AnmPane*)nw4r::ut::List_GetNext(&mPaneList, anmPane), anmPane != NULL)
                clear_anmpane(anmPane->getName());

            mState = STATE_SELECT_FADEIN;
        }
        void SavedataEdit::anmSelectFadeout(u32 msgId) {
            set_textbox("T_Message_00", msgId);
            mState = STATE_SELECT_FADEOUT1ST;
        }

        void SavedataEdit::anmTextFadein(u32 msgId) {
            mMsgId = msgId;
            do_animation(ANIM_TEXT_FADEIN, ANIM_TYPE_FORWARD, true);
            mState = STATE_TEXT_FADEIN;
        }
        void SavedataEdit::anmTextFadeout() {
            do_animation(ANIM_TEXT_FADEOUT, ANIM_TYPE_FORWARD, true);

            SettingButton* sceneSettingButton = (SettingButton*)System::getScene(SCENE_SETTING_BUTTON);
            sceneSettingButton->reserve(SettingButton::CMD_SET_TEXT, MESG_CMN_BACK_ALT);
            sceneSettingButton->reserve(SettingButton::CMD_SHOW_BTN, 0);

            mState = STATE_TEXT_FADEOUT;
        }

        void SavedataEdit::anmStartWaitAnm() {
            set_visible("N_Wait", true);
            do_animation(ANIM_WAIT, ANIM_TYPE_LOOP, true);
        }
        void SavedataEdit::anmStopWaitAnm() {
            set_visible("N_Wait", false);
            stop_animation(ANIM_WAIT);
        }

        void SavedataEdit::anmClear() {
            set_textbox("T_Title_00", L" ");
            set_textbox("T_Title_01", L" ");
            set_textbox("T_Block_00", L" ");

            set_visible("Banner_00", false);
            set_visible("Banner_01", false);
            set_visible("BlockLine", false);
        }

        void SavedataEdit::onEvent(u32 compId, u32 event, void* data) {
            gui::PaneComponent* paneComponent = (gui::PaneComponent*)mpManager->getComponent(compId);
            const char* paneName = paneComponent->getPane()->GetName();

            if (mState == STATE_TRIG_DEL) {
                return;
            }

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
                        if (strcmp(anmPane->getName(), "B_Copy_00") == 0) {
                            snd::getSystem()->startSE("WIPL_SE_DECIDE");
                            do_animation(ANIM_COPY_FLASH, ANIM_TYPE_FORWARD, true);
                            Memory* sceneMemory = (Memory*)System::getScene(SCENE_MEMORY);
                            sceneMemory->onTrigCopy();
                        } else if (strcmp(anmPane->getName(), "B_Move_00") == 0) {
                            snd::getSystem()->startSE("WIPL_SE_DECIDE");
                            do_animation(ANIM_MOVE_FLASH, ANIM_TYPE_FORWARD, true);
                            Memory* sceneMemory = (Memory*)System::getScene(SCENE_MEMORY);
                            sceneMemory->onTrigMove();
                        } else if (strcmp(anmPane->getName(), "B_Del_00") == 0 && mState != STATE_TRIG_DEL) {
                            snd::getSystem()->startSE("WIPL_SE_DECIDE");
                            do_animation(ANIM_DEL_FLASH, ANIM_TYPE_FORWARD, true);
                            mState = STATE_TRIG_DEL;
                        }
                    }
                    break;
            }
        }

        void SavedataEdit::change_button_text(u32 msgId) {
            SettingButton* sceneSettingButton = (SettingButton*)System::getScene(SCENE_SETTING_BUTTON);
            sceneSettingButton->reserve(SettingButton::CMD_HIDE_BTN, 0);
            sceneSettingButton->reserve(SettingButton::CMD_SET_TEXT, msgId);
            sceneSettingButton->reserve(SettingButton::CMD_SHOW_BTN, 0);

            switch (msgId) {
                case MESG_CMN_BACK_ALT_3:
                case MESG_CMN_BACK_ALT: {
                    sceneSettingButton->setSoundType(SettingButton::CANCEL);
                    break;
                }
                case MESG_CMN_OK: {
                    sceneSettingButton->setSoundType(SettingButton::DECIDE);
                    break;
                }
            }
        }

        void SavedataEdit::on_fadein() {
            mLinearInterp.calc();
            set_translate("N_Window", mLinearInterp.get());
            if (is_animation(ANIM_MASK_IN)) {
                return;
            }
            if (mLinearInterp.isPlaying()) {
                return;
            }
            mState = STATE_IDLE;
        }
        WAIT_FOR_ANIM_STATE(SavedataEdit::on_fadeout, ANIM_MASK_OUT, mState = STATE_IDLE);
        void SavedataEdit::on_hide_btn0_dialog() {
            if (System::getDialog()->getLastResult() != DialogWindow::RESULT_PROGRESS &&
                System::getDialog()->getLastResult() != DialogWindow::RESULT_TERMINATED) {
                return;
            }

            mState = STATE_IDLE;
        }
        WAIT_FOR_ANIM_STATE(SavedataEdit::on_show_btn2_dialog1st, ANIM_COPY_FLASH, {
            do_animation(ANIM_SELECT_OUT, ANIM_TYPE_FORWARD, true);
            SettingButton* sceneSettingButton = (SettingButton*)System::getScene(SCENE_SETTING_BUTTON);
            sceneSettingButton->hideBtn();

            mState = STATE_SHOW_BTN2_DIALOG2ND;
        });
        WAIT_FOR_ANIM_STATE(SavedataEdit::on_show_btn2_dialog2nd, ANIM_SELECT_OUT, {
            System::getDialog()->callS2Btn2(MESG_CMN_NO, MESG_CMN_YES, true);

            mState = STATE_IDLE;
        });
        WAIT_FOR_ANIM_STATE(SavedataEdit::on_select_fadein, ANIM_SELECT_OUT, mState = STATE_IDLE);
        WAIT_FOR_ANIM_STATE(SavedataEdit::on_select_fadeout1st, ANIM_COPY_FLASH, {
            do_animation(ANIM_SELECT_OUT, ANIM_TYPE_FORWARD, true);
            change_button_text(MESG_CMN_OK);

            mState = STATE_SELECT_FADEOUT2ND;
        });
        WAIT_FOR_ANIM_STATE(SavedataEdit::on_select_fadeout2nd, ANIM_SELECT_OUT, mState = STATE_IDLE);

        void SavedataEdit::on_text_fadein() {
            if (get_animation(ANIM_TEXT_FADEIN)->animator->getCurrentFrame() >= 20.0f) {
                set_textbox("T_Message_00", mMsgId);
            }

            if (is_animation(ANIM_TEXT_FADEIN)) {
                return;
            }

            stop_animation(ANIM_TEXT_FADEIN);
            mState = STATE_IDLE;
        }
        WAIT_FOR_ANIM_STATE(SavedataEdit::on_text_fadeout, ANIM_TEXT_FADEOUT, mState = STATE_IDLE);
        WAIT_FOR_ANIM_STATE(SavedataEdit::on_trig_del, ANIM_DEL_FLASH, {
            mState = STATE_IDLE;
            Memory* sceneMemory = (Memory*)System::getScene(SCENE_MEMORY);
            sceneMemory->onTrigDel();
        });
    }  // namespace scene
}  // namespace ipl
