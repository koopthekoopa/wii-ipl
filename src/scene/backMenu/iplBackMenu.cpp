#include "scene/backMenu/iplBackMenu.h"

extern u8 backToWiiMenu_arc[];

namespace ipl {
    namespace scene {
        /**
         * @note Address: 0x8138EA64
         * @note Size: 0x54
         */
        BackMenu::BackMenu(EGG::Heap* pHeap) :
        FaderSceneBase(pHeap),
        unk_0x5C(0) {

            unk_0x28 = 2;
        }

        /**
         * @note Address: 0x8138EAB8
         * @note Size: 0x4
         */
        void BackMenu::prepare() {}

        /**
         * @note Address: 0x8138EABC
         * @note Size: 0x8
         */
        BOOL BackMenu::isReady() const {
            return TRUE;
        }

        /**
         * @note Address: 0x8138EAC4
         * @note Size: 0xAC
         */
        void BackMenu::create() {
            mpLayout = new layout::Object(mpHeap, backToWiiMenu_arc, "arc", "my_BackToWiiMenu.brlyt");

            mpLayout->bind("my_BackToWiiMenu.brlan");
            mpLayout->finishBinding();

            mpLayout->start();
            mpLayout->calc();

            System::getPointer()->setVisible(false);
            System::getFader()->fadeIn();
        }

        /**
         * @note Address: 0x8138EB70
         * @note Size: 0x8
         */
        void BackMenu::calcCommon() {
            mpLayout->calc();
        }

        /**
         * @note Address: 0x8138EB78
         * @note Size: 0x44
         */
        SceneReturn BackMenu::calcFadein() {
            if (System::getFader()->getStatus() == EGG::Fader::STATUS_PREPARE_OUT) {
                return SCENE_DONE;
            }
            return SCENE_CONTINUE;
        }

        /**
         * @note Address: 0x8138EBBC
         * @note Size: 0x6C
         */
        SceneReturn BackMenu::calcNormal() {
            SceneReturn result = SCENE_CONTINUE;

            if (System::isRsrcLoaded2()) {
                result = SCENE_DONE;
            }

            return result;
        }

        /**
         * @note Address: 0x8138EC28
         * @note Size: 0x1C
         */
        void BackMenu::initCalcFadeout() {
            System::getFader()->fadeOut();
        }

        /**
         * @note Address: 0x8138EC44
         * @note Size: 0xE8
         */
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

        /**
         * @note Address: 0x8138ED2C
         * @note Size: 0x50
         */
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


