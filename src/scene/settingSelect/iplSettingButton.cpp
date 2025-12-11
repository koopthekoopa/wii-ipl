#include "scene/settingSelect/iplSettingButton.h"
#include "scene/settingSelect/iplSettingSelectArg.h"

#include "iplSceneUI.h"

#include "iplSystem.h"

namespace ipl {
    namespace scene {
        static const char* scBtnSoundType[SettingButton::MAX_SOUND_TYPE] = {
            "WIPL_SE_CANCEL",
            "WIPL_SE_DECIDE",
        };

        SettingButton::SettingButton(EGG::Heap* heap, int arg) :
        FaderSceneBase(heap),
        ::gui::EventHandler() {
            unk_0x264 = 64;
            unk_0x268 = 0;
            unk_0x26C = 0;
            unk_0x270 = 0;
            mSettingArg = arg;
            mpLayout = NULL;
            mpLayoutFile = NULL;
            mpGui = NULL;
            mBtnHovered = FALSE;
            mSoundType = CANCEL;
            mbShowBtn = true;
            mbFadedIn = false;
            mbTrigBtn = false;
        }

        void SettingButton::prepare() {
            mpLayoutFile = System::getNandManager()->readLayoutAsync(getSceneHeap(), "setupBtn.ash");
        }

        void SettingButton::create() {
            mpLayout = new layout::Object(getSceneHeap(), mpLayoutFile, "arc", "it_Button_a.brlyt");
        
            mpLayout->bindToGroup("it_Button_a_SeenIn.brlan",       "G_BarIn",      false);
            mpLayout->bindToGroup("it_Button_a_BtnFoucusIn.brlan",  "G_FocusBtnA",  false, false);
            mpLayout->bindToGroup("it_Button_a_BtnFoucusOut.brlan", "G_FocusBtnA",  false, false);
            mpLayout->bindToGroup("it_Button_a_BtnFlash.brlan",     "G_SelectBtnA", false, false);
            mpLayout->bindToGroup("it_Button_a_WiiAppear.brlan",    "G_Wii",        false, false);
            mpLayout->bindToGroup("it_Button_a_WiiLost.brlan",      "G_Wii",        false);
            mpLayout->bindToGroup("it_Button_a_AlphIn.brlan",       "G_FocusBtnA",  false, false);
            mpLayout->bindToGroup("it_Button_a_AlphOut.brlan",      "G_FocusBtnA",  false, false);
            mpLayout->finishBinding();

            mpGui = new gui::PaneManager(this, mpLayout->getDrawInfo(), NULL, NULL, true);
            mpGui->createLayoutScene(*mpLayout->getLayout());
            mpGui->setAllComponentTriggerTarget(false);
            mpGui->setTriggerTarget(mpLayout->FindPaneByName("B_Button_00"), true);

            setText(MESG_CMN_BACK_ALT);

            if (mSettingArg == SettingSelectArg::ARG_START_SAVE_DATA) {
                mbShowBtn = false;
                mpLayout->getAnim(ANIM_ALPHA_IN)->init();
            }
            else {
                mbShowBtn = true;
                mpLayout->getAnim(ANIM_ALPHA_OUT)->init();
            }
        }

        FaderSceneCommand SettingButton::calcFadein() {
            FaderSceneCommand result = FADER_SCN_CONTINUE;
            if (!mbFadedIn) {
                if (System::getFader()->getStatus() == EGG::Fader::PREPARE_OUT) {
                    mbFadedIn = true;
                    mpLayout->getAnim(ANIM_SEEN_IN)->play();
                }
            }
            else {
                if (!mpLayout->getAnim(ANIM_SEEN_IN)->isPlaying()) {
                    result = FADER_SCN_NEXT;
                }
            }

            return result;
        }

        FaderSceneCommand SettingButton::calcNormal() {
            if (!mpLayout->getAnim(ANIM_ALPHA_IN)->isPlaying()
            && !mpLayout->getAnim(ANIM_ALPHA_OUT)->isPlaying()
            && !mpLayout->getAnim(ANIM_BTN_FLASH)->isPlaying()
            && unk_0x268 != 0) {
                Unk unk = unk_0x64[unk_0x26C];
                switch (unk.command) {
                    case CMD_SHOW_BTN: {
                        showBtn();
                        break;
                    }
                    case CMD_HIDE_BTN: {
                        hideBtn();
                        break;
                    }
                    case CMD_SET_TEXT: {
                        setText(unk.msgID);
                        break;
                    }
                }

                if (unk_0x268 != 0) {
                    if (++unk_0x26C >= unk_0x264) {
                        unk_0x26C = 0;
                    }
                    unk_0x268--;
                }
                
            }

            return FADER_SCN_CONTINUE;
        }

        void SettingButton::calcCommonAfter() {
            mpLayout->calc();
            mpGui->calc();
        }

        void SettingButton::draw() {
            if (System::canDrawScene()) {
                layout::Object::setCamera();
                mpLayout->draw();
            }
        }

        static bool isPane(const char* paneName, const char* findName) {
            return strcmp(paneName, findName) == 0;
        }

        void SettingButton::start_point_event(const char* paneName, controller::Interface* controller) {
            if (isPane(paneName, "B_Button_00")) {
                if (mBtnHovered == FALSE) {
                    snd::getSystem()->startSE("WIPL_SE_BT_TARGETTING");
                    if (controller) {
                        controller->rumble();
                    }
                    mpLayout->getAnim(ANIM_BTN_FOCUS_IN)->play();
                }
                mBtnHovered++;
            }
        }

        void SettingButton::start_left_event(const char* paneName) {
            if (isPane(paneName, "B_Button_00")) {
                if (mBtnHovered == TRUE) {
                    mpLayout->getAnim(ANIM_BTN_FOCUS_OUT)->play();
                }
                mBtnHovered--;
            }
        }

        void SettingButton::start_trig_event(const char* paneName) {
            if (isPane(paneName, "B_Button_00")) {
                snd::getSystem()->startSE(scBtnSoundType[mSoundType]);

                mpLayout->getAnim(ANIM_BTN_FLASH)->play();

                mbTrigBtn = true;
                mpGui->init();
                
                mBtnHovered = FALSE;
            }
        }

        void SettingButton::onEvent(u32 compId, u32 event, void* data) {
            gui::PaneComponent* component = static_cast<gui::PaneComponent*>(mpManager->getComponent(compId));
            const char* paneName = component->getPane()->GetName();
    
            controller::Interface* controller = reinterpret_cast<controller::Interface*>(data);
    
            switch (event) {
                case ::gui::EventHandler::ON_POINT: {
                    start_point_event(paneName, controller);
                    break;
                }
                case ::gui::EventHandler::ON_LEFT: {
                    start_left_event(paneName);
                    break;
                }
                case ::gui::EventHandler::ON_TRIG: {
                    if (controller->downTrg(controller::BTN_INTERACT)) {
                        start_trig_event(paneName);
                    }
                    break;
                }
            }
        }

        bool SettingButton::update() {
            bool result = false;
            if (getSceneFadeState() == FaderSceneBase::STT_NORMAL && mbShowBtn && !mpLayout->getAnim(ANIM_ALPHA_IN)->isPlaying()) {
                mpGui->update();

                result = mbTrigBtn;
                mbTrigBtn = false;
            }

            return result;
        }

        void SettingButton::showWii() {
            mpLayout->getAnim(ANIM_WII_APPEAR)->play();
        }

        void SettingButton::hideWii() {
            mpLayout->getAnim(ANIM_WII_LOST)->play();
        }

        void SettingButton::showBtn() {
            if (mbShowBtn == false) {
                mbShowBtn = true;
                mpLayout->getAnim(ANIM_ALPHA_IN)->play();
            }
        }

        void SettingButton::hideBtn() {
            if (mbShowBtn == true) {
                mbShowBtn = false;
                mpLayout->getAnim(ANIM_ALPHA_OUT)->play();
            }
        }

        void SettingButton::setText(u32 msgId) {
            nw4r::lyt::Pane* pane = mpLayout->FindPaneByName("T_Button_00");
            nw4r::lyt::TextBox* textBox = nw4r::ut::DynamicCast<nw4r::lyt::TextBox*>(pane);
            textBox->SetString(System::getMessage(msgId));
        }

        void SettingButton::reserve(int command, u32 msgId) {
            if (unk_0x264 != unk_0x268) {
                int unk = unk_0x270;
                unk_0x64[unk].command = command;
                unk_0x64[unk].msgID = msgId;
                unk_0x270++;

                if (unk_0x270 >= unk_0x264) {
                    unk_0x270 = 0;
                }
                unk_0x268++;
            }
        }

        bool SettingButton::isPlaying() const {
            return mpLayout->getAnim(ANIM_BTN_FLASH)->isPlaying();
        }
    }
}
