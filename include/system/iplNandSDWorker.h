#ifndef IPL_NAND_SD_WORKER_H
#define IPL_NAND_SD_WORKER_H

#include <revolution.h>
#include <revolution/wad.h>

// TODO: Move WIISaveBannerFile to a better place
#include "scene/saveDataEdit/iplWiiBannerFileInfo.h"

#include "system/iplChannelManager.h"

namespace ipl {
    class NandSDWorker {
    public:
        enum SDState {
            SD_STATE_INITIAL = 0,        // 0
            SD_STATE_SLOT_EMPTY = 1,     // 1
            SD_STATE_NOT_MOUNTED = 2,    // 2
            SD_STATE_BROKEN_MEDIA = 3,   // 3
            SD_STATE_ILLEGAL_MEDIA = 4,  // 4
            SD_STATE_ERRORED = 5,        // 5
            SD_STATE_READY = 6,          // 6
            SD_STATE_MOUNTED = 7,        // 7
        };
        struct TitleUsage {
            ESTitleId mTitleId;
            u32 mSize;
            u32 mInode;
        };
        struct TitleIdList {
            ESTitleId* pTitleIds;
            u32 mCount;
        };

        enum NandSDWorkerResult {
            WORKER_RESULT_OK = 0,                   // 0
            WORKER_RESULT_WORKING = -1,             // -1
            WORKER_RESULT_GENERIC_ERR = -2,         // -2
            WORKER_RESULT_BAD_FILE = -3,            // -3
            WORKER_RESULT_TOO_MANY_FILES = -4,      // -4
            WORKER_RESULT_NAND_CORRUPT = -5,        // -5
            WORKER_RESULT_ALREADY_EXISTS = -6,      // -6
            WORKER_RESULT_NO_SPACE = -7,            // -7
            WORKER_RESULT_SYSFILES_CORRUPT = -8,    // -8
            WORKER_RESULT_BROKEN_MEDIA = -9,        // -9
            WORKER_RESULT_ILLEGAL_MEDIA = -10,      // -10
            WORKER_RESULT_WRITE_PROTECTED = -11,    // -11
            WORKER_RESULT_UNK_N12 = -12,            // -12
            WORKER_RESULT_NOCOPY = -13,             // -13
            WORKER_RESULT_ES_ERROR = -14,           // -14
            WORKER_RESULT_NOT_TRANSFERRABLE = -15,  // -15
            WORKER_RESULT_VERSION_ERR = -16,        // -16
            WORKER_RESULT_UNK_N18 = -18,            // -18
        };

        NandSDWorker();
        ~NandSDWorker();

        void create(void* work, void* savesBuf, void* appsBuf, int prio);

        int get_async_result();

        SDState get_sd_state();

        u32 get_nand_save_num();
        u32 get_nand_app_num();

        s32 get_sd_save_num();
        s32 get_sd_app_num();

        void startup_async();
        void terminate_async();

        void mount_sd_async();
        void format_sd_async();

        void iplNandSD_81348DFC(ESTitleId32, void*, void*);
        void update_loc_dat_async(ESTitleId32* titleIds);
        void read_loc_dat_async(ESTitleId32* titleIds);
        void iplNandSD_81348E58(ESTitleId, void*, void*);
        void check_backup_fits_async(TitleIdList* newTitles, TitleIdList* replacingTitles);
        void iplNandSD_81348EA8(void*, void*, void*);

        void iplNandSD_81349000(void*, void*);

        void list_nand_app_async(ESTitleId*);
        void list_nand_save_async(ESTitleId*);
        void list_sd_app_async(ESTitleId32*);
        void list_sd_save_async(ESTitleId32*);

        void nand_app_exist_async(ESTitleId);
        void sd_save_exist_async(ESTitleId32);

        void nocopy_exist_nand_save_async(ESTitleId);
        void nand_save_exist_async(ESTitleId);
        void nand_save_exist_lo_async(ESTitleId32);
        void sd_app_exist_async(ESTitleId32);
        void both_app_exist_async(ESTitleId32);

        void get_nand_user_free_area_async();
        void get_sd_free_area_async(u64* out);

        void get_nand_app_thumbnail_async(ESTitleId titleId, void* lytBuf, channel::SChanMgrMetaHeader* file);
        void get_sd_app_thumbnail_async(ESTitleId32 titleId, u8* lytBuf, channel::SChanMgrMetaHeader* file);
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

        void get_nand_save_perms_async(ESTitleId titleId);
        void get_sd_save_perms_async(ESTitleId32 titleId);
        void check_sd_title_restorable_async(ESTitleId32 titleId);
        void move_sd_app_to_nand_async(ESTitleId32 titleId);
        void move_nand_save_to_sd_async(ESTitleId titleId);
        void move_sd_save_to_nand_async(ESTitleId32 titleId);
        void move_nand_app_to_sd_async(ESTitleId titleId);
        void change_nand_app_count_async(s32 delta);

        BOOL is_sd_write_protected();
        char get_sd_drive_letter();

        void initialize_nand_async();

        BOOL is_terminated();
        BOOL is_working();

        static bool is_disk_or_user_nand_app(ESTitleId titleId);
        static bool is_user_nand_app(ESTitleId titleId);
        static bool is_data_only_title(ESTitleId titleId);
        static bool is_available_data_only_titleidlo(ESTitleId32 titleId);

        inline static u32 workerWorkSize() { return sizeof(Work); }
        inline static u32 heapSizeForAppWorker() { return appCacheHeapSize() + 0x40000; }
        inline static u32 heapSizeForSaveWorker() { return saveCacheHeapSize() + 0x40000; }

    protected:
        enum WorkState {
            WORKER_STATE_IDLE = 0x00,     // 0x00
            WORKER_STATE_WORKING = 0x01,  // 0x01
        };

        struct Work {
            FACacheBuf mFatCacheBuf[40];      // 0x00000
            FACachePage mFatCachePages[40];   // 0x05000
            u8 mHeap19000Buf[100 * 1024];     // 0x05640
            FADrvTbl mFatDriveTable;          // 0x1e640
            FACacheSetting mFatCacheSetting;  // 0x1e64c
            nw4r::ut::List mSavesListNand;    // 0x1e660
            nw4r::ut::List mSavesListSD;      // 0x1e66c
            nw4r::ut::List mAppsListNand;     // 0x1e678
            nw4r::ut::List mAppsListSD;       // 0x1e684
            MEMHeapHandle pHeap19000;         // 0x1e690
            MEMHeapHandle pSaveCacheHeap;     // 0x1e694
            MEMHeapHandle pAppCacheHeap;      // 0x1e698
            MEMHeapHandle pBothHeap;          // 0x1e69c
            MEMAllocator mBothHeapAllocator;  // 0x1e6a0
            u8 mThreadStack[0x20000];         // 0x1e6b0
            OSThread mThread;                 // 0x3e6b0
            OSMutex mMutex;                   // 0x3e9c8
            OSMessageQueue mMsgQueue;         // 0x3e9e0
            OSMessage mMsgQueueBuf[8];        // 0x3ea00
            WorkState mState;                 // 0x3ea20
            s32 mAsyncResult;                 // 0x3ea24
            int mNandSaveNum;                 // 0x3ea28
            int mNandAppNum;                  // 0x3ea2c
            int mSdSaveNum;                   // 0x3ea30
            int mSdAppNum;                    // 0x3ea34
            void* pParamA;                    // 0x3ea38
            void* pParamB;                    // 0x3ea3c
            void* pParamC;                    // 0x3ea40
            u64 mTitleId;                     // 0x3ea48
            u64 mUid;                         // 0x3ea50
            BOOL mIsSDWriteProtected;         // 0x3ea50
            int mSdMountErr;                  // 0x3ea5c
        };

        struct AppCacheEntry {
            u64 titleId;                           // 0x00000
            s32 mFileSize;                         // 0x00008
            s32 mThumbnailSize;                    // 0x0000c
            nw4r::ut::Link mLink;                  // 0x00010
            u8 mThumbnail[100 * 1024];             // 0x00018
            channel::SChanMgrMetaHeader mMetaHdr;  // 0x19018
            u8 unk_0x19018[8];                     // 0x19618
        };
        struct SaveCacheEntry {
            WIISaveBannerFile mBanner;  // 0x0000
            u64 mTitleId;               // 0xf0a0
            s32 mSize;                  // 0xf0a8
            nw4r::ut::Link mLink;       // 0xf0ac
            u8 unk_0xf0b4[12];          // 0xf0b4
        };

        struct SDSaveBanner {
            ESTitleId mTitleId;         // 0x000
            u32 mHdrSize;               // 0x008
            u8 mPerms;                  // 0x00c
            u8 mAttrib;                 // 0x00d
            u8 mMd5Digest[0x10];        // 0x00e
            WIISaveBannerFile mBanner;  // 0x020
        };
        struct SDAppBanner {
            ESTitleId mTitleId;                    // 0x000
            u32 mThumbnailSize;                    // 0x008
            u8 mHdrMd5[0x10];                      // 0x00c
            u8 mIconMd5[0x10];                     // 0x01c
            u64 unk_0x030;                         // 0x030
            u64 unk_0x038;                         // 0x038
            channel::SChanMgrMetaHeader mMetaHdr;  // 0x040
        };

        struct ContentBin {
            SDAppBanner hdr;  // 0x0000
            u8 icon[0xc800];  // 0x0640
        };

        struct LocDat {
            char mMagic[4];              // 0x000
            u8 mMd5Digest[0x10];         // 0x004
            ESTitleId32 mTitleIds[240];  // 0x014
            u8 mPadding[0xc];            // 0x3d4
        };

        enum WorkMessage {
            MSG_TERMINATE = 0x01,                  // 0x01
            MSG_STARTUP = 0x02,                    // 0x02
            MSG_MOUNT_SD = 0x03,                   // 0x03
            MSG_LIST_NAND_SAVE = 0x04,             // 0x04
            MSG_GET_NAND_SAVE_BANNER = 0x05,       // 0x05
            MSG_LIST_SD_SAVE = 0x06,               // 0x06
            MSG_GET_SD_SAVE_BANNER = 0x07,         // 0x07
            MSG_GET_NAND_SAVE_SIZE = 0x08,         // 0x08
            MSG_DEL_NAND_SAVE = 0x09,              // 0x09
            MSG_GET_SD_SAVE_SIZE = 0x0a,           // 0x0a
            MSG_DEL_SD_SAVE = 0x0b,                // 0x0b
            MSG_INITIALIZE_NAND = 0x0c,            // 0x0c
            MSG_GET_NAND_USER_FREE_AREA = 0x0d,    // 0x0d
            MSG_COPY_NAND_SAVE_TO_SD = 0x0e,       // 0x0e
            MSG_COPY_SD_SAVE_TO_NAND = 0x0f,       // 0x0f
            MSG_FORMAT_SD = 0x10,                  // 0x10
            MSG_GET_SD_FREE_AREA = 0x11,           // 0x11
            MSG_LIST_NAND_APP = 0x12,              // 0x12
            MSG_GET_NAND_APP_THUMBNAIL = 0x13,     // 0x13
            MSG_DEL_NAND_APP_A = 0x14,             // 0x14
            MSG_COPY_NAND_APP_TO_SD = 0x15,        // 0x15
            MSG_COPY_SD_APP_TO_NAND_A = 0x16,      // 0x16
            MSG_LIST_SD_APP = 0x17,                // 0x17
            MSG_DEL_SD_APP = 0x18,                 // 0x18
            MSG_GET_SD_APP_SIZE = 0x19,            // 0x19
            MSG_GET_SD_APP_THUMBNAIL = 0x1a,       // 0x1a
            MSG_GET_NAND_APP_SIZE = 0x1b,          // 0x1b
            MSG_NOCOPY_EXIST_NAND_SAVE = 0x1c,     // 0x1c
            MSG_NAND_SAVE_EXIST = 0x1d,            // 0x1d
            MSG_NAND_SAVE_EXIST_LO = 0x1e,         // 0x1e
            MSG_NAND_APP_EXIST = 0x1f,             // 0x1f
            MSG_BOTH_APP_EXIST = 0x20,             // 0x20
            MSG_SD_SAVE_EXIST = 0x21,              // 0x21
            MSG_SD_APP_EXIST = 0x22,               // 0x22
            MSG_GET_NAND_SAVE_PERMS = 0x23,        // 0x23
            MSG_GET_SD_SAVE_PERMS = 0x24,          // 0x24
            MSG_MOVE_NAND_SAVE_TO_SD = 0x25,       // 0x25
            MSG_MOVE_SD_SAVE_TO_NAND = 0x26,       // 0x26
            MSG_MOVE_NAND_APP_TO_SD = 0x27,        // 0x27
            MSG_MOVE_SD_APP_TO_NAND = 0x28,        // 0x28
            MSG_UNK_x29 = 0x29,                    // 0x29
            MSG_UPDATE_LOC_DAT = 0x2a,             // 0x2a
            MSG_READ_LOC_DAT = 0x2b,               // 0x2b
            MSG_UNK_x2c = 0x2c,                    // 0x2c
            MSG_LIST_NAND_APPS_USAGES = 0x2d,      // 0x2d
            MSG_CHECK_BACKUP_FITS = 0x2e,          // 0x2e
            MSG_COPY_SD_APP_TO_NAND_B = 0x2f,      // 0x2f
            MSG_DEL_NAND_APP_B = 0x30,             // 0x30
            MSG_UNK_x31 = 0x31,                    // 0x31
            MSG_CHANGE_NAND_APP_COUNT = 0x32,      // 0x32
            MSG_CHECK_SD_TITLE_RESTORABLE = 0x33,  // 0x33
        };

        enum RecursiveProcess {
            RECURSIVE_GET_SIZE = 0,
            RECURSIVE_DELETE = 1,
            RECURSIVE_MOVE = 2,
        };

        enum FileKind {
            FILEKIND_NAND = 1,
            FILEKIND_ES_CONTENT = 2,
        };

        enum NandTitleExistence {
            EXISTENCE_NOEXIST = 0,
            EXISTENCE_INCOMPLETE = 1,
            EXISTENCE_COMPLETE = 2,
        };

        inline static u32 appCacheHeapSize() { return MEMCalcHeapSizeForUnitHeap(sizeof(AppCacheEntry), 96, 0x20); }
        inline static u32 saveCacheHeapSize() { return MEMCalcHeapSizeForUnitHeap(sizeof(SaveCacheEntry), 90, 0x20); }

        static void sd_insert_callback(signed char driveLetter);
        static void sd_eject_callback(signed char driveLetter);

        static ESTitleId32 gamecode_to_titleid_lo(const char* gamecode);

        static void* thread_main(void*);

        static int encrypt(const void* input, u32 inputSize, void* output);
        static int decrypt(const void* input, u32 inputSize, void* output);
        bool check_md5(const u8* digest, const u8* input, u32 inputSize);

        bool check_nand_corrupt(s32 nandCode, s32* errcodeOut);

        WorkState get_state();
        void set_state(WorkState newState);

        void add_save_cache(nw4r::ut::List* list, ESTitleId titleId, WIISaveBannerFile* saveData, s32 size);
        void add_app_cache(nw4r::ut::List* list, ESTitleId titleId, u8* thumb, u32 thumbSize, channel::SChanMgrMetaHeader* metaHdr, s32 fileSize);
        SaveCacheEntry* find_save_cache(nw4r::ut::List* list, ESTitleId titleId);
        AppCacheEntry* find_app_cache(nw4r::ut::List* list, ESTitleId titleId);
        void clear_save_cache(nw4r::ut::List* list);
        void clear_app_cache(nw4r::ut::List* list);
        void delete_save_cache(nw4r::ut::List* list, ESTitleId titleId);
        void delete_app_cache(nw4r::ut::List* list, ESTitleId titleId);

        WIISaveBannerFile* get_cached_nand_save_banner(ESTitleId titleId);
        void* get_cached_nand_app_thumbnail(ESTitleId titleId, u32*);
        WIISaveBannerFile* get_cached_sd_save_banner(ESTitleId32 titleId);
        void* get_cached_sd_app_thumbnail(ESTitleId32 titleId, u32*);

        channel::SChanMgrMetaHeader* get_cached_nand_app_meta_header(ESTitleId titleId);
        channel::SChanMgrMetaHeader* get_cached_sd_app_meta_header(ESTitleId32 titleId);

        s32 get_cached_nand_save_size(ESTitleId titleId);
        s32 get_cached_nand_app_size(ESTitleId titleId);
        s32 get_cached_sd_save_size(ESTitleId32 titleId);
        s32 get_cached_sd_app_size(ESTitleId32 titleId);

        int delete_meta_file(ESTitleId titleId);

        void* run();

        /**
         * @brief Verifies if the banner header is valid.
         * @param pBnrData The buffer containing the banner data.
         * @param headerSize Header file size.
         */
        bool check_header_base(const u8* bnrData, u32* headerSize = NULL);

        void send_work(WorkMessage);
        WorkMessage wait_work();

        int get_nand_save_banner(ESTitleId titleId, WIISaveBannerFile* fileOut, u32* sizeOut);
        int get_sd_save_banner(ESTitleId32 titleId, SDSaveBanner* bannerOut);
        int get_sd_app_banner(ESTitleId32 titleId, SDAppBanner* bannerOut);
        int get_save_banner_for_data_only_title(ESTitleId titleId, WIISaveBannerFile* fileOut, u32* sizeOut);
        int get_sd_save_list(ESTitleId32* titleIds);
        int get_sd_app_list(ESTitleId32* titleIds);

        int delete_ticket(ESTitleId titleId);

        int delete_download_task(ESTitleId32 titleId);
        int delete_nand_app_content(ESTitleId titleId);

        int recursion_nand(const char* pathMain, const char* pathMoveTarget, RecursiveProcess process, const char** ignoreList, u32 ignoreListLen);
        int recursion_nand_save(ESTitleId titleId, RecursiveProcess process, const char** ignoreList, u32 ignoreListLen);

        int get_sd_save_size(ESTitleId32 titleId);
        int get_sd_app_size(ESTitleId32 titleId);

        s32 get_nand_app_thumbnail(ESTitleId titleId, u8* thumbnailOut, channel::SChanMgrMetaHeader* metaHdrOut);

        int item_exist_nand_save_folder(ESTitleId titleId, const char* folderName);
        bool check_nand_save_banner_exist(ESTitleId titleId);
        bool nand_app_exist(ESTitleId titleId);
        int nand_app_exist_ex(ESTitleId titleId);
        bool both_app_exist(ESTitleId32 titleId);
        int sd_file_exist(const char* path, u32 size);

        s32 nand_get_length(const char* path);

        bool is_all_region(ESTitleId titleId);
        bool is_same_title(ESTitleId titleIdA, ESTitleId titleIdB);

        bool check_nand_save_exist_lo(ESTitleId32 titleId);

        int get_nand_save_perms(ESTitleId titleId);
        int get_sd_save_perms(ESTitleId32 titleId);
        int check_sd_title_restorable(ESTitleId32 titleId);

        int get_num_nand_data_only_title_save_files(ESTitleId titleId, u32* numFiles);

        u64 get_sd_free_area();
        int get_nand_free_area(u32* sysInodes, u32* sysFsblocks, s32* usrInodes, s32* usrFsblocks);

        int clean_duplicated_nand_app(ESTitleId* titleIds, u32 titleIdCount);
        int clean_partial_nand_app(ESTitleId* titleIds, u32 titleIdCount, u32* numNandAppsOut);
        int clean_partial_nand_save(ESTitleId* titleIds, u32 titleIdCount, u32* numNandSavesOut);

        int check_nand_free_area(u32 sysInodes, u32 sysFsblocks, s32 usrInodes, s32 usrFsblocks);

        int call_fa_mount();

        int handle_sd_error(FAError err, s32* out);
        int handle_sd_error_for_entry(FAError err, s32* out);

        s32 get_sd_app_thumbnail(const SDAppBanner* banner, u8* thumbnailOut);

        int get_sd_wad_header(ESTitleId32 titleid, WADBackupHeader*, u32 offset);

        int get_nand_title_version(ESTitleId titleId, u16* versionOut);
        int get_sd_title_version(ESTitleId32 titleId, u16* versionOut);

        int initialize_meta();
        int delete_nand_disk_app_with_ticket();
        int delete_nand_titles();
        int delete_empty_title(ESTitleId titleId, bool force);
        int create_sd_backup_dir(ESTitleId titleId);
        int create_sd_dir(const char* base, const char* final);
        int get_app_banner_from_meta(ESTitleId titleId, SDAppBanner* banner);
        s32 open_nand_app_content(ESTitleId titleId, u16 contentIdx, u32* sizeOut, ESTicketView** ticketViewOut);
        int read_file(void*, FileKind fileKind, s32, u32, void*);
        int get_nand_app_tmdview(ESTitleId titleId, ESTmdView** tmdViewOut);
        static bool content_exist(ESTmdView* tmdView, u32 contentIdx);

        s32 search_meta_header(const u8* buf);
        bool check_header_md5(u8* buf);
        s32 uncompress_app_thumbnail(const u8* cmpr, u32 uncmprSize, u8* uncmpr);

        s32 get_sd_entry_list(const char* filename, ESTitleId32* titleIdsOut, u32 minSize);

        static void decompress(const u8* in, void* out);
        static bool is_compressed(const u8*);
        static bool is_sli_compressed(const u8*);
        static bool is_asr_compressed(const u8*);
        static bool is_ash_compressed(const u8*);
        static bool is_lz7_compressed(const u8*);
        static u32 get_decode_size(const u8*);

    private:
        // static void get_nand_save_path(ESTitleId titleId, char* outStr);
        // static void get_nand_app_path(ESTitleId titleId, char* outStr);
        // static void get_nand_meta_file_path(ESTitleId titleId, char* outStr);
        // static void get_nand_meta_dir_path(ESTitleId titleId, char* outStr);
        static void get_sd_save_path(ESTitleId titleId, char* outStr);
        static void get_sd_app_path(ESTitleId titleId, char* outStr);

        void do_startup();
        void do_mount_sd();
        void do_list_nand_save();
        void do_list_nand_app();
        void do_get_sd_save_banner();
        void do_get_sd_app_thumbnail();
        void do_get_nand_save_size();

        void do_delete_sd_save();
        void do_delete_sd_app();
        void do_initialize_nand();
        void do_get_nand_user_free_area();

        void do_copy_nand_save_to_sd();
        void do_copy_sd_save_to_nand();
        void do_copy_nand_app_to_sd();
        void do_copy_sd_app_to_nand(bool ignoreSC);

        void do_get_nand_app_size();
        void do_format_sd();

        void do_unk_8134B728();
        void do_update_loc_dat();
        void do_read_loc_dat();
        void do_unk_8134BED0();
        void check_backup_fits();
        void do_list_nand_apps_usages();
        void do_unk_8134C838();

        void do_move_nand_app_to_sd();
        void do_move_sd_app_to_nand();
        void do_move_nand_save_to_sd();
        void do_move_sd_save_to_nand();

        void change_nand_app_count(s32 delta);
        bool change_uid(ESTitleId newTitleId);

        bool is_fa_file(u8 stat);

        int prepare_sd_copy(const char*);

        static void wad_backup_progress_callback(u32 completed, u32 total, BOOL done);

        Work* pWork;   // 0x0
        bool unk_0x4;  // 0x4

        static const char* c_banner_file_name;
        static const char* c_nocopy_folder_name;
        static const char* c_notransfer_folder_name;
        static const char* c_wii_sd_title_root;
        static const char* c_sd_save_file_name;
        static const char* c_sd_app_file_name;
        static const char* c_succession_path;
        static const char* c_transferid_path;
        static const char* c_tmp_work_path;
        static const char* c_ignore_list_for_shared2[5];
        static const char* c_ignore_list_for_wiimenu[2];
        static const char* c_wii_menu_save_path;

        static const u8 c_md5_secret_key[0x10];
        static const u8 c_es_encrypt_iv[0x10];

        static SDState s_sd_state;
        static int s_completion_pct;
    };
}  // namespace ipl

#endif  // IPL_NAND_SD_WORKER_H
