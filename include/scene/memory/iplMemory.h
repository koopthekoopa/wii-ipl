#ifndef IPL_SCENE_MEMORY_H
#define IPL_SCENE_MEMORY_H

#include "iplSceneHeader.h"

#include "scene/channelEdit/iplAnmController.h"

#include "scene/saveDataEdit/iplSaveDataBase.h"
#include "scene/saveDataEdit/iplSaveDataBox.h"
#include "scene/saveDataEdit/iplSaveDataEdit.h"

#include "scene/channelEdit/iplNandSDCardManager.h"

namespace ipl {
    namespace scene {
        SCENE_CLASS(Memory) {
        public:
            Memory(EGG::Heap * heap);
            virtual ~Memory();

            void prepare() override;
            void create() override;
            void calc() override;

            void setpos_savedata_box();
            void fadein_savedata_box();
            void fadeout_savedata_box();

            void send_getbanner_cmd(bool isWiiNotSD);
            void update_sdcard_slot();
            void update_arw();
            void update_free();
            void update_nand_free();
            void update_sd_free();

            void start_process(int processType);
            void stop_process();

            void start_scroll_r(bool playButtonAnm, bool playSound);
            void start_scroll_l(bool playButtonAnm, bool playSound);

            bool enable_scroll_r();
            bool enable_scroll_l();

            virtual void draw() override;
            virtual BOOL isResetAcceptable() const override;

            void onPoint(AnmPane*);
            void onLeft(AnmPane*);
            void onTrig(AnmPane*);
            void onTrig(SavedataBox*);
            void onTrigButton(bool isErr);
            void onTrigDel();
            void onTrigCopy();
            void onTrigMove();

            void getCorruptIconTexture(GXTexObj * out) const;
            void getCorruptBannerTexture(GXTexObj * out) const;

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
            void on_sd_mount();
            void on_sd_message1st();
            void on_sd_message2nd();
            void on_sd_message3rd();
            void on_process();
            void on_end_process();
            void on_exist_save();
            void on_sd_mount_only();
            void on_trig_move();
            void on_verify_move();

        private:
            enum State {
                MEMORY_STATE_ON_NORMAL = 0x00,    // 0x00
                MEMORY_STATE_ON_FADEIN1ST,        // 0x01
                MEMORY_STATE_ON_FADEIN2ND,        // 0x02
                MEMORY_STATE_ON_FADEOUT1ST,       // 0x03
                MEMORY_STATE_ON_FADEOUT2ND,       // 0x04
                MEMORY_STATE_ON_SCROLL_R,         // 0x05
                MEMORY_STATE_ON_SCROLL_L,         // 0x06
                MEMORY_STATE_ON_CHANGE_TAG1ST,    // 0x07
                MEMORY_STATE_ON_CHANGE_TAG2ND,    // 0x08
                MEMORY_STATE_ON_TRIG_COPY,        // 0x09
                MEMORY_STATE_ON_UNUSED_0x0A,      // 0x0a
                MEMORY_STATE_ON_EDIT,             // 0x0b
                MEMORY_STATE_ON_EDIT_FADEIN,      // 0x0c
                MEMORY_STATE_ON_EDIT_FADEOUT1ST,  // 0x0d
                MEMORY_STATE_ON_EDIT_FADEOUT2ND,  // 0x0e
                MEMORY_STATE_ON_VERIFY1ST,        // 0x0f
                MEMORY_STATE_ON_VERIFY2ND,        // 0x10
                MEMORY_STATE_ON_VERIFY_COPY,      // 0x11
                MEMORY_STATE_ON_VERIFY_DEL,       // 0x12
                MEMORY_STATE_ON_VERIFY_FORMAT,    // 0x13
                MEMORY_STATE_ON_END_FORMAT,       // 0x14
                MEMORY_STATE_ON_SD_MOUNT,         // 0x15
                MEMORY_STATE_ON_SD_MESSAGE1ST,    // 0x16
                MEMORY_STATE_ON_SD_MESSAGE2ND,    // 0x17
                MEMORY_STATE_ON_SD_MESSAGE3RD,    // 0x18
                MEMORY_STATE_ON_PROCESS,          // 0x19
                MEMORY_STATE_ON_END_PROCESS,      // 0x1a
                MEMORY_STATE_ON_EXIST_SAVE,       // 0x1b
                MEMORY_STATE_ON_SD_MOUNT_ONLY,    // 0x1c
                MEMORY_STATE_ON_TRIG_MOVE,        // 0x1d
                MEMORY_STATE_ON_VERIFY_MOVE,      // 0x1e
            };

            enum Page {
                MEMORY_PAGE_WII = 0,
                MEMORY_PAGE_SD = 1,
            };

            enum IntentType {
                MEMORY_INTENT_NONE = 0,
                MEMORY_INTENT_COPY = 1,
                MEMORY_INTENT_MOVE = 2,
            };

            enum {
                MEMORY_PROC_NUL = 0,  // 0
                MEMORY_PROC_CPY = 1,  // 1
                MEMORY_PROC_DEL = 2,  // 2
                MEMORY_PROC_FMT = 3,  // 3
                MEMORY_PROC_MOV = 4,  // 4
            };

            State mState;                           // 0x54
            nand::LayoutFile* pWiiMemLytFile;       // 0x58
            nand::LayoutFile* pBalloonLytFile;      // 0x5c
            SavedataBase* pSavedataBase;            // 0x60
            nand::File* pCorruptTexFile;            // 0x64
            SavedataEdit* pSavedataEdit;            // 0x68
            nw4r::ut::List mSavedataBoxList;        // 0x6c
            NandSDCardManager* pNandSDCardManager;  // 0x78
            TextBalloon* mTextBalloonArr[15];       // 0x7c
            Page mPage;                             // 0xb8
            SavedataBox* pCurrBox;                  // 0xbc
            int mPageOffset;                        // 0xc0
            int mSdState;                           // 0xc4
            bool mArwRVisible;                      // 0xc8
            bool mArwLVisible;                      // 0xc9
            int mProcessType;                       // 0xcc
            IntentType mActionIntent;               // 0xd0
        };
    }  // namespace scene
}  // namespace ipl

#endif  // IPL_SCENE_MEMORY_H
