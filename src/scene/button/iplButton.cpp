#include "scene/button/iplButton.h"

#include "iplSceneUI.h"

#include "iplSound.h"

#include "iplSystem.h"

namespace ipl {
    namespace scene {
        /* =========== */
        /* MAIN BUTTON */
        /* =========== */

        static const Button::AnmFrame scAnmFrame[Button::IDANIM_MAX] = {
            /*IDANIM_FROM_CH_SEL_TO_BOARD*/           { /*start=*/1000.0f,  /*end=*/1040.0f  },
            /*IDANIM_FROM_CH_SEL_TO_SETTING*/         { /*start=*/7000.0f,  /*end=*/7040.0f  },
            /*IDANIM_FROM_SETTING_TO_CH_SEL*/         { /*start=*/8000.0f,  /*end=*/8040.0f  },
            /*IDANIM_FROM_BOARD_TO_CH_SEL*/           { /*start=*/6000.0f,  /*end=*/6040.0f  },
            /*IDANIM_FROM_BOARD_TO_CALENDAR*/         { /*start=*/2000.0f,  /*end=*/2050.0f  },
            /*IDANIM_BACK_TO_BOARD*/                  { /*start=*/3000.0f,  /*end=*/3050.0f  },
            /*IDANIM_BACK_TO_BOARD_ALT*/              { /*start=*/3500.0f,  /*end=*/3550.0f  },
            /*IDANIM_UNKNOWN_7*/                      { /*start=*/4000.0f,  /*end=*/4026.0f  },
            /*IDANIM_SELECT_LEFT_BUTTON*/             { /*start=*/5000.0f,  /*end=*/5050.0f  },
            /*IDANIM_DISAPPEAR_BOARD_BUTTON*/         { /*start=*/3100.0f,  /*end=*/3113.0f  },
            /*IDANIM_APPEAR_BOARD_BUTTON*/            { /*start=*/3426.0f,  /*end=*/3439.0f  },
            /*IDANIM_APPEAR_LEFT_BUTTON*/             { /*start=*/3113.0f,  /*end=*/3126.0f  },
            /*IDANIM_DISAPPEAR_LEFT_BUTTON*/          { /*start=*/3213.0f,  /*end=*/3226.0f  },
            /*IDANIM_APPEAR_LEFT_AND_TRASH_BUTTON*/   { /*start=*/3600.0f,  /*end=*/3613.0f  },
            /*IDANIM_DISAPPEAR_LEFT_AND_TRASH_BUTTON*/{ /*start=*/3620.0f,  /*end=*/3633.0f  },
            /*IDANIM_APPEAR_LEFT_AND_RIGHT_BUTTON*/   { /*start=*/3313.0f,  /*end=*/3326.0f  },
            /*IDANIM_DISAPPEAR_LEFT_AND_RIGHT_BUTTON*/{ /*start=*/3413.0f,  /*end=*/3426.0f  },
            /*IDANIM_APPEAR_ALL_BUTTONS*/             { /*start=*/3640.0f,  /*end=*/3653.0f  },
            /*IDANIM_DISPPEAR_ALL_BUTTONS*/           { /*start=*/3660.0f,  /*end=*/3673.0f  },
            /*IDANIM_ARROW_RIGHT_SELECT*/             { /*start=*/10700.0f, /*end=*/10730.0f },
            /*IDANIM_ARROW_LEFT_SELECT*/              { /*start=*/10700.0f, /*end=*/10730.0f },
            /*IDANIM_ARROW_RIGHT_SELECT_ALT*/         { /*start=*/10500.0f, /*end=*/10580.0f },
            /*IDANIM_ARROW_LEFT_SELECT_ALT*/          { /*start=*/10500.0f, /*end=*/10580.0f },
            /*IDANIM_ARROW_RIGHT_APPEAR*/             { /*start=*/10150.0f, /*end=*/10160.0f },
            /*IDANIM_ARROW_LEFT_APPEAR*/              { /*start=*/10150.0f, /*end=*/10160.0f },
            /*IDANIM_ARROW_RIGHT_DISAPPEAR*/          { /*start=*/10100.0f, /*end=*/10110.0f },
            /*IDANIM_ARROW_LEFT_DISAPPEAR*/           { /*start=*/10100.0f, /*end=*/10110.0f },
            /*IDANIM_SELECT_CALENDAR_EXIT*/           { /*start=*/3000.0f,  /*end=*/3020.0f  },
            /*IDANIM_SELECT_TRASH_BUTTON*/            { /*start=*/2800.0f,  /*end=*/2820.0f  },
            /*IDANIM_SELECT_CREATE_R*/                { /*start=*/3000.0f,  /*end=*/3020.0f  },
            /*IDANIM_RIGHT_ARROW_SHOW_LETTER*/        { /*start=*/0.0f,     /*end=*/10.0f    },
            /*IDANIM_RIGHT_ARROW_HIDE_LETTER*/        { /*start=*/30.0f,    /*end=*/40.0f    },
            /*IDANIM_LEFT_ARROW_SHOW_LETTER*/         { /*start=*/0.0f,     /*end=*/10.0f    },
            /*IDANIM_LEFT_ARROW_HIDE_LETTER*/         { /*start=*/30.0f,    /*end=*/40.0f    },
            /*IDANIM_OPTOUT_IN*/                      { /*start=*/0.0f,     /*end=*/0.0f     }, // left out blank for OptOutButton
            /*IDANIM_OPTOUT_OUT*/                     { /*start=*/0.0f,     /*end=*/0.0f     }, // left out blank for OptOutButton
            /*IDANIM_OPTOUT_IN_ALT*/                  { /*start=*/0.0f,     /*end=*/0.0f     }, // left out blank for OptOutButton
            /*IDANIM_OPTOUT_OUT_ALT*/                 { /*start=*/0.0f,     /*end=*/0.0f     }, // left out blank for OptOutButton
            /*IDANIM_OPTOUT_SELECT*/                  { /*start=*/0.0f,     /*end=*/0.0f     }, // left out blank for OptOutButton
            /*IDANIM_SD_BUTTON_LOOP*/                 { /*start=*/0.0f,     /*end=*/0.0f     }, // left out blank for SDMenuButton
            /*IDANIM_SD_BUTTON_BTN_IN*/               { /*start=*/0.0f,     /*end=*/0.0f     }, // left out blank for SDMenuButton
            /*IDANIM_SD_BUTTON_BTN_OUT*/              { /*start=*/0.0f,     /*end=*/0.0f     }, // left out blank for SDMenuButton
            /*IDANIM_SD_BUTTON_INSERT*/               { /*start=*/0.0f,     /*end=*/0.0f     }, // left out blank for SDMenuButton
            /*IDANIM_SD_BUTTON_SELECT*/               { /*start=*/0.0f,     /*end=*/0.0f     }, // left out blank for SDMenuButton
        };

        static const Button::BtnAnmFrame scBtnFadeFrame[Button::BTN_MAX] = {
            /*BTN_BBS_BOARD*/
            {
                { /*start=*/900.0f, /*end=*/906.0f },
                { /*start=*/930.0f, /*end=*/938.0f }
            },
            /*BTN_CH_SEL*/
            {
                /*button in*/ { /*start=*/5900.0f, /*end=*/5906.0f },
                /*button out*/{ /*start=*/5930.0f, /*end=*/5938.0f }
            },
            /*BTN_SETTING*/
            {
                /*button in*/ { /*start=*/6900.0f, /*end=*/6906.0f },
                /*button out*/{ /*start=*/6930.0f, /*end=*/6938.0f }
            },
            /*BTN_CALENDAR*/
            {
                /*button in*/ { /*start=*/1900.0f, /*end=*/1906.0f },
                /*button out*/{ /*start=*/1930.0f, /*end=*/1938.0f }
            },
            /*BTN_CREATE*/
            {
                /*button in*/ { /*start=*/3900.0f, /*end=*/3906.0f },
                /*button out*/{ /*start=*/3930.0f, /*end=*/3938.0f }
            },
            /*BTN_EXIT*/
            {
                /*button in*/ { /*start=*/2900.0f, /*end=*/2906.0f },
                /*button out*/{ /*start=*/2930.0f, /*end=*/2938.0f }
            },
            /*BTN_CREATE_EXIT*/
            {
                /*button in*/ { /*start=*/4900.0f, /*end=*/4906.0f },
                /*button out*/{ /*start=*/4930.0f, /*end=*/4938.0f }
            },
            /*BTN_RIGHT_BUTTON*/
            {
                /*button in*/ { /*start=*/2900.0f, /*end=*/2906.0f },
                /*button out*/{ /*start=*/2930.0f, /*end=*/2938.0f }
            },
            /*BTN_TRASH_DELETE*/
            {
                /*button in*/ { /*start=*/2900.0f, /*end=*/2909.0f },
                /*button out*/{ /*start=*/2930.0f, /*end=*/2938.0f }
            },
            /*BTN_ARROW_RIGHT*/
            {
                /*button in*/ { /*start=*/10600.0f, /*end=*/10615.0f },
                /*button out*/{ /*start=*/10800.0f, /*end=*/10815.0f }
            },
            /*BTN_ARROW_LEFT*/
            {
                /*button in*/ { /*start=*/10600.0f, /*end=*/10615.0f },
                /*button out*/{ /*start=*/10800.0f, /*end=*/10815.0f }
            }
        };

        static const Button::AnmFrame scAnmRepeatAnmFrame = {
            /*start=*/10503.0f, /*end=*/10580.0f
        };

        static const Button::AnmFrame scNewArvAnmFrame = {
            /*start=*/1.0f, /*end=*/400.0f
        };

        static const Button::AnmFrame scLoopAnmFrame = {
            /*start=*/1.0f, /*end=*/160.0f
        };

        static const Button::AnmFrame scArwLoopAnmFrame = {
            /*start=*/10000.0, /*end=*/10055.0f
        };

        static const u32 scBalloonMsg[Button::BALLOON_MAX] = {
            MESG_BUTTON_BBS_BOARD,
            MESG_BUTTON_CH_SEL,
            MESG_BUTTON_SETTING,
            MESG_BUTTON_CALENDAR,
            MESG_BUTTON_CREATE
        };

        const char* Button::mscButtonName[Button::BTN_MAX] = {
            "B_Bbs",
            "B_Ch",
            "B_Set",
            "B_Cal",
            "B_Add",
            "B_CalExit",
            "B_AddExit",
            "B_Add_R",
            "B_Dust",
            "B_ArwR",
            "B_ArwL"
        };

        const char* Button::mscGroupName[Button::BTN_MAX] = {
            "G_Bbs",
            "G_Ch",
            "G_Set",
            "G_Cal",
            "G_Add",
            "G_CalExit",
            "G_AddExit",
            "G_Cmn_R",
            "G_Dust",
            "G_ArwR_Focus",
            "G_ArwL_Focus"
        };

        const char* Button::mscButtonTextName[Button::TEXT_MAX] = {
            "T_CalExit",
            "T_CalAdd_R"
        };

        const char* Button::mscArrowBtnName[Button::ARROW_BTN_MAX] = {
            "ArwR",
            "ArwL"
        };

        Button::Button(EGG::Heap* heap)
        : Base(heap),
        unk_0x54(0),
        mOptOutBtn(),
        mSdMenuBtn(),
        unk_0x104(false),
        unk_0x105(false),
        mButtonCmd() {
            for (int i = 0; i < ARROW_BTN_MAX; i++) {
                mbArrowVisible[i] = true;
            }
            for (int i = 0; i < BTN_MAX; i++) {
                mbHovered[i] = FALSE;
            }
            mbEnabled = true;
        }

        Button::~Button() {}
            
        void Button::prepare() {
            mpLayoutFile  = System::getNandManager()->readLayoutAsync(getHeap(), "cmnBtn.ash");
            mpBalloonFile = System::getNandManager()->readLayoutAsync(getHeap(), "balloon.ash");
        }

        void Button::create() {
            // Setup layout
            mpLayout = new layout::Object(getHeap(), mpLayoutFile, "arc", "my_IplTop_e.brlyt");

            // Bind all groups
            for (int i = 0; i < BTN_MAX; i++) {
                mpLayout->bindToGroup("my_IplTop_e.brlan", mscGroupName[i], false);
            }

            // Bind button animatons
            mpButtonAnim[ANIM_SCENE_CHANGE]     = mpLayout->bindToGroup("my_IplTop_e.brlan", "G_SeenChange", false);
            mpButtonAnim[ANIM_ARROW_R_AC]       = mpLayout->bindToGroup("my_IplTop_e.brlan", "G_ArwR_Ac", false);
            mpButtonAnim[ANIM_ARROW_L_AC]       = mpLayout->bindToGroup("my_IplTop_e.brlan", "G_ArwL_Ac", false);
            mpButtonAnim[ANIM_ARROW_R_HD_AC]    = mpLayout->bindToGroup("my_IplTop_e.brlan", "G_ArwR_HDAc", false);
            mpButtonAnim[ANIM_ARROW_L_HD_AC]    = mpLayout->bindToGroup("my_IplTop_e.brlan", "G_ArwL_HDAc", false);
            mpButtonAnim[ANIM_ARROW_R_END]      = mpLayout->bindToGroup("my_IplTop_e.brlan", "G_ArwR_End", false);
            mpButtonAnim[ANIM_ARROW_L_END]      = mpLayout->bindToGroup("my_IplTop_e.brlan", "G_ArwL_End", false);
            mpButtonAnim[ANIM_CALENDAR_EXIT]    = mpLayout->bindToGroup("my_IplTop_e.brlan", "G_CalExit", false);
            mpButtonAnim[ANIM_TRASH_DELETE]     = mpLayout->bindToGroup("my_IplTop_e.brlan", "G_Dust", false);
            mpButtonAnim[ANIM_COMMON_BUTTON]    = mpLayout->bindToGroup("my_IplTop_e.brlan", "G_Cmn_R", false);
            mpButtonAnim[ANIM_ARROW_LETTER_R]   = mpLayout->bindToGroup("my_IplTop_e.brlan", "G_TabaR", false);
            mpButtonAnim[ANIM_ARROW_LETTER_L]   = mpLayout->bindToGroup("my_IplTop_e.brlan", "G_TabaL", false);

            // Bind "new messages" animation and setup its frame controller
            mpButtonAnim[ANIM_BOARD_BBS_NUM_LOOP] = mpLayout->bindToGroup("my_IplTop_e.brlan", "G_BbsSignal", false);
            mpButtonAnim[ANIM_BOARD_BBS_NUM_LOOP]->setMinFrame(0.0f);
            mpButtonAnim[ANIM_BOARD_BBS_NUM_LOOP]->setMaxFrame(scNewArvAnmFrame.end);
            mpButtonAnim[ANIM_BOARD_BBS_NUM_LOOP]->initAnmFrame();

            // Bind "got a new message" animation and setup its frame controller
            mpButtonAnim[ANIM_BOARD_BBS_NEW] = mpLayout->bindToGroup("my_IplTop_e.brlan", "G_BbsSignal_new", false);
            mpButtonAnim[ANIM_BOARD_BBS_NEW]->setMinFrame(0.0f);
            mpButtonAnim[ANIM_BOARD_BBS_NEW]->setMaxFrame(scLoopAnmFrame.end);
            mpButtonAnim[ANIM_BOARD_BBS_NEW]->initAnmFrame();

            // Bind arrow animations
            layout::GroupAnimator* arrowLoop = mpLayout->bindToGroup("my_IplTop_e.brlan", "G_ArwRoop", false);
            arrowLoop->setMinFrame(scArwLoopAnmFrame.start);
            arrowLoop->setMaxFrame(scArwLoopAnmFrame.end);
            arrowLoop->setAnimType(ANIM_TYPE_LOOP);
            arrowLoop->play();

            // Finished binding
            mpLayout->finishBinding();

            // Setup interface
            mpGui = new gui::PaneManager(NULL, mpLayout->getDrawInfo(), NULL, NULL);
            mpGui->createLayoutScene(*mpLayout->getLayout());
            mpGui->setAllComponentTriggerTarget(false);

            for (int i = 0; i < BTN_MAX; i++) {
                mpGui->setTriggerTarget(mpLayout->FindPaneByName(mscButtonName[i]), true);
            }
            for (int i = 0; i < ARROW_BTN_MAX; i++) {
                mpLayout->FindPaneByName(mscArrowBtnName[i])->SetVisible(false);
            }

            // Setup text balloons
            for (int i = 0; i < BALLOON_MAX; i++) {
                mpBalloons[i] = new TextBalloon(getHeap(), mpBalloonFile, "arc", "my_IplTopBalloon_a.brlyt", math::VEC3(0.0f, 0.0f, 0.0f), 120.0f, 30.0f);
                mpBalloons[i]->init(System::getMessage(scBalloonMsg[i]), 0);
                mpBalloons[i]->init_textbox();
            }

            stopMailNumAnm();

            // Create the other buttons
            mOptOutBtn.create(mpLayoutFile, getHeap());
            mSdMenuBtn.create(mpLayoutFile, mpBalloonFile, getHeap());

#ifdef KOREAN_BUILD
            if (SCGetAspectRatio() == SC_ASPECT_RATIO_16x9) {
                nw4r::lyt::Size size;

                size = nw4r::ut::DynamicCast<nw4r::lyt::TextBox*>(mpBalloons[BALLOON_BBS_BOARD]->get_layout()->FindPaneByName("T_Balloon"))->GetFontSize();
                size.width += 0.75f;
                nw4r::ut::DynamicCast<nw4r::lyt::TextBox*>(mpBalloons[BALLOON_BBS_BOARD]->get_layout()->FindPaneByName("T_Balloon"))->SetFontSize(size);

                size = nw4r::ut::DynamicCast<nw4r::lyt::TextBox*>(mpBalloons[BALLOON_CH_SEL]->get_layout()->FindPaneByName("T_Balloon"))->GetFontSize();
                size.width += 1.0f;
                nw4r::ut::DynamicCast<nw4r::lyt::TextBox*>(mpBalloons[BALLOON_CH_SEL]->get_layout()->FindPaneByName("T_Balloon"))->SetFontSize(size);
            }
#endif // KOREAN_BUILD
        }

        void Button::calc() {
            switch (unk_0x54) {
                case 0: {
                    if (mButtonCmd.get_current_index() != 0) {
                        Command popped = mButtonCmd.get_popped_item();
                        if (popped.type == Command::TYPE_ANIM) {
                            animation(popped.animId);
                        }
                        else {
                            const char* pane = mscButtonTextName[popped.paneId];
                            setText(pane, System::getMessage(popped.msgId));
                        }

                        mButtonCmd.pop();
                    }
                    break;
                }
                case 1: {
                    if (!mpButtonAnim[ANIM_SCENE_CHANGE]->isPlaying()
                     && !mpButtonAnim[ANIM_CALENDAR_EXIT]->isPlaying()
                     && !mpButtonAnim[ANIM_COMMON_BUTTON]->isPlaying()
                     && !mpButtonAnim[ANIM_TRASH_DELETE]->isPlaying()
                     && !mOptOutBtn.mpLayout->isPlaying()) {
                        unk_0x54 = 0;
                    }
                    break;
                }
            }

            // Calculate layout and interface
            mpLayout->calc();
            mpGui->calc();

            // Calculate opt out button
            mOptOutBtn.calc();
            
            // Calculate SD Menu Button (if we are not in maintenance mode)
            if (!System::isSafeMode()) {
                mSdMenuBtn.calc();
            }

            // Calculate text balloons
            for (int i = 0; i < BALLOON_MAX; i++) {
                mpBalloons[i]->calc();
            }

            if (unk_0x104 && !unk_0x105 && mTimer()) {
                startNewMailAnm_();
            }
        }

        void Button::draw() {
            if (System::canDrawScene()) {
                // Setup camera
                layout::Object::setCamera();

                // Draw SD Menu Icon (if we are not in maintenance mode)
                if (!System::isSafeMode()) {
                    mSdMenuBtn.draw();
                }

                // Draw main layout
                mpLayout->draw();

                // Draw Opt Out button.
                mOptOutBtn.draw();
            }
        }

        void Button::drawBalloon() {
            layout::Object::setCamera();
            for (int i = 0; i < BALLOON_MAX; i++) {
                mpBalloons[i]->draw();
            }
        }

        void Button::update() {
            // Update interface
            mpGui->update();

            // Update Opt Out button
            mOptOutBtn.update();

            // Update SD Menu Icon (if we are not in maintenance mode)
            if (!System::isSafeMode()) {
                mSdMenuBtn.update();
            }
        }

        void Button::reset_gui() {
            for (int i = 0; i < BTN_MAX; i++) {
                if (mbHovered[i]) {
                    // Reset animation to its "fade out" values.
                    layout::Animator* anim = mpLayout->getAnim(i);
                    anim->setMinFrame(scBtnFadeFrame[i].out.start);
                    anim->setMaxFrame(scBtnFadeFrame[i].out.end);
                    anim->setAnimType(ANIM_TYPE_FORWARD);
                    anim->play();

                    mbHovered[i] = FALSE;
                }
            }
            // Reinit interfaces.
            mpGui->init();
            mOptOutBtn.reset_gui();
            mSdMenuBtn.initGui();
        }

        void Button::startPointEvent(const char* paneName, controller::Interface* con) {
            int btnNo = getButtonNo(paneName);
            if ((btnNo != BTN_BBS_BOARD || !System::isSafeMode()) && btnNo != -1
            && (mbEnabled || btnNo == BTN_ARROW_RIGHT || btnNo == BTN_ARROW_LEFT)
            && (btnNo != BTN_ARROW_RIGHT || mbArrowVisible[ARROW_BTN_RIGHT] == true)
            && (btnNo != BTN_ARROW_LEFT || mbArrowVisible[ARROW_BTN_LEFT] == true)) {
                if (mbHovered[btnNo] == FALSE) {
                    // Play hover in animation
                    layout::Animator* anim = mpLayout->getAnim(btnNo);
                    anim->setMinFrame(scBtnFadeFrame[btnNo].in.start);
                    anim->setMaxFrame(scBtnFadeFrame[btnNo].in.end);
                    anim->setAnimType(ANIM_TYPE_FORWARD);
                    anim->play();

                    // Play nice sound
                    snd::getSystem()->startSE("WIPL_SE_BT_TARGETTING");

                    // Rumble!!!
                    if (con != NULL) {
                        con->rumble();
                    }

                    // Show balloon
                    show_balloon(btnNo, paneName);
                }

                if (mbHovered[btnNo] < 4) {
                    mbHovered[btnNo]++;
                }
            }
        }

        void Button::startLeftEvent(const char* paneName) {
            int btnNo = getButtonNo(paneName);
            if ((btnNo != BTN_BBS_BOARD || !System::isSafeMode()) && btnNo != -1
            && (mbEnabled | btnNo == BTN_ARROW_RIGHT /*TYPO!!*/ || btnNo == BTN_ARROW_LEFT)
            && (btnNo != BTN_ARROW_RIGHT || mbArrowVisible[ARROW_BTN_RIGHT] == true)
            && (btnNo != BTN_ARROW_LEFT || mbArrowVisible[ARROW_BTN_LEFT] == true)) {
                if (mbHovered[btnNo] == TRUE) {
                    // Play hover out animation
                    layout::Animator* anim = mpLayout->getAnim(btnNo);
                    anim->setMinFrame(scBtnFadeFrame[btnNo].out.start);
                    anim->setMaxFrame(scBtnFadeFrame[btnNo].out.end);
                    anim->setAnimType(ANIM_TYPE_FORWARD);
                    anim->play();

                    // Fade out balloon
                    if (btnNo < BALLOON_MAX) {
                        mpBalloons[btnNo]->fadeoutForce();
                    }
                }

                if (mbHovered[btnNo] > 0) {
                    mbHovered[btnNo]--;
                }
            }
        }

        bool Button::isActive() const {
            bool result = false;
            if ((mScnState & SCN_STATE_CREATED) && unk_0x54 != 1) {
                result = true;
            }
            return result;
        }

        void Button::setEventHandler(::gui::EventHandler* event, ::gui::EventHandler* optOutEvent) {
            mpGui->setEventHandler(event);
            mOptOutBtn.setEventHandler(optOutEvent);
        }

        void Button::setText(const char* paneName, u32 msgId) {
            setText(paneName, System::getMessage(msgId));
        }

        void Button::setText(const char* paneName, const wchar_t* text) {
            nw4r::lyt::TextBox* textBox = nw4r::ut::DynamicCast<nw4r::lyt::TextBox*>(mpLayout->FindPaneByName(paneName));
            textBox->SetString(text);
        }

        bool Button::playingSdAnim(int animNo) {
            switch (animNo) {
                case IDANIM_SD_BUTTON_LOOP: {
                    return mSdMenuBtn.mpLayout->getAnim(SDMenuButton::ANIM_ON_LOOP)->isPlaying();
                }
                case IDANIM_SD_BUTTON_BTN_IN: {
                    return mSdMenuBtn.mpLayout->getAnim(SDMenuButton::ANIM_BTN_IN)->isPlaying();
                }
                case IDANIM_SD_BUTTON_BTN_OUT: {
                    return mSdMenuBtn.mpLayout->getAnim(SDMenuButton::ANIM_BTN_OUT)->isPlaying();
                }
                case IDANIM_SD_BUTTON_INSERT: {
                    return mSdMenuBtn.mpLayout->getAnim(SDMenuButton::ANIM_BTN_INSERT)->isPlaying();
                }
                case IDANIM_SD_BUTTON_SELECT: {
                    return mSdMenuBtn.mpLayout->getAnim(SDMenuButton::ANIM_BTN_SELECT)->isPlaying();
                }
                default: {
                    return false;
                }
            }
        }

        void Button::animation(int animNo) {
            layout::Animator* anim = NULL;
            switch (animNo) {
                case IDANIM_ARROW_RIGHT_SELECT: {
                    anim = mpButtonAnim[ANIM_ARROW_R_AC];
                    break;
                }
                case IDANIM_ARROW_LEFT_SELECT: {
                    anim = mpButtonAnim[ANIM_ARROW_L_AC];
                    break;
                }
                case IDANIM_ARROW_RIGHT_SELECT_ALT: {
                    anim = mpButtonAnim[ANIM_ARROW_R_HD_AC];
                    break;
                }
                case IDANIM_ARROW_RIGHT_DISAPPEAR: {
                    startLeftEvent(mscButtonName[BTN_ARROW_RIGHT]);
                }
                case IDANIM_ARROW_RIGHT_APPEAR: {
                    anim = mpButtonAnim[ANIM_ARROW_R_END];
                    mbArrowVisible[ARROW_BTN_RIGHT] = animNo == IDANIM_ARROW_RIGHT_APPEAR;
                    break;
                }
                case IDANIM_ARROW_LEFT_SELECT_ALT: {
                    anim = mpButtonAnim[ANIM_ARROW_L_HD_AC];
                    break;
                }
                case IDANIM_ARROW_LEFT_DISAPPEAR: {
                    startLeftEvent(mscButtonName[BTN_ARROW_LEFT]);
                }
                case IDANIM_ARROW_LEFT_APPEAR: {
                    anim = mpButtonAnim[ANIM_ARROW_L_END];
                    mbArrowVisible[ARROW_BTN_LEFT] = animNo == IDANIM_ARROW_LEFT_APPEAR;
                    break;
                }
                case IDANIM_SELECT_CALENDAR_EXIT: {
                    anim = mpButtonAnim[ANIM_CALENDAR_EXIT];
                    initBtn(BTN_EXIT);
                    break;
                }
                case IDANIM_SELECT_TRASH_BUTTON: {
                    anim = mpButtonAnim[ANIM_TRASH_DELETE];
                    break;
                }
                case IDANIM_SELECT_CREATE_R: {
                    anim = mpButtonAnim[ANIM_COMMON_BUTTON];
                    initBtn(BTN_CREATE_R_BUTTON);
                    break;
                }
                case IDANIM_RIGHT_ARROW_SHOW_LETTER:
                case IDANIM_RIGHT_ARROW_HIDE_LETTER: {
                    anim = mpButtonAnim[ANIM_ARROW_LETTER_R];
                    break;
                }
                case IDANIM_LEFT_ARROW_SHOW_LETTER:
                case IDANIM_LEFT_ARROW_HIDE_LETTER: {
                    anim = mpButtonAnim[ANIM_ARROW_LETTER_L];
                    break;
                }
                case IDANIM_SD_BUTTON_LOOP: {
                    mSdMenuBtn.animation(SDMenuButton::IDANIM_ON_LOOP);
                    break;
                }
                case IDANIM_SD_BUTTON_BTN_IN: {
                    mSdMenuBtn.animation(SDMenuButton::IDANIM_BTN_IN);
                    break;
                }
                case IDANIM_SD_BUTTON_BTN_OUT: {
                    mSdMenuBtn.animation(SDMenuButton::IDANIM_BTN_OUT);
                    break;
                }
                case IDANIM_SD_BUTTON_INSERT: {
                    mSdMenuBtn.animation(SDMenuButton::IDANIM_BTN_INSERT);
                    break;
                }
                case IDANIM_SD_BUTTON_SELECT: {
                    mSdMenuBtn.animation(SDMenuButton::IDANIM_BTN_SELECT);
                    break;
                }
                case IDANIM_OPTOUT_SELECT: {
                    break;
                }
                case IDANIM_OPTOUT_IN:
                case IDANIM_OPTOUT_OUT:
                case IDANIM_OPTOUT_IN_ALT:
                case IDANIM_OPTOUT_OUT_ALT:
                default: {
                    anim = mpButtonAnim[ANIM_SCENE_CHANGE];
                    break;
                }
            }

            layout::Animator* optOutAnim = NULL;

            switch (animNo) {
                case IDANIM_OPTOUT_IN: {
                    animNo = IDANIM_APPEAR_LEFT_AND_TRASH_BUTTON;
                    optOutAnim = mOptOutBtn.mpLayout->getAnim(OptOutButton::ANIM_BTN_IN);
                    break;
                }
                case IDANIM_OPTOUT_OUT: {
                    animNo = IDANIM_DISAPPEAR_LEFT_AND_TRASH_BUTTON;
                    optOutAnim = mOptOutBtn.mpLayout->getAnim(OptOutButton::ANIM_BTN_OUT);
                    break;
                }
                case IDANIM_OPTOUT_IN_ALT: {
                    animNo = IDANIM_APPEAR_ALL_BUTTONS;
                    optOutAnim = mOptOutBtn.mpLayout->getAnim(OptOutButton::ANIM_BTN_IN);
                    break;
                }
                case IDANIM_OPTOUT_OUT_ALT: {
                    animNo = IDANIM_DISPPEAR_ALL_BUTTONS;
                    optOutAnim = mOptOutBtn.mpLayout->getAnim(OptOutButton::ANIM_BTN_OUT);
                    break;
                }
                case IDANIM_OPTOUT_SELECT: {
                    optOutAnim = mOptOutBtn.mpLayout->getAnim(OptOutButton::ANIM_BTN_SELECT);
                    break;
                }
            }

            if (anim != NULL) {
                float min, max;
                switch (animNo) {
                    case IDANIM_ARROW_RIGHT_SELECT_ALT:
                    case IDANIM_ARROW_LEFT_SELECT_ALT: {
                        min = scAnmRepeatAnmFrame.start;
                        max = scAnmRepeatAnmFrame.end;
                        break;
                    }
                    default: {
                        min = scAnmFrame[animNo].start;
                        max = scAnmFrame[animNo].end;
                        break;
                    }
                }

                anim->setMinFrame(min);
                anim->setMaxFrame(max);
                anim->setAnimType(ANIM_TYPE_FORWARD);
                anim->play();
            }

            if (optOutAnim != NULL) {
                optOutAnim->play();
            }

            switch (animNo) {
                case IDANIM_FROM_CH_SEL_TO_BOARD:
                case IDANIM_FROM_CH_SEL_TO_SETTING:
                case IDANIM_FROM_SETTING_TO_CH_SEL:
                case IDANIM_FROM_BOARD_TO_CH_SEL:
                case IDANIM_FROM_BOARD_TO_CALENDAR:
                case IDANIM_BACK_TO_BOARD:
                case IDANIM_BACK_TO_BOARD_ALT:
                case IDANIM_UNKNOWN_7:
                case IDANIM_SELECT_LEFT_BUTTON:
                case IDANIM_DISAPPEAR_BOARD_BUTTON: {
                    for (int i = 0; i < BALLOON_MAX; i++) {
                        mpBalloons[i]->fadeoutForce();
                    }
                    reset_gui();
                }
                default: {
                    break;
                }
            }

            unk_0x54 = 1;
        }

        void Button::initArrowAppearance(int arrowType, bool bAppear) {
            layout::GroupAnimator* anim;
            f32 frame;
            switch (arrowType) {
                // Init right arrow
                case ARROW_BTN_RIGHT: {
                    anim = mpButtonAnim[ANIM_ARROW_R_END];
                    if (bAppear) {
                        frame = scAnmFrame[IDANIM_ARROW_RIGHT_APPEAR].end;
                    }
                    else {
                        frame = scAnmFrame[IDANIM_ARROW_RIGHT_DISAPPEAR].end;
                    }
                    break;
                }
                // Init left arrow
                case ARROW_BTN_LEFT: {
                    anim = mpButtonAnim[ANIM_ARROW_L_END];
                    if (bAppear) {
                        frame = scAnmFrame[IDANIM_ARROW_LEFT_APPEAR].end;
                    }
                    else {
                        frame = scAnmFrame[IDANIM_ARROW_LEFT_DISAPPEAR].end;
                    }
                    break;
                }
                default: {
                    break;
                }
            }

            anim->initAnmFrame(frame);

            mbArrowVisible[arrowType] = bAppear;
        }

        int Button::getButtonNo(const char* paneName) {
            int num = -1;
            for (int i = 0; i < BTN_MAX; i++) {
                if (strcmp(paneName, mscButtonName[i]) == 0) {
                    num = i;
                    break;
                }
            }
            return num;
        }

        void Button::show_balloon(int balloonId, const char* targetPaneName) {
            if (balloonId < BALLOON_MAX) {
                nw4r::lyt::Pane* pane = mpLayout->FindPaneByName(targetPaneName);
                math::VEC3 pos(0.0f, 0.0f, 0.0f);

                // Setup position
                math::VEC3Transform(&pos, &pane->GetGlobalMtx(), &pos);
                pos.y += 50.0f;
                mpBalloons[balloonId]->setPos(pos, true, 0);

                // Show textbox
                mpBalloons[balloonId]->fadeinNoSetTextbox();
            }
        }

        void Button::startMailNumAnm() {
            mpButtonAnim[ANIM_BOARD_BBS_NUM_LOOP]->setAnimType(ANIM_TYPE_LOOP);
            mpButtonAnim[ANIM_BOARD_BBS_NUM_LOOP]->setMinFrame(scNewArvAnmFrame.start);
            mpButtonAnim[ANIM_BOARD_BBS_NUM_LOOP]->setMaxFrame(scNewArvAnmFrame.end);
            mpButtonAnim[ANIM_BOARD_BBS_NUM_LOOP]->setSpeed(1.0f);
            mpButtonAnim[ANIM_BOARD_BBS_NUM_LOOP]->play();
        }

        void Button::stopMailNumAnm() {
            mpButtonAnim[ANIM_BOARD_BBS_NUM_LOOP]->setAnimType(ANIM_TYPE_LOOP);
            mpButtonAnim[ANIM_BOARD_BBS_NUM_LOOP]->setMinFrame(0.0f);
            mpButtonAnim[ANIM_BOARD_BBS_NUM_LOOP]->setMaxFrame(1.0f);
            mpButtonAnim[ANIM_BOARD_BBS_NUM_LOOP]->setSpeed(0.0f);
            mpButtonAnim[ANIM_BOARD_BBS_NUM_LOOP]->play();
        }

        void Button::startNewMailAnm() {
            mpButtonAnim[ANIM_BOARD_BBS_NEW]->setAnimType(ANIM_TYPE_FORWARD);
            mpButtonAnim[ANIM_BOARD_BBS_NEW]->setMinFrame(scLoopAnmFrame.start);
            mpButtonAnim[ANIM_BOARD_BBS_NEW]->setMaxFrame(scLoopAnmFrame.end);
            mpButtonAnim[ANIM_BOARD_BBS_NEW]->setSpeed(1.0f);
            unk_0x104 = true;
            if (!unk_0x105) {
                startNewMailAnm_();
            }
        }

        void Button::startNewMailAnm_() {
            // Play anim
            mpButtonAnim[ANIM_BOARD_BBS_NEW]->play();
            // Play nice jingle
            snd::getSystem()->startSE("WIPL_SE_NEW_ARRIVAL");
            // Wait for 3 seconds to start the animation again
            mTimer.set_msec(3000);
        }

        void Button::stopNewMailAnm() {
            mpButtonAnim[ANIM_BOARD_BBS_NEW]->setAnimType(ANIM_TYPE_LOOP);
            mpButtonAnim[ANIM_BOARD_BBS_NEW]->setMinFrame(0.0f);
            mpButtonAnim[ANIM_BOARD_BBS_NEW]->setMaxFrame(1.0f);
            mpButtonAnim[ANIM_BOARD_BBS_NEW]->setSpeed(0.0f);
            mpButtonAnim[ANIM_BOARD_BBS_NEW]->play();
            unk_0x104 = false;
        }

        void Button::enableBtn() {
            mbEnabled = true;

            for (int i = 0; i < BTN_ARROW_RIGHT; i++) {
                if (mbHovered[i]) {
                    mbHovered[i] = FALSE;

                    // Play hover out animation
                    layout::Animator* anim = mpLayout->getAnim(i);
                    anim->setMinFrame(scBtnFadeFrame[i].out.start);
                    anim->setMaxFrame(scBtnFadeFrame[i].out.end);
                    anim->setAnimType(ANIM_TYPE_FORWARD);
                    anim->play();
                }

                // Init button pane
                mpGui->initPane(mpLayout->FindPaneByName(mscButtonName[i]));
            }
            mSdMenuBtn.enableBtn();
        }

        void Button::disableBtn() {
            for (int i = 0; i < BALLOON_MAX; i++) {
                mpBalloons[i]->fadeoutForce();
            }
            mbEnabled = false;
            mSdMenuBtn.disableBtn();
        }

        void Button::initBtn(int btnNo) {
            if (btnNo >= 0 && btnNo < BTN_MAX) {
                if (mbHovered[btnNo]) {
                    mbHovered[btnNo] = FALSE;

                    // Play hover out animation
                    layout::Animator* anim = mpLayout->getAnim(btnNo);
                    anim->setMinFrame(scBtnFadeFrame[btnNo].out.start);
                    anim->setMaxFrame(scBtnFadeFrame[btnNo].out.end);
                    anim->setAnimType(ANIM_TYPE_FORWARD);
                    anim->play();
                }

                // Init button pane
                mpGui->initPane(mpLayout->FindPaneByName(mscButtonName[btnNo]));
            }
        }

        void Button::reserveAnm(int animId) {
            Command command;
            command.type = Command::TYPE_ANIM;
            command.animId = animId;
            mButtonCmd.push(command);
        }
    
        void Button::reserveText(int paneId, u32 msgId) {
            Command command;
            command.type = Command::TYPE_TEXT;
            command.paneId = paneId;
            command.msgId = msgId;
            mButtonCmd.push(command);
        }

        /* ============== */
        /* OPT OUT BUTTON */
        /* ============== */

        OptOutButton::OptOutButton() :
        mpLayout(NULL), mpGui(NULL),
        mbHovered(FALSE) {}

        void OptOutButton::create(nand::LayoutFile* layoutFile, EGG::Heap* heap) {
            // Setup layout
            mpLayout = new layout::Object(heap, layoutFile, "arc", "my_BtnStop_a.brlyt");

            // Setup animations
            mpLayout->bindToGroup("my_BtnStop_a_Btn_In.brlan",      "G_SeenChange", false);
            mpLayout->bindToGroup("my_BtnStop_a_Btn_Out.brlan",     "G_SeenChange", false, false);
            mpLayout->bindToGroup("my_BtnStop_a_Focus_In.brlan",    "G_Stop",       false, false);
            mpLayout->bindToGroup("my_BtnStop_a_Focus_Out.brlan",   "G_Stop",       false, false);
            mpLayout->bindToGroup("my_BtnStop_a_Select.brlan",      "G_Stop",       false, false);
            mpLayout->finishBinding();

            // Setup interface
            mpGui = new gui::PaneManager(NULL, mpLayout->getDrawInfo(), NULL, NULL);
            mpGui->createLayoutScene(*mpLayout->getLayout());
            mpGui->setAllComponentTriggerTarget(false);
            mpGui->setTriggerTarget(mpLayout->FindPaneByName("B_Stop"), true);
        }

        void OptOutButton::calc() {
            mpLayout->calc();
        }

        void OptOutButton::draw() {
            mpLayout->draw();
        }

        void OptOutButton::update() {
            mpGui->update();
        }

        void OptOutButton::setText(u32 msgId) {
            nw4r::lyt::TextBox* textBox = nw4r::ut::DynamicCast<nw4r::lyt::TextBox*>(mpLayout->FindPaneByName("T_Stop"));
            textBox->SetString(System::getMessage(msgId));
        }

        void OptOutButton::reset_gui() {
            if (mbHovered) {
                mbHovered = FALSE;
                mpLayout->getAnim(ANIM_OPT_OUT_FOCUS_OUT)->play();
            }
            mpGui->init();
        }

        void OptOutButton::start_point_event(const char* paneName, controller::Interface* con) {
            if (strcmp(paneName, "B_Stop") == 0) {
                if (mbHovered == FALSE) {
                    // Play hover in animation
                    mpLayout->getAnim(ANIM_OPT_OUT_FOCUS_IN)->play();

                    // Play nice sound
                    snd::getSystem()->startSE("WIPL_SE_BT_TARGETTING");

                    // Rumble!!... with no null check on `con`.
                    con->rumble();
                }
                mbHovered++;
            }
        }

        void OptOutButton::start_left_event(const char* paneName) {
            if (strcmp(paneName, "B_Stop") == 0) {
                if (mbHovered == TRUE) {
                    mpLayout->getAnim(ANIM_OPT_OUT_FOCUS_OUT)->play();
                }
                mbHovered--;
            }
        }

        void OptOutButton::setEventHandler(::gui::EventHandler* event) {
            mpGui->setEventHandler(event);
        }

        /* ============= */
        /* BUTTON EVENTS */
        /* ============= */

        void ButtonEventHandlerBase::onEvent(u32 compId, u32 event, void* data) {
            gui::PaneComponent* component = static_cast<gui::PaneComponent*>(mpManager->getComponent(compId));
            const char* paneName = component->getPane()->GetName();

            Button* button = static_cast<Button*>(System::getScene(SCENE_BUTTON));

            switch (event) {
                case ON_POINT: {
                    button->startPointEvent(paneName, static_cast<controller::Interface*>(data));
                    break;
                }
                case ON_LEFT: {
                    button->startLeftEvent(paneName);
                    break;
                }
            }

            onEventDerived(compId, event, static_cast<controller::Interface*>(data));
        }

        void ButtonEventHandlerBase::onEventDerived(u32 compId, u32 event, const controller::Interface* con) {}

        void OptOutButtonEventHandlerBase::onEvent(u32 compId, u32 event, void* data) {
            gui::PaneComponent* component = static_cast<gui::PaneComponent*>(mpManager->getComponent(compId));
            const char* paneName = component->getPane()->GetName();

            OptOutButton* button = static_cast<Button*>(System::getScene(SCENE_BUTTON))->get_opt_out_btn();

            switch (event) {
                case ON_POINT: {
                    button->start_point_event(paneName, static_cast<controller::Interface*>(data));
                    break;
                }
                case ON_LEFT: {
                    button->start_left_event(paneName);
                    break;
                }
            }

            onEventDerived(compId, event, static_cast<controller::Interface*>(data));
        }

        void OptOutButtonEventHandlerBase::onEventDerived(u32 compId, u32 event, const controller::Interface* con) {}
    }
}
