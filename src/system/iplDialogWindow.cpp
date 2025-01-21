#include "system/iplDialogWindow.h"

#include "utility/iplGraphics.h"

#include "sound/iplSound.h"

#include "system/iplSystem.h"

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
        ANIM_CMN_DIALOG_IN = 0,
        ANIM_CMN_DIALOG_OUT,
    };

    enum {
        ANIM_BTN0_DIALOG_IN = 0,
        ANIM_BTN0_DIALOG_OUT,
        ANIM_BTN0_WAIT,
        ANIM_BTN0_PRORESS,
    };

    enum {
        ANIM_BTN1_DIALOG_IN = 0,
        ANIM_BTN1_DIALOG_OUT,
        ANIM_BTN1_FOCUS_BTN_ON,
        ANIM_BTN1_FOCUS_BTN_OFF,
        ANIM_BTN1_SELECT_BTN,
    };

    enum {
        ANIM_BTN2_DIALOG_IN = 0,
        ANIM_BTN2_DIALOG_OUT,
        ANIM_BTN2_FOCUS_BTN_B_ON,
        ANIM_BTN2_FOCUS_BTN_B_OFF,
        ANIM_BTN2_SELECT_BTN_B,
        ANIM_BTN2_FOCUS_BTN_A_ON,
        ANIM_BTN2_FOCUS_BTN_A_OFF,
        ANIM_BTN2_SELECT_BTN_A,
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
        ANIM_BTN2B_DIALOG_IN = 0,
        ANIM_BTN2B_DIALOG_OUT,
        ANIM_BTN2B_FOCUS_BTN_B_ON,
        ANIM_BTN2B_FOCUS_BTN_B_OFF,
        ANIM_BTN2B_SELECT_BTN_B,
        ANIM_BTN2B_FOCUS_BTN_A_ON,
        ANIM_BTN2B_FOCUS_BTN_A_OFF,
        ANIM_BTN2B_SELECT_BTN_A,
    };

    enum {
        DIALOG_STATE_NONE = 0,
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
    mState(DIALOG_STATE_NONE),
    mResult(RESULT_NONE),
    mLastResult(RESULT_NONE),
    mDialogType(DIALOG_TYPE_NONE),
    mWaitTick(0),
    mbNextState(false),
    mbTerminated(false),
    mbSwapSound(false),
    mbIsProg(false),
    mbDoProgBar(false),
    mProgBarLen(0),
    mProgBarFrame(0),
    mpCurDialog(NULL),
    mpCustomLayout(NULL),
    mDialogPageCount(-1),
    mCurPage(0),
    mbNoShade(false),
    mbHideBtnA(false) {
        EGG::Allocator* allocator = new(heap, CLASS_HEAP) EGG::Allocator(heap, CLASS_HEAP);
        nw4r::lyt::Layout::SetAllocator(allocator);

        init();

        mpLayoutFile = System::getDlgWdwFile();

        // Dialog with no buttons
        mDialog[DIALOG_TYPE_BTN0].mpLayout = new(heap, CLASS_HEAP) layout::Object(heap, mpLayoutFile, "arc", "my_DialogWindow_a0.brlyt");
        mDialog[DIALOG_TYPE_BTN0].mpLayout->bindToGroup("my_DialogWindow_a0_DialogIn.brlan", "G_InOut", false);
        mDialog[DIALOG_TYPE_BTN0].mpLayout->bindToGroup("my_DialogWindow_a0_DialogOut.brlan", "G_InOut", false, false);
        mDialog[DIALOG_TYPE_BTN0].mpLayout->bindToGroup("my_DialogWindow_a0_Wait.brlan", "G_Wait", false, false);
        mDialog[DIALOG_TYPE_BTN0].mpLayout->bindToGroup("my_DialogWindow_a0_Progres.brlan", "G_Prog", false);
        mDialog[DIALOG_TYPE_BTN0].mpLayout->findPane("Wait_00")->SetVisible(false);
        mDialog[DIALOG_TYPE_BTN0].mpLayout->findPane("N_Prog")->SetVisible(false);
        mDialog[DIALOG_TYPE_BTN0].mpLayout->finishBinding();
        mDialog[DIALOG_TYPE_BTN0].mpGui = NULL;  // No user interaction for progress dialog

        // Dialog with one button
        mDialog[DIALOG_TYPE_BTN1].mpLayout = new(heap, CLASS_HEAP) layout::Object(heap, mpLayoutFile, "arc", "my_DialogWindow_a1.brlyt");
        mDialog[DIALOG_TYPE_BTN1].mpLayout->bindToGroup("my_DialogWindow_a1_DialogIn.brlan", "G_InOut", false);
        mDialog[DIALOG_TYPE_BTN1].mpLayout->bindToGroup("my_DialogWindow_a1_DialogOut.brlan", "G_InOut", false, false);
        mDialog[DIALOG_TYPE_BTN1].mpLayout->bindToGroup("my_DialogWindow_a1_FocusBtn_on.brlan", "G_FocusBtnB", false, false);
        mDialog[DIALOG_TYPE_BTN1].mpLayout->bindToGroup("my_DialogWindow_a1_FocusBtn_off.brlan", "G_FocusBtnB", false, false);
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
        mDialog[DIALOG_TYPE_BTN2].mpLayout->bindToGroup("my_DialogWindow_a2_DialogIn.brlan", "G_InOut", false);
        mDialog[DIALOG_TYPE_BTN2].mpLayout->bindToGroup("my_DialogWindow_a2_DialogOut.brlan", "G_InOut", false, false);
        mDialog[DIALOG_TYPE_BTN2].mpLayout->bindToGroup("my_DialogWindow_a2_FocusBtn_on.brlan", "G_FocusBtnB", false, false);
        mDialog[DIALOG_TYPE_BTN2].mpLayout->bindToGroup("my_DialogWindow_a2_FocusBtn_off.brlan", "G_FocusBtnB", false, false);
        mDialog[DIALOG_TYPE_BTN2].mpLayout->bindToGroup("my_DialogWindow_a2_SelectBtn_Ac.brlan", "G_SelectBtnB", false, false);
        mDialog[DIALOG_TYPE_BTN2].mpLayout->bindToGroup("my_DialogWindow_a2_FocusBtn_on.brlan", "G_FocusBtnA", false, false);
        mDialog[DIALOG_TYPE_BTN2].mpLayout->bindToGroup("my_DialogWindow_a2_FocusBtn_off.brlan", "G_FocusBtnA", false, false);
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
        mDialog[DIALOG_TYPE_BTN3].mpLayout->bindToGroup("my_DialogWindow_a3_DialogIn.brlan", "G_InOut", false);
        mDialog[DIALOG_TYPE_BTN3].mpLayout->bindToGroup("my_DialogWindow_a3_DialogOut.brlan", "G_InOut", false, false);
        mDialog[DIALOG_TYPE_BTN3].mpLayout->bindToGroup("my_DialogWindow_a3_FocusBtn_on.brlan", "G_FocusBtnB", false, false);
        mDialog[DIALOG_TYPE_BTN3].mpLayout->bindToGroup("my_DialogWindow_a3_FocusBtn_off.brlan", "G_FocusBtnB", false, false);
        mDialog[DIALOG_TYPE_BTN3].mpLayout->bindToGroup("my_DialogWindow_a3_SelectBtn_Ac.brlan", "G_SelectBtnB", false, false);
        mDialog[DIALOG_TYPE_BTN3].mpLayout->bindToGroup("my_DialogWindow_a3_FocusBtn_on.brlan", "G_FocusBtnA", false, false);
        mDialog[DIALOG_TYPE_BTN3].mpLayout->bindToGroup("my_DialogWindow_a3_FocusBtn_off.brlan", "G_FocusBtnA", false, false);
        mDialog[DIALOG_TYPE_BTN3].mpLayout->bindToGroup("my_DialogWindow_a3_SelectBtn_Ac.brlan", "G_SelectBtnA", false, false);
        mDialog[DIALOG_TYPE_BTN3].mpLayout->bindToGroup("my_DialogWindow_a3_FocusBtn_on.brlan", "G_FocusBtnC", false, false);
        mDialog[DIALOG_TYPE_BTN3].mpLayout->bindToGroup("my_DialogWindow_a3_FocusBtn_off.brlan", "G_FocusBtnC", false, false);
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
        mDialog[DIALOG_TYPE_BTN2B].mpLayout->bindToGroup("my_DialogWindow_b_DialogIn.brlan", "G_InOut", false);
        mDialog[DIALOG_TYPE_BTN2B].mpLayout->bindToGroup("my_DialogWindow_b_DialogOut.brlan", "G_InOut", false, false);
        mDialog[DIALOG_TYPE_BTN2B].mpLayout->bindToGroup("my_DialogWindow_b_FocusBtn_on.brlan", "G_FocusBtnB", false, false);
        mDialog[DIALOG_TYPE_BTN2B].mpLayout->bindToGroup("my_DialogWindow_b_FocusBtn_off.brlan", "G_FocusBtnB", false, false);
        mDialog[DIALOG_TYPE_BTN2B].mpLayout->bindToGroup("my_DialogWindow_b_SelectBtn_Ac.brlan", "G_SelectBtnB", false, false);
        mDialog[DIALOG_TYPE_BTN2B].mpLayout->bindToGroup("my_DialogWindow_b_FocusBtn_on.brlan", "G_FocusBtnA", false, false);
        mDialog[DIALOG_TYPE_BTN2B].mpLayout->bindToGroup("my_DialogWindow_b_FocusBtn_off.brlan", "G_FocusBtnA", false, false);
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
            mBtnHovered[i] = 0;
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
            if (mpCurDialog->mpLayout->getAnim(2)) {
                mpCurDialog->mpLayout->getAnim(2)->initAnmFrame();
            }
            if (mpCurDialog->mpLayout->getAnim(5)) {
                mpCurDialog->mpLayout->getAnim(5)->initAnmFrame();
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
        if (!mpCurDialog->mpLayout->getAnim(ANIM_CMN_DIALOG_IN)->isPlaying()) {
            mState = DIALOG_STATE_NORMAL;
        }
    }

    void DialogWindow::stt_normal() {
        // For those with a user interface
        if (mpCurDialog->mpGui) {
            mpCurDialog->mpGui->update();
        }

        // For those without a user interface
        if (mbTerminated) {
            mbNextState = true;

            mResult = RESULT_TERMINATED;

            mpCurDialog->mpLayout->getAnim(ANIM_CMN_DIALOG_OUT)->playAnmFrame();
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

                    mpCurDialog->mpLayout->getAnim(ANIM_CMN_DIALOG_OUT)->playAnmFrame();
                    if (mbIsProg) {
                        snd::getSystem()->startSE("WIPL_SE_COPY_FINISH");
                    }
                    mState = DIALOG_STATE_FADE_OUT;
                }
                else {
                    if (mbDoProgBar) {
                        if (mProgBarFrame < mProgBarLen && (mProgBarFrame += 2) > mProgBarLen) {
                            mProgBarFrame = mProgBarLen;
                        }

                        mpCurDialog->mpLayout->getAnim(ANIM_BTN0_PRORESS)->initAnmFrame(mProgBarFrame);

                        if (mProgBarFrame == 100) {
                            mbNextState = true;

                            mResult = RESULT_PROGRESS;

                            mpCurDialog->mpLayout->getAnim(ANIM_CMN_DIALOG_OUT)->playAnmFrame();
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
                    anim = ANIM_BTN2_SELECT_BTN_B;
                    break;
                }
                case RESULT_LEFT_BUTTON: {
                    anim = ANIM_BTN2_SELECT_BTN_A;
                    break;
                }
            }
        }

        if (!mpCurDialog->mpLayout->getAnim(anim)->isPlaying()) {
            mpCurDialog->mpLayout->getAnim(ANIM_CMN_DIALOG_OUT)->playAnmFrame();

            mState = DIALOG_STATE_FADE_OUT;
        }
    }

    void DialogWindow::stt_fadeout() {
        if (!mpCurDialog->mpLayout->getAnim(ANIM_CMN_DIALOG_OUT)->isPlaying()) {
            mLastResult = mResult;
            mResult = RESULT_NONE;

            if (mpCurDialog->mpGui) {
                mpCurDialog->mpGui->setEventHandler(NULL);
            }
            mpCurDialog = NULL;

            mState = DIALOG_STATE_NONE;

            mDialogPageCount = -1;
            mCurPage = 0;
        }
    }

    void DialogWindow::set_alpha(nw4r::lyt::Pane* pane, u8 alpha) {
        for (nw4r::lyt::PaneList::Iterator it = pane->GetChildList().GetBeginIter(); it != pane->GetChildList().GetEndIter(); it++) {
            it->SetAlpha(alpha);
            set_alpha(&*it, alpha);
        }
    }

    void DialogWindow::stt_prepare_pagefade() {
        if (mpCurDialog->mpGui) {
            mpCurDialog->mpGui->update();
        }

        if (!mpCurDialog->mpLayout->isPlaying(ANIM_BTN2_SELECT_BTN_B) && !mpCurDialog->mpLayout->isPlaying(ANIM_BTN2_SELECT_BTN_A)) {
            if (mResult == RESULT_LEFT_BUTTON) {
                if (mBtnHovered[DIALOG_BTN_TYPE_BTN2] != 0 && mpDialogPages[mCurPage].mbTwoBtn) {
                    mpCurDialog->mpLayout->getAnim(ANIM_BTN2_FOCUS_BTN_A_ON)->playAnmFrame();
                }
            }
            else {
                if (mBtnHovered[DIALOG_BTN_TYPE_BTN1] != 0) {
                    mpCurDialog->mpLayout->getAnim(ANIM_BTN1_FOCUS_BTN_ON)->playAnmFrame();
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
            case DIALOG_PAGE_FADE_IN: {
                mPageAlpha += mPageFadeSpeed;
                if (mPageAlpha > 255) {
                    mPageAlpha = 255;
                }
                nw4r::lyt::TextBox* textBox = nw4r::ut::DynamicCast<nw4r::lyt::TextBox*>(mpCurDialog->mpLayout->findPane("T_Dialog"));
                textBox->SetAlpha(mPageAlpha);

                if (mpDialogPages[mCurPage].mbTwoBtn != mpDialogPages[mPrevPage].mbTwoBtn
                && mpDialogPages[mCurPage].mbTwoBtn == true) {
                    nw4r::lyt::Pane* pBtnA = mpCurDialog->mpLayout->findPane("N_BtnA");
                    nw4r::lyt::Pane* pBtnAPic = mpCurDialog->mpLayout->findPane("N_BtnA_Pic");

                    pBtnA->SetVisible(true);

                    if (mPageAlpha) {
                        set_alpha(pBtnAPic, mPageAlpha);
                        if (mPageAlpha == 255) {
                            mBtnHovered[DIALOG_BTN_TYPE_BTN2] = 0;
                            mpCurDialog->mpLayout->getAnim(ANIM_BTN2_FOCUS_BTN_A_ON)->initAnmFrame();
                        }
                    }
                    else {
                        set_alpha(pBtnAPic, 255);
                        pBtnA->SetVisible(false);
                    }
                }
                else {
                    if (mpDialogPages[mCurPage].mLBtnMsgId != mpDialogPages[mPrevPage].mLBtnMsgId) {
                        nw4r::lyt::Pane* pPane = mpCurDialog->mpLayout->findPane("T_BtnA");
                        pPane->SetAlpha(mPageAlpha);
                    }
                }

                if (mpDialogPages[mCurPage].mRBtnMsgId != mpDialogPages[mPrevPage].mRBtnMsgId) {
                    nw4r::lyt::Pane* pPane = mpCurDialog->mpLayout->findPane("T_BtnB");
                    pPane->SetAlpha(mPageAlpha);
                }

                if (mpDialogPages[mCurPage].mpLayout != mpDialogPages[mPrevPage].mpLayout
                && mpDialogPages[mCurPage].mpLayout) {
                    set_alpha(mpDialogPages[mCurPage].mpLayout->getRoot(), mPageAlpha);
                    if (mpDialogPages[mCurPage].mbAnimLayout && mPageAlpha == 255) {
                        mpDialogPages[mCurPage].mpLayout->getAnim(ANIM_CMN_DIALOG_IN)->playAnmFrame();
                    }
                }

                if (mPageAlpha == 255) {
                    mPageState = DIALOG_PAGE_NORMAL;
                    mState = DIALOG_STATE_NORMAL;
                }
                break;
            }
            case DIALOG_PAGE_FADE_OUT: {
                mPageAlpha -= mPageFadeSpeed;
                if (mPageAlpha < 0) {
                    mPageAlpha = 0;
                }
                nw4r::lyt::TextBox* textBox = nw4r::ut::DynamicCast<nw4r::lyt::TextBox*>(mpCurDialog->mpLayout->findPane("T_Dialog"));
                textBox->SetAlpha(mPageAlpha);

                if (mpDialogPages[mCurPage].mbTwoBtn != mpDialogPages[mPrevPage].mbTwoBtn
                && mpDialogPages[mPrevPage].mbTwoBtn == true) {
                    nw4r::lyt::Pane* pBtnA = mpCurDialog->mpLayout->findPane("N_BtnA");
                    nw4r::lyt::Pane* pBtnAPic = mpCurDialog->mpLayout->findPane("N_BtnA_Pic");

                    if ((int)((f32)(255.f / mPageAlpha))) {
                        set_alpha(pBtnAPic, mPageAlpha);
                    }
                    else {
                        set_alpha(pBtnAPic, 255);
                        pBtnA->SetVisible(false);
                        mBtnHovered[DIALOG_BTN_TYPE_BTN2] = 0;
                        mpCurDialog->mpLayout->getAnim(ANIM_BTN2_FOCUS_BTN_A_ON)->initAnmFrame();
                    }
                }
                else {
                    if (mpDialogPages[mCurPage].mLBtnMsgId != mpDialogPages[mPrevPage].mLBtnMsgId) {
                        nw4r::lyt::Pane* pPane = mpCurDialog->mpLayout->findPane("T_BtnA");
                        pPane->SetAlpha(mPageAlpha);
                    }
                }

                if (mpDialogPages[mCurPage].mRBtnMsgId != mpDialogPages[mPrevPage].mRBtnMsgId) {
                    nw4r::lyt::Pane* pPane = mpCurDialog->mpLayout->findPane("T_BtnB");
                       pPane->SetAlpha(mPageAlpha);
                }

                if (mpDialogPages[mCurPage].mpLayout != mpDialogPages[mPrevPage].mpLayout
                && mpDialogPages[mPrevPage].mpLayout) {
                    nw4r::lyt::Pane* pPane = mpDialogPages[mPrevPage].mpLayout->getRoot();
                    if (mPageAlpha) {
                        set_alpha(pPane, mPageAlpha);
                    }
                    else {
                        if (mpDialogPages[mPrevPage].mbAnimLayout) {
                            mpDialogPages[mPrevPage].mpLayout->getAnim(0)->initAnmFrame();
                        }
                        set_alpha(pPane, 255);
                    }
                }

                if (mPageAlpha == 0) {
                    mPageState = DIALOG_PAGE_FADE_IN;

                    set_message(mpDialogPages[mCurPage].mMsgId);
                    set_rbtn_text(mpDialogPages[mCurPage].mRBtnMsgId);
                    set_lbtn_text(mpDialogPages[mCurPage].mLBtnMsgId);

                    mpCustomLayout = mpDialogPages[mCurPage].mpLayout;

                    mCustomLayoutPos.x = 0.0f;
                    mCustomLayoutPos.y = mpDialogPages[mCurPage].mLayoutY;
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
                mpCustomLayout->getRoot()->SetTranslate(nw4r::math::VEC3(dlgPos.x + mCustomLayoutPos.x, dlgPos.y + mCustomLayoutPos.y, dlgPos.z));
                
                mpCustomLayout->calcMtx();
                if ((int)mState != DIALOG_STATE_PAGE_FADE || mPageAlpha != 0) {
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

        if (mState == DIALOG_STATE_NONE) {
            mpCurDialog = &mDialog[type];

            init();

            if (mpCurDialog->mpGui) {
                mpCurDialog->mpGui->setEventHandler(this);
            }

            mpCurDialog->mpLayout->getAnim(ANIM_CMN_DIALOG_IN)->playAnmFrame();

            mState = DIALOG_STATE_FADE_IN;

            mPageState = DIALOG_PAGE_NORMAL;
            mpCustomLayout = NULL;

            nw4r::lyt::Pane* pPane = mpCurDialog->mpLayout->findPane("Shade");
            if (pPane) {
                if (mbNoShade) {
                    pPane->SetVisible(false);
                }
                else {
                    pPane->SetVisible(true);
                }
            }

            pPane = mpCurDialog->mpLayout->findPane("N_BtnA");
            if (pPane) {
                if (mbHideBtnA) {
                    pPane->SetVisible(false);
                }
                else {
                    pPane->SetVisible(true);
                }
            }

            result = TRUE;
        }

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
                mpCurDialog->mpLayout->getAnim(ANIM_BTN0_WAIT)->playAnmFrame();

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
                mpCurDialog->mpLayout->getAnim(ANIM_BTN0_WAIT)->playAnmFrame();

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

    BOOL DialogWindow::callBtn2(Page* pages, int pageCount, int fadeSpeed) {
        BOOL result = FALSE;

        if (!pages[0].mbTwoBtn) {
            mbHideBtnA = true;
        }

        if (call(DIALOG_TYPE_BTN2)) {
            mpDialogPages = pages;
            mDialogPageCount = pageCount;

            int speed = (255.f / fadeSpeed);
            if (speed > (255.f / fadeSpeed)) {
                speed++;
            }
            mPageFadeSpeed = speed;
            mPageAlpha = 255;

            mCurPage = 0;
            mPrevPage = 0;

            mbSwapSound = false;

            set_message(mpDialogPages[mCurPage].mMsgId);
            set_rbtn_text(mpDialogPages[mCurPage].mRBtnMsgId);
            set_lbtn_text(mpDialogPages[mCurPage].mLBtnMsgId);

            if (mpDialogPages[mCurPage].mpLayout) {
                mpCustomLayout = mpDialogPages[mCurPage].mpLayout;
                
                mCustomLayoutPos.x = 0.0f;
                mCustomLayoutPos.y = mpDialogPages[mCurPage].mLayoutY;
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

            mpCurDialog->mpLayout->getAnim(ANIM_BTN0_WAIT)->playAnmFrame();
            mpCurDialog->mpLayout->getAnim(ANIM_BTN0_PRORESS)->initAnmFrame();

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

            mpCurDialog->mpLayout->getAnim(ANIM_BTN0_WAIT)->playAnmFrame();
            mpCurDialog->mpLayout->getAnim(ANIM_BTN0_PRORESS)->initAnmFrame();

            snd::getSystem()->startSE("WIPL_SE_COPYING");

            result = TRUE;
        }

        return result;
    }

    void DialogWindow::start_point_event(const char* paneName, controller::Interface* controller) {
        int btnNo = get_button_no(paneName);
        if (mState - DIALOG_STATE_PAGE_FADE > 1 || btnNo != DIALOG_BTN_TYPE_BTN2
        || mpDialogPages[mCurPage].mbTwoBtn == mpDialogPages[mPrevPage].mbTwoBtn) {
            if (btnNo != -1 && mBtnHovered[btnNo] == 0) {
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
                            animIdx = ANIM_BTN2_FOCUS_BTN_B_ON;
                            break;
                        }
                        case DIALOG_BTN_TYPE_BTN2: {
                            animIdx = ANIM_BTN2_FOCUS_BTN_A_ON;
                            break;
                        }
                    }
                }

                snd::getSystem()->startSE("WIPL_SE_BT_TARGETTING");

                if (controller) {
                    controller->rumble(0);
                }

                mpCurDialog->mpLayout->getAnim(animIdx)->playAnmFrame();
            }

            mBtnHovered[btnNo]++;
        }
    }

    void DialogWindow::start_left_event(const char* paneName) {
        int btnNo = get_button_no(paneName);
        if (mState - DIALOG_STATE_PAGE_FADE > 1 || btnNo != DIALOG_BTN_TYPE_BTN2 || mpDialogPages[mCurPage].mbTwoBtn == mpDialogPages[mPrevPage].mbTwoBtn) {
            if (btnNo != -1 && mBtnHovered[btnNo] == 1) {
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
                            animIdx = ANIM_BTN2_FOCUS_BTN_B_OFF;
                            break;
                        }
                        case DIALOG_BTN_TYPE_BTN2: {
                            animIdx = ANIM_BTN2_FOCUS_BTN_A_OFF;
                            break;
                        }
                    }
                }

                mpCurDialog->mpLayout->getAnim(animIdx)->playAnmFrame();
            }

            if (mBtnHovered[btnNo] > 0) {
                mBtnHovered[btnNo]--;
            }
        }
    }

    void DialogWindow::start_trig_event(const char* paneName) {
        int btnNo;
        if ((int)mState != DIALOG_STATE_PAGE_FADE && (btnNo = get_button_no(paneName), btnNo != -1)) {
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
                        animIdx = ANIM_BTN2_SELECT_BTN_A;
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
                        animIdx = ANIM_BTN2_SELECT_BTN_B;
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

            mpCurDialog->mpLayout->getAnim(animIdx)->playAnmFrame();

            if (mDialogPageCount > 0) {
                if (mpDialogPages[mPrevPage].mbAnimLayout && mpDialogPages[mPrevPage].mpLayout) {
                    mpDialogPages[mPrevPage].mpLayout->getAnim(0)->stopAnmFrame();
                }

                if (mCurPage < 0 || mCurPage == mDialogPageCount) {
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
            if (strncmp(mscBtnName[i], btnName, 0x10) == 0) {
                result = i;
                break;
            }
        }
        return result;
    }

    void DialogWindow::onEvent(u32 compId, u32 event, void* data) {
        ::gui::PaneComponent* component = (::gui::PaneComponent*)mpManager->getComponent(compId);
        const char* paneName = component->getPane()->GetName();

        controller::Interface* con = (controller::Interface*)data;

        switch (event) {
            case ::gui::EventHandler::ON_POINT: {
                start_point_event(paneName, con);
                break;
            }
            case ::gui::EventHandler::ON_OFFPOINT: {
                start_left_event(paneName);
                break;
            }
            case ::gui::EventHandler::ON_TRIG: {
                if ((int)mState == DIALOG_STATE_NORMAL && con->downTrg(IPL_BUTTON_A)) {
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
