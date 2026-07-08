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

            void onPoint(AnmPane * pane);
            void onLeft(AnmPane * pane);
            void onTrig(AnmPane * pane);
            void onTrig(SavedataBox * box);
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
                STATE_10,
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
                STATE_ON_SD_MOUNT,
                STATE_ON_SD_MESSAGE1ST,
                STATE_ON_SD_MESSAGE2ND,
                STATE_ON_SD_MESSAGE3RD,
                STATE_ON_PROCESS,
                STATE_ON_END_PROCESS,
                STATE_ON_EXIST_SAVE,
                STATE_ON_SD_MOUNT_ONLY,
                STATE_ON_TRIG_MOVE,
                STATE_ON_VERIFY_MOVE,
            };

            enum {
                MEMORY_PAGE_WII = 0,
                MEMORY_PAGE_SD,
            };

            enum IntentType {
                MEMORY_INTENT_NONE = 0,
                MEMORY_INTENT_COPY,
                MEMORY_INTENT_MOVE,
            };

            enum {
                PROC_NUL = 0,
                PROC_CPY,
                PROC_DEL,
                PROC_FMT,
                PROC_MOV,
            };

            int mState;  // 0x54

            nand::LayoutFile* mpLayout;       // 0x58
            nand::LayoutFile* mpBalloonFilm;  // 0x5C

            SavedataBase* mpSavedataBase;  // 0x60
            nand::File* mpCorruptFile;     // 0x64

            SavedataEdit* mpSavedataEdit;     // 0x68
            nw4r::ut::List mSavedataBoxList;  // 0x6C

            NandSDCardManager* mpNandSDCardManager;  // 0x78

            static const int MAX_BALLOONS = 15;

            TextBalloon* mpBalloons[MAX_BALLOONS];  // 0x7C

            int mPage;                  // 0xB8
            SavedataBox* mpCurrentBox;  // 0xBC
            int mPageOffset;            // 0xC0

            int mSdState;  // 0xC4

            bool mArwRVisible;  // 0xC8
            bool mArwLVisible;  // 0xC9

            int mProcessType;  // 0xCC

            IntentType mActionIntent;  // 0xD0
        };
    }  // namespace scene
}  // namespace ipl

#endif  // IPL_SCENE_MEMORY_H
