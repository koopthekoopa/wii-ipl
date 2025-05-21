#include "layout/iplGuiManager.h"

#include "iplMath.h"

#include "system/iplController.h"
#include "iplSystem.h"

namespace ipl {
    namespace gui {
        void PaneManager::update() {
            mbDoneUpdateWithCon = false;
            for (int i = 0; i < WPAD_MAX_CONTROLLERS; i++) {
                update(i);
            }
        }

        void PaneManager::update(int chan) {
            controller::Interface* con = System::getController(chan);

            if (System::getFader()->getStatus() == EGG::Fader::STATUS_PREPARE_OUT) {
                if (con && (!mbDisableCon || !mbDoneUpdateWithCon)) {
                    // Get Projection Area
                    nw4r::ut::Rect  projRect(0.0f, 0.0f, 0.0f, 0.0f);
                    System::getProjectionRect(&projRect);

                    // Get Cursor Position
                    ipl::math::VEC2 conProjPos = con->getDpdProjectionPos();
                    if ((projRect.left > conProjPos.x || conProjPos.x > projRect.right)
                    || (projRect.top > conProjPos.y && conProjPos.y > projRect.bottom)) {
                        conProjPos.y = IPL_MATH_NULL_FLOAT;
                        conProjPos.x = IPL_MATH_NULL_FLOAT;
                    }

                    // Update the base manager with controller input
                    ::gui::Manager::update(chan,
                                        conProjPos.x, -conProjPos.y, 
                                        con->getTrigFlag() | con->getClassicTrigFlag(),
                                        con->getHoldFlag() | con->getClassicHoldFlag(),
                                        con->getReleaseFlag() | con->getClassicReleaseFlag(),
                                        con);
                    
                    mbDoneUpdateWithCon = true;
                }
                else {
                    // Update the base manager without controller input
                    ::gui::Manager::update(chan,
                                        IPL_MATH_NULL_FLOAT, IPL_MATH_NULL_FLOAT,
                                        0,
                                        0,
                                        0,
                                        NULL);
                }
            }
        }

        void PaneManager::setTriggerTarget(nw4r::lyt::Pane* pane, bool bEnable) {
            ::gui::PaneComponent* component = getPaneComponentByPane(pane);
            component->setTriggerTarget(bEnable);
        }

        void PaneManager::initPane(nw4r::lyt::Pane* pane) {
            ::gui::PaneComponent* component = getPaneComponentByPane(pane);
            if (component) {
                component->init();
            }
        }
    }
}
