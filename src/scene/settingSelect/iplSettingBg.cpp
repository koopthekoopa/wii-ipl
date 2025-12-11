#include "scene/settingSelect/iplSettingBg.h"
#include "scene/settingSelect/iplSettingSelectArg.h"

#include "iplScene.h"

#include "iplSystem.h"

namespace ipl {
    namespace scene {
        SettingBg::SettingBg(EGG::Heap* heap, int arg) :
        Base(heap),
        mSettingArg(arg),
        mpLayout(NULL),
        mpLayoutFile(NULL) {
            setSceneParentFlags(SCN_PARENTFLAG_CALC | SCN_PARENTFLAG_DRAW);
        }

        void SettingBg::prepare() {
            mpLayoutFile = System::getNandManager()->readLayoutAsync(getSceneHeap(), "setupBg.ash");
        }

        void SettingBg::create() {
            mpLayout = new layout::Object(getSceneHeap(), mpLayoutFile, "arc", "it_BgSetUp_a.brlyt");
            mpLayout->finishBinding();

            createChildScene(SCENE_SETTING_BUTTON, this, NULL, (void*)mSettingArg);
            createChildScene(SCENE_SETTING_SELECT, this, NULL, (void*)mSettingArg);

            System::getFader()->fadeIn();
        }

        void SettingBg::calc() {
            mpLayout->calc();
        }

        void SettingBg::draw() {
            if (System::canDrawScene()) {
                layout::Object::setCamera();
                mpLayout->draw();
            }
        }

        SettingBg::~SettingBg() {}
    }
}
