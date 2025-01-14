#include "scene/setting/iplSettingBg.h"

namespace ipl {
    namespace scene {
        SettingBg::SettingBg(EGG::Heap* heap, int sceneID) :
        Base(heap),
        mSceneID(sceneID),
        mpLayout(NULL),
        mpLayoutFile(NULL) {
            mFlags = 3;
        }

        void SettingBg::prepare() {
            mpLayoutFile = System::getNandManager()->readLayoutAsync(mpHeap, "setupBg.ash", false);
        }

        void SettingBg::create() {
            mpLayout = new layout::Object(mpHeap, mpLayoutFile, "arc", "it_BgSetUp_a.brlyt");
            mpLayout->finishBinding();

            createChildScene(SCENE_SETTING_BUTTON, this, NULL, (void*)mSceneID);
            createChildScene(SCENE_SETTING_SELECT, this, NULL, (void*)mSceneID);

            System::getFader()->fadeIn();
        }

        void SettingBg::calc() {
            mpLayout->calc();
        }

        void SettingBg::draw() {
            if (System::getSceneManager()->isDrawingScene() == TRUE) {
                utility::Graphics::setOrtho();
                mpLayout->draw();
            }
        }

        SettingBg::~SettingBg() {}
    }
}


