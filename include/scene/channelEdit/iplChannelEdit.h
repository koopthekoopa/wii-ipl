#ifndef IPL_SCENE_CHANNEL_EDIT_H
#define IPL_SCENE_CHANNEL_EDIT_H

#include "iplSceneHeader.h"

#include "scene/channelEdit/iplAnmController.h"
#include "scene/channelEdit/iplNandSDCardManager.h"

#include "scene/channelEdit/iplChanAppBase.h"
#include "scene/channelEdit/iplChanAppBox.h"
#include "scene/channelEdit/iplChanAppEdit.h"

namespace ipl {
    namespace scene {
        SCENE_CLASS(ChannelEdit) {
        public:
            enum State {
                CHANEDIT_STATE_ON_NORMAL = 0,       // 0x00
                CHANEDIT_STATE_ON_FADEIN1ST,        // 0x01
                CHANEDIT_STATE_ON_FADEIN2ND,        // 0x02
                CHANEDIT_STATE_ON_FADEOUT1ST,       // 0x03
                CHANEDIT_STATE_ON_FADEOUT2ND,       // 0x04
                CHANEDIT_STATE_ON_SCROLL_R,         // 0x05
                CHANEDIT_STATE_ON_SCROLL_L,         // 0x06
                CHANEDIT_STATE_ON_CHANGE_TAG1ST,    // 0x07
                CHANEDIT_STATE_ON_CHANGE_TAG2ND,    // 0x08
                CHANEDIT_STATE_ON_TRIG_COPY,        // 0x09
                CHANEDIT_STATE_ON_EDIT,             // 0x0a
                CHANEDIT_STATE_ON_EDIT_FADEIN,      // 0x0b
                CHANEDIT_STATE_ON_EDIT_FADEOUT1ST,  // 0x0c
                CHANEDIT_STATE_ON_EDIT_FADEOUT2ND,  // 0x0d
                CHANEDIT_STATE_ON_VERIFY1ST,        // 0x0e
                CHANEDIT_STATE_ON_VERIFY2ND,        // 0x0f
                CHANEDIT_STATE_ON_VERIFY_COPY,      // 0x10
                CHANEDIT_STATE_ON_VERIFY_DEL,       // 0x11
                CHANEDIT_STATE_ON_VERIFY_FORMAT,    // 0x12
                CHANEDIT_STATE_ON_END_FORMAT,       // 0x13
                CHANEDIT_STATE_ON_END_DEL,          // 0x14
                CHANEDIT_STATE_ON_SD_MOUNT,         // 0x15
                CHANEDIT_STATE_ON_SD_MESSAGE1ST,    // 0x16
                CHANEDIT_STATE_ON_SD_MESSAGE2ND,    // 0x17
                CHANEDIT_STATE_ON_SD_MESSAGE3RD,    // 0x18
                CHANEDIT_STATE_ON_PROCESS,          // 0x19
                CHANEDIT_STATE_ON_END_PROCESS,      // 0x1a
                CHANEDIT_STATE_ON_EXIST_APP,        // 0x1b
                CHANEDIT_STATE_ON_SD_MOUNT_ONLY,    // 0x1c
                CHANEDIT_STATE_ON_TRIG_MOVE,        // 0x1d
                CHANEDIT_STATE_ON_VERIFY_MOVE,      // 0x1e
                CHANEDIT_STATE_ON_END_MOVE,         // 0x1f
            };

            ChannelEdit(EGG::Heap * heap);
            virtual ~ChannelEdit();

            void prepare() override;
            void create() override;
            void calc() override;

            virtual void draw() override;
            virtual BOOL isResetAcceptable() const override;

            void setpos_chanapp_box();
            void fadein_chanapp_box();
            void fadeout_chanapp_box();

            void send_getthumbnail_cmd(bool isWiiNotSD);
            void update_sdcard_slot();
            void update_arw();
            void update_free();
            void update_nand_free();
            void update_sd_free();

            void onPoint(AnmPane*);
            void onLeft(AnmPane*);
            void onTrig(AnmPane*);
            void onTrig(ChanAppBox*);
            void onTrigButton(bool isErr);
            void onTrigDel();
            void onTrigCopy();
            void onTrigMove();

            inline State getState() {
                return mState;
            }

        private:
            void start_scroll_r(bool playButtonAnm, bool playSound);
            void start_scroll_l(bool playButtonAnm, bool playSound);

            bool enable_scroll_r();
            bool enable_scroll_l();

            void start_process(int processType);
            void stop_process();

            static BOOL sd_worker_ready(NandSDCardManager * manager) {
                return manager->sdWorkerReadyMaybe();
            }

            void on_normal();
            void on_fadein1st();
            void on_fadein2nd();
            void on_fadeout1st();
            void on_fadeout2nd();
            void on_scroll_r();
            void on_scroll_l();
            void on_change_tag1st();
            void on_change_tag2nd();
            void on_trig_copy();
            void on_edit_fadein();
            void on_edit();
            void on_edit_fadeout1st();
            void on_edit_fadeout2nd();
            void on_verify1st();
            void on_verify2nd();
            void on_verify_copy();
            void on_verify_del();
            void on_verify_format();
            void on_end_format();
            void on_end_del();
            void on_sd_mount();
            void on_sd_message1st();
            void on_sd_message2nd();
            void on_sd_message3rd();
            void on_process();
            void on_end_process();
            void on_exist_app();
            void on_sd_mount_only();
            void on_trig_move();
            void on_verify_move();
            void on_end_move();

            enum Page {
                CHANEDIT_PAGE_WII = 0,
                CHANEDIT_PAGE_SD = 1,
            };

            enum IntentType {
                CHANEDIT_INTENT_NONE = 0,
                CHANEDIT_INTENT_COPY = 1,
                CHANEDIT_INTENT_MOVE = 2,
            };

            enum {
                CHANEDIT_PROC_NUL = 0,  // 0
                CHANEDIT_PROC_CPY = 1,  // 1
                CHANEDIT_PROC_DEL = 2,  // 2
                CHANEDIT_PROC_FMT = 3,  // 3
                CHANEDIT_PROC_MOV = 4,  // 4
            };

            State mState;                           // 0x54
            nand::LayoutFile* pChanEditLytFile;     // 0x58
            nand::LayoutFile* pBalloonLytFile;      // 0x5c
            nand::File* pCorruptIconFile;           // 0x60
            nand::File* pTmptitleIconFile;          // 0x64
            ChanAppBase* pChanAppBase;              // 0x68
            ChanAppEdit* pChanAppEdit;              // 0x6c
            nw4r::ut::List mChanAppBoxList;         // 0x70
            NandSDCardManager* pNandSDCardManager;  // 0x7c
            TextBalloon* mTextBalloonArr[15];       // 0x80
            Page mPage;                             // 0xbc
            ChanAppBox* pCurrBox;                   // 0xc0
            int mPageOffset;                        // 0xc4
            int mSdState;                           // 0xc8
            bool mArwRVisible;                      // 0xcc
            bool mArwLVisible;                      // 0xcd
            int mProcessType;                       // 0xd0
            IntentType mActionIntent;               // 0xd4
        };
    }  // namespace scene
}  // namespace ipl

#endif  // IPL_SCENE_CHANNEL_EDIT_H
