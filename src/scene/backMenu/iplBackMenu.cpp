#include "scene/backMenu/iplBackMenu.h"

extern u8 backToWiiMenu_arc[];

namespace ipl {
    namespace scene {
        BackMenu::BackMenu(EGG::Heap* pHeap) :
        FaderSceneBase(pHeap),
        unk_0x5C(0) {
            mFlags = 2;
        }

        void BackMenu::prepare() {}
        BOOL BackMenu::isReady() const {
            return TRUE;
        }

        void BackMenu::create() {
            // Set up layout
            mpLayout = new layout::Object(mpHeap, backToWiiMenu_arc, "arc", "my_BackToWiiMenu.brlyt");

            mpLayout->bind("my_BackToWiiMenu.brlan");
            mpLayout->finishBinding();

            mpLayout->start();
            mpLayout->calc();

            System::getPointer()->setVisible(false);
            System::getFader()->fadeIn();
        }

        void BackMenu::calcCommon() {
            mpLayout->calc();
        }

        SceneCommand BackMenu::calcFadein() {
            if (System::getFader()->getStatus() == EGG::Fader::STATUS_PREPARE_OUT) {
                return SCENE_NEXT;
            }
            return SCENE_CONTINUE;
        }

        SceneCommand BackMenu::calcNormal() {
            SceneCommand result = SCENE_CONTINUE;

            // Get out of scene ones resources are fully loaded.
            if (Util::resourceLoaded()) {
                result = SCENE_NEXT;
            }

            return result;
        }

        void BackMenu::initCalcFadeout() {
            System::getFader()->fadeOut();
        }

        SceneCommand BackMenu::calcFadeout() {
            if (System::getFader()->getStatus() == EGG::Fader::STATUS_PREPARE_IN) {
                System::setUnk_0x2BE(true);
                System::setUnk_0x2BF(true);
            }

            if (System::unkBool() || (System::hasCreatedAfter() && System::isNandFull())) {
                System::getPointer()->setVisible(true);
                System::getResetHandler()->enableResetToMenu(TRUE);
                
                reserveAllSceneDestruction(SCENE_BOARD, NULL);
                
                return SCENE_NEXT;
            }
            return SCENE_CONTINUE;
        }

        void BackMenu::draw() {
            if (System::getSceneManager()->isDrawingScene() == TRUE) {
                utility::Graphics::setOrtho();
                mpLayout->draw();
            }
        }
    }
}


