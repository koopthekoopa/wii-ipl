#ifndef IPL_SCENE_SAVEDATA_EDIT_H
#define IPL_SCENE_SAVEDATA_EDIT_H

#include "scene/channelEdit/iplAnmController.h"

#include "scene/saveDataEdit/iplSaveDataBox.h"

#include "layout/GUIManager.h"

#include <revolution/types.h>

namespace ipl {
    namespace scene {
        class SavedataEdit : public AnmController, public ::gui::EventHandler {
        public:
            SavedataEdit(EGG::Heap* heap, nand::LayoutFile* lytFile, const char* lytFolder, const char* lytFileName);

            virtual ~SavedataEdit();

            void calc();
            void draw();
            void update();

            void anmFadein(SavedataBox* box);
            void anmFadeout();

            void anmHideBtn0Dialog();
            void anmShowBtn0Dialog(u32 msgId, bool dontWait, bool showLoading);
            void anmShowS2Btn2Dialog(u32 msgId);

            void anmSelectFadein();
            void anmSelectFadeout(u32 msgId);

            void anmTextFadein(u32 msgId);
            void anmTextFadeout();

            void anmStartWaitAnm();
            void anmStopWaitAnm();

            void anmClear();

            virtual void onEvent(u32 compId, u32 event, void* data) override;

            void change_button_text(u32);

            inline bool isIdle() { return mState == EDIT_STATE_IDLE; }

        private:
            void on_fadein();
            void on_fadeout();
            void on_hide_btn0_dialog();
            void on_show_btn2_dialog1st();
            void on_show_btn2_dialog2nd();
            void on_select_fadein();
            void on_select_fadeout1st();
            void on_select_fadeout2nd();
            void on_text_fadein();
            void on_text_fadeout();
            void on_trig_del();

            enum State {
                EDIT_STATE_IDLE = 0x0,                 // 0x0
                EDIT_STATE_FADEIN = 0x1,               // 0x1
                EDIT_STATE_FADEOUT = 0x2,              // 0x2
                EDIT_STATE_HIDE_BTN0_DIALOG = 0x3,     // 0x3
                EDIT_STATE_SHOW_BTN2_DIALOG1ST = 0x4,  // 0x4
                EDIT_STATE_SHOW_BTN2_DIALOG2ND = 0x5,  // 0x5
                EDIT_STATE_SELECT_FADEIN = 0x6,        // 0x6
                EDIT_STATE_SELECT_FADEOUT1ST = 0x7,    // 0x7
                EDIT_STATE_SELECT_FADEOUT2ND = 0x8,    // 0x8
                EDIT_STATE_TEXT_FADEIN = 0x9,          // 0x9
                EDIT_STATE_TEXT_FADEOUT = 0xa,         // 0xa
                EDIT_STATE_TRIG_DEL = 0xb,             // 0xb
            };

        public:
            nw4r::ut::Link mLink;  // 0x34
        private:
            State mState;                                // 0x3c
            math::LinearIntp<math::VEC3> mLinearInterp;  // 0x40
            SavedataBox* pSavedataBox;                   // 0x78
            int mMsgId;                                  // 0x7c
        };
    }  // namespace scene
}  // namespace ipl

#endif  // IPL_SCENE_SAVEDATA_EDIT_H
