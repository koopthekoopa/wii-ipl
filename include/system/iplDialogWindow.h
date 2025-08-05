#ifndef IPL_DIALOG_WINDOW_H
#define IPL_DIALOG_WINDOW_H

#include <revolution/types.h>

#include "system/iplController.h"

#include "system/MESGEntries.h"

#include "layout/GUIManager.h"
#include "layout/iplLayout.h"

/* MACROS FOR CREATING PAGE */

/**
 * New data type for Multi-Dialog page
 * @param msgID Message ID for body text.
 * @param rBtnMsgId Message ID for right button text.
 * @param lBtnMsgId Message ID for left button text.
 */
#define DIALOG_WINDOW_PAGE(msgID, rBtnMsgId, lBtnMsgId) \
    { msgID, rBtnMsgId, lBtnMsgId, TRUE, NULL, 0, false }
/**
 * New data type for Multi-Dialog page
 * @param msgID Message ID for body text.
 * @param btnMsgId Message ID for button text.
 */
#define DIALOG_WINDOW_PAGE_ONEBTN(msgID, btnMsgId) \
    { msgID, btnMsgId, 0, FALSE, NULL, 0, false }

/**
 * New data type for Multi-Dialog page
 * @param msgID Message ID for body text.
 * @param rBtnMsgId Message ID for right button text.
 * @param lBtnMsgId Message ID for left button text.
 * @param layoutObj Custom layout object.
 * @param layoutYOff Custom layout Y offset.
 * @param isLytAnim If the custom layout is animating.
 */
#define DIALOG_WINDOW_PAGE_EX(msgID, rBtnMsgId, lBtnMsgId, layoutObj, layoutYOff, isLytAnim) \
    { msgID, rBtnMsgId, lBtnMsgId, TRUE, layoutObj, layoutYOff, isLytAnim }
/**
 * New data type for Multi-Dialog page
 * @param msgID Message ID for body text.
 * @param btnMsgId Message ID for button text.
 * @param layoutObj Custom layout object.
 * @param layoutYOff Custom layout Y offset.
 * @param isLytAnim If the custom layout is animating.
 */
#define DIALOG_WINDOW_PAGE_ONEBTN_EX(msgID, btnMsgId, layoutObj, layoutYOff, isLytAnim) \
    { msgID, btnMsgId, 0, FALSE, layoutObj, layoutYOff, isLytAnim }

/** MAIN CLASS */

namespace ipl {
    namespace gui {
        class PaneManager;
    }
}
namespace gui {
    class EventHandler;
}

namespace ipl {   
    class DialogWindow : public ::gui::EventHandler {
        /* ROUTINES AVAILABLE FOR USER */
        public:
            enum {
                RESULT_NONE = -1,                       /* Invalid result. */

                RESULT_WAIT,                            /* For `callBtn0` */
                RESULT_BUTTON,                          /* For `callBtn1` */
                RESULT_RIGHT_BUTTON = RESULT_BUTTON,    /* For `callBtn2` */
                RESULT_LEFT_BUTTON,                     /* For `callBtn2` */
                RESULT_TOP_BUTTON,                      /* For `callBtn3` */
                RESULT_MIDDLE_BUTTON,                   /* For `callBtn3` */
                RESULT_BOTTOM_BUTTON,                   /* For `callBtn3` */
                RESULT_TERMINATED,
                RESULT_PROGRESS,                        /* For `callBtnPrg` */
            };

            /* Multi-Dialog Page */
            typedef struct Page {
                u32             msgID;      // 0x00 (Message ID)
                u32             rBtnMsgId;  // 0x04 (Right button ID)
                u32             lBtnMsgId;  // 0x08 (Left button ID)
                bool            isTwoBtn;   // 0x0C (Has two buttons)

                layout::Object* layoutObj;  // 0x10 (Layout object to display)

                f32             layoutYOff; // 0x14 (Layout object Y offset)
                bool            isLytAnim;  // 0x18 (If the Layout object can animate)
            } Page;

            /*=============*/
            /* DIALOG MAIN */
            /*=============*/

            /**
             * The constructor of the Dialog.
             * @param heap The work heap used for construction.
             */
            DialogWindow(EGG::Heap* heap);

            /** Initialize dialog so it is ready for calling. */
            void            init();
            /** Update Dialog Loop */
            void            calc();
            /** Drawing Dialog Loop */
            void            draw();
            /**
             * Terminate an active dialog. Recommend to only use for `callBtn0` and `callBtnPrg`.
             * @return Whenether the dialog has successfully terminated.
             */
            bool            terminate();

            /** @return The result of the dialog saved after finishing. */
            int             getLastResult()     { return mLastResult; }
            /** @return If the dialog is moving onto the next state. */
            bool            doingNextState()    { return mbNextState; }

            /*=================*/
            /* DIALOG BUTTON 0 */
            /*=================*/

            /**
             * Call dialog with no button.
             * @param msgId Message ID from BMG file.
             * @param wait The amount of ticks for the dialog should display for.
             * @param bIsProg Show waiting icon on the bottom right.
             * @return Whenever dialog call was successful.
             */
            BOOL            callBtn0(u32 msgId, u32 wait, bool bIsProg = false);
            /**
             * Call dialog with no button and no dark background.
             * @param msgId Message ID for the body text.
             * @param wait The amount of ticks for the dialog should display for.
             * @param bIsProg Show waiting icon on the bottom right.
             * @return Whenever dialog call was successful.
             */
            BOOL            callBtn0NoShade(u32 msgId, u32 wait, bool bIsProg = false);

            /*=================*/
            /* DIALOG BUTTON 1 */
            /*=================*/

            /**
             * Call dialog with one button.
             * @param msgId Message ID for the body text.
             * @param btnId Message ID for the button text.
             * @return Whenever dialog call was successful.
             */
            BOOL            callBtn1(u32 msgId, u32 btnId);
            /**
             * Call dialog with one button.
             * @param msgId Message ID for the body text.
             * @param btnId Message ID for the button text.
             * @param size Body Text's font size.
             * @return Whenever dialog call was successful.
             */
            BOOL            callBtn1(u32 msgId, u32 btnId, f32 size);
            /**
             * Call dialog with one button.
             * @param msg Unicode string for the body text.
             * @param btnId Message ID for the button text.
             * @return Whenever dialog call was successful.
             */
            BOOL            callBtn1(const wchar_t* msg, u32 btnId);
            /**
             * Call dialog with one button.
             * @param msg Unicode string for the body text.
             * @param btnId Message ID for the button text.
             * @param size Body Text's font size.
             * @return Whenever dialog call was successful.
             */
            BOOL            callBtn1(const wchar_t* msg, u32 btnId, f32 size);
            /**
             * Call dialog with one button with small font size.
             * @param msgId Message ID for the body text.
             * @param btnId Message ID for the button text.
             * @return Whenever dialog call was successful.
             */
            BOOL            callBtn1Sml(u32 msgId, u32 btnId);
            /**
             * Call dialog with one button and without the dark background.
             * @param msgId Message ID for the body text.
             * @param btnId Message ID for the button text.
             * @return Whenever dialog call was successful.
             */
            BOOL            callBtn1NoShade(u32 msgId, u32 btnId);

            /*=================*/
            /* DIALOG BUTTON 2 */
            /*=================*/

            /**
             * Call dialog with two buttons.
             * @param msgId Message ID for the body text.
             * @param rBtnId Message ID for the right button text.
             * @param lBtnId Message ID for the left button text.
             * @param bSwapSound Swap "OK" and "Back" sounds. Normally, Right button plays "Back" sound and left button plays "OK" sound.
             * @return Whenever dialog call was successful.
             */
            BOOL            callBtn2(u32 msgId, u32 rBtnId, u32 lBtnId, bool bSwapSound = false);
            /**
             * Call dialog with two buttons.
             * @param msg Unicode string for the body text.
             * @param rBtnId Message ID for the right button text.
             * @param lBtnId Message ID for the left button text.
             * @param bSwapSound Swap the "OK" and "Back" sound effect.
             * @return Whenever dialog call was successful.
             */
            BOOL            callBtn2(const wchar_t* msg, u32 rBtnId, u32 lBtnId, bool bSwapSound = false);
            /**
             * Call a multi-dialog.
             * @param pages An array of Dialog Pages.
             * @param pageCount The amount of pages.
             * @param fadeDelay The delay of the transition in ticks.
             * @return Whenever dialog call was successful.
             */
            BOOL            callBtn2Multi(Page* pages, int pageCount, int fadeDelay);
            /**
             * Call dialog with two buttons and without the dark background.
             * @param msgId Message ID for the body text.
             * @param rBtnId Message ID for the right button text.
             * @param lBtnId Message ID for the left button text.
             * @param bSwapSound Swap the "OK" and "Back" sound effect.
             * @return Whenever dialog call was successful.
             */
            BOOL            callBtn2NoShade(const wchar_t* msg, u32 rBtnId, u32 lBtnId, bool bSwapSound = false);

            /*=================*/
            /* DIALOG BUTTON 3 */
            /*=================*/

            /**
             * Call dialog with three buttons (vertically sorted)
             * @param msgId Message ID for the body text.
             * @param tBtnId Message ID for the top button text.
             * @param cBtnID Message ID for the middle button text.
             * @param bBtnId Message ID for the bottom button text.
             * @return Whenever dialog call was successful.
             */
            BOOL            callBtn3(u32 msgId, u32 tBtnId, u32 cBtnID, u32 bBtnId);

            /*==================*/
            /* DIALOG BUTTON S2 */
            /*==================*/

            /**
             * Call dialog with two buttons (alternative)
             * @param msgId Message ID for the body text.
             * @param rBtnId Message ID for the right button text.
             * @param lBtnId Message ID for the left button text.
             * @param bSwapSound Swap the "OK" and "Back" sound effect.
             * @return Whenever dialog call was successful.
             */
            BOOL            callSBtn2(u32 msgId, u32 rBtnId, u32 lBtnId, bool bSwapSound = false);
            /**
             * Call dialog with two buttons (alternative) without header
             * @param rBtnId Message ID for the right button text.
             * @param lBtnId Message ID for the left button text.
             * @param bSwapSound Swap the "OK" and "Back" sound effect.
             * @return Whenever dialog call was successful.
             */
            BOOL            callS2Btn2(u32 rBtnId, u32 lBtnId, bool bSwapSound = false);

            /*========================*/
            /* DIALOG BUTTON PROGRESS */
            /*========================*/

            /**
             * Call dialog with a progress bar.
             * @param msgId Message ID for the body text.
             * @return Whenever dialog call was successful.
             */
            BOOL            callBtnPrg(u32 msgId);
            /**
             * Call dialog with a progress bar and no dark background.
             * @param msgId Message ID for the body text.
             * @return Whenever dialog call was successful.
             */
            BOOL            callBtnPrgNoShade(const wchar_t* msg);

            /**
             * Set the length of the progress bar for progress bar.
             * @note The dialog automatically terminates when reaching `100`.
             * @param len The new length.
             */
            void            setProgBarLength(int len)   { mProgBarLen = len; }
            /** @return The current length of the progress bar */
            int             getProgBarLength()          { return mProgBarLen; }

            /**
             * Dialog component handler (Automatically executed by the GUI manager)
             * @param compId Component ID from the dialog.
             * @param event The event ID for the dialog.
             * @param data Extra data that an event might require.
             */
            virtual void    onEvent(u32 compId, u32 event, void* data);
        
        /* MEMBERS AND ROUTINES FOR WORK */
        private:
            typedef enum State {
                DIALOG_STATE_READY = 0,
                DIALOG_STATE_FADE_IN,
                DIALOG_STATE_NORMAL,
                DIALOG_STATE_SELECT,
                DIALOG_STATE_FADE_OUT,
                DIALOG_STATE_PAGE_FADE,
                DIALOG_STATE_PAGE_FADE_PREPARE,
            } State;
            
            enum {
                DIALOG_TYPE_NONE = -1,
                DIALOG_TYPE_BTN0,
                DIALOG_TYPE_BTN1,
                DIALOG_TYPE_BTN2,
                DIALOG_TYPE_BTN3,
                DIALOG_TYPE_BTNS2,
                DIALOG_TYPE_MAX,
            };

            enum {
                DIALOG_BTN_TYPE_BTN1 = 0,
                DIALOG_BTN_TYPE_BTN2,
                DIALOG_BTN_TYPE_BTN3,
                DIALOG_BTN_TYPE_MAX,
            };

            struct Interface {
                layout::Object*     gLayout;    // 0x00
                gui::PaneManager*   guiMgr;     // 0x04
            };

            BOOL call(int type);

            void set_alpha(nw4r::lyt::Pane* pane, u8 alpha);

            void stt_fadein();
            void stt_normal();
            void stt_select();
            void stt_fadeout();
            void stt_pagefade();
            void stt_prepare_pagefade();

            void set_text(const char* findName, const wchar_t* text);
            void set_title(const wchar_t* text);
            void set_message(u32 id);

            void set_rbtn_text(u32 id);
            void set_lbtn_text(u32 id);
            void set_tbtn_text(u32 id);
            void set_cbtn_text(u32 id);
            void set_bbtn_text(u32 id);

            void set_dialog_size(const nw4r::lyt::Size& size);

            int  get_button_no(const char* btnName);

            void start_point_event(const char* paneName, controller::Interface* controller);
            void start_left_event(const char* paneName);
            void start_trig_event(const char* paneName);
            
            State                   mState;                             // 0x0C
            ipl::nand::LayoutFile*  mpLayoutFile;                       // 0x10

            BOOL                    mbBtnHovered[DIALOG_BTN_TYPE_MAX];  // 0x14

            int                     mResult;                            // 0x20
            int                     mLastResult;                        // 0x24
        
            int                     mDialogType;                        // 0x28

            int                     mWaitTick;                          // 0x2C
            u32                     mWaitTimer;                         // 0x30

            bool                    mbNextState;                        // 0x34
            bool                    mbTerminated;                       // 0x35
            bool                    mbSwapSound;                        // 0x36

            bool                    mbIsProg;                           // 0x37
            bool                    mbDoProgBar;                        // 0x38
            int                     mProgBarLen;                        // 0x3C
            int                     mProgBarFrame;                      // 0x40

            int                     mPageAlpha;                         // 0x44
            int                     mPageFadeSpeed;                     // 0x48
            int                     mPageState;                         // 0x4C

            Interface               mDialog[DIALOG_TYPE_MAX];           // 0x50
            Interface*              mpCurDialog;                        // 0x78

            layout::Object*         mpCustomLayout;                     // 0x7C
            nw4r::math::VEC2        mCustomLayoutPos;                   // 0x80
            Page*                   mpPages;                            // 0x88
            int                     mPageCount;                         // 0x8C
            int                     mCurPage;                           // 0x90
            int                     mPrevPage;                          // 0x94

            bool                    mbNoShade;                          // 0x98
            bool                    mbHideBtnA;                         // 0x99

            static char*            mscBtnName[3];
    };
}

#endif // IPL_DIALOG_WINDOW_H
