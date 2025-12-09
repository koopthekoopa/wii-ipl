#include "scene/sdButton/iplSDButton.h"

#include "iplSystem.h"

namespace ipl {
    namespace scene {
        void SDArrow::draw() {
            SDButton* button;
            if (System::canDrawScene()
            && (button = static_cast<SDButton*>(System::getScene(SCENE_SD_BUTTON)), button != NULL)) {
                layout::Object::setDefaultCamera();

                for (int i = 0; i < SDButton::ARROW_BTN_MAX; i++) {
                    layout::Object* arrowLayout = button->get_layout();
                    nw4r::lyt::Pane* pane = arrowLayout->FindPaneByName(SDButton::mscArrowName[i]);
                    
                    pane->SetVisible(true);
                    arrowLayout->draw(pane);
                    pane->SetVisible(false);
                }

                button->drawBalloon();
            }
        }
    }
}
