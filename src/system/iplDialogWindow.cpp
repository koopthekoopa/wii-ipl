#include "system/iplDialogWindow.h"

#include "utility/iplGraphics.h"

#include "system/iplSystem.h"

#include "layout/iplGuiManager.h"

#include <cstring>

#pragma sym on

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
        DIALOG_STATE_READY = 0,
        DIALOG_STATE_FADE_IN,
        DIALOG_STATE_NORMAL,
        DIALOG_STATE_SELECT,
        DIALOG_STATE_FADE_OUT,
        DIALOG_STATE_PAGE_FADE,
        DIALOG_STATE_PAGE_FADE_PREPARE,
    };

    enum {
        DIALOG_PAGE_FADE_IN = 0,
        DIALOG_PAGE_FADE_OUT,
        DIALOG_PAGE_NORMAL,
    };

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
        mDialog[DIALOG_TYPE_BTN0].mpLayout = new(heap, CLASS_HEAP) layout::Object(heap, mpLayoutFile, "arc", "my_DialogWindow_a0.brlyt");
        mDialog[DIALOG_TYPE_BTN0].mpLayout->bindToGroup("my_DialogWindow_a0_DialogIn.brlan",  "G_InOut", false);
        mDialog[DIALOG_TYPE_BTN0].mpLayout->bindToGroup("my_DialogWindow_a0_DialogOut.brlan", "G_InOut", false, false);
        mDialog[DIALOG_TYPE_BTN0].mpLayout->bindToGroup("my_DialogWindow_a0_Wait.brlan",      "G_Wait",  false, false);
        mDialog[DIALOG_TYPE_BTN0].mpLayout->bindToGroup("my_DialogWindow_a0_Progres.brlan",   "G_Prog",  false);
        mDialog[DIALOG_TYPE_BTN0].mpLayout->findPane("Wait_00")->SetVisible(false);
        mDialog[DIALOG_TYPE_BTN0].mpLayout->findPane("N_Prog")->SetVisible(false);
        mDialog[DIALOG_TYPE_BTN0].mpLayout->finishBinding();
        mDialog[DIALOG_TYPE_BTN0].mpGui = NULL;  // No user interaction for progress dialog

        // Dialog with one button
        mDialog[DIALOG_TYPE_BTN1].mpLayout = new(heap, CLASS_HEAP) layout::Object(heap, mpLayoutFile, "arc", "my_DialogWindow_a1.brlyt");
        mDialog[DIALOG_TYPE_BTN1].mpLayout->bindToGroup("my_DialogWindow_a1_DialogIn.brlan",     "G_InOut",      false);
        mDialog[DIALOG_TYPE_BTN1].mpLayout->bindToGroup("my_DialogWindow_a1_DialogOut.brlan",    "G_InOut",      false, false);
        mDialog[DIALOG_TYPE_BTN1].mpLayout->bindToGroup("my_DialogWindow_a1_FocusBtn_on.brlan",  "G_FocusBtnB",  false, false);
        mDialog[DIALOG_TYPE_BTN1].mpLayout->bindToGroup("my_DialogWindow_a1_FocusBtn_off.brlan", "G_FocusBtnB",  false, false);
        mDialog[DIALOG_TYPE_BTN1].mpLayout->bindToGroup("my_DialogWindow_a1_SelectBtn_Ac.brlan", "G_SelectBtnB", false, false);
        mDialog[DIALOG_TYPE_BTN1].mpLayout->finishBinding();
        mDialog[DIALOG_TYPE_BTN1].mpGui = new(heap, CLASS_HEAP) gui::PaneManager(NULL, mDialog[DIALOG_TYPE_BTN1].mpLayout->getDrawInfo(), NULL, allocator);
        mDialog[DIALOG_TYPE_BTN1].mpGui->createLayoutScene(*mDialog[DIALOG_TYPE_BTN1].mpLayout->getLayout());
        mDialog[DIALOG_TYPE_BTN1].mpGui->setAllComponentTriggerTarget(false);
        for (int i = 0; i <= (BUTTON_ONE_MAX - 1); i++) {
            mDialog[DIALOG_TYPE_BTN1].mpGui->setTriggerTarget(mDialog[DIALOG_TYPE_BTN1].mpLayout->findPane(mscBtnName[i]), true);
        }

        // Dialog with two buttons
        mDialog[DIALOG_TYPE_BTN2].mpLayout = new(heap, CLASS_HEAP) layout::Object(heap, mpLayoutFile, "arc", "my_DialogWindow_a2.brlyt");
        mDialog[DIALOG_TYPE_BTN2].mpLayout->bindToGroup("my_DialogWindow_a2_DialogIn.brlan",     "G_InOut",      false);
        mDialog[DIALOG_TYPE_BTN2].mpLayout->bindToGroup("my_DialogWindow_a2_DialogOut.brlan",    "G_InOut",      false, false);
        mDialog[DIALOG_TYPE_BTN2].mpLayout->bindToGroup("my_DialogWindow_a2_FocusBtn_on.brlan",  "G_FocusBtnB",  false, false);
        mDialog[DIALOG_TYPE_BTN2].mpLayout->bindToGroup("my_DialogWindow_a2_FocusBtn_off.brlan", "G_FocusBtnB",  false, false);
        mDialog[DIALOG_TYPE_BTN2].mpLayout->bindToGroup("my_DialogWindow_a2_SelectBtn_Ac.brlan", "G_SelectBtnB", false, false);
        mDialog[DIALOG_TYPE_BTN2].mpLayout->bindToGroup("my_DialogWindow_a2_FocusBtn_on.brlan",  "G_FocusBtnA",  false, false);
        mDialog[DIALOG_TYPE_BTN2].mpLayout->bindToGroup("my_DialogWindow_a2_FocusBtn_off.brlan", "G_FocusBtnA",  false, false);
        mDialog[DIALOG_TYPE_BTN2].mpLayout->bindToGroup("my_DialogWindow_a2_SelectBtn_Ac.brlan", "G_SelectBtnA", false, false);
        mDialog[DIALOG_TYPE_BTN2].mpLayout->finishBinding();
        mDialog[DIALOG_TYPE_BTN2].mpGui = new(heap, CLASS_HEAP) gui::PaneManager(NULL, mDialog[DIALOG_TYPE_BTN2].mpLayout->getDrawInfo(), NULL, allocator);
        mDialog[DIALOG_TYPE_BTN2].mpGui->createLayoutScene(*mDialog[DIALOG_TYPE_BTN2].mpLayout->getLayout());
        mDialog[DIALOG_TYPE_BTN2].mpGui->setAllComponentTriggerTarget(false);
        for (int i = 0; i <= (BUTTON_TWO_MAX - 1); i++) {
            mDialog[DIALOG_TYPE_BTN2].mpGui->setTriggerTarget(mDialog[DIALOG_TYPE_BTN2].mpLayout->findPane(mscBtnName[i]), true);
        }

        // Dialog with three buttons
        mDialog[DIALOG_TYPE_BTN3].mpLayout = new(heap, CLASS_HEAP) layout::Object(heap, mpLayoutFile, "arc", "my_DialogWindow_a3.brlyt");
        mDialog[DIALOG_TYPE_BTN3].mpLayout->bindToGroup("my_DialogWindow_a3_DialogIn.brlan",     "G_InOut",      false);
        mDialog[DIALOG_TYPE_BTN3].mpLayout->bindToGroup("my_DialogWindow_a3_DialogOut.brlan",    "G_InOut",      false, false);
        mDialog[DIALOG_TYPE_BTN3].mpLayout->bindToGroup("my_DialogWindow_a3_FocusBtn_on.brlan",  "G_FocusBtnB",  false, false);
        mDialog[DIALOG_TYPE_BTN3].mpLayout->bindToGroup("my_DialogWindow_a3_FocusBtn_off.brlan", "G_FocusBtnB",  false, false);
        mDialog[DIALOG_TYPE_BTN3].mpLayout->bindToGroup("my_DialogWindow_a3_SelectBtn_Ac.brlan", "G_SelectBtnB", false, false);
        mDialog[DIALOG_TYPE_BTN3].mpLayout->bindToGroup("my_DialogWindow_a3_FocusBtn_on.brlan",  "G_FocusBtnA",  false, false);
        mDialog[DIALOG_TYPE_BTN3].mpLayout->bindToGroup("my_DialogWindow_a3_FocusBtn_off.brlan", "G_FocusBtnA",  false, false);
        mDialog[DIALOG_TYPE_BTN3].mpLayout->bindToGroup("my_DialogWindow_a3_SelectBtn_Ac.brlan", "G_SelectBtnA", false, false);
        mDialog[DIALOG_TYPE_BTN3].mpLayout->bindToGroup("my_DialogWindow_a3_FocusBtn_on.brlan",  "G_FocusBtnC",  false, false);
        mDialog[DIALOG_TYPE_BTN3].mpLayout->bindToGroup("my_DialogWindow_a3_FocusBtn_off.brlan", "G_FocusBtnC",  false, false);
        mDialog[DIALOG_TYPE_BTN3].mpLayout->bindToGroup("my_DialogWindow_a3_SelectBtn_Ac.brlan", "G_SelectBtnC", false, false);
        mDialog[DIALOG_TYPE_BTN3].mpLayout->finishBinding();
        mDialog[DIALOG_TYPE_BTN3].mpGui = new(heap, CLASS_HEAP) gui::PaneManager(NULL, mDialog[DIALOG_TYPE_BTN3].mpLayout->getDrawInfo(), NULL, allocator);
        mDialog[DIALOG_TYPE_BTN3].mpGui->createLayoutScene(*mDialog[DIALOG_TYPE_BTN3].mpLayout->getLayout());
        mDialog[DIALOG_TYPE_BTN3].mpGui->setAllComponentTriggerTarget(false);
        for (int i = 0; i <= (BUTTON_THREE_MAX - 1); i++) {
            mDialog[DIALOG_TYPE_BTN3].mpGui->setTriggerTarget(mDialog[DIALOG_TYPE_BTN3].mpLayout->findPane(mscBtnName[i]), true);
        }

        // Dialog with two buttons (alternative)
        mDialog[DIALOG_TYPE_BTN2B].mpLayout = new(heap, CLASS_HEAP) layout::Object(heap, mpLayoutFile, "arc", "my_DialogWindow_b.brlyt");
        mDialog[DIALOG_TYPE_BTN2B].mpLayout->bindToGroup("my_DialogWindow_b_DialogIn.brlan",     "G_InOut",      false);
        mDialog[DIALOG_TYPE_BTN2B].mpLayout->bindToGroup("my_DialogWindow_b_DialogOut.brlan",    "G_InOut",      false, false);
        mDialog[DIALOG_TYPE_BTN2B].mpLayout->bindToGroup("my_DialogWindow_b_FocusBtn_on.brlan",  "G_FocusBtnB",  false, false);
        mDialog[DIALOG_TYPE_BTN2B].mpLayout->bindToGroup("my_DialogWindow_b_FocusBtn_off.brlan", "G_FocusBtnB",  false, false);
        mDialog[DIALOG_TYPE_BTN2B].mpLayout->bindToGroup("my_DialogWindow_b_SelectBtn_Ac.brlan", "G_SelectBtnB", false, false);
        mDialog[DIALOG_TYPE_BTN2B].mpLayout->bindToGroup("my_DialogWindow_b_FocusBtn_on.brlan",  "G_FocusBtnA",  false, false);
        mDialog[DIALOG_TYPE_BTN2B].mpLayout->bindToGroup("my_DialogWindow_b_FocusBtn_off.brlan", "G_FocusBtnA",  false, false);
        mDialog[DIALOG_TYPE_BTN2B].mpLayout->bindToGroup("my_DialogWindow_b_SelectBtn_Ac.brlan", "G_SelectBtnA", false, false);
        mDialog[DIALOG_TYPE_BTN2B].mpLayout->finishBinding();
        mDialog[DIALOG_TYPE_BTN2B].mpGui = new(heap, CLASS_HEAP) gui::PaneManager(NULL, mDialog[DIALOG_TYPE_BTN2B].mpLayout->getDrawInfo(), NULL, allocator);
        mDialog[DIALOG_TYPE_BTN2B].mpGui->createLayoutScene(*mDialog[DIALOG_TYPE_BTN2B].mpLayout->getLayout());
        mDialog[DIALOG_TYPE_BTN2B].mpGui->setAllComponentTriggerTarget(false);
        for (int i = 0; i <= (BUTTON_TWO_MAX - 1); i++) {
            mDialog[DIALOG_TYPE_BTN2B].mpGui->setTriggerTarget(mDialog[DIALOG_TYPE_BTN2B].mpLayout->findPane(mscBtnName[i]), true);
        }
    }

    void DialogWindow::init() {
        for (int i = 0; i < DIALOG_BTN_TYPE_MAX; i++) {
            mbBtnHovered[i] = FALSE;
        }

        mLastResult = RESULT_NONE;
        mWaitTick = 0;
        mResult = RESULT_NONE;

        mbTerminated = false;
        mbSwapSound = false;
        mbIsProg = false;
        mbDoProgBar = false;

        mProgBarLen = 0;
        mProgBarFrame = 0;

        if (mpCurDialog) {
            if (mpCurDialog->mpLayout->getAnim(ANIM_FOCUS_BTN_B_ON)) {
                mpCurDialog->mpLayout->getAnim(ANIM_FOCUS_BTN_B_ON)->init();
            }
            if (mpCurDialog->mpLayout->getAnim(ANIM_FOCUS_BTN_A_ON)) {
                mpCurDialog->mpLayout->getAnim(ANIM_FOCUS_BTN_A_ON)->init();
            }
            if (mpCurDialog->mpGui) {
                mpCurDialog->mpGui->init();
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
        }

        if (mpCurDialog) {
            mpCurDialog->mpLayout->calc();
        }
    }

    void DialogWindow::stt_fadein() {
        if (!mpCurDialog->mpLayout->getAnim(ANIM_DIALOG_IN)->isPlaying()) {
            mState = DIALOG_STATE_NORMAL;
        }
    }

    void DialogWindow::stt_normal() {
        // For those with a user interface
        if (mpCurDialog->mpGui) {
            mpCurDialog->mpGui->update();
        }

        if (mbTerminated) {
            mbNextState = true;

            mResult = RESULT_TERMINATED;

            mpCurDialog->mpLayout->getAnim(ANIM_DIALOG_OUT)->play();
            if (mbIsProg) {
                snd::getSystem()->startSE("WIPL_SE_COPY_FINISH");
            }
            mState = DIALOG_STATE_FADE_OUT;
        }
        else {
            if (mDialogType == DIALOG_TYPE_BTN0) {
                if (mWaitTimer && ++mWaitTick > mWaitTimer) {
                    mbNextState = true;

                    mResult = RESULT_WAIT;

                    mpCurDialog->mpLayout->getAnim(ANIM_DIALOG_OUT)->play();
                    if (mbIsProg) {
                        snd::getSystem()->startSE("WIPL_SE_COPY_FINISH");
                    }
                    mState = DIALOG_STATE_FADE_OUT;
                }
                else {
                    if (mbDoProgBar) {
                        if (mProgBarFrame < mProgBarLen) {
                            mProgBarFrame += 2;
                            if (mProgBarFrame > mProgBarLen) {
                                mProgBarFrame = mProgBarLen;
                            }
                            
                        }

                        mpCurDialog->mpLayout->getAnim(ANIM_BTN0_PRORESS)->initAnmFrame(mProgBarFrame);

                        if (mProgBarFrame == 100) {
                            mbNextState = true;

                            mResult = RESULT_PROGRESS;

                            mpCurDialog->mpLayout->getAnim(ANIM_DIALOG_OUT)->play();
                            if (mbIsProg) {
                                snd::getSystem()->startSE("WIPL_SE_COPY_FINISH");
                            }
                            mState = DIALOG_STATE_FADE_OUT;
                        }
                    }
                }
            }
        }
    }

    void DialogWindow::stt_select() {
        s16 anim = -1;

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

        // Play select animation
        if (!mpCurDialog->mpLayout->getAnim(anim)->isPlaying()) {
            mpCurDialog->mpLayout->getAnim(ANIM_DIALOG_OUT)->play();
            mState = DIALOG_STATE_FADE_OUT;
        }
    }

    void DialogWindow::stt_fadeout() {
        if (!mpCurDialog->mpLayout->getAnim(ANIM_DIALOG_OUT)->isPlaying()) {
            mLastResult = mResult;
            mResult = RESULT_NONE;

            if (mpCurDialog->mpGui) {
                mpCurDialog->mpGui->setEventHandler(NULL);
            }
            mpCurDialog = NULL;

            mState = DIALOG_STATE_READY;

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
        if (mpCurDialog->mpGui) {
            mpCurDialog->mpGui->update();
        }

        if (!mpCurDialog->mpLayout->isPlaying(ANIM_SELECT_BTN_B) && !mpCurDialog->mpLayout->isPlaying(ANIM_SELECT_BTN_A)) {
            if (mResult == RESULT_LEFT_BUTTON) {
                if (mbBtnHovered[DIALOG_BTN_TYPE_BTN2] != FALSE && mpPages[mCurPage].isTwoBtn) {
                    mpCurDialog->mpLayout->getAnim(ANIM_FOCUS_BTN_A_ON)->play();
                }
            }
            else {
                if (mbBtnHovered[DIALOG_BTN_TYPE_BTN1] != FALSE) {
                    mpCurDialog->mpLayout->getAnim(ANIM_FOCUS_BTN_B_ON)->play();
                }
            }
            mState = DIALOG_STATE_PAGE_FADE;
        }
    }

    void DialogWindow::stt_pagefade() {
        if (mpCurDialog->mpGui) {
            mpCurDialog->mpGui->update();
        }

        switch (mPageState) {
            // Fade in
            case DIALOG_PAGE_FADE_IN: {
                // Fade in text box alpha
                mPageAlpha += mPageFadeSpeed;
                if (mPageAlpha > 255) {
                    mPageAlpha = 255;
                }
                nw4r::lyt::TextBox* textBox = nw4r::ut::DynamicCast<nw4r::lyt::TextBox*>(mpCurDialog->mpLayout->findPane("T_Dialog"));
                textBox->SetAlpha(mPageAlpha);

                // If the next page has the left button, make it visible (if it was invisible before)
                if (mpPages[mCurPage].isTwoBtn != mpPages[mPrevPage].isTwoBtn
                && mpPages[mCurPage].isTwoBtn == true) {
                    nw4r::lyt::Pane* pBtnA = mpCurDialog->mpLayout->findPane("N_BtnA");
                    nw4r::lyt::Pane* pBtnAPic = mpCurDialog->mpLayout->findPane("N_BtnA_Pic");

                    pBtnA->SetVisible(true);

                    if (mPageAlpha != 0) {
                        set_alpha(pBtnAPic, mPageAlpha);
                        // If alpha faded in, init button animations
                        if (mPageAlpha == 255) {
                            mbBtnHovered[DIALOG_BTN_TYPE_BTN2] = FALSE;
                            mpCurDialog->mpLayout->getAnim(ANIM_FOCUS_BTN_A_ON)->init();
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
                        nw4r::lyt::Pane* pPane = mpCurDialog->mpLayout->findPane("T_BtnA");
                        pPane->SetAlpha(mPageAlpha);
                    }
                }

                // Has the text changed? Fade in the text to the new one
                if (mpPages[mCurPage].rBtnMsgId != mpPages[mPrevPage].rBtnMsgId) {
                    nw4r::lyt::Pane* pPane = mpCurDialog->mpLayout->findPane("T_BtnB");
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
                nw4r::lyt::TextBox* textBox = nw4r::ut::DynamicCast<nw4r::lyt::TextBox*>(mpCurDialog->mpLayout->findPane("T_Dialog"));
                textBox->SetAlpha(mPageAlpha);

                // If the previous page has no left button, make it invisible (if it was visible before)
                if (mpPages[mCurPage].isTwoBtn != mpPages[mPrevPage].isTwoBtn
                && mpPages[mPrevPage].isTwoBtn == true) {
                    nw4r::lyt::Pane* pBtnA = mpCurDialog->mpLayout->findPane("N_BtnA");
                    nw4r::lyt::Pane* pBtnAPic = mpCurDialog->mpLayout->findPane("N_BtnA_Pic");

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
                        mpCurDialog->mpLayout->getAnim(ANIM_FOCUS_BTN_A_ON)->init();
                    }
                }
                else {
                    // Has the text changed? Fade out the old text
                    if (mpPages[mCurPage].lBtnMsgId != mpPages[mPrevPage].lBtnMsgId) {
                        nw4r::lyt::Pane* pPane = mpCurDialog->mpLayout->findPane("T_BtnA");
                        pPane->SetAlpha(mPageAlpha);
                    }
                }

                // Has the text changed? Fade out the old text
                if (mpPages[mCurPage].rBtnMsgId != mpPages[mPrevPage].rBtnMsgId) {
                    nw4r::lyt::Pane* pPane = mpCurDialog->mpLayout->findPane("T_BtnB");
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
                            mpPages[mPrevPage].layoutObj->getAnim(0)->init();
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
            utility::Graphics::setDefaultOrtho();
            mpCurDialog->mpLayout->draw();

            if (mpCustomLayout) {
                const nw4r::math::VEC3 dlgPos = mpCurDialog->mpLayout->findPane("N_Dialog")->GetTranslate();
                const nw4r::math::VEC3 lytPos(dlgPos.x + mCustomLayoutPos.x, dlgPos.y + mCustomLayoutPos.y, dlgPos.z);
                mpCustomLayout->getRoot()->SetTranslate(lytPos);
                
                mpCustomLayout->calcMtx();
                if (mState != DIALOG_STATE_PAGE_FADE || mPageAlpha != 0) {
                    mpCustomLayout->draw();
                }
            }
        }
    }

    void DialogWindow::set_text(const char* pane, const wchar_t* text) {
        nw4r::lyt::TextBox* pPane = nw4r::ut::DynamicCast<nw4r::lyt::TextBox*>(mpCurDialog->mpLayout->findPane(pane));
        pPane->SetString(text);
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
        nw4r::lyt::TextBox* pPane = nw4r::ut::DynamicCast<nw4r::lyt::TextBox*>(mpCurDialog->mpLayout->findPane("T_Dialog"));
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
            if (mpCurDialog->mpGui) {
                mpCurDialog->mpGui->setEventHandler(this);
            }

            // Play fade in
            mpCurDialog->mpLayout->getAnim(ANIM_DIALOG_IN)->play();
            mState = DIALOG_STATE_FADE_IN;

            // For dialog pages
            mPageState = DIALOG_PAGE_NORMAL;
            mpCustomLayout = NULL;

            // Do we need the shade background?
            nw4r::lyt::Pane* pPane = mpCurDialog->mpLayout->findPane("Shade");
            if (pPane) {
                if (mbNoShade) {
                    pPane->SetVisible(false);
                }
                else {
                    pPane->SetVisible(true);
                }
            }

            // Do we need BtnA?
            pPane = mpCurDialog->mpLayout->findPane("N_BtnA");
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

            mpCurDialog->mpLayout->findPane("N_Prog")->SetVisible(false);

            if (mbIsProg) {
                mpCurDialog->mpLayout->findPane("Wait_00")->SetVisible(true);
                mpCurDialog->mpLayout->getAnim(ANIM_BTN0_WAIT)->play();

                snd::getSystem()->startSE("WIPL_SE_COPYING");
            }
            else {
                mpCurDialog->mpLayout->findPane("Wait_00")->SetVisible(false);
                
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

            mpCurDialog->mpLayout->findPane("N_Prog")->SetVisible(false);

            if (mbIsProg) {
                mpCurDialog->mpLayout->findPane("Wait_00")->SetVisible(true);
                mpCurDialog->mpLayout->getAnim(ANIM_BTN0_WAIT)->play();

                snd::getSystem()->startSE("WIPL_SE_COPYING");
            }
            else {
                mpCurDialog->mpLayout->findPane("Wait_00")->SetVisible(false);
                
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

    BOOL DialogWindow::callBtn2(Page* pages, int pageCount, int fadeDelay) {
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

        if (call(DIALOG_TYPE_BTN2B)) {
            mbSwapSound = bSwapSound;

            mpCurDialog->mpLayout->findPane("N_Top")->SetVisible(true);

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

        if (call(DIALOG_TYPE_BTN2B)) {
            mbSwapSound = bSwapSound;

            mpCurDialog->mpLayout->findPane("N_Top")->SetVisible(false);

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

            mpCurDialog->mpLayout->findPane("N_Prog")->SetVisible(true);
            mpCurDialog->mpLayout->findPane("Wait_00")->SetVisible(true);

            // Play waiting icon
            mpCurDialog->mpLayout->getAnim(ANIM_BTN0_WAIT)->play();
            // Prepare progress bar
            mpCurDialog->mpLayout->getAnim(ANIM_BTN0_PRORESS)->init();

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

            mpCurDialog->mpLayout->findPane("N_Prog")->SetVisible(true);
            mpCurDialog->mpLayout->findPane("Wait_00")->SetVisible(true);

            // Play waiting icon
            mpCurDialog->mpLayout->getAnim(ANIM_BTN0_WAIT)->play();
            // Prepare progress bar
            mpCurDialog->mpLayout->getAnim(ANIM_BTN0_PRORESS)->init();

            snd::getSystem()->startSE("WIPL_SE_COPYING");

            result = TRUE;
        }

        return result;
    }

    void DialogWindow::start_point_event(const char* paneName, controller::Interface* controller) {
        int btnNo = get_button_no(paneName);
        if ((u32)(mState - DIALOG_STATE_PAGE_FADE) > 1
        || (btnNo != DIALOG_BTN_TYPE_BTN2 || mpPages[mCurPage].isTwoBtn == mpPages[mPrevPage].isTwoBtn)) {
            if (btnNo != -1 && mbBtnHovered[btnNo] == FALSE) {
                int animIdx = -1;

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

                if (controller) {
                    controller->rumble();
                }

                mpCurDialog->mpLayout->getAnim(animIdx)->play();
            }

            mbBtnHovered[btnNo]++;
        }
    }

    void DialogWindow::start_left_event(const char* paneName) {
        int btnNo = get_button_no(paneName);
        if ((u32)(mState - DIALOG_STATE_PAGE_FADE) > 1
        || (btnNo != DIALOG_BTN_TYPE_BTN2 || mpPages[mCurPage].isTwoBtn == mpPages[mPrevPage].isTwoBtn)) {
            if (btnNo != -1 && mbBtnHovered[btnNo] == TRUE) {
                int animIdx = -1;

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

                mpCurDialog->mpLayout->getAnim(animIdx)->play();
            }

            if (mbBtnHovered[btnNo] > 0) {
                mbBtnHovered[btnNo]--;
            }
        }
    }

    void DialogWindow::start_trig_event(const char* paneName) {
        int btnNo;
        if (mState != DIALOG_STATE_PAGE_FADE && (btnNo = get_button_no(paneName), btnNo != -1)) {
            int animIdx = -1;

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

            mpCurDialog->mpLayout->getAnim(animIdx)->play();

            if (mPageCount > 0) {
                if (mpPages[mPrevPage].isLytAnim && mpPages[mPrevPage].layoutObj) {
                    mpPages[mPrevPage].layoutObj->getAnim(0)->stop();
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
            case ::gui::EventHandler::ON_POINT: {
                start_point_event(paneName, con);
                break;
            }
            case ::gui::EventHandler::ON_LEFT: {
                start_left_event(paneName);
                break;
            }
            case ::gui::EventHandler::ON_TRIG: {
                if (mState == DIALOG_STATE_NORMAL && con->downTrg(IPL_BUTTON_A)) {
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
