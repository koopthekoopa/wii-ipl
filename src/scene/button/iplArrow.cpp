#include "scene/button/iplButton.h"

#include "iplSystem.h"

namespace ipl {
    namespace scene {
        void Arrow::draw() {
            Button* button;
            if (System::canDrawScene()
            && (button = static_cast<Button*>(System::getScene(SCENE_BUTTON)), button != NULL)) {
                layout::Object::setDefaultCamera();

                for (int i = 0; i < Button::ARROW_BTN_MAX; i++) {
                    layout::Object* arrowLayout = button->get_layout();
                    nw4r::lyt::Pane* pane = arrowLayout->FindPaneByName(Button::mscArrowBtnName[i]);
                    
                    pane->SetVisible(true);
                    arrowLayout->draw(pane);
                    pane->SetVisible(false);
                }

                button->drawBalloon();
                if (!System::isSafeMode()) {
                    button->get_sd_menu_btn()->drawBalloon();
                }
            }
        }
    }
}
