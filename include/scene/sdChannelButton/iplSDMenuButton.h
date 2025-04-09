#ifndef IPL_SD_MENU_BUTTON_H
#define IPL_SD_MENU_BUTTON_H

#include "scene/button/iplButton.h"

SCENE_USING_GUI

namespace ipl {
    namespace scene {
        BUTTON_EVENT_HANDLER(SDMenuSelEventHandler) {
            public:
                virtual void    onEvent(u32 compId, u32 event, void* data);
                virtual void    onEventDerived(u32 compId, u32 event, const controller::Interface* con);
        };

        class SDMenuButton {
            public:
                SDMenuButton();
                ~SDMenuButton();

                void    create(nand::LayoutFile* layoutFile, nand::LayoutFile* balloonFile, EGG::Heap* heap);

                void    calc();

                void    draw();
                void    drawBalloon();

                void    update();

                void    initGui();

                void    startPointEvent(const char* paneName, controller::Interface* con);
                void    startLeftEvent(const char* paneName);
                void    setEventHandler(::gui::EventHandler* event);

                void    fn_813EB040(int unk);

                void    enableBtn();
                void    disableBtn();

                void    toggle_insert(BOOL bInserted);
                void    fn_813EB464(int unk0, const char* unk1);
            private:
                enum {
                    BTN_SD_CARD = 0,
                    BTN_MAX,
                };

                static int  get_button_no(const char* paneName);

                layout::Object*     mpLayout;           // 0x00
                gui::PaneManager*   mpGui;              // 0x04

                TextBalloon*        mpBalloon;          // 0x08

                BOOL                mbHovered[BTN_MAX]; // 0x0C
                bool                mbEnabled;          // 0x10
        };
    }
}

#endif // IPL_SD_MENU_BUTTON_H
