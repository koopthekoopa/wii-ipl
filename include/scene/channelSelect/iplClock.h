#ifndef IPL_SCENE_CLOCK_H
#define IPL_SCENE_CLOCK_H

#include "iplLayoutUI.h"
#include "iplUtility.h"

#include <revolution/os/OSTime.h>

#include <egg/core.h>

namespace ipl {
    namespace scene {
        class clock {
            public:
                clock();
                ~clock() {}

                void    init(EGG::Heap* heap, nand::LayoutFile* layoutFile);
                void    calc();
                void    draw(nw4r::lyt::Pane* pane);

            private:
                typedef struct time_tex {
                    s32     hourDigit2;     // 0x00
                    s32     hourDigit1;     // 0x04
                    s32     minuteDigit2;   // 0x08
                    s32     minuteDigit1;   // 0x0C
                    bool    isPM;           // 0x10
                } time_tex;

                void        stt_fadein();
                void        stt_normal();
                void        stt_wait_anm();
                void        stt_disappear();

                void        change_tex();

                time_tex    calc_tex() const;

                void        appear();

                BOOL        is_same_hms(const OSCalendarTime& time0, const OSCalendarTime& time1) const;

                time_tex        mCurrentTex;    // 0x00
                time_tex        mPreviousTex;   // 0x14

                u32             mState;         // 0x28

                layout::Object* mpLayout;       // 0x2C

                utility::timer  mWiiMenuTimer;  // 0x30

                OSCalendarTime  mTime;       // 0x38

                static bool m_already_shown_wii_menu;

                static const int WII_MENU_APPEAR_FOR = 3000;    /* in ms (3 seconds) */
        };
    }
}

#endif // IPL_SCENE_CLOCK_H
