#include "system/iplDialogWindow.h"

#include "system/iplSystem.h"

#pragma sym on
namespace ipl {
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
        ANIM_CMN_MAIN,
    };

    enum {
        ANIM_PROG_DIALOG_IN = 0,
        ANIM_PROG_DIALOG_OUT,
        ANIM_PROG_WAIT,
        ANIM_PROG_PROGRESS,
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
        DIALOG_STATE_5,
        DIALOG_STATE_6,
    };

    DialogWindow::DialogWindow(EGG::Heap* heap) :
    ::gui::EventHandler(),
    mState(DIALOG_STATE_NONE),
    mPressedBtn(DIALOG_BTN_NONE),
    mLastPressedBtn(DIALOG_BTN_NONE),
    mDialogType(DIALOG_TYPE_NONE),
    unk_0x2C(0),
    unk_0x34(0),
    unk_0x35(0),
    unk_0x36(0),
    unk_0x37(0),
    unk_0x38(0),
    unk_0x3C(0),
    unk_0x40(0),
    mpCurDialog(NULL),
    unk_0x7C(NULL),
    unk_0x8C(-1),
    unk_0x90(0),
    unk_0x98(0),
    unk_0x99(0) {
        EGG::Allocator* allocator = new(heap, CLASS_HEAP) EGG::Allocator(heap, CLASS_HEAP);
        nw4r::lyt::Layout::SetAllocator(allocator);

        init();

        mpLayoutFile = System::getDlgWdwFile();

        // Progress Dialog
        mDialog[DIALOG_TYPE_PROG].mpLayout = new(heap, CLASS_HEAP) layout::Object(heap, mpLayoutFile, "arc", "my_DialogWindow_a0.brlyt");
        mDialog[DIALOG_TYPE_PROG].mpLayout->bindToGroup("my_DialogWindow_a0_DialogIn.brlan", "G_InOut", false);
        mDialog[DIALOG_TYPE_PROG].mpLayout->bindToGroup("my_DialogWindow_a0_DialogOut.brlan", "G_InOut", false, false);
        mDialog[DIALOG_TYPE_PROG].mpLayout->bindToGroup("my_DialogWindow_a0_Wait.brlan", "G_Wait", false, false);
        mDialog[DIALOG_TYPE_PROG].mpLayout->bindToGroup("my_DialogWindow_a0_Progres.brlan", "G_Prog", false);
        mDialog[DIALOG_TYPE_PROG].mpLayout->findPane("Wait_00")->SetVisible(false);
        mDialog[DIALOG_TYPE_PROG].mpLayout->findPane("N_Prog")->SetVisible(false);
        mDialog[DIALOG_TYPE_PROG].mpLayout->finishBinding();
        mDialog[DIALOG_TYPE_PROG].mpGui = NULL;  // No user interaction for progress dialog

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
            unk_0x14[i] = 0;
        }

        mLastPressedBtn = DIALOG_BTN_NONE;
        unk_0x2C = 0;
        mPressedBtn = DIALOG_BTN_NONE;

        unk_0x35 = false;
        unk_0x36 = false;
        unk_0x37 = false;
        unk_0x38 = false;

        unk_0x3C = 0;
        unk_0x40 = 0;

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
        unk_0x34 = false;

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
            case DIALOG_STATE_5: {
                iplDialogWindow_81345880();
                break;
            }
            case DIALOG_STATE_6: {
                iplDialogWindow_81345778();
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

    void DialogWindow::stt_select() {
        s16 anim = -1;

        if (mDialogType == DIALOG_TYPE_BTN3) {
            switch (mPressedBtn) {
                case DIALOG_BTN3_A: {
                    anim = ANIM_BTN3_SELECT_BTN_A;
                    break;
                }
                case DIALOG_BTN3_B: {
                    anim = ANIM_BTN3_SELECT_BTN_B;
                    break;
                }
                case DIALOG_BTN3_C: {
                    anim = ANIM_BTN3_SELECT_BTN_C;
                    break;
                }
            }
        }
        else {
            switch (mPressedBtn) {
                case DIALOG_BTN_B: {
                    anim = ANIM_BTN2_SELECT_BTN_B;
                    break;
                }
                case DIALOG_BTN_A: {
                    anim = ANIM_BTN2_SELECT_BTN_A;
                    break;
                }
            }
        }

        if (!mpCurDialog->mpLayout->getAnim(anim)->isPlaying()) {
            mpCurDialog->mpLayout->playAnimFrame(ANIM_CMN_DIALOG_OUT);

            mState = DIALOG_STATE_FADE_OUT;
        }
    }

    void DialogWindow::stt_fadeout() {
        if (!mpCurDialog->mpLayout->getAnim(ANIM_CMN_DIALOG_OUT)->isPlaying()) {
            mLastPressedBtn = mPressedBtn;
            mPressedBtn = DIALOG_BTN_NONE;

            if (mpCurDialog->mpGui) {
                mpCurDialog->mpGui->setEventHandler(NULL);
            }
            mpCurDialog = NULL;

            mState = DIALOG_STATE_NONE;

            unk_0x8C = -1;
            unk_0x90 = 0;
        }
    }

    void DialogWindow::set_alpha(nw4r::lyt::Pane* pane, u8 alpha) {
        for (nw4r::lyt::PaneList::Iterator it = pane->GetChildList().GetBeginIter(); it != pane->GetChildList().GetEndIter(); it++) {
            it->SetAlpha(alpha);
            set_alpha(&*it, alpha);
        }
    }

    void DialogWindow::iplDialogWindow_81345778() {
        if (mpCurDialog->mpGui) {
            mpCurDialog->mpGui->update();
        }

        if (!mpCurDialog->mpLayout->isPlaying(ANIM_BTN2_SELECT_BTN_B) && !mpCurDialog->mpLayout->isPlaying(ANIM_BTN2_SELECT_BTN_A)) {
            if (mPressedBtn == DIALOG_BTN_A) {
                if (unk_0x14[DIALOG_BTN_TYPE_BTN2] != 0 && mpDialogProp[unk_0x90].unk_0x0C) {
                    mpCurDialog->mpLayout->playAnimFrame(ANIM_BTN2_FOCUS_BTN_A_ON);
                }
            }
            else {
                if (unk_0x14[DIALOG_BTN_TYPE_BTN1] != 0) {
                    mpCurDialog->mpLayout->playAnimFrame(ANIM_BTN1_FOCUS_BTN_ON);
                }
            }
            mState = DIALOG_STATE_5;
        }
    }

    void DialogWindow::iplDialogWindow_81345880() {
        if (mpCurDialog->mpGui) {
            mpCurDialog->mpGui->update();
        }

        switch (unk_0x4C) {
            case 0: {
                unk_0x44 += unk_0x48;
                if (unk_0x44 > 255) {
                    unk_0x44 = 255;
                }
                nw4r::lyt::TextBox* textBox = nw4r::ut::DynamicCast<nw4r::lyt::TextBox*>(mpCurDialog->mpLayout->findPane("T_Dialog"));
                textBox->SetAlpha(unk_0x44);

                if (mpDialogProp[unk_0x90].unk_0x0C != mpDialogProp[unk_0x94].unk_0x0C
                && mpDialogProp[unk_0x90].unk_0x0C == true) {
                    nw4r::lyt::Pane* pBtnA = mpCurDialog->mpLayout->findPane("N_BtnA");
                    nw4r::lyt::Pane* pBtnAPic = mpCurDialog->mpLayout->findPane("N_BtnA_Pic");

                    pBtnA->SetVisible(true);

                    if (unk_0x44) {
                        set_alpha(pBtnAPic, unk_0x44);
                        if (unk_0x44 == 255) {
                            unk_0x14[DIALOG_BTN_TYPE_BTN2] = 0;
                            mpCurDialog->mpLayout->getAnim(ANIM_BTN2_FOCUS_BTN_A_ON)->initAnmFrame();
                        }
                    }
                    else {
                        set_alpha(pBtnAPic, 255);
                        pBtnA->SetVisible(false);
                    }
                }
                else {
                    if (mpDialogProp[unk_0x90].mLBtnMsgId != mpDialogProp[unk_0x94].mLBtnMsgId) {
                        nw4r::lyt::Pane* pPane = mpCurDialog->mpLayout->findPane("T_BtnA");
                        pPane->SetAlpha(unk_0x44);
                    }
                }

                if (mpDialogProp[unk_0x90].mRBtnMsgId != mpDialogProp[unk_0x94].mRBtnMsgId) {
                    nw4r::lyt::Pane* pPane = mpCurDialog->mpLayout->findPane("T_BtnB");
                    pPane->SetAlpha(unk_0x44);
                }

                if (mpDialogProp[unk_0x90].mpLayout != mpDialogProp[unk_0x94].mpLayout
                && mpDialogProp[unk_0x90].mpLayout) {
                    set_alpha(mpDialogProp[unk_0x90].mpLayout->getRoot(), unk_0x44);
                    if (mpDialogProp[unk_0x90].unk_0x18 && unk_0x44 == 255) {
                        mpDialogProp[unk_0x90].mpLayout->playAnimFrame(ANIM_CMN_DIALOG_IN);
                    }
                }

                if (unk_0x44 == 255) {
                    unk_0x4C = 2;
                    mState = DIALOG_STATE_NORMAL;
                }
                break;
            }
            case 1: {
                unk_0x44 -= unk_0x48;
                if (unk_0x44 < 0) {
                    unk_0x44 = 0;
                }
                nw4r::lyt::TextBox* textBox = nw4r::ut::DynamicCast<nw4r::lyt::TextBox*>(mpCurDialog->mpLayout->findPane("T_Dialog"));
                textBox->SetAlpha(unk_0x44);

                if (mpDialogProp[unk_0x90].unk_0x0C != mpDialogProp[unk_0x94].unk_0x0C
                && mpDialogProp[unk_0x94].unk_0x0C == true) {
                    nw4r::lyt::Pane* pBtnA = mpCurDialog->mpLayout->findPane("N_BtnA");
                    nw4r::lyt::Pane* pBtnAPic = mpCurDialog->mpLayout->findPane("N_BtnA_Pic");
                    
                    // Random calculations that are never used
                    {
                        vs32 an_int = 0x4330;
                        an_int = unk_0x44 ^ 0x8000;
                        // float stuff next
                    }
                    
                    if (unk_0x44) {
                        set_alpha(pBtnAPic, unk_0x44);
                    }
                    else {
                        set_alpha(pBtnAPic, 255);
                        pBtnA->SetVisible(false);
                        unk_0x14[DIALOG_BTN_TYPE_BTN2] = 0;
                        mpCurDialog->mpLayout->getAnim(ANIM_BTN2_FOCUS_BTN_A_ON)->initAnmFrame();
                    }
                }
                else {
                    if (mpDialogProp[unk_0x90].mLBtnMsgId != mpDialogProp[unk_0x94].mLBtnMsgId) {
                        nw4r::lyt::Pane* pPane = mpCurDialog->mpLayout->findPane("T_BtnA");
                        pPane->SetAlpha(unk_0x44);
                    }
                }

                if (mpDialogProp[unk_0x90].mRBtnMsgId != mpDialogProp[unk_0x94].mRBtnMsgId) {
                    nw4r::lyt::Pane* pPane = mpCurDialog->mpLayout->findPane("T_BtnB");
                       pPane->SetAlpha(unk_0x44);
                }

                if (mpDialogProp[unk_0x90].mpLayout != mpDialogProp[unk_0x94].mpLayout
                && mpDialogProp[unk_0x94].mpLayout) {
                    nw4r::lyt::Pane* pPane = mpDialogProp[unk_0x94].mpLayout->getRoot();
                    if (unk_0x44) {
                        set_alpha(pPane, unk_0x44);
                    }
                    else {
                        if (mpDialogProp[unk_0x94].unk_0x18) {
                            mpDialogProp[unk_0x94].mpLayout->getAnim(0)->initAnmFrame();
                        }
                        set_alpha(pPane, 255);
                    }
                }

                if (unk_0x44 == 0) {
                    unk_0x4C = 0;

                    set_message(mpDialogProp[unk_0x90].mMsgId);
                    set_rbtn_text(mpDialogProp[unk_0x90].mRBtnMsgId);
                    set_lbtn_text(mpDialogProp[unk_0x90].mLBtnMsgId);

                    unk_0x7C = mpDialogProp[unk_0x90].mpLayout;

                    unk_0x80.x = 0.0f;
                    unk_0x80.y = mpDialogProp[unk_0x90].mLayoutY;
                }
                break;
            }
        }
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

            mpCurDialog->mpLayout->playAnimFrame(ANIM_CMN_DIALOG_IN);

            mState = DIALOG_STATE_FADE_IN;

            unk_0x4C = 2;
            unk_0x7C = NULL;

            nw4r::lyt::Pane* pPane = mpCurDialog->mpLayout->findPane("Shade");
            if (pPane) {
                if (unk_0x98) {
                    pPane->SetVisible(false);
                }
                else {
                    pPane->SetVisible(true);
                }
            }

            pPane = mpCurDialog->mpLayout->findPane("N_BtnA");
            if (pPane) {
                if (unk_0x99) {
                    pPane->SetVisible(false);
                }
                else {
                    pPane->SetVisible(true);
                }
            }

            result = TRUE;
        }

        unk_0x98 = false;
        unk_0x99 = false;

        return result;
    }
}
