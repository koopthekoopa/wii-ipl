#ifndef IPL_NAND_SD_WORKER_H
#define IPL_NAND_SD_WORKER_H

#include <revolution.h>
#include <revolution/fa.h>
#include <revolution/net.h>
#include <revolution/wad.h>

#include "system/iplSaveBanner.h"

#include "system/iplChannelManager.h"

namespace ipl {
    class NandSDWorker {
    public:
        typedef enum WorkSDState {
            SD_STATE_INITIAL = 0,
            SD_STATE_EJECTED,
            SD_STATE_INSERTED,
            SD_STATE_BROKEN,
            SD_STATE_ILLEGAL,
            SD_STATE_ERROR,
            SD_STATE_READY,
            SD_STATE_MOUNTED,
        } WorkSDState;

        struct TitleUsage {
            ESTitleId curTitleId;
            u32 size;
            u32 inode;
        };
        struct TitleIdList {
            ESTitleId* titleIds;
            u32 count;
        };

        enum NandSDWorkerResult {
            RESULT_OK = 0,
            RESULT_WORKING = -1,
            RESULT_FATAL_SD_ERROR = -2,
            RESULT_BAD_FILE = -3,
            RESULT_TOO_MANY_FILES = -4,
            RESULT_NAND_CORRUPT = -5,
            RESULT_ALREADY_EXISTS = -6,
            RESULT_OUT_OF_SPACE = -7,
            RESULT_FA_ERROR = -8,  // Not used in NandSDWorker. Name from SDVFWorker
            RESULT_BROKEN_MEDIA = -9,
            RESULT_ILLEGAL_MEDIA = -10,
            RESULT_WRITE_PROTECTED = -11,
            RESULT_UNK_N12 = -12,
            RESULT_NOCOPY = -13,
            RESULT_ES_ERROR = -14,
            RESULT_NOT_TRANSFERRABLE = -15,
            RESULT_VERSION_ERR = -16,
            RESULT_SD_APP_LOC_NOT_FOUND = -17,
            RESULT_UNK_18 = -18,
        };

        typedef struct SDAppMetaEntry {
            ESTitleId titleId;
            channel::SChanMgrMetaHeader metaHdr;
        } SDAppMetaEntry;

        typedef struct AppBlocksInfo {
            u32 bytes;
            u32 blocks;
        } AppBlocksInfo;

        NandSDWorker();
        ~NandSDWorker();

        void create(void* work, void* savesBuf, void* appsBuf, int priority);

        int get_async_result();

        WorkSDState get_sd_state();

        u32 get_nand_save_num();
        u32 get_nand_app_num();

        s32 get_sd_save_num();
        s32 get_sd_app_num();

        void startup_async();
        void terminate_async();

        void mount_sd_async();
        void format_sd_async();

        void get_sd_app_meta_async(ESTitleId32 titleId, u8* thumbnailBuf, SDAppMetaEntry* paramB);
        void update_sd_app_location_async(ESTitleId32* titleIds);
        void read_sd_app_location_async(ESTitleId32* titleIds);
        void check_for_sd_app_to_nand_async(ESTitleId titleId, AppBlocksInfo* usedBlocks, AppBlocksInfo* freeBlocks);
        void check_backup_fits_async(TitleIdList* newTitles, TitleIdList* replacingTitles);
        void iplNandSD_81348EA8(void* ptrA, void* ptrB, void* ptrC);

        void list_nand_apps_usage_async(void* ptrA, void* ptr);

        void list_nand_app_async(ESTitleId* titleIdOut);
        void list_nand_save_async(ESTitleId* titleIdOut);
        void list_sd_app_async(ESTitleId32* titleIdOut);
        void list_sd_save_async(ESTitleId32* titleIdOut);

        void nand_app_exist_async(ESTitleId titleId);
        void sd_save_exist_async(ESTitleId32 titleId);

        void nocopy_exist_nand_save_async(ESTitleId titleId);
        void nand_save_exist_async(ESTitleId titleId);
        void nand_save_exist_lo_async(ESTitleId32 titleId);
        void sd_app_exist_async(ESTitleId32 titleId);
        void both_app_exist_async(ESTitleId32 titleId);

        void get_nand_user_free_area_async();
        void get_sd_free_area_async(ESTitleId* titleIdOut /*?*/);

        void get_nand_app_thumbnail_async(ESTitleId titleId, void* thumbnailBuf, channel::SChanMgrMetaHeader* file);
        void get_sd_app_thumbnail_async(ESTitleId32 titleId, u8* thumbnailBuf, channel::SChanMgrMetaHeader* file);
        void get_nand_save_banner_async(ESTitleId titleId, WIISaveBannerFile* file);
        void get_sd_save_banner_async(ESTitleId32 titleId, WIISaveBannerFile* file);

        void get_nand_app_size_async(ESTitleId titleId);
        void get_sd_app_size_async(ESTitleId32 titleId);
        void get_nand_save_size_async(ESTitleId titleId);
        void get_sd_save_size_async(ESTitleId32 titleId);

        void copy_nand_app_to_sd_async(ESTitleId titleId);
        void copy_sd_app_to_nand_async(ESTitleId32 titleId, bool hidden);
        void copy_nand_save_to_sd_async(ESTitleId titleId);
        void copy_sd_save_to_nand_async(ESTitleId32 titleId);

        void delete_nand_app_async(ESTitleId titleId, bool hidden);
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

        static bool is_disk_or_user_nand_app(ESTitleId titleId);
        static bool is_user_nand_app(ESTitleId titleId);
        static bool is_data_only_title(ESTitleId titleId);
        static bool is_available_data_only_titleidlo(ESTitleId32 titleId);

        inline static u32 workerWorkSize() { return sizeof(Work); }
        inline static u32 heapSizeForAppWorker() { return appCacheHeapSize() + 0x40000; }
        inline static u32 heapSizeForSaveWorker() { return saveCacheHeapSize() + 0x40000; }

        static const int SD_MAX_APP_PAGE = 20;
        static const int SD_MAX_APP_INDEX = 12;
        static const int SD_MAX_APP_TOTAL = (SD_MAX_APP_PAGE * SD_MAX_APP_INDEX);

        static const int SD_APP_BACKUP_THUMBNAIL_LENGTH = 0xC800;

    protected:
        static const int FAT_PAGES = 8;
        static const int DATA_PAGES = 32;
        static const int TOTAl_PAGES = (FAT_PAGES + DATA_PAGES);
        static const int STACK_SIZE = 0x20000;

        typedef enum WorkState {
            STATE_IDLE = 0,
            STATE_WORKING
        } WorkState;

        typedef struct Work {
            FACacheBuf cacheBuf[TOTAl_PAGES];     // 0x00
            FACachePage cachePages[TOTAl_PAGES];  // 0x5000
            u8 mHeap19000Buf[100 * 1024];         // 0x5640
            FADrvTbl driveTable;                  // 0x1E640
            FACacheSetting cacheSetting;          // 0x1E64C
            nw4r::ut::List nandSaveList;          // 0x1E660
            nw4r::ut::List sdSaveList;            // 0x1E66C
            nw4r::ut::List nandAppList;           // 0x1E678
            nw4r::ut::List sdAppList;             // 0x1E684
            MEMHeapHandle mainHeap;               // 0x1E690
            MEMHeapHandle saveCacheHeap;          // 0x1E694
            MEMHeapHandle appCacheHeap;           // 0x1E698
            MEMHeapHandle unkHeap;                // 0x1E69C
            MEMAllocator unkAllocator;            // 0x1E6A0
            u8 threadStack[STACK_SIZE];           // 0x1E6B0
            OSThread thread;                      // 0x3e6B0
            OSMutex mutex;                        // 0x3e9C8
            OSMessageQueue msgQueue;              // 0x3e9E0
            OSMessage messages[8];                // 0x3EA00
            WorkState state;                      // 0x3EA20
            s32 asyncResult;                      // 0x3EA24
            int nandSaveNum;                      // 0x3EA28
            int nandAppNum;                       // 0x3EA2c
            int sdSaveNum;                        // 0x3EA30
            int sdAppNum;                         // 0x3EA34
            void* paramA;                         // 0x3EA38
            void* paramB;                         // 0x3EA3c
            void* paramC;                         // 0x3EA40
            ESTitleId curTitleId;                 // 0x3EA48
            ESTitleId curUId;                     // 0x3EA50
            BOOL sdWriteProtected;                // 0x3EA50
            int prevAsyncResult;                  // 0x3EA5C
        } Work;

        typedef struct AppCacheEntry {
            u64 titleId;                          // 0x00
            s32 fileSize;                         // 0x08
            s32 thumbSize;                        // 0x0C
            nw4r::ut::Link link;                  // 0x10
            u8 thumbnail[100 * 1024];             // 0x18
            channel::SChanMgrMetaHeader metaHdr;  // 0x19018
            u8 unk_0x19018[8];                    // 0x19618
        } AppCacheEntry;

        typedef struct SaveCacheEntry {
            WIISaveBannerFile banner;  // 0x00
            ESTitleId titleId;         // 0xF0A0
            s32 size;                  // 0xF0A8
            nw4r::ut::Link link;       // 0xF0AC
            u8 unk_0xf0b4[12];         // 0xF0B4
        } SaveCacheEntry;

        typedef struct SDSaveBanner {
            ESTitleId curTitleId;      // 0x00
            u32 headerSize;            // 0x08
            u8 perms;                  // 0x0C
            u8 attr;                   // 0x0D
            NETMD5Sum MD5Sum;          // 0x0E
            WIISaveBannerFile banner;  // 0x20
        } SDSaveBanner;

        typedef struct SDAppBanner {
            ESTitleId titleId;    // 0x00
            u32 thumbSize;        // 0x08
            NETMD5Sum headerMD5;  // 0x0C
            NETMD5Sum iconMD5;    // 0x1C
            u64 unk_0x30;
            u64 unk_0x38;
            channel::SChanMgrMetaHeader metaHdr;  // 0x40
        } SDAppBanner;

        typedef struct SDAppBackupData {
            SDAppBanner head;                              // 0x00
            u8 thumbnail[SD_APP_BACKUP_THUMBNAIL_LENGTH];  // 0x640
        } SDAppBackupData;

        typedef struct SDAppLocation {
            char signature[4];                       // 0x00
            NETMD5Sum MD5Sum;                        // 0x04
            ESTitleId32 titleIds[SD_MAX_APP_TOTAL];  // 0x14
            u8 padding[0xC];                         // 0x3D4
        } SDAppLocation;

        typedef enum WorkMessage {
            MESSAGE_NONE = 0,
            MESSAGE_TERMINATE,
            MESSAGE_STARTUP,
            MESSAGE_MOUNT_SD,
            MESSAGE_LIST_NAND_SAVE,
            MESSAGE_GET_NAND_SAVE_BANNER,
            MESSAGE_LIST_SD_SAVE,
            MESSAGE_GET_SD_SAVE_BANNER,
            MESSAGE_GET_NAND_SAVE_SIZE,
            MESSAGE_DEL_NAND_SAVE,
            MESSAGE_GET_SD_SAVE_SIZE,
            MESSAGE_DEL_SD_SAVE,
            MESSAGE_INITIALIZE_NAND,
            MESSAGE_GET_NAND_USER_FREE_AREA,
            MESSAGE_COPY_NAND_SAVE_TO_SD,
            MESSAGE_COPY_SD_SAVE_TO_NAND,
            MESSAGE_FORMAT_SD,
            MESSAGE_GET_SD_FREE_AREA,
            MESSAGE_LIST_NAND_APP,
            MESSAGE_GET_NAND_APP_THUMBNAIL,
            MESSAGE_DEL_NAND_APP,
            MESSAGE_COPY_NAND_APP_TO_SD,
            MESSAGE_COPY_SD_APP_TO_NAND_HIDDEN,
            MESSAGE_LIST_SD_APP,
            MESSAGE_DEL_SD_APP,
            MESSAGE_GET_SD_APP_SIZE,
            MESSAGE_GET_SD_APP_THUMBNAIL,
            MESSAGE_GET_NAND_APP_SIZE,
            MESSAGE_NOCOPY_EXIST_NAND_SAVE,
            MESSAGE_NAND_SAVE_EXIST,
            MESSAGE_NAND_SAVE_EXIST_LO,
            MESSAGE_NAND_APP_EXIST,
            MESSAGE_BOTH_APP_EXIST,
            MESSAGE_SD_SAVE_EXIST,
            MESSAGE_SD_APP_EXIST,
            MESSAGE_GET_NAND_SAVE_PERMS,
            MESSAGE_GET_SD_SAVE_PERMS,
            MESSAGE_MOVE_NAND_SAVE_TO_SD,
            MESSAGE_MOVE_SD_SAVE_TO_NAND,
            MESSAGE_MOVE_NAND_APP_TO_SD,
            MESSAGE_MOVE_SD_APP_TO_NAND,
            MESSAGE_GET_SD_APP_META,
            MESSAGE_UPDATE_SD_APP_LOCATION,
            MESSAGE_READ_SD_APP_LOCATION,
            MESSAGE_CHECK_FOR_SD_APP_TO_NAND,
            MESSAGE_LIST_NAND_APPS_USAGE,
            MESSAGE_CHECK_BACKUP_FITS,
            MESSAGE_COPY_SD_APP_TO_NAND,
            MESSAGE_DEL_NAND_APP_HIDDEN,
            MESSAGE_UNK_49,
            MESSAGE_CHANGE_NAND_APP_COUNT,
            MESSAGE_CHECK_SD_TITLE_RESTORABLE
        } WorkMessage;

        typedef enum RecursiveProcess {
            RECURSIVE_GET_SIZE = 0,
            RECURSIVE_DELETE,
            RECURSIVE_MOVE,
        } RecursiveProcess;

        typedef enum FileKind {
            FILEKIND_NONE = 0,
            FILEKIND_NAND,
            FILEKIND_ES_CONTENT,
        } FileKind;

        typedef enum NandTitleExistence {
            EXISTENCE_NOEXIST = 0,
            EXISTENCE_INCOMPLETE,
            EXISTENCE_COMPLETE,
        } NandTitleExistence;

        inline static u32 appCacheHeapSize() { return MEMCalcHeapSizeForUnitHeap(sizeof(AppCacheEntry), 96, 0x20); }
        inline static u32 saveCacheHeapSize() { return MEMCalcHeapSizeForUnitHeap(sizeof(SaveCacheEntry), 90, 0x20); }

        static void sd_insert_callback(s8 driveLetter);
        static void sd_eject_callback(s8 driveLetter);

        static ESTitleId32 gamecode_to_titleid_lo(const char* gamecode);

        static void* thread_main(void* work);

        static int encrypt(const void* input, u32 inputSize, void* output);
        static int decrypt(const void* input, u32 inputSize, void* output);
        bool check_md5(const u8* digest, const u8* input, u32 inputSize);

        bool check_nand_corrupt(s32 nandErr, s32* result);

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

        int delete_meta_file(ESTitleId titleId);

        void* run();

        bool check_header_base(const u8* bnrData, u32* headerSize = NULL);

        void send_work(WorkMessage msg);
        WorkMessage wait_work();

        int get_nand_save_banner(ESTitleId titleId, WIISaveBannerFile* bannerFile, u32* sizeOut);
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

        s32 get_nand_app_thumbnail(ESTitleId titleId, u8* thumbnailBuf, channel::SChanMgrMetaHeader* metaHdrOut);

        int item_exist_nand_save_folder(ESTitleId titleId, const char* folderName);
        bool check_nand_save_banner_exist(ESTitleId titleId);
        bool nand_app_exist(ESTitleId titleId) NO_INLINE;
        int nand_app_exist_ex(ESTitleId titleId);
        bool both_app_exist(ESTitleId32 titleId);
        int sd_file_exist(const char* path, u32 size);

        s32 nand_get_length(const char* path);

        bool is_all_region(ESTitleId titleId) NO_INLINE;
        bool is_same_title(ESTitleId titleIdA, ESTitleId titleIdB) NO_INLINE;

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

        s32 get_sd_app_thumbnail(const SDAppBanner* banner, u8* thumbnailBuf);

        int get_sd_wad_header(ESTitleId32 titleid, WADBackupHeader* wadBackupHeader, u32 offset);

        int get_nand_title_version(ESTitleId titleId, u16* versionOut);
        int get_sd_title_version(ESTitleId32 titleId, u16* versionOut);

        int initialize_meta();
        int delete_nand_disk_app_with_ticket();
        int delete_nand_titles();
        int delete_empty_title(ESTitleId titleId, bool force);
        int create_sd_backup_dir(ESTitleId titleId);
        int create_sd_dir(const char* base, const char* final);
        int get_app_banner_from_meta(ESTitleId titleId, SDAppBackupData* banner);
        s32 open_nand_app_content(ESTitleId titleId, u16 contentIdx, u32* sizeOut, ESTicketView** ticketViewOut);
        int read_file(void*, FileKind fileKind, s32, u32, void*);
        int get_nand_app_tmdview(ESTitleId titleId, ESTmdView** tmdViewOut);
        static bool content_exist(ESTmdView* tmdView, u32 contentIdx);

        int search_meta_header(const u8* buffer);
        bool check_header_md5(u8* buf);
        s32 uncompress_app_thumbnail(const u8* cmpr, u32 uncmprSize, u8* uncmpr);

        s32 get_sd_entry_list(const char* fileName, ESTitleId32* titleIdsOut, u32 minSize);

        static void decompress(const u8* in, void* out);
        static bool is_compressed(const u8* data);
        static bool is_sli_compressed(const u8* data);
        static bool is_asr_compressed(const u8* data);
        static bool is_ash_compressed(const u8* data);
        static bool is_lz7_compressed(const u8* data);
        static u32 get_decode_size(const u8* data);

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
        void do_copy_sd_app_to_nand(bool changeAppCount);

        void do_get_nand_app_size();
        void do_format_sd();

        void do_get_sd_app_meta();
        void do_update_sd_app_location();
        void do_read_sd_app_location();
        void do_check_for_sd_app_to_nand();
        void check_backup_fits();
        void do_list_nand_apps_usage();
        void do_unk_8134C838();

        void do_move_nand_app_to_sd();
        void do_move_sd_app_to_nand();
        void do_move_nand_save_to_sd();
        void do_move_sd_save_to_nand();

        void change_nand_app_count(s32 delta);
        bool change_uid(ESTitleId newTitleId);

        bool is_fa_file(u8 stat) NO_INLINE;

        int prepare_sd_copy(const char* path);

        static void wad_backup_progress_callback(u32 completed, u32 total, BOOL done);

        Work* myWork;   // 0x00
        bool unk_0x04;  // 0x04

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

        static WorkSDState s_sd_state;
        static int s_completion_pct;
    };
}  // namespace ipl

#endif  // IPL_NAND_SD_WORKER_H
