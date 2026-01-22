#include "scene/board/iplFocusObject.h"
#include "scene/parentalDialog/iplParentalDialog.h"

#include "iplSystem.h"
#include "sound/iplSound.h"

#include "utility/iplLayout.h"

#include "scene/setting/iplNCDSetting.h"

#include <revolution/enc.h>
#include <revolution/cx.h>
#pragma sym on
namespace ipl {
    namespace scene {
        const char* focus_object::mAnimNames[BoardObject::TYPE_MAX][1+ANIM_ARROW_MAX] = {
            {
                "my_Memo_a.brlyt",
                "my_Memo_a_SelectLetter.brlan",
                "my_Memo_a_ExitLetter.brlan",
                "my_Memo_a_Loop.brlan",
                "my_Memo_a_FocusOn.brlan",
                "my_Memo_a_FocusOff.brlan",
                "my_Memo_a_Select.brlan",
                "my_Memo_a_Appear.brlan",
                "my_Memo_a_Lost.brlan",
                "my_Memo_a_HDActionStart.brlan",
               "my_Memo_a_HDActionEnd.brlan"
            },
            {
                "my_LetterL.brlyt",
                "my_LetterL_SelectLetter.brlan",
                "my_LetterL_ExitLetter.brlan",
                "my_LetterL_Loop.brlan",
                "my_LetterL_FocusOn.brlan",
                "my_LetterL_FocusOff.brlan",
                "my_LetterL_Select.brlan",
                "my_LetterL_Appear.brlan",
                "my_LetterL_Lost.brlan",
                "my_LetterL_HDActionStart.brlan",
               "my_LetterL_HDActionEnd.brlan",
            },
            {
                "my_Memo_a.brlyt",
                "my_Memo_a_SelectLetter.brlan",
                "my_Memo_a_ExitLetter.brlan",
                "my_Memo_a_Loop.brlan",
                "my_Memo_a_FocusOn.brlan",
                "my_Memo_a_FocusOff.brlan",
                "my_Memo_a_Select.brlan",
                "my_Memo_a_Appear.brlan",
                "my_Memo_a_Lost.brlan",
                "my_Memo_a_HDActionStart.brlan",
               "my_Memo_a_HDActionEnd.brlan",
            }
        };

        const char* focus_object::mscButtonName[focus_object::BTN_MAX] = {
            "B_ArwR",
            "B_ArwL",
            "B_Pic",
            "B_Nigaoe",
        };

        static const struct {
            const char* file;
            const char* s_pane;
            const char* pane;
        } scChangeTexFile[] = {
            {
                "img/my_Letter_a.tpl",
                "LetterA_s",
                "LetterA"
            },
            {
                "img/my_Letter_b.tpl",
                "LetterB_s",
                "LetterB",
            },
            {
                "img/my_Letter_c.tpl",
                "LetterC_s",
                "LetterC",
            },
            {
                "img/my_Letter_d.tpl",
                "LetterD_s",
                "LetterD",
            },
            {
                "img/my_Letter_e.tpl",
                "LetterE_s",
                "LetterE",
            },
            {
                "img/my_Letter_f.tpl",
                "LetterF_s",
                "LetterF",
            },
            {
                "img/my_Letter_g.tpl",
                "LetterG_s",
                "LetterG",
            },
            {
                "img/my_Letter_h.tpl",
                "LetterH_s",
                "LetterH",
            },
            {
                "img/my_Letter_i.tpl",
                "LetterI_s",
                "LetterI",
            },
        };

        focus_object::focus_object(nand::LayoutFile* layoutFile, nand::LayoutFile* balloonFile, BoardObject* boardObject) :
        mState(STATE_INIT_NORMAL),
        mNextState(STATE_NONE),
        mPrevState(STATE_NONE),
        mFinalResult(RESULT_NONE),
        mCurrentResult(RESULT_NONE),
        mpBoardObj(boardObject),
        mpLayout(NULL),
        mpGui(NULL),
        mpNigaoeBalloon(NULL),
        mpParsedText(NULL),
        mEvent(this),
        mButtonEvent(this),
        mOptOutEvent(this),
        mScroller(),
        mPicture(),
        unk_0xF8(0),
        unk_0xFC(0),
        mGUIAlloc(System::getMem2App(), 4),
        mpCmpArcData(NULL),
        mpArcData(NULL),
        mArcLength(0),
        mbChanJump(false),
        mpChJpData(NULL),
        mpSoundData(NULL),
        mSoundSize(0),
        mbSoundPlaying(false),
        mURLProc(),
        mFadeAnim(),
        mNwc24ErrCountdown(0),
        mChanJumpCountdown(0),
        mbShowUArw(false),
        mbShowDArw(false),
        mbScaleUArw(false),
        mbScaleDArw(false),
        mbParentalSuccess(false) {
            for (int i = 0; i < BTN_MAX; i++) {
                mbHovered[i] = 0;
            }

            for (int i = 0; i < WPAD_MAX_CONTROLLERS; i++) {
                mbHoveredURL[i] = false;
            }

            unk_0x114[0] = L' ';
            unk_0x114[1] = L'　';
            unk_0x114[2] = L'\n';
            unk_0x114[3] = L'\t';
            unk_0x114[4] = 0;
            unk_0x114[5] = 0;

            make_layout(layoutFile);
            make_gui_mgr();

            init(balloonFile);
        }

        focus_object::~focus_object() {
            delete mpGui;
            delete mpLayout;

            delete mpNigaoeBalloon;

            delete[] mpParsedText;

            mURLProc.destroy();

            if (mpArcData != NULL) {
                delete[] mpArcData;
            }

            if (mPicture.mpRGB565 != NULL) {
                delete[] mPicture.mpRGB565;
            }
            if (mPicture.mpWork != NULL) {
                delete[] mPicture.mpWork;
            }

            if (mpSoundData != NULL) {
                snd::getSystem()->muteOffBGM(120);
            }
        }

        focus_object::result focus_object::calc() {
            mFinalResult = RESULT_NONE;

            bool showUArw = mScroller.isUpEnd();
            bool showDArw = mScroller.isDownEnd();

            // Calculate letter
            cmn_calc();

            switch (mState) {
                case STATE_INIT_NORMAL: {
                    if (is_finished_fadein()) {
                        init_normal();
                    }
                    break;
                }
                case STATE_NORMAL: {
                    stt_normal();
                    break;
                }
                case STATE_FADE_OUT: {
                    stt_fadeout();
                    break;
                }
                case STATE_WAIT_BTN: {
                    stt_wait_btn();
                    break;
                }
                case STATE_WAIT_MSG: {
                    stt_wait_msg();
                    break;
                }
                case STATE_DEL_WAIT_MSG: {
                    stt_del_wait_msg();
                    break;
                }
                case STATE_DEL_WAIT_DELETE: {
                    stt_del_wait_delete();
                    break;
                }
                case STATE_PIC_FADE_IN: {
                    stt_pic_fadein();
                    break;
                }
                case STATE_PIC_NORMAL: {
                    stt_pic_normal();
                    break;
                }
                case STATE_PIC_FADE_OUT: {
                    stt_pic_fadeout();
                    break;
                }
                case STATE_LETTER_WAIT_NET: {
                    stt_ltr_wait_net();
                    break;
                }
                case STATE_LETTER_WAIT_SCENE: {
                    stt_ltr_wait_ltr_scene();
                    break;
                }
                case STATE_CHN_WAIT_MSG: {
                    stt_chn_wait_url_jump_msg();
                    break;
                }
                case STATE_CHN_WAIT_JUMP: {
                    stt_chn_wait_jump();
                    break;
                }
                case STATE_OPT_WAIT_SELECT_MSG: {
                    stt_opt_wait_select_msg();
                    break;
                }
                case STATE_OPT_WAIT_STOP_MSG: {
                    stt_opt_wait_stop_msg();
                    break;
                }
                case STATE_OPT_WAIT_ALL_STOP_MSG: {
                    stt_opt_wait_all_stop_msg();
                    break;
                }
                case STATE_OPT_DELETE_TASK: {
                    stt_opt_delete_task();
                    break;
                }
                case STATE_OPT_DELETE_ALL_TASK: {
                    stt_opt_delete_all_task();
                    break;
                }
                case STATE_OPT_WAIT_CONFIRM_MSG: {
                    stt_opt_wait_confirm_msg();
                    break;
                }
                case STATE_NET_WAIT_NET_MSG: {
                    stt_net_wait_net_setting_msg();
                    break;
                }
                case STATE_NET_WAIT_NWC_MSG: {
                    stt_net_wait_nwc_setting_msg();
                    break;
                }
                case STATE_NET_WAIT_PARENTAL: {
                    stt_net_wait_parental_scene();
                    break;
                }
                case STATE_NET_WAIT_PARENTAL_DST: {
                    stt_net_wait_parental_scene_dst();
                    break;
                }
            }

            bool hideDArw = mScroller.isDownEnd();
            bool hideUArw = mScroller.isUpEnd();

            show_or_hide_arw(showUArw, showDArw, hideUArw, hideDArw);

            if ((mState == STATE_NORMAL || (mState == STATE_PIC_FADE_IN || mState == STATE_PIC_NORMAL || mState == STATE_PIC_FADE_OUT)) && mpSoundData != NULL) {
                if (mSoundTimer()) {
                    snd::getBannerPlayer()->start(mpSoundData, mSoundSize);
                    mSoundTimer.set_msec(1471228928);
                    mbSoundPlaying = true;
                }
            }

            return mFinalResult;
        }

        void focus_object::cmn_calc() {
            mFadeAnim.calc();

            if (mScroller.calc(mState == STATE_NORMAL) == TRUE) {
                Button* button = get_button();

                button->initBtn(Button::BTN_EXIT);
                button->initBtn(Button::BTN_CREATE_R_BUTTON);
                button->initBtn(Button::BTN_TRASH_DELETE);
                button->get_opt_out_btn()->reset_gui();

                reset_gui(BTN_ARROW_RIGHT, ANIM_ARROW_RIGHT_FOCUS_OFF);
                reset_gui(BTN_ARROW_LEFT, ANIM_ARROW_LEFT_FOCUS_OFF);
                reset_gui(BTN_PICTURE, ANIM_LETTER_PIC_FOCUS_OUT);
            }

            mpLayout->GetRootPane()->SetTranslate(math::VEC3((nw4r::math::VEC3)mFadeAnim.get()));
            mpLayout->FindPaneByName("N_Memo")->SetTranslate(nw4r::math::VEC3(0.0f, mScroller.get(), 0.0f));
        
            mpLayout->calc();
            
            mpNigaoeBalloon->updatePos(calc_balloon_pos());
            mpNigaoeBalloon->calc();

            mURLProc.update();

            if (mpSoundData != NULL && mbSoundPlaying) {
                if (snd::getBannerPlayer()->getUnk_0x00() == 0) {
                    if (mSoundStopTimer()) {
                        mbSoundPlaying = false;
                        snd::getSystem()->muteOffBGM(120);
                    }
                }
                else {
                    mSoundStopTimer.set_msec(100);
                }
            }
        }

        void focus_object::stt_normal() {
            Button* button = get_button();

            if (button->isActive()) {
                if (mScroller.getBInst().isActive() ? false : true) {
                    button->update();
                }
            }

            if (mState == STATE_NORMAL) {
                if (mScroller.getBInst().isActive() ? false : true) {
                    mpGui->update();
                }
            }

            if (mState == STATE_NORMAL) {
                proc_input();
            }

            if (mState == STATE_NORMAL && !mScroller.is_busy()) {
                proc_url_jump();
            }

            if (mState != STATE_NORMAL && mState != STATE_PIC_FADE_IN) {
                mSoundTimer.set_msec(1471228928);
            }
        }

        void focus_object::stt_fadeout() {
            if (is_finished_fadeout()) {
                mFinalResult = mCurrentResult;
                mState = STATE_DONE;
            }
        }

        void focus_object::stt_wait_btn() {
            if (get_button()->isActive()
            && !get_button()->hasReservedAnim()) {
                switch (mNextState) {
                    case STATE_FADE_OUT: {
                        init_fadeout(false);
                        mCurrentResult = RESULT_CLOSE_AFTER;
                        break;
                    }
                    case STATE_DEL_WAIT_MSG: {
                        System::getDialog()->callSBtn2(MESG_BOARD_ERASE_CONFIRM, MESG_CMN_OK, MESG_CMN_QUIT, false);
                        break;
                    }
                    case STATE_PIC_FADE_OUT: {
                        get_button()->reserveAnm(Button::IDANIM_DISAPPEAR_LEFT_AND_RIGHT_BUTTON);

                        show_cmn_btn();

                        reset_gui(BTN_ARROW_RIGHT, ANIM_ARROW_RIGHT_FOCUS_OFF);
                        reset_gui(BTN_ARROW_LEFT, ANIM_ARROW_LEFT_FOCUS_OFF);
                        reset_gui(BTN_PICTURE, ANIM_LETTER_PIC_FOCUS_OUT);

                        mpLayout->getAnim(ANIM_LETTER_EXIT_PIC)->play();

                        break;
                    }
                    case STATE_OPT_WAIT_SELECT_MSG: {
                        System::getDialog()->callBtn3(MESG_BOARD_OPT_OUT_SELECT,
                                                    MESG_BOARD_OPT_OUT_ONE,
                                                    MESG_BOARD_OPT_OUT_ALL, 
                                                    MESG_BOARD_OPT_OUT_CANCEL);
                        break;
                    }
                }

                mState = mNextState;
                mNextState = STATE_NONE;
            }
        }

        void focus_object::stt_wait_msg() {
            if (System::getDialog()->getLastResult() != DialogWindow::RESULT_NONE) {
                switch (mPrevState) {
                    case STATE_DEL_WAIT_MSG: {
                        get_button()->initBtn(Button::BTN_TRASH_DELETE);

                        show_cmn_btn();

                        break;
                    }
                    case STATE_PIC_NORMAL:
                    case STATE_NORMAL: {
                        mURLProc.select(-1);
                        break;
                    }
                }

                mState = mNextState;
                mNextState = STATE_NONE;
            }
        }
        
        void focus_object::stt_del_wait_msg() {
            switch (System::getDialog()->getLastResult()) {
                case DialogWindow::RESULT_LEFT_BUTTON: {
                    get_button()->initBtn(Button::BTN_TRASH_DELETE);

                    show_cmn_btn();

                    mState = STATE_NORMAL;

                    break;
                }
                case DialogWindow::RESULT_RIGHT_BUTTON: {
                    if (mpBoardObj->is_protected()) {
                        System::getDialog()->callBtn1(MESG_BOARD_ERASE_ERROR, MESG_CMN_OK);

                        mPrevState = mState;
                        mState = STATE_WAIT_MSG;

                        mNextState = STATE_NORMAL;
                    }
                    else {
                        mFadeAnim.playBackwards();

                        mpNigaoeBalloon->terminate();

                        mpLayout->getAnim(ANIM_EXIT)->play();

                        get_button()->setEventHandler(NULL);
                        get_button()->animation(Button::IDANIM_APPEAR_BOARD_BUTTON);

                        if (mpSoundData != NULL) {
                            snd::getBannerPlayer()->stop(30);
                        }

                        snd::getSystem()->startSE("WIPL_SE_BOARD_DUMP");

                        mFinalResult = RESULT_CLOSE_DEL;

                        mState = STATE_DEL_WAIT_DELETE;
                    }
                    break;
                }
            }
        }

        void focus_object::stt_del_wait_delete() {
            if (is_finished_fadeout()) {
                mFinalResult = RESULT_CLOSE_AFTER_DEL;
                mState = STATE_DONE;
            }
        }

        void focus_object::stt_pic_fadein() {
            if (!mpLayout->getAnim(ANIM_LETTER_SELECT_PIC)->isPlaying()) {
                get_button()->reserveText(Button::TEXT_RIGHT_BUTTON, MESG_BOARD_SEND);
                get_button()->reserveAnm(Button::IDANIM_APPEAR_LEFT_AND_RIGHT_BUTTON);

                if (mbShowUArw) {
                    mpLayout->getAnim(ANIM_ARROW_RIGHT_LOST)->play();
                }

                if (mbShowDArw) {
                    mpLayout->getAnim(ANIM_ARROW_LEFT_LOST)->play();
                }

                mState = STATE_PIC_NORMAL;
            }
        }
        void focus_object::stt_pic_normal() {
            if (get_button()->isActive()) {
                get_button()->update();
            }
        }

        void focus_object::stt_pic_fadeout() {
            if (!mpLayout->getAnim(ANIM_LETTER_EXIT_PIC)->isPlaying()) {
                if (mbShowUArw) {
                    mpLayout->getAnim(ANIM_ARROW_RIGHT_APPEAR)->play();
                }

                if (mbShowDArw) {
                    mpLayout->getAnim(ANIM_ARROW_LEFT_APPEAR)->play();
                }

                mState = STATE_NORMAL;
            }
        }

        void focus_object::stt_ltr_wait_net() {
            switch (check_network()) {
                case NETWORK_RESULT_SUCCESS: {
                    switch (mPrevState) {
                        case STATE_NORMAL: {
                            mpLayout->getAnim(ANIM_LETTER_REPLY)->play();
                            hide_cmn_btn();
                            get_button()->reserveText(Button::TEXT_LEFT_BUTTON, MESG_CMN_QUIT);
                            get_button()->reserveText(Button::TEXT_RIGHT_BUTTON, MESG_BOARD_SEND);
                            get_button()->reserveAnm(Button::IDANIM_APPEAR_LEFT_AND_RIGHT_BUTTON);
                            mFinalResult = RESULT_REPLY;
                            break;
                        }
                        case STATE_PIC_NORMAL: {
                            mpLayout->getAnim(ANIM_LETTER_PIC_REPLY)->play();
                            get_button()->reserveAnm(Button::IDANIM_DISAPPEAR_LEFT_AND_RIGHT_BUTTON);
                            get_button()->reserveText(Button::TEXT_LEFT_BUTTON, MESG_CMN_BACK);
                            get_button()->reserveText(Button::TEXT_RIGHT_BUTTON, MESG_BOARD_POST);
                            get_button()->reserveAnm(Button::IDANIM_APPEAR_LEFT_BUTTON);
                            mFinalResult = RESULT_SEND_PICTURE;
                            break;
                        }
                    }

                    get_button()->setEventHandler(NULL);

                    System::stopReceiveSchedule();

                    mState = STATE_WAIT_BTN;

                    mNextState = STATE_LETTER_WAIT_SCENE;

                    break;
                }
                case NETWORK_RESULT_FAIL: {
                    break;
                }
                case NETWORK_RESULT_ERROR: {
                    if ((mNwc24ErrCountdown += 1) > 300) {
                        System::getDialog()->callBtn1(MESG_ERROR_NWC24_FATAL, MESG_CMN_OK);

                        mState = STATE_WAIT_MSG;
                        mNextState = mPrevState;
                    }
                    break;
                }
            }
        }

        void focus_object::stt_ltr_wait_ltr_scene() {
            if (System::getReservedScene() == NULL
            && System::getScene(SCENE_LETTER_WRITER) == NULL) {
                System::startReceiveSchedule();

                switch (mPrevState) {
                    case STATE_NORMAL: {
                        mpLayout->getAnim(ANIM_LETTER_REPLY_BACK)->play();
                        break;
                    }
                    case STATE_PIC_NORMAL: {
                        mpLayout->getAnim(ANIM_LETTER_PIC_REPLY_BACK)->play();
                        break;
                    }
                }

                get_button()->setEventHandler(&mButtonEvent, &mOptOutEvent);

                mState = mPrevState;
            }
        }

        void focus_object::stt_chn_wait_url_jump_msg() {
            switch (System::getDialog()->getLastResult()) {
                case DialogWindow::RESULT_LEFT_BUTTON: {
                    show_cmn_btn();
                    mURLProc.select(-1);

                    mState = STATE_NORMAL;

                    break;
                }
                case DialogWindow::RESULT_RIGHT_BUTTON: {
                    char url[(256+1) * sizeof(wchar_t)];
                    memset(url, 0, sizeof(url));

                    mURLProc.get_url(url, 256 * sizeof(wchar_t));

                    if (System::getChannelManager()->setupUrlJump(url)) {
                        mChanJumpCountdown = 0;
                        mState = STATE_CHN_WAIT_JUMP;
                    }

                    break;
                }
            }
        }

        void focus_object::stt_chn_wait_jump() {
            if ((mChanJumpCountdown += 1) > 10) {
                init_fadeout(true);

                mCurrentResult = RESULT_CHJUMP;
                mState = STATE_FADE_OUT;
            }
        }

        void focus_object::stt_opt_wait_select_msg() {
            switch (System::getDialog()->getLastResult()) {
                case DialogWindow::RESULT_TOP_BUTTON: {
                    System::getDialog()->callBtn2(MESG_BOARD_OPT_OUT_CONFIRM, MESG_CMN_OK, MESG_CMN_QUIT);
                    mState = STATE_OPT_WAIT_STOP_MSG;
                    break;
                }
                case DialogWindow::RESULT_MIDDLE_BUTTON: {
                    System::getDialog()->callBtn2(MESG_BOARD_OPT_OUT_CONFIRM, MESG_CMN_OK, MESG_CMN_QUIT);
                    mState = STATE_OPT_WAIT_ALL_STOP_MSG;
                    break;
                }
                case DialogWindow::RESULT_BOTTOM_BUTTON: {
                    show_cmn_btn();
                    get_button()->get_opt_out_btn()->reset_gui();

                    mState = STATE_NORMAL;

                    break;
                }
            }
        }

        void focus_object::stt_opt_wait_stop_msg() {
            switch (System::getDialog()->getLastResult()) {
                case DialogWindow::RESULT_RIGHT_BUTTON: {
                    mNwc24ErrCountdown = 0;
                    mState = STATE_OPT_DELETE_TASK;

                    break;
                }
                case DialogWindow::RESULT_LEFT_BUTTON: {
                    show_cmn_btn();
                    get_button()->get_opt_out_btn()->reset_gui();

                    mState = STATE_NORMAL;

                    break;
                }
            }
        }

        void focus_object::stt_opt_wait_all_stop_msg() {
            switch (System::getDialog()->getLastResult()) {
                case DialogWindow::RESULT_RIGHT_BUTTON: {
                    mNwc24ErrCountdown = 0;
                    mState = STATE_OPT_DELETE_ALL_TASK;

                    break;
                }
                case DialogWindow::RESULT_LEFT_BUTTON: {
                    show_cmn_btn();
                    get_button()->get_opt_out_btn()->reset_gui();

                    mState = STATE_NORMAL;

                    break;
                }
            }
        }

        void focus_object::stt_opt_delete_task() {
            nwc24::Manager* nwc24Mgr = System::getNwc24Manager();

            if (nwc24Mgr->open()) {
                NWC24DlId dlId = 0;

                NWC24Err err = NWC24IterateDlTask(&dlId, TRUE);
                while (err >= NWC24_OK) {
                    NWC24DlTask dlTask;
                    if (nwc24Mgr->getDlTask(&dlTask, dlId)) {
                        u32 dlAppId = 0;
                        u8 dlOptOutFlags = 0;

                        nwc24Mgr->getDlOptOutFlags(&dlTask, &dlOptOutFlags);
                        nwc24Mgr->getDlAppId(&dlTask, &dlAppId);

                        if (dlOptOutFlags && dlAppId == mpBoardObj->mCDBGameCode) {
                            nwc24Mgr->deleteDlTask(&dlTask);
                        }
                    }
                    err = NWC24IterateDlTask(&dlId, FALSE);
                }

                nwc24Mgr->close();
                System::getDialog()->callBtn1(MESG_BOARD_OPT_OUT_DONE, MESG_CMN_OK);
                mState = STATE_OPT_WAIT_CONFIRM_MSG;
            }
            else {
                check_delete_task_failure();
            }
        }

        void focus_object::stt_opt_delete_all_task() {
            nwc24::Manager* nwc24Mgr = System::getNwc24Manager();

            if (nwc24Mgr->open()) {
                NWC24DlId dlId = 0;

                NWC24Err err = NWC24IterateDlTask(&dlId, TRUE);
                while (err >= NWC24_OK) {
                    NWC24DlTask dlTask;
                    if (nwc24Mgr->getDlTask(&dlTask, dlId)) {
                        u32 dlAppId = 0;
                        u8 dlOptOutFlags = 0;

                        nwc24Mgr->getDlOptOutFlags(&dlTask, &dlOptOutFlags);
                        nwc24Mgr->getDlAppId(&dlTask, &dlAppId);

                        if (dlOptOutFlags) {
                            nwc24Mgr->deleteDlTask(&dlTask);
                        }
                    }
                    err = NWC24IterateDlTask(&dlId, FALSE);
                }

                nwc24Mgr->close();
                System::getDialog()->callBtn1(MESG_BOARD_OPT_OUT_DONE_ALL, MESG_CMN_OK);
                mState = STATE_OPT_WAIT_CONFIRM_MSG;
            }
            else {
                check_delete_task_failure();
            }
        }

        void focus_object::stt_opt_wait_confirm_msg() {
            if (System::getDialog()->getLastResult() != DialogWindow::RESULT_NONE) {
                show_cmn_btn();

                get_button()->get_opt_out_btn()->reset_gui();

                mState = STATE_NORMAL;
            }
        }

        void focus_object::stt_net_wait_net_setting_msg() {
            switch (System::getDialog()->getLastResult()) {
                case DialogWindow::RESULT_LEFT_BUTTON: {
                    mState = mPrevState;

                    break;
                }
                case DialogWindow::RESULT_RIGHT_BUTTON: {
                    SCParentalControlsInfo pcInfo;
                    BOOL result = SCGetParentalControl(&pcInfo);

                    if ((result && (pcInfo.enable & SC_PARENTAL_FLAG_ENABLED)) ? TRUE : FALSE) {
                        get_button()->setEventHandler(NULL);
                        get_button()->animation(Button::IDANIM_DISAPPEAR_LEFT_AND_RIGHT_BUTTON);

                        mbParentalSuccess = false;
                        mFinalResult = RESULT_PARENTAL_REQ;
                        mCurrentResult = RESULT_INTERNET_SETTING;

                        mPrevState = mState;
                        mState = STATE_NET_WAIT_PARENTAL;
                    }
                    else {
                        mFinalResult = RESULT_INTERNET_SETTING;
                        mState = STATE_DONE;
                    }

                    break;
                }
            }
        }

        void focus_object::stt_net_wait_nwc_setting_msg() {
            switch (System::getDialog()->getLastResult()) {
                case DialogWindow::RESULT_LEFT_BUTTON: {
                    mState = mPrevState;
                    break;
                }
                case DialogWindow::RESULT_RIGHT_BUTTON: {
                    mFinalResult = RESULT_INTERNET_PAGE;
                    mState = STATE_DONE;
                    break;
                }
            }
        }

        void focus_object::stt_net_wait_parental_scene() {
            ParentalDialog* parentalDialog = static_cast<ParentalDialog*>(System::getScene(SCENE_PARENTAL_DIALOG));

            if (parentalDialog != NULL) {
                switch (parentalDialog->getResult()) {
                    case ParentalDialog::RESULT_SUCCESS: {
                        mbParentalSuccess = true;
                        mState = STATE_NET_WAIT_PARENTAL_DST;
                        break;
                    }
                    case ParentalDialog::RESULT_OVER_ATTEMPTS:
                    case ParentalDialog::RESULT_CANCELLED: {
                        mbParentalSuccess = false;
                        mState = STATE_NET_WAIT_PARENTAL_DST;
                        break;
                    }
                    default: {
                        break;
                    }
                }
            }
        }

        void focus_object::stt_net_wait_parental_scene_dst() {
            ParentalDialog* parentalDialog = static_cast<ParentalDialog*>(System::getScene(SCENE_PARENTAL_DIALOG));

            if (parentalDialog == NULL) {
                if (mbParentalSuccess) {
                    mFinalResult = mCurrentResult;
                    mCurrentResult = RESULT_NONE;

                    mState = STATE_DONE;
                }
                else {
                    show_cmn_btn();

                    get_button()->setEventHandler(&mButtonEvent, &mOptOutEvent);
                    mState = mPrevState;
                }
            }
        }

        void focus_object::proc_input() {
            controller::Interface* con = System::getMasterController();

            if (mScroller.isActive()) {
                scale_up_or_down_arw();
                if (mScroller.getBInst().isActive() ? false : true) {
                    if (con->down(controller::BTN_UP)) {
                        mScroller.scrollUpByCon();
                    }
                    else if (con->down(controller::BTN_DOWN)) {
                        mScroller.scrollDownByCon();
                    }
                }
            }
        }

        void focus_object::proc_url_jump() {
            for (int i = 0; i < WPAD_MAX_CONTROLLERS; i++) {
                controller::Interface* con = System::getController(i);
                int focused = mURLProc.get_focused_tagno(i);

                if (con != NULL && focused >= 0) {
                    if (!mbHoveredURL[i]) {
                        snd::getSystem()->startSE("WIPL_SE_BT_TARGETTING");
                        con->rumble();

                        mbHoveredURL[i] = true;
                    }

                    if (con->downTrg(controller::BTN_INTERACT)) {
                        mURLProc.select(focused);
                        snd::getSystem()->startSE("WIPL_SE_DECIDE");

                        if (System::getChannelManager()->isEnableUrlJump()) {
                            System::getDialog()->callBtn2(MESG_BOARD_CHJUMP_CONFIRM, MESG_CMN_OK, MESG_CMN_QUIT);
                            hide_cmn_btn();

                            if (mpSoundData != NULL) {
                                snd::getBannerPlayer()->stop(30);
                            }

                            mState = STATE_CHN_WAIT_MSG;
                        }
                        else {
                            System::getDialog()->callBtn1(MESG_BOARD_CHJUMP_NO_OPERA, MESG_CMN_OK);
                            mNextState = STATE_NORMAL;
                            mPrevState = mState;
                            mState = STATE_WAIT_MSG;
                        }
                    }
                }
                else {
                    mbHoveredURL[i] = false;
                }
            }
        }

        void focus_object::draw() {
            math::VEC3 translate(mpLayout->FindPaneByName("N_Memo")->GetTranslate());

            mURLProc.clear_prev_drawing();
            mURLProc.setUnk_0x44(translate.y);

            bool result = false;
            if (mState == STATE_NORMAL && mScroller.is_busy() == FALSE) {
                result = true;
            }
            mURLProc.setUnk_0x53(result);

            if (translate.y < 500.0f) {
                mpLayout->draw("N_Header");
            }

            f32 curDrawPos = 0.0f;
            nw4r::lyt::Pane* pane = mpLayout->FindPaneByName("N_Body");
            f32 bodyHeight = pane->GetSize().height;

            for (int i = 0; i < mLineCount; i++) {
                if (-500.0f < translate.y + curDrawPos && translate.y + curDrawPos < 500.0f) {
                    pane->SetTranslate(nw4r::math::VEC2(0.0f, curDrawPos));
                    pane->CalculateMtx(*mpLayout->getDrawInfo());
                    mpLayout->draw(pane);
                }

                curDrawPos -= bodyHeight;
            }

            curDrawPos += bodyHeight;
            pane = mpLayout->FindPaneByName("N_Footer");

            if (-500.0f < translate.y + curDrawPos) {
                pane->SetTranslate(nw4r::math::VEC2(0.0f, curDrawPos));
                pane->CalculateMtx(*mpLayout->getDrawInfo());
                mpLayout->draw(pane);
            }

            if (mpBoardObj->mpNigaoe != NULL && mpBoardObj->mpNigaoe->created()) {
                mpLayout->draw("Nigaoe");
            }

            mpLayout->draw("T_Letter");
            mpLayout->draw("N_TopBtn");

            if (mpBoardObj->mbCreatedPic) {
                mpLayout->draw("PicMask");
                mpLayout->draw("N_Pic");
            }

            mpNigaoeBalloon->draw();

            if (mpLayout->FindPaneByName("ReplyMask") != NULL) {
                mpLayout->draw("ReplyMask");
            }

            if (!mURLProc.getUnk_0x50()) {
                mURLProc.setUnk_0x50(1);
            }
        }

        BOOL focus_object::is_finished_fadein() const {
            BOOL result = FALSE;
            if (!mFadeAnim.isPlaying() && !mpLayout->getAnim(ANIM_SELECT)->isPlaying()) {
                result = TRUE;
            }
            return result;
        }

        BOOL focus_object::is_finished_fadeout() const {
            BOOL result = FALSE;
            if (!mFadeAnim.isPlaying() && !mpLayout->getAnim(ANIM_EXIT)->isPlaying()) {
                result = TRUE;
            }
            return result;
        }

        void focus_object::init_normal() {
            mpLayout->getAnim(ANIM_ARROW_RIGHT_APPEAR)->initAnmFrame();
            mpLayout->getAnim(ANIM_ARROW_LEFT_APPEAR)->initAnmFrame();

            if (!mScroller.isDownEnd()) {
                show_darw();
            }

            if (mpSoundData != NULL) {
                mSoundTimer.set_msec(300);
                snd::getSystem()->muteOnBGM(5);
            }

            mState = STATE_NORMAL;
        }

        void focus_object::init_fadeout(bool keepBtn) {
            mFadeAnim.playBackwards();

            mpLayout->getAnim(ANIM_EXIT)->play();
            mpBoardObj->mpLayout->getAnim(ANIM_ARROW_RIGHT_FOCUS_OFF)->play();

            get_button()->setEventHandler(NULL);

            if (!keepBtn) {
                hide_cmn_btn();
            }

            get_button()->reserveAnm(Button::IDANIM_APPEAR_BOARD_BUTTON);

            mFinalResult = RESULT_CLOSE;
        }

        void focus_object::make_layout(nand::LayoutFile* layoutFile) {
            int type = mpBoardObj->mLetterType;
            RBRHeader* recordHdr = (RBRHeader*)mpBoardObj->mpRecordData;
            const char** animNames = mAnimNames[type];

            mpLayout = new(System::getMem2App(), 4) layout::Object(System::getMem2App(), layoutFile, "arc", animNames[0]);

            // Letter
            mpLayout->bind(animNames[1+ANIM_SELECT]);
            mpLayout->bind(animNames[1+ANIM_EXIT], false);

            // Right arrows
            mpLayout->bindToGroup(animNames[1+ANIM_ARROW_LOOP], "G_ArwRoop", false, false);
            mpLayout->bindToGroup(animNames[1+ANIM_ARROW_FOCUS_ON], "G_ArwR_Focus", false, false);
            mpLayout->bindToGroup(animNames[1+ANIM_ARROW_FOCUS_OFF], "G_ArwR_Focus", false, false);
            mpLayout->bindToGroup(animNames[1+ANIM_ARROW_SELECT], "G_ArwR_Ac", false, false);
            mpLayout->bindToGroup(animNames[1+ANIM_ARROW_APPEAR], "G_ArwR_End", false, false);
            mpLayout->bindToGroup(animNames[1+ANIM_ARROW_LOST], "G_ArwR_End", false, false);
            mpLayout->bindToGroup(animNames[1+ANIM_ARROW_HD_AC_START], "G_ArwR_HDAc", false, false);
            mpLayout->bindToGroup(animNames[1+ANIM_ARROW_HD_AC_END], "G_ArwR_HDAc", false, false);

            // Left arrow
            mpLayout->bindToGroup(animNames[1+ANIM_ARROW_LOOP], "G_ArwRoop", false, false);
            mpLayout->bindToGroup(animNames[1+ANIM_ARROW_FOCUS_ON], "G_ArwL_Focus", false, false);
            mpLayout->bindToGroup(animNames[1+ANIM_ARROW_FOCUS_OFF], "G_ArwL_Focus", false, false);
            mpLayout->bindToGroup(animNames[1+ANIM_ARROW_SELECT], "G_ArwL_Ac", false, false);
            mpLayout->bindToGroup(animNames[1+ANIM_ARROW_APPEAR], "G_ArwL_End", false, false);
            mpLayout->bindToGroup(animNames[1+ANIM_ARROW_LOST], "G_ArwL_End", false, false);
            mpLayout->bindToGroup(animNames[1+ANIM_ARROW_HD_AC_START], "G_ArwL_HDAc", false, false);
            mpLayout->bindToGroup(animNames[1+ANIM_ARROW_HD_AC_END], "G_ArwL_HDAc", false, false);

            if (type == BoardObject::TYPE_LETTER) {
                mpLayout->bindToGroup("my_LetterL_Reply.brlan", "G_Reply", false, false);
                mpLayout->bindToGroup("my_LetterL_ReplyBack.brlan", "G_Reply", false, false);
                mpLayout->bindToGroup("my_LetterL_PicReply.brlan", "G_Reply", false, false);
                mpLayout->bindToGroup("my_LetterL_PicReplyBack.brlan", "G_Reply", false, false);
                mpLayout->bindToGroup("my_LetterL_PicFocusIn.brlan", "G_Pic", false, false);
                mpLayout->bindToGroup("my_LetterL_PicFocusOut.brlan", "G_Pic", false, false);
                mpLayout->bindToGroup("my_LetterL_SelectPic.brlan", "G_Pic", false, false);
                mpLayout->bindToGroup("my_LetterL_ExitPic.brlan", "G_Pic", false, false);
            }

            mpLayout->finishBinding();

            const wchar_t* pStr;

            /* HEADER */

            wchar_t nullStr[2] = L"";

            switch (type) {
                case BoardObject::TYPE_MEMO: {
                    pStr = System::getMessage(MESG_TEXTWRITER_HEADER);
                    break;
                }
                default: {
                    if (recordHdr->titleOffset != 0) {
                        pStr = (wchar_t*)((u8*)mpBoardObj->mpRecordData + recordHdr->titleOffset);
                    }
                    else {
                        pStr = nullStr;
                    }
                    break;
                }
            }

            utility::layout::set_string(mpLayout->FindPaneByName("T_Header"), pStr);

            /* BODY */

            pStr = (wchar_t*)((u8*)mpBoardObj->mpRecordData + recordHdr->bodyOffset);

            if (recordHdr->bodyOffset != 0 && *pStr != 0) {
                make_parsed_text(pStr);
                utility::layout::set_string(mpLayout->FindPaneByName("T_Letter"), mpParsedText);

                nw4r::lyt::Pane* bodyPane = mpLayout->FindPaneByName("N_Body");
                nw4r::ut::Rect textRect = mpLayout->getTextDrawRect("T_Letter");
                mLineCount = ceilf(-textRect.GetHeight() / bodyPane->GetSize().height);
            }
            else {
                utility::layout::set_string(mpLayout->FindPaneByName("T_Letter"), nullStr);

                mLineCount = 1;
            }

            nw4r::lyt::Pane* nigaoePane = mpLayout->FindPaneByName("Nigaoe");
            if (recordHdr->faceOffset != 0 && mpBoardObj->mpNigaoe != NULL && mpBoardObj->mpNigaoe->created()) {
                nigaoePane->SetVisible(true);
                utility::layout::set_texture(nigaoePane->GetMaterial(), mpBoardObj->mpNigaoe->getIconTexture());
            }
            else {
                nigaoePane->SetVisible(false);
            }

            for (int i = 0; i < RBR_ATTACHMENT_MAX; i++) {
                RBRAttachment* attach = &recordHdr->attach[i];
                switch (attach->type) {
                    case RBRAttachmentType_MsgBoard: {
                        make_lettertex(attach);
                        init_chanjump(attach);
                        init_sound(attach);
                        break;
                    }
                    case RBRAttachmentType_Picture: {
                        make_picture(attach);
                        break;
                    }
                    default: {
                        break;
                    }
                }
            }
        }

        void focus_object::make_gui_mgr() {
            nw4r::lyt::Pane* trigPane;

            mpGui = new(System::getMem2App(), 4) gui::PaneManager(&mEvent, mpLayout->getDrawInfo(), NULL, &mGUIAlloc);
            mpGui->setupScene(mpLayout);
            mpGui->setAllComponentTriggerTarget(false);

            trigPane = mpLayout->FindPaneByName("B_Pic");
            if (trigPane != NULL) {
                mpGui->setTriggerTarget(trigPane, true);
            }
            trigPane = mpLayout->FindPaneByName("B_ArwR");
            if (trigPane != NULL) {
                mpGui->setTriggerTarget(trigPane, true);
            }
            trigPane = mpLayout->FindPaneByName("B_ArwL");
            if (trigPane != NULL) {
                mpGui->setTriggerTarget(trigPane, true);
            }
            trigPane = mpLayout->FindPaneByName("B_Nigaoe");
            if (trigPane != NULL) {
                mpGui->setTriggerTarget(trigPane, true);
            }
        }

        void focus_object::make_parsed_text(const wchar_t* inText) {
            mpParsedText = new(System::getMem2App(), 4) wchar_t[PARSED_TEXT_LENGTH];
            memset(mpParsedText, 0, PARSED_TEXT_LENGTH * sizeof(wchar_t));

            const wchar_t *pURLStr, *pStr = inText;
            const wchar_t URLSep[2] = { 0x1A,  0x00 };

            u32 i = 0;
            u32 strLen = wcslen(inText);

            while (i != strLen) {
                if (inText[i] == L'h' && (pURLStr = &inText[i], is_url_protocol(pURLStr))) {
                    unk_0x114[5] = 0;

                    if (pURLStr != pStr) {
                        check_paren(pURLStr[-1]);
                    }

                    wcsncat(mpParsedText, inText, i);

                    i = get_url_end(pURLStr);
                    wcsncat(mpParsedText, URLSep, 1);
                    wcsncat(mpParsedText, pURLStr, i);
                    wcsncat(mpParsedText, URLSep, 1);
                    inText = &pURLStr[i];

                    strLen = wcslen(inText);
                    i = 0;
                }
                else {
                    i++;
                }
            }

            wcsncat(mpParsedText, inText, i);
        }
        
        BOOL focus_object::is_url_end_code(wchar_t ch) const {
            bool result = FALSE;
            for (int i = 0; i < ARRSIZE(unk_0x114); i++) {
                result |= ((unk_0x114[i]-ch) == 0);
            }
            return result;
        }

        BOOL focus_object::is_url_protocol(const wchar_t* url) const {
            BOOL result = FALSE;

            const wchar_t* cmp1 = L"http://";
            const wchar_t* cmp2 = L"https://";

            if (wcsncmp(url, cmp1, wcslen(cmp1)) == 0
            || wcsncmp(url, cmp2, wcslen(cmp2)) == 0) {
                result = TRUE;
            }
            return result;
        }

        DECOMP_FORCE_ACTIVE(iplFocusObject_cpp, L".html");
        DECOMP_FORCE_ACTIVE(iplFocusObject_cpp, L".htm");
        DECOMP_FORCE_ACTIVE(iplFocusObject_cpp, L".shtml");
        DECOMP_FORCE_ACTIVE(iplFocusObject_cpp, L".shtm");
        DECOMP_FORCE_ACTIVE(iplFocusObject_cpp, L".cgi");
        DECOMP_FORCE_ACTIVE(iplFocusObject_cpp, L".php");
        DECOMP_FORCE_ACTIVE(iplFocusObject_cpp, L".asp");
        DECOMP_FORCE_ACTIVE(iplFocusObject_cpp, L".jsp");

        int focus_object::get_url_end(const wchar_t* url) const {
            int i;
            for (i = 0; !is_url_end_code(url[i]) && !is_buffer_over(url, i+1); i++) {}
            return i;
        }

        BOOL focus_object::is_buffer_over(const wchar_t* text, u32 textLen) const {
            BOOL result = FALSE;
            s32 srcSize = textLen;
            s32 dstSize = 0;

            if (ENCConvertStringUtf16ToUtf8(NULL, &dstSize, (const u16*)text, &srcSize) != ENC_OK || dstSize >= 0x200) {
                result = TRUE;
            }

            return result;
        }

        void focus_object::check_paren(wchar_t ch) {
            wchar_t patterns[] = { L'(', L')',
                                         L'{', L'}',
                                         L'[', L']',
                                         L'<', L'>',
                                         L'［', L'］',
                                         L'（', L'）',
                                         L'｛', L'｝',
                                         L'＜', L'＞',
                                         L'《', L'》',
                                         L'【', L'】',
                                         L'〔', L'〕',
                                         L'「', L'」',
                                         L'『', L'』'};

            for (int i = 0; i < ARRSIZE(patterns); i += 2) {
                if (ch == patterns[i]) {
                    unk_0x114[5] = patterns[i];
                    break;
                }
            }
        }

        void focus_object::make_lettertex(RBRAttachment* attach) {
            ARCHandle arc;
            ARCFileInfo arcFile;

            u8* attachData = (u8*)(mpBoardObj->mpRecordData + attach->offset);

            if (mpBoardObj->arc_init_handle(attachData, &arc) && ARCOpen(&arc, "./letter_LZ.bin", &arcFile)) {
                mpCmpArcData = attachData + ARCGetStartOffset(&arcFile);
                mArcLength = ARCGetLength(&arcFile);
                ARCClose(&arcFile);
            }

            u32* cmpData = (u32*)mpCmpArcData;

            if (cmpData != NULL && CXGetCompressionType(cmpData) == CX_COMPRESSION_TYPE_LZ) {
                u32 uncompSize = CXGetUncompressedSize(cmpData);
                if (uncompSize != 0 && uncompSize < 0x64000) {
                    mpArcData = new(System::getMem2App(), DEFAULT_ALIGN) u8[uncompSize];

                    if (mpArcData != NULL) {
                        if (CXSecureUncompressLZ(mpCmpArcData, mArcLength, mpArcData) == CX_SECURE_ERR_OK) {
                            DCStoreRange(mpArcData, uncompSize);
                            change_ltrtex();
                        }
                        else {
                            delete[] mpArcData;
                            mpArcData = NULL;
                        }
                    }
                }
            }
        }

        void focus_object::init_chanjump(RBRAttachment* attach) {
            u8* pArc = (u8*)(mpBoardObj->mpRecordData + attach->offset);
            nwc24::Manager* nwc24Mgr = System::getNwc24Manager();

            ARCHandle arc;

            if (mpBoardObj->arc_init_handle(pArc, &arc)) {
                ARCFileInfo arcFile;

                if (ARCOpen(&arc, "./chjump.bin", &arcFile)) {
                    mpChJpData = (NWC24CHJumpObj*)((u8*)pArc + ARCGetStartOffset(&arcFile));

                    if (nwc24Mgr->checkCHJumpObj(mpChJpData, ARCGetLength(&arcFile))) {
                        u64 titleId = 0;
                        nwc24Mgr->getCHJumpTitleId(mpChJpData, &titleId);
                        mbChanJump = System::getChannelManager()->hasChannel(titleId) != FALSE;
                    }
                }
            }
        }

        BOOL focus_object::setup_chanjump() {
            char blockData[NWC24_MAX_CHJP_SIZE+2/*?*/];
            u32 blockSize;

            memset(blockData, 0, sizeof(blockData));

            if (mpChJpData->numBlocks != 0) {
                nwc24::Manager* nwc24Mgr = System::getNwc24Manager();

                if (nwc24Mgr->getCHJumpBlockSize(mpChJpData, &blockSize, 0)) {
                    if (blockSize > NWC24_MAX_CHJP_SIZE) {
                        blockSize = NWC24_MAX_CHJP_SIZE;
                    }

                    if (!nwc24Mgr->getCHJumpBlockData(mpChJpData, blockData, blockSize, 0)) {
                        memset(blockData, 0, sizeof(blockData));
                    }
                }
            }

            return System::getChannelManager()->setupChannelJump(mpChJpData->titleId, blockData);
        }

        void focus_object::change_ltrtex() {
            ARCHandle arc;

            if (mpBoardObj->arc_init_handle(mpArcData, &arc)) {
                ARCFileInfo arcFile;

                for (int i = 0; i < (int)ARRSIZE(scChangeTexFile); i++) {
                    if (ARCOpen(&arc, scChangeTexFile[i].file, &arcFile)) {
                        TPLPalette* tplData = (TPLPalette*)((u8*)mpArcData + ARCGetStartOffset(&arcFile));
                        u32 tplSize = ARCGetLength(&arcFile);

                        mpBoardObj->change_tex(mpLayout, scChangeTexFile[i].s_pane, tplData, tplSize);
                        mpBoardObj->change_tex(mpLayout, scChangeTexFile[i].pane, tplData, tplSize);

                        ARCClose(&arcFile);
                    }
                }
            }
        }

        void focus_object::make_picture(RBRAttachment* attach) {
            u8* picData = (u8*)(mpBoardObj->mpRecordData + attach->offset);

            if (mpBoardObj->create_picture(&mPicture, System::getTreasureHeap(), System::getMem2App(), picData, attach->size+4)) {
                nw4r::lyt::Pane* pane = mpLayout->FindPaneByName("Pic");
                pane->GetMaterial()->SetTexture(GX_TEXMAP0, mPicture.texObj);
                resize_pane(pane);
            }
        }

        void focus_object::init_sound(RBRAttachment* attach) {
            u8* pArc = (u8*)(mpBoardObj->mpRecordData + attach->offset);

            ARCHandle arc;

            if (mpBoardObj->arc_init_handle(pArc, &arc)) {
                ARCFileInfo arcFile;

                const char* soundFileList[] = {
                    "sound.bns",
                    "sound.wav",
                    "sound.aif",
                    "sound.aiff"
                };

                for (int i = 0; i < (int)ARRSIZE(soundFileList); i++) {
                    if (ARCOpen(&arc, soundFileList[i], &arcFile)) {
                        mpSoundData = (u8*)(pArc + ARCGetStartOffset(&arcFile));
                        mSoundSize = ARCGetLength(&arcFile);

                        if (snd::getSystem()->checkTmpSoundFile(mpSoundData, mSoundSize)) {
                            return;
                        }
                        else {
                            mpSoundData = NULL;
                            mSoundSize = 0;
                            return;
                        }
                    }
                }
            }
        }

        void focus_object::resize_pane(nw4r::lyt::Pane* pane) {
            f32 paneH, paneW;

            paneW = pane->GetSize().width;
            paneH = pane->GetSize().height;

            nw4r::lyt::Size newSize(paneW, paneH);
            nw4r::lyt::Size newSize2(paneW, paneH);

            if (mPicture.width != 0 && mPicture.height != 0) {
                if (mPicture.width > mPicture.height) {
                    f32 val = (paneW * mPicture.height) / mPicture.width;
                    newSize.height = val;
                    if (val > paneH) {
                        newSize.height = paneH;
                        newSize.width = paneW * (paneH / val);
                    }
                }
                else {
                    f32 val = (paneH * mPicture.width) / mPicture.height;
                    newSize.width = val;
                    if (val > paneW) {
                        newSize.width = paneW;
                        newSize.height = paneH * (paneW / val);
                    }
                }
                
                pane->SetSize(newSize);
            }
            return;
        }

        void focus_object::init(nand::LayoutFile* layoutFile) {
            init_balloon(layoutFile);
            init_scroller();
            init_url_proc();

            get_button()->setEventHandler(&mButtonEvent, &mOptOutEvent);

            mFadeAnim.init(ANIM_TYPE_FORWARD,
                           17.0f, 0.0f,
                           math::VEC3(mpBoardObj->mBoardPos.x, mpBoardObj->mBoardPos.y, 0.0f),
                           math::VEC3(0.0f, 0.0f, 0.0f));
            mFadeAnim.play();

            mpLayout->getAnim(ANIM_SELECT)->play();
            mpLayout->getAnim(ANIM_ARROW_RIGHT_LOOP)->play();
            mpLayout->getAnim(ANIM_ARROW_LEFT_LOOP)->play();

            snd::getSystem()->startSE("WIPL_SE_BOARD_SELECT");
        }

        void focus_object::init_balloon(nand::LayoutFile* layoutFile) {
            mpNigaoeBalloon = new(System::getMem2App(), 4) TextBalloon(System::getMem2App(), layoutFile, "arc", "my_IplTopBalloon_a.brlyt", math::VEC3(0.0f, 0.0f, 0.0f), 120.0f, 30.0f);
            
            wchar_t ngName[RFL_NAME_LENGTH+2];
            mpBoardObj->get_nigaoe_name(ngName, RFL_NAME_LENGTH+2);

            mpNigaoeBalloon->init(ngName);
            mpNigaoeBalloon->init_textbox();
        }

        math::VEC3 focus_object::calc_balloon_pos() const {
            math::VEC3 pos(0.0f, 0.0f, 0.0f);

            MTXMultVec(mpLayout->FindPaneByName("Nigaoe")->GetGlobalMtx(), pos, pos);

            // ugh
            f32 val = 50.0f;
            pos.y = pos.y + val;

            return pos;
        }

        void focus_object::init_scroller() {
            nw4r::lyt::Pane* header = mpLayout->FindPaneByName("N_Header");
            nw4r::lyt::Pane* body = mpLayout->FindPaneByName("N_Body");
            nw4r::lyt::Pane* footer = mpLayout->FindPaneByName("N_Footer");

            nw4r::ut::Rect projRect;
            System::getProjectionRect(&projRect);

            f32 limit = 160.0f + ((mLineCount * body->GetSize().height) + (header->GetSize().height + footer->GetSize().height) - projRect.GetHeight());
            if (limit < 0.0f) {
                limit = 0.0f;
            }

            mScroller.init();
            mScroller.setDownLimit(limit);
        }

        void focus_object::init_url_proc() {
            mURLProc.init();

            if (mpBoardObj->mLetterType == BoardObject::TYPE_MEMO) {
                mURLProc.setUnk_0x40(8.0f);
            }

            nw4r::lyt::TextBox* textPane = nw4r::ut::DynamicCast<nw4r::lyt::TextBox*>(mpLayout->FindPaneByName("T_Letter"));

            if (System::getChannelManager()->isEnableUrlJump() && mpBoardObj->mLetterType != BoardObject::TYPE_PLAYTIME) {
                textPane->SetTagProcessor(&mURLProc);
            }
        }

        void focus_object::show_uarw() {
            if (!mbShowUArw) {
                mpLayout->getAnim(ANIM_ARROW_RIGHT_APPEAR)->play();
                mbShowUArw = true;
            }
        }

        void focus_object::show_darw() {
            if (!mbShowDArw) {
                mpLayout->getAnim(ANIM_ARROW_LEFT_APPEAR)->play();
                mbShowDArw = true;
            }
        }

        void focus_object::hide_uarw() {
            if (mbShowUArw) {
                mpLayout->getAnim(ANIM_ARROW_RIGHT_LOST)->play();
                mbShowUArw = false;
            }
        }

        void focus_object::hide_darw() {
            if (mbShowDArw) {
                mpLayout->getAnim(ANIM_ARROW_LEFT_LOST)->play();
                mbShowDArw = false;
            }
        }

        void focus_object::show_or_hide_arw(bool showUArw, bool showDArw, bool hideUArw, bool hideDArw) {
            if (showUArw != true && hideUArw == true) {
                hide_uarw();
            }

            if (showUArw == true && hideUArw != true) {
                show_uarw();
            }

            if (showDArw != true && hideDArw == true) {
                hide_darw();
            }

            if (showDArw == true && hideDArw != true) {
                show_darw();
            }
        }

        void focus_object::scale_up_uarw() {
            if (!mbScaleUArw) {
                mpLayout->getAnim(ANIM_ARROW_LEFT_HC_AC_START)->play();
                mbScaleUArw = true;
            }
        }

        void focus_object::scale_up_darw() {
            if (!mbScaleDArw) {
                mpLayout->getAnim(ANIM_ARROW_RIGHT_HD_AC_START)->play();
                mbScaleDArw = true;
            }
        }

        void focus_object::scale_down_uarw() {
            if (mbScaleUArw) {
                mpLayout->getAnim(ANIM_ARROW_LEFT_HC_AC_END)->play();
                mbScaleUArw = false;
            }
        }

        void focus_object::scale_down_darw() {
            if (mbScaleDArw) {
                mpLayout->getAnim(ANIM_ARROW_RIGHT_HD_AC_END)->play();
                mbScaleDArw = false;
            }
        }

        void focus_object::scale_up_or_down_arw() {
            controller::Interface* con = System::getMasterController();

            if (mScroller.getBInst().isActive() ? false : true) {
                if (con->down(controller::BTN_UP)) {
                    scale_up_uarw();
                }
                if (!con->down(controller::BTN_UP)) {
                    scale_down_uarw();
                }
                if (con->down(controller::BTN_DOWN)) {
                    scale_up_darw();
                }
                if (!con->down(controller::BTN_DOWN)) {
                    scale_down_darw();
                }
            }
            else {
                if (mScroller.getBInst().isUp()) {
                    scale_up_uarw();
                }
                if (!mScroller.getBInst().isUp()) {
                    scale_down_uarw();
                }
                if (mScroller.getBInst().isDown()) {
                    scale_up_darw();
                }
                if (!mScroller.getBInst().isDown()) {
                    scale_down_darw();
                }
            }
        }

        void focus_object::show_cmn_btn() {
            Button* button = get_button();
            RBRRecordType recordType = mpBoardObj->mRecordType;
            u32 btnAnim;

            if (recordType == RBRRecordType_PlayTimeLog) {
                btnAnim = Button::IDANIM_APPEAR_LEFT_BUTTON;
            }
            else {
                bool result = false;

                if (recordType == RBRRecordType_SWUpdate) {
                    button->reserveText(Button::TEXT_RIGHT_BUTTON, MESG_BOARD_UPDATE);
                    result = true;
                }
                else if (mbChanJump) {
                    button->reserveText(Button::TEXT_RIGHT_BUTTON, MESG_CMN_START);
                    result = true;
                }
                else if (mpBoardObj->permit_reply()) {
                    button->reserveText(Button::TEXT_RIGHT_BUTTON, MESG_BOARD_REPLY);
                    result = true;
                }

                if (mpBoardObj->mOptOutFlag) {
                    if (result) {
                        btnAnim = Button::IDANIM_OPTOUT_IN_ALT;
                    }
                    else {
                        btnAnim = Button::IDANIM_OPTOUT_IN;
                    }
                }
                else {
                    btnAnim = Button::IDANIM_APPEAR_LEFT_AND_TRASH_BUTTON;
                    if (result) {
                        btnAnim = Button::IDANIM_APPEAR_ALL_BUTTONS;
                    }
                }
            }

            button->reserveAnm(btnAnim);
        }

        void focus_object::hide_cmn_btn() {
            Button* button = get_button();
            RBRRecordType recordType = mpBoardObj->mRecordType;
            u32 btnAnim;

            if (recordType == RBRRecordType_PlayTimeLog) {
                btnAnim = Button::IDANIM_DISAPPEAR_LEFT_BUTTON;
            }
            else {
                bool result = false;

                if (recordType == RBRRecordType_SWUpdate || mbChanJump || mpBoardObj->permit_reply()) {
                    result = true;
                }

                if (mpBoardObj->mOptOutFlag) {
                    if (result) {
                        btnAnim = Button::IDANIM_OPTOUT_OUT_ALT;
                    }
                    else {
                        btnAnim = Button::IDANIM_OPTOUT_OUT;
                    }
                }
                else {
                    btnAnim = Button::IDANIM_DISAPPEAR_LEFT_AND_TRASH_BUTTON;
                    if (result) {
                        btnAnim = Button::IDANIM_DISAPPEAR_ALL_BUTTONS;
                    }
                }
            }

            button->reserveAnm(btnAnim);
        }

        void focus_object::start_point_event(int btnNo, controller::Interface* con) {
            bool target = false;

            if (mbHovered[btnNo] == FALSE) {
                switch (btnNo) {
                    case BTN_ARROW_RIGHT: {
                        mpLayout->getAnim(ANIM_ARROW_RIGHT_FOCUS_ON)->play();
                        target = true;
                        break;
                    }
                    case BTN_ARROW_LEFT: {
                        mpLayout->getAnim(ANIM_ARROW_LEFT_FOCUS_ON)->play();
                        target = true;
                        break;
                    }
                    case BTN_PICTURE: {
                        if (mpBoardObj->mbCreatedPic) {
                            mpLayout->getAnim(ANIM_LETTER_PIC_FOCUS_IN)->play();
                            target = true;
                        }
                        break;
                    }
                    case BTN_NIGAOE: {
                        nigaoe::Object* nigaoe = mpBoardObj->mpNigaoe;

                        if (nigaoe != NULL && nigaoe->created()) {
                            mpNigaoeBalloon->setPos(calc_balloon_pos(), false, 0);
                            mpNigaoeBalloon->fadeinNoSetTextbox();

                            target = true;
                        }

                        break;
                    }
                }
            }

            mbHovered[btnNo]++;

            if (target) {
                snd::getSystem()->startSE("WIPL_SE_BT_TARGETTING");
                con->rumble();
            }
        }

        void focus_object::start_left_event(int btnNo) {
            if (mbHovered[btnNo] == TRUE) {
                switch (btnNo) {
                    case BTN_ARROW_RIGHT: {
                        mpLayout->getAnim(ANIM_ARROW_RIGHT_FOCUS_OFF)->play();
                        break;
                    }
                    case BTN_ARROW_LEFT: {
                        mpLayout->getAnim(ANIM_ARROW_LEFT_FOCUS_OFF)->play();
                        break;
                    }
                    case BTN_PICTURE: {
                        if (mpBoardObj->mbCreatedPic) {
                            mpLayout->getAnim(ANIM_LETTER_PIC_FOCUS_OUT)->play();
                        }
                        break;
                    }
                    case BTN_NIGAOE: {
                        nigaoe::Object* nigaoe = mpBoardObj->mpNigaoe;

                        if (nigaoe != NULL && nigaoe->created()) {
                            mpNigaoeBalloon->fadeout();
                        }
                        break;
                    }
                }
            }

            mbHovered[btnNo]--;
        }

        void focus_object::start_trig_event(int btnNo) {
            switch (btnNo) {
                case BTN_ARROW_RIGHT: {
                    if (!mScroller.is_busy()) {
                        mpLayout->getAnim(ANIM_ARROW_RIGHT_SELECT)->play();
                        mScroller.scrollUpByBtn();
                    }
                    break;
                }
                case BTN_ARROW_LEFT: {
                    if (!mScroller.is_busy()) {
                        mpLayout->getAnim(ANIM_ARROW_LEFT_SELECT)->play();
                        mScroller.scrollDownByBtn();
                    }
                    break;
                }
                case BTN_PICTURE: {
                    if (mpBoardObj->mbCreatedPic) {
                        if (get_button()->isActive() && !get_button()->hasReservedAnim()) {
                            hide_cmn_btn();

                            mpLayout->getAnim(ANIM_LETTER_SELECT_PIC)->play();
                            mScroller.scrollUpByBtn();

                            snd::getSystem()->startSE("WIPL_SE_PIC_ZOOM_IN");

                            mState = STATE_PIC_FADE_IN;
                        }
                    }
                    break;
                }
            }
        }

        int focus_object::get_button_no(const char* paneName) const {
            int result = -1;
            for (int i = 0; i < BTN_MAX; i++) {
                if (strcmp(mscButtonName[i], paneName) == 0) {
                    result = i;
                    break;
                }
            }
            return result;
        }

        void focus_object::reset_gui(int btnNo, int anim) {
            if (mbHovered[btnNo] != 0) {
                mbHovered[btnNo] = 0;

                mpLayout->getAnim(anim)->play();
            }

            mpGui->initPane(mpLayout->FindPaneByName(mscButtonName[btnNo]));
        }

        int focus_object::check_network() {
            int result = NETWORK_RESULT_ERROR;

            // NCD Check
            if (!ncd::NCDSetting::getConnectEnableFlag()) {
                System::getDialog()->callBtn2(MESG_NETWORK_NO_CONFIG, MESG_NETWORK_SETTINGS_BTN, MESG_CMN_QUIT);
                mState = STATE_WAIT_BTN;
                result = NETWORK_RESULT_FAIL;
                mNextState = STATE_NET_WAIT_NET_MSG;
                goto exit;
            }

            // WC24 Check
            if (!(SCGetWCFlags() & SC_WC_FLAGS_ENABLED)) {
                System::getDialog()->callBtn2(MESG_NETWORK_NO_WC24_CONFIG, MESG_NETWORK_SETTINGS_BTN, MESG_CMN_QUIT);
                result = NETWORK_RESULT_FAIL;
                mState = STATE_NET_WAIT_NWC_MSG;
                goto exit;
            }

            // Parental check
            if (is_parental_restriction()) {
                System::getDialog()->callBtn1(MESG_NETWORK_PARENTAL_RESTRICT, MESG_CMN_OK);
                mState = STATE_WAIT_MSG;
                result = NETWORK_RESULT_FAIL;
                mNextState = mPrevState;
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
                    set_err_msg(errStr, sizeof(errStr)/sizeof(wchar_t), MESG_ERROR_NWC24_NETWORK, errorCode);

                    System::getDialog()->callBtn1(errStr, MESG_CMN_OK);
                    mState = STATE_WAIT_MSG;
                    result = NETWORK_RESULT_FAIL;
                    mNextState = mPrevState;
                    break;
                }
                case NWC24_ERR_FULL:
                case NWC24_ERR_SERVER: {
                    set_err_msg(errStr, sizeof(errStr)/sizeof(wchar_t), MESG_ERROR_NWC24_SERVER, errorCode);

                    System::getDialog()->callBtn1(errStr, MESG_CMN_OK);
                    mState = STATE_WAIT_MSG;
                    result = NETWORK_RESULT_FAIL;
                    mNextState = mPrevState;
                    break;
                }
                default: {
                    result = NETWORK_RESULT_SUCCESS;
                    break;
                }
            }

            System::getNwc24Manager()->close();
exit:
            return result;
        }

        void focus_object::check_network_for_news() {
            if (!ncd::NCDSetting::getConnectEnableFlag()) {
                System::getDialog()->callBtn2(MESG_NETWORK_NO_CONFIG, MESG_NETWORK_SETTINGS_BTN, MESG_CMN_QUIT);
                mPrevState = STATE_NORMAL;
                mState = STATE_WAIT_BTN;
                mNextState = STATE_NET_WAIT_NET_MSG;
                goto exit;
            }

            SCParentalControlsInfo pcInfo;

            BOOL pcResult = SCGetParentalControl(&pcInfo);

            bool result = false;
            if (pcResult && (pcInfo.enable & SC_PARENTAL_FLAG_ENABLED)) {
                result = true;
            }

            if (result) {
                get_button()->setEventHandler(NULL, NULL);

                hide_cmn_btn();

                mbParentalSuccess = false;
                mFinalResult = RESULT_PARENTAL_REQ;
                mCurrentResult = RESULT_SW_UPDATE;
                mPrevState = mState;
                mState = STATE_NET_WAIT_PARENTAL;
            }
            else {
                mFinalResult = RESULT_SW_UPDATE;
                mState = STATE_DONE;
            }

exit:
            return;
        }

        void focus_object::set_err_msg(wchar_t* outErrMsg, u32 outErrMsgLen, u32 errMsgId, s32 nwc24Err) {
            memset(outErrMsg, 0, outErrMsgLen * sizeof(wchar_t));

            wcsncat(outErrMsg, System::getMessage(MESG_ERROR_CODE), outErrMsgLen - wcslen(outErrMsg));

            wchar_t nwc24ErrStr[32];
            memset(nwc24ErrStr, 0, sizeof(nwc24ErrStr));
            swprintf(nwc24ErrStr, sizeof(nwc24ErrStr)/sizeof(wchar_t), L"%06d\n", nwc24Err);
            wcsncat(outErrMsg, nwc24ErrStr, outErrMsgLen - wcslen(outErrMsg));

            wcsncat(outErrMsg, System::getMessage(errMsgId), outErrMsgLen - wcslen(outErrMsg));
        }

        BOOL focus_object::is_parental_restriction() const {
            SCParentalControlsInfo pcInfo;

            bool result2 = false;
            BOOL pcResult = SCGetParentalControl(&pcInfo);

            bool result = false;
            if (pcResult && (pcInfo.enable & SC_PARENTAL_FLAG_ENABLED)) {
                result = true;
            }

            if (result && (SCGetNetContentRestrictions() & SC_NET_RESTRICTIONS_MSG_BOARD)) {
                result2 = true;
            }

            return result2;
        }

        void focus_object::check_delete_task_failure() {
            if ((mNwc24ErrCountdown += 1) > 300) {
                System::getDialog()->callBtn1(MESG_BOARD_NWC24_DELETE_FAIL, MESG_CMN_OK);
                mState = STATE_OPT_WAIT_CONFIRM_MSG;
            }
        }

        Button* focus_object::get_button() {
            return static_cast<Button*>(System::getScene(SCENE_BUTTON));
        }

        void event::onEvent(u32 compId, u32 event, void* data) {
            gui::PaneComponent* component = static_cast<gui::PaneComponent*>(mpManager->getComponent(compId));
            const char* paneName = component->getPane()->GetName();
            int btnNo = mpInstance->get_button_no(paneName);

            controller::Interface* con = reinterpret_cast<controller::Interface*>(data);

            switch (event) {
                // Pointer on button
                case ::gui::EventHandler::ON_POINT: {
                    if (con != NULL && btnNo != -1) {
                        mpInstance->start_point_event(btnNo, con);
                    }
                    break;
                }
                // Pointer not on button anymore
                case ::gui::EventHandler::ON_LEFT: {
                    if (btnNo != -1) {
                        mpInstance->start_left_event(btnNo);
                    }
                    break;
                }
                // Pointer click on button
                case ::gui::EventHandler::ON_TRIG: {
                    if (con != NULL && btnNo != -1 && con->downTrg(controller::BTN_INTERACT)) {
                        mpInstance->start_trig_event(btnNo);
                    }
                    break;
                }
            }
        }

        void button_event::onEventDerived(u32 compId, u32 event, const controller::Interface* con) {
            gui::PaneComponent* component = static_cast<gui::PaneComponent*>(mpManager->getComponent(compId));
            const char* paneName = component->getPane()->GetName();

            Button* button = focus_object::get_button();

            if (event == ::gui::EventHandler::ON_TRIG) {
                if (con->downTrg(controller::BTN_INTERACT)) {
                    if (Button::cmpButtonName(paneName, Button::BTN_EXIT) == 0) {
                        switch (mpInstance->mState) {
                            case focus_object::STATE_NORMAL: {
                                button->animation(Button::IDANIM_SELECT_CALENDAR_EXIT);
                                snd::getSystem()->startSE("WIPL_SE_BOARD_UNSELECT");
                                mpInstance->mpNigaoeBalloon->terminate();

                                mpInstance->mState = focus_object::STATE_WAIT_BTN;
                                mpInstance->mNextState = focus_object::STATE_FADE_OUT;

                                if (mpInstance->mpSoundData != NULL) {
                                    snd::getBannerPlayer()->stop(30);
                                }
                                break;
                            }
                            case focus_object::STATE_PIC_NORMAL: {
                                button->animation(Button::IDANIM_SELECT_CALENDAR_EXIT);
                                snd::getSystem()->startSE("WIPL_SE_PIC_ZOOM_OUT");

                                mpInstance->mState = focus_object::STATE_WAIT_BTN;
                                mpInstance->mNextState = focus_object::STATE_PIC_FADE_OUT;
                                break;
                            }
                        }
                    }
                    else if (Button::cmpButtonName(paneName, Button::BTN_TRASH_DELETE) == 0) {
                        if (mpInstance->mState == focus_object::STATE_NORMAL) {
                            button->animation(Button::IDANIM_SELECT_TRASH_BUTTON);

                            mpInstance->scale_down_uarw();
                            mpInstance->scale_down_darw();

                            snd::getSystem()->startSE("WIPL_SE_BT_PUSH");

                            if (mpInstance->mpSoundData != NULL) {
                                snd::getBannerPlayer()->stop(30);
                            }

                            mpInstance->hide_cmn_btn();

                            mpInstance->mState = focus_object::STATE_WAIT_BTN;
                            mpInstance->mNextState = focus_object::STATE_DEL_WAIT_MSG;
                        }
                    }
                    else if (Button::cmpButtonName(paneName, Button::BTN_CREATE_R_BUTTON) == 0) {
                        bool result = false;

                        switch (mpInstance->mState) {
                            case focus_object::STATE_NORMAL: {
                                result = true;

                                button->reserveAnm(Button::IDANIM_SELECT_CREATE_R);
                                
                                if (mpInstance->mpBoardObj->mRecordType == RBRRecordType_SWUpdate) {
                                    mpInstance->check_network_for_news();
                                }
                                else {
                                    if (mpInstance->mbChanJump) {
                                        if (mpInstance->setup_chanjump()) {
                                            mpInstance->init_fadeout(false);
                                            mpInstance->mCurrentResult = focus_object::RESULT_CHJUMP;
                                            mpInstance->mState = focus_object::STATE_FADE_OUT;
                                        }
                                    }
                                    else {
                                        mpInstance->mNwc24ErrCountdown = 0;
                                        mpInstance->mPrevState = mpInstance->mState;
                                        mpInstance->mState = focus_object::STATE_LETTER_WAIT_NET;
                                    }
                                }
                                break;
                            }
                            case focus_object::STATE_PIC_NORMAL: {
                                result = true;

                                button->reserveAnm(Button::IDANIM_SELECT_CREATE_R);

                                mpInstance->mNwc24ErrCountdown = 0;
                                mpInstance->mPrevState = mpInstance->mState;
                                mpInstance->mState = focus_object::STATE_LETTER_WAIT_NET;
                                break;
                            }
                        }

                        if (result) {
                            snd::getSystem()->startSE("WIPL_SE_DECIDE");

                            if (mpInstance->mpSoundData != NULL) {
                                snd::getBannerPlayer()->stop(30);
                            }
                        }
                    }
                }
            }
        }

        void optout_button_event::onEventDerived(u32 compId, u32 event, const controller::Interface* con) {
            gui::PaneComponent* component = static_cast<gui::PaneComponent*>(mpManager->getComponent(compId));
            const char* paneName = component->getPane()->GetName();

            if (event == ::gui::EventHandler::ON_TRIG) {
                if (con->downTrg(controller::BTN_INTERACT)) {
                    if (strcmp(paneName, "B_Stop") == 0) {
                        if (mpInstance->mState == focus_object::STATE_NORMAL) {
                            focus_object::get_button()->animation(Button::IDANIM_OPTOUT_SELECT);

                            snd::getSystem()->startSE("WIPL_SE_DECIDE");

                            if (mpInstance->mpSoundData != NULL) {
                                snd::getBannerPlayer()->stop(30);
                            }

                            mpInstance->hide_cmn_btn();

                            mpInstance->mState = focus_object::STATE_WAIT_BTN;
                            mpInstance->mNextState = focus_object::STATE_OPT_WAIT_SELECT_MSG;
                        }
                    }
                }
            }
        }
    }
}
