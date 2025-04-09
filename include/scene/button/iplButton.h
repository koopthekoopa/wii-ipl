#ifndef IPL_SCENE_BUTTON_H
#define IPL_SCENE_BUTTON_H

#include "scene/iplSceneBase.h"
#include "scene/textBalloon/iplBalloon.h"

#define BUTTON_EVENT_HANDLER(x) class x : public ButtonEventHandlerBase

SCENE_USING_GUI

namespace ipl {
    namespace scene {
        class ButtonEventHandlerBase : public ::gui::EventHandler {
            public:
                virtual void    onEventDerived(u32 compId, u32 event, const controller::Interface* con);
        };

        /* Arrow Button */

        SCENE_CLASS(Arrow) {
            public:
                virtual ~Arrow();
                virtual void draw();
        };

        /* SD Card Menu Button */

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

        /* Main Button Class */

        SCENE_CLASS(Button) {
            public:
                SDMenuButton* getSdMenuButton() { return &sdMenuBtn; }

                void    drawBalloon();
            
            private:
                undefined4      unk_0x54;
                layout::Object* mpArrowLayout;
                u8 dummy[0x14];
                SDMenuButton    sdMenuBtn;    // 0x70
            
            protected:
                enum {
                    ARROW_BTN_RIGHT = 0,
                    ARROW_BTN_LEFT,
                    ARROW_BTN_MAX
                };

                static const char* mscArrowBtnName[2];

                layout::Object* get_arrow_layout() { return mpArrowLayout; }

                friend class Arrow;
        };
    }
}

#endif // IPL_SCENE_BUTTON_H
