#include "scene/settingSelect/iplSettingBg.h"

namespace ipl {
    namespace scene {
        SettingBg::SettingBg(EGG::Heap* heap, int type) :
        Base(heap),
        mSettingType(type),
        mpLayout(NULL),
        mpLayoutFile(NULL) {
            mFlags = 3;
        }

        void SettingBg::prepare() {
            mpLayoutFile = System::getNandManager()->readLayoutAsync(mpHeap, "setupBg.ash");
        }

        void SettingBg::create() {
            mpLayout = new layout::Object(mpHeap, mpLayoutFile, "arc", "it_BgSetUp_a.brlyt");
            mpLayout->finishBinding();

            createChildScene(SCENE_SETTING_BUTTON, this, NULL, (void*)mSettingType);
            createChildScene(SCENE_SETTING_SELECT, this, NULL, (void*)mSettingType);

            System::getFader()->fadeIn();
        }

        void SettingBg::calc() {
            mpLayout->calc();
        }

        void SettingBg::draw() {
            if (System::getSceneManager()->canDrawScene()) {
                utility::Graphics::setOrtho();
                mpLayout->draw();
            }
        }

        SettingBg::~SettingBg() {}
    }
}
