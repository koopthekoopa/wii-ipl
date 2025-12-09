#ifndef IPL_SCENE_SD_BUTTON_H
#define IPL_SCENE_SD_BUTTON_H

#include "iplSceneUIHeader.h"

#include "layout/iplGuiManager.h"

#include "scene/textBalloon/iplBalloon.h"

#define SD_BUTTON_EVENT_HANDLER(x) class x : public ButtonEventHandlerBase

namespace ipl {
    namespace scene {
        class SDButtonEventHandlerBase : public ::gui::EventHandler {
            public:
                virtual void    onEvent(u32 compId, u32 event, void* data);
                virtual void    onEventDerived(u32 compId, u32 event, const controller::Interface* con);
        };

        /* Arrow Button */

        SCENE_CLASS(SDArrow) {
            public:
                SDArrow(EGG::Heap* heap) : Base(heap) {}
                virtual void draw();
        };

        /* Main Button */

        SCENE_CLASS(SDButton) {
            public:
                enum {
                    IDANIM_UNUSED_0 = 0,
                    IDANIM_UNUSED_1,
                    IDANIM_UNUSED_2,
                    IDANIM_UNUSED_3,
                    IDANIM_HELP_BTN_CLICK,
                    IDANIM_UNUSED_5,
                    IDANIM_UNUSED_6,
                    IDANIM_ARROW_LEFT_CLICK,
                    IDANIM_ARROW_RIGHT_CLICK,
                    IDANIM_UNUSED_9,
                    IDANIM_UNUSED_10,
                    IDANIM_UNUSED_11,
                    IDANIM_UNUSED_12,
                    IDANIM_ARROW_LEFT_APPEAR,
                    IDANIM_ARROW_RIGHT_APPEAR,
                    IDANIM_ARROW_LEFT_DISAPPEAR,
                    IDANIM_ARROW_RIGHT_DISAPPEAR,
                    IDANIM_MAX,
                };

                enum {
                    BTN_WII_MENU = 0,
                    BTN_HELP,
                    BTN_ARROW_RIGHT,
                    BTN_ARROW_LEFT,
                    BTN_MAX
                };

                enum {
                    ARROW_BTN_RIGHT = 0,
                    ARROW_BTN_LEFT,
                    ARROW_BTN_MAX
                };

                enum {
                    BALLOON_WII_MENU = 0,
                    BALLOON_HELP,
                    BALLOON_MAX
                };

                SDButton(EGG::Heap* heap);
                virtual ~SDButton();

                virtual void    prepare();
                virtual void    create();

                virtual void    calc();

                virtual void    draw();

                void            drawBalloon();

                void            update();

                void            reset_gui();

                void            startPointEvent(const char* paneName, controller::Interface* con);
                void            startLeftEvent(const char* paneName);

                bool            isActive() const;

                void            setEventHandler(::gui::EventHandler* event, ::gui::EventHandler* optOutEvent);

                void            setText(const char* paneName, u32 msgId);
                void            setText(const char* paneName, const wchar_t* text);

                void            animation(int animNo);

                void            initArrowAppearance(int arrowType, bool bAppear);

                void            show_balloon(int balloonId, const char* targetPaneName);

                void            enableBtn();
                void            disableBtn();

                static int      getButtonNo(const char* paneName);

            protected:
                layout::Object* get_layout()    { return mpLayout; } 

            private:
                enum {
                    ANIM_WIIMENU_BTN_ROLL_OVER = 0,
                    ANIM_WIIMENU_BTN_ROLL_ON,
                    ANIM_WIIMENU_BTN_ROLL_OUT,
                    ANIM_HELP_BTN_ROLL_OVER,
                    ANIM_HELP_BTN_ROLL_ON,
                    ANIM_HELP_BTN_ROLL_OUT,
                    ANIM_ARROW_WAITING_LOOP,
                    ANIM_ARROW_LEFT_ON,
                    ANIM_ARROW_RIGHT_ON,
                    ANIM_ARROW_LEFT_ROLL_OVER,
                    ANIM_ARROW_RIGHT_ROLL_OVER,
                    ANIM_ARROW_LEFT_ROLL_OUT,
                    ANIM_ARROW_RIGHT_ROLL_OUT,
                    ANIM_ARROW_LEFT_IN,
                    ANIM_ARROW_RIGHT_IN,
                    ANIM_ARROW_LEFT_OUT,
                    ANIM_ARROW_RIGHT_OUT,
                    ANIM_MAX,
                };

                int                         unk_0x54;

                layout::Object*             mpLayout;                       // 0x58
                nand::LayoutFile*           mpLayoutFile;                   // 0x5C
                gui::PaneManager*           mpGui;                          // 0x60

                TextBalloon*                mpBalloons[2];                  // 0x64
                
                nand::LayoutFile*           mpBalloonFile;                  // 0x6C

                BOOL                        mbHovered[BTN_MAX];             // 0x70

                bool                        mbArrowVisible[ARROW_BTN_MAX];  // 0x80

                bool                        mbEnabled;                      // 0x82

                static const char*  mscButtonName[BTN_MAX];
                static const char*  mscArrowName[ARROW_BTN_MAX];

                friend class SDArrow;
                friend class SDButtonEventHandlerBase;
        };
    }
}

#endif // IPL_SCENE_SD_BUTTON_H
