#include "scene/saveDataEdit/iplSavedataBox.h"

#include "scene/memory/iplMemory.h"

namespace ipl {
    namespace scene {
        SavedataBox::SavedataBox(EGG::Heap* heap, nand::LayoutFile* layoutFile, const char* layoutDir, const char* layoutFileName)
            : AnmController(heap), ::gui::EventHandler(), mState(STATE_IDLE), mpBannerFileInfo(NULL), mpBalloon(NULL), mbInitBalloon(false) {
            mpLayout = new (heap) layout::Object(heap, layoutFile, layoutDir, layoutFileName);

            add_animation("it_ObjCubeEdit_b_SaveDataIn.brlan", "G_Data");
            add_animation("it_ObjCubeEdit_b_SaveDataOut.brlan", "G_Data");
            add_animation("it_ObjCubeEdit_b_SaveDataFoucusIn.brlan", "G_Data");
            add_animation("it_ObjCubeEdit_b_SaveDataFoucusOut.brlan", "G_Data");

            mpLayout->finishBinding();

            set_visible("N_Data_00", false);
            set_visible("DataBanner_00", false);

            mpGui = new gui::PaneManager(this, mpLayout->getDrawInfo(), NULL, NULL, true);
            mpGui->createLayoutScene(*mpLayout->getNW4RLyt());
            mpGui->setAllComponentTriggerTarget(false);

            mpGui->setTriggerTarget(mpLayout->FindPaneByName("B_Data_00"), true);
            add_anmpane("B_Data_00", get_animation(ANIM_DATA_FOCUS_IN), get_animation(ANIM_DATA_FOCUS_OUT));
        }

        SavedataBox::~SavedataBox() {
            delete mpLayout;
            delete mpGui;
        }

        void SavedataBox::calc() {
            Memory* memory;
            GXTexObj corruptIconTex;

            AnmPane* anmPane;

            mpLayout->calc();
            mpGui->calc();

            anmPane = NULL;
            while (anmPane = (AnmPane*)nw4r::ut::List_GetNext(&mPaneList, anmPane), anmPane != NULL) {
                anmPane->calc();
            }

            if (mState != STATE_FADEOUT && mpBannerFileInfo != NULL) {
                set_visible("DataBanner_00", true);
                if (!mpBannerFileInfo->isCorrupt()) {
                    set_texture("DataBanner_00", *mpBannerFileInfo->loadIconTexture());
                    mpBannerFileInfo->update();
                } else {
                    memory = (Memory*)System::getScene(SCENE_MEMORY);
                    memory->getCorruptIconTexture(&corruptIconTex);
                    set_texture("DataBanner_00", corruptIconTex);
                }
            } else {
                set_visible("DataBanner_00", false);
            }

            switch (mState) {
                case STATE_IDLE: {
                    break;
                }
                case STATE_FADEIN: {
                    on_fadein();
                    break;
                }
                case STATE_FADEOUT: {
                    on_fadeout();
                    break;
                }
            }
        }

        void SavedataBox::draw() {
            mpLayout->draw();
        }

        void SavedataBox::update() {
            mpGui->update();
        }

        void SavedataBox::anmFadein() {
            set_visible("N_Data_00", true);
            do_animation(ANIM_DATA_IN, ANIM_TYPE_FORWARD, true);
            mState = STATE_FADEIN;
        }

        void SavedataBox::anmFadeout() {
            if (mpBalloon != NULL)
                mpBalloon->terminate();
            do_animation(ANIM_DATA_OUT, ANIM_TYPE_FORWARD, true);
            mState = STATE_FADEOUT;
        }

        void SavedataBox::onEvent(u32 compId, u32 event, void* data) {
            const char* paneName;
            gui::PaneComponent* paneComponent;

            paneComponent = (gui::PaneComponent*)mpManager->getComponent(compId);
            paneName = paneComponent->getPane()->GetName();

            controller::Interface* con = (controller::Interface*)data;

            AnmPane* anmPane;
            Memory* memory;

            switch (event) {
                case ON_POINT: {
                    anmPane = get_anmpane(paneName);
                    if (anmPane == NULL) {
                        break;
                    }
                    anmPane->incHoverCount();
                    ((Memory*)System::getScene(SCENE_MEMORY))->onPoint(anmPane);
                    if (mpBalloon == NULL || mpBannerFileInfo == NULL) {
                        break;
                    }

                    if (!mpBannerFileInfo->isCorrupt()) {
                        mpBalloon->init(mpBannerFileInfo->getSaveName());
                    } else {
                        mpBalloon->init(L"???");
                    }

                    mbInitBalloon = true;
                    mpBalloon->fadein();
                    break;
                }
                case ON_MOVE: {
                    anmPane = get_anmpane(paneName);
                    if (anmPane == NULL) {
                        break;
                    }
                    if (mpBalloon == NULL || mpBannerFileInfo == NULL) {
                        break;
                    }
                    if (mbInitBalloon) {
                        break;
                    }

                    if (!mpBannerFileInfo->isCorrupt()) {
                        mpBalloon->init(mpBannerFileInfo->getSaveName());
                    } else {
                        mpBalloon->init(L"???");
                    }
                    mbInitBalloon = true;
                    mpBalloon->fadein();
                    break;
                }
                case ON_LEFT: {
                    anmPane = get_anmpane(paneName);
                    if (anmPane == NULL) {
                        break;
                    }

                    anmPane->decHoverCount();
                    ((Memory*)System::getScene(SCENE_MEMORY))->onLeft(anmPane);
                    mbInitBalloon = false;

                    if (mpBalloon == NULL || mpBannerFileInfo == NULL) {
                        break;
                    }
                    mpBalloon->fadeout();
                    break;
                }
                case ON_TRIG: {
                    if (!con->downTrg(controller::BTN_INTERACT)) {
                        break;
                    }
                    anmPane = get_anmpane(paneName);
                    if (anmPane == NULL) {
                        break;
                    }
                    if (mpBannerFileInfo == NULL) {
                        break;
                    }
                    ((Memory*)System::getScene(SCENE_MEMORY))->onTrig(this);
                    break;
                }
            }
        }

        void SavedataBox::clearEvent() {
            clear_anmpane("B_Data_00");

            if (mpBalloon != NULL) {
                mpBalloon->terminate();
                mbInitBalloon = false;
            }
        }

        WAIT_FOR_ANIM_STATE(SavedataBox::on_fadein, ANIM_DATA_IN, mState = STATE_IDLE);
        WAIT_FOR_ANIM_STATE(SavedataBox::on_fadeout, ANIM_DATA_OUT, mState = STATE_IDLE);
    }  // namespace scene
}  // namespace ipl
