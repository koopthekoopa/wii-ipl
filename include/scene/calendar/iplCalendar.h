#ifndef IPL_SCENE_CALENDAR_H
#define IPL_SCENE_CALENDAR_H

#include "iplSceneHeader.h"

#include "scene/button/iplButton.h"
#include "scene/calendar/iplDate.h"

namespace ipl {
    namespace scene {
        FADER_SCENE_CLASS(Calendar), public ButtonEventHandlerBase {
            public:
                enum {
                    IDANIM_0 = 0,
                    IDANIM_1,
                    IDANIM_2,
                    IDANIM_3,
                    IDANIM_4,
                    IDANIM_MAX,
                };

                typedef struct AnmFrame {
                    f32 start, end;
                } AnmFrame;

                typedef struct DayToMsgId {
                    const char* paneName;
                    u32         msgId;
                } DayToMsgId;

                Calendar(EGG::Heap* heap);

                void                prepare();
                void                create();

                void                calcCommon();
                FaderSceneCommand   calcFadein();
                FaderSceneCommand   calcNormal();
                void                initCalcFadeout();
                FaderSceneCommand   calcFadeout();

                void                draw();
                void                doAnim(int animId);

                void                onEventDerived(u32 compId, u32 event, const controller::Interface* con);

                void                onPointDate(Date* date);
                void                onTrigDate(Date* date);

            private:
                enum {
                    STATE_NORMAL = 0,
                    STATE_SCROLL_RIGHT,
                    STATE_SCROLL_LEFT,
                    STATE_WAIT_TASK,
                    STATE_WAIT_EXIT,
                    STATE_DONE,
                };

                void    on_normal();
                void    on_scroll();
                void    on_wait_task();
                void    on_wait_exit();

                void    start_scroll_r();
                void    do_scroll_r();

                void    start_scroll_l();
                void    do_scroll_l();

                void    start_exit();
                void    do_exit();

                void    set_textbox(const char* paneName, u32 msgId);
                void    set_textbox_day();
                void    set_textbox_month();
                void    set_textbox_month(const char* paneName, const utility::Date& date);
                void    set_textbox_date(int unk, const utility::Date& date);

                void    set_date_pos(int unk);

                void    exec_search_task();

                BOOL    is_upper_limit();
                BOOL    is_lower_limit();

                int                     mState;             // 0x64
                int                     mPrevState;         // 0x68
                layout::Object*         mpLayout;           // 0x6C
                nand::LayoutFile*       mpLayoutFile;       // 0x70
                layout::GroupAnimator*  mpGroupAnim;        // 0x74
                layout::GroupAnimator*  mpInitAnim;         // 0x78
                utility::Date*          mpBoardDate;        // 0x7C
                Date*                   mpSelectDate;       // 0x80

            public:
                nw4r::ut::List          mDateList;          // 0x84
                nw4r::ut::List          unk_0x90;
                bool                    mbScrolling;        // 0x9C
                vBOOL                   unk_0xA0;
                BOOL                    mbTaskCanceled;     // 0xA4
                vBOOL                   mbBackToBoardAlt;   // 0xA8
                bool                    mbAsian;            // 0xAC
                bool                    mbUSA;              // 0xAD

                static utility::Date    mscMinDate;
                static utility::Date    mscMaxDate;
        };
    }
}

#endif // IPL_SCENE_CALENDAR_H
