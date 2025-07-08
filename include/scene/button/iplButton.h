#ifndef IPL_SCENE_BUTTON_H
#define IPL_SCENE_BUTTON_H

#include "iplSceneUIHeader.h"

#include "layout/iplGuiManager.h"

#include "scene/textBalloon/iplBalloon.h"

#include "utility/iplTimer.h"
#include "utility/iplQueue.h"

#define BUTTON_EVENT_HANDLER(x) class x : public ButtonEventHandlerBase

namespace ipl {
    namespace scene {
        typedef struct AnmFrame {
            f32 start, end;
        } AnmFrame;

        typedef struct BtnAnmFrame {
            AnmFrame in, out;
        } BtnAnmFrame;

        /* Arrow Button */

        SCENE_CLASS(Arrow) {
            public:
                virtual void draw();
        };

        /* Opt Out Button */

        class OptOutButton {
            public:
                enum {
                    ANIM_BTN_IN = 0,
                    ANIM_BTN_OUT,
                    ANIM_OPT_OUT_FOCUS_IN,
                    ANIM_OPT_OUT_FOCUS_OUT,
                    ANIM_BTN_SELECT,
                };

                OptOutButton();

                void    create(nand::LayoutFile* layoutFile, EGG::Heap* heap);

                void    calc();
                void    draw();
                void    update();

                void    setText(u32 msgId);
                void    reset_gui();

                void    start_point_event(const char* paneName, controller::Interface* con);
                void    start_left_event(const char* paneName);

                void    setEventHandler(::gui::EventHandler* event);

            protected:
                enum {
                    BTN_OPT_OUT = 0,
                    BTN_MAX,
                };

                layout::Object*     mpLayout;   // 0x00
                gui::PaneManager*   mpGui;      // 0x04

                BOOL                mbHovered;  // 0x08

                friend class Button;
        };

        /* SD Card Menu Button */

        class SDMenuButton {
            public:
                enum {
                    IDANIM_ON_LOOP = 0,
                    IDANIM_BTN_IN,
                    IDANIM_BTN_OUT,
                    IDANIM_BTN_INSERT,
                    IDANIM_BTN_SELECT,
                };

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

                void    animation(int animId);

                void    enableBtn();
                void    disableBtn();

                void    toggle_insert(BOOL bInserted);
                void    show_balloon(int balloonId, const char* targetPaneName);

            protected:
                enum {
                    BTN_SD_CARD = 0,
                    BTN_MAX,
                };

                enum {
                    ANIM_ON_LOOP = 0,
                    ANIM_BTN_IN,
                    ANIM_BTN_OUT,
                    ANIM_BTN_INSERT,
                    ANIM_BTN_SELECT,
                    ANIM_BTN_ROLL_OVER,
                    ANIM_BTN_ROLL_OUT,
                };

                static int  getButtonNo(const char* paneName);

                layout::Object*     mpLayout;               // 0x00
                gui::PaneManager*   mpGui;                  // 0x04

                TextBalloon*        mpBalloons[BTN_MAX];    // 0x08

                BOOL                mbHovered[BTN_MAX];     // 0x0C
                bool                mbEnabled;              // 0x10

                friend class Button;
        };

        /* Main Button Class */

        SCENE_CLASS(Button) {
            public:
                enum {
                    IDANIM_FROM_CH_SEL_TO_BOARD = 0,
                    IDANIM_FROM_CH_SEL_TO_SETTING, /*??? (unused)*/
                    IDANIM_FROM_SETTING_TO_CH_SEL, /*??? (unused)*/
                    IDANIM_FROM_BOARD_TO_CH_SEL,
                    IDANIM_FROM_BOARD_TO_CALENDAR,
                    IDANIM_BACK_TO_BOARD,
                    IDANIM_BACK_TO_BOARD_ALT,      /*??? (maybe unused)*/
                    IDANIM_UNKNOWN_7,              // unused
                    IDANIM_SELECT_LEFT_BUTTON,
                    IDANIM_DISAPPEAR_BOARD_BUTTON,
                    IDANIM_APPEAR_BOARD_BUTTON,
                    IDANIM_APPEAR_LEFT_BUTTON,
                    IDANIM_DISAPPEAR_LEFT_BUTTON,
                    IDANIM_APPEAR_LEFT_AND_TRASH_BUTTON,
                    IDANIM_DISAPPEAR_LEFT_AND_TRASH_BUTTON,
                    IDANIM_APPEAR_LEFT_AND_RIGHT_BUTTON,
                    IDANIM_DISAPPEAR_LEFT_AND_RIGHT_BUTTON,
                    IDANIM_APPEAR_ALL_BUTTONS,
                    IDANIM_DISPPEAR_ALL_BUTTONS,
                    IDANIM_ARROW_RIGHT_SELECT,
                    IDANIM_ARROW_LEFT_SELECT,
                    IDANIM_ARROW_RIGHT_SELECT_ALT, // unused
                    IDANIM_ARROW_LEFT_SELECT_ALT,  // unused
                    IDANIM_ARROW_RIGHT_APPEAR,
                    IDANIM_ARROW_LEFT_APPEAR,
                    IDANIM_ARROW_RIGHT_DISAPPEAR,
                    IDANIM_ARROW_LEFT_DISAPPEAR,
                    IDANIM_SELECT_CALENDAR_EXIT,
                    IDANIM_SELECT_TRASH_BUTTON,
                    IDANIM_SELECT_CREATE_R,
                    IDANIM_RIGHT_ARROW_SHOW_LETTER,
                    IDANIM_RIGHT_ARROW_HIDE_LETTER,
                    IDANIM_LEFT_ARROW_SHOW_LETTER,
                    IDANIM_LEFT_ARROW_HIDE_LETTER,
                    IDANIM_OPTOUT_IN,
                    IDANIM_OPTOUT_OUT,
                    IDANIM_OPTOUT_IN_ALT,
                    IDANIM_OPTOUT_OUT_ALT,
                    IDANIM_OPTOUT_SELECT,
                    IDANIM_SD_BUTTON_LOOP,
                    IDANIM_SD_BUTTON_BTN_IN,
                    IDANIM_SD_BUTTON_BTN_OUT,
                    IDANIM_SD_BUTTON_INSERT,
                    IDANIM_SD_BUTTON_SELECT,
                    IDANIM_MAX,
                };
            
                enum {
                    BTN_BBS_BOARD = 0,
                    BTN_CH_SEL,
                    BTN_SETTING,
                    BTN_CALENDAR,
                    BTN_CREATE,
                    BTN_CALENDAR_EXIT,
                    BTN_CREATE_EXIT,
                    BTN_CREATE_R_BUTTON,
                    BTN_TRASH_DELETE,
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
                    BALLOON_BBS_BOARD = 0,
                    BALLOON_CH_SEL,
                    BALLOON_SETTING,
                    BALLOON_CALENDAR,
                    BALLOON_CREATE,
                    BALLOON_MAX
                };

                enum {
                    TEXT_CALENDAR_EXIT = 0,
                    TEXT_CALENDAR_ADD,
                    TEXT_MAX
                };

                Button(EGG::Heap* heap);
                virtual ~Button();

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

                bool            playingSdAnim(int animNo);

                void            initArrowAppearance(int arrowType, bool bAppear);

                void            show_balloon(int balloonId, const char* targetPaneName);

                void            startMailNumAnm();
                void            stopMailNumAnm();

                void            startNewMailAnm();
                void            startNewMailAnm_();
                void            stopNewMailAnm();

                void            initBtn(int btnNo);

                void            enableBtn();
                void            disableBtn();
                
                void            reserveAnm(int animId);
                void            reserveText(int animId, u32 msgId);

                static int      getButtonNo(const char* paneName);

            protected:
                typedef struct Command {
                    enum {
                        TYPE_ANIM = 0,
                        TYPE_TEXT
                    };
                    int type;   // 0x00

                    /* First argument (SIGNED) */
                    union {
                        s32 firstArg;
                        s32 animId;
                        s32 paneId;
                    };          // 0x04

                    /* Second argument (UNSIGNED)*/
                    union {
                        u32 secondArg;
                        u32 msgId;
                    };          // 0x08
                } Command;

                EGG::Heap*                  get_heap()          { return mpHeap; }

                SDMenuButton*               get_sd_menu_btn()   { return &mSdMenuBtn; } 
                OptOutButton*               get_opt_out_btn()   { return &mOptOutBtn; } 
                layout::Object*             get_layout()        { return mpLayout; } 

            private:
                enum {
                    ANIM_SCENE_CHANGE = 0,
                    ANIM_ARROW_R_AC,
                    ANIM_ARROW_L_AC,
                    ANIM_ARROW_R_HD_AC,
                    ANIM_ARROW_L_HD_AC,
                    ANIM_ARROW_R_END,
                    ANIM_ARROW_L_END,
                    ANIM_CALENDAR_EXIT,
                    ANIM_TRASH_DELETE,
                    ANIM_COMMON_BUTTON,
                    ANIM_ARROW_LETTER_R,
                    ANIM_ARROW_LETTER_L,
                    ANIM_BOARD_BBS_NUM_LOOP,
                    ANIM_BOARD_BBS_NEW,
                    ANIM_MAX,
                };

                int                         unk_0x54;

                layout::Object*             mpLayout;                       // 0x58
                nand::LayoutFile*           mpLayoutFile;                   // 0x5C
                gui::PaneManager*           mpGui;                          // 0x60

                OptOutButton                mOptOutBtn;                     // 0x64
                SDMenuButton                mSdMenuBtn;                     // 0x70

                TextBalloon*                mpBalloons[BALLOON_MAX];        // 0x84
                
                nand::LayoutFile*           mpBalloonFile;                  // 0x98

                layout::GroupAnimator*      mpButtonAnim[ANIM_MAX];         // 0x9C

                bool                        mbArrowVisible[ARROW_BTN_MAX];  // 0xD4

                BOOL                        mbHovered[BTN_MAX];             // 0xD8

                bool                        unk_0x104;
                bool                        unk_0x105;

                utility::timer              mTimer;                         // 0x108
                bool                        mbEnabled;                      // 0x110

                utility::Queue<Command, 8>  mButtonCmd;                     // 0x114

                int                         unused_0x184;

                static const char*  mscButtonTextName[2];
                static const char*  mscButtonName[BTN_MAX];
                static const char*  mscGroupName[BTN_MAX];

                static const char*  mscArrowBtnName[ARROW_BTN_MAX];

                friend class Arrow;

                friend class SDMenuEventHandlerBase;
                friend class ButtonEventHandlerBase;
                friend class OptOutButtonEventHandlerBase;
        };

        /* Button event handlers */

        class ButtonEventHandlerBase : public ::gui::EventHandler {
            public:
                virtual void    onEvent(u32 compId, u32 event, void* data);
                virtual void    onEventDerived(u32 compId, u32 event, const controller::Interface* con);
        };

        BUTTON_EVENT_HANDLER(OptOutButtonEventHandlerBase) {
            public:
                virtual void    onEvent(u32 compId, u32 event, void* data);
                virtual void    onEventDerived(u32 compId, u32 event, const controller::Interface* con);
        };

        BUTTON_EVENT_HANDLER(SDMenuEventHandlerBase) {
            public:
                virtual void    onEvent(u32 compId, u32 event, void* data);
                virtual void    onEventDerived(u32 compId, u32 event, const controller::Interface* con);
        };
    }
}

#endif // IPL_SCENE_BUTTON_H
