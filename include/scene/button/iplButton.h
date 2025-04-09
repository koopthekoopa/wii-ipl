#ifndef IPL_SCENE_BUTTON_H
#define IPL_SCENE_BUTTON_H

#include "scene/iplSceneBase.h"
#include "scene/textBalloon/iplBalloon.h"

SCENE_USING_GUI

#define BUTTON_EVENT_HANDLER(x) class x : public ButtonEventHandlerBase

namespace ipl {
    namespace scene {
        class SDMenuButton;
        class ButtonEventHandlerBase : public ::gui::EventHandler {
            public:
                virtual void    onEventDerived(u32 compId, u32 event, const controller::Interface* con);
        };

        SCENE_CLASS(Button) {
            public:
                SDMenuButton* getSdMenuButton() { return sdMenuBtn; }
            
            private:
                u8 dummy[0x1C];
                SDMenuButton* sdMenuBtn;    // 0x70
        };
    }
}

#include "scene/sdChannelButton/iplSDMenuButton.h"

#endif // IPL_SCENE_BUTTON_H
