#include "scene/setting/iplSettingBg.h"

namespace ipl {
    namespace scene {
        SettingBg::SettingBg(EGG::Heap* pHeap, int unk) : Base(pHeap) {
            unkID = unk;
            mpLayout = NULL;
            mpLayoutFile = NULL;

            unk_0x28 = 3;
        }

        void SettingBg::prepare() {
            mpLayoutFile = System::getNandManager()->readLayoutAsync(mpHeap, "setupBg.ash", false);
        }

        void SettingBg::create() {
            mpLayout = new layout::Object(mpHeap, mpLayoutFile, "arc", "it_BgSetUp_a.brlyt");
            mpLayout->finishBinding();

            createChildScene(0x16 /* SettingButton */, this, NULL, (void*)unkID);
            createChildScene(0x13 /* SettingSelect */, this, NULL, (void*)unkID);

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


