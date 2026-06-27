#include "scene/channelEdit/iplChanAppEdit.h"

#include "scene/channelEdit/iplChannelEdit.h"
#include "scene/settingSelect/iplSettingButton.h"

#include "sound/iplSound.h"

namespace ipl {
    namespace scene {
        const f32 offsets[2][2] = {
            {64.000000f, 48.000000f},
            {85.000000f, 48.000000f},
        };

        typedef struct {
            wchar_t digits[10];
        } SCNumber;
        static const SCNumber scNumber = {L'0', L'1', L'2', L'3', L'4', L'5', L'6', L'7', L'8', L'9'};

        // TODO: Figure out what this might've been/why it isn't inlining
        void CHANAPPEDIT_dummyFunctionToKeepAConstructorStuffFromInlining(nw4r::math::VEC3& vec) {
            math::VEC3 end(vec);
        }

        enum ChanAppEditAnimIdx {
            ANIM_MASK_IN = 0,   // 0x0
            ANIM_MASK_OUT,      // 0x1
            ANIM_COPY_IN,       // 0x2
            ANIM_COPY_OUT,      // 0x3
            ANIM_COPY_FLASH,    // 0x4
            ANIM_DEL_IN,        // 0x5
            ANIM_DEL_OUT,       // 0x6
            ANIM_DEL_FLASH,     // 0x7
            ANIM_SELECT_OUT,    // 0x8
            ANIM_TEXT_FADEIN,   // 0x9
            ANIM_TEXT_FADEOUT,  // 0xa
            ANIM_WAIT,          // 0xb
            ANIM_COVER_IN,      // 0xc
            ANIM_MOVE_IN,       // 0xd
            ANIM_MOVE_OUT,      // 0xe
            ANIM_MOVE_FLASH,    // 0xf
        };

        ChanAppEdit::ChanAppEdit(EGG::Heap* heap, nand::LayoutFile* lytFile, const char* lytFolder, const char* lytFileName)
            : AnmController(heap), ::gui::EventHandler(), mState(EDIT_STATE_IDLE), mLinearInterp(), pChanAppBox(NULL), mMsgId(0), pThumbnail(NULL) {
            pLytObj = new (heap) layout::Object(heap, lytFile, lytFolder, lytFileName);

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

            pLytObj->finishBinding();
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

            pPaneManager = new ipl::gui::PaneManager(this, pLytObj->getDrawInfo(), NULL, NULL, true);
            pPaneManager->createLayoutScene(*pLytObj->getNW4RLyt());
            pPaneManager->setAllComponentTriggerTarget(false);

            pPaneManager->setTriggerTarget(pLytObj->FindPaneByName("B_Move_00"), true);
            pPaneManager->setTriggerTarget(pLytObj->FindPaneByName("B_Copy_00"), true);
            pPaneManager->setTriggerTarget(pLytObj->FindPaneByName("B_Del_00"), true);

            add_anmpane("B_Move_00", get_animation(ANIM_MOVE_IN), get_animation(ANIM_MOVE_OUT));
            add_anmpane("B_Copy_00", get_animation(ANIM_COPY_IN), get_animation(ANIM_COPY_OUT));
            add_anmpane("B_Del_00", get_animation(ANIM_DEL_IN), get_animation(ANIM_DEL_OUT));
        }

        ChanAppEdit::~ChanAppEdit() {
            delete pLytObj;
            delete pPaneManager;
        }

        void ChanAppEdit::calc() {
            AnmPane* anmPane;

            pLytObj->calc();
            pPaneManager->calc();
            anmPane = NULL;
            while (anmPane = (AnmPane*)nw4r::ut::List_GetNext(&mPaneList, anmPane), anmPane != NULL)
                anmPane->calc();

            if (pThumbnail != NULL)
                pThumbnail->calc();

            switch (mState) {
                case EDIT_STATE_IDLE:
                    break;
                case EDIT_STATE_FADEIN:
                    on_fadein();
                    break;
                case EDIT_STATE_FADEOUT:
                    on_fadeout();
                    break;
                case EDIT_STATE_HIDE_BTN0_DIALOG:
                    on_hide_btn0_dialog();
                    break;
                case EDIT_STATE_SHOW_BTN2_DIALOG1ST:
                    on_show_btn2_dialog1st();
                    break;
                case EDIT_STATE_SHOW_BTN2_DIALOG2ND:
                    on_show_btn2_dialog2nd();
                    break;
                case EDIT_STATE_SELECT_FADEIN:
                    on_select_fadein();
                    break;
                case EDIT_STATE_SELECT_FADEOUT1ST:
                    on_select_fadeout1st();
                    break;
                case EDIT_STATE_SELECT_FADEOUT2ND:
                    on_select_fadeout2nd();
                    break;
                case EDIT_STATE_TEXT_FADEIN:
                    on_text_fadein();
                    break;
                case EDIT_STATE_TEXT_FADEOUT:
                    on_text_fadeout();
                    break;
                case EDIT_STATE_TRIG_DEL:
                    on_trig_del();
                    break;
                case EDIT_STATE_CLEAR:
                    on_clear();
                    break;
            }
            return;
        }

        void ChanAppEdit::draw() {
            pLytObj->draw();

            // set_visible("DataBaseCover_00", false);
            // set_visible("DataBaseCover_01", false);

            // ChannelEdit* sceneChannelEdit = get_channel_edit();
            // if (sceneChannelEdit->getState() == ChannelEdit::CHANEDIT_STATE_ON_UNK_x05 ||
            //     sceneChannelEdit->getState() == ChannelEdit::CHANEDIT_STATE_ON_UNK_x06)
            //     return;
            if (!(mState != EDIT_STATE_FADEIN || get_animation(ANIM_MASK_IN)->animator->getCurrentFrame() > 15))
                return;
            if (pThumbnail == NULL)
                return;
            if (pThumbnail->getLytObj() == NULL)
                return;

            f32 fScisHalfW;
            f32 fScisHalfH;
            fScisHalfW = offsets[SCGetAspectRatio()][0];
            fScisHalfH = offsets[SCGetAspectRatio()][1];

            nw4r::ut::Rect projRect;
            System::getProjectionRect(&projRect);

            GXRenderModeObj* renderModeObj = System::getRenderModeObj();

            u32 fbW = renderModeObj->fbWidth;
            u32 efbH = renderModeObj->efbHeight;

            nw4r::math::VEC3 translate = pThumbnail->getLytObj()->GetRootPane()->GetTranslate();

            f32 scisL = (translate.x - fScisHalfW) * (fbW / projRect.GetWidth()) + fbW / 2.f;
            f32 scisT = efbH / 2.f - translate.y - fScisHalfH;
            f32 scisW = fScisHalfW * 2.f * (fbW / projRect.GetWidth());
            f32 scisH = fScisHalfH * 2.f;
            GXSetScissor(scisL, scisT, scisW, scisH);

            pThumbnail->getLytObj()->GetRootPane()->CalculateMtx(*pLytObj->getDrawInfo());
            pThumbnail->draw();

            GXSetScissor(0, 0, System::getRenderModeObj()->fbWidth, System::getRenderModeObj()->efbHeight);

            pLytObj->draw(SCGetAspectRatio() == SC_ASPECT_RATIO_16x9 ? "N_Mask16x9" : "N_Mask4x3");
        }

        void ChanAppEdit::update() {
            pPaneManager->update();
        }

        void ChanAppEdit::anmFadein(ChanAppBox* box) {
            pChanAppBox = box;
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

            pThumbnail = new (System::getMem2App(), 4) Thumbnail();

            pThumbnail->create(box->getThumbnail()->getLytHeapBufRef());

            pThumbnail->getLytObj()->GetRootPane()->SetTranslate(
                get_translate(SCGetAspectRatio() == SC_ASPECT_RATIO_16x9 ? "N_Atari16x9" : "N_Atari4x3"));

            u32 blockCount = box->getThumbnail()->getBlockCount();
            SCNumber scNumberData = scNumber;
            wchar_t blockTextDigits[5] = L"";
            wchar_t blockText[5] = L"";
            blockTextDigits[0] = scNumberData.digits[blockCount / 1000];
            blockTextDigits[1] = scNumberData.digits[blockCount / 100 % 10];
            blockTextDigits[2] = scNumberData.digits[blockCount / 10 % 10];
            blockTextDigits[3] = scNumberData.digits[blockCount % 10];
            int zeroOffset;
            for (zeroOffset = 0; zeroOffset < 3; zeroOffset++)
                if (blockTextDigits[zeroOffset] != L'0')
                    break;
            wcscpy(blockText, blockTextDigits + zeroOffset);

            set_textbox("T_Block_00", blockText);
            set_textbox("T_Block_02", blockText);

            mLinearInterp.init(ANIM_TYPE_FORWARD, 12, 0, box->get_translate(ChanAppBox::s_all_pane_name), math::VEC3(0, 0, 0));
            mLinearInterp.play();

            set_translate("N_Window", mLinearInterp.get());
            change_button_text(MESG_CMN_BACK_ALT_3);

            AnmPane* anmPane = NULL;
            while (anmPane = (AnmPane*)nw4r::ut::List_GetNext(&mPaneList, anmPane), anmPane != NULL)
                clear_anmpane(anmPane->getName());

            do_animation(ANIM_MASK_IN, ANIM_TYPE_FORWARD, true);
            mState = EDIT_STATE_FADEIN;
        }
        void ChanAppEdit::anmFadeout() {
            pChanAppBox = NULL;
            change_button_text(MESG_CMN_BACK_ALT);
            if (pThumbnail != NULL) {
                delete pThumbnail;
                pThumbnail = NULL;
            }

            do_animation(ANIM_MASK_OUT, ANIM_TYPE_FORWARD, true);
            mState = EDIT_STATE_FADEOUT;
        }

        void ChanAppEdit::anmHideBtn0Dialog() {
            System::getDialog()->terminate();
            mState = EDIT_STATE_HIDE_BTN0_DIALOG;
        }
        void ChanAppEdit::anmShowBtn0Dialog(u32 msgId, bool dontWait, bool showLoading) {
            System::getDialog()->callBtn0(msgId, dontWait ? 0 : 180, showLoading);
        }
        void ChanAppEdit::anmShowS2Btn2Dialog(u32 msgId) {
            set_textbox("T_Message_00", msgId);
            mState = EDIT_STATE_SHOW_BTN2_DIALOG1ST;
        }

        void ChanAppEdit::anmSelectFadein() {
            set_textbox("T_Message_00", L" ");
            do_animation(ANIM_SELECT_OUT, ANIM_TYPE_BACKWARD, true);

            change_button_text(MESG_CMN_BACK_ALT_3);

            AnmPane* anmPane = NULL;
            while (anmPane = (AnmPane*)nw4r::ut::List_GetNext(&mPaneList, anmPane), anmPane != NULL)
                clear_anmpane(anmPane->getName());

            mState = EDIT_STATE_SELECT_FADEIN;
        }
        void ChanAppEdit::anmSelectFadeout(u32 msgId) {
            set_textbox("T_Message_00", msgId);
            mState = EDIT_STATE_SELECT_FADEOUT1ST;
        }

        void ChanAppEdit::anmTextFadein(u32 msgId) {
            mMsgId = msgId;
            do_animation(ANIM_TEXT_FADEIN, ANIM_TYPE_FORWARD, true);
            mState = EDIT_STATE_TEXT_FADEIN;
        }
        void ChanAppEdit::anmTextFadeout() {
            do_animation(ANIM_TEXT_FADEOUT, ANIM_TYPE_FORWARD, true);

            SettingButton* sceneSettingButton = (SettingButton*)System::getScene(SCENE_SETTING_BUTTON);
            sceneSettingButton->reserve(SettingButton::CMD_SET_TEXT, MESG_CMN_BACK_ALT);
            sceneSettingButton->reserve(SettingButton::CMD_SHOW_BTN, 0);

            if (pThumbnail != NULL) {
                delete pThumbnail;
                pThumbnail = NULL;
            }

            mState = EDIT_STATE_TEXT_FADEOUT;
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
            mState = EDIT_STATE_CLEAR;
        }

        void ChanAppEdit::clearAllThumbnails() {
            if (pThumbnail != NULL) {
                delete pThumbnail;
                pThumbnail = NULL;
            }
        }

        void ChanAppEdit::onEvent(u32 compId, u32 event, void* data) {
            gui::PaneComponent* paneComponent = (gui::PaneComponent*)mpManager->getComponent(compId);
            const char* paneName = paneComponent->getPane()->GetName();

            if (mState == EDIT_STATE_TRIG_DEL)
                return;

            AnmPane* anmPane;
            switch (event) {
                case ON_POINT:
                    anmPane = get_anmpane(paneName);
                    if (anmPane != NULL) {
                        ChannelEdit* sceneChannelEdit = (ChannelEdit*)System::getScene(SCENE_CHANNEL_EDIT);
                        sceneChannelEdit->onPoint(anmPane);
                    }
                    break;
                case ON_LEFT:
                    anmPane = get_anmpane(paneName);
                    if (anmPane != NULL) {
                        ChannelEdit* sceneChannelEdit = (ChannelEdit*)System::getScene(SCENE_CHANNEL_EDIT);
                        sceneChannelEdit->onLeft(anmPane);
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
                            ChannelEdit* sceneChannelEdit = (ChannelEdit*)System::getScene(SCENE_CHANNEL_EDIT);
                            sceneChannelEdit->onTrigCopy();
                        } else if (strcmp(anmPane->getName(), "B_Move_00") == 0) {
                            snd::getSystem()->startSE("WIPL_SE_DECIDE");
                            do_animation(ANIM_MOVE_FLASH, ANIM_TYPE_FORWARD, true);
                            ChannelEdit* sceneChannelEdit = (ChannelEdit*)System::getScene(SCENE_CHANNEL_EDIT);
                            sceneChannelEdit->onTrigMove();
                        } else if (strcmp(anmPane->getName(), "B_Del_00") == 0 && mState != EDIT_STATE_TRIG_DEL) {
                            snd::getSystem()->startSE("WIPL_SE_DECIDE");
                            do_animation(ANIM_DEL_FLASH, ANIM_TYPE_FORWARD, true);
                            mState = EDIT_STATE_TRIG_DEL;
                        }
                    }
                    break;
            }
        }

        void ChanAppEdit::change_button_text(u32 msgId) {
            SettingButton* sceneSettingButton = (SettingButton*)System::getScene(SCENE_SETTING_BUTTON);
            sceneSettingButton->reserve(SettingButton::CMD_HIDE_BTN, 0);
            sceneSettingButton->reserve(SettingButton::CMD_SET_TEXT, msgId);
            sceneSettingButton->reserve(SettingButton::CMD_SHOW_BTN, 0);

            switch (msgId) {
                case MESG_CMN_BACK_ALT_3:
                case MESG_CMN_BACK_ALT:
                    sceneSettingButton->setSoundType(SettingButton::CANCEL);
                    break;

                case MESG_CMN_OK:
                    sceneSettingButton->setSoundType(SettingButton::DECIDE);
                    break;
            }
        }

        void ChanAppEdit::on_fadein() {
            mLinearInterp.calc();
            set_translate("N_Window", mLinearInterp.get());
            if (is_animation(ANIM_MASK_IN))
                return;
            if (mLinearInterp.isPlaying())
                return;
            mState = EDIT_STATE_IDLE;
        }
        WAIT_FOR_ANIM_STATE(ChanAppEdit::on_fadeout, ANIM_MASK_OUT, mState = EDIT_STATE_IDLE);
        void ChanAppEdit::on_hide_btn0_dialog() {
            if (System::getDialog()->getLastResult() != DialogWindow::RESULT_PROGRESS &&
                System::getDialog()->getLastResult() != DialogWindow::RESULT_TERMINATED)
                return;

            mState = EDIT_STATE_IDLE;
        }
        WAIT_FOR_ANIM_STATE(ChanAppEdit::on_show_btn2_dialog1st, ANIM_COPY_FLASH, {
            do_animation(ANIM_SELECT_OUT, ANIM_TYPE_FORWARD, true);
            SettingButton* sceneSettingButton = (SettingButton*)System::getScene(SCENE_SETTING_BUTTON);
            sceneSettingButton->hideBtn();

            mState = EDIT_STATE_SHOW_BTN2_DIALOG2ND;
        });
        WAIT_FOR_ANIM_STATE(ChanAppEdit::on_show_btn2_dialog2nd, ANIM_SELECT_OUT, {
            System::getDialog()->callS2Btn2(MESG_CMN_NO, MESG_CMN_YES, true);

            mState = EDIT_STATE_IDLE;
        });
        WAIT_FOR_ANIM_STATE(ChanAppEdit::on_select_fadein, ANIM_SELECT_OUT, mState = EDIT_STATE_IDLE);
        WAIT_FOR_ANIM_STATE(ChanAppEdit::on_select_fadeout1st, ANIM_COPY_FLASH, {
            do_animation(ANIM_SELECT_OUT, ANIM_TYPE_FORWARD, true);
            change_button_text(MESG_CMN_OK);

            mState = EDIT_STATE_SELECT_FADEOUT2ND;
        });
        WAIT_FOR_ANIM_STATE(ChanAppEdit::on_select_fadeout2nd, ANIM_SELECT_OUT, mState = EDIT_STATE_IDLE);

        void ChanAppEdit::on_text_fadein() {
            if (get_animation(ANIM_TEXT_FADEIN)->animator->getCurrentFrame() >= 20.0f) {
                set_textbox("T_Message_00", mMsgId);
            }

            if (is_animation(ANIM_TEXT_FADEIN))
                return;

            stop_animation(ANIM_TEXT_FADEIN);
            mState = EDIT_STATE_IDLE;
        }
        WAIT_FOR_ANIM_STATE(ChanAppEdit::on_text_fadeout, ANIM_TEXT_FADEOUT, mState = EDIT_STATE_IDLE);
        WAIT_FOR_ANIM_STATE(ChanAppEdit::on_trig_del, ANIM_DEL_FLASH, {
            mState = EDIT_STATE_IDLE;
            ChannelEdit* sceneChannelEdit = (ChannelEdit*)System::getScene(SCENE_CHANNEL_EDIT);
            sceneChannelEdit->onTrigDel();
        });
        WAIT_FOR_ANIM_STATE(ChanAppEdit::on_clear, ANIM_COVER_IN, {
            if (pThumbnail != NULL) {
                delete pThumbnail;
                pThumbnail = NULL;
            }
            mState = EDIT_STATE_IDLE;
        });
    }  // namespace scene
}  // namespace ipl
