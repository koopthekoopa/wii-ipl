#include "scene/backMenu/iplBackMenu.h"

extern u8 backToWiiMenu_arc[];

namespace ipl {
    namespace scene {
        BackMenu::BackMenu(EGG::Heap* pHeap) :
        FaderSceneBase(pHeap),
        unk_0x5C(0) {

            unk_0x28 = 2;
        }

        void BackMenu::prepare() {}
        BOOL BackMenu::isReady() const {
            return TRUE;
        }

        void BackMenu::create() {
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

        SceneReturn BackMenu::calcFadein() {
            if (System::getFader()->getStatus() == EGG::Fader::STATUS_PREPARE_OUT) {
                return SCENE_DONE;
            }
            return SCENE_CONTINUE;
        }

        SceneReturn BackMenu::calcNormal() {
            SceneReturn result = SCENE_CONTINUE;

            if (System::isRsrcLoaded2()) {
                result = SCENE_DONE;
            }

            return result;
        }

        void BackMenu::initCalcFadeout() {
            System::getFader()->fadeOut();
        }

        SceneReturn BackMenu::calcFadeout() {
            if (System::getFader()->getStatus() == EGG::Fader::STATUS_PREPARE_IN) {
                System::setUnk_0x2BE(true);
                System::setUnk_0x2BF(true);
            }

            if (System::unkBool() || (System::hasCreatedAfter() && System::isNandFull())) {
                System::getPointer()->setVisible(true);
                System::getResetHandler()->enableResetToMenu(TRUE);
                
                reserveAllSceneDestruction(4, NULL);
                
                return SCENE_DONE;
            }
            return SCENE_CONTINUE;
        }

        void BackMenu::draw() {
            if (System::getSceneManager()->isDrawingScene() == TRUE) {
                utility::Graphics::setOrtho();
                mpLayout->draw();
            }
        }

        // TODO: sort out the ordering
        void FaderSceneBase::calcCommonAfter() {}
        void FaderSceneBase::initCalcNormal() {}
    }
}


