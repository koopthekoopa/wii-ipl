#include "scene/sdButton/iplSDButton.h"

#include "iplSceneUI.h"

#include "iplSound.h"

#include "iplSystem.h"

namespace ipl {
    namespace scene {
        /* =========== */
        /* MAIN BUTTON */
        /* =========== */

        static const u32 scBalloonMsg[SDButton::BALLOON_MAX] = {
            MESG_SD_BUTTON_WII_MENU,
            MESG_SD_BUTTON_HELP,
        };

        const char* SDButton::mscButtonName[BTN_MAX] = {
            "B_Wiimenu",
            "B_Help",
            "B_ArwR",
            "B_ArwL"
        };

        const char* SDButton::mscArrowBtnName[SDButton::ARROW_BTN_MAX] = {
            "ArwR",
            "ArwL"
        };

        SDButton::SDButton(EGG::Heap* heap)
        : Base(heap),
        unk_0x54(0) {
            mParentFlags = SCN_PARENT_FLAG_CANCALC | SCN_PARENT_FLAG_CANDRAW;;
            for (int i = 0; i < 2; i++) {
                mbArrowVisible[i] = true;
            }
            for (int i = 0; i < 4; i++) {
                mbHovered[i] = FALSE;
            }
            mbEnabled = true;
        }

        SDButton::~SDButton() {}

        void SDButton::prepare() {
            mpLayoutFile  = System::getNandManager()->readLayoutAsync(getHeap(), "sdButton.ash");
            mpBalloonFile = System::getNandManager()->readLayoutAsync(getHeap(), "balloon.ash");
        }

        void SDButton::create() {
            // Setup layout
            mpLayout = new layout::Object(getHeap(), mpLayoutFile, "arc", "mn_SdcardMenu_b.brlyt");
        
            // Bind button animatons
            mpLayout->bindToGroup("mn_SdcardMenu_b_Btn_Wiimenu_rollover.brlan", "G_BL", false);
            mpLayout->bindToGroup("mn_SdcardMenu_b_Btn_Wiimenu_on.brlan",       "G_BL", false);
            mpLayout->bindToGroup("mn_SdcardMenu_b_Btn_Wiimenu_rollout.brlan",  "G_BL", false);

            mpLayout->getAnim(ANIM_WIIMENU_BTN_ROLL_OVER)->initAnmFrame();

            mpLayout->bindToGroup("mn_SdcardMenu_b_Btn_Help_rollover.brlan",    "G_BR", false);
            mpLayout->bindToGroup("mn_SdcardMenu_b_Btn_Help_on.brlan",          "G_BR", false);
            mpLayout->bindToGroup("mn_SdcardMenu_b_Btn_Help_rollout.brlan",     "G_BR", false);

            mpLayout->getAnim(ANIM_HELP_BTN_ROLL_OVER)->initAnmFrame();

            // Bind arrow animations
            mpLayout->bindToGroup("mn_SdcardMenu_b_Arw_wating_roop.brlan",  "G_ArwRoop",    false);
            mpLayout->bindToGroup("mn_SdcardMenu_b_ArwL_on.brlan",          "G_ArwL_Ac",    false);
            mpLayout->bindToGroup("mn_SdcardMenu_b_ArwR_on.brlan",          "G_ArwR_Ac",    false);
            mpLayout->bindToGroup("mn_SdcardMenu_b_ArwL_rollover.brlan",    "G_ArwL_Focus", false);
            mpLayout->bindToGroup("mn_SdcardMenu_b_ArwR_rollover.brlan",    "G_ArwR_Focus", false);
            mpLayout->bindToGroup("mn_SdcardMenu_b_ArwL_rollout.brlan",     "G_ArwL_Focus", false);
            mpLayout->bindToGroup("mn_SdcardMenu_b_ArwR_rollout.brlan",     "G_ArwR_Focus", false);
            mpLayout->bindToGroup("mn_SdcardMenu_b_ArwL_in.brlan",          "G_ArwL_End",   false);
            mpLayout->bindToGroup("mn_SdcardMenu_b_ArwR_in.brlan",          "G_ArwR_End",   false);
            mpLayout->bindToGroup("mn_SdcardMenu_b_ArwL_out.brlan",         "G_ArwL_End",   false);
            mpLayout->bindToGroup("mn_SdcardMenu_b_ArwR_out.brlan",         "G_ArwR_End",   false);

            mpLayout->getAnim(ANIM_ARROW_LEFT_ROLL_OVER)->initAnmFrame();
            mpLayout->getAnim(ANIM_ARROW_RIGHT_ROLL_OVER)->initAnmFrame();

            // Finished binding
            mpLayout->finishBinding();

            mpLayout->getAnim(ANIM_ARROW_WAITING_LOOP)->initAnmFrame();
            mpLayout->getAnim(ANIM_ARROW_WAITING_LOOP)->play();

            // Setup interface
            mpGui = new gui::PaneManager(NULL, mpLayout->getDrawInfo(), NULL, NULL);
            mpGui->createLayoutScene(*mpLayout->getLayout());
            mpGui->setAllComponentTriggerTarget(false);
            for (int i = 0; i < BTN_MAX; i++) {
                mpGui->setTriggerTarget(mpLayout->FindPaneByName(mscButtonName[i]), true);
            }

            // Setup text balloons
            for (int i = 0; i < BALLOON_MAX; i++) {
                mpBalloons[i] = new TextBalloon(get_heap(), mpBalloonFile, "arc", "my_IplTopBalloon_a.brlyt", math::VEC3(0.0f, 0.0f, 0.0f), 120.0f, 30.0f);
                mpBalloons[i]->init(System::getMessage(scBalloonMsg[i]), 0);
                mpBalloons[i]->init_textbox(TRUE);
            }

            // Set text for bottom page
            setText("T_page", MESG_SD_BUTTON_PAGE);

            createChildScene(SCENE_SD_CHANNEL_SELECT, this, NULL, NULL);
            createChildScene(SCENE_SD_ARROW, this, NULL, NULL);
        }

        void SDButton::calc() {
            if (unk_0x54 == 1) {
                if (!mpLayout->isPlaying(ANIM_HELP_BTN_ROLL_ON)) {
                    reset_gui();
                    unk_0x54 = 0;
                }
            }

            // Calculate layout and interface
            mpLayout->calc();
            mpGui->calc();

            // Calculate text balloons
            for (int i = 0; i < BALLOON_MAX; i++) {
                mpBalloons[i]->calc();
            }
        }

        void SDButton::draw() {
            if (System::canDrawScene()) {
                // Setup camera
                layout::Object::setCamera();

                // Draw main layout
                mpLayout->draw();
            }
        }

        void SDButton::drawBalloon() {
            layout::Object::setCamera();
            for (int i = 0; i < BALLOON_MAX; i++) {
                mpBalloons[i]->draw();
            }
        }

        void SDButton::update() {
            // Update interface
            mpGui->update();
        }

        void SDButton::reset_gui() {
            for (int i = 0; i < BTN_MAX; i++) {
                if (mbHovered[i]) {
                    mbHovered[i] = FALSE;

                    layout::Animator* anim = NULL;

                    switch (i) {
                        case BTN_WII_MENU: {
                            anim = mpLayout->getAnim(ANIM_WIIMENU_BTN_ROLL_OUT);
                            break;
                        }
                        case BTN_HELP: {
                            anim = mpLayout->getAnim(ANIM_HELP_BTN_ROLL_OUT);
                            break;
                        }
                        case BTN_ARROW_RIGHT: {
                            anim = mpLayout->getAnim(ANIM_ARROW_RIGHT_ROLL_OUT);
                            break;
                        }
                        case BTN_ARROW_LEFT: {
                            anim = mpLayout->getAnim(ANIM_ARROW_LEFT_ROLL_OUT);
                            break;
                        }
                    }

                    if (anim != NULL) {
                        anim->initAnmFrame();
                        anim->setAnimType(ANIM_TYPE_FORWARD);
                        anim->play();
                    }
                }
            }

            // Fade out balloons
            for (int i = 0; i < BALLOON_MAX; i++) {
                mpBalloons[i]->fadeoutForce();
            }

            // Reinit interfaces.
            mpGui->init();
        }

        void SDButton::startPointEvent(const char* paneName, controller::Interface* con) {
            int btnNo = getButtonNo(paneName);
            if (btnNo != -1
            && (mbEnabled || btnNo == BTN_ARROW_RIGHT || btnNo == BTN_ARROW_LEFT)
            && (btnNo != BTN_ARROW_RIGHT || mbArrowVisible[ARROW_BTN_RIGHT] == true)
            && (btnNo != BTN_ARROW_LEFT || mbArrowVisible[ARROW_BTN_LEFT] == true)) {
                if (mbHovered[btnNo] == FALSE) {
                    layout::Animator* anim = NULL;

                    switch (btnNo) {
                        case BTN_WII_MENU: {
                            if (mpLayout->isPlaying(ANIM_WIIMENU_BTN_ROLL_OUT)) {
                                anim = mpLayout->getAnim(ANIM_WIIMENU_BTN_ROLL_OUT);
                                anim->stop();
                            }
                            anim = mpLayout->getAnim(ANIM_WIIMENU_BTN_ROLL_OVER);
                            break;
                        }
                        case BTN_HELP: {
                            if (mpLayout->isPlaying(ANIM_HELP_BTN_ROLL_OUT)) {
                                anim = mpLayout->getAnim(ANIM_HELP_BTN_ROLL_OUT);
                                anim->stop();
                            }
                            anim = mpLayout->getAnim(ANIM_HELP_BTN_ROLL_OVER);
                            break;
                        }
                        case BTN_ARROW_LEFT: {
                            if (mpLayout->isPlaying(ANIM_ARROW_LEFT_ROLL_OUT)) {
                                anim = mpLayout->getAnim(ANIM_ARROW_LEFT_ROLL_OUT);
                                anim->stop();
                            }
                            anim = mpLayout->getAnim(ANIM_ARROW_LEFT_ROLL_OVER);
                            break;
                        }
                        case BTN_ARROW_RIGHT: {
                            if (mpLayout->isPlaying(ANIM_ARROW_RIGHT_ROLL_OUT)) {
                                anim = mpLayout->getAnim(ANIM_ARROW_RIGHT_ROLL_OUT);
                                anim->stop();
                            }
                            anim = mpLayout->getAnim(ANIM_ARROW_RIGHT_ROLL_OVER);
                            break;
                        }
                    }

                    if (anim != NULL) {
                        anim->initAnmFrame();
                        anim->setAnimType(ANIM_TYPE_FORWARD);
                        anim->play();
                    }

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

        void SDButton::startLeftEvent(const char* paneName) {
            int btnNo = getButtonNo(paneName);
            if (btnNo != -1
            && (mbEnabled || btnNo == BTN_ARROW_RIGHT || btnNo == BTN_ARROW_LEFT)
            && (btnNo != BTN_ARROW_RIGHT || mbArrowVisible[ARROW_BTN_RIGHT] == true)
            && (btnNo != BTN_ARROW_LEFT || mbArrowVisible[ARROW_BTN_LEFT] == true)) {
                layout::Animator* anim = NULL;

                if (mbHovered[btnNo] == TRUE) {
                    switch (btnNo) {
                        case BTN_WII_MENU: {
                            if (mpLayout->isPlaying(ANIM_WIIMENU_BTN_ROLL_OVER)) {
                                anim = mpLayout->getAnim(ANIM_WIIMENU_BTN_ROLL_OVER);
                                anim->stop();
                            }
                            anim = mpLayout->getAnim(ANIM_WIIMENU_BTN_ROLL_OUT);
                            break;
                        }
                        case BTN_HELP: {
                            if (mpLayout->isPlaying(ANIM_HELP_BTN_ROLL_OVER)) {
                                anim = mpLayout->getAnim(ANIM_HELP_BTN_ROLL_OVER);
                                anim->stop();
                            }
                            anim = mpLayout->getAnim(ANIM_HELP_BTN_ROLL_OUT);
                            break;
                        }
                        case BTN_ARROW_LEFT: {
                            if (mpLayout->isPlaying(ANIM_ARROW_LEFT_ROLL_OVER)) {
                                anim = mpLayout->getAnim(ANIM_ARROW_LEFT_ROLL_OVER);
                                anim->stop();
                            }
                            anim = mpLayout->getAnim(ANIM_ARROW_LEFT_ROLL_OUT);
                            break;
                        }
                        case BTN_ARROW_RIGHT: {
                            if (mpLayout->isPlaying(ANIM_ARROW_RIGHT_ROLL_OVER)) {
                                anim = mpLayout->getAnim(ANIM_ARROW_RIGHT_ROLL_OVER);
                                anim->stop();
                            }
                            anim = mpLayout->getAnim(ANIM_ARROW_RIGHT_ROLL_OUT);
                            break;
                        }
                    }

                    // Fade out balloon
                    if (btnNo < BALLOON_MAX) {
                        mpBalloons[btnNo]->fadeoutForce();
                    }

                    if (anim != NULL) {
                        anim->initAnmFrame();
                        anim->setAnimType(ANIM_TYPE_FORWARD);
                        anim->play();
                    }
                }

                if (mbHovered[btnNo] > 0) {
                    mbHovered[btnNo]--;
                }
            }
        }

        bool SDButton::isActive() const {
            return mScnState & SCN_STATE_CREATED;
        }

        void SDButton::setEventHandler(::gui::EventHandler* event, ::gui::EventHandler* optOutEvent) {
            mpGui->setEventHandler(event);
        }

        void SDButton::setText(const char* paneName, u32 msgId) {
            setText(paneName, System::getMessage(msgId));
        }

        void SDButton::setText(const char* paneName, const wchar_t* text) {
            nw4r::lyt::TextBox* textBox = nw4r::ut::DynamicCast<nw4r::lyt::TextBox*>(mpLayout->FindPaneByName(paneName));
            textBox->SetString(text);
        }

        void SDButton::animation(int animNo) {
            layout::Animator* anim = NULL;

            switch (animNo) {
                case IDANIM_HELP_BTN_CLICK: {
                    anim = mpLayout->getAnim(ANIM_HELP_BTN_ROLL_ON);
                    unk_0x54 = 1;
                    break;
                }
                case IDANIM_ARROW_RIGHT_CLICK: {
                    anim = mpLayout->getAnim(ANIM_ARROW_RIGHT_ON);
                    break;
                }
                case IDANIM_ARROW_LEFT_CLICK: {
                    anim = mpLayout->getAnim(ANIM_ARROW_LEFT_ON);
                    break;
                }
                case IDANIM_ARROW_RIGHT_DISAPPEAR: {
                    startLeftEvent(mscButtonName[BTN_ARROW_RIGHT]);
                    mpLayout->getAnim(ANIM_ARROW_RIGHT_IN)->stop();
                    anim = mpLayout->getAnim(ANIM_ARROW_RIGHT_OUT);
                    mbArrowVisible[ARROW_BTN_RIGHT] = false;
                    break;
                }
                case IDANIM_ARROW_RIGHT_APPEAR: {
                    mpLayout->getAnim(ANIM_ARROW_RIGHT_OUT)->stop();
                    anim = mpLayout->getAnim(ANIM_ARROW_RIGHT_IN);
                    mbArrowVisible[ARROW_BTN_RIGHT] = true;
                    break;
                }
                case IDANIM_ARROW_LEFT_DISAPPEAR: {
                    startLeftEvent(mscButtonName[BTN_ARROW_LEFT]);
                    mpLayout->getAnim(ANIM_ARROW_LEFT_IN)->stop();
                    anim = mpLayout->getAnim(ANIM_ARROW_LEFT_OUT);
                    mbArrowVisible[ARROW_BTN_LEFT] = false;
                    break;
                }
                case IDANIM_ARROW_LEFT_APPEAR: {
                    mpLayout->getAnim(ANIM_ARROW_LEFT_OUT)->stop();
                    anim = mpLayout->getAnim(ANIM_ARROW_LEFT_IN);
                    mbArrowVisible[ARROW_BTN_LEFT] = true;
                    break;
                }
            }

            if (anim != NULL) {
                anim->initAnmFrame();
                anim->setAnimType(ANIM_TYPE_FORWARD);
                anim->play();
            }
        }

        void SDButton::initArrowAppearance(int arrowType, bool bAppear) {
            layout::Animator* anim = NULL;

            switch (arrowType) {
                // Init right arrow
                case ARROW_BTN_RIGHT: {
                    if (bAppear) {
                        anim = mpLayout->getAnim(ANIM_ARROW_RIGHT_OUT);
                    }
                    else {
                        anim = mpLayout->getAnim(ANIM_ARROW_RIGHT_IN);
                    }
                    break;
                }
                // Init left arrow
                case ARROW_BTN_LEFT: {
                    if (bAppear) {
                        anim = mpLayout->getAnim(ANIM_ARROW_LEFT_OUT);
                    }
                    else {
                        anim = mpLayout->getAnim(ANIM_ARROW_LEFT_IN);
                    }
                    break;
                }
                default: {
                    break;
                }
            }

            anim->initAnmFrame();

            mbArrowVisible[arrowType] = bAppear;
        }

        int SDButton::getButtonNo(const char* paneName) {
            int num = -1;
            for (int i = 0; i < BTN_MAX; i++) {
                if (strcmp(paneName, mscButtonName[i]) == 0) {
                    num = i;
                    break;
                }
            }
            return num;
        }

        void SDButton::show_balloon(int balloonId, const char* targetPaneName) {
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

        void SDButton::enableBtn() {
            mbEnabled = true;

            for (int i = 0; i < BTN_MAX; i++) {
                if (mbHovered[i]) {
                    mbHovered[i] = FALSE;

                    layout::Animator* anim = NULL;

                    switch (i) {
                        case BTN_WII_MENU: {
                            anim = mpLayout->getAnim(ANIM_WIIMENU_BTN_ROLL_OUT);
                            break;
                        }
                        case BTN_HELP: {
                            anim = mpLayout->getAnim(ANIM_HELP_BTN_ROLL_OUT);
                            break;
                        }
                        case BTN_ARROW_RIGHT: {
                            anim = mpLayout->getAnim(ANIM_ARROW_RIGHT_ROLL_OUT);
                            break;
                        }
                        case BTN_ARROW_LEFT: {
                            anim = mpLayout->getAnim(ANIM_ARROW_LEFT_ROLL_OUT);
                            break;
                        }
                    }

                    if (anim != NULL) {
                        anim->initAnmFrame();
                        anim->setAnimType(ANIM_TYPE_FORWARD);
                        anim->play();
                    }
                }

                // Init button pane
                mpGui->initPane(mpLayout->FindPaneByName(mscButtonName[i]));
            }
        }

        void SDButton::disableBtn() {
            for (int i = 0; i < BALLOON_MAX; i++) {
                mpBalloons[i]->fadeoutForce();
            }
            mbEnabled = false;
        }
        /* ============= */
        /* BUTTON EVENTS */
        /* ============= */

        void SDButtonEventHandlerBase::onEvent(u32 compId, u32 event, void* data) {
            gui::PaneComponent* component = static_cast<gui::PaneComponent*>(mpManager->getComponent(compId));
            const char* paneName = component->getPane()->GetName();

            SDButton* button = static_cast<SDButton*>(System::getScene(SCENE_SD_BUTTON));

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

        void SDButtonEventHandlerBase::onEventDerived(u32 compId, u32 event, const controller::Interface* con) {}
    }
}
