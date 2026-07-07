#include "scene/saveDataEdit/iplSavedataBox.h"

#include "scene/memory/iplMemory.h"

namespace ipl {
    namespace scene {
        enum SavedataBoxAnimIdx {
            ANIM_DATA_IN = 0x0,         // 0x0
            ANIM_DATA_OUT = 0x1,        // 0x1
            ANIM_DATA_FOCUS_IN = 0x2,   // 0x2
            ANIM_DATA_FOCUS_OUT = 0x3,  // 0x3
        };

        SavedataBox::SavedataBox(EGG::Heap* heap, nand::LayoutFile* lytFile, const char* lytFolder, const char* lytFileName)
            : AnmController(heap), ::gui::EventHandler(), mState(BOX_STATE_IDLE), pBannerFileInfo(NULL), pTextBalloon(NULL),
              mTextBalloonInitialized(false) {
            pLytObj = new (heap) layout::Object(heap, lytFile, lytFolder, lytFileName);

            add_animation("it_ObjCubeEdit_b_SaveDataIn.brlan", "G_Data");
            add_animation("it_ObjCubeEdit_b_SaveDataOut.brlan", "G_Data");
            add_animation("it_ObjCubeEdit_b_SaveDataFoucusIn.brlan", "G_Data");
            add_animation("it_ObjCubeEdit_b_SaveDataFoucusOut.brlan", "G_Data");

            pLytObj->finishBinding();

            set_visible("N_Data_00", false);
            set_visible("DataBanner_00", false);

            pPaneManager = new ipl::gui::PaneManager(this, pLytObj->getDrawInfo(), NULL, NULL, true);
            pPaneManager->createLayoutScene(*pLytObj->getNW4RLyt());
            pPaneManager->setAllComponentTriggerTarget(false);

            pPaneManager->setTriggerTarget(pLytObj->FindPaneByName("B_Data_00"), true);
            add_anmpane("B_Data_00", get_animation(ANIM_DATA_FOCUS_IN), get_animation(ANIM_DATA_FOCUS_OUT));
        }

        SavedataBox::~SavedataBox() {
            delete pLytObj;
            delete pPaneManager;
        }

        void SavedataBox::calc() {
            Memory* sceneMemory;
            GXTexObj corruptIconTex;

            AnmPane* anmPane;

            pLytObj->calc();
            pPaneManager->calc();

            anmPane = NULL;
            while (anmPane = (AnmPane*)nw4r::ut::List_GetNext(&mPaneList, anmPane), anmPane != 0)
                anmPane->calc();

            if (mState != BOX_STATE_FADEOUT && pBannerFileInfo != NULL) {
                set_visible("DataBanner_00", true);
                if (!pBannerFileInfo->isCorrupt()) {
                    set_texture("DataBanner_00", *pBannerFileInfo->loadIconTexture());
                    pBannerFileInfo->update();
                } else {
                    sceneMemory = (Memory*)System::getScene(SCENE_MEMORY);
                    sceneMemory->getCorruptIconTexture(&corruptIconTex);
                    set_texture("DataBanner_00", corruptIconTex);
                }
            } else {
                set_visible("DataBanner_00", false);
            }

            switch (mState) {
                case BOX_STATE_IDLE:
                    break;
                case BOX_STATE_FADEIN:
                    on_fadein();
                    break;
                case BOX_STATE_FADEOUT:
                    on_fadeout();
                    break;
            }
        }

        void SavedataBox::draw() {
            pLytObj->draw();
        }

        void SavedataBox::update() {
            pPaneManager->update();
        }

        void SavedataBox::anmFadein() {
            set_visible("N_Data_00", true);
            do_animation(ANIM_DATA_IN, ANIM_TYPE_FORWARD, true);
            mState = BOX_STATE_FADEIN;
        }

        void SavedataBox::anmFadeout() {
            if (pTextBalloon != NULL)
                pTextBalloon->terminate();
            do_animation(ANIM_DATA_OUT, ANIM_TYPE_FORWARD, true);
            mState = BOX_STATE_FADEOUT;
        }

        void SavedataBox::onEvent(u32 compId, u32 event, void* data) {
            const char* paneName;
            gui::PaneComponent* paneComponent;
            AnmPane* anmPane;
            Memory* sceneMemory;

            paneComponent = (gui::PaneComponent*)mpManager->getComponent(compId);
            paneName = paneComponent->getPane()->GetName();

            switch (event) {
                case ON_POINT:
                    anmPane = get_anmpane(paneName);
                    if (anmPane == NULL)
                        break;

                    anmPane->incHoverCount();
                    sceneMemory = (Memory*)System::getScene(SCENE_MEMORY);
                    sceneMemory->onPoint(anmPane);
                    if (pTextBalloon == NULL || pBannerFileInfo == NULL)
                        break;
                    if (!pBannerFileInfo->isCorrupt()) {
                        pTextBalloon->init(pBannerFileInfo->getSaveName());
                    } else {
                        pTextBalloon->init(L"???");
                    }
                    mTextBalloonInitialized = true;
                    pTextBalloon->fadein();
                    break;

                case ON_MOVE:
                    anmPane = get_anmpane(paneName);
                    if (anmPane == NULL)
                        break;
                    if (pTextBalloon == NULL || pBannerFileInfo == NULL)
                        break;
                    if (mTextBalloonInitialized)
                        break;

                    if (!pBannerFileInfo->isCorrupt()) {
                        pTextBalloon->init(pBannerFileInfo->getSaveName());
                    } else {
                        pTextBalloon->init(L"???");
                    }
                    mTextBalloonInitialized = true;
                    pTextBalloon->fadein();
                    break;

                case ON_LEFT:
                    anmPane = get_anmpane(paneName);
                    if (anmPane == NULL)
                        break;

                    anmPane->decHoverCount();
                    sceneMemory = (Memory*)System::getScene(SCENE_MEMORY);
                    sceneMemory->onLeft(anmPane);
                    mTextBalloonInitialized = false;

                    if (pTextBalloon == NULL || pBannerFileInfo == NULL)
                        break;
                    pTextBalloon->fadeout();
                    break;

                case ON_TRIG:
                    if (!((controller::Interface*)data)->downTrg(controller::BTN_INTERACT))
                        break;
                    anmPane = get_anmpane(paneName);
                    if (anmPane == NULL)
                        break;
                    if (pBannerFileInfo == NULL)
                        break;
                    sceneMemory = (Memory*)System::getScene(SCENE_MEMORY);
                    sceneMemory->onTrig(this);
                    break;
            }
        }

        void SavedataBox::clearEvent() {
            clear_anmpane("B_Data_00");

            if (pTextBalloon != NULL) {
                pTextBalloon->terminate();
                mTextBalloonInitialized = false;
            }
        }

        WAIT_FOR_ANIM_STATE(SavedataBox::on_fadein, ANIM_DATA_IN, mState = BOX_STATE_IDLE);
        WAIT_FOR_ANIM_STATE(SavedataBox::on_fadeout, ANIM_DATA_OUT, mState = BOX_STATE_IDLE);
    }  // namespace scene
}  // namespace ipl
