#include "scene/button/iplButton.h"

namespace ipl {
    namespace scene {
        void Arrow::draw() {
            Button* button;
            if (System::getSceneManager()->canDrawScene()
            && (button = static_cast<Button*>(System::getSceneManager()->getScene(SCENE_BUTTON)), button != NULL)) {
                layout::Object::setCamera();

                for (int i = 0; i < Button::ARROW_BTN_MAX; i++) {
                    layout::Object* arrowLayout = button->get_arrow_layout();
                    nw4r::lyt::Pane* pane = arrowLayout->FindPaneByName(Button::mscArrowBtnName[i]);
                    
                    pane->SetVisible(true);
                    arrowLayout->draw(pane);
                    pane->SetVisible(false);
                }

                button->drawBalloon();
                if (!System::isSafeMode()) {
                    SDMenuButton* sdMenuButton = button->getSdMenuButton();
                    sdMenuButton->drawBalloon();
                }
            }
        }

        void Base::calc() {}
        void Base::create() {}

        Arrow::~Arrow() {}
    }
}
