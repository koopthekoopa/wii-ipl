#include "scene/channelEdit/iplChanAppEdit.h"

#include "scene/channelEdit/iplChannelEdit.h"
#include "scene/settingSelect/iplSettingButton.h"

#include "sound/iplSound.h"

namespace ipl {
    namespace scene {
        const f32 offsets[2][2] = {
            {64.f, 48.f},
            {85.f, 48.f},
        };

        // TODO: Figure out what this might've been/why it isn't inlining
        void CHANAPPEDIT_dummyFunctionToKeepAConstructorStuffFromInlining(nw4r::math::VEC3& vec) {
            math::VEC3 end(vec);
        }

        ChanAppEdit::ChanAppEdit(EGG::Heap* heap, nand::LayoutFile* layoutFile, const char* layoutDir, const char* layoutFileName)
            : AnmController(heap), ::gui::EventHandler(), mState(STATE_IDLE), mLinearInterp(), mpChanAppBox(NULL), mMsgId(0), mpThumbnail(NULL) {
            mpLayout = new (heap) layout::Object(heap, layoutFile, layoutDir, layoutFileName);

            add_animation("mn_ChannelDetail_a_SeenIn.brlan", "G_Mask");
            add_animation("mn_ChannelDetail_a_SeenOut.brlan", "G_Mask");
            add_animation("mn_ChannelDetail_a_CopyFoucusIn.brlan", "G_Copy");
            add_animation("mn_ChannelDetail_a_CopyFoucusOut.brlan", "G_Copy");
            add_animation("mn_ChannelDetail_a_CopyFlash.brlan", "G_CopyFlash");
            add_animation("mn_ChannelDetail_a_DelFoucusIn.brlan", "G_Del");
            add_animation("mn_ChannelDetail_a_DelFoucusOut.brlan", "G_Del");
            add_animation("mn_ChannelDetail_a_DelFlash.brlan", "G_DelFlash");
            add_animation("mn_ChannelDetail_a_SelectOut.brlan", "G_Select");
            add_animation("mn_ChannelDetail_a_SeenOutYes.brlan", "G_Mask");
            add_animation("mn_ChannelDetail_a_SeenOutYesOk.brlan", "G_Mask");
            add_animation("mn_ChannelDetail_a_Wait.brlan", "G_Wait");
            add_animation("mn_ChannelDetail_a_CoverAlphaIn.brlan", "G_Cover");
            add_animation("mn_ChannelDetail_a_MoveFoucusIn.brlan", "G_Move");
            add_animation("mn_ChannelDetail_a_MoveFoucusOut.brlan", "G_Move");
            add_animation("mn_ChannelDetail_a_MoveFlash.brlan", "G_MoveFlash");

            mpLayout->finishBinding();
            set_textbox("T_Move_00", MESG_SAVEDATA_EDIT_MOVE);
            set_textbox("T_Copy_00", MESG_SAVEDATA_EDIT_COPY);
            set_textbox("T_Del_00", MESG_SAVEDATA_EDIT_DEL);

            set_textbox("T_Block_00", L" ");
            set_textbox("T_Block_02", L" ");
            set_textbox("T_Message_00", L" ");
            set_textbox("T_Title_00", L" ");
            set_textbox("T_Title_01", L" ");
            set_textbox("T_Title_02", L" ");
            set_textbox("T_Title_03", L" ");

            // set_visible("N_Copy", true);
            set_visible("Mask_00", false);
            set_visible("N_Window", false);
            set_visible("N_Wait", false);
            set_visible("T_Block_01", false);
            set_visible("T_Block_03", false);
            set_visible(SCGetAspectRatio() == SC_ASPECT_RATIO_16x9 ? "N_Mask4x3" : "N_Mask16x9", false);
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

        ChanAppEdit::~ChanAppEdit() {
            delete mpLayout;
            delete mpGui;
        }

        void ChanAppEdit::calc() {
            AnmPane* anmPane;

            mpLayout->calc();
            mpGui->calc();
            anmPane = NULL;
            while (anmPane = (AnmPane*)nw4r::ut::List_GetNext(&mPaneList, anmPane), anmPane != NULL)
                anmPane->calc();

            if (mpThumbnail != NULL)
                mpThumbnail->calc();

            switch (mState) {
                case STATE_IDLE: {
                    break;
                }
                case STATE_FADEIN: {
                    on_fadein();
                    break;
                }
                case STATE_FADEOUT: {
                    on_fadeout();
                    break;
                }
                case STATE_HIDE_BTN0_DIALOG: {
                    on_hide_btn0_dialog();
                    break;
                }
                case STATE_SHOW_BTN2_DIALOG1ST: {
                    on_show_btn2_dialog1st();
                    break;
                }
                case STATE_SHOW_BTN2_DIALOG2ND: {
                    on_show_btn2_dialog2nd();
                    break;
                }
                case STATE_SELECT_FADEIN: {
                    on_select_fadein();
                    break;
                }
                case STATE_SELECT_FADEOUT1ST: {
                    on_select_fadeout1st();
                    break;
                }
                case STATE_SELECT_FADEOUT2ND: {
                    on_select_fadeout2nd();
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
                case STATE_TRIG_DEL: {
                    on_trig_del();
                    break;
                }
                case STATE_CLEAR: {
                    on_clear();
                    break;
                }
            }
            return;
        }

        void ChanAppEdit::draw() {
            mpLayout->draw();

            // set_visible("DataBaseCover_00", false);
            // set_visible("DataBaseCover_01", false);

            // ChannelEdit* sceneChannelEdit = get_channel_edit();
            // if (sceneChannelEdit->getState() == ChannelEdit::CHANSTATE_ON_UNK_x05 ||
            //     sceneChannelEdit->getState() == ChannelEdit::CHANSTATE_ON_UNK_x06)
            //     return;
            if (!(mState != STATE_FADEIN || get_animation(ANIM_MASK_IN)->animator->getCurrentFrame() > 15)) {
                return;
            }
            if (mpThumbnail == NULL) {
                return;
            }
            if (mpThumbnail->getLytObj() == NULL) {
                return;
            }

            f32 fScisHalfW = offsets[SCGetAspectRatio()][0];
            f32 fScisHalfH = offsets[SCGetAspectRatio()][1];

            nw4r::ut::Rect projRect;
            System::getProjectionRect(&projRect);

            GXRenderModeObj* renderModeObj = System::getRenderModeObj();

            u32 fbW = renderModeObj->fbWidth;
            u32 efbH = renderModeObj->efbHeight;

            nw4r::math::VEC3 translate = mpThumbnail->getLytObj()->GetRootPane()->GetTranslate();

            f32 scisL = (translate.x - fScisHalfW) * (fbW / projRect.GetWidth()) + fbW / 2.f;
            f32 scisT = efbH / 2.f - translate.y - fScisHalfH;
            f32 scisW = fScisHalfW * 2.f * (fbW / projRect.GetWidth());
            f32 scisH = fScisHalfH * 2.f;
            GXSetScissor(scisL, scisT, scisW, scisH);

            mpThumbnail->getLytObj()->GetRootPane()->CalculateMtx(*mpLayout->getDrawInfo());
            mpThumbnail->draw();

            GXSetScissor(0, 0, System::getRenderModeObj()->fbWidth, System::getRenderModeObj()->efbHeight);

            mpLayout->draw(SCGetAspectRatio() == SC_ASPECT_RATIO_16x9 ? "N_Mask16x9" : "N_Mask4x3");
        }

        void ChanAppEdit::update() {
            mpGui->update();
        }

        void ChanAppEdit::anmFadein(ChanAppBox* box) {
            mpChanAppBox = box;
            set_visible("Mask_00", true);
            set_visible("N_Window", true);
            set_visible("Cover_16x9_del", false);
            set_visible("Cover_4x3_del", false);

            if (box->getThumbnail()->getMatchesTmpTitle()) {
                set_visible("BaseMove_off", true);
                set_visible("BaseMove_off_00", true);
            } else {
                set_visible("BaseMove_off", false);
                set_visible("BaseMove_off_00", false);
            }

            const wchar_t* textA = L"???";
            const wchar_t* textB = L" ";
            set_textbox("T_Title_00", L" ");
            set_textbox("T_Title_01", L" ");
            set_textbox("T_Title_02", L" ");
            set_textbox("T_Title_03", L" ");
            set_visible("BlockLine", false);
            set_visible("BlockLine01", false);

            if (box->getThumbnail()->getMatchesTmpTitle()) {
                textA = System::getMessage(MESG_CHAN_EDIT_SD_CARD_MENU);
                textB = box->getThumbnail()->getTitle(0);
            } else if (!box->getThumbnail()->getIsCorrupt()) {
                textA = box->getThumbnail()->getTitle(0);
                textB = box->getThumbnail()->getTitle(1);
            }

            if (SCGetAspectRatio() == SC_ASPECT_RATIO_16x9) {
                set_textbox("T_Title_02", textA);
                set_textbox("T_Title_03", textB);
                set_visible("BlockLine01", true);
            } else {
                set_textbox("T_Title_00", textA);
                set_textbox("T_Title_01", textB);
                set_visible("BlockLine", true);
            }

            mpThumbnail = new (System::getMem2App(), 4) Thumbnail();

            mpThumbnail->create(box->getThumbnail()->getLytHeapBufRef());

            mpThumbnail->getLytObj()->GetRootPane()->SetTranslate(
                get_translate(SCGetAspectRatio() == SC_ASPECT_RATIO_16x9 ? "N_Atari16x9" : "N_Atari4x3"));

            u32 blockCount = box->getThumbnail()->getBlockCount();

            const wchar_t scNumber[10] = {L'0', L'1', L'2', L'3', L'4', L'5', L'6', L'7', L'8', L'9'};

            wchar_t blockTextDigits[5] = L"";
            wchar_t blockText[5] = L"";

            blockTextDigits[0] = scNumber[blockCount / 1000];
            blockTextDigits[1] = scNumber[blockCount / 100 % 10];
            blockTextDigits[2] = scNumber[blockCount / 10 % 10];
            blockTextDigits[3] = scNumber[blockCount % 10];

            int zeroOffset;
            for (zeroOffset = 0; zeroOffset < 3; zeroOffset++) {
                if (blockTextDigits[zeroOffset] != L'0') {
                    break;
                }
            }
            wcscpy(blockText, blockTextDigits + zeroOffset);

            set_textbox("T_Block_00", blockText);
            set_textbox("T_Block_02", blockText);

            mLinearInterp.init(ANIM_TYPE_FORWARD, 12, 0, box->get_translate(ChanAppBox::s_all_pane_name), math::VEC3(0, 0, 0));
            mLinearInterp.play();

            set_translate("N_Window", mLinearInterp.get());
            change_button_text(MESG_CMN_BACK_ALT_3);

            AnmPane* anmPane = NULL;
            while (anmPane = (AnmPane*)nw4r::ut::List_GetNext(&mPaneList, anmPane), anmPane != NULL) {
                clear_anmpane(anmPane->getName());
            }

            do_animation(ANIM_MASK_IN, ANIM_TYPE_FORWARD, true);
            mState = STATE_FADEIN;
        }

        void ChanAppEdit::anmFadeout() {
            mpChanAppBox = NULL;
            change_button_text(MESG_CMN_BACK_ALT);
            if (mpThumbnail != NULL) {
                delete mpThumbnail;
                mpThumbnail = NULL;
            }

            do_animation(ANIM_MASK_OUT, ANIM_TYPE_FORWARD, true);
            mState = STATE_FADEOUT;
        }

        void ChanAppEdit::anmHideBtn0Dialog() {
            System::getDialog()->terminate();
            mState = STATE_HIDE_BTN0_DIALOG;
        }

        void ChanAppEdit::anmShowBtn0Dialog(u32 msgId, bool dontWait, bool showLoading) {
            System::getDialog()->callBtn0(msgId, dontWait ? 0 : 180, showLoading);
        }

        void ChanAppEdit::anmShowS2Btn2Dialog(u32 msgId) {
            set_textbox("T_Message_00", msgId);
            mState = STATE_SHOW_BTN2_DIALOG1ST;
        }

        void ChanAppEdit::anmSelectFadein() {
            set_textbox("T_Message_00", L" ");
            do_animation(ANIM_SELECT_OUT, ANIM_TYPE_BACKWARD, true);

            change_button_text(MESG_CMN_BACK_ALT_3);

            AnmPane* anmPane = NULL;
            while (anmPane = (AnmPane*)nw4r::ut::List_GetNext(&mPaneList, anmPane), anmPane != NULL) {
                clear_anmpane(anmPane->getName());
            }

            mState = STATE_SELECT_FADEIN;
        }
        void ChanAppEdit::anmSelectFadeout(u32 msgId) {
            set_textbox("T_Message_00", msgId);
            mState = STATE_SELECT_FADEOUT1ST;
        }

        void ChanAppEdit::anmTextFadein(u32 msgId) {
            mMsgId = msgId;
            do_animation(ANIM_TEXT_FADEIN, ANIM_TYPE_FORWARD, true);
            mState = STATE_TEXT_FADEIN;
        }
        void ChanAppEdit::anmTextFadeout() {
            do_animation(ANIM_TEXT_FADEOUT, ANIM_TYPE_FORWARD, true);

            SettingButton* sceneSettingButton = (SettingButton*)System::getScene(SCENE_SETTING_BUTTON);
            sceneSettingButton->reserve(SettingButton::CMD_SET_TEXT, MESG_CMN_BACK_ALT);
            sceneSettingButton->reserve(SettingButton::CMD_SHOW_BTN, 0);

            if (mpThumbnail != NULL) {
                delete mpThumbnail;
                mpThumbnail = NULL;
            }

            mState = STATE_TEXT_FADEOUT;
        }

        void ChanAppEdit::anmStartWaitAnm() {
            set_visible("N_Wait", true);
            do_animation(ANIM_WAIT, ANIM_TYPE_LOOP, true);
        }
        void ChanAppEdit::anmStopWaitAnm() {
            set_visible("N_Wait", false);
            stop_animation(ANIM_WAIT);
        }

        void ChanAppEdit::anmClear() {
            set_textbox("T_Title_00", L" ");
            set_textbox("T_Title_01", L" ");
            set_textbox("T_Title_02", L" ");
            set_textbox("T_Title_03", L" ");
            set_textbox("T_Block_00", L" ");
            set_textbox("T_Block_02", L" ");

            set_visible("BlockLine", false);
            set_visible("BlockLine01", false);
            set_visible(SCGetAspectRatio() == SC_ASPECT_RATIO_16x9 ? "Cover_16x9_del" : "Cover_4x3_del", true);

            do_animation(ANIM_COVER_IN, ANIM_TYPE_FORWARD, true);
            mState = STATE_CLEAR;
        }

        void ChanAppEdit::clearAllThumbnails() {
            if (mpThumbnail != NULL) {
                delete mpThumbnail;
                mpThumbnail = NULL;
            }
        }

        void ChanAppEdit::onEvent(u32 compId, u32 event, void* data) {
            gui::PaneComponent* paneComponent = (gui::PaneComponent*)mpManager->getComponent(compId);
            const char* paneName = paneComponent->getPane()->GetName();

            controller::Interface* con = (controller::Interface*)data;

            if (mState == STATE_TRIG_DEL) {
                return;
            }

            AnmPane* anmPane;
            switch (event) {
                case ON_POINT: {
                    anmPane = get_anmpane(paneName);
                    if (anmPane != NULL) {
                        ((ChannelEdit*)System::getScene(SCENE_CHANNEL_EDIT))->onPoint(anmPane);
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
                        if (strcmp(anmPane->getName(), "B_Copy_00") == 0) {
                            snd::getSystem()->startSE("WIPL_SE_DECIDE");
                            do_animation(ANIM_COPY_FLASH, ANIM_TYPE_FORWARD, true);
                            ((ChannelEdit*)System::getScene(SCENE_CHANNEL_EDIT))->onTrigCopy();
                        } else if (strcmp(anmPane->getName(), "B_Move_00") == 0) {
                            snd::getSystem()->startSE("WIPL_SE_DECIDE");
                            do_animation(ANIM_MOVE_FLASH, ANIM_TYPE_FORWARD, true);
                            ((ChannelEdit*)System::getScene(SCENE_CHANNEL_EDIT))->onTrigMove();
                        } else if (strcmp(anmPane->getName(), "B_Del_00") == 0 && mState != STATE_TRIG_DEL) {
                            snd::getSystem()->startSE("WIPL_SE_DECIDE");
                            do_animation(ANIM_DEL_FLASH, ANIM_TYPE_FORWARD, true);
                            mState = STATE_TRIG_DEL;
                        }
                    }
                    break;
                }
            }
        }

        void ChanAppEdit::change_button_text(u32 msgId) {
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

        void ChanAppEdit::on_fadein() {
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

        WAIT_FOR_ANIM_STATE(ChanAppEdit::on_fadeout, ANIM_MASK_OUT, mState = STATE_IDLE);
        void ChanAppEdit::on_hide_btn0_dialog() {
            if (System::getDialog()->getLastResult() != DialogWindow::RESULT_PROGRESS &&
                System::getDialog()->getLastResult() != DialogWindow::RESULT_TERMINATED)
                return;

            mState = STATE_IDLE;
        }
        WAIT_FOR_ANIM_STATE(ChanAppEdit::on_show_btn2_dialog1st, ANIM_COPY_FLASH, {
            do_animation(ANIM_SELECT_OUT, ANIM_TYPE_FORWARD, true);
            SettingButton* sceneSettingButton = (SettingButton*)System::getScene(SCENE_SETTING_BUTTON);
            sceneSettingButton->hideBtn();

            mState = STATE_SHOW_BTN2_DIALOG2ND;
        });
        WAIT_FOR_ANIM_STATE(ChanAppEdit::on_show_btn2_dialog2nd, ANIM_SELECT_OUT, {
            System::getDialog()->callS2Btn2(MESG_CMN_NO, MESG_CMN_YES, true);

            mState = STATE_IDLE;
        });
        WAIT_FOR_ANIM_STATE(ChanAppEdit::on_select_fadein, ANIM_SELECT_OUT, mState = STATE_IDLE);
        WAIT_FOR_ANIM_STATE(ChanAppEdit::on_select_fadeout1st, ANIM_COPY_FLASH, {
            do_animation(ANIM_SELECT_OUT, ANIM_TYPE_FORWARD, true);
            change_button_text(MESG_CMN_OK);

            mState = STATE_SELECT_FADEOUT2ND;
        });
        WAIT_FOR_ANIM_STATE(ChanAppEdit::on_select_fadeout2nd, ANIM_SELECT_OUT, mState = STATE_IDLE);

        void ChanAppEdit::on_text_fadein() {
            if (get_animation(ANIM_TEXT_FADEIN)->animator->getCurrentFrame() >= 20.0f) {
                set_textbox("T_Message_00", mMsgId);
            }

            if (is_animation(ANIM_TEXT_FADEIN))
                return;

            stop_animation(ANIM_TEXT_FADEIN);
            mState = STATE_IDLE;
        }
        WAIT_FOR_ANIM_STATE(ChanAppEdit::on_text_fadeout, ANIM_TEXT_FADEOUT, mState = STATE_IDLE);
        WAIT_FOR_ANIM_STATE(ChanAppEdit::on_trig_del, ANIM_DEL_FLASH, {
            mState = STATE_IDLE;
            ChannelEdit* sceneChannelEdit = (ChannelEdit*)System::getScene(SCENE_CHANNEL_EDIT);
            sceneChannelEdit->onTrigDel();
        });
        WAIT_FOR_ANIM_STATE(ChanAppEdit::on_clear, ANIM_COVER_IN, {
            if (mpThumbnail != NULL) {
                delete mpThumbnail;
                mpThumbnail = NULL;
            }
            mState = STATE_IDLE;
        });
    }  // namespace scene
}  // namespace ipl
