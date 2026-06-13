#ifndef IPL_NAND_SD_WORKER_H
#define IPL_NAND_SD_WORKER_H

#include <revolution.h>

// TODO: Move WIISaveBannerFile to a better place
#include "scene/saveDataEdit/iplWiiBannerFileInfo.h"

#include "system/iplChannelManager.h"

namespace ipl {
    class NandSDWorker {
    public:
        enum SDState {
            SD_STATE_FORMATTED = 0,          // 0
            SD_STATE_SLOT_EMPTY = 1,         // 1
            SD_STATE_NOT_MOUNTED = 2,        // 2
            SD_STATE_DECIVE_INCOMPAT_3 = 3,  // 3
            SD_STATE_DECIVE_INCOMPAT_4 = 4,  // 4
            SD_STATE_ERRORED = 5,            // 5
            SD_STATE_MOUNTED = 6,            // 6
        };
        NandSDWorker();
        ~NandSDWorker();

        void create(void* work, void* savesBuf, void* appsBuf, int);

        void startup_async();

        SDState get_sd_state();

        u32 get_nand_app_num();
        u32 get_nand_save_num();

        int get_async_result();

        void terminate_async();

        void mount_sd_async();
        void format_sd_async();

        void list_nand_app_async(ESTitleId*);
        void list_nand_save_async(ESTitleId*);
        void list_sd_app_async(ESTitleId32*);
        void list_sd_save_async(ESTitleId32*);

        void sd_app_exist_async(ESTitleId32);
        void nand_save_exist_lo_async(ESTitleId32);
        void iplNandSD_81349164(ESTitleId32);
        void sd_save_exist_async(ESTitleId32);

        void get_nand_user_free_area_async();
        void get_sd_free_area_async(u64* out);

        void get_nand_app_thumbnail_async(ESTitleId titleId, void* lytHeapBuf, channel::SChanMgrMetaHeader* file);
        void get_sd_app_thumbnail_async(ESTitleId32 titleId, u8* lytHeapBuf, channel::SChanMgrMetaHeader* file);
        void get_nand_save_banner_async(ESTitleId titleId, WIISaveBannerFile* file);
        void get_sd_save_banner_async(ESTitleId32 titleId, WIISaveBannerFile* file);

        void get_nand_app_size_async(ESTitleId titleId);
        void get_sd_app_size_async(ESTitleId32 titleId);
        void get_nand_save_size_async(ESTitleId titleId);
        void get_sd_save_size_async(ESTitleId32 titleId);

        void copy_nand_app_to_sd_async(ESTitleId titleId);
        void copy_sd_app_to_nand_async(ESTitleId32 titleId, bool);
        void copy_nand_save_to_sd_async(ESTitleId titleId);
        void copy_sd_save_to_nand_async(ESTitleId32 titleId);

        void delete_nand_app_async(ESTitleId titleId, bool);
        void delete_sd_app_async(ESTitleId32 titleId);

        void delete_nand_save_async(ESTitleId titleId);
        void delete_sd_save_async(ESTitleId32 titleId);

        void iplNandSD_81349180(ESTitleId titleId);
        void iplNandSD_81349198(ESTitleId32 titleId);

        void iplNandSD_81349230(ESTitleId32 titleId);
        void iplNandSD_813491CC(ESTitleId32 titleId);

        void iplNandSD_813491E8(ESTitleId titleId);

        void iplNandSD_81349200(ESTitleId32 titleId);

        void iplNandSD_813491B4(ESTitleId titleId);

        void iplNandSD_8134921C(bool);

        int get_sd_app_num();
        int get_sd_save_num();

        BOOL is_sd_write_protected();

        BOOL is_terminated();
        BOOL is_working();

    private:
        /**
         * @brief Verifies if the banner header is valid.
         * @param pBnrData The buffer containing the banner data.
         * @param headerSize Header file size.
         */
        BOOL check_header_base(const u8* bnrData, u32* headerSize = NULL);

        void* pWork;   // 0x0
        bool unk_0x4;  // 0x4
    };
}  // namespace ipl

#endif  // IPL_NAND_SD_WORKER_H
