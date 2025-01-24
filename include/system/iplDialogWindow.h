#ifndef IPL_DIALOG_WINDOW_H
#define IPL_DIALOG_WINDOW_H

#include <revolution/types.h>

#include "system/iplController.h"

#include "system/MESGEntries.h"

#include "layout/GUIManager.h"
#include "layout/iplLayout.h"

namespace ipl {
    USE_GUI_MANAGER
    class DialogWindow : public ::gui::EventHandler {
        public:
            enum {
                RESULT_NONE = -1,
                RESULT_WAIT,                                 /* For `callBtn0` */
                RESULT_BUTTON,                               /* For `callBtn1` */
                RESULT_RIGHT_BUTTON = RESULT_BUTTON,          /* For `callBtn2` */
                RESULT_LEFT_BUTTON,                         /* For `callBtn2` */
                RESULT_TOP_BUTTON,                           /* For `callBtn3` */
                RESULT_MIDDLE_BUTTON,                        /* For `callBtn3` */
                RESULT_BOTTOM_BUTTON,                        /* For `callBtn3` */
                RESULT_TERMINATED,
                RESULT_PROGRESS,                             /* For `callBtnPrg` */
            };

            typedef struct Page {
                u32                     mMsgId;         // 0x00
                u32                     mRBtnMsgId;     // 0x04
                u32                     mLBtnMsgId;     // 0x08
                bool                    mbTwoBtn;       // 0x0C

                ipl::layout::Object*    mpLayout;       // 0x10

                f32                     mLayoutY;       // 0x14
                bool                    mbAnimLayout;   // 0x18
            } Page;

            /** @param heap The work heap used. */
            DialogWindow(EGG::Heap* heap);

            void            init();
            void            calc();
            void            draw();

            virtual void    onEvent(u32 compId, u32 event, void* data);

            BOOL            callBtn0(u32 msgId, u32 wait, bool bIsProg = false);
            BOOL            callBtn0NoShade(u32 msgId, u32 wait, bool bIsProg = false);

            BOOL            callBtn1(u32 msgId, u32 btnId);
            BOOL            callBtn1(u32 msgId, u32 btnId, f32 size);
            BOOL            callBtn1(const wchar_t* msg, u32 btnId);
            BOOL            callBtn1(const wchar_t* msg, u32 btnId, f32 size);
            BOOL            callBtn1Sml(u32 msgId, u32 btnId);
            BOOL            callBtn1NoShade(u32 msgId, u32 btnId);

            BOOL            callBtn2(u32 msgId, u32 rBtnId, u32 lBtnId, bool bSwapSound = false);
            BOOL            callBtn2(const wchar_t* msg, u32 rBtnId, u32 lBtnId, bool bSwapSound = false);
            BOOL            callBtn2(Page* pages, int pageCount, int fadeSpeed);
            BOOL            callBtn2NoShade(const wchar_t* msg, u32 rBtnId, u32 lBtnId, bool bSwapSound = false);

            BOOL            callBtn3(u32 msgId, u32 tBtnId, u32 cBtnID, u32 bBtnId);

            BOOL            callSBtn2(u32 msgId, u32 rBtnId, u32 lBtnId, bool bSwapSound = false);
            BOOL            callS2Btn2(u32 rBtnId, u32 lBtnId, bool bSwapSound = false);

            BOOL            callBtnPrg(u32 msgId);
            BOOL            callBtnPrgNoShade(const wchar_t* msg);

            bool            terminate();

            void            setProgBarLength(int len)   { mProgBarLen = len; }
            int             getProgBarLength()          { return mProgBarLen; }

            int             getLastResult()             { return mLastResult; }

            BOOL            doingNextState()            { return mbNextState; }

        private:
            enum {
                DIALOG_TYPE_NONE = -1,
                DIALOG_TYPE_BTN0,
                DIALOG_TYPE_BTN1,
                DIALOG_TYPE_BTN2,
                DIALOG_TYPE_BTN3,
                DIALOG_TYPE_BTN2B,
                DIALOG_TYPE_MAX,
            };

            enum {
                DIALOG_BTN_TYPE_BTN1 = 0,
                DIALOG_BTN_TYPE_BTN2,
                DIALOG_BTN_TYPE_BTN3,
                DIALOG_BTN_TYPE_MAX,
            };

            class Interface {
                public:
                    layout::Object*     mpLayout;   // 0x00
                    gui::PaneManager*   mpGui;      // 0x04
            };

            BOOL call(int type);

            void set_alpha(nw4r::lyt::Pane* pane, u8 alpha);

            void stt_fadein();
            void stt_normal();
            void stt_select();
            void stt_fadeout();
            void stt_pagefade();
            void stt_prepare_pagefade();

            void set_text(const char* pane, const wchar_t* text);
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
            
            u32                     mState;                             // 0x0C
            ipl::nand::LayoutFile*  mpLayoutFile;                       // 0x10

            int                     mBtnHovered[DIALOG_BTN_TYPE_MAX];   // 0x14
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
            Page*                   mpDialogPages;                      // 0x88
            int                     mDialogPageCount;                   // 0x8C
            int                     mCurPage;                           // 0x90
            int                     mPrevPage;                          // 0x94

            bool                    mbNoShade;                          // 0x98
            bool                    mbHideBtnA;                         // 0x99

            static char*            mscBtnName[3];
    };
}

#endif // IPL_DIALOG_WINDOW_H
