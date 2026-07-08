#ifndef IPL_SCENE_NAND_SD_CARD_MANAGER_H
#define IPL_SCENE_NAND_SD_CARD_MANAGER_H

#include <revolution/types.h>

#include "scene/channelEdit/iplChanAppBox.h"
#include "scene/channelEdit/iplThumbnail.h"

#include "scene/saveDataEdit/iplSaveDataBox.h"
#include "scene/saveDataEdit/iplWiiBannerFileInfo.h"

#include "system/iplNandSDWorker.h"

namespace ipl {
    namespace scene {
        class NandSDCardManager {
        public:
            enum Mode {
                NAND_MODE_SAVES = 0,
                NAND_MODE_APPS,
            };

            NandSDCardManager(Mode mode);
            ~NandSDCardManager();

            void calc();

            void cmdGetThumbnail(ChanAppBox*, int idx, bool isWiiNotSD);
            void cmdGetWiiBanner(SavedataBox*, int idx, bool isWiiNotSD);

            void cmdTerminate();

            void cmdSDMount();
            void cmdSDFormat();

            void cmdGetNandFree();
            void cmdGetSDFree();

            void cmdCopySaveNandToSD(ESTitleId titleId);
            void cmdCopySaveSDToNand(ESTitleId32 titleId);

            void cmdCopyAppNandToSD(ESTitleId titleId);
            void cmdCopyAppSDToNand(ESTitleId32 titleId);

            void cmdDelNandApp(ChanAppBox* box);
            void cmdDelSDApp(ChanAppBox* box);

            void cmdDelNandSave(SavedataBox* box);
            void cmdDelSDSave(SavedataBox* box);

            void cmdCleanQueue();

            void cmdListNand();
            void cmdListSD();

            void cmdExistNandApp(ESTitleId32 titleId);
            void cmdExistNandSave(ESTitleId32 titleId);
            void cmdExistSDApp(ESTitleId32 titleId);
            void cmdExistSDSave(ESTitleId32 titleId);

            void cmdMoveAppNandToSD(ChanAppBox* box);
            void cmdMoveAppSDToNand(ChanAppBox* box);

            void cmdMoveSaveNandToSD(SavedataBox* box);
            void cmdMoveSaveSDToNand(SavedataBox* box);

            bool isWorking() { return mState != STATE_NORMAL || mCmdQueue.get_current_index() > 0; }

            int getAsyncResult();

            NandSDWorker* getWorker() { return mpWorker; }

            inline int getNandBlocksFree() { return mNandBlocksFree; }
            inline int getSDBlocksFree() { return mSDBlocksFree; }

            inline bool isSDWriteProtected() { return mpWorker->is_sd_write_protected() == TRUE; }

            inline bool isTerminated() { return mState == STATE_STOPPED; }

            inline BOOL sdWorkerReadyMaybe() { return mThumbCmdQueue.current == 0 && mCmdQueue.current == 0; }

            inline ESTitleId getTmpTitle() { return mTmpTitleId; }

            void disableThumbnailFetching() { mbDisableThumbFetch = true; }
            void enableThumbnailFetching() { mbDisableThumbFetch = false; }

        private:
            enum {
                STATE_INIT = 0,
                STATE_STARTUP,
                STATE_CHECK_EXIST,
                STATE_MOUNT_SD,
                STATE_LIST_NANDAPP,
                STATE_LIST_SDAPP,
                STATE_GET_NAND_FREE,
                STATE_GET_SD_FREE,
                STATE_NORMAL,
                STATE_TERMINATE,
                STATE_COPY_NANDSAVE_TO_SD,
                STATE_COPY_SDSAVE_TO_NAND,
                STATE_12,
                STATE_COPY_NANDAPP_TO_SD,
                STATE_COPY_SDAPP_TO_NAND,
                STATE_DEL_NANDAPP,
                STATE_DEL_NANDSAVE,
                STATE_DEL_SDAPP,
                STATE_DEL_SDSAVE,
                STATE_GET_THUMBNAIL,
                STATE_GET_THUMBNAIL_SIZE,
                STATE_GET_WIIBANNER,
                STATE_GET_WIIBANNER_SIZE,
                STATE_GET_WIIBANNER_PERMS,
                STATE_SC_FLUSH,
                STATE_CHANGE_NAND_APP_COUNT,
                STATE_MOVE_NANDSAVE_TO_SD,
                STATE_MOVE_SDSAVE_TO_NAND,
                STATE_MOVE_NANDAPP_TO_SD,
                STATE_MOVE_SDAPP_TO_NAND,
                STATE_CHECK_SD_TITLE_RESTORABLE,
                STATE_STOPPED,
            };

            enum CommandTag {
                CMD_NUL,
                CMD_TERMINATE,
                CMD_MOUNT_SD,
                CMD_FORMAT_SD,
                CMD_GET_NAND_FREE,
                CMD_GET_SD_FREE,
                CMD_6,
                CMD_COPY_NANDSAVE_TO_SD,
                CMD_COPY_SDSAVE_TO_NAND,
                CMD_COPY_SDAPP_TO_NAND,
                CMD_COPY_NANDAPP_TO_SD,
                CMD_DEL_NANDAPP,
                CMD_DEL_NANDSAVE,
                CMD_DEL_SDAPP,
                CMD_DEL_SDSAVE,
                CMD_CLEAN_QUEUE,
                CMD_LIST_NAND,
                CMD_LIST_SD,
                CMD_NAND_APP_EXIST,
                CMD_NAND_SAVE_EXIST,
                CMD_SD_APP_EXIST,
                CMD_SD_SAVE_EXIST,
                CMD_MOVE_NANDSAVE_TO_SD,
                CMD_MOVE_SDSAVE_TO_NAND,
                CMD_MOVE_NANDAPP_TO_SD,
                CMD_MOVE_SDAPP_TO_NAND,
            };

            typedef struct Command {
                CommandTag tag;            // 0x00
                ChanAppBox* chanAppBox;    // 0x04
                SavedataBox* savedataBox;  // 0x08
                ESTitleId wiiTitleId;      // 0x10
                ESTitleId32 sdTitleId;     // 0x18
            } Command;

            typedef struct {
                ChanAppBox* channelBox;    // 0x00
                SavedataBox* savedataBox;  // 0x04
                int idx;                   // 0x08
                bool isWii;                // 0x0C
            } GetThumbnailCmd;

            struct TitleListing {
            public:
                inline TitleListing(ESTitleId wiiTitleId) : wiiTitleId(wiiTitleId) {}
                inline TitleListing(ESTitleId32 sdTitleId) : sdTitleId(sdTitleId) {}
                ESTitleId wiiTitleId;   // 0x00
                ESTitleId32 sdTitleId;  // 0x08
                nw4r::ut::Link link;    // 0x0C
            };

            void on_init();
            void on_startup();
            void on_check_exist();
            void on_mount_sd();
            void on_list_nandapp();
            void on_list_sdapp();
            void on_get_nand_free();
            void on_get_sd_free();
            void on_normal();
            void on_terminate();
            void on_copy_nandsave_to_sd();
            void on_copy_sdsave_to_nand();
            void on_copy_nandapp_to_sd();
            void on_copy_sdapp_to_nand();
            void on_del_nandapp();
            void on_del_nandsave();
            void on_del_sdapp();
            void on_del_sdsave();
            void on_get_thumbnail();
            void on_get_thumbnail_size();
            void on_get_wiibanner();
            void on_get_wiibanner_size();
            void on_get_wiibanner_perms();
            void on_sc_flush();
            void on_change_nand_app_count();
            void on_move_nandsave_to_sd();
            void on_move_sdsave_to_nand();
            void on_move_nandapp_to_sd();
            void on_move_sdapp_to_nand();
            void on_check_sd_title_restorable();

            void clean_command_queue();
            void get_thumbnail(GetThumbnailCmd);
            void get_wiibanner(GetThumbnailCmd);

            Thumbnail* get_free_thumbnail();
            WiiBannerFileInfo* get_free_banner();

            int mState;  // 0x00

            Mode mMode;  // 0x04

            NandSDWorker* mpWorker;  // 0x08
            void* mpWorkerWorkBuf;   // 0x0C
            void* mpWorkerDataBuf;   // 0x10

            ESTitleId* mpNandTitleIds;  // 0x14
            ESTitleId32* mpSDTitleIds;  // 0x18

            nw4r::ut::List mNandListingList;  // 0x1C
            nw4r::ut::List mSDListingList;    // 0x28

            undefined4 unk_0x34;        // 0x34
            Thumbnail mThumbnails[15];  // 0x38

            WiiBannerFileInfo mBanners[15];     // 0x5C90
            ChanAppBox* mpActiveChanAppBox;     // 0xE85E0
            Thumbnail* mpActiveThumbnail;       // 0xE85E4
            SavedataBox* mpActiveSavedataBox;   // 0xE85E8
            WiiBannerFileInfo* mpActiveBanner;  // 0xE85EC

            utility::Queue<Command, 4> mCmdQueue;                // 0xE85F0
            utility::Queue<GetThumbnailCmd, 15> mThumbCmdQueue;  // 0xE8680

            int mNandBlocksFree;  // 0xE8780
            int mSDBlocksFree;    // 0xE8784
            u64 mSDBytesFree;     // 0xE8788

            bool mbDisableThumbFetch;  // 0xE8790
            ESTitleId mTmpTitleId;     // 0xE8798
            bool unk_0xE87A0;          // 0xE87a0
        };
    }  // namespace scene
}  // namespace ipl

#endif  // IPL_SCENE_NAND_SD_CARD_MANAGER_H
