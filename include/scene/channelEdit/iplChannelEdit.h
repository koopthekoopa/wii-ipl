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
            enum {
                STATE_ON_NORMAL = 0,
                STATE_ON_FADEIN1ST,
                STATE_ON_FADEIN2ND,
                STATE_ON_FADEOUT1ST,
                STATE_ON_FADEOUT2ND,
                STATE_ON_SCROLL_R,
                STATE_ON_SCROLL_L,
                STATE_ON_CHANGE_TAG1ST,
                STATE_ON_CHANGE_TAG2ND,
                STATE_ON_TRIG_COPY,
                STATE_ON_EDIT,
                STATE_ON_EDIT_FADEIN,
                STATE_ON_EDIT_FADEOUT1ST,
                STATE_ON_EDIT_FADEOUT2ND,
                STATE_ON_VERIFY1ST,
                STATE_ON_VERIFY2ND,
                STATE_ON_VERIFY_COPY,
                STATE_ON_VERIFY_DEL,
                STATE_ON_VERIFY_FORMAT,
                STATE_ON_END_FORMAT,
                STATE_ON_END_DEL,
                STATE_ON_SD_MOUNT,
                STATE_ON_SD_MESSAGE1ST,
                STATE_ON_SD_MESSAGE2ND,
                STATE_ON_SD_MESSAGE3RD,
                STATE_ON_PROCESS,
                STATE_ON_END_PROCESS,
                STATE_ON_EXIST_APP,
                STATE_ON_SD_MOUNT_ONLY,
                STATE_ON_TRIG_MOVE,
                STATE_ON_VERIFY_MOVE,
                STATE_ON_END_MOVE,
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

            void onPoint(AnmPane * pane);
            void onLeft(AnmPane * pane);
            void onTrig(AnmPane * pane);
            void onTrig(ChanAppBox * box);
            void onTrigButton(bool isErr);
            void onTrigDel();
            void onTrigCopy();
            void onTrigMove();

            inline int getState() {
                return mState;
            }

            nand::File* getHatenaLayout() {
                return mpCorruptIconFile;
            }

            nand::File* geTmpTitleLayout() {
                return mpTmpTitleIconFile;
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
                PAGE_WII = 0,
                PAGE_SD = 1,
            };

            enum IntentType {
                INTENT_NONE = 0,
                INTENT_COPY,
                INTENT_MOVE,
            };

            enum {
                PROC_NUL = 0,
                PROC_CPY,
                PROC_DEL,
                PROC_FMT,
                PROC_MOV,
            };

            int mState;  // 0x54

            nand::LayoutFile* mpLayoutFile;   // 0x58
            nand::LayoutFile* mpBalloonFile;  // 0x5C

            nand::File* mpCorruptIconFile;   // 0x60
            nand::File* mpTmpTitleIconFile;  // 0x64

            ChanAppBase* mpChanAppBase;      // 0x68
            ChanAppEdit* mpChanAppEdit;      // 0x6C
            nw4r::ut::List mChanAppBoxList;  // 0x70

            NandSDCardManager* mpNandSDCardManager;  // 0x7C

            static const int MAX_BALLOONS = 15;

            TextBalloon* mpBalloons[MAX_BALLOONS];  // 0x80

            Page mPage;                // 0xBC
            ChanAppBox* mpCurrentBox;  // 0xC0
            int mPageOffset;           // 0xC4

            int mSDState;  // 0xC8

            bool mArwRVisible;  // 0xCC
            bool mArwLVisible;  // 0xCD

            int mProcessType;  // 0xD0

            IntentType mActionIntent;  // 0xD4
        };
    }  // namespace scene
}  // namespace ipl

#endif  // IPL_SCENE_CHANNEL_EDIT_H
