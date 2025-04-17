#include "scene/backMenu/iplBackMenu.h"

extern u8 backToWiiMenu_arc[];

namespace ipl {
    namespace scene {
        static bool has_prepared_for_boot() {
            bool bResourceDone = false;
            bool bCommonResDone = false;

            // Check is system resources are loaded.
            // (This does not use `System::isRsrcLoaded()` for some reason)
#ifdef USE_ZI8
            if (System::isCmnResLoaded() && System::isFontResLoaded() && System::isSndResLoaded()) {
                bCommonResDone = true;
            }
            if (bCommonResDone && System::isZi8ResLoaded()) {
                bResourceDone = true;
            }
#else
            if (System::isCmnResLoaded() && System::isFontResLoaded()) {
                bCommonResDone = true;
            }
            if (bCommonResDone && System::isSndResLoaded()) {
                bResourceDone = true;
            }
#endif
            if (bResourceDone) {
                return true;
            }

            return false;
        }

        BackMenu::BackMenu(EGG::Heap* heap) :
        FaderSceneBase(heap),
        unused_0x5C(0) {
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

            // Start animating
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
            if (has_prepared_for_boot()) {
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

            // After system initialized, we can exit out the scene
            if (System::unkBool() || (System::hasCreatedAfter() && System::isNandFull())) {
                System::getPointer()->setVisible(true);
                System::getResetHandler()->enableResetToMenu(TRUE);
                
                reserveAllSceneDestruction(SCENE_BOARD, NULL);
                
                return SCENE_NEXT;
            }
            return SCENE_CONTINUE;
        }

        void BackMenu::draw() {
            if (System::getSceneManager()->canDrawScene()) {
                layout::Object::setCamera();
                mpLayout->draw();
            }
        }

        // TODO!!: fix weak ordering!!
        void FaderSceneBase::calcCommonAfter() {}
        void FaderSceneBase::initCalcNormal() {}
    }
}
