#include "scene/button/iplButton.h"

#include "iplSceneUI.h"

#include "iplSystem.h"

namespace ipl {
    namespace scene {
        const char* scSDBtnName[] = {
            "Ac",
        };

        static const u32 scBalloonMsg[] = {
            161,
        };

        static const f32 scBtnPos[] = {
            -152.0f,
            -245.0f
        };

        /* TODO: get rid of this absolutely disgusting fakematching. */
        inline void set_pane_visible_0(nw4r::lyt::Pane* pane) { pane->SetVisible(true); }
        inline void set_pane_visible_1(nw4r::lyt::Pane* pane) { pane->SetVisible(true); }
        inline void set_pane_visible_2(nw4r::lyt::Pane* pane) { pane->SetVisible(true); }

        SDMenuButton::SDMenuButton() :
        mpLayout(NULL), mpGui(NULL),
        mbHovered(),
        mbEnabled(true) {}

        SDMenuButton::~SDMenuButton() {}

        void SDMenuButton::create(nand::LayoutFile* layoutFile, nand::LayoutFile* balloonFile, EGG::Heap* heap) {
            mpLayout = new layout::Object(heap, layoutFile, "arc", "mn_Sdcard_Btn.brlyt");
            mpLayout->bindToGroup("mn_Sdcard_Btn_On_Roop.brlan",       "On_Roop",     false);
            mpLayout->bindToGroup("mn_Sdcard_Btn_BtnL_In.brlan",       "Btn_L_InOut", false);
            mpLayout->bindToGroup("mn_Sdcard_Btn_BtnL_Out.brlan",      "Btn_L_InOut", false);
            mpLayout->bindToGroup("mn_Sdcard_Btn_Insert.brlan",        "Insert",      false);
            mpLayout->bindToGroup("mn_Sdcard_Btn_BtnL_On.brlan",       "Btn_L_On",    false);
            mpLayout->bindToGroup("mn_Sdcard_Btn_BtnL_RollOver.brlan", "Btn_L_Roll",  false);
            mpLayout->bindToGroup("mn_Sdcard_Btn_BtnL_RollOut.brlan",  "Btn_L_On",    false);
            mpLayout->getAnim(ANIM_BTN_ROLL_OVER)->initAnmFrame();
            mpLayout->finishBinding();
            mpLayout->getAnim(ANIM_ON_LOOP)->initAnmFrame();
            mpLayout->getAnim(ANIM_ON_LOOP)->play();
            
            mpGui = new gui::PaneManager(NULL, mpLayout->getDrawInfo(), NULL, NULL);
            mpGui->createLayoutScene(*mpLayout->getLayout());
            mpGui->setAllComponentTriggerTarget(false);
            mpGui->setTriggerTarget(mpLayout->FindPaneByName(scSDBtnName[0]), true);

            mpLayout->FindPaneByName("N_Btn_On")->SetVisible(false);
            set_pane_visible_0(mpLayout->FindPaneByName("N_Btn_Off"));

            nw4r::math::VEC3 newPos(SCGetAspectRatio() == SC_ASPECT_RATIO_16x9 ? scBtnPos[SC_ASPECT_RATIO_16x9] : scBtnPos[SC_ASPECT_RATIO_4x3],
                                    -172.0f,
                                    -172.0f);
            mpLayout->getRoot()->SetTranslate(newPos);

            for (int i = 0; i < BTN_MAX; i++) {
                mpBalloons[i] = new TextBalloon(heap, balloonFile, "arc", "my_IplTopBalloon_a.brlyt", math::VEC3(0.0f, 0.0f, 0.0f), 200.0f, 110.0f);
                mpBalloons[i]->init(System::getMessage(scBalloonMsg[i]), 0);
                mpBalloons[i]->init_textbox();
            }
        }

        void SDMenuButton::calc() {
            mpLayout->calc();
            mpGui->calc();
            for (int i = 0; i < BTN_MAX; i++) {
                mpBalloons[i]->calc();
            }
        }

        void SDMenuButton::draw() {
            mpLayout->draw();
        }

        void SDMenuButton::drawBalloon() {
            layout::Object::setCamera();
            for (int i = 0; i < BTN_MAX; i++) {
                mpBalloons[i]->draw();
            }
        }

        void SDMenuButton::update() {
            mpGui->update();
        }

        void SDMenuButton::initGui() {
            for (int i = 0; i < BTN_MAX; i++) {
                if (mbHovered[i]) {
                    mbHovered[i] = FALSE;
                }
            }
            mpGui->init();
        }

        void SDMenuButton::startPointEvent(const char* paneName, controller::Interface* con) {
            int btnNo = getButtonNo(paneName);
            if (btnNo != -1 && mbEnabled) {
                if (!mbHovered[btnNo]) {
                    layout::Animator* anim = NULL;
                    switch (btnNo) {
                        case BTN_SD_CARD: {
                            anim = mpLayout->getAnim(ANIM_BTN_ROLL_OVER);
                            break;
                        }
                        default: {
                            break;
                        }
                    }

                    if (anim != NULL) {
                        anim->initAnmFrame();
                        anim->setAnimType(ANIM_TYPE_FORWARD);
                        anim->play();
                    }

                    show_balloon(btnNo, paneName);
                    snd::getSystem()->startSE("WIPL_SE_BT_TARGETTING");
                    if (con) {
                        con->rumble();
                    }
                }

                if (mbHovered[btnNo] < 4/*???*/) {
                    mbHovered[btnNo]++;
                }
            }
        }

        void SDMenuButton::startLeftEvent(const char* paneName) {
            int btnNo = getButtonNo(paneName);
            if (btnNo != -1 && mbEnabled) {
                layout::Animator* anim = NULL;
                if (mbHovered[btnNo] == TRUE) {
                    switch (btnNo) {
                        case 0: {
                            anim = mpLayout->getAnim(ANIM_BTN_ROLL_OUT);
                            break;
                        }
                        default: {
                            break;
                        }
                    }

                    if (btnNo < BTN_MAX) {
                        mpBalloons[btnNo]->fadeoutForce();
                    }
                }

                if (anim != NULL) {
                    anim->initAnmFrame();
                    anim->setAnimType(ANIM_TYPE_FORWARD);
                    anim->play();
                }

                if (mbHovered[btnNo] > 0) {
                    mbHovered[btnNo]--;
                }
            }
        }

        void SDMenuButton::setEventHandler(::gui::EventHandler* event) {
            mpGui->setEventHandler(event);
        }

        void SDMenuButton::animation(int animId) {
            layout::Animator* anim = NULL;
            bool backwards = false;
            switch (animId) {
                case 1: {
                    anim = mpLayout->getAnim(ANIM_BTN_OUT);
                    backwards = true;
                    anim->setMinFrame(0.0f);
                    anim->setMaxFrame(15.0f);
                    break;
                }
                case 2: {
                    mpBalloons[BTN_SD_CARD]->fadeoutForce();
                    initGui();
                    if (mpLayout->isPlaying(ANIM_BTN_OUT)) {
                        f32 frame = mpLayout->getAnim(ANIM_BTN_OUT)->getCurrentFrame();
                        mpLayout->getAnim(ANIM_BTN_OUT)->stop();

                        if (frame > 0.0f) {
                            anim = mpLayout->getAnim(ANIM_BTN_OUT);
                            anim->setMinFrame(static_cast<u32>(frame));
                            anim->setMaxFrame(15.0f);
                        }
                    }
                    else {
                        anim = mpLayout->getAnim(ANIM_BTN_OUT);
                        anim->setMinFrame(0.0f);
                        anim->setMaxFrame(15.0f);
                    }
                    break;
                }
                case 3: {
                    anim = mpLayout->getAnim(ANIM_BTN_INSERT);
                    break;
                }
                case 4: {
                    anim = mpLayout->getAnim(ANIM_BTN_SELECT);
                    break;
                }
            }

            if (anim != NULL) {
                anim->initAnmFrame();
                if (backwards) {
                    anim->setAnimType(ANIM_TYPE_BACKWARD);
                }
                else {
                    anim->setAnimType(ANIM_TYPE_FORWARD);
                }
                anim->play();
            }
        }

        int SDMenuButton::getButtonNo(const char* paneName) {
            int num = -1;
            for (int i = 0; i < BTN_MAX; i++) {
                if (strcmp(paneName, scSDBtnName[i]) == 0) {
                    num = i;
                    break;
                }
            }
            return num;
        }

        void SDMenuButton::enableBtn() {
            mbEnabled = true;

            for (int i = 0; i < 1; i++) {
                if (mbHovered[i]) {
                    mbHovered[i] = FALSE;

                    // Play hover out animation
                    layout::Animator* anim = mpLayout->getAnim(ANIM_BTN_ROLL_OUT);
                    anim->play();
                }

                // Init button pane
                mpGui->initPane(mpLayout->FindPaneByName(scSDBtnName[i]));
            }
        }

        void SDMenuButton::disableBtn() {
            for (int i = 0; i < BTN_MAX; i++) {
                mpBalloons[i]->fadeoutForce();
            }
            mbEnabled = false;
        }

        void SDMenuButton::toggle_insert(BOOL bInserted) {
            if (bInserted) {
                set_pane_visible_2(mpLayout->FindPaneByName("N_Btn_On"));
                mpLayout->FindPaneByName("N_Btn_Off")->SetVisible(false);
            }
            else {
                mpLayout->FindPaneByName("N_Btn_On")->SetVisible(false);
                set_pane_visible_1(mpLayout->FindPaneByName("N_Btn_Off"));

                // Force stop the insert animation.
                if (mpLayout->isPlaying(ANIM_BTN_INSERT)) {
                    mpLayout->getAnim(ANIM_BTN_INSERT)->stop();
                    mpLayout->getAnim(ANIM_BTN_INSERT)->initAnmFrame();
                }
            }
        }

        void SDMenuButton::show_balloon(int balloonId, const char* targetPaneName) {
            if (balloonId < BTN_MAX) {
                nw4r::lyt::Pane* pane = mpLayout->FindPaneByName(targetPaneName);
                math::VEC3 pos(0.0f, 0.0f, 0.0f);

                math::VEC3Transform(&pos, &pane->GetGlobalMtx(), &pos);
                pos.y += 50.0f;

                mpBalloons[balloonId]->setPos(pos, true, 0);
                mpBalloons[balloonId]->fadeinNoSetTextbox();
            }
        }

        void SDMenuEventHandlerBase::onEvent(u32 compId, u32 event, void* data) {
            gui::PaneComponent* component = static_cast<gui::PaneComponent*>(mpManager->getComponent(compId));
            const char* paneName = component->getPane()->GetName();

            SDMenuButton* sdMenuButton = static_cast<Button*>(System::getScene(SCENE_BUTTON))->get_sd_menu_btn();

            switch (event) {
                case ON_POINT: {
                    sdMenuButton->startPointEvent(paneName, static_cast<controller::Interface*>(data));
                    break;
                }
                case ON_LEFT: {
                    sdMenuButton->startLeftEvent(paneName);
                    break;
                }
            }

            onEventDerived(compId, event, static_cast<controller::Interface*>(data));
        }

        void SDMenuEventHandlerBase::onEventDerived(u32 compId, u32 event, const controller::Interface* con) {}
    }
}
