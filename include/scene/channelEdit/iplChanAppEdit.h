#ifndef IPL_SCENE_CHAN_APP_EDIT_H
#define IPL_SCENE_CHAN_APP_EDIT_H

#include "scene/channelEdit/iplAnmController.h"

#include "scene/channelEdit/iplChanAppBox.h"

#include "scene/channelEdit/iplThumbnail.h"
#include "scene/textballoon/iplBalloon.h"

namespace ipl {
    namespace scene {
        class ChannelEdit;

        class ChanAppEdit : public AnmController, public ::gui::EventHandler {
        public:
            ChanAppEdit(EGG::Heap* heap, nand::LayoutFile* layoutFile, const char* layoutDir, const char* layoutFileName);
            virtual ~ChanAppEdit();

            void calc();
            void draw();
            void update();

            void anmFadein(ChanAppBox* box);
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

            void clearAllThumbnails();

            inline bool isIdle() { return mState == STATE_IDLE; }

        private:
            enum {
                ANIM_MASK_IN = 0,
                ANIM_MASK_OUT,
                ANIM_COPY_IN,
                ANIM_COPY_OUT,
                ANIM_COPY_FLASH,
                ANIM_DEL_IN,
                ANIM_DEL_OUT,
                ANIM_DEL_FLASH,
                ANIM_SELECT_OUT,
                ANIM_TEXT_FADEIN,
                ANIM_TEXT_FADEOUT,
                ANIM_WAIT,
                ANIM_COVER_IN,
                ANIM_MOVE_IN,
                ANIM_MOVE_OUT,
                ANIM_MOVE_FLASH,
            };

            void change_button_text(u32 msgId);

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
            void on_clear();

            enum {
                STATE_IDLE = 0,
                STATE_FADEIN,
                STATE_FADEOUT,
                STATE_HIDE_BTN0_DIALOG,
                STATE_SHOW_BTN2_DIALOG1ST,
                STATE_SHOW_BTN2_DIALOG2ND,
                STATE_SELECT_FADEIN,
                STATE_SELECT_FADEOUT1ST,
                STATE_SELECT_FADEOUT2ND,
                STATE_TEXT_FADEIN,
                STATE_TEXT_FADEOUT,
                STATE_TRIG_DEL,
                STATE_CLEAR,
            };

        public:
            nw4r::ut::Link mLink;  // 0x34

        private:
            int mState;                                  // 0x3C
            math::LinearIntp<math::VEC3> mLinearInterp;  // 0x40
            ChanAppBox* mpChanAppBox;                    // 0x78
            s32 mMsgId;                                  // 0x7c
            Thumbnail* mpThumbnail;                      // 0x80
        };
    }  // namespace scene
}  // namespace ipl

#endif  // IPL_SCENE_CHAN_APP_EDIT_H
