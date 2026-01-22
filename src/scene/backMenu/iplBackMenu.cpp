#define VERY_DIRTY_MATCH_HACK // for 4.3k

#include "scene/backMenu/iplBackMenu.h"

#include "iplScene.h"

#include "iplSystem.h"

extern u8 backToWiiMenu_arc[];

namespace ipl {
    namespace scene {
        static bool has_prepared() {
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
            setSceneParentFlags(SCN_PARENTFLAG_DRAW); // (ignored as child scenes aren't created over this scene)
        }

        void BackMenu::prepare() {}
        
        BOOL BackMenu::isReady() const {
            return TRUE;
        }

        void BackMenu::create() {
            // Set up layout
            mpLayout = new layout::Object(getSceneHeap(), backToWiiMenu_arc, "arc", "my_BackToWiiMenu.brlyt");

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

        FaderSceneCommand BackMenu::calcFadein() {
            if (System::getFader()->getStatus() == EGG::Fader::PREPARE_OUT) {
                return FADER_SCN_NEXT;
            }
            return FADER_SCN_CONTINUE;
        }

        FaderSceneCommand BackMenu::calcNormal() {
            FaderSceneCommand result = FADER_SCN_CONTINUE;

            // Get out of scene once resources are fully loaded.
            if (has_prepared()) {
                result = FADER_SCN_NEXT;
            }

            return result;
        }

        void BackMenu::initCalcFadeout() {
            System::getFader()->fadeOut();
        }

        FaderSceneCommand BackMenu::calcFadeout() {
            if (System::getFader()->getStatus() == EGG::Fader::PREPARE_IN) {
                System::requestCreateAfter();
                System::requestCreateLibManager();
            }

            // After system initialized, we can exit out the scene
            if (System::createdAfterAndLibMgr() || (System::hasCreatedAfter() && System::isNandFull())) {
                System::getPointer()->setVisible(true);
                System::getResetHandler()->enableResetToMenu();
                
                reserveAllSceneDestruction(SCENE_BOARD, NULL);
                
                return FADER_SCN_NEXT;
            }
            return FADER_SCN_CONTINUE;
        }

        void BackMenu::draw() {
            if (System::onDefaultDrawLayer()) {
                layout::Object::setCamera();
                mpLayout->draw();
            }
        }
    }
}
