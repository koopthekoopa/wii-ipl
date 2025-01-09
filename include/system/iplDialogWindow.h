#ifndef IPL_DIALOG_WINDOW_H
#define IPL_DIALOG_WINDOW_H

#include <revolution/types.h>

#include "layout/iplLayout.h"
#include "layout/iplGuiManager.h"

namespace ipl {
    class DialogWindow : public ::gui::EventHandler {
        public:
            enum {
                DIALOG_BTN_NONE = -1,
                DIALOG_BTN_B = 1,
                DIALOG_BTN_A,
                DIALOG_BTN3_A,
                DIALOG_BTN3_B,
                DIALOG_BTN3_C,
            };

            /** @param heap The work heap used. */
            DialogWindow(EGG::Heap* heap);

            void init();
            void calc();
            void draw();

            virtual void onEvent(u32 compId, u32 event, void* data);

            /**
             * @brief Create Dialog Window with one button.
             * @param messageStringID The Message String ID.
             * @param buttonStringID The Button String ID.
             */
            void callBtn1(u32 messageStringID, u32 buttonStringID);

            int btnLastPressed() const   { return mLastPressedBtn; }

        private:
            enum {
                DIALOG_TYPE_NONE = -1,
                DIALOG_TYPE_PROG,
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

            BOOL call(int type);

            void set_alpha(nw4r::lyt::Pane* pane, u8 alpha);

            void stt_fadein();
            void stt_normal();
            void stt_select();
            void stt_fadeout();

            void set_message(u32 id);
            void set_rbtn_text(u32 id);
            void set_lbtn_text(u32 id);

            void iplDialogWindow_81345778();
            void iplDialogWindow_81345880();

            class DialogUI {
                public:
                    layout::Object*     mpLayout;   // 0x00
                    gui::PaneManager*   mpGui;      // 0x04
            };

            class DialogProp {
                public:
                    u32                     mMsgId;     // 0x00
                    u32                     mRBtnMsgId; // 0x04
                    u32                     mLBtnMsgId; // 0x08
                    bool                    unk_0x0C;

                    ipl::layout::Object*    mpLayout;   // 0x10

                    f32                     mLayoutY;   // 0x14
                    bool                    unk_0x18;
            };
            
            int                     mState;                     // 0x0C
            ipl::nand::LayoutFile*  mpLayoutFile;               // 0x10

            int                     unk_0x14[3];
            int                     mPressedBtn;                // 0x20
            int                     mLastPressedBtn;            // 0x24
        
            int                     mDialogType;                // 0x28
            int                     unk_0x2C;

            u32                     unk_0x30;

            u8                      unk_0x34;
            u8                      unk_0x35;
            u8                      unk_0x36;
            u8                      unk_0x37;
            u8                      unk_0x38;

            int                     unk_0x3C;
            int                     unk_0x40;
            int                     unk_0x44;
            int                     unk_0x48;
            int                     unk_0x4C;

            DialogUI                mDialog[DIALOG_TYPE_MAX];   // 0x50
            DialogUI*               mpCurDialog;                // 0x78

            layout::Object*         unk_0x7C;
            nw4r::math::VEC2        unk_0x80;

            DialogProp*             mpDialogProp;               // 0x88

            int                     unk_0x8C;
            int                     unk_0x90;
            int                     unk_0x94;
            u8                      unk_0x98;
            u8                      unk_0x99;

            static char*            mscBtnName[3];
    };
}

#endif // IPL_DIALOG_WINDOW_H
