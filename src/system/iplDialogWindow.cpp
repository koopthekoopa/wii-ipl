#include <revolution/gx.h>
#include <nw4r/lyt.h>

#include "system/iplDialogWindow.h"

#include "system/iplSystem.h"

#include "layout/iplGuiManager.h"

#include <cstring>

namespace ipl {
    /**
     * BtnB = Button 0 - Button on Btn1, Right button on Btn2, Top button on Btn3
     * BtnA = Button 1 - Left button on Btn2, Middle button on Btn3
     * BtnC = Button 2 - Bottom button on Btn3
     */

    char* DialogWindow::mscBtnName[3] = {
        "B_BtnB",
        #define BUTTON_ONE_MAX      1
        "B_BtnA",
        #define BUTTON_TWO_MAX      2
        "B_BtnC"
        #define BUTTON_THREE_MAX    3
    };

    enum {
        ANIM_DIALOG_IN = 0,
        ANIM_DIALOG_OUT,
        ANIM_FOCUS_BTN_B_ON,
        ANIM_FOCUS_BTN_B_OFF,
        ANIM_SELECT_BTN_B,
        ANIM_FOCUS_BTN_A_ON,
        ANIM_FOCUS_BTN_A_OFF,
        ANIM_SELECT_BTN_A,
    };

    enum {
        ANIM_BTN0_DIALOG_IN = 0,
        ANIM_BTN0_DIALOG_OUT,
        ANIM_BTN0_WAIT,
        ANIM_BTN0_PRORESS,
    };

    enum {
        ANIM_BTN3_DIALOG_IN = 0,
        ANIM_BTN3_DIALOG_OUT,
        ANIM_BTN3_FOCUS_BTN_B_ON,
        ANIM_BTN3_FOCUS_BTN_B_OFF,
        ANIM_BTN3_SELECT_BTN_B,
        ANIM_BTN3_FOCUS_BTN_A_ON,
        ANIM_BTN3_FOCUS_BTN_A_OFF,
        ANIM_BTN3_SELECT_BTN_A,
        ANIM_BTN3_FOCUS_BTN_C_ON,
        ANIM_BTN3_FOCUS_BTN_C_OFF,
        ANIM_BTN3_SELECT_BTN_C,
    };

    enum {
        DIALOG_PAGE_FADE_IN = 0,
        DIALOG_PAGE_FADE_OUT,
        DIALOG_PAGE_NORMAL,
    };

    #define DIALOG_BTN0_PROG_SPEED  2

    DialogWindow::DialogWindow(EGG::Heap* heap) :
    ::gui::EventHandler(),
    mState(DIALOG_STATE_READY),
    mResult(RESULT_NONE), mLastResult(RESULT_NONE),
    mDialogType(DIALOG_TYPE_NONE),
    mWaitTick(0),
    mbNextState(false),
    mbTerminated(false),
    mbSwapSound(false),
    mbIsProg(false), mbDoProgBar(false),
    mProgBarLen(0), mProgBarFrame(0),
    mpCurDialog(NULL),
    mpCustomLayout(NULL),
    mPageCount(-1), mCurPage(0),
    mbNoShade(false),
    mbHideBtnA(false) {
        EGG::Allocator* allocator = new(heap, CLASS_HEAP) EGG::Allocator(heap, CLASS_HEAP);
        nw4r::lyt::Layout::SetAllocator(allocator);

        init();

        mpLayoutFile = System::getDlgArc();

        // Dialog with no buttons
        mDialog[DIALOG_TYPE_BTN0].gLayout = new(heap, CLASS_HEAP) layout::Object(heap, mpLayoutFile, "arc", "my_DialogWindow_a0.brlyt");
        mDialog[DIALOG_TYPE_BTN0].gLayout->bindToGroup("my_DialogWindow_a0_DialogIn.brlan",  "G_InOut", false);
        mDialog[DIALOG_TYPE_BTN0].gLayout->bindToGroup("my_DialogWindow_a0_DialogOut.brlan", "G_InOut", false, false);
        mDialog[DIALOG_TYPE_BTN0].gLayout->bindToGroup("my_DialogWindow_a0_Wait.brlan",      "G_Wait",  false, false);
        mDialog[DIALOG_TYPE_BTN0].gLayout->bindToGroup("my_DialogWindow_a0_Progres.brlan",   "G_Prog",  false);
        mDialog[DIALOG_TYPE_BTN0].gLayout->FindPaneByName("Wait_00")->SetVisible(false);
        mDialog[DIALOG_TYPE_BTN0].gLayout->FindPaneByName("N_Prog")->SetVisible(false);
        mDialog[DIALOG_TYPE_BTN0].gLayout->finishBinding();
        mDialog[DIALOG_TYPE_BTN0].guiMgr = NULL;  // No user interaction for progress dialog

        // Dialog with one button
        mDialog[DIALOG_TYPE_BTN1].gLayout = new(heap, CLASS_HEAP) layout::Object(heap, mpLayoutFile, "arc", "my_DialogWindow_a1.brlyt");
        mDialog[DIALOG_TYPE_BTN1].gLayout->bindToGroup("my_DialogWindow_a1_DialogIn.brlan",     "G_InOut",      false);
        mDialog[DIALOG_TYPE_BTN1].gLayout->bindToGroup("my_DialogWindow_a1_DialogOut.brlan",    "G_InOut",      false, false);
        mDialog[DIALOG_TYPE_BTN1].gLayout->bindToGroup("my_DialogWindow_a1_FocusBtn_on.brlan",  "G_FocusBtnB",  false, false);
        mDialog[DIALOG_TYPE_BTN1].gLayout->bindToGroup("my_DialogWindow_a1_FocusBtn_off.brlan", "G_FocusBtnB",  false, false);
        mDialog[DIALOG_TYPE_BTN1].gLayout->bindToGroup("my_DialogWindow_a1_SelectBtn_Ac.brlan", "G_SelectBtnB", false, false);
        mDialog[DIALOG_TYPE_BTN1].gLayout->finishBinding();
        mDialog[DIALOG_TYPE_BTN1].guiMgr = new(heap, CLASS_HEAP) gui::PaneManager(NULL, mDialog[DIALOG_TYPE_BTN1].gLayout->getDrawInfo(), NULL, allocator);
        mDialog[DIALOG_TYPE_BTN1].guiMgr->createLayoutScene(*mDialog[DIALOG_TYPE_BTN1].gLayout->getLayout());
        mDialog[DIALOG_TYPE_BTN1].guiMgr->setAllComponentTriggerTarget(false);
        for (int i = 0; i <= (BUTTON_ONE_MAX - 1); i++) {
            mDialog[DIALOG_TYPE_BTN1].guiMgr->setTriggerTarget(mDialog[DIALOG_TYPE_BTN1].gLayout->FindPaneByName(mscBtnName[i]), true);
        }

        // Dialog with two buttons
        mDialog[DIALOG_TYPE_BTN2].gLayout = new(heap, CLASS_HEAP) layout::Object(heap, mpLayoutFile, "arc", "my_DialogWindow_a2.brlyt");
        mDialog[DIALOG_TYPE_BTN2].gLayout->bindToGroup("my_DialogWindow_a2_DialogIn.brlan",     "G_InOut",      false);
        mDialog[DIALOG_TYPE_BTN2].gLayout->bindToGroup("my_DialogWindow_a2_DialogOut.brlan",    "G_InOut",      false, false);
        mDialog[DIALOG_TYPE_BTN2].gLayout->bindToGroup("my_DialogWindow_a2_FocusBtn_on.brlan",  "G_FocusBtnB",  false, false);
        mDialog[DIALOG_TYPE_BTN2].gLayout->bindToGroup("my_DialogWindow_a2_FocusBtn_off.brlan", "G_FocusBtnB",  false, false);
        mDialog[DIALOG_TYPE_BTN2].gLayout->bindToGroup("my_DialogWindow_a2_SelectBtn_Ac.brlan", "G_SelectBtnB", false, false);
        mDialog[DIALOG_TYPE_BTN2].gLayout->bindToGroup("my_DialogWindow_a2_FocusBtn_on.brlan",  "G_FocusBtnA",  false, false);
        mDialog[DIALOG_TYPE_BTN2].gLayout->bindToGroup("my_DialogWindow_a2_FocusBtn_off.brlan", "G_FocusBtnA",  false, false);
        mDialog[DIALOG_TYPE_BTN2].gLayout->bindToGroup("my_DialogWindow_a2_SelectBtn_Ac.brlan", "G_SelectBtnA", false, false);
        mDialog[DIALOG_TYPE_BTN2].gLayout->finishBinding();
        mDialog[DIALOG_TYPE_BTN2].guiMgr = new(heap, CLASS_HEAP) gui::PaneManager(NULL, mDialog[DIALOG_TYPE_BTN2].gLayout->getDrawInfo(), NULL, allocator);
        mDialog[DIALOG_TYPE_BTN2].guiMgr->createLayoutScene(*mDialog[DIALOG_TYPE_BTN2].gLayout->getLayout());
        mDialog[DIALOG_TYPE_BTN2].guiMgr->setAllComponentTriggerTarget(false);
        for (int i = 0; i <= (BUTTON_TWO_MAX - 1); i++) {
            mDialog[DIALOG_TYPE_BTN2].guiMgr->setTriggerTarget(mDialog[DIALOG_TYPE_BTN2].gLayout->FindPaneByName(mscBtnName[i]), true);
        }

        // Dialog with three buttons
        mDialog[DIALOG_TYPE_BTN3].gLayout = new(heap, CLASS_HEAP) layout::Object(heap, mpLayoutFile, "arc", "my_DialogWindow_a3.brlyt");
        mDialog[DIALOG_TYPE_BTN3].gLayout->bindToGroup("my_DialogWindow_a3_DialogIn.brlan",     "G_InOut",      false);
        mDialog[DIALOG_TYPE_BTN3].gLayout->bindToGroup("my_DialogWindow_a3_DialogOut.brlan",    "G_InOut",      false, false);
        mDialog[DIALOG_TYPE_BTN3].gLayout->bindToGroup("my_DialogWindow_a3_FocusBtn_on.brlan",  "G_FocusBtnB",  false, false);
        mDialog[DIALOG_TYPE_BTN3].gLayout->bindToGroup("my_DialogWindow_a3_FocusBtn_off.brlan", "G_FocusBtnB",  false, false);
        mDialog[DIALOG_TYPE_BTN3].gLayout->bindToGroup("my_DialogWindow_a3_SelectBtn_Ac.brlan", "G_SelectBtnB", false, false);
        mDialog[DIALOG_TYPE_BTN3].gLayout->bindToGroup("my_DialogWindow_a3_FocusBtn_on.brlan",  "G_FocusBtnA",  false, false);
        mDialog[DIALOG_TYPE_BTN3].gLayout->bindToGroup("my_DialogWindow_a3_FocusBtn_off.brlan", "G_FocusBtnA",  false, false);
        mDialog[DIALOG_TYPE_BTN3].gLayout->bindToGroup("my_DialogWindow_a3_SelectBtn_Ac.brlan", "G_SelectBtnA", false, false);
        mDialog[DIALOG_TYPE_BTN3].gLayout->bindToGroup("my_DialogWindow_a3_FocusBtn_on.brlan",  "G_FocusBtnC",  false, false);
        mDialog[DIALOG_TYPE_BTN3].gLayout->bindToGroup("my_DialogWindow_a3_FocusBtn_off.brlan", "G_FocusBtnC",  false, false);
        mDialog[DIALOG_TYPE_BTN3].gLayout->bindToGroup("my_DialogWindow_a3_SelectBtn_Ac.brlan", "G_SelectBtnC", false, false);
        mDialog[DIALOG_TYPE_BTN3].gLayout->finishBinding();
        mDialog[DIALOG_TYPE_BTN3].guiMgr = new(heap, CLASS_HEAP) gui::PaneManager(NULL, mDialog[DIALOG_TYPE_BTN3].gLayout->getDrawInfo(), NULL, allocator);
        mDialog[DIALOG_TYPE_BTN3].guiMgr->createLayoutScene(*mDialog[DIALOG_TYPE_BTN3].gLayout->getLayout());
        mDialog[DIALOG_TYPE_BTN3].guiMgr->setAllComponentTriggerTarget(false);
        for (int i = 0; i <= (BUTTON_THREE_MAX - 1); i++) {
            mDialog[DIALOG_TYPE_BTN3].guiMgr->setTriggerTarget(mDialog[DIALOG_TYPE_BTN3].gLayout->FindPaneByName(mscBtnName[i]), true);
        }

        // Dialog with two buttons (alternative)
        mDialog[DIALOG_TYPE_BTNS2].gLayout = new(heap, CLASS_HEAP) layout::Object(heap, mpLayoutFile, "arc", "my_DialogWindow_b.brlyt");
        mDialog[DIALOG_TYPE_BTNS2].gLayout->bindToGroup("my_DialogWindow_b_DialogIn.brlan",     "G_InOut",      false);
        mDialog[DIALOG_TYPE_BTNS2].gLayout->bindToGroup("my_DialogWindow_b_DialogOut.brlan",    "G_InOut",      false, false);
        mDialog[DIALOG_TYPE_BTNS2].gLayout->bindToGroup("my_DialogWindow_b_FocusBtn_on.brlan",  "G_FocusBtnB",  false, false);
        mDialog[DIALOG_TYPE_BTNS2].gLayout->bindToGroup("my_DialogWindow_b_FocusBtn_off.brlan", "G_FocusBtnB",  false, false);
        mDialog[DIALOG_TYPE_BTNS2].gLayout->bindToGroup("my_DialogWindow_b_SelectBtn_Ac.brlan", "G_SelectBtnB", false, false);
        mDialog[DIALOG_TYPE_BTNS2].gLayout->bindToGroup("my_DialogWindow_b_FocusBtn_on.brlan",  "G_FocusBtnA",  false, false);
        mDialog[DIALOG_TYPE_BTNS2].gLayout->bindToGroup("my_DialogWindow_b_FocusBtn_off.brlan", "G_FocusBtnA",  false, false);
        mDialog[DIALOG_TYPE_BTNS2].gLayout->bindToGroup("my_DialogWindow_b_SelectBtn_Ac.brlan", "G_SelectBtnA", false, false);
        mDialog[DIALOG_TYPE_BTNS2].gLayout->finishBinding();
        mDialog[DIALOG_TYPE_BTNS2].guiMgr = new(heap, CLASS_HEAP) gui::PaneManager(NULL, mDialog[DIALOG_TYPE_BTNS2].gLayout->getDrawInfo(), NULL, allocator);
        mDialog[DIALOG_TYPE_BTNS2].guiMgr->createLayoutScene(*mDialog[DIALOG_TYPE_BTNS2].gLayout->getLayout());
        mDialog[DIALOG_TYPE_BTNS2].guiMgr->setAllComponentTriggerTarget(false);
        for (int i = 0; i <= (BUTTON_TWO_MAX - 1); i++) {
            mDialog[DIALOG_TYPE_BTNS2].guiMgr->setTriggerTarget(mDialog[DIALOG_TYPE_BTNS2].gLayout->FindPaneByName(mscBtnName[i]), true);
        }
    }

    void DialogWindow::init() {
        for (int i = 0; i < DIALOG_BTN_TYPE_MAX; i++) {
            mbBtnHovered[i] = FALSE;
        }

        // Reset result
        mLastResult = RESULT_NONE;
        mResult     = RESULT_NONE;

        // Reset wait tick
        mWaitTick   = 0;

        // Reset booleans
        mbTerminated    = false;
        mbSwapSound     = false;
        mbIsProg        = false;
        mbDoProgBar     = false;

        // Reset progress bar
        mProgBarLen     = 0;
        mProgBarFrame   = 0;

        if (mpCurDialog) {
            // Initialize BtnB animator
            if (mpCurDialog->gLayout->getAnim(ANIM_FOCUS_BTN_B_ON)) {
                mpCurDialog->gLayout->getAnim(ANIM_FOCUS_BTN_B_ON)->init();
            }
            // Initialize BtnA animator
            if (mpCurDialog->gLayout->getAnim(ANIM_FOCUS_BTN_A_ON)) {
                mpCurDialog->gLayout->getAnim(ANIM_FOCUS_BTN_A_ON)->init();
            }
            // Initialize GUI (if one available)
            if (mpCurDialog->guiMgr) {
                mpCurDialog->guiMgr->init();
            }
        }
    }

    void DialogWindow::calc() {
        mbNextState = false;

        switch (mState) {
            case DIALOG_STATE_FADE_IN: {
                stt_fadein();
                break;
            }
            case DIALOG_STATE_NORMAL: {
                stt_normal();
                break;
            }
            case DIALOG_STATE_SELECT: {
                stt_select();
                break;
            }
            case DIALOG_STATE_FADE_OUT: {
                stt_fadeout();
                break;
            }
            case DIALOG_STATE_PAGE_FADE: {
                stt_pagefade();
                break;
            }
            case DIALOG_STATE_PAGE_FADE_PREPARE: {
                stt_prepare_pagefade();
                break;
            }
            default: {
                break;
            }
        }

        if (mpCurDialog) {
            mpCurDialog->gLayout->calc();
        }
    }

    void DialogWindow::stt_fadein() {
        // Wait for fade in to finish.
        if (!mpCurDialog->gLayout->getAnim(ANIM_DIALOG_IN)->isPlaying()) {
            mState = DIALOG_STATE_NORMAL;
        }
    }

    void DialogWindow::stt_normal() {
        // Update userface interface
        if (mpCurDialog->guiMgr) {
            mpCurDialog->guiMgr->update();
        }

        // Did the dialog terminate?
        if (mbTerminated) {
            mbNextState = true;

            mResult = RESULT_TERMINATED;

            // Play nice sound (if it was a loading screen)
            mpCurDialog->gLayout->getAnim(ANIM_DIALOG_OUT)->play();
            if (mbIsProg) {
                snd::getSystem()->startSE("WIPL_SE_COPY_FINISH");
            }
            mState = DIALOG_STATE_FADE_OUT;

            return;
        }

        // For those without a user interface
        if (mDialogType == DIALOG_TYPE_BTN0) {
            // If the dialog has a timer
            if (mWaitTimer != 0 && ++mWaitTick > mWaitTimer) {
                mbNextState = true;

                mResult = RESULT_WAIT;

                mpCurDialog->gLayout->getAnim(ANIM_DIALOG_OUT)->play();
                if (mbIsProg) {
                    snd::getSystem()->startSE("WIPL_SE_COPY_FINISH");
                }
                mState = DIALOG_STATE_FADE_OUT;

                return;
            }

            // If the dialog has a progress bar
            if (mbDoProgBar) {
                // Keep frame up with the progress bar length
                if (mProgBarFrame < mProgBarLen) {
                    mProgBarFrame += DIALOG_BTN0_PROG_SPEED;
                    if (mProgBarFrame > mProgBarLen) {
                        mProgBarFrame = mProgBarLen;
                    }
                }

                mpCurDialog->gLayout->getAnim(ANIM_BTN0_PRORESS)->initAnmFrame(mProgBarFrame);

                // If the progress bar eventually reaches 100%
                if (mProgBarFrame == 100) {
                    mbNextState = true;

                    mResult = RESULT_PROGRESS;

                    // Play a nice little sound (if it has a progress bar... which is always true in this case)
                    mpCurDialog->gLayout->getAnim(ANIM_DIALOG_OUT)->play();
                    if (mbIsProg) {
                        snd::getSystem()->startSE("WIPL_SE_COPY_FINISH");
                    }
                    mState = DIALOG_STATE_FADE_OUT;
                }
                return;
            }

            return;
        }
    }

    void DialogWindow::stt_select() {
        s16 anim = -1;

        // Get select animation
        if (mDialogType == DIALOG_TYPE_BTN3) {
            switch (mResult) {
                case RESULT_TOP_BUTTON: {
                    anim = ANIM_BTN3_SELECT_BTN_A;
                    break;
                }
                case RESULT_MIDDLE_BUTTON: {
                    anim = ANIM_BTN3_SELECT_BTN_B;
                    break;
                }
                case RESULT_BOTTOM_BUTTON: {
                    anim = ANIM_BTN3_SELECT_BTN_C;
                    break;
                }
            }
        }
        else {
            switch (mResult) {
                case RESULT_RIGHT_BUTTON: {
                    anim = ANIM_SELECT_BTN_B;
                    break;
                }
                case RESULT_LEFT_BUTTON: {
                    anim = ANIM_SELECT_BTN_A;
                    break;
                }
            }
        }

        // Wait for select animation
        if (!mpCurDialog->gLayout->getAnim(anim)->isPlaying()) {
            mpCurDialog->gLayout->getAnim(ANIM_DIALOG_OUT)->play();
            mState = DIALOG_STATE_FADE_OUT;
        }
    }

    void DialogWindow::stt_fadeout() {
        // Wait for fade out animation
        if (!mpCurDialog->gLayout->getAnim(ANIM_DIALOG_OUT)->isPlaying()) {
            // Set last result
            mLastResult = mResult;
            mResult = RESULT_NONE;

            // Deinit Dialog
            if (mpCurDialog->guiMgr) {
                mpCurDialog->guiMgr->setEventHandler(NULL);
            }
            mpCurDialog = NULL;

            // Ready for next dialog call
            mState = DIALOG_STATE_READY;

            // Reset page
            mPageCount = -1;
            mCurPage = 0;
        }
    }

    void DialogWindow::set_alpha(nw4r::lyt::Pane* pane, u8 alpha) {
        // Sets the alpha for the pane and it's children
        for (nw4r::lyt::PaneList::Iterator it = pane->GetChildList().GetBeginIter(); it != pane->GetChildList().GetEndIter(); it++) {
            it->SetAlpha(alpha);
            set_alpha(&*it, alpha);
        }
    }

    void DialogWindow::stt_prepare_pagefade() {
        // Update GUI
        if (mpCurDialog->guiMgr) {
            mpCurDialog->guiMgr->update();
        }

        // Wait for select animation to stop
        if (!mpCurDialog->gLayout->isPlaying(ANIM_SELECT_BTN_B) && !mpCurDialog->gLayout->isPlaying(ANIM_SELECT_BTN_A)) {
            if (mResult == RESULT_LEFT_BUTTON) {
                if (mbBtnHovered[DIALOG_BTN_TYPE_BTN2] != FALSE && mpPages[mCurPage].isTwoBtn) {
                    mpCurDialog->gLayout->getAnim(ANIM_FOCUS_BTN_A_ON)->play();
                }
            }
            else {
                if (mbBtnHovered[DIALOG_BTN_TYPE_BTN1] != FALSE) {
                    mpCurDialog->gLayout->getAnim(ANIM_FOCUS_BTN_B_ON)->play();
                }
            }
            mState = DIALOG_STATE_PAGE_FADE;
        }
    }

    void DialogWindow::stt_pagefade() {
        if (mpCurDialog->guiMgr) {
            mpCurDialog->guiMgr->update();
        }

        switch (mPageState) {
            // Fade in
            case DIALOG_PAGE_FADE_IN: {
                // Fade in text box alpha
                mPageAlpha += mPageFadeSpeed;
                if (mPageAlpha > 255) {
                    mPageAlpha = 255;
                }
                nw4r::lyt::TextBox* textBox = nw4r::ut::DynamicCast<nw4r::lyt::TextBox*>(mpCurDialog->gLayout->FindPaneByName("T_Dialog"));
                textBox->SetAlpha(mPageAlpha);

                // If the next page has the left button, make it visible (if it was invisible before)
                if (mpPages[mCurPage].isTwoBtn != mpPages[mPrevPage].isTwoBtn
                && mpPages[mCurPage].isTwoBtn == true) {
                    nw4r::lyt::Pane* pBtnA = mpCurDialog->gLayout->FindPaneByName("N_BtnA");
                    nw4r::lyt::Pane* pBtnAPic = mpCurDialog->gLayout->FindPaneByName("N_BtnA_Pic");

                    pBtnA->SetVisible(true);

                    if (mPageAlpha != 0) {
                        set_alpha(pBtnAPic, mPageAlpha);
                        // If alpha faded in, init button animations
                        if (mPageAlpha == 255) {
                            mbBtnHovered[DIALOG_BTN_TYPE_BTN2] = FALSE;
                            mpCurDialog->gLayout->getAnim(ANIM_FOCUS_BTN_A_ON)->init();
                        }
                    }
                    else {
                        set_alpha(pBtnAPic, 255);
                        pBtnA->SetVisible(false);
                    }
                }
                else {
                    // Has the text changed? Fade in the text to the new one
                    if (mpPages[mCurPage].lBtnMsgId != mpPages[mPrevPage].lBtnMsgId) {
                        nw4r::lyt::Pane* pPane = mpCurDialog->gLayout->FindPaneByName("T_BtnA");
                        pPane->SetAlpha(mPageAlpha);
                    }
                }

                // Has the text changed? Fade in the text to the new one
                if (mpPages[mCurPage].rBtnMsgId != mpPages[mPrevPage].rBtnMsgId) {
                    nw4r::lyt::Pane* pPane = mpCurDialog->gLayout->FindPaneByName("T_BtnB");
                    pPane->SetAlpha(mPageAlpha);
                }

                // Has the layout changed? Fade in to the new one.
                if (mpPages[mCurPage].layoutObj != mpPages[mPrevPage].layoutObj
                && mpPages[mCurPage].layoutObj) {
                    set_alpha(mpPages[mCurPage].layoutObj->getRoot(), mPageAlpha);
                    if (mpPages[mCurPage].isLytAnim && mPageAlpha == 255) {
                        mpPages[mCurPage].layoutObj->getAnim(ANIM_DIALOG_IN)->play();
                    }
                }

                // Faded in? We are done.
                if (mPageAlpha == 255) {
                    mPageState = DIALOG_PAGE_NORMAL;
                    mState = DIALOG_STATE_NORMAL;
                }
                break;
            }
            // Fade out
            case DIALOG_PAGE_FADE_OUT: {
                // Fade out text box alpha
                mPageAlpha -= mPageFadeSpeed;
                if (mPageAlpha < 0) {
                    mPageAlpha = 0;
                }
                nw4r::lyt::TextBox* textBox = nw4r::ut::DynamicCast<nw4r::lyt::TextBox*>(mpCurDialog->gLayout->FindPaneByName("T_Dialog"));
                textBox->SetAlpha(mPageAlpha);

                // If the previous page has no left button, make it invisible (if it was visible before)
                if (mpPages[mCurPage].isTwoBtn != mpPages[mPrevPage].isTwoBtn
                && mpPages[mPrevPage].isTwoBtn == true) {
                    nw4r::lyt::Pane* pBtnA = mpCurDialog->gLayout->FindPaneByName("N_BtnA");
                    nw4r::lyt::Pane* pBtnAPic = mpCurDialog->gLayout->FindPaneByName("N_BtnA_Pic");

                    // The fuck is this?
                    {
                        f32 unknown_float = mPageAlpha / 255.f;
                        math::VEC2 unknown_vec(unknown_float, unknown_float); // was it *even* a vec2 ???
                    }

                    if (mPageAlpha != 0) {
                        set_alpha(pBtnAPic, mPageAlpha);
                    }
                    else {
                        // If the alpha faded out, make it invisible and init button animations...?
                        set_alpha(pBtnAPic, 255);
                        pBtnA->SetVisible(false);
                        
                        mbBtnHovered[DIALOG_BTN_TYPE_BTN2] = FALSE;
                        mpCurDialog->gLayout->getAnim(ANIM_FOCUS_BTN_A_ON)->init();
                    }
                }
                else {
                    // Has the text changed? Fade out the old text
                    if (mpPages[mCurPage].lBtnMsgId != mpPages[mPrevPage].lBtnMsgId) {
                        nw4r::lyt::Pane* pPane = mpCurDialog->gLayout->FindPaneByName("T_BtnA");
                        pPane->SetAlpha(mPageAlpha);
                    }
                }

                // Has the text changed? Fade out the old text
                if (mpPages[mCurPage].rBtnMsgId != mpPages[mPrevPage].rBtnMsgId) {
                    nw4r::lyt::Pane* pPane = mpCurDialog->gLayout->FindPaneByName("T_BtnB");
                       pPane->SetAlpha(mPageAlpha);
                }

                // Has the layout changed? Fade out the old layout
                if (mpPages[mCurPage].layoutObj != mpPages[mPrevPage].layoutObj
                && mpPages[mPrevPage].layoutObj) {
                    nw4r::lyt::Pane* pPane = mpPages[mPrevPage].layoutObj->getRoot();
                    if (mPageAlpha != 0) {
                        set_alpha(pPane, mPageAlpha);
                    }
                    else {
                        if (mpPages[mPrevPage].isLytAnim) {
                            mpPages[mPrevPage].layoutObj->getAnim()->init();
                        }
                        set_alpha(pPane, 255);
                    }
                }

                // Done fading in, We set the new text and layout then we are done.
                if (mPageAlpha == 0) {
                    mPageState = DIALOG_PAGE_FADE_IN;

                    set_message(mpPages[mCurPage].msgID);
                    set_rbtn_text(mpPages[mCurPage].rBtnMsgId);
                    set_lbtn_text(mpPages[mCurPage].lBtnMsgId);

                    mpCustomLayout = mpPages[mCurPage].layoutObj;

                    mCustomLayoutPos.x = 0.0f;
                    mCustomLayoutPos.y = mpPages[mCurPage].layoutYOff;
                }
                break;
            }
        }
    }

    void DialogWindow::draw() {
        if (mpCurDialog) {
            // Draw layout
            layout::Object::setCamera();
            mpCurDialog->gLayout->draw();

            // Draw custom layout for page
            if (mpCustomLayout) {
                nw4r::math::VEC3 dlgPos = mpCurDialog->gLayout->FindPaneByName("N_Dialog")->GetTranslate();
                dlgPos.x += mCustomLayoutPos.x;
                dlgPos.y += mCustomLayoutPos.y;
                mpCustomLayout->getRoot()->SetTranslate(dlgPos);

                mpCustomLayout->calcMtx();
                if (mState != DIALOG_STATE_PAGE_FADE || mPageAlpha != 0) {
                    mpCustomLayout->draw();
                }
            }
        }
    }

    void DialogWindow::set_text(const char* pane, const wchar_t* text) {
        mpCurDialog->setString(pane, text);
    }

    void DialogWindow::set_message(u32 id) {
        const char* name = "T_Dialog";
        const wchar_t* msg = System::getMessage(id);
        set_text(name, msg);
    }

    void DialogWindow::set_title(const wchar_t* text) {
        set_text("T_Dialog", text);
    }

    void DialogWindow::set_rbtn_text(u32 id) {
        const char* name = "T_BtnB";
        const wchar_t* msg = System::getMessage(id);
        set_text(name, msg);
    }

    void DialogWindow::set_lbtn_text(u32 id) {
        const char* name = "T_BtnA";
        const wchar_t* msg = System::getMessage(id);
        set_text(name, msg);
    }

    void DialogWindow::set_tbtn_text(u32 id) {
        const char* name = "T_BtnA";
        const wchar_t* msg = System::getMessage(id);
        set_text(name, msg);
    }

    void DialogWindow::set_cbtn_text(u32 id) {
        const char* name = "T_BtnB";
        const wchar_t* msg = System::getMessage(id);
        set_text(name, msg);
    }

    void DialogWindow::set_bbtn_text(u32 id) {
        const char* name = "T_BtnC";
        const wchar_t* msg = System::getMessage(id);
        set_text(name, msg);
    }

    void DialogWindow::set_dialog_size(const nw4r::lyt::Size& size) {
        nw4r::lyt::TextBox* pPane = nw4r::ut::DynamicCast<nw4r::lyt::TextBox*>(mpCurDialog->gLayout->FindPaneByName("T_Dialog"));
        pPane->SetFontSize(size);
    }

    BOOL DialogWindow::call(int type) {
        BOOL result = FALSE;

        mDialogType = type;

        // If we are ready
        if (mState == DIALOG_STATE_READY) {
            mpCurDialog = &mDialog[type];

            // Init interface
            init();

            // Prepare GUI events
            if (mpCurDialog->guiMgr) {
                mpCurDialog->guiMgr->setEventHandler(this);
            }

            // Play fade in
            mpCurDialog->gLayout->getAnim(ANIM_DIALOG_IN)->play();
            mState = DIALOG_STATE_FADE_IN;

            // For dialog pages
            mPageState = DIALOG_PAGE_NORMAL;
            mpCustomLayout = NULL;

            // Do we need the shade background?
            nw4r::lyt::Pane* pPane = mpCurDialog->gLayout->FindPaneByName("Shade");
            if (pPane) {
                if (mbNoShade) {
                    pPane->SetVisible(false);
                }
                else {
                    pPane->SetVisible(true);
                }
            }

            // Do we need BtnA?
            pPane = mpCurDialog->gLayout->FindPaneByName("N_BtnA");
            if (pPane) {
                if (mbHideBtnA) {
                    pPane->SetVisible(false);
                }
                else {
                    pPane->SetVisible(true);
                }
            }

            // Yes!! We are ready!!
            result = TRUE;
        }

        // Reset booleans that are no longer required (until this function gets called again)
        mbNoShade = false;
        mbHideBtnA = false;

        return result;
    }

    BOOL DialogWindow::callBtn0(u32 msgId, u32 wait, bool bIsProg) {
        BOOL result = FALSE;

        if (call(DIALOG_TYPE_BTN0)) {
            mWaitTimer = wait;
            mbIsProg = bIsProg;
            mbDoProgBar = false;
            set_message(msgId);

            mpCurDialog->gLayout->FindPaneByName("N_Prog")->SetVisible(false);

            if (mbIsProg) {
                mpCurDialog->gLayout->FindPaneByName("Wait_00")->SetVisible(true);
                mpCurDialog->gLayout->getAnim(ANIM_BTN0_WAIT)->play();

                snd::getSystem()->startSE("WIPL_SE_COPYING");
            }
            else {
                mpCurDialog->gLayout->FindPaneByName("Wait_00")->SetVisible(false);
                
                snd::getSystem()->startSE("WIPL_SE_INFO_WINDOW");
            }

            result = TRUE;
        }

        return result;
    }

    BOOL DialogWindow::callBtn0NoShade(u32 msgId, u32 wait, bool bIsProg) {
        BOOL result = FALSE;

        mbNoShade = true;
        if (call(DIALOG_TYPE_BTN0)) {
            mWaitTimer = wait;

            mbIsProg = bIsProg;
            mbDoProgBar = false;

            set_message(msgId);

            mpCurDialog->gLayout->FindPaneByName("N_Prog")->SetVisible(false);

            if (mbIsProg) {
                mpCurDialog->gLayout->FindPaneByName("Wait_00")->SetVisible(true);
                mpCurDialog->gLayout->getAnim(ANIM_BTN0_WAIT)->play();

                snd::getSystem()->startSE("WIPL_SE_COPYING");
            }
            else {
                mpCurDialog->gLayout->FindPaneByName("Wait_00")->SetVisible(false);
                
                snd::getSystem()->startSE("WIPL_SE_INFO_WINDOW");
            }

            result = TRUE;
        }

        return result;
    }

    static nw4r::lyt::Size sDlgBtn1Size(27.2f, 31.45f);
    BOOL DialogWindow::callBtn1(u32 msgId, u32 btnId) {
        BOOL result = FALSE;

        if (call(DIALOG_TYPE_BTN1)) {
            set_dialog_size(sDlgBtn1Size);

            set_message(msgId);
            set_rbtn_text(btnId);

            snd::getSystem()->startSE("WIPL_SE_INFO_WINDOW");

            result = TRUE;
        }

        return result;
    }

    BOOL DialogWindow::callBtn1NoShade(u32 msgId, u32 btnId) {
        BOOL result = FALSE;
        
        mbNoShade = true;
        if (call(DIALOG_TYPE_BTN1)) {
            set_dialog_size(sDlgBtn1Size);

            set_message(msgId);
            set_rbtn_text(btnId);

            snd::getSystem()->startSE("WIPL_SE_INFO_WINDOW");

            result = TRUE;
        }

        return result;
    }

    static nw4r::lyt::Size sDlgBtn1SmlSize(22.1f, 25.9f);
    BOOL DialogWindow::callBtn1Sml(u32 msgId, u32 btnId) {
        BOOL result = FALSE;

        if (call(DIALOG_TYPE_BTN1)) {
            set_dialog_size(sDlgBtn1SmlSize);

            set_message(msgId);
            set_rbtn_text(btnId);

            snd::getSystem()->startSE("WIPL_SE_INFO_WINDOW");

            result = TRUE;
        }

        return result;
    }

    BOOL DialogWindow::callBtn1(const wchar_t* msg, u32 btnId) {
        BOOL result = FALSE;

        if (call(DIALOG_TYPE_BTN1)) {
            set_dialog_size(sDlgBtn1Size);

            set_text("T_Dialog", msg);
            set_rbtn_text(btnId);

            snd::getSystem()->startSE("WIPL_SE_INFO_WINDOW");

            result = TRUE;
        }

        return result;
    }

    BOOL DialogWindow::callBtn1(const wchar_t* msg, u32 btnId, f32 size) {
        BOOL result = FALSE;

        if (call(DIALOG_TYPE_BTN1)) {
            set_dialog_size(nw4r::lyt::Size((size * 34.f) / 100.f, (size * 37.f) / 100.f));

            set_text("T_Dialog", msg);
            set_rbtn_text(btnId);

            snd::getSystem()->startSE("WIPL_SE_INFO_WINDOW");

            result = TRUE;
        }

        return result;
    }

    BOOL DialogWindow::callBtn1(u32 msgId, u32 btnId, f32 size) {
        BOOL result = FALSE;

        if (call(DIALOG_TYPE_BTN1)) {
            set_dialog_size(nw4r::lyt::Size((size * 34.f) / 100.f, (size * 37.f) / 100.f));

            set_message(msgId);
            set_rbtn_text(btnId);

            snd::getSystem()->startSE("WIPL_SE_INFO_WINDOW");

            result = TRUE;
        }

        return result;
    }

    BOOL DialogWindow::callBtn2(u32 msgId, u32 rBtnId, u32 lBtnId, bool bSwapSound) {
        BOOL result = FALSE;

        if (call(DIALOG_TYPE_BTN2)) {
            mbSwapSound = bSwapSound;

            set_message(msgId);
            set_rbtn_text(rBtnId);
            set_lbtn_text(lBtnId);

            snd::getSystem()->startSE("WIPL_SE_INFO_WINDOW");

            result = TRUE;
        }

        return result;
    }

    BOOL DialogWindow::callBtn2NoShade(const wchar_t* msg, u32 rBtnId, u32 lBtnId, bool bSwapSound) {
        BOOL result = FALSE;

        mbNoShade = true;
        if (call(DIALOG_TYPE_BTN2)) {
            mbSwapSound = bSwapSound;

            set_text("T_Dialog", msg);
            set_rbtn_text(rBtnId);
            set_lbtn_text(lBtnId);

            snd::getSystem()->startSE("WIPL_SE_INFO_WINDOW");

            result = TRUE;
        }

        return result;
    }

    BOOL DialogWindow::callBtn2Multi(Page* pages, int pageCount, int fadeDelay) {
        BOOL result = FALSE;

        if (!pages[0].isTwoBtn) {
            mbHideBtnA = true;
        }

        if (call(DIALOG_TYPE_BTN2)) {
            mpPages = pages;
            mPageCount = pageCount;

            float speed = (255.f / fadeDelay);
            int speed_floor = (int)speed;
            if (speed > speed_floor) {
                speed_floor++;
            }
            mPageFadeSpeed = speed_floor;

            mPageAlpha = 255;

            mCurPage = 0;
            mPrevPage = 0;

            mbSwapSound = false;

            set_message(mpPages[mCurPage].msgID);
            set_rbtn_text(mpPages[mCurPage].rBtnMsgId);
            set_lbtn_text(mpPages[mCurPage].lBtnMsgId);

            if (mpPages[mCurPage].layoutObj) {
                mpCustomLayout = mpPages[mCurPage].layoutObj;
                
                mCustomLayoutPos.x = 0.0f;
                mCustomLayoutPos.y = mpPages[mCurPage].layoutYOff;
            }

            snd::getSystem()->startSE("WIPL_SE_INFO_WINDOW");

            result = TRUE;
        }

        return result;
    }

    BOOL DialogWindow::callBtn2(const wchar_t* msg, u32 rBtnId, u32 lBtnId, bool bSwapSound) {
        BOOL result = FALSE;

        if (call(DIALOG_TYPE_BTN2)) {
            mbSwapSound = bSwapSound;

            set_text("T_Dialog", msg);
            set_rbtn_text(rBtnId);
            set_lbtn_text(lBtnId);

            snd::getSystem()->startSE("WIPL_SE_INFO_WINDOW");

            result = TRUE;
        }

        return result;
    }

    BOOL DialogWindow::callBtn3(u32 msgId, u32 tBtnId, u32 cBtnID, u32 bBtnId) {
        BOOL result = FALSE;

        if (call(DIALOG_TYPE_BTN3)) {
            set_message(msgId);
            set_tbtn_text(tBtnId);
            set_cbtn_text(cBtnID);
            set_bbtn_text(bBtnId);

            snd::getSystem()->startSE("WIPL_SE_INFO_WINDOW");

            result = TRUE;
        }

        return result;
    }

    BOOL DialogWindow::callSBtn2(u32 msgId, u32 rBtnId, u32 lBtnId, bool bSwapSound) {
        BOOL result = FALSE;

        if (call(DIALOG_TYPE_BTNS2)) {
            mbSwapSound = bSwapSound;

            mpCurDialog->gLayout->FindPaneByName("N_Top")->SetVisible(true);

            set_message(msgId);
            set_rbtn_text(rBtnId);
            set_lbtn_text(lBtnId);

            snd::getSystem()->startSE("WIPL_SE_INFO_WINDOW");

            result = TRUE;
        }

        return result;
    }

    BOOL DialogWindow::callS2Btn2(u32 rBtnId, u32 lBtnId, bool bSwapSound) {
        BOOL result = FALSE;

        if (call(DIALOG_TYPE_BTNS2)) {
            mbSwapSound = bSwapSound;

            mpCurDialog->gLayout->FindPaneByName("N_Top")->SetVisible(false);

            set_rbtn_text(rBtnId);
            set_lbtn_text(lBtnId);

            snd::getSystem()->startSE("WIPL_SE_INFO_WINDOW");

            result = TRUE;
        }

        return result;
    }

    BOOL DialogWindow::callBtnPrg(u32 msgId) {
        BOOL result = FALSE;

        if (call(DIALOG_TYPE_BTN0)) {
            mWaitTimer = 0;

            mbIsProg = true;
            mbDoProgBar = true;

            mProgBarLen = 0;
            mProgBarFrame = 0;

            set_message(msgId);

            mpCurDialog->gLayout->FindPaneByName("N_Prog")->SetVisible(true);
            mpCurDialog->gLayout->FindPaneByName("Wait_00")->SetVisible(true);

            // Play waiting icon
            mpCurDialog->gLayout->getAnim(ANIM_BTN0_WAIT)->play();
            // Prepare progress bar
            mpCurDialog->gLayout->getAnim(ANIM_BTN0_PRORESS)->init();

            snd::getSystem()->startSE("WIPL_SE_COPYING");

            result = TRUE;
        }

        return result;
    }

    BOOL DialogWindow::callBtnPrgNoShade(const wchar_t* msg) {
        BOOL result = FALSE;

        mbNoShade = true;
        if (call(DIALOG_TYPE_BTN0)) {
            mWaitTimer = 0;

            mbIsProg = true;
            mbDoProgBar = true;
            
            mProgBarLen = 0;
            mProgBarFrame = 0;

            set_text("T_Dialog", msg);

            mpCurDialog->gLayout->FindPaneByName("N_Prog")->SetVisible(true);
            mpCurDialog->gLayout->FindPaneByName("Wait_00")->SetVisible(true);

            // Play waiting icon
            mpCurDialog->gLayout->getAnim(ANIM_BTN0_WAIT)->play();
            // Prepare progress bar
            mpCurDialog->gLayout->getAnim(ANIM_BTN0_PRORESS)->init();

            snd::getSystem()->startSE("WIPL_SE_COPYING");

            result = TRUE;
        }

        return result;
    }

    void DialogWindow::start_point_event(const char* paneName, controller::Interface* controller) {
        int btnNo = get_button_no(paneName);
        if (!(mState == DIALOG_STATE_PAGE_FADE || mState == DIALOG_STATE_PAGE_FADE_PREPARE)
        || (btnNo != DIALOG_BTN_TYPE_BTN2 || mpPages[mCurPage].isTwoBtn == mpPages[mPrevPage].isTwoBtn)) {
            if (btnNo != -1 && mbBtnHovered[btnNo] == FALSE) {
                int animIdx = -1;

                // Get focus animation
                if (mDialogType == DIALOG_TYPE_BTN3) {
                    switch (btnNo) {
                        case DIALOG_BTN_TYPE_BTN2: {
                            animIdx = ANIM_BTN3_FOCUS_BTN_A_ON;
                            break;
                        }
                        case DIALOG_BTN_TYPE_BTN1: {
                            animIdx = ANIM_BTN3_FOCUS_BTN_B_ON;
                            break;
                        }
                        case DIALOG_BTN_TYPE_BTN3: {
                            animIdx = ANIM_BTN3_FOCUS_BTN_C_ON;
                            break;
                        }
                    }
                }
                else {
                    switch (btnNo) {
                        case DIALOG_BTN_TYPE_BTN1: {
                            animIdx = ANIM_FOCUS_BTN_B_ON;
                            break;
                        }
                        case DIALOG_BTN_TYPE_BTN2: {
                            animIdx = ANIM_FOCUS_BTN_A_ON;
                            break;
                        }
                    }
                }

                snd::getSystem()->startSE("WIPL_SE_BT_TARGETTING");

                // Rumble controller
                if (controller) {
                    controller->rumble();
                }

                // Play focus animation
                mpCurDialog->gLayout->getAnim(animIdx)->play();
            }

            mbBtnHovered[btnNo]++;
        }
    }

    void DialogWindow::start_left_event(const char* paneName) {
        int btnNo = get_button_no(paneName);
        if (!(mState == DIALOG_STATE_PAGE_FADE || mState == DIALOG_STATE_PAGE_FADE_PREPARE)
        || (btnNo != DIALOG_BTN_TYPE_BTN2 || mpPages[mCurPage].isTwoBtn == mpPages[mPrevPage].isTwoBtn)) {
            if (btnNo != -1 && mbBtnHovered[btnNo] == TRUE) {
                int animIdx = -1;

                // Get unfocus animation
                if (mDialogType == DIALOG_TYPE_BTN3) {
                    switch (btnNo) {
                        case DIALOG_BTN_TYPE_BTN2: {
                            animIdx = ANIM_BTN3_FOCUS_BTN_A_OFF;
                            break;
                        }
                        case DIALOG_BTN_TYPE_BTN1: {
                            animIdx = ANIM_BTN3_FOCUS_BTN_B_OFF;
                            break;
                        }
                        case DIALOG_BTN_TYPE_BTN3: {
                            animIdx = ANIM_BTN3_FOCUS_BTN_C_OFF;
                            break;
                        }
                    }
                }
                else {
                    switch (btnNo) {
                        case DIALOG_BTN_TYPE_BTN1: {
                            animIdx = ANIM_FOCUS_BTN_B_OFF;
                            break;
                        }
                        case DIALOG_BTN_TYPE_BTN2: {
                            animIdx = ANIM_FOCUS_BTN_A_OFF;
                            break;
                        }
                    }
                }

                // Play unfocus animation
                mpCurDialog->gLayout->getAnim(animIdx)->play();
            }

            if (mbBtnHovered[btnNo] > 0) {
                mbBtnHovered[btnNo]--;
            }
        }
    }

    void DialogWindow::start_trig_event(const char* paneName) {
        int btnNo;
        if (!(mState == DIALOG_STATE_PAGE_FADE) && (btnNo = get_button_no(paneName), btnNo != -1)) {
            int animIdx = -1;

            // Get select animation
            if (mDialogType == DIALOG_TYPE_BTN3) {
                switch (btnNo) {
                    case DIALOG_BTN_TYPE_BTN2: {
                        mResult = RESULT_TOP_BUTTON;
                        animIdx = ANIM_BTN3_SELECT_BTN_A;
                        snd::getSystem()->startSE("WIPL_SE_DECIDE");
                        break;
                    }
                    case DIALOG_BTN_TYPE_BTN1: {
                        mResult = RESULT_MIDDLE_BUTTON;
                        animIdx = ANIM_BTN3_SELECT_BTN_B;
                        snd::getSystem()->startSE("WIPL_SE_DECIDE");
                        break;
                    }
                    case DIALOG_BTN_TYPE_BTN3: {
                        mResult = RESULT_BOTTOM_BUTTON;
                        animIdx = ANIM_BTN3_SELECT_BTN_C;
                        snd::getSystem()->startSE("WIPL_SE_CANCEL");
                        break;
                    }
                }
            }
            else {
                switch (btnNo) {
                    case DIALOG_BTN_TYPE_BTN2: {
                        mResult = RESULT_LEFT_BUTTON;
                        animIdx = ANIM_SELECT_BTN_A;
                        if (mbSwapSound) {
                            snd::getSystem()->startSE("WIPL_SE_DECIDE");
                        }
                        else {
                            snd::getSystem()->startSE("WIPL_SE_CANCEL");
                        }
                        mPrevPage = mCurPage;
                        mCurPage--;
                        break;
                    }
                    case DIALOG_BTN_TYPE_BTN1: {
                        mResult = RESULT_BUTTON;
                        animIdx = ANIM_SELECT_BTN_B;
                        if (mbSwapSound) {
                            snd::getSystem()->startSE("WIPL_SE_CANCEL");
                        }
                        else {
                            snd::getSystem()->startSE("WIPL_SE_DECIDE");
                        }
                        mPrevPage = mCurPage;
                        mCurPage++;
                        break;
                    }
                }
            }

            // Play select animation
            mpCurDialog->gLayout->getAnim(animIdx)->play();

            // Change page
            if (mPageCount > 0) {
                if (mpPages[mPrevPage].isLytAnim && mpPages[mPrevPage].layoutObj) {
                    mpPages[mPrevPage].layoutObj->getAnim()->stop();
                }

                if (mCurPage < 0 || mCurPage == mPageCount) {
                    mbNextState = true;
                    mState = DIALOG_STATE_SELECT;
                }
                else {
                    mState = DIALOG_STATE_PAGE_FADE_PREPARE;
                    mPageState = DIALOG_PAGE_FADE_OUT;
                }
            }
            else {
                mbNextState = true;
                mState = DIALOG_STATE_SELECT;
            }
        }
    }

    int DialogWindow::get_button_no(const char* btnName) {
        int result = -1;
        for (int i = 0; i < 3; i++) {
            if (strncmp(mscBtnName[i], btnName, 16) == 0) {
                result = i;
                break;
            }
        }
        return result;
    }

    void DialogWindow::onEvent(u32 compId, u32 event, void* data) {
        gui::PaneComponent* component = static_cast<gui::PaneComponent*>(mpManager->getComponent(compId));
        const char* paneName = component->getPane()->GetName();

        controller::Interface* con = reinterpret_cast<controller::Interface*>(data);

        switch (event) {
            // Pointer on button
            case ::gui::EventHandler::ON_POINT: {
                start_point_event(paneName, con);
                break;
            }
            // Pointer not on button anymore
            case ::gui::EventHandler::ON_LEFT: {
                start_left_event(paneName);
                break;
            }
            // Pointer click on button
            case ::gui::EventHandler::ON_TRIG: {
                if (mState == DIALOG_STATE_NORMAL && con->downTrg(controller::BTN_A)) {
                    start_trig_event(paneName);
                }
                break;
            }
        }
    }

    bool DialogWindow::terminate() {
        bool result = false;
        if (mpCurDialog != NULL) {
            mbTerminated = true;
            result = true;
        }
        return result;
    }
}
