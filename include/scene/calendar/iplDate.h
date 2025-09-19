#ifndef IPL_SCENE_DATE_H
#define IPL_SCENE_DATE_H

#include "iplSceneUIHeader.h"

#include "utility/iplCalendar.h"

namespace ipl {
    namespace scene {
        class Date : ::gui::EventHandler {
            public:
                typedef struct AnmFrame {
                    int paneAnim;
                    f32 start, end;
                } AnmFrame;

                enum {
                    ANIM_PANE_BTN_HOVER = 0,
                    ANIM_PANE_BTN,
                    ANIM_PANE_BTN_TEXT,
                    ANIM_PANE_BODY,
                    ANIM_PANE_MSG,
                    ANIM_PANE_MAX
                };

                enum {
                    IDANIM_FOCUS_IN,
                    IDANIM_FOCUS_OUT,
                    IDANIM_SELECT,
                    IDANIM_LOOP,
                    IDANIM_BLUE_TEXT,
                    IDANIM_RED_TEXT,
                    IDANIM_RESET_GREY_TEXT,
                    IDANIM_RESET_GREY_BUTTON,
                    IDANIM_GREY_TEXT,
                    IDANIM_GREY_BUTTON,
                    IDANIM_APPEAR_MSG,
                    IDANIM_NO_MSG,
                    IDANIM_MAX,
                };

                Date(EGG::Heap* heap, nand::LayoutFile* file, const char* layoutFolder, const char* layoutFileName);

                void                    calc();
                void                    draw(bool unk);

                layout::PaneAnimator*   doAnim(int animId);

                void                    setRotate(const nw4r::math::VEC3& vec);
                void                    setTranslate(const nw4r::math::VEC3& vec);
                void                    setVisible(bool visible);
                bool                    getVisible();

                void                    setAttribute(int attr);

                void                    setDate(const utility::Date& date);

                void                    update();

                void                    initEvent();
                void                    onEvent(u32 compId, u32 event, void* data);
                void                    onCmdRecv(int cmd) NO_INLINE;

                static bool             isValidDate(const utility::Date& date);

                utility::Date*          getDate()   { return mpDate; }

            private:
                void                    start_point_event(const char* paneName, controller::Interface* con);
                void                    start_left_event(const char* paneName);

                void                    set_textbox(int day);

            public:
                vBOOL                   mbAppearMsg;                // 0x0C

            private:
                u32                     unk_0x10;
                int                     unk_0x14;
                layout::Object*         mpLayout;                   // 0x18
                gui::PaneManager*       mpGui;                      // 0x1C
                layout::PaneAnimator*   mpCurrentPaneAnim;          // 0x20
                layout::PaneAnimator*   mpPaneAnims[ANIM_PANE_MAX]; // 0x24

            public:
                utility::Date*          mpDate;                     // 0x38
                u32                     unk_0x3C;

                static const char*      mscAnimPanes[ANIM_PANE_MAX];

                static utility::Date    mscMinDate;
                static utility::Date    mscMaxDate;

                nw4r::ut::Link          mNode1;                     // 0x40
                nw4r::ut::Link          mNode2;                     // 0x48

                friend class Calendar;
        };
    }
}

#endif // IPL_SCENE_DATE_H
