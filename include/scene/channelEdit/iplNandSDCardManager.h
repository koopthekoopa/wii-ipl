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
                NAND_MANAGER_MODE_SAVES = 0,
                NAND_MANAGER_MODE_APPS = 1,
            };

            NandSDCardManager(Mode);
            ~NandSDCardManager();

            void calc();

            void cmdGetThumbnail(ChanAppBox*, int idx, bool isWiiNotSD);
            void cmdGetWiiBanner(SavedataBox*, int idx, bool isWiiNotSD);

            void cmdTerminate();

            void cmdSDMount();
            void cmdSDFormat();

            void cmdGetNandFree();
            void cmdGetSDFree();

            void cmdCopySaveNandToSD(ESTitleId);
            void cmdCopySaveSDToNand(ESTitleId32);

            void cmdCopyAppNandToSD(ESTitleId);
            void cmdCopyAppSDToNand(ESTitleId32);

            void cmdDelNandApp(ChanAppBox*);
            void cmdDelSDApp(ChanAppBox*);

            void cmdDelNandSave(SavedataBox*);
            void cmdDelSDSave(SavedataBox*);

            void cmdCleanQueue();

            void cmdListNand();
            void cmdListSD();

            void cmdExistNandApp(ESTitleId32);
            void cmdExistNandSave(ESTitleId32);
            void cmdExistSDApp(ESTitleId32);
            void cmdExistSDSave(ESTitleId32);

            void cmdMoveAppNandToSD(ChanAppBox*);
            void cmdMoveAppSDToNand(ChanAppBox*);

            void cmdMoveSaveNandToSD(SavedataBox*);
            void cmdMoveSaveSDToNand(SavedataBox*);

            bool isWorking();

            int getAsyncResult();

            NandSDWorker* getWorker() { return pWorker; }

            inline int getNandBlocksFree() { return mNandBlocksFree; }
            inline int getSDBlocksFree() { return mSDBlocksFree; }

            inline bool isSDWriteProtected() { return pWorker->is_sd_write_protected() == TRUE; }

            inline bool isTerminated() { return mState == MANAGER_STATE_STOPPED; }

            inline int sdWorkerReadyMaybe() { return mThumbCmdQueue.current == 0 && mCmdQueue.current == 0; }

        private:
            enum State {
                MANAGER_STATE_INIT = 0x00,                       // 0x00
                MANAGER_STATE_STARTUP = 0x01,                    // 0x01
                MANAGER_STATE_CHECK_EXIST = 0x02,                // 0x02
                MANAGER_STATE_MOUNT_SD = 0x03,                   // 0x03
                MANAGER_STATE_LIST_NANDAPP = 0x04,               // 0x04
                MANAGER_STATE_LIST_SDAPP = 0x05,                 // 0x05
                MANAGER_STATE_GET_NAND_FREE = 0x06,              // 0x06
                MANAGER_STATE_GET_SD_FREE = 0x07,                // 0x07
                MANAGER_STATE_NORMAL = 0x08,                     // 0x08
                MANAGER_STATE_TERMINATE = 0x09,                  // 0x09
                MANAGER_STATE_COPY_NANDSAVE_TO_SD = 0x0a,        // 0x0a
                MANAGER_STATE_COPY_SDSAVE_TO_NAND = 0x0b,        // 0x0b
                MANAGER_STATE_COPY_NANDAPP_TO_SD = 0x0d,         // 0x0d
                MANAGER_STATE_COPY_SDAPP_TO_NAND = 0x0e,         // 0x0e
                MANAGER_STATE_DEL_NANDAPP = 0x0f,                // 0x0f
                MANAGER_STATE_DEL_NANDSAVE = 0x10,               // 0x10
                MANAGER_STATE_DEL_SDAPP = 0x11,                  // 0x11
                MANAGER_STATE_DEL_SDSAVE = 0x12,                 // 0x12
                MANAGER_STATE_GET_THUMBNAIL = 0x13,              // 0x13
                MANAGER_STATE_GET_THUMBNAIL_SIZE = 0x14,         // 0x14
                MANAGER_STATE_GET_WIIBANNER = 0x15,              // 0x15
                MANAGER_STATE_GET_WIIBANNER_SIZE = 0x16,         // 0x16
                MANAGER_STATE_GET_WIIBANNER_PERMS = 0x17,        // 0x17
                MANAGER_STATE_SC_FLUSH = 0x18,                   // 0x18
                MANAGER_STATE_CHANGE_NAND_APP_COUNT = 0x19,      // 0x19
                MANAGER_STATE_MOVE_NANDSAVE_TO_SD = 0x1a,        // 0x1a
                MANAGER_STATE_MOVE_SDSAVE_TO_NAND = 0x1b,        // 0x1b
                MANAGER_STATE_MOVE_NANDAPP_TO_SD = 0x1c,         // 0x1c
                MANAGER_STATE_MOVE_SDAPP_TO_NAND = 0x1d,         // 0x1d
                MANAGER_STATE_CHECK_SD_TITLE_RESTORABLE = 0x1e,  // 0x1e
                MANAGER_STATE_STOPPED = 0x1f,                    // 0x1f
            };

            enum CommandTag {
                CMD_NUL = 0x00,                  // 0x00
                CMD_TERMINATE = 0x01,            // 0x01
                CMD_MOUNT_SD = 0x02,             // 0x02
                CMD_FORMAT_SD = 0x03,            // 0x03
                CMD_GET_NAND_FREE = 0x04,        // 0x04
                CMD_GET_SD_FREE = 0x05,          // 0x05
                CMD_COPY_NANDSAVE_TO_SD = 0x07,  // 0x07
                CMD_COPY_SDSAVE_TO_NAND = 0x08,  // 0x08
                CMD_COPY_SDAPP_TO_NAND = 0x09,   // 0x09
                CMD_COPY_NANDAPP_TO_SD = 0x0a,   // 0x0a
                CMD_DEL_NANDAPP = 0x0b,          // 0x0b
                CMD_DEL_NANDSAVE = 0x0c,         // 0x0c
                CMD_DEL_SDAPP = 0x0d,            // 0x0d
                CMD_DEL_SDSAVE = 0x0e,           // 0x0e
                CMD_CLEAN_QUEUE = 0x0f,          // 0x0f
                CMD_LIST_NAND = 0x10,            // 0x10
                CMD_LIST_SD = 0x11,              // 0x11
                CMD_NAND_APP_EXIST = 0x12,       // 0x12
                CMD_NAND_SAVE_EXIST = 0x13,      // 0x13
                CMD_SD_APP_EXIST = 0x14,         // 0x14
                CMD_SD_SAVE_EXIST = 0x15,        // 0x15
                CMD_MOVE_NANDSAVE_TO_SD = 0x16,  // 0x16
                CMD_MOVE_SDSAVE_TO_NAND = 0x17,  // 0x17
                CMD_MOVE_NANDAPP_TO_SD = 0x18,   // 0x18
                CMD_MOVE_SDAPP_TO_NAND = 0x19,   // 0x19
            };
            struct Command {
            public:
                CommandTag mTag;            // 0x00
                ChanAppBox* pChanAppBox;    // 0x04
                SavedataBox* pSavedataBox;  // 0x08
                ESTitleId mWiiTitleId;      // 0x10
                ESTitleId32 mSDTitleId;     // 0x18
            };
            typedef struct {
                ChanAppBox* pChannelBox;    // 0x00
                SavedataBox* pSavedataBox;  // 0x04
                int mIdx;                   // 0x08
                bool mIsWiiNotSD;           // 0x0c
            } GetThumbnailCmd;

            struct TitleListing {
            public:
                inline TitleListing(ESTitleId wiiTitleId) : mWiiTitleId(wiiTitleId) {}
                inline TitleListing(ESTitleId32 sdTitleId) : mSDTitleId(sdTitleId) {}
                ESTitleId mWiiTitleId;   // 0x00
                ESTitleId32 mSDTitleId;  // 0x08
                nw4r::ut::Link mLink;    // 0x0c
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

            State mState;                                        // 0x00000
            Mode mMode;                                          // 0x00004
            NandSDWorker* pWorker;                               // 0x00008
            void* pWorkerWorkBuf;                                // 0x0000c
            void* pWorkerDataBuf;                                // 0x00010
            ESTitleId* pNandTitleIds;                            // 0x00014
            ESTitleId32* pSDTitleIds;                            // 0x00018
            nw4r::ut::List mNandListingList;                     // 0x0001c
            nw4r::ut::List mSDListingList;                       // 0x00028
            undefined4 unk_0x00034;                              // 0x00034
            Thumbnail mThumbnailArr[15];                         // 0x00038
            WiiBannerFileInfo mBannerArr[15];                    // 0x05c90
            ChanAppBox* pActiveChanAppBox;                       // 0xe85e0
            Thumbnail* pActiveThumbnail;                         // 0xe85e4
            SavedataBox* pActiveSavedataBox;                     // 0xe85e8
            WiiBannerFileInfo* pActiveBanner;                    // 0xe85ec
            utility::Queue<Command, 4> mCmdQueue;                // 0xe85f0
            utility::Queue<GetThumbnailCmd, 15> mThumbCmdQueue;  // 0xe8680
            int mNandBlocksFree;                                 // 0xe8780
            int mSDBlocksFree;                                   // 0xe8784
            u64 mSDBytesFree;                                    // 0xe8788
            bool unk_0xe8790;                                    // 0xe8790
            u32 unk_0xe8794;                                     // 0xe8794
            ESTitleId mTmpTitleId;                               // 0xe8798
            bool unk_0xe87a0;                                    // 0xe87a0
        };
    }  // namespace scene
}  // namespace ipl

#endif  // IPL_SCENE_NAND_SD_CARD_MANAGER_H
