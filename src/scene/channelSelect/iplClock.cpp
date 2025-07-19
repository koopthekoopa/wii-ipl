#include "scene/channelSelect/iplClock.h"

#include "iplSystem.h"
#include "iplUtility.h"

namespace ipl {
    namespace scene {
        enum {
            STATE_FADE_IN = 0,
            STATE_NORMAL,
            STATE_WAIT_ANIM,
            STATE_DISAPPEAR,
        };

        enum {
            ANIM_WII_MENU_CHANGE = 0,
            ANIM_CLOCK_CHANGE,

            ANIM_CLOCK_COLON_BLINK,

            ANIM_CLOCK_0_APPEAR,
            ANIM_CLOCK_1_APPEAR,
            ANIM_CLOCK_2_APPEAR,
            ANIM_CLOCK_3_APPEAR,
            ANIM_AM_PM_LEFT_APPEAR,
            ANIM_AM_PM_RIGHT_APPEAR,

            ANIM_CLOCK_0_LOST,
            ANIM_CLOCK_1_LOST,
            ANIM_CLOCK_2_LOST,
            ANIM_CLOCK_3_LOST,
            ANIM_AM_PM_LEFT_LOST,
            ANIM_AM_PM_RIGHT_LOST,
        };

        bool clock::m_already_shown_wii_menu = false;

        static const char* s_time_num[] = {
            "Num0",
            "Num1",
            "Num2",
            "Num3",
            "Num4",
            "Num5",
            "Num6",
            "Num7",
            "Num8",
            "Num9",
        };

        clock::clock() :
        mpLayout(NULL) {}

        void clock::init(EGG::Heap* heap, nand::LayoutFile* layoutFile) {
            mpLayout = new(heap, CLASS_HEAP) layout::Object(heap, layoutFile, "arc", "my_Clock_a.brlyt");
        
            mpLayout->bind("my_Clock_a_Change.brlan",   "T_WiiMenu",    false);
            mpLayout->bind("my_Clock_a_Change.brlan",   "N_Clock",      false);
            mpLayout->bind("my_Clock_a_Min.brlan",      "ClockTen",     false);

            mpLayout->bind("my_Clock_a_NumApear.brlan", "Clock0",       false, false);
            mpLayout->bind("my_Clock_a_NumApear.brlan", "Clock1",       false, false);
            mpLayout->bind("my_Clock_a_NumApear.brlan", "Clock2",       false, false);
            mpLayout->bind("my_Clock_a_NumApear.brlan", "Clock3",       false, false);
            mpLayout->bind("my_Clock_a_NumApear.brlan", "AM_PM",        false, false);
            mpLayout->bind("my_Clock_a_NumApear.brlan", "AM_PM_R",      false, false);

            mpLayout->bind("my_Clock_a_NumLost.brlan",  "Clock0",       false);
            mpLayout->bind("my_Clock_a_NumLost.brlan",  "Clock1",       false);
            mpLayout->bind("my_Clock_a_NumLost.brlan",  "Clock2",       false);
            mpLayout->bind("my_Clock_a_NumLost.brlan",  "Clock3",       false);
            mpLayout->bind("my_Clock_a_NumLost.brlan",  "AM_PM",        false);
            mpLayout->bind("my_Clock_a_NumLost.brlan",  "AM_PM_R",      false);
        
            mpLayout->finishBinding();

            s32 region = System::getRegion();
            switch (region) {
                case SC_PRODUCT_AREA_KOR:
                case SC_PRODUCT_AREA_JPN: {
                    mpLayout->FindPaneByName("AM_PM_R")->SetVisible(false);
                    break;
                }
                case SC_PRODUCT_AREA_USA: {
                    mpLayout->FindPaneByName("AM_PM")->SetVisible(false);
                    break;
                }
                default: {
                    mpLayout->FindPaneByName("AM_PM")->SetVisible(false);
                    mpLayout->FindPaneByName("AM_PM_R")->SetVisible(false);
                    break;
                }
            }

            mCurrentTex = mPreviousTex = calc_tex();
            change_tex();

            mTime = System::getCurrentTime();

            utility::layout::set_string(mpLayout->FindPaneByName("T_WiiMenu"), System::getMessage(MESG_CLOCK_WII_MENU));
        
            if (m_already_shown_wii_menu) {
                mpLayout->getAnim(ANIM_WII_MENU_CHANGE)->setAnimType(ANIM_TYPE_BACKWARD);
                mpLayout->getAnim(ANIM_WII_MENU_CHANGE)->init();
                mpLayout->getAnim(ANIM_CLOCK_CHANGE)->setAnimType(ANIM_TYPE_BACKWARD);
                mpLayout->getAnim(ANIM_CLOCK_CHANGE)->init();

                mState = STATE_NORMAL;
            }
            else {
                m_already_shown_wii_menu = true;
                mWiiMenuTimer.set_msec(WII_MENU_APPEAR_FOR);

                mState = STATE_FADE_IN;
            }
        }

        void clock::calc() {
            switch (mState) {
                case STATE_FADE_IN: {
                    stt_fadein();
                    break;
                }
                case STATE_NORMAL: {
                    stt_normal();
                    break;
                }
                case STATE_WAIT_ANIM: {
                    stt_wait_anm();
                    break;
                }
                case STATE_DISAPPEAR: {
                    stt_disappear();
                    break;
                }
            }

            mpLayout->calc();
        }

        void clock::draw(nw4r::lyt::Pane* pane) {
            nw4r::math::MTX34 mtx = pane->GetGlobalMtx();
            nw4r::lyt::Pane* wiiMenuPane = mpLayout->FindPaneByName("N_WiiMenu");

            wiiMenuPane->SetTranslate(nw4r::math::VEC2(mtx.m[0][3], mtx.m[1][3]));
            wiiMenuPane->CalculateMtx(*mpLayout->getDrawInfo());
            
            mpLayout->draw(wiiMenuPane);
        }

        void clock::stt_fadein() {
            OSCalendarTime time = System::getCurrentTime();

            if (mWiiMenuTimer()) {
                if (time.sec % 2) {
                    mpLayout->getAnim(ANIM_WII_MENU_CHANGE)->play();
                    mpLayout->getAnim(ANIM_CLOCK_CHANGE)->play();

                    mState = STATE_NORMAL;
                }
            }
        }

        void clock::stt_normal() {
            OSCalendarTime time = System::getCurrentTime();

            if (!is_same_hms(mTime, time)) {
                mCurrentTex = calc_tex();
                change_tex();

                mState = STATE_WAIT_ANIM;
                mTime = time;
            }

            if (!(time.sec % 2)) {
                mpLayout->getAnim(ANIM_CLOCK_COLON_BLINK)->play();
                mState = STATE_WAIT_ANIM;
            }
        }

        void clock::stt_wait_anm() {
            OSCalendarTime time = System::getCurrentTime();

            if (!mpLayout->isPlaying()) {
                if (time.sec % 2) {
                    mState = STATE_NORMAL;
                }
            }
        }

        void clock::stt_disappear() {
            if (!mpLayout->isPlaying()) {
                change_tex();
                appear();

                mState = STATE_WAIT_ANIM;
                mPreviousTex = mCurrentTex;
            }
        }

        void clock::change_tex() {
            enum {
                CLOCK_TEXTURE_CLOCK_0 = 0,
                CLOCK_TEXTURE_CLOCK_1,
                CLOCK_TEXTURE_CLOCK_2,
                CLOCK_TEXTURE_CLOCK_3,

                CLOCK_TEXTURE_AM_PM_LEFT,
                CLOCK_TEXTURE_AM_PM_RIGHT,

                CLOCK_TEXTURE_MAX,
            };

            const char* clockTexNames[CLOCK_TEXTURE_MAX] = {
                "Clock0",
                "Clock1",
                "Clock2",
                "Clock3",
                "AM_PM",
                "AM_PM_R",
            };

            bool isPM = mCurrentTex.isPM;

            char* newTexNames[CLOCK_TEXTURE_MAX];
            newTexNames[0] = (char*)s_time_num[mCurrentTex.minuteDigit1];
            newTexNames[1] = (char*)s_time_num[mCurrentTex.minuteDigit2];
            newTexNames[2] = (char*)s_time_num[mCurrentTex.hourDigit1];
            newTexNames[3] = (char*)s_time_num[mCurrentTex.hourDigit2];

            newTexNames[4] = isPM ? (char*)"PM" : (char*)"AM";
            newTexNames[5] = isPM ? (char*)"PM" : (char*)"AM";

            for (int i = 0; i < CLOCK_TEXTURE_MAX; i++) {
                nw4r::lyt::Pane* destPane = mpLayout->FindPaneByName(clockTexNames[i]);
                nw4r::lyt::Pane* srcPane = mpLayout->FindPaneByName(newTexNames[i]);

                utility::layout::set_texture(destPane->GetMaterial(), srcPane->GetMaterial());
            }

            mpLayout->FindPaneByName("Clock3")->SetVisible(mCurrentTex.hourDigit2 != 0);
        }

        void clock::appear() {
            if (mCurrentTex.hourDigit2 != mPreviousTex.hourDigit2) {
                mpLayout->getAnim(ANIM_CLOCK_3_APPEAR)->play();
            }
            if (mCurrentTex.hourDigit1 != mPreviousTex.hourDigit1) {
                mpLayout->getAnim(ANIM_CLOCK_2_APPEAR)->play();
            }
            if (mCurrentTex.minuteDigit2 != mPreviousTex.minuteDigit2) {
                mpLayout->getAnim(ANIM_CLOCK_1_APPEAR)->play();
            }
            if (mCurrentTex.minuteDigit1 != mPreviousTex.minuteDigit1) {
                mpLayout->getAnim(ANIM_CLOCK_0_APPEAR)->play();
            }
            if (mCurrentTex.isPM != mPreviousTex.isPM) {
                mpLayout->getAnim(ANIM_AM_PM_LEFT_APPEAR)->play();
                mpLayout->getAnim(ANIM_AM_PM_RIGHT_APPEAR)->play();
            }
        }

        clock::time_tex clock::calc_tex() const {
            time_tex timeTex;
            OSCalendarTime time = System::getCurrentTime();

            timeTex.isPM = (time.hour >= 12);

            if ((u32)System::getRegion() != SC_PRODUCT_AREA_EUR && (u32)System::getRegion() != SC_PRODUCT_AREA_CHN) {
                time.hour %= 12;

                if (((u32)System::getRegion() == SC_PRODUCT_AREA_USA || (u32)System::getRegion() == SC_PRODUCT_AREA_KOR) && time.hour == 0) {
                    time.hour = 12;
                }
            }

            timeTex.hourDigit2 = (time.hour / 10) % 10;
            timeTex.hourDigit1 = time.hour % 10;

            timeTex.minuteDigit2 = (time.min / 10) % 10;
            timeTex.minuteDigit1 = time.min % 10;

            return timeTex;
        }

        BOOL clock::is_same_hms(const OSCalendarTime& time0, const OSCalendarTime& time1) const {
            BOOL ret = FALSE;
            if (time0.hour == time1.hour && time0.min == time1.min && time0.mday == time1.mday) {
                ret = TRUE;
            }
            return ret;
        }
    }
}
