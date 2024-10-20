#include "scene/setting/iplSettingBg.h"

namespace ipl {
    namespace scene {
        /**
         * @note Address: 0x81406CC0 (4.3U)
         * @note Size: 0x68
         */
        SettingBg::SettingBg(EGG::Heap* pHeap, int unk) : Base(pHeap) {
            unkID = unk;
            mpLayout = NULL;
            mpLayoutFile = NULL;

            unk_0x28 = 3;
        }

        /**
         * @note Address: 0x81406D28 (4.3U)
         * @note Size: 0x4C
         */
        void SettingBg::prepare() {
            mpLayoutFile = System::getNandManager()->readLayoutAsync(mpHeap, "setupBg.ash", false);
        }

        /**
         * @note Address: 0x81406D74 (4.3U)
         * @note Size: 0xA4
         */
        void SettingBg::create() {
            mpLayout = new layout::Object(mpHeap, mpLayoutFile, "arc", "it_BgSetUp_a.brlyt");
            mpLayout->finishBinding();

            createChildScene(0x16 /* SettingButton */, this, NULL, (void*)unkID);
            createChildScene(0x13 /* SettingSelect */, this, NULL, (void*)unkID);

            System::getFader()->fadeIn();
        }

        /**
         * @note Address: 0x81406E18 (4.3U)
         * @note Size: 0x08
         */
        void SettingBg::calc() {
            mpLayout->calc();
        }

        /**
         * @note Address: 0x81406E20 (4.3U)
         * @note Size: 0x50
         */
        void SettingBg::draw() {
            if (System::getSceneManager()->isDrawingScene() == TRUE) {
                utility::Graphics::setOrtho();
                mpLayout->draw();
            }
        }

        /**
         * @note Address: 0x81406E70 (4.3U)
         * @note Size: 0x58
         */
        SettingBg::~SettingBg() {}
    }
}


