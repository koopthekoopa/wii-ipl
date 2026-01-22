#ifndef IPL_SCENE_FOCUS_OBJECT_H
#define IPL_SCENE_FOCUS_OBJECT_H

#include <revolution/nwc24.h>

#include "scene/board/iplBoardObject.h"
#include "scene/board/iplUrlProcessor.h"

#include "scene/button/iplButton.h"

#include "utility/iplScroller.h"

namespace ipl {
    namespace scene {
        class focus_object;

        class event : public ::gui::EventHandler {
            public:
                event(focus_object* instance) :
                ::gui::EventHandler(),
                mpInstance(instance) {}

                virtual void    onEvent(u32 compId, u32 event, void* data);

            private:
                focus_object*   mpInstance; // 0x0C
        };

        class button_event : public ButtonEventHandlerBase {
            public:
                button_event(focus_object* instance) :
                ButtonEventHandlerBase(),
                mpInstance(instance) {}

                virtual void    onEventDerived(u32 compId, u32 event, const controller::Interface* con);

            private:
                focus_object*   mpInstance; // 0x0C
        };

        class optout_button_event : public OptOutButtonEventHandlerBase {
            public:
                optout_button_event(focus_object* instance) :
                OptOutButtonEventHandlerBase(),
                mpInstance(instance) {}

                virtual void    onEventDerived(u32 compId, u32 event, const controller::Interface* con);

            private:
                focus_object*   mpInstance; // 0x0C
        };

        class scroller {
            public:
                scroller() :
                mScroller(),
                mBScroller() {}

                void init() {
                    mScroller.init();
                    mBScroller.init();
                }

                BOOL calc(bool canScroll) __attribute__((never_inline)) /*for now*/ {
                    BOOL result = FALSE;

                    if (canScroll) {
                        if (mBScroller.calc()) {
                            result = TRUE;
                        }
                    }

                    mScroller.calc();

                    f32 movable = mScroller.movable_pos(mBScroller.getSpeed());

                    mScroller.addScroll(movable);
                    mBScroller.addSoundFreq(movable);

                    return result;
                }

                BOOL is_busy() const {
                    BOOL result = TRUE;
                    if (mScroller.isActive()) {
                        if (mBScroller.isActive() ? false : true) {
                            // Scroller is busy.
                            result = FALSE;
                        }
                    }
                    // Scroller is not busy.
                    return result;
                }

                const utility::BScroller&   getBInst()  { return mBScroller; }

                bool isDownEnd() const                  { return mScroller.isDownEnd(); }
                bool isUpEnd() const                    { return mScroller.isUpEnd(); }

                /* utility::Scroller wrappers */

                void            scrollUpByCon()         { mScroller.scrollUpByCon(); }
                void            scrollDownByCon()       { mScroller.scrollDownByCon(); }
                void            scrollUpByBtn()         { mScroller.scrollUpByBtn(); }
                void            scrollDownByBtn()       { mScroller.scrollDownByBtn(); }

                void            setDownLimit(f32 v)     { mScroller.setDownLimit(v); }
                void            setUpLimit(f32 v)       { mScroller.setUpLimit(v); }

                bool            isActive() const        { return mScroller.isActive(); }

                f32             get()                   { return mScroller.get(); }

            private:
                utility::Scroller   mScroller; // 0x50
                utility::BScroller  mBScroller; // 0x50
        };

        class focus_object {
            public:
                typedef enum {
                    RESULT_NONE = 0,
                    RESULT_CLOSE,
                    RESULT_CLOSE_DEL,
                    RESULT_CLOSE_AFTER,
                    RESULT_CLOSE_AFTER_DEL,
                    RESULT_CHJUMP,
                    RESULT_REPLY,
                    RESULT_SEND_PICTURE,
                    RESULT_INTERNET_SETTING,
                    RESULT_INTERNET_PAGE,
                    RESULT_SW_UPDATE,
                    RESULT_PARENTAL_REQ,
                } result;

                focus_object(nand::LayoutFile*, nand::LayoutFile*, BoardObject*);
                ~focus_object();

                result          calc();
                void            draw();

                void            show_uarw();
                void            show_darw();
                void            hide_uarw();
                void            hide_darw();

                void            show_or_hide_arw(bool showUArw, bool showDArw, bool hideUArw, bool hideDArw);

                void            scale_up_uarw();
                void            scale_up_darw();
                void            scale_down_uarw();
                void            scale_down_darw();

                void            scale_up_or_down_arw();

                void            show_cmn_btn();
                void            hide_cmn_btn();

            private:
                void            cmn_calc();

                void            stt_normal();
                void            stt_fadeout();
                void            stt_wait_btn();
                void            stt_wait_msg();
                void            stt_del_wait_msg();
                void            stt_del_wait_delete();
                void            stt_pic_fadein();
                void            stt_pic_normal();
                void            stt_pic_fadeout();
                void            stt_ltr_wait_net();
                void            stt_ltr_wait_ltr_scene();
                void            stt_chn_wait_url_jump_msg();
                void            stt_chn_wait_jump();
                void            stt_opt_wait_select_msg();
                void            stt_opt_wait_stop_msg();
                void            stt_opt_wait_all_stop_msg();
                void            stt_opt_delete_task();
                void            stt_opt_delete_all_task();
                void            stt_opt_wait_confirm_msg();
                void            stt_net_wait_net_setting_msg();
                void            stt_net_wait_nwc_setting_msg();
                void            stt_net_wait_parental_scene();
                void            stt_net_wait_parental_scene_dst();

                void            proc_input();
                void            proc_url_jump();

                BOOL            is_finished_fadein() const;
                BOOL            is_finished_fadeout() const;

                void            init_normal();
                void            init_fadeout(bool keepBtn);

                void            make_layout(nand::LayoutFile* layoutFile);
                void            make_gui_mgr();
                void            make_parsed_text(const wchar_t* inText);

                BOOL            is_url_end_code(wchar_t ch) const;
                BOOL            is_url_protocol(const wchar_t* url) const;
                int             get_url_end(const wchar_t* url) const;

                BOOL            is_buffer_over(const wchar_t* text, u32 textLen) const;

                void            check_paren(wchar_t ch);

                void            make_lettertex(RBRAttachment* attach);
                void            init_chanjump(RBRAttachment* attach);

                BOOL            setup_chanjump();
                void            change_ltrtex();

                void            make_picture(RBRAttachment* attach);
                void            init_sound(RBRAttachment* attach);

                void            resize_pane(nw4r::lyt::Pane* pane);

                void            init(nand::LayoutFile* layoutFile);

                void            init_balloon(nand::LayoutFile* layoutFile);
                math::VEC3      calc_balloon_pos() const;

                void            init_scroller();
                void            init_url_proc();

                void            start_point_event(int btnNo, controller::Interface* con);
                void            start_left_event(int btnNo);
                void            start_trig_event(int btnNo);

                int             get_button_no(const char* paneName) const;

                void            reset_gui(int btnNo, int anim);

                int             check_network();
                void            check_network_for_news();

                void            set_err_msg(wchar_t* outErrMsg, u32 outErrMsgLen, u32 errMsgId, s32 nwc24Err);
                BOOL            is_parental_restriction() const;

                void            check_delete_task_failure();

                static Button*  get_button();

                enum {
                    STATE_NONE = -1,
                    STATE_INIT_NORMAL,
                    STATE_NORMAL,
                    STATE_FADE_OUT,
                    STATE_WAIT_BTN,
                    STATE_WAIT_MSG,
                    STATE_DEL_WAIT_MSG,
                    STATE_DEL_WAIT_DELETE,
                    STATE_PIC_FADE_IN,
                    STATE_PIC_NORMAL,
                    STATE_PIC_FADE_OUT,
                    STATE_LETTER_WAIT_NET,
                    STATE_LETTER_WAIT_SCENE,
                    STATE_CHN_WAIT_MSG,
                    STATE_CHN_WAIT_JUMP,
                    STATE_OPT_WAIT_SELECT_MSG,
                    STATE_OPT_WAIT_STOP_MSG,
                    STATE_OPT_WAIT_ALL_STOP_MSG,
                    STATE_OPT_DELETE_TASK,
                    STATE_OPT_DELETE_ALL_TASK,
                    STATE_OPT_WAIT_CONFIRM_MSG,
                    STATE_NET_WAIT_NET_MSG,
                    STATE_NET_WAIT_NWC_MSG,
                    STATE_NET_WAIT_PARENTAL,
                    STATE_NET_WAIT_PARENTAL_DST,
                    STATE_DONE,
                };

                enum {
                    ANIM_SELECT = 0,
                    ANIM_EXIT,

                    ANIM_ARROW_LOOP,
                    ANIM_ARROW_FOCUS_ON,
                    ANIM_ARROW_FOCUS_OFF,
                    ANIM_ARROW_SELECT,
                    ANIM_ARROW_APPEAR,
                    ANIM_ARROW_LOST,
                    ANIM_ARROW_HD_AC_START,
                    ANIM_ARROW_HD_AC_END,
                    ANIM_ARROW_MAX,

                    ANIM_ARROW_RIGHT_LOOP = ANIM_ARROW_LOOP,
                    ANIM_ARROW_RIGHT_FOCUS_ON,
                    ANIM_ARROW_RIGHT_FOCUS_OFF,
                    ANIM_ARROW_RIGHT_SELECT,
                    ANIM_ARROW_RIGHT_APPEAR,
                    ANIM_ARROW_RIGHT_LOST,
                    ANIM_ARROW_RIGHT_HD_AC_START,
                    ANIM_ARROW_RIGHT_HD_AC_END,

                    ANIM_ARROW_LEFT_LOOP,
                    ANIM_ARROW_LEFT_FOCUS_ON,
                    ANIM_ARROW_LEFT_FOCUS_OFF,
                    ANIM_ARROW_LEFT_SELECT,
                    ANIM_ARROW_LEFT_APPEAR,
                    ANIM_ARROW_LEFT_LOST,
                    ANIM_ARROW_LEFT_HC_AC_START,
                    ANIM_ARROW_LEFT_HC_AC_END,

                    ANIM_LETTER_REPLY,
                    ANIM_LETTER_REPLY_BACK,
                    ANIM_LETTER_PIC_REPLY,
                    ANIM_LETTER_PIC_REPLY_BACK,
                    ANIM_LETTER_PIC_FOCUS_IN,
                    ANIM_LETTER_PIC_FOCUS_OUT,
                    ANIM_LETTER_SELECT_PIC,
                    ANIM_LETTER_EXIT_PIC,
                };

                enum {
                    BTN_ARROW_RIGHT = 0,
                    BTN_ARROW_LEFT,
                    BTN_PICTURE,
                    BTN_NIGAOE,
                    BTN_MAX,
                };

                enum {
                    NETWORK_RESULT_FAIL = 0,
                    NETWORK_RESULT_SUCCESS,
                    NETWORK_RESULT_ERROR,
                };

                int                             mState;                             // 0x00

                // these may be incorrect
                int                             mNextState;                         // 0x04
                int                             mPrevState;                         // 0x08

                result                          mFinalResult;                       // 0x0C
                result                          mCurrentResult;                     // 0x10

                BoardObject*                    mpBoardObj;                         // 0x14

                layout::Object*                 mpLayout;                           // 0x18
                gui::PaneManager*               mpGui;                              // 0x1C
                TextBalloon*                    mpNigaoeBalloon;                    // 0x20

                wchar_t*                        mpParsedText;                       // 0x24

                event                           mEvent;                             // 0x28
                button_event                    mButtonEvent;                       // 0x38
                optout_button_event             mOptOutEvent;                       // 0x48

                scroller                        mScroller;                          // 0x58
                picture                         mPicture;                           // 0xC8

                int                             unk_0xF8;
                u8                              unk_0xFC;

                EGG::Allocator                  mGUIAlloc;                          // 0x100

                wchar_t                         unk_0x114[6];

                u8*                             mpCmpArcData;                       // 0x120
                u8*                             mpArcData;                          // 0x124
                u32                             mArcLength;                         // 0x128

                bool                            mbChanJump;                         // 0x12C
                NWC24CHJumpObj*                 mpChJpData;                         // 0x130

                u8*                             mpSoundData;                        // 0x134
                u32                             mSoundSize;                         // 0x138
                bool                            mbSoundPlaying;                     // 0x13C

                utility::timer                  mSoundStopTimer;                    // 0x140
                utility::timer                  mSoundTimer;                        // 0x148

                UrlProcessor                    mURLProc;                           // 0x150

                bool                            mbHoveredURL[WPAD_MAX_CONTROLLERS]; // 0x1A4

                math::LinearIntp<math::VEC3>    mFadeAnim;                          // 0x1A8

                BOOL                            mbHovered[BTN_MAX];                 // 0x1E0

                int                             mLineCount;                         // 0x1F0
                int                             mNwc24ErrCountdown;                 // 0x1F4
                int                             mChanJumpCountdown;                 // 0x1F8

                bool                            mbShowUArw;                         // 0x1FC
                bool                            mbShowDArw;                         // 0x1FD

                bool                            mbScaleUArw;                        // 0x1FE
                bool                            mbScaleDArw;                        // 0x1FF

                bool                            mbParentalSuccess;                  // 0x200

                undefined                       unused_0x201[0x07];

                static const char*              mAnimNames[BoardObject::TYPE_MAX][1+ANIM_ARROW_MAX];
                static const char*              mscButtonName[BTN_MAX];

                static const int                PARSED_TEXT_LENGTH = 6000;

                friend class Board;
                friend class event;
                friend class button_event;
                friend class optout_button_event;
        };
    }
}

#endif // IPL_SCENE_FOCUS_OBJECT_H
