#include <decomp.h>

#include "system/iplNandSDWorker.h"

#pragma sym on

// (for now :P)
// stub ATTRIBUTE_ALIGN
#undef ATTRIBUTE_ALIGN
#define ATTRIBUTE_ALIGN(num)
// redefine ALIGN32 to make it not use the stubbed out ATTRIBUTE_ALIGN
#undef ALIGN32
#define ALIGN32 __attribute__((aligned(32)))

#include "system/nandsdworker/es_encrypt.inc"
#include "system/nandsdworker/md5_secret_key.inc"

#include "system/rvl_dec.h"
#include <revolution/cx/CXUncompression.h>

#include "utility/iplESMisc.h"
#include "utility/iplStack.h"

#include "iplSystem.h"

#include <revolution.h>

#include <stdlib.h>

typedef struct SMetaBlockHeader {
    char sig[4];   // 0x00
    u32 headSize;  // 0x04
    u32 version;   // 0x08 (always 3)
} SMetaBlockHeader;

namespace ipl {
#define DO_NOT_INLINE                                                                                                                                \
    *((u32*)NULL);                                                                                                                                   \
    *((u32*)NULL);                                                                                                                                   \
    *((u32*)NULL);                                                                                                                                   \
    *((u32*)NULL);                                                                                                                                   \
    *((u32*)NULL);                                                                                                                                   \
    *((u32*)NULL)

#define FS_BLK_SIZE (16 * 1024)
#define USR_FS_BLK_CNT 0x4400
#define USR_INODE_CNT 4000
#define NAND_USR_FREE_AREA_SIZE (USR_FS_BLK_CNT * FS_BLK_SIZE)

    const char* NandSDWorker::c_banner_file_name = "banner.bin";
    const char* NandSDWorker::c_nocopy_folder_name = "nocopy";
    const char* NandSDWorker::c_notransfer_folder_name = "notransfer";
    const char* NandSDWorker::c_wii_sd_title_root = "/private/wii/title/";
    const char* NandSDWorker::c_sd_save_file_name = "data.bin";
    const char* NandSDWorker::c_sd_app_file_name = "content.bin";
    const char* NandSDWorker::c_succession_path = "/shared2/succession";
    const char* NandSDWorker::c_transferid_path = "/shared2/succession/transfer.id";
    const char* NandSDWorker::c_tmp_work_path = "/tmp/nandsdwork";
    const char* NandSDWorker::c_ignore_list_for_shared2[5] = {"test/", "test2/", "succession/", "wc24/", "sys/"};
    const char* NandSDWorker::c_ignore_list_for_wiimenu[2] = {"setting.txt", "cache.dat"};
    const char* NandSDWorker::c_wii_menu_save_path = "/title/00000001/00000002/data";

    NandSDWorker::SDState NandSDWorker::s_sd_state = SD_STATE_INITIAL;
    int NandSDWorker::s_completion_pct = 0;

    NandSDWorker::NandSDWorker() : pWork(NULL) {
    }
    NandSDWorker::~NandSDWorker() {
    }
    void NandSDWorker::create(void* work, void* savesBuf, void* appsBuf, int prio) {
        pWork = (Work*)work;

        Work* offsetWorkForStack = (Work*)((u8*)pWork + sizeof(pWork->mThreadStack));
        OSCreateThread(&pWork->mThread, thread_main, this, offsetWorkForStack->mThreadStack, sizeof(pWork->mThreadStack), prio,
                       OS_THREAD_ATTR_DETACH);
        OSInitMessageQueue(&pWork->mMsgQueue, pWork->mMsgQueueBuf, ARRAY_LENGTH(pWork->mMsgQueueBuf));
        OSInitMutex(&pWork->mMutex);
        pWork->pHeap19000 = MEMCreateExpHeapEx(pWork->mHeap19000Buf, sizeof(pWork->mHeap19000Buf), 0);
        pWork->pBothHeap = NULL;
        if (savesBuf != NULL) {
            nw4r::ut::List_Init(&pWork->mSavesListNand, offsetof(SaveCacheEntry, mLink));
            nw4r::ut::List_Init(&pWork->mSavesListSD, offsetof(SaveCacheEntry, mLink));
            pWork->pSaveCacheHeap = MEMCreateUnitHeapEx(savesBuf, saveCacheHeapSize(), sizeof(SaveCacheEntry), 0x20, 0);
            pWork->pBothHeap = MEMCreateExpHeapEx((u8*)savesBuf + saveCacheHeapSize(), 0x40000, 0);
            MEMInitAllocatorForExpHeap(&pWork->mBothHeapAllocator, pWork->pBothHeap, 0x40);
        } else {
            pWork->pSaveCacheHeap = NULL;
        }
        if (appsBuf != NULL) {
            nw4r::ut::List_Init(&pWork->mAppsListNand, offsetof(AppCacheEntry, mLink));
            nw4r::ut::List_Init(&pWork->mAppsListSD, offsetof(AppCacheEntry, mLink));
            pWork->pAppCacheHeap = MEMCreateUnitHeapEx(appsBuf, appCacheHeapSize(), sizeof(AppCacheEntry), 0x20, 0);
            if (pWork->pBothHeap == NULL) {
                pWork->pBothHeap = MEMCreateExpHeapEx((u8*)appsBuf + appCacheHeapSize(), 0x40000, 0);
                MEMInitAllocatorForExpHeap(&pWork->mBothHeapAllocator, pWork->pBothHeap, 0x40);
            }
        } else {
            pWork->pAppCacheHeap = NULL;
        }
        FAInit(FA_FLAG_FILENAME_CHECK);
        FASetThreadPriority(prio);
        FARegistCB(FA_DEVICE_SD, sd_insert_callback, sd_eject_callback);
        pWork->mFatCacheSetting.pages = pWork->mFatCachePages;
        pWork->mFatCacheSetting.buffers = pWork->mFatCacheBuf;
        pWork->mFatCacheSetting.numFatPages = 8;
        pWork->mFatCacheSetting.numDataPages = 0x20;
        pWork->mFatCacheSetting.numFatBufSize = 1;
        pWork->mFatCacheSetting.numDataBufSize = 1;
        OSReport("NandSDWorker: num FAT cache : %d\n", 8);
        OSReport("NandSDWorker: num Data cache: %d\n", 0x20);
        pWork->mFatDriveTable.pPart = NULL;
        pWork->mFatDriveTable.pCache = &pWork->mFatCacheSetting;
        pWork->mState = WORKER_STATE_IDLE;
        pWork->mAsyncResult = WORKER_RESULT_WORKING;
        pWork->mNandSaveNum = -1;
        pWork->mNandAppNum = -1;
        pWork->mSdSaveNum = -1;
        pWork->mSdAppNum = -1;
        s_sd_state = SD_STATE_INITIAL;
        pWork->mUid = SYSMENU_TITLE_ID;
        pWork->mIsSDWriteProtected = FALSE;
        pWork->mSdMountErr = -1;
        unk_0x4 = false;
        OSResumeThread(&pWork->mThread);
    }

    BOOL NandSDWorker::is_terminated() {
        return pWork == NULL;
    }
    BOOL NandSDWorker::is_working() {
        return get_state() == WORKER_STATE_WORKING;
    }

    int NandSDWorker::get_async_result() {
        return is_working() ? WORKER_RESULT_WORKING : pWork->mAsyncResult;
    }
    NandSDWorker::SDState NandSDWorker::get_sd_state() {
        return s_sd_state;
    }
    u32 NandSDWorker::get_nand_save_num() {
        return pWork->mNandSaveNum;
    }
    u32 NandSDWorker::get_nand_app_num() {
        return pWork->mNandAppNum;
    }

    WIISaveBannerFile* NandSDWorker::get_cached_nand_save_banner(ESTitleId titleId) {
        SaveCacheEntry* entry = find_save_cache(&pWork->mSavesListNand, titleId);
        if (entry != NULL && entry->mBanner.magic != 0)
            return &entry->mBanner;
        else
            return NULL;
    }
    void* NandSDWorker::get_cached_nand_app_thumbnail(ESTitleId titleId, u32* sizeOut) {
        AppCacheEntry* entry = find_app_cache(&pWork->mAppsListNand, titleId);
        if (entry != NULL && entry->mThumbnailSize != -1) {
            if (sizeOut != NULL)
                *sizeOut = entry->mThumbnailSize;
            return entry->mThumbnail;
        } else {
            return NULL;
        }
    }

    channel::SChanMgrMetaHeader* NandSDWorker::get_cached_nand_app_meta_header(ESTitleId titleId) {
        AppCacheEntry* entry = find_app_cache(&pWork->mAppsListNand, titleId);
        if (entry != NULL && entry->mThumbnailSize != -1)
            return &entry->mMetaHdr;
        else
            return NULL;
    }
    channel::SChanMgrMetaHeader* NandSDWorker::get_cached_sd_app_meta_header(ESTitleId32 titleId) {
        if (s_sd_state != SD_STATE_READY)
            return NULL;

        AppCacheEntry* entry = find_app_cache(&pWork->mAppsListSD, titleId);
        if (entry != NULL && entry->mThumbnailSize != -1)
            return &entry->mMetaHdr;
        else
            return NULL;
    }
    s32 NandSDWorker::get_cached_nand_save_size(ESTitleId titleId) {
        SaveCacheEntry* entry = find_save_cache(&pWork->mSavesListNand, titleId);
        if (entry != NULL && entry->mSize != -1)
            return entry->mSize;
        else
            return -1;
    }
    s32 NandSDWorker::get_cached_nand_app_size(ESTitleId titleId) {
        AppCacheEntry* entry = find_app_cache(&pWork->mAppsListNand, titleId);
        if (entry != NULL && entry->mFileSize != -1)
            return entry->mFileSize;
        else
            return -1;
    }

    s32 NandSDWorker::get_sd_save_num() {
        return s_sd_state == SD_STATE_READY ? pWork->mSdSaveNum : -1;
    }
    s32 NandSDWorker::get_sd_app_num() {
        return s_sd_state == SD_STATE_READY ? pWork->mSdAppNum : -1;
    }

    WIISaveBannerFile* NandSDWorker::get_cached_sd_save_banner(ESTitleId32 titleId) {
        if (s_sd_state != SD_STATE_READY)
            return NULL;

        SaveCacheEntry* entry = find_save_cache(&pWork->mSavesListSD, titleId);
        if (entry != NULL && entry->mBanner.magic != 0)
            return &entry->mBanner;
        else
            return NULL;
    }
    void* NandSDWorker::get_cached_sd_app_thumbnail(ESTitleId32 titleId, u32* sizeOut) {
        if (s_sd_state != SD_STATE_READY)
            return NULL;

        AppCacheEntry* entry = find_app_cache(&pWork->mAppsListSD, titleId);
        if (entry != NULL && entry->mThumbnailSize != -1) {
            if (sizeOut != NULL)
                *sizeOut = entry->mThumbnailSize;
            return entry->mThumbnail;
        } else {
            return NULL;
        }
    }

    s32 NandSDWorker::get_cached_sd_save_size(ESTitleId32 titleId) {
        if (s_sd_state != SD_STATE_READY)
            return NULL;

        SaveCacheEntry* entry = find_save_cache(&pWork->mSavesListSD, titleId);
        if (entry != NULL && entry->mSize != -1)
            return entry->mSize;
        else
            return -1;
    }
    s32 NandSDWorker::get_cached_sd_app_size(ESTitleId32 titleId) {
        if (s_sd_state != SD_STATE_READY)
            return NULL;

        AppCacheEntry* entry = find_app_cache(&pWork->mAppsListSD, titleId);
        if (entry != NULL && entry->mFileSize != -1)
            return entry->mFileSize;
        else
            return -1;
    }

    BOOL NandSDWorker::is_sd_write_protected() {
        return s_sd_state == SD_STATE_READY ? pWork->mIsSDWriteProtected : FALSE;
    }
    char NandSDWorker::get_sd_drive_letter() {
        return s_sd_state == SD_STATE_READY ? pWork->mFatDriveTable.drive : '\0';
    }

    void NandSDWorker::startup_async() {
        send_work(MSG_STARTUP);
    }
    void NandSDWorker::terminate_async() {
        if (!is_working())
            send_work(MSG_TERMINATE);
    }
    void NandSDWorker::mount_sd_async() {
        send_work(MSG_MOUNT_SD);
    }
    void NandSDWorker::list_nand_save_async(ESTitleId* outputBuf) {
        pWork->pParamA = outputBuf;
        send_work(MSG_LIST_NAND_SAVE);
    }
    void NandSDWorker::get_nand_save_banner_async(ESTitleId titleId, WIISaveBannerFile* fileOut) {
        pWork->mTitleId = titleId;
        pWork->pParamA = fileOut;
        send_work(MSG_GET_NAND_SAVE_BANNER);
    }
    void NandSDWorker::list_sd_save_async(ESTitleId32* outputBuf) {
        pWork->pParamA = outputBuf;
        send_work(MSG_LIST_SD_SAVE);
    }
    void NandSDWorker::list_sd_app_async(ESTitleId32* outputBuf) {
        pWork->pParamA = outputBuf;
        send_work(MSG_LIST_SD_APP);
    }
    void NandSDWorker::get_sd_save_banner_async(ESTitleId32 titleId, WIISaveBannerFile* fileOut) {
        pWork->mTitleId = titleId;
        pWork->pParamA = fileOut;
        send_work(MSG_GET_SD_SAVE_BANNER);
    }

    void NandSDWorker::get_sd_app_thumbnail_async(ESTitleId32 titleId, u8* lytBuf, channel::SChanMgrMetaHeader* file) {
        pWork->mTitleId = titleId;
        pWork->pParamA = lytBuf;
        pWork->pParamB = file;
        send_work(MSG_GET_SD_APP_THUMBNAIL);
    }

    void NandSDWorker::iplNandSD_81348DFC(ESTitleId32 titleId, void* ptrA, void* ptrB) {
        pWork->mTitleId = titleId;
        pWork->pParamA = ptrA;
        pWork->pParamB = ptrB;
        send_work(MSG_UNK_x29);
    }
    void NandSDWorker::update_loc_dat_async(ESTitleId32* titleIds) {
        pWork->pParamA = titleIds;
        send_work(MSG_UPDATE_LOC_DAT);
    }
    void NandSDWorker::read_loc_dat_async(ESTitleId32* titleIds) {
        pWork->pParamA = titleIds;
        send_work(MSG_READ_LOC_DAT);
    }
    void NandSDWorker::iplNandSD_81348E58(ESTitleId titleId, void* ptrA, void* ptrB) {
        pWork->mTitleId = titleId;
        pWork->pParamA = ptrA;
        pWork->pParamB = ptrB;
        send_work(MSG_UNK_x2c);
    }
    void NandSDWorker::check_backup_fits_async(TitleIdList* newTitles, TitleIdList* replacingTitles) {
        pWork->pParamA = newTitles;
        pWork->pParamB = replacingTitles;
        send_work(MSG_CHECK_BACKUP_FITS);
    }
    void NandSDWorker::iplNandSD_81348EA8(void* ptrA, void* ptrB, void* ptrC) {
        pWork->pParamA = ptrA;
        pWork->pParamB = ptrB;
        pWork->pParamC = ptrC;
        send_work(MSG_UNK_x31);
    }

    void NandSDWorker::get_nand_save_size_async(ESTitleId titleId) {
        pWork->mTitleId = titleId;
        send_work(MSG_GET_NAND_SAVE_SIZE);
    }
    void NandSDWorker::get_nand_app_size_async(ESTitleId titleId) {
        pWork->mTitleId = titleId;
        send_work(MSG_GET_NAND_APP_SIZE);
    }
    void NandSDWorker::delete_nand_save_async(ESTitleId titleId) {
        pWork->mTitleId = titleId;
        send_work(MSG_DEL_NAND_SAVE);
    }

    void NandSDWorker::get_sd_save_size_async(ESTitleId32 titleId) {
        pWork->mTitleId = titleId;
        send_work(MSG_GET_SD_SAVE_SIZE);
    }
    void NandSDWorker::get_sd_app_size_async(ESTitleId32 titleId) {
        pWork->mTitleId = titleId;
        send_work(MSG_GET_SD_APP_SIZE);
    }
    void NandSDWorker::delete_sd_save_async(ESTitleId32 titleId) {
        pWork->mTitleId = titleId;
        send_work(MSG_DEL_SD_SAVE);
    }
    void NandSDWorker::delete_sd_app_async(ESTitleId32 titleId) {
        pWork->mTitleId = titleId;
        send_work(MSG_DEL_SD_APP);
    }

    void NandSDWorker::initialize_nand_async() {
        send_work(MSG_INITIALIZE_NAND);
    }

    void NandSDWorker::get_nand_user_free_area_async() {
        send_work(MSG_GET_NAND_USER_FREE_AREA);
    }
    void NandSDWorker::copy_nand_save_to_sd_async(ESTitleId titleId) {
        pWork->mTitleId = titleId;
        send_work(MSG_COPY_NAND_SAVE_TO_SD);
    }
    void NandSDWorker::copy_sd_save_to_nand_async(ESTitleId32 titleId) {
        pWork->mTitleId = titleId;
        send_work(MSG_COPY_SD_SAVE_TO_NAND);
    }
    void NandSDWorker::format_sd_async() {
        send_work(MSG_FORMAT_SD);
    }
    void NandSDWorker::get_sd_free_area_async(u64* out) {
        pWork->pParamA = out;
        send_work(MSG_GET_SD_FREE_AREA);
    }
    void NandSDWorker::list_nand_app_async(ESTitleId* outputBuf) {
        pWork->pParamA = outputBuf;
        send_work(MSG_LIST_NAND_APP);
    }

    void NandSDWorker::iplNandSD_81349000(void* ptrA, void* ptrB) {
        pWork->pParamA = ptrA;
        pWork->pParamB = ptrB;
        send_work(MSG_LIST_NAND_APPS_USAGES);
    }

    void NandSDWorker::get_nand_app_thumbnail_async(ESTitleId titleId, void* lytBuf, channel::SChanMgrMetaHeader* file) {
        pWork->mTitleId = titleId;
        pWork->pParamA = lytBuf;
        pWork->pParamB = file;
        send_work(MSG_GET_NAND_APP_THUMBNAIL);
    }
    void NandSDWorker::delete_nand_app_async(ESTitleId titleId, bool unk) {
        pWork->mTitleId = titleId;
        if (unk) {
            send_work(MSG_DEL_NAND_APP_B);
        } else {
            send_work(MSG_DEL_NAND_APP_A);
        }
    }
    void NandSDWorker::copy_nand_app_to_sd_async(ESTitleId titleId) {
        pWork->mTitleId = titleId;
        s_completion_pct = 0;
        send_work(MSG_COPY_NAND_APP_TO_SD);
    }
    void NandSDWorker::copy_sd_app_to_nand_async(ESTitleId32 titleId, bool unk) {
        pWork->mTitleId = titleId;
        s_completion_pct = 0;
        if (unk) {
            send_work(MSG_COPY_SD_APP_TO_NAND_B);
        } else {
            send_work(MSG_COPY_SD_APP_TO_NAND_A);
        }
    }

    void NandSDWorker::nocopy_exist_nand_save_async(ESTitleId titleId) {
        pWork->mTitleId = titleId;
        send_work(MSG_NOCOPY_EXIST_NAND_SAVE);
    }
    void NandSDWorker::nand_save_exist_async(ESTitleId titleId) {
        pWork->mTitleId = titleId;
        send_work(MSG_NAND_SAVE_EXIST);
    }
    void NandSDWorker::nand_save_exist_lo_async(ESTitleId32 titleId) {
        pWork->mTitleId = titleId;
        send_work(MSG_NAND_SAVE_EXIST_LO);
    }
    void NandSDWorker::nand_app_exist_async(ESTitleId titleId) {
        pWork->mTitleId = titleId;
        send_work(MSG_NAND_APP_EXIST);
    }
    void NandSDWorker::both_app_exist_async(ESTitleId32 titleId) {
        pWork->mTitleId = titleId;
        send_work(MSG_BOTH_APP_EXIST);
    }
    void NandSDWorker::sd_save_exist_async(ESTitleId32 titleId) {
        pWork->mTitleId = titleId;
        send_work(MSG_SD_SAVE_EXIST);
    }
    void NandSDWorker::sd_app_exist_async(ESTitleId32 titleId) {
        pWork->mTitleId = titleId;
        send_work(MSG_SD_APP_EXIST);
    }

    void NandSDWorker::get_nand_save_perms_async(ESTitleId titleId) {
        pWork->mTitleId = titleId;
        send_work(MSG_GET_NAND_SAVE_PERMS);
    }
    void NandSDWorker::get_sd_save_perms_async(ESTitleId32 titleId) {
        pWork->mTitleId = titleId;
        send_work(MSG_GET_SD_SAVE_PERMS);
    }
    void NandSDWorker::move_nand_app_to_sd_async(ESTitleId titleId) {
        pWork->mTitleId = titleId;
        send_work(MSG_MOVE_NAND_APP_TO_SD);
    }
    void NandSDWorker::move_sd_app_to_nand_async(ESTitleId32 titleId) {
        pWork->mTitleId = titleId;
        send_work(MSG_MOVE_SD_APP_TO_NAND);
    }
    void NandSDWorker::move_nand_save_to_sd_async(ESTitleId titleId) {
        pWork->mTitleId = titleId;
        send_work(MSG_MOVE_NAND_SAVE_TO_SD);
    }
    void NandSDWorker::move_sd_save_to_nand_async(ESTitleId32 titleId) {
        pWork->mTitleId = titleId;
        send_work(MSG_MOVE_SD_SAVE_TO_NAND);
    }
    void NandSDWorker::change_nand_app_count_async(s32 delta) {
        pWork->pParamA = (void*)delta;
        send_work(MSG_CHANGE_NAND_APP_COUNT);
    }
    void NandSDWorker::check_sd_title_restorable_async(ESTitleId32 titleId) {
        pWork->mTitleId = titleId;
        send_work(MSG_CHECK_SD_TITLE_RESTORABLE);
    }

#define SUBTYPE_SIMPLE_DISC 0
#define SUBTYPE_WII_SHOP 1
#define SUBTYPE_PREINSTALL 2
#define SUBTYPE_UNK3 3
#define SUBTYPE_CHANNEL_DISC 4
#define SUBTYPE_DLC 5
#define SUBTYPE_UNK6 6
#define SUBTYPE_UNK7 7
#define SUBTYPE_HIDDEN 8
#define SUBTYPE_MASK ((1 << SUBTYPE_SIMPLE_DISC) | (1 << SUBTYPE_WII_SHOP) | (1 << SUBTYPE_CHANNEL_DISC) | (1 << SUBTYPE_UNK6) | (1 << SUBTYPE_UNK7))

    bool NandSDWorker::is_disk_or_user_nand_app(ESTitleId titleId) {
        u32 titleType = ES_TITLE_TYPE_NOMASK(titleId);  // This is here so it doesn't inline. Idek anymore.
        return (u32)ES_TITLE_TYPE_NOMASK(titleId) == 0x10000 || is_user_nand_app(titleId);
    }
    bool NandSDWorker::is_user_nand_app(ESTitleId titleId) {
        bool titleSubtypeMatches = false, valid = false;
        u32 titleSubtype = (u32)ES_TITLE_TYPE_NOMASK(titleId) - 0x10000;
        if ((titleSubtype <= SUBTYPE_UNK7) && ((1 << titleSubtype) & SUBTYPE_MASK)) {
            titleSubtypeMatches = true;
        }
        if (titleSubtypeMatches && !is_data_only_title(titleId)) {
            valid = true;
        }
        return valid;
    }
    bool NandSDWorker::is_data_only_title(ESTitleId titleId) {
        bool isGood = false;
        int codeLet = ((u32)ES_TITLE_CODE(titleId) >> 0x18);
        return ((u32)codeLet >= ' ' && (u32)codeLet <= '~') && !('A' <= codeLet && codeLet <= 'Z') && !('0' <= codeLet && codeLet <= '9');
    }
    bool NandSDWorker::is_available_data_only_titleidlo(ESTitleId32 titleId) {
        return (titleId & 0xFF000000) && (titleId & 0x00FF0000) && (titleId & 0x0000FF00) && (titleId & 0x000000FF) && is_data_only_title(titleId);
    }

    void get_nand_data_only_title_save_path(ESTitleId titleId, char* outStr) {
        snprintf(outStr, 0x40, "/title/%08x/%08x/data", (u32)ES_TITLE_TYPE_NOMASK(titleId), (u32)ES_TITLE_CODE(titleId));
    }
    void get_nand_not_data_only_title_save_path(ESTitleId titleId, char* outStr) {
        snprintf(outStr, 0x40, "/title/%08x/%08x", (u32)ES_TITLE_TYPE_NOMASK(titleId), (u32)ES_TITLE_CODE(titleId));
    }
    void get_nand_save_path(ESTitleId titleId, char* outStr) {
        if (NandSDWorker::is_data_only_title(titleId))
            get_nand_data_only_title_save_path(titleId, outStr);
        else
            get_nand_not_data_only_title_save_path(titleId, outStr);
    }
    void get_nand_app_path(ESTitleId titleId, char* outStr) {
        snprintf(outStr, 0x40, "/title/%08x/%08x/content", (u32)ES_TITLE_TYPE_NOMASK(titleId), (u32)ES_TITLE_CODE(titleId));
    }
    void get_nand_meta_file_path(ESTitleId titleId, char* outStr) {
        snprintf(outStr, 0x40, "/meta/%08x/%08x/title.met", (u32)ES_TITLE_TYPE_NOMASK(titleId), (u32)ES_TITLE_CODE(titleId));
    }
    void get_nand_meta_dir_path(ESTitleId titleId, char* outStr) {
        snprintf(outStr, 0x40, "/meta/%08x/%08x", (u32)ES_TITLE_TYPE_NOMASK(titleId), (u32)ES_TITLE_CODE(titleId));
    }
    void NandSDWorker::get_sd_save_path(ESTitleId titleId, char* outStr) {
        ESTitleId32 titleCode = ES_TITLE_CODE(titleId);
        if (is_data_only_title(titleId)) {
            snprintf(outStr, 0x40, "/private/wii/title/%08x/data.bin", titleCode);
        } else {
            snprintf(outStr, 0x40, "/private/wii/title/%c%c%c%c/data.bin", (u8)(titleCode >> 0x18), (u8)(titleCode >> 0x10), (u8)(titleCode >> 0x08),
                     (u8)(titleCode >> 0x00));
        }
    }
    void NandSDWorker::get_sd_app_path(ESTitleId titleId, char* outStr) {
        ESTitleId32 titleCode = ES_TITLE_CODE(titleId);
        snprintf(outStr, 0x40, "/private/wii/title/%c%c%c%c/content.bin", (u8)(titleCode >> 0x18), (u8)(titleCode >> 0x10), (u8)(titleCode >> 0x08),
                 (u8)(titleCode >> 0x00));
    }

    ESTitleId32 NandSDWorker::gamecode_to_titleid_lo(const char* gamecode) {
        return (gamecode[0] << 0x18) + (gamecode[1] << 0x10) + (gamecode[2] << 0x08) + (gamecode[3] << 0x00);
    }

    void* NandSDWorker::thread_main(void* arg) {
        OSInitFastCast();
        return ((NandSDWorker*)arg)->run();
    }

    int NandSDWorker::delete_meta_file(ESTitleId titleId) {
        char str[0x40];

        get_nand_meta_dir_path(titleId, str);

        int nandCode = nand::wrapper::Delete(str);
        if (check_nand_corrupt(nandCode, NULL))
            return WORKER_RESULT_NAND_CORRUPT;

        if (nandCode == NAND_RESULT_OK) {
            OSReport("NandSDWorker: delete [%s]\n", str);
        } else if (nandCode == NAND_RESULT_NOEXISTS) {
            OSReport("NandSDWorker: [%s] no exists\n", str);
        } else {
            OSReport("NandSDWorker: NANDDelete %s failed [%d]\n", str, nandCode);
            return WORKER_RESULT_GENERIC_ERR;
        }
        return WORKER_RESULT_OK;
    }

    void* NandSDWorker::run() {
        bool terminated = false;
        while (true) {
            switch (wait_work()) {
                case MSG_TERMINATE:
                    if (s_sd_state != SD_STATE_INITIAL) {
                        OSReport("NandSDWorker: unmount sd [%d]\n", FAUnmount(pWork->mFatDriveTable.drive, TRUE));
                        OSReport("NandSDWorker: detach sd [%d]\n", FADetach(pWork->mFatDriveTable.drive));
                    }
                    MEMDestroyExpHeap(pWork->pHeap19000);

                    if (pWork->pSaveCacheHeap != NULL)
                        MEMDestroyUnitHeap(pWork->pSaveCacheHeap);
                    if (pWork->pAppCacheHeap != NULL)
                        MEMDestroyUnitHeap(pWork->pAppCacheHeap);
                    if (pWork->pBothHeap != NULL)
                        MEMDestroyExpHeap(pWork->pBothHeap);
                    terminated = true;
                    break;
                case MSG_STARTUP:
                    do_startup();
                    break;
                case MSG_MOUNT_SD:
                    do_mount_sd();
                    if (s_sd_state == SD_STATE_BROKEN_MEDIA || s_sd_state == SD_STATE_ILLEGAL_MEDIA) {
                        pWork->mSdMountErr = pWork->mAsyncResult;
                    } else {
                        pWork->mSdMountErr = -1;
                    }
                    break;
                case MSG_LIST_NAND_SAVE:
                    do_list_nand_save();
                    break;
                case MSG_GET_NAND_SAVE_BANNER: {
                    WIISaveBannerFile* bannerTmp = (WIISaveBannerFile*)MEMAllocFromExpHeapEx(pWork->pHeap19000, sizeof(WIISaveBannerFile), 0x20);
                    pWork->mAsyncResult = get_nand_save_banner(pWork->mTitleId, bannerTmp, NULL);
                    if (pWork->mAsyncResult == WORKER_RESULT_OK) {
                        memcpy(pWork->pParamA, bannerTmp, sizeof(WIISaveBannerFile));
                    }
                    MEMFreeToExpHeap(pWork->pHeap19000, bannerTmp);
                    break;
                }
                case MSG_LIST_SD_SAVE:
                    pWork->mAsyncResult = get_sd_save_list((ESTitleId32*)pWork->pParamA);
                    break;
                case MSG_LIST_SD_APP:
                    pWork->mAsyncResult = get_sd_app_list((ESTitleId32*)pWork->pParamA);
                    break;
                case MSG_GET_SD_SAVE_BANNER:
                    do_get_sd_save_banner();
                    break;
                case MSG_GET_SD_APP_THUMBNAIL:
                    do_get_sd_app_thumbnail();
                    break;
                case MSG_UNK_x29:
                    do_unk_8134B728();
                    break;
                case MSG_UPDATE_LOC_DAT:
                    do_update_loc_dat();
                    break;
                case MSG_READ_LOC_DAT:
                    do_read_loc_dat();
                    break;
                case MSG_UNK_x2c:
                    do_unk_8134BED0();
                    break;
                case MSG_CHECK_BACKUP_FITS:
                    check_backup_fits();
                    break;
                case MSG_UNK_x31:
                    do_unk_8134C838();
                    break;
                case MSG_GET_NAND_SAVE_SIZE:
                    do_get_nand_save_size();
                    break;
                case MSG_DEL_NAND_SAVE:
                    if (is_data_only_title(pWork->mTitleId)) {
                        u32 delResult = utility::ESMisc::DeleteTitle(System::getMem2Sys(), pWork->mTitleId);
                        if (delResult != 0) {
                            OSReport("NandSDWorker: ESMisc::DeleteTitle failed [%d]\n", delResult);
                            pWork->mAsyncResult = WORKER_RESULT_GENERIC_ERR;
                        } else {
                            pWork->mAsyncResult = WORKER_RESULT_OK;
                        }
                        pWork->mAsyncResult = delete_meta_file(pWork->mTitleId);
                    } else {
                        pWork->mAsyncResult = recursion_nand_save(pWork->mTitleId, RECURSIVE_DELETE, NULL, 0);
                        delete_download_task(pWork->mTitleId);
                    }
                    if (pWork->mAsyncResult == WORKER_RESULT_OK) {
                        pWork->mNandSaveNum--;
                        delete_save_cache(&pWork->mSavesListNand, pWork->mTitleId);
                    }
                    break;
                case MSG_GET_SD_SAVE_SIZE:
                    pWork->mAsyncResult = get_sd_save_size(pWork->mTitleId);
                    break;
                case MSG_DEL_SD_SAVE:
                    do_delete_sd_save();
                    break;
                case MSG_DEL_SD_APP:
                    do_delete_sd_app();
                    break;
                case MSG_INITIALIZE_NAND:
                    do_initialize_nand();
                    break;
                case MSG_GET_NAND_USER_FREE_AREA:
                    do_get_nand_user_free_area();
                    if (pWork->mAsyncResult < 0) {
                        OSReport("NandSDWorker: nand user area limit over. return 0.\n");
                        pWork->mAsyncResult = 0;
                    }
                    break;
                case MSG_COPY_NAND_SAVE_TO_SD:
                    do_copy_nand_save_to_sd();
                    break;
                case MSG_COPY_SD_SAVE_TO_NAND:
                    do_copy_sd_save_to_nand();
                    break;
                case MSG_FORMAT_SD:
                    do_format_sd();
                    break;
                case MSG_GET_SD_FREE_AREA: {
                    u64* sizeOutPtr = (u64*)pWork->pParamA;
                    s64 size = get_sd_free_area();
                    if (size >= 0) {
                        pWork->mAsyncResult = WORKER_RESULT_OK;
                        *sizeOutPtr = size;
                    } else {
                        pWork->mAsyncResult = WORKER_RESULT_GENERIC_ERR;
                        *sizeOutPtr = 0;
                    }
                    break;
                }
                case MSG_DEL_NAND_APP_A:
                    pWork->mAsyncResult = delete_nand_app_content(pWork->mTitleId);
                    if (pWork->mAsyncResult == WORKER_RESULT_OK) {
                        pWork->mNandAppNum--;
                        change_nand_app_count(-1);
                        delete_app_cache(&pWork->mAppsListNand, pWork->mTitleId);
                    }
                    break;
                case MSG_DEL_NAND_APP_B:
                    pWork->mAsyncResult = delete_nand_app_content(pWork->mTitleId);
                    if (pWork->mAsyncResult == WORKER_RESULT_OK) {
                        pWork->mNandAppNum--;
                        delete_app_cache(&pWork->mAppsListNand, pWork->mTitleId);
                    }
                    break;
                case MSG_COPY_NAND_APP_TO_SD:
                    do_copy_nand_app_to_sd();
                    break;
                case MSG_COPY_SD_APP_TO_NAND_A:
                    do_copy_sd_app_to_nand(false);
                    break;
                case MSG_COPY_SD_APP_TO_NAND_B:
                    do_copy_sd_app_to_nand(true);
                    break;
                case MSG_LIST_NAND_APP:
                    do_list_nand_app();
                    break;
                case MSG_LIST_NAND_APPS_USAGES:
                    do_list_nand_apps_usages();
                    break;
                case MSG_GET_NAND_APP_THUMBNAIL:
                    pWork->mAsyncResult = get_nand_app_thumbnail(pWork->mTitleId, (u8*)pWork->pParamA, (channel::SChanMgrMetaHeader*)pWork->pParamB);
                    break;
                case MSG_GET_SD_APP_SIZE:
                    pWork->mAsyncResult = get_sd_app_size(pWork->mTitleId);
                    break;
                case MSG_GET_NAND_APP_SIZE:
                    do_get_nand_app_size();
                    break;
                case MSG_NOCOPY_EXIST_NAND_SAVE:
                    pWork->mAsyncResult = item_exist_nand_save_folder(pWork->mTitleId, c_nocopy_folder_name);
                    break;
                case MSG_NAND_SAVE_EXIST:
                    pWork->mAsyncResult = check_nand_save_banner_exist(pWork->mTitleId);
                    change_uid(SYSMENU_TITLE_ID);
                    break;
                case MSG_NAND_SAVE_EXIST_LO:
                    pWork->mAsyncResult = check_nand_save_exist_lo(pWork->mTitleId);
                    change_uid(SYSMENU_TITLE_ID);
                    break;
                case MSG_NAND_APP_EXIST:
                    pWork->mAsyncResult = nand_app_exist(pWork->mTitleId);
                    break;
                case MSG_BOTH_APP_EXIST:
                    pWork->mAsyncResult = both_app_exist(pWork->mTitleId);
                    break;
                case MSG_SD_SAVE_EXIST: {
                    char savePath[0x40];
                    get_sd_save_path(pWork->mTitleId, savePath);
                    pWork->mAsyncResult = sd_file_exist(savePath, sizeof(SaveCacheEntry));
                    break;
                }
                case MSG_SD_APP_EXIST: {
                    char savePath[0x40];
                    get_sd_app_path(pWork->mTitleId, savePath);
                    pWork->mAsyncResult = sd_file_exist(savePath, sizeof(SDAppBanner));
                    break;
                }
                case MSG_GET_NAND_SAVE_PERMS:
                    pWork->mAsyncResult = get_nand_save_perms(pWork->mTitleId);
                    break;
                case MSG_GET_SD_SAVE_PERMS:
                    pWork->mAsyncResult = get_sd_save_perms(pWork->mTitleId);
                    break;
                case MSG_MOVE_NAND_APP_TO_SD:
                    do_move_nand_app_to_sd();
                    break;
                case MSG_MOVE_SD_APP_TO_NAND:
                    do_move_sd_app_to_nand();
                    break;
                case MSG_MOVE_NAND_SAVE_TO_SD:
                    do_move_nand_save_to_sd();
                    break;
                case MSG_MOVE_SD_SAVE_TO_NAND:
                    do_move_sd_save_to_nand();
                    break;
                case MSG_CHANGE_NAND_APP_COUNT:
                    change_nand_app_count((s32)pWork->pParamA);
                    break;
                case MSG_CHECK_SD_TITLE_RESTORABLE:
                    pWork->mAsyncResult = check_sd_title_restorable(pWork->mTitleId);
                    break;
            }
            if (*(int*)(pWork->mThread).stackEnd != 0xDEADBABE) {
                OSPanic("iplNandSDWorker.cpp", 2259, "NandSDWorker: stack over!\n");
            }
            if (terminated)
                break;
            set_state(WORKER_STATE_IDLE);
        }
        pWork = NULL;
        s_sd_state = SD_STATE_INITIAL;
        return this;
    }

    extern "C" {
    extern void NETGetWirelessMacAddress(u8*);
    }

    void NandSDWorker::do_startup() {
        u32 countTitlesIds = 0;
        u32 numNandSaves;
        u32 numNandApps;
        int nandRet;
        ESTitleId* titleIds;
        u8* buf = NULL;
        pWork->mAsyncResult = WORKER_RESULT_OK;
        ES_ListTitlesOnCard(NULL, &countTitlesIds);
        titleIds = (ESTitleId*)MEMAllocFromExpHeapEx(pWork->pHeap19000, countTitlesIds * sizeof(ESTitleId), 0x20);
        ES_ListTitlesOnCard(titleIds, &countTitlesIds);
        if (clean_duplicated_nand_app(titleIds, countTitlesIds) == WORKER_RESULT_NAND_CORRUPT) {
            pWork->mAsyncResult = WORKER_RESULT_NAND_CORRUPT;
            goto CLEANUP;
        }

        numNandSaves = 0;
        numNandApps = 0;
        if (pWork->pAppCacheHeap != NULL) {
            int cleanPartialRet = clean_partial_nand_app(titleIds, countTitlesIds, &numNandApps);
            if (cleanPartialRet == WORKER_RESULT_NAND_CORRUPT) {
                pWork->mAsyncResult = WORKER_RESULT_NAND_CORRUPT;
                goto CLEANUP;
            }
            if (cleanPartialRet == WORKER_RESULT_UNK_N18) {
                pWork->mAsyncResult = WORKER_RESULT_UNK_N18;
                goto CLEANUP;
            }
            pWork->mNandAppNum = numNandApps;
            OSReport("NandSDWorker: nand app num = %d\n", pWork->mNandAppNum);
        }

        if (pWork->pSaveCacheHeap != NULL) {
            int cleanPartialSaveRet = clean_partial_nand_save(titleIds, countTitlesIds, &numNandSaves);
            if (cleanPartialSaveRet == WORKER_RESULT_NAND_CORRUPT) {
                pWork->mAsyncResult = WORKER_RESULT_NAND_CORRUPT;
                goto CLEANUP;
            }
            pWork->mNandSaveNum = numNandSaves;
            OSReport("NandSDWorker: nand save num = %d\n", pWork->mNandSaveNum);
        }
        if (pWork->pSaveCacheHeap == NULL)
            goto CLEANUP;

        if (nand_get_length(c_transferid_path) != 0x20) {
            nandRet = nand::wrapper::PrivateDelete(c_transferid_path);
            if (nandRet != NAND_RESULT_OK) {
                OSReport("NandSDWorker: NANDPrivateDelete %s failed.[%d]\n", c_transferid_path, nandRet);
                if (nandRet == NAND_RESULT_CORRUPT) {
                    pWork->mAsyncResult = WORKER_RESULT_NAND_CORRUPT;
                    goto CLEANUP;
                }
            }

            u8 nandType;
            nandRet = nand::wrapper::PrivateGetType(c_succession_path, &nandType);
            if (nandRet != NAND_RESULT_OK || nandType != NAND_TYPE_DIR) {
                if (nandRet == NAND_RESULT_OK && nandType != NAND_TYPE_DIR) {
                    nandRet = nand::wrapper::PrivateDelete(c_succession_path);
                    if (nandRet != NAND_RESULT_OK) {
                        OSReport("NandSDWorker: NANDPrivateDelete %s failed.[%d]\n", c_succession_path, nandRet);
                        if (nandRet == NAND_RESULT_CORRUPT) {
                            pWork->mAsyncResult = WORKER_RESULT_NAND_CORRUPT;
                            goto CLEANUP;
                        }
                    }
                } else {
                    if (check_nand_free_area(1, 0, 0, 0) != WORKER_RESULT_OK) {
                        OSReport("NandSDWorker: cannot make %s because of system area shortage.\n", c_succession_path);
                        goto CLEANUP;
                    }
                }
                nandRet = nand::wrapper::PrivateCreateDir(c_succession_path, NAND_PERM_ALL_RW, 0);
                if (nandRet != NAND_RESULT_OK) {
                    OSReport("NandSDWorker: NANDPrivateCreateDir %s failed.[%d]\n", c_succession_path, nandRet);
                    if (nandRet == NAND_RESULT_CORRUPT) {
                        pWork->mAsyncResult = WORKER_RESULT_NAND_CORRUPT;
                    }
                    goto CLEANUP;
                }
            }

            if (check_nand_free_area(1, 1, 0, 0) != WORKER_RESULT_OK) {
                OSReport("NandSDWorker: cannot make %s because of system area shortage.\n", c_transferid_path);
                goto CLEANUP;
            }

            nandRet = nand::wrapper::PrivateCreate(c_transferid_path, NAND_PERM_ALL_RW, 0);
            if (nandRet != NAND_RESULT_OK) {
                OSReport("NandSDWorker: NANDPrivateCreate %s failed.[%d]\n", c_transferid_path, nandRet);
                if (nandRet == NAND_RESULT_CORRUPT) {
                    pWork->mAsyncResult = WORKER_RESULT_NAND_CORRUPT;
                }
                goto CLEANUP;
            }

            NANDFileInfo finfo;
            nandRet = nand::wrapper::PrivateOpen(c_transferid_path, &finfo, NAND_ACCESS_WRITE);
            if (nandRet != NAND_RESULT_OK) {
                OSReport("NandSDWorker: NANDPrivateOpen %s failed.[%d]\n", c_transferid_path, nandRet);
                goto CLEANUP;
            }

            buf = (u8*)MEMAllocFromExpHeapEx(pWork->pHeap19000, 0x20, 0x20);
            memset(buf, 0, 0x20);
            NETGetWirelessMacAddress(buf);
            nandRet = nand::wrapper::Write(&finfo, buf, 0x20);
            if (nandRet != 0x20) {
                OSReport("NandSDWorker: NANDWrite %s failed.[%d]\n", c_transferid_path, nandRet);
                if (nandRet == NAND_RESULT_CORRUPT) {
                    pWork->mAsyncResult = WORKER_RESULT_NAND_CORRUPT;
                }
                nand::wrapper::Close(&finfo);
                goto CLEANUP;
            }

            nandRet = nand::wrapper::Close(&finfo);
            if (nandRet != NAND_RESULT_OK) {
                OSReport("NandSDWorker: NANDClose %s failed.[%d]\n", c_transferid_path, nandRet);
                if (nandRet == NAND_RESULT_CORRUPT) {
                    pWork->mAsyncResult = WORKER_RESULT_NAND_CORRUPT;
                }
                goto CLEANUP;
            }
            OSReport("NandSDWorker: %s created.[%02x%02x%02x%02x%02x%02x]\n", c_transferid_path, buf[0], buf[1], buf[2], buf[3], buf[4], buf[5]);
        } else {
            OSReport("NandSDWorker: %s already exist.\n", c_transferid_path);
            goto CLEANUP;
        }

    CLEANUP:
        change_uid(SYSMENU_TITLE_ID);
        if (titleIds != NULL) {
            MEMFreeToExpHeap(pWork->pHeap19000, titleIds);
        }
        if (buf != NULL) {
            MEMFreeToExpHeap(pWork->pHeap19000, buf);
        }
    }

    int NandSDWorker::clean_duplicated_nand_app(ESTitleId* titleIds, u32 titleIdCount) {
        int result;
        OSReport("NandSDWorker: cleaning duplicated nand app...\n");
        for (int i = 0; i < titleIdCount; i++) {
            u64 titleIdA = titleIds[i];
            if (is_user_nand_app(titleIdA) && is_all_region(titleIdA) && nand_app_exist_ex(titleIdA) != EXISTENCE_NOEXIST) {
                for (int j = 0; j < titleIdCount; j++) {
                    ESTitleId titleIdB = titleIds[j];
                    if ((titleIdA != titleIdB && is_same_title(titleIdA, titleIdB)) && nand_app_exist_ex(titleIds[j]) != EXISTENCE_NOEXIST) {
                        result = delete_ticket(titleIdA);
                        if (result != WORKER_RESULT_OK)
                            OSReport("NandSDWorker: delete ticket 0x%016llx failed.[%d]\n", titleIdA, result);

                        result = delete_nand_app_content(titleIdA);
                        if (result == WORKER_RESULT_NAND_CORRUPT)
                            goto RET;
                        if (result != WORKER_RESULT_OK)
                            OSReport("NandSDWorker: delete title 0x%016llx content failed.[%d]\n", titleIdA, result);

                        result = recursion_nand_save(titleIdA, RECURSIVE_DELETE, NULL, 0);
                        if (result == WORKER_RESULT_NAND_CORRUPT)
                            goto RET;
                        if (result != WORKER_RESULT_OK)
                            OSReport("NandSDWorker: delete title 0x%016llx content failed.[%d]\n", titleIdA, result);

                        OSReport("NandSDWorker: delete title 0x%016llx duplicated by 0x%016llx.\n", titleIdA, titleIds[j]);
                        delete_download_task(titleIdA);
                        titleIds[i] = 0;
                        break;
                    }
                }
            }
        }
        result = WORKER_RESULT_OK;
    RET:
        return result;
    }

    int NandSDWorker::clean_partial_nand_app(ESTitleId* titleIds, u32 titleIdCount, u32* numNandAppsOut) {
        int result;
        OSReport("NandSDWorker: cleaning partial nand app...\n");
        for (int i = 0; i < titleIdCount; i++) {
            if (unk_0x4 != false)
                return WORKER_RESULT_UNK_N18;
            if (is_user_nand_app(titleIds[i]) && (((u32)ES_TITLE_CODE(titleIds[i]) & 0xffffff00) != 0x00555000)) {
                int existResult = nand_app_exist_ex(titleIds[i]);
                if (existResult == EXISTENCE_NOEXIST) {
                    if (utility::ESMisc::CheckSafeDeleteTitle(System::getMem2Sys(), titleIds[i]) > 0) {
                        int delResult = utility::ESMisc::DeleteTitle(System::getMem2Sys(), titleIds[i]);
                        if (delResult != 0) {
                            OSReport("NandSDWorker: delete title 0x%016llx failed.[%d]\n", titleIds[i], delResult);
                        } else {
                            OSReport("NandSDWorker: clean empty title %016llx\n", titleIds[i]);
                        }
                    }
                } else if (existResult == EXISTENCE_INCOMPLETE) {
                    result = delete_nand_app_content(titleIds[i]);
                    if (result == WORKER_RESULT_NAND_CORRUPT)
                        goto RET;
                    if (result != WORKER_RESULT_OK)
                        OSReport("NandSDWorker: delete title 0x%016llx content failed.[%d]\n", titleIds[i], result);
                } else if (existResult == EXISTENCE_COMPLETE) {
                    (*numNandAppsOut)++;
                }
            }
        }
        result = WORKER_RESULT_OK;
    RET:
        return result;
    }

    int NandSDWorker::clean_partial_nand_save(ESTitleId* titleIds, u32 titleIdCount, u32* numNandSavesOut) {
        int result;
        OSReport("NandSDWorker: cleaning partial nand save...\n");
        for (int i = 0; i < titleIdCount; i++) {
            if (is_disk_or_user_nand_app(titleIds[i])) {
                u32 dirEntryCnt = 0;
                if (change_uid(titleIds[i])) {
                    // This is somewhere between 0x41 and 0x50, but 0x41 seems to make the nmost sense because it's 0x40 + NULL byte
                    char path[0x41];
                    get_nand_data_only_title_save_path(titleIds[i], path);
                    if (nand::wrapper::ReadDir(path, NULL, &dirEntryCnt) == NAND_RESULT_OK && dirEntryCnt != 0) {
                        if (check_nand_save_banner_exist(titleIds[i])) {
                            (*numNandSavesOut)++;
                        } else {
                            strncat(path, "/noerase", 0x40);
                            u8 fileType;
                            if (nand::wrapper::GetType(path, &fileType) == NAND_RESULT_OK && fileType == NAND_TYPE_DIR) {
                                OSReport("NandSDWorker: ignore nand save 0x%016llx becase of noerase\n", titleIds[i]);
                            } else {
                                result = recursion_nand_save(titleIds[i], RECURSIVE_DELETE, NULL, 0);
                                if (result == WORKER_RESULT_NAND_CORRUPT)
                                    return WORKER_RESULT_NAND_CORRUPT;
                                delete_download_task(titleIds[i]);
                            }
                        }
                    }
                }
            }
            if (is_data_only_title(titleIds[i])) {
                if (nand_app_exist_ex(titleIds[i]) == EXISTENCE_COMPLETE) {
                    (*numNandSavesOut)++;
                } else {
                    s32 delResult = utility::ESMisc::DeleteTitle(System::getMem2Sys(), titleIds[i]);
                    if (delResult != 0) {
                        OSReport("NandSDWorker: ESMisc::DeleteTitle failed [%d]\n", delResult);
                        return WORKER_RESULT_GENERIC_ERR;
                    }
                    OSReport("NandSDWorker: clean data title %016llx\n", titleIds[i]);
                }
            }
        }
        result = WORKER_RESULT_OK;
    RET:
        return result;
    }

    void NandSDWorker::do_mount_sd() {
        // FAError FVar1;
        int faMountResult;

        switch (s_sd_state) {
            default:
                break;
            case SD_STATE_INITIAL:
                if (FAAttach(FA_DEVICE_SD, NULL, 0, &pWork->mFatDriveTable) == FA_ERR_SUCCESS) {
                    OSReport("NandSDWorker: attach SD card drive = %c\n", pWork->mFatDriveTable.drive);
                    s_sd_state = SD_STATE_ERRORED;
                    faMountResult = call_fa_mount();
                    if (faMountResult == WORKER_RESULT_OK) {
                        s_sd_state = SD_STATE_MOUNTED;
                        if (pWork->pSaveCacheHeap != NULL) {
                            clear_save_cache(&pWork->mSavesListSD);
                            get_sd_save_list(NULL);
                        }
                        if (pWork->pAppCacheHeap != NULL) {
                            clear_app_cache(&pWork->mAppsListSD);
                            get_sd_app_list(NULL);
                        }
                        if (s_sd_state == SD_STATE_MOUNTED)
                            s_sd_state = SD_STATE_READY;
                    } else if (faMountResult == WORKER_RESULT_BROKEN_MEDIA) {
                        OSReport("NandSDWorker:: Broken Media\n");
                        s_sd_state = SD_STATE_BROKEN_MEDIA;
                    } else if (faMountResult == WORKER_RESULT_ILLEGAL_MEDIA) {
                        OSReport("NandSDWorker:: Illegal Media\n");
                        s_sd_state = SD_STATE_ILLEGAL_MEDIA;
                    } else {
                        OSReport("NandSDWorker:: not inserted\n");
                        s_sd_state = SD_STATE_SLOT_EMPTY;
                    }
                    pWork->mAsyncResult = faMountResult;
                } else {
                    OSReport("NandSDWorker: FAAttach failed.[%d]\n", FAErrnum());
                    s_sd_state = SD_STATE_INITIAL;
                    pWork->mAsyncResult = WORKER_RESULT_GENERIC_ERR;
                }
                break;

            case SD_STATE_SLOT_EMPTY:
                if (pWork->mSdMountErr == -1)
                    pWork->mAsyncResult = WORKER_RESULT_GENERIC_ERR;
                else
                    pWork->mAsyncResult = pWork->mSdMountErr;
                break;

            case SD_STATE_NOT_MOUNTED:
                s_sd_state = SD_STATE_ERRORED;
                faMountResult = call_fa_mount();
                if (faMountResult == WORKER_RESULT_OK) {
                    s_sd_state = SD_STATE_MOUNTED;
                    if (pWork->pSaveCacheHeap != NULL) {
                        clear_save_cache(&pWork->mSavesListSD);
                        get_sd_save_list(NULL);
                    }
                    if (pWork->pAppCacheHeap != NULL) {
                        clear_app_cache(&pWork->mAppsListSD);
                        get_sd_app_list(NULL);
                    }
                    if (s_sd_state == SD_STATE_MOUNTED)
                        s_sd_state = SD_STATE_READY;
                } else if (faMountResult == WORKER_RESULT_BROKEN_MEDIA) {
                    s_sd_state = SD_STATE_BROKEN_MEDIA;
                } else if (faMountResult == WORKER_RESULT_ILLEGAL_MEDIA) {
                    s_sd_state = SD_STATE_ILLEGAL_MEDIA;
                } else {
                    s_sd_state = SD_STATE_SLOT_EMPTY;
                }
                pWork->mAsyncResult = faMountResult;
                break;

            case SD_STATE_READY:
                pWork->mAsyncResult = WORKER_RESULT_OK;
                break;
        }
    }

    int NandSDWorker::call_fa_mount() {
        if (s_sd_state != SD_STATE_INITIAL) {
            OSReport("NandSDWorker: force unmount sd before mounting[%d]\n", FAUnmount(pWork->mFatDriveTable.drive, true));
            OSReport("NandSDWorker: detach sd [%d]\n", FADetach(pWork->mFatDriveTable.drive));
            OSReport("NandSDWorker: attach sd [%d]\n", FAAttach(FA_DEVICE_SD, NULL, 0, &pWork->mFatDriveTable));
        }

        if (FAMount(pWork->mFatDriveTable.drive) == FA_ERR_SUCCESS) {
            OSReport("NandSDWorker: mount SD card drive = %c\n", pWork->mFatDriveTable.drive);
            FAError bufferingErr = FABuffering(pWork->mFatDriveTable.drive, 2);
            if (bufferingErr == FA_ERR_SUCCESS) {
                pWork->mIsSDWriteProtected = FALSE;
                return WORKER_RESULT_OK;
            } else if (FAErrnum() == FA_ERR_EWRTPROTECT) {
                OSReport("NandSDWorker: SD card is write protected.\n");
                pWork->mIsSDWriteProtected = TRUE;
                return WORKER_RESULT_OK;
            } else {
                return handle_sd_error(bufferingErr, NULL);
            }
        } else {
            FAError errnum = FAErrnum();
            if (errnum == FA_ERR_ENOEXEC) {
                return (pWork->mFatDriveTable.stat & 0x10) != 0 ? WORKER_RESULT_BROKEN_MEDIA : WORKER_RESULT_GENERIC_ERR;
            } else if (errnum == FA_ERR_EINVAL) {
                return WORKER_RESULT_GENERIC_ERR;
            } else if (errnum == FA_ERR_EIO) {
                OSReport("NandSDWorker:: stat : %08x\n", pWork->mFatDriveTable.stat);
                return s_sd_state == SD_STATE_SLOT_EMPTY ? WORKER_RESULT_GENERIC_ERR : WORKER_RESULT_ILLEGAL_MEDIA;
            } else {
                return WORKER_RESULT_ILLEGAL_MEDIA;
            }
        }
    }

    void NandSDWorker::do_list_nand_save() {
        ESTitleId* titleIds;
        ESTitleId* titleIdsOut;
        u32 numTitles;

        titleIdsOut = (ESTitleId*)pWork->pParamA;

        numTitles = 0;
        ES_ListTitlesOnCard(NULL, &numTitles);
        titleIds = (ESTitleId*)MEMAllocFromExpHeapEx(pWork->pHeap19000, numTitles * sizeof(ESTitleId), 0x20);
        ES_ListTitlesOnCard(titleIds, &numTitles);

        for (int iOut = 0, i = 0; i < numTitles; i++) {
            if (is_disk_or_user_nand_app(titleIds[i])) {
                char path[0x41];
                get_nand_data_only_title_save_path(titleIds[i], path);

                u32 fsblocks;
                u32 inodes;
                if (nand::wrapper::SecretGetUsage(path, &fsblocks, &inodes) == NAND_RESULT_OK) {
                    if (inodes > 1) {
                        titleIdsOut[iOut++] = titleIds[i];
                    }
                }
            } else if (is_data_only_title(titleIds[i])) {
                titleIdsOut[iOut++] = titleIds[i];
            }
        }
        change_uid(SYSMENU_TITLE_ID);
        MEMFreeToExpHeap(pWork->pHeap19000, titleIds);
        pWork->mAsyncResult = WORKER_RESULT_OK;
    }

    bool NandSDWorker::check_nand_save_banner_exist(ESTitleId titleId) {
        u8 fileType = 0;
        char path[0x41];

        if (!change_uid(titleId))
            return false;

        get_nand_data_only_title_save_path(titleId, path);
        strncat(path, "/", 0x40);
        strncat(path, c_banner_file_name, 0x40);
        int getTypeRes = nand::wrapper::GetType(path, &fileType);
        if (getTypeRes == NAND_RESULT_OK && fileType == NAND_TYPE_FILE)
            return true;

        if (getTypeRes != NAND_RESULT_NOEXISTS)
            OSReport("NandSDWorker: NANDGetType %s failed.[%d/%d]\n", path, getTypeRes, fileType);

        return false;
    }

    int NandSDWorker::get_nand_save_banner(ESTitleId titleId, WIISaveBannerFile* fileOut, u32* sizeOut) {
        int errno;
        u32 amtRead;
        s32 ret;
        u32 fileLength;
        char path[0x40];
        NANDFileInfo finfo;

        ret = WORKER_RESULT_OK;
        SaveCacheEntry* cached = find_save_cache(&pWork->mSavesListNand, pWork->mTitleId);
        if (cached == NULL || cached->mBanner.magic == 0) {
            fileLength = 0;
            bool fileOpened = false;
            memset(fileOut, 0, 0xf0a0);
            if (is_data_only_title(titleId)) {
                ret = get_save_banner_for_data_only_title(titleId, fileOut, sizeOut);
            } else {
                get_nand_data_only_title_save_path(titleId, path);
                strncat(path, "/", 0x40);
                strncat(path, c_banner_file_name, 0x40);
                if (!change_uid(titleId)) {
                    ret = WORKER_RESULT_GENERIC_ERR;
                    goto CLEANUP;
                }
                errno = nand::wrapper::Open(path, &finfo, NAND_ACCESS_READ);
                if (errno != NAND_RESULT_OK) {
                    OSReport("NandSDWorker: failed to open %s [%d]\n", path, errno);
                    ret = WORKER_RESULT_GENERIC_ERR;
                    goto CLEANUP;
                }
                fileOpened = true;
                errno = nand::wrapper::GetLength(&finfo, &fileLength);
                if (errno != NAND_RESULT_OK) {
                    OSReport("NandSDWorker: failed to get length %s [%d]\n", path, errno);
                    ret = WORKER_RESULT_GENERIC_ERR;
                    goto CLEANUP;
                }

                if (fileLength < offsetof(WIISaveBannerFile, iconData1)) {
                    OSReport("NandSDWorker: banner file %s is too small [%d]\n", path, fileLength);
                    ret = WORKER_RESULT_BAD_FILE;
                    goto CLEANUP;
                } else if (fileLength > sizeof(WIISaveBannerFile)) {
                    OSReport("NandSDWorker: banner file %s is too large [%d]\n", path, fileLength);
                    ret = WORKER_RESULT_BAD_FILE;
                    goto CLEANUP;
                }

                if (sizeOut != NULL)
                    *sizeOut = fileLength;

                amtRead = nand::wrapper::Read(&finfo, fileOut, fileLength);
                if (check_nand_corrupt(amtRead, &ret))
                    goto CLEANUP;

                if (amtRead != fileLength) {
                    OSReport("NandSDWorker: failed to read %s [%d]\n", path, amtRead);
                    ret = WORKER_RESULT_GENERIC_ERR;
                    goto CLEANUP;
                }

                errno = nand::wrapper::Close(&finfo);
                if (check_nand_corrupt(errno, &ret))
                    goto CLEANUP;
                if (errno != NAND_RESULT_OK) {
                    OSReport("NandSDWorker: failed to close %s [%d]\n", path, errno);
                    ret = WORKER_RESULT_GENERIC_ERR;
                    goto CLEANUP;
                }
                fileOpened = false;

                if (fileOut->magic != 'WIBN') {
                    OSReport("NandSDWorker: banner file %s signature is not correct\n", path);
                    ret = WORKER_RESULT_BAD_FILE;
                    goto CLEANUP;
                }

                ret = WORKER_RESULT_OK;

            CLEANUP:
                if (fileOpened) {
                    errno = nand::wrapper::Close(&finfo);
                    if (!check_nand_corrupt(errno, &ret) && errno != NAND_RESULT_OK) {
                        OSReport("NandSDWorker: failed to close %s [%d]\n", path, errno);
                        ret = WORKER_RESULT_GENERIC_ERR;
                    }
                }
                change_uid(SYSMENU_TITLE_ID);
            }

            if (ret == WORKER_RESULT_OK) {
                if (cached != NULL) {
                    memcpy(cached, fileOut, sizeof(WIISaveBannerFile));
                } else {
                    add_save_cache(&pWork->mSavesListNand, titleId, fileOut, -1);
                }
            }
        } else {
            memcpy(fileOut, &cached->mBanner, sizeof(WIISaveBannerFile));
            ret = WORKER_RESULT_OK;
        }
        return ret;
    }

    void NandSDWorker::do_get_sd_save_banner() {
        SaveCacheEntry* cacheEntry = find_save_cache(&pWork->mSavesListSD, pWork->mTitleId);
        if (cacheEntry == NULL || cacheEntry->mBanner.magic == 0) {
            SDSaveBanner* newBanner = (SDSaveBanner*)MEMAllocFromAllocator(&pWork->mBothHeapAllocator, sizeof(SDSaveBanner));
            int result = get_sd_save_banner(pWork->mTitleId, newBanner);
            if (result == WORKER_RESULT_OK) {
                memcpy(pWork->pParamA, &newBanner->mBanner, sizeof(WIISaveBannerFile));
                if (cacheEntry != NULL) {
                    memcpy(cacheEntry, &newBanner->mBanner, sizeof(WIISaveBannerFile));
                } else {
                    add_save_cache(&pWork->mSavesListSD, pWork->mTitleId, &newBanner->mBanner, -1);
                }
                pWork->mAsyncResult = WORKER_RESULT_OK;
            } else {
                pWork->mAsyncResult = result;
            }
            MEMFreeToAllocator(&pWork->mBothHeapAllocator, newBanner);
        } else {
            memcpy(pWork->pParamA, &cacheEntry->mBanner, sizeof(WIISaveBannerFile));
            pWork->mAsyncResult = WORKER_RESULT_OK;
        }
    }
    void NandSDWorker::do_get_sd_app_thumbnail() {
        AppCacheEntry* cacheEntry = find_app_cache(&pWork->mAppsListSD, pWork->mTitleId);
        if (cacheEntry == NULL || cacheEntry->mThumbnailSize == -1) {
            SDAppBanner* sdAppBanner = (SDAppBanner*)MEMAllocFromAllocator(&pWork->mBothHeapAllocator, sizeof(SDAppBanner));
            int getBannerRes = get_sd_app_banner(pWork->mTitleId, sdAppBanner);
            if (getBannerRes != WORKER_RESULT_OK) {
                pWork->mAsyncResult = getBannerRes;
            } else {
                int thumbnailSize = get_sd_app_thumbnail(sdAppBanner, (u8*)pWork->pParamA);
                if (thumbnailSize < 0) {
                    pWork->mAsyncResult = thumbnailSize;
                } else {
                    if (pWork->pParamB != NULL) {
                        memcpy(pWork->pParamB, &sdAppBanner->mMetaHdr, sizeof(channel::SChanMgrMetaHeader));
                    }
                    if (cacheEntry != NULL) {
                        memcpy(cacheEntry->mThumbnail, pWork->pParamA, thumbnailSize);
                        cacheEntry->mThumbnailSize = thumbnailSize;
                    } else {
                        add_app_cache(&pWork->mAppsListSD, pWork->mTitleId, (u8*)pWork->pParamA, thumbnailSize, &sdAppBanner->mMetaHdr, -1);
                    }
                    pWork->mAsyncResult = thumbnailSize;
                }
            }
            if (sdAppBanner != NULL) {
                MEMFreeToAllocator(&pWork->mBothHeapAllocator, sdAppBanner);
            }
        } else {
            memcpy(pWork->pParamA, cacheEntry->mThumbnail, cacheEntry->mThumbnailSize);
            if (pWork->pParamB != NULL) {
                memcpy(pWork->pParamB, &cacheEntry->mMetaHdr, sizeof(channel::SChanMgrMetaHeader));
            }
            pWork->mAsyncResult = cacheEntry->mThumbnailSize;
        }
    }

    void NandSDWorker::do_unk_8134B728() {
        // TODO: Figure this out more
        typedef struct {
            ESTitleId titleId;
            channel::SChanMgrMetaHeader metaHdr;
        } WorkBStruct;

        AppCacheEntry* cacheEntry = find_app_cache(&pWork->mAppsListSD, pWork->mTitleId);
        if (cacheEntry == NULL || cacheEntry->mThumbnailSize == -1) {
            SDAppBanner* sdAppBanner = (SDAppBanner*)MEMAllocFromAllocator(&pWork->mBothHeapAllocator, sizeof(SDAppBanner));
            int getBannerRes = get_sd_app_banner(pWork->mTitleId, sdAppBanner);
            if (getBannerRes != WORKER_RESULT_OK) {
                pWork->mAsyncResult = getBannerRes;
            } else {
                int thumbnailSize = get_sd_app_thumbnail(sdAppBanner, (u8*)pWork->pParamA);
                if (thumbnailSize < 0) {
                    pWork->mAsyncResult = thumbnailSize;
                } else {
                    if (pWork->pParamB != NULL) {
                        WorkBStruct* paramB = (WorkBStruct*)pWork->pParamB;
                        paramB->titleId = sdAppBanner->mTitleId;
                        memcpy(&paramB->metaHdr, &sdAppBanner->mMetaHdr, sizeof(channel::SChanMgrMetaHeader));
                    }
                    if (cacheEntry != NULL) {
                        memcpy(cacheEntry->mThumbnail, pWork->pParamA, thumbnailSize);
                        cacheEntry->mThumbnailSize = thumbnailSize;
                    } else {
                        add_app_cache(&pWork->mAppsListSD, sdAppBanner->mTitleId, (u8*)pWork->pParamA, thumbnailSize, &sdAppBanner->mMetaHdr, -1);
                    }
                    pWork->mAsyncResult = thumbnailSize;
                }
            }
            if (sdAppBanner != NULL) {
                MEMFreeToAllocator(&pWork->mBothHeapAllocator, sdAppBanner);
            }
        } else {
            memcpy(pWork->pParamA, cacheEntry->mThumbnail, cacheEntry->mThumbnailSize);
            if (pWork->pParamB != NULL) {
                WorkBStruct* paramB = (WorkBStruct*)pWork->pParamB;
                paramB->titleId = cacheEntry->titleId;
                memcpy(&paramB->metaHdr, &cacheEntry->mMetaHdr, sizeof(channel::SChanMgrMetaHeader));
            }
            pWork->mAsyncResult = cacheEntry->mThumbnailSize;
        }
    }

    void NandSDWorker::do_update_loc_dat() {
        FAFileStat stat;
        u8 md5Digest[0x10];
        NETMD5Context md5Ctx;

        const char* paths[2] = {"/private/wii/loc.dat", "/private/wii/loc.bak"};
        LocDat* unencFile = (LocDat*)MEMAllocFromAllocator(&pWork->mBothHeapAllocator, sizeof(LocDat));
        LocDat* encFile = (LocDat*)MEMAllocFromAllocator(&pWork->mBothHeapAllocator, sizeof(LocDat));
        unencFile->mMagic[0] = 's';
        unencFile->mMagic[1] = 'd';
        unencFile->mMagic[2] = 'a';
        unencFile->mMagic[3] = 'l';

        memcpy(unencFile->mMd5Digest, c_md5_secret_key, sizeof(unencFile->mMd5Digest));
        memcpy(unencFile->mTitleIds, pWork->pParamA, sizeof(unencFile->mTitleIds));
        memset(unencFile->mPadding, 0, sizeof(unencFile->mPadding));
        NETMD5Init(&md5Ctx);
        NETMD5Update(&md5Ctx, unencFile, sizeof(LocDat));
        NETMD5GetDigest(&md5Ctx, md5Digest);
        memcpy(unencFile->mMd5Digest, md5Digest, sizeof(unencFile->mMd5Digest));
        pWork->mAsyncResult = WORKER_RESULT_GENERIC_ERR;

        if (encrypt(unencFile, sizeof(LocDat), encFile) != WORKER_RESULT_OK) {
            pWork->mAsyncResult = WORKER_RESULT_GENERIC_ERR;
        } else {
            bool fileExists;
            const char* fileName;
            for (int i = 0; i < 2; i++) {
                fileName = paths[i];
                if (FAFstat(fileName, &stat) == FA_ERR_SUCCESS) {
                    if (is_fa_file(stat.stat)) {
                        fileExists = true;
                    } else {
                        pWork->mAsyncResult = WORKER_RESULT_GENERIC_ERR;
                        break;
                    }
                } else {
                    FAError statErr = FAErrnum();
                    if (statErr == FA_ERR_ENOENT || statErr == FA_ERR_EINVAL) {
                        fileExists = false;
                    } else {
                        handle_sd_error_for_entry(FA_ERR_SYSTEM, &pWork->mAsyncResult);
                        break;
                    }
                }

                FAFILE* fileStream;
                if (!fileExists) {
                    s64 freeArea = get_sd_free_area();
                    if (freeArea < 0) {
                        pWork->mAsyncResult = freeArea;
                        break;
                    }
                    if (freeArea < (s32)sizeof(LocDat)) {
                        pWork->mAsyncResult = WORKER_RESULT_NO_SPACE;
                        break;
                    }
                    fileStream = FACreate(fileName, 0);
                    if (fileStream == NULL) {
                        handle_sd_error_for_entry(FA_ERR_SYSTEM, &pWork->mAsyncResult);
                        break;
                    }
                } else {
                    fileStream = FAFopen(fileName, "r+");
                    if (fileStream == NULL) {
                        handle_sd_error_for_entry(FA_ERR_SYSTEM, &pWork->mAsyncResult);
                        break;
                    }
                }
                if (FAFwrite(encFile, sizeof(LocDat), 1, fileStream) != 1) {
                    FAFclose(fileStream);
                    handle_sd_error_for_entry(FA_ERR_SYSTEM, &pWork->mAsyncResult);
                    break;
                }
                if (FAFclose(fileStream) == FA_ERR_SYSTEM) {
                    handle_sd_error_for_entry(FA_ERR_SYSTEM, &pWork->mAsyncResult);
                    break;
                }
            }
        }
        MEMFreeToAllocator(&pWork->mBothHeapAllocator, unencFile);
        MEMFreeToAllocator(&pWork->mBothHeapAllocator, encFile);
    }

    void NandSDWorker::do_read_loc_dat() {
        FAFileStat stat;
        u8 md5Digest[0x10];
        NETMD5Context md5Ctx;

        const char* paths[2] = {"/private/wii/loc.dat", "/private/wii/loc.bak"};
        LocDat* encFile = (LocDat*)MEMAllocFromAllocator(&pWork->mBothHeapAllocator, sizeof(LocDat));
        LocDat* unencFile = (LocDat*)MEMAllocFromAllocator(&pWork->mBothHeapAllocator, sizeof(LocDat));

        pWork->mAsyncResult = WORKER_RESULT_GENERIC_ERR;
        get_sd_free_area();  // why?

        bool hadSuccess = false;
        bool errored = false;
        for (int i = 0; i < 2; i++) {
            const char* fileName = paths[i];
            if (sd_file_exist(fileName, sizeof(LocDat) - 1) > 0) {
                FAFILE* fileStream = FAFopen(fileName, "r");
                if (fileStream != NULL) {
                    if (FAFread(encFile, sizeof(LocDat), 1, fileStream) == 1) {
                        if (FAFclose(fileStream) != FA_ERR_SYSTEM) {
                            if (decrypt(encFile, sizeof(LocDat), unencFile) == WORKER_RESULT_OK) {
                                memcpy(md5Digest, unencFile->mMd5Digest, 0x10);
                                memcpy(unencFile->mMd5Digest, c_md5_secret_key, 0x10);
                                if (check_md5(md5Digest, (u8*)unencFile, sizeof(LocDat))) {
                                    pWork->mAsyncResult = WORKER_RESULT_OK;
                                    if (!hadSuccess) {
                                        hadSuccess = true;
                                        memcpy(pWork->pParamA, unencFile->mTitleIds, sizeof(unencFile->mTitleIds));
                                    }
                                } else {
                                    pWork->mAsyncResult = WORKER_RESULT_BAD_FILE;
                                }
                            }
                        } else {
                            handle_sd_error_for_entry(FA_ERR_SYSTEM, &pWork->mAsyncResult);
                        }
                    } else {
                        handle_sd_error_for_entry(FA_ERR_SYSTEM, &pWork->mAsyncResult);
                    }
                } else {
                    handle_sd_error_for_entry(FA_ERR_SYSTEM, &pWork->mAsyncResult);
                }
            } else {
                pWork->mAsyncResult = WORKER_RESULT_GENERIC_ERR;
            }

            if (pWork->mAsyncResult != WORKER_RESULT_OK)
                errored = true;
        }
        if (hadSuccess && errored) {
            pWork->mAsyncResult = -17;
        }
        MEMFreeToAllocator(&pWork->mBothHeapAllocator, encFile);
        MEMFreeToAllocator(&pWork->mBothHeapAllocator, unencFile);
    }

    void NandSDWorker::do_unk_8134BED0() {
        // TODO: Clean up paramA and paramB types
        SDAppBanner* appBnr = (SDAppBanner*)MEMAllocFromAllocator(&pWork->mBothHeapAllocator, sizeof(SDAppBanner));

        u16 nandTitleVersion, sdTitleVersion;
        u32 numTicketViews;
        ESTitleId wadTitleId;
        char appPath[0x40];

        nandTitleVersion = 0;
        pWork->mAsyncResult = WORKER_RESULT_GENERIC_ERR;
        numTicketViews = 0;
        int errno = ES_GetTicketViews(pWork->mTitleId, NULL, &numTicketViews);
        if (errno != ES_ERR_OK) {
            OSReport("NandSDWorker: ES_GetTicketViews failed [%d]\n", errno);
            pWork->mAsyncResult = WORKER_RESULT_GENERIC_ERR;
            goto CLEANUP;
        }
        if (numTicketViews == 0) {
            pWork->mAsyncResult = WORKER_RESULT_ES_ERROR;
            goto CLEANUP;
        }

        int getSdAppBannerRes;
        getSdAppBannerRes = get_sd_app_banner(pWork->mTitleId, appBnr);
        if (getSdAppBannerRes != WORKER_RESULT_OK) {
            pWork->mAsyncResult = getSdAppBannerRes;
            goto CLEANUP;
        }

        get_sd_app_path(pWork->mTitleId, appPath);
        errno =
            WADGetTitleVersionEx(appPath, &wadTitleId, &sdTitleVersion, WAD_LOC_SD_CARD, ROUNDUP(appBnr->mThumbnailSize, 0x40) + sizeof(SDAppBanner));
        if (errno != 0) {
            OSReport("NandSDWorker: WADGetTitleVersionEx failed.[%d]\n", errno);
            pWork->mAsyncResult = WORKER_RESULT_GENERIC_ERR;
            goto CLEANUP;
        }

        if (wadTitleId != appBnr->mTitleId) {
            OSReport("NandSDWorker: titleid %016llx in wad is different from %016llx in banner %s.\n", wadTitleId, appBnr->mTitleId, appPath);
            pWork->mAsyncResult = WORKER_RESULT_GENERIC_ERR;
            goto CLEANUP;
        }

        WADBlocks wadblocks;
        errno = WADImportGetBlocks(appPath, &pWork->mBothHeapAllocator, WAD_LOC_SD_CARD, ROUNDUP(appBnr->mThumbnailSize, 0x40) + sizeof(SDAppBanner),
                                   1, &wadblocks, NULL);
        if (errno == -3008) {
            OSReport("NandSDWorker: WADImportGetBlocks failed, not original Wii.[%d]\n", errno);
            pWork->mAsyncResult = WORKER_RESULT_NOT_TRANSFERRABLE;
            goto CLEANUP;
        } else if (errno != 0) {
            OSReport("NandSDWorker: WADImportGetBlocks failed.[%d]\n", errno);
            pWork->mAsyncResult = WORKER_RESULT_BAD_FILE;
            goto CLEANUP;
        }

        *(u32*)pWork->pParamA = (wadblocks.privateBlocks + wadblocks.unkBlocks) * FS_BLK_SIZE;
        *(u32*)((int)pWork->pParamA + 4) = wadblocks.privateInodes + wadblocks.unkInodes;
        if (pWork->pParamB != NULL) {
            u32 sysInodes, sysFsblocks;
            s32 usrInodes, usrFsblocks;
            errno = get_nand_free_area(&sysInodes, &sysFsblocks, &usrInodes, &usrFsblocks);
            if (errno != WORKER_RESULT_OK) {
                pWork->mAsyncResult = WORKER_RESULT_GENERIC_ERR;
                goto CLEANUP;
            }
            *(int*)pWork->pParamB = usrFsblocks * FS_BLK_SIZE;
            *(s32*)((int)pWork->pParamB + 4) = usrInodes;
        }

        if (getSdAppBannerRes != WORKER_RESULT_OK) {
            pWork->mAsyncResult = getSdAppBannerRes;
            goto CLEANUP;
        }

        if (nand_app_exist_ex(appBnr->mTitleId) == EXISTENCE_COMPLETE) {
            OSReport("NandSDWorker: titleid = 0x%016llx is already in nand.\n", appBnr->mTitleId);
            pWork->mAsyncResult = WORKER_RESULT_ALREADY_EXISTS;
            goto CLEANUP;
        }

        errno = get_nand_title_version(appBnr->mTitleId, &nandTitleVersion);
        if (errno != WORKER_RESULT_OK) {
            pWork->mAsyncResult = errno;
            goto CLEANUP;
        }

        int nandTitleMajor, sdTitleMajor;
        nandTitleMajor = (u16)(nandTitleVersion >> 8);
        sdTitleMajor = (u16)(sdTitleVersion >> 8);
        if (nandTitleMajor > sdTitleMajor) {
            OSReport("NandSDWorker: titleid %016llx has higher version than that of sd (%d vs %d)\n", appBnr->mTitleId, nandTitleVersion,
                     sdTitleVersion);
            pWork->mAsyncResult = WORKER_RESULT_VERSION_ERR;
        } else {
            pWork->mAsyncResult = WORKER_RESULT_OK;
        }
    CLEANUP:
        MEMFreeToAllocator(&pWork->mBothHeapAllocator, appBnr);
    }

    void NandSDWorker::check_backup_fits() {
        u32 newTitleCount = ((TitleIdList*)pWork->pParamA)->mCount;
        ESTitleId* newTitleIds = ((TitleIdList*)pWork->pParamA)->pTitleIds;

        u32 replacingTitleCount = ((TitleIdList*)pWork->pParamB)->mCount;
        ESTitleId* replacingTitleIds = ((TitleIdList*)pWork->pParamB)->pTitleIds;

        ContentBin* contentBin = (ContentBin*)MEMAllocFromExpHeapEx(pWork->pHeap19000, sizeof(ContentBin), 0x20);
        s64 sdFreeArea = get_sd_free_area();
        if (sdFreeArea < 0) {
            pWork->mAsyncResult = sdFreeArea;
            goto CLEANUP;
        }

        u64 totalBackupSize;
        totalBackupSize = 0;
        for (int i = 0; i < newTitleCount; i++) {
            if (s_sd_state != SD_STATE_READY) {
                pWork->mAsyncResult = WORKER_RESULT_GENERIC_ERR;
                goto CLEANUP;
            }
            int getAppBannerRes = get_app_banner_from_meta(newTitleIds[i], &contentBin->hdr);
            if (getAppBannerRes != WORKER_RESULT_OK) {
                pWork->mAsyncResult = getAppBannerRes;
                goto CLEANUP;
            }

            u32 backupSize = 0;
            u32 wadOffset = sizeof(SDAppBanner) + ROUNDUP(contentBin->hdr.mThumbnailSize, 0x40);
            int backupRes = WADBackupEx(newTitleIds[i], 1, &pWork->mBothHeapAllocator, NULL, &backupSize, WAD_LOC_SD_CARD, wadOffset, NULL);
            if (backupRes != 0) {
                OSReport("NandSDWorker: WADBackup failed.[%d]\n", backupRes);
                pWork->mAsyncResult = WORKER_RESULT_GENERIC_ERR;
                goto CLEANUP;
            }
            totalBackupSize += wadOffset;
            totalBackupSize += backupSize;
        }

        for (int i = 0; i < replacingTitleCount; i++) {
            if (s_sd_state != SD_STATE_READY) {
                pWork->mAsyncResult = WORKER_RESULT_GENERIC_ERR;
                goto CLEANUP;
            }
            int getAppBannerRes = get_app_banner_from_meta(replacingTitleIds[i], &contentBin->hdr);
            if (getAppBannerRes != WORKER_RESULT_OK) {
                pWork->mAsyncResult = getAppBannerRes;
                goto CLEANUP;
            }
            u32 backupSize = 0;
            u32 wadOffset = sizeof(SDAppBanner) + ROUNDUP(contentBin->hdr.mThumbnailSize, 0x40);
            int backupRes = WADBackupEx(replacingTitleIds[i], 1, &pWork->mBothHeapAllocator, NULL, &backupSize, WAD_LOC_SD_CARD, wadOffset, NULL);
            if (backupRes != 0) {
                OSReport("NandSDWorker: WADBackup failed.[%d]\n", backupRes);
                pWork->mAsyncResult = WORKER_RESULT_GENERIC_ERR;
                goto CLEANUP;
            }

            totalBackupSize += wadOffset;
            totalBackupSize += backupSize;
        }

        u64 totalDeletableSize;
        totalDeletableSize = 0;
        for (int i = 0; i < replacingTitleCount; i++) {
            if (s_sd_state != SD_STATE_READY) {
                pWork->mAsyncResult = WORKER_RESULT_GENERIC_ERR;
                goto CLEANUP;
            }

            char sdAppPath[0x40];
            get_sd_app_path(replacingTitleIds[i], sdAppPath);

            FAFileStat fStat;
            if (FAFstat(sdAppPath, &fStat) == FA_ERR_SUCCESS) {
                if (is_fa_file(fStat.stat)) {
                    totalDeletableSize += fStat.size;
                } else {
                    pWork->mAsyncResult = WORKER_RESULT_GENERIC_ERR;
                    goto CLEANUP;
                }
            } else {
                pWork->mAsyncResult = WORKER_RESULT_GENERIC_ERR;
                goto CLEANUP;
            }
        }

        u64 netSize;
        netSize = totalBackupSize - totalDeletableSize;
        if (netSize + 0x19000 > sdFreeArea) {
            OSReport("NandSDWorker: total backup size [%d] is too large for SD card. \n", netSize + 0x19000);
            pWork->mAsyncResult = netSize + 0x19000;
            goto CLEANUP;
        }

        pWork->mAsyncResult = WORKER_RESULT_OK;

    CLEANUP:
        MEMFreeToExpHeap(pWork->pHeap19000, contentBin);
    }
    void NandSDWorker::do_list_nand_apps_usages() {
        ESTitleId* titleIds;
        TitleUsage* output = (TitleUsage*)pWork->pParamA;

        u32 titleIdCount = 0;
        pWork->mAsyncResult = WORKER_RESULT_GENERIC_ERR;
        ES_ListTitlesOnCard(NULL, &titleIdCount);
        titleIds = (ESTitleId*)MEMAllocFromExpHeapEx(pWork->pHeap19000, titleIdCount * sizeof(ESTitleId), 0x20);
        ES_ListTitlesOnCard(titleIds, &titleIdCount);

        u32 outI, capacity;
        capacity = (u32)pWork->pParamB;
        outI = 0;
        for (int i = 0; i < titleIdCount; i++) {
            if (outI >= capacity)
                break;

            if (!is_user_nand_app(titleIds[i]))
                continue;

            if (!nand_app_exist(titleIds[i]))
                continue;

            u32 usedFsblocks = 0, usedInodes = 0;
            char path[0x40];
            get_nand_app_path(titleIds[i], path);

            int getUsageRes = nand::wrapper::SecretGetUsage(path, &usedFsblocks, &usedInodes);
            if (getUsageRes != NAND_RESULT_OK) {
                OSReport("NandSDWorker: NANDSecretGetUsage[%s] failed %d\n", path, getUsageRes);
                pWork->mAsyncResult = WORKER_RESULT_GENERIC_ERR;
                goto CLEANUP;
            }
            output[outI].mTitleId = titleIds[i];
            output[outI].mSize = usedFsblocks * FS_BLK_SIZE;
            output[outI].mInode = usedInodes;
            OSReport("NandSDWorker: nand app 0x%016llx size is [%d] inode is [%d]\n", output[outI].mTitleId, output[outI].mSize, output[outI].mInode);
            outI++;
        }
        pWork->mAsyncResult = WORKER_RESULT_OK;
    CLEANUP:
        MEMFreeToExpHeap(pWork->pHeap19000, titleIds);
    }

    void NandSDWorker::do_unk_8134C838() {
        SDAppBanner* sdAppBanner = (SDAppBanner*)MEMAllocFromAllocator(&pWork->mBothHeapAllocator, 0x640);
        TitleIdList* inListA = (TitleIdList*)pWork->pParamA;
        TitleIdList* outListB = (TitleIdList*)pWork->pParamB;
        TitleIdList* outListC = (TitleIdList*)pWork->pParamC;

        ESTitleId* titleIdsInA = inListA->pTitleIds;
        ESTitleId* titleIdsOutB = outListB->pTitleIds;
        ESTitleId* titleIdsOutC = outListC->pTitleIds;

        u32 titleIdCount = inListA->mCount;

        pWork->mAsyncResult = WORKER_RESULT_GENERIC_ERR;

        ESDeviceId deviceId;
        ES_GetDeviceId(&deviceId);

        int countOutB = 0, countOutC = 0;
        for (int i = 0; i < titleIdCount; i++) {
            if (s_sd_state != SD_STATE_READY) {
                pWork->mAsyncResult = WORKER_RESULT_GENERIC_ERR;
                break;
            }

            char path[0x40];
            get_sd_app_path(titleIdsInA[i], path);
            int getAppBannerRes = get_sd_app_banner(titleIdsInA[i], sdAppBanner);
            if (getAppBannerRes == WORKER_RESULT_OK) {
                ESTitleId sdTitleId;
                u16 sdVersion;
                int wadGetTitleVersionRes =
                    WADGetTitleVersionEx(path, &sdTitleId, &sdVersion, WAD_LOC_SD_CARD, (sdAppBanner->mThumbnailSize + 0x3f & 0xffffffc0) + 0x640);
                if (wadGetTitleVersionRes != 0) {
                    OSReport("NandSDWorker: WADGetTitleVersionEx failed.[%d]\n", wadGetTitleVersionRes);
                    titleIdsOutB[countOutB++] = titleIdsInA[i];
                    continue;
                }

                if (sdTitleId != titleIdsInA[i]) {
                    OSReport("NandSDWorker: titleid %llx in wad is different from %llx in banner %s.\n", sdTitleId, sdAppBanner->mTitleId, path);
                    titleIdsOutB[countOutB++] = titleIdsInA[i];
                    continue;
                }

                WADBackupHeader wadHdr;
                int getSdWadheaderRes = get_sd_wad_header(titleIdsInA[i], &wadHdr, ROUNDUP(sdAppBanner->mThumbnailSize, 0x40));
                if (getSdWadheaderRes != WORKER_RESULT_OK) {
                    titleIdsOutB[countOutB++] = titleIdsInA[i];
                }
                if (wadHdr.deviceId == deviceId) {
                    u16 titleVersion;
                    get_nand_title_version(titleIdsInA[i], &titleVersion);
                    if (titleVersion != sdVersion) {
                        titleIdsOutB[countOutB++] = titleIdsInA[i];
                    }
                } else {
                    titleIdsOutB[countOutB++] = titleIdsInA[i];
                }
            } else if (getAppBannerRes == WORKER_RESULT_GENERIC_ERR) {
                titleIdsOutC[countOutC++] = titleIdsInA[i];
            } else {
                titleIdsOutB[countOutB++] = titleIdsInA[i];
            }
        }
        outListC->mCount = countOutC;
        outListB->mCount = countOutB;
        pWork->mAsyncResult = WORKER_RESULT_OK;
        MEMFreeToAllocator(&pWork->mBothHeapAllocator, sdAppBanner);
    }
    void NandSDWorker::do_get_nand_save_size() {
        SaveCacheEntry* cacheEntry = (SaveCacheEntry*)find_save_cache(&pWork->mSavesListNand, pWork->mTitleId);
        if (cacheEntry == NULL || cacheEntry->mSize == -1) {
            u32 usedBlocks = 0;
            u32 usedInodes = 0;
            char path[0x40];
            if (is_data_only_title(pWork->mTitleId)) {
                get_nand_not_data_only_title_save_path(pWork->mTitleId, path);
            } else {
                get_nand_data_only_title_save_path(pWork->mTitleId, path);
            }

            int secretGetUsageRes = nand::wrapper::SecretGetUsage(path, &usedBlocks, &usedInodes);
            if (secretGetUsageRes != NAND_RESULT_OK) {
                OSReport("NandSDWorker: NANDSecretGetUsage[%s] failed %d\n", path, secretGetUsageRes);
                pWork->mAsyncResult = WORKER_RESULT_GENERIC_ERR;
                return;
            }

            if (is_data_only_title(pWork->mTitleId)) {
                get_nand_meta_file_path(pWork->mTitleId, path);
                s32 metaFileLen = nand_get_length(path);
                if (metaFileLen > 0) {
                    usedBlocks = usedBlocks + ((u32)metaFileLen + (FS_BLK_SIZE - 1)) / FS_BLK_SIZE;
                } else {
                    if (metaFileLen != WORKER_RESULT_GENERIC_ERR) {
                        OSReport("NandSDWorker: failed to get meta file size.[%d]\n", metaFileLen);
                        pWork->mAsyncResult = metaFileLen;
                        return;
                    }
                }
            }
            pWork->mAsyncResult = usedBlocks * FS_BLK_SIZE;
            OSReport("NandSDWorker: save size under %s is [%d] : [inodes:%d]\n", path, pWork->mAsyncResult, usedInodes);
            if (cacheEntry != NULL) {
                cacheEntry->mSize = pWork->mAsyncResult;
            } else {
                add_save_cache(&pWork->mSavesListNand, pWork->mTitleId, NULL, pWork->mAsyncResult);
            }
        } else {
            pWork->mAsyncResult = cacheEntry->mSize;
        }
    }
    void NandSDWorker::do_get_nand_app_size() {
        AppCacheEntry* cacheEntry = find_app_cache(&pWork->mAppsListNand, pWork->mTitleId);
        if (cacheEntry == NULL || cacheEntry->mFileSize == -1) {
            u32 usedBlocks = 0;
            u32 usedInodes = 0;
            char path[0x40];

            get_nand_app_path(pWork->mTitleId, path);
            int secretGetUsageRes = nand::wrapper::SecretGetUsage(path, &usedBlocks, &usedInodes);
            if (secretGetUsageRes != NAND_RESULT_OK) {
                OSReport("NandSDWorker: NANDSecretGetUsage[%s] failed %d\n", path, secretGetUsageRes);
                pWork->mAsyncResult = WORKER_RESULT_GENERIC_ERR;
                return;
            }

            get_nand_meta_file_path(pWork->mTitleId, path);
            s32 metaFileLen = nand_get_length(path);
            if (metaFileLen > 0) {
                usedBlocks = usedBlocks + ((u32)metaFileLen + (FS_BLK_SIZE - 1)) / FS_BLK_SIZE;
            } else {
                if (metaFileLen != WORKER_RESULT_GENERIC_ERR) {
                    OSReport("NandSDWorker: failed to get meta file size.[%d]\n", metaFileLen);
                    pWork->mAsyncResult = metaFileLen;
                    return;
                }
            }

            pWork->mAsyncResult = usedBlocks * FS_BLK_SIZE;
            OSReport("NandSDWorker: nand app 0x%016llx size is [%d]\n", pWork->mTitleId, pWork->mAsyncResult);
            if (cacheEntry != NULL) {
                cacheEntry->mFileSize = pWork->mAsyncResult;
            } else {
                add_app_cache(&pWork->mAppsListNand, pWork->mTitleId, NULL, 0, NULL, pWork->mAsyncResult);
            }
        } else {
            pWork->mAsyncResult = cacheEntry->mFileSize;
        }
    }

    int NandSDWorker::get_sd_save_size(ESTitleId32 titleId) {
        s32 size;
        SaveCacheEntry* cacheEntry = find_save_cache(&pWork->mSavesListSD, titleId);
        if (cacheEntry == NULL || cacheEntry->mSize == -1) {
            char path[0x40];
            get_sd_save_path(titleId, path);

            FAFileStat fStat;
            FAError statErr = FAFstat(path, &fStat);
            if (statErr == FA_ERR_SUCCESS) {
                if (statErr == FA_ERR_SUCCESS && fStat.size > sizeof(SaveCacheEntry) && is_fa_file(fStat.stat)) {
                    OSReport("NandSDWorker: file %s size = %d\n", path, fStat.size);
                    size = fStat.size;
                    if (cacheEntry != NULL) {
                        cacheEntry->mSize = fStat.size;
                    } else {
                        add_save_cache(&pWork->mSavesListSD, titleId, NULL, fStat.size);
                    }
                } else {
                    size = WORKER_RESULT_GENERIC_ERR;
                }
            } else {
                OSReport("NandSDWorker: FAFstat failed.\n");
                handle_sd_error_for_entry(FA_ERR_SYSTEM, &size);
            }
        } else {
            size = cacheEntry->mSize;
        }
        return size;
    }
    int NandSDWorker::get_sd_app_size(ESTitleId32 titleId) {
        s32 size;
        AppCacheEntry* cacheEntry = find_app_cache(&pWork->mAppsListSD, titleId);
        if (cacheEntry == NULL || cacheEntry->mFileSize == -1) {
            char path[0x40];
            get_sd_app_path(titleId, path);

            FAFileStat fStat;
            FAError statErr = FAFstat(path, &fStat);
            if (statErr == FA_ERR_SUCCESS) {
                if (statErr == FA_ERR_SUCCESS && fStat.size > sizeof(SDAppBanner) && is_fa_file(fStat.stat)) {
                    OSReport("NandSDWorker: file %s size = %d\n", path, fStat.size);
                    size = fStat.size;
                    if (cacheEntry != NULL) {
                        cacheEntry->mFileSize = fStat.size;
                    } else {
                        add_app_cache(&pWork->mAppsListSD, titleId, NULL, 0, NULL, fStat.size);
                    }
                } else {
                    size = WORKER_RESULT_GENERIC_ERR;
                }
            } else {
                OSReport("NandSDWorker: FAFstat failed.\n");
                handle_sd_error_for_entry(FA_ERR_SYSTEM, &size);
            }
        } else {
            size = cacheEntry->mFileSize;
        }
        return size;
    }
    void NandSDWorker::do_delete_sd_save() {
        char path[0x40];
        get_sd_save_path(pWork->mTitleId, path);

        if (FARemove(path) == FA_ERR_SUCCESS) {
            OSReport("NandSDWorker: delete file %s\n", path);
            pWork->mSdSaveNum--;
            delete_save_cache(&pWork->mSavesListSD, pWork->mTitleId);
            pWork->mAsyncResult = WORKER_RESULT_OK;
        } else {
            OSReport("NandSDWorker: FARemove failed.\n");
            handle_sd_error_for_entry(FA_ERR_SYSTEM, &pWork->mAsyncResult);
        }
    }
    void NandSDWorker::do_delete_sd_app() {
        char path[0x40];
        get_sd_app_path(pWork->mTitleId, path);

        if (FARemove(path) == FA_ERR_SUCCESS) {
            OSReport("NandSDWorker: delete file %s\n", path);
            pWork->mSdAppNum--;
            delete_app_cache(&pWork->mAppsListSD, pWork->mTitleId);
            pWork->mAsyncResult = WORKER_RESULT_OK;
        } else {
            OSReport("NandSDWorker: FARemove failed.\n");
            handle_sd_error_for_entry(FA_ERR_SYSTEM, &pWork->mAsyncResult);
        }
    }

    void NandSDWorker::do_initialize_nand() {
        int recursionNandRes = recursion_nand("/shared2", NULL, RECURSIVE_DELETE, c_ignore_list_for_shared2, ARRAY_LENGTH(c_ignore_list_for_shared2));
        if (recursionNandRes != WORKER_RESULT_OK && recursionNandRes != WORKER_RESULT_GENERIC_ERR) {
            pWork->mAsyncResult = recursionNandRes;
            return;
        }
        OSReport("NandSDWorker: successfully initialize under /shared2.\n");

        int initMetaRes = initialize_meta();
        if (initMetaRes != WORKER_RESULT_OK && initMetaRes != WORKER_RESULT_GENERIC_ERR) {
            pWork->mAsyncResult = initMetaRes;
            return;
        }
        OSReport("NandSDWorker: successfully initialize under /meta.\n");

        int delNandDiskAppRes = delete_nand_disk_app_with_ticket();
        if (delNandDiskAppRes != WORKER_RESULT_OK && delNandDiskAppRes != WORKER_RESULT_GENERIC_ERR) {
            pWork->mAsyncResult = delNandDiskAppRes;
            return;
        }
        int delNandTitlesRes = delete_nand_titles();
        if (delNandTitlesRes != WORKER_RESULT_OK && delNandTitlesRes != WORKER_RESULT_GENERIC_ERR) {
            pWork->mAsyncResult = delNandTitlesRes;
            return;
        }

        int privateDeleteRes = nand::wrapper::PrivateDelete("/shared2/sys");
        if (privateDeleteRes != NAND_RESULT_OK) {
            OSReport("NandSDWorker: NANDPrivateDelete /shared2/sys failed.[%d]\n", privateDeleteRes);
            if (privateDeleteRes == NAND_RESULT_CORRUPT) {
                pWork->mAsyncResult = WORKER_RESULT_NAND_CORRUPT;
                return;
            }
        }
        OSReport("NandSDWorker: successfully delete /shared2/sys.\n");

        BOOL level = OSDisableInterrupts();
        SCBtDeviceInfoArray btDeviceInfo;

        memset(&btDeviceInfo, 0, sizeof(btDeviceInfo));
        if (SCGetBtDeviceInfoArray(&btDeviceInfo)) {
            __SCClearConfBuf();
            if (!SCSetBtDeviceInfoArray(&btDeviceInfo)) {
                OSReport("NandSDWorker: SCSetBtDeviceInfoArray failed.\n");
            }
        } else {
            OSReport("NandSDWorker: SCGetBtDeviceInfoArray failed.\n");
        }

        if (!SCSetConfigDoneFlag(FALSE)) {
            OSReport("NandSDWorker: SCSetConfigDoneFlag failed.\n");
        }

        if (!SCSetConfigDoneFlag2(FALSE)) {
            OSReport("NandSDWorker: SCSetConfigDoneFlag2 failed.\n");
        }

        OSRestoreInterrupts(level);
        int scFlushRes = SCFlush();
        if (scFlushRes == 0) {
            OSReport("NandSDWorker: successfully initialize SC.\n");
        } else {
            OSReport("NandSDWorker: SCFlush failed.[%d]\n", scFlushRes);
        }

        void* nwc24Work = MEMAllocFromExpHeapEx(pWork->pHeap19000, NWC24_LIB_WORK_SIZE, 0x20);
        int nwc24InitRes = NWC24InitFilesIndividually(nwc24Work, FALSE, TRUE, TRUE, TRUE);
        MEMFreeToExpHeap(pWork->pHeap19000, nwc24Work);
        if (nwc24InitRes == NWC24_ERR_NAND_CORRUPT) {
            OSReport("NandSDWorker: NWC24InitFiles failed with NAND currupt.\n");
            pWork->mAsyncResult = WORKER_RESULT_NAND_CORRUPT;
        } else {
            if (nwc24InitRes == NWC24_OK) {
                OSReport("NandSDWorker: successfully initialize NWC24.\n");
            } else {
                OSReport("NandSDWorker: NWC24InitFiles failed.[%d]\n", nwc24InitRes);
            }
            pWork->mAsyncResult = WORKER_RESULT_OK;
        }
    }

    int NandSDWorker::initialize_meta() {
        int resDel00010000 = nand::wrapper::PrivateDelete("/meta/00010000");
        if (check_nand_corrupt(resDel00010000, NULL))
            return WORKER_RESULT_NAND_CORRUPT;
        if (resDel00010000 != NAND_RESULT_OK && resDel00010000 != NAND_RESULT_NOEXISTS)
            OSReport("NandSDWorker: NANDPrivateDelete /meta/00010000 failed [%d]\n", resDel00010000);

        int resDel00010001 = nand::wrapper::PrivateDelete("/meta/00010001");
        if (check_nand_corrupt(resDel00010001, NULL))
            return WORKER_RESULT_NAND_CORRUPT;
        if (resDel00010001 != NAND_RESULT_OK && resDel00010001 != NAND_RESULT_NOEXISTS)
            OSReport("NandSDWorker: NANDPrivateDelete /meta/00010001 failed [%d]\n", resDel00010001);

        return WORKER_RESULT_OK;
    }

    int NandSDWorker::delete_nand_disk_app_with_ticket() {
        int ret;

        ESTitleId* titleIds = NULL;
        u32 titleidCount = 0;

        int listOwnedTitlesRes;
        listOwnedTitlesRes = ES_ListOwnedTitles(NULL, &titleidCount);
        if (listOwnedTitlesRes != ES_ERR_OK) {
            OSReport("NandSDWorker: ES_ListOwnedTitles failed [%d]\n", listOwnedTitlesRes);
            ret = WORKER_RESULT_GENERIC_ERR;
            goto CLEANUP;
        }

        titleIds = (ESTitleId*)MEMAllocFromExpHeapEx(pWork->pHeap19000, titleidCount * sizeof(ESTitleId), 0x20);
        listOwnedTitlesRes = ES_ListOwnedTitles(titleIds, &titleidCount);
        if (listOwnedTitlesRes != ES_ERR_OK) {
            OSReport("NandSDWorker: ES_ListOwnedTitles failed [%d]\n", listOwnedTitlesRes);
            ret = WORKER_RESULT_GENERIC_ERR;
            goto CLEANUP;
        }

        for (int i = 0; i < titleidCount; i++) {
            if (!is_disk_or_user_nand_app(titleIds[i]) && !is_data_only_title(titleIds[i]))
                continue;

            int delTikRes = delete_ticket(titleIds[i]);
            if (delTikRes != WORKER_RESULT_OK && delTikRes != WORKER_RESULT_ES_ERROR) {
                OSReport("NandSDWorker: delete ticket 0x%016llx failed [%d]\n", titleIds[i], delTikRes);
            }
            int delTitleRes = utility::ESMisc::DeleteTitle(System::getMem2Sys(), titleIds[i]);
            if (delTitleRes != 0 && delTitleRes != -106) {
                OSReport("NandSDWorker: ESMisc::DeleteTitle 0x%016llx failed [%d]\n", titleIds[i], delTitleRes);
            }

            OSReport("NandSDWorker: delete title [0x%016llx]\n", titleIds[i]);
        }
        ret = WORKER_RESULT_OK;

    CLEANUP:
        if (titleIds != NULL) {
            MEMFreeToExpHeap(pWork->pHeap19000, titleIds);
        }
        return ret;
    }

    int NandSDWorker::delete_ticket(ESTitleId titleId) {
        ESTicketView* ticketViewList = NULL;
        u32 viewCnt = 0;

        int esCallRes;
        esCallRes = ES_GetTicketViews(titleId, (ESTicketView*)0x0, &viewCnt);
        if (esCallRes) {
            OSReport("NandSDWorker: ES_GetTicketViews failed [%d]\n", esCallRes);
            if (esCallRes == ES_ERR_DONT_EXISTS)
                return WORKER_RESULT_ES_ERROR;
            else
                return WORKER_RESULT_GENERIC_ERR;
        }

        if (viewCnt != 0) {
            u32 listSize = viewCnt * sizeof(ESTicketView);
            ticketViewList = (ESTicketView*)MEMAllocFromExpHeapEx(pWork->pHeap19000, ROUNDUP(listSize, 0x20), 0x20);

            esCallRes = ES_GetTicketViews(titleId, ticketViewList, &viewCnt);
            if (esCallRes != ES_ERR_OK) {
                OSReport("NandSDWorker: ES_GetTicketViews failed [%d]\n", esCallRes);
                MEMFreeToExpHeap(pWork->pHeap19000, ticketViewList);

                if (esCallRes == ES_ERR_DONT_EXISTS)
                    return WORKER_RESULT_ES_ERROR;
                else
                    return WORKER_RESULT_GENERIC_ERR;
            }

            for (int i = 0; i < viewCnt; i++) {
                ESTicketView currTikView ALIGN32;

                currTikView.version = ticketViewList[i].version;
                currTikView.ticketId = ticketViewList[i].ticketId;
                currTikView.deviceId = ticketViewList[i].deviceId;
                currTikView.titleId = ticketViewList[i].titleId;
                currTikView.accessMask[0] = ticketViewList[i].accessMask[0];
                currTikView.accessMask[1] = ticketViewList[i].accessMask[1];
                currTikView.ticketVersion = ticketViewList[i].ticketVersion;
                currTikView.accessTitleID = ticketViewList[i].accessTitleID;
                currTikView.accessTitleMask = ticketViewList[i].accessTitleMask;
                currTikView.license = ticketViewList[i].license;
                currTikView.reserved = ticketViewList[i].reserved;
                currTikView.unk_0x55 = ticketViewList[i].unk_0x55;
                currTikView.cidxMask = ticketViewList[i].cidxMask;
                currTikView.limits = ticketViewList[i].limits;

                esCallRes = ES_DeleteTicket(&currTikView);
                if (esCallRes != ES_ERR_OK) {
                    OSReport("NandSDWorker: ES_DeleteTicket failed [%d]\n", esCallRes);
                    MEMFreeToExpHeap(pWork->pHeap19000, ticketViewList);
                    if (esCallRes == ES_ERR_DONT_EXISTS)
                        return WORKER_RESULT_ES_ERROR;
                    else
                        return WORKER_RESULT_GENERIC_ERR;
                }
                OSReport("NandSDWorker: delete ticket [#%d] in 0x%016llx\n", i, titleId);
            }
            MEMFreeToExpHeap(pWork->pHeap19000, ticketViewList);
        }
        return WORKER_RESULT_OK;
    }

    int NandSDWorker::delete_empty_title(ESTitleId titleId, bool force) {
        int checkSafeRes = utility::ESMisc::CheckSafeDeleteTitle(System::getMem2Sys(), titleId);
        if (checkSafeRes == 1 || force) {
            int deleteRes = utility::ESMisc::DeleteTitle(System::getMem2Sys(), titleId);
            if (deleteRes != 0) {
                OSReport("NandSDWorker: ESMisc::DeleteTitle failed [%d]\n", deleteRes);
                return deleteRes;
            }
        } else if (checkSafeRes < 0) {
            OSReport("NandSDWorker: ESMisc::CheckSafeDeleteTitle failed [%d]\n", checkSafeRes);
            return checkSafeRes;
        }
        return WORKER_RESULT_OK;
    }

    int NandSDWorker::delete_nand_titles() {
        int ret;
        int iVar1;
        ESTitleId* titleIds = NULL;
        u32 titleCount = 0;
        int listTitlesOnCardRes = ES_ListTitlesOnCard(NULL, &titleCount);
        if (listTitlesOnCardRes != ES_ERR_OK) {
            OSReport("NandSDWorker: ES_ListTitlesOnCard failed [%d]\n", listTitlesOnCardRes);
            ret = WORKER_RESULT_GENERIC_ERR;
            goto CLEANUP;
        }

        titleIds = (ESTitleId*)MEMAllocFromExpHeapEx(pWork->pHeap19000, titleCount * sizeof(ESTitleId), 0x20);
        listTitlesOnCardRes = ES_ListTitlesOnCard(titleIds, &titleCount);
        if (listTitlesOnCardRes != ES_ERR_OK) {
            OSReport("NandSDWorker: ES_ListTitlesOnCard failed [%d]\n", listTitlesOnCardRes);
            ret = WORKER_RESULT_GENERIC_ERR;
            goto CLEANUP;
        }

        for (int i = 0; i < titleCount; i++) {
            switch ((u32)ES_TITLE_TYPE_NOMASK(titleIds[i])) {
                case ES_TITLE_TYPE(SYSMENU_TITLE_ID):
                    if ((u32)ES_TITLE_CODE(titleIds[i]) == (u32)ES_TITLE_CODE(SYSMENU_TITLE_ID)) {
                        ret = recursion_nand_save(titleIds[i], RECURSIVE_DELETE, c_ignore_list_for_wiimenu, ARRAY_LENGTH(c_ignore_list_for_wiimenu));
                        if (ret != WORKER_RESULT_OK && ret != WORKER_RESULT_GENERIC_ERR) {
                            OSReport("NandSDWorker: failed to delete wii menu data.\n");
                            goto CLEANUP;
                        }
                        OSReport("NandSDWorker: successfully initialize wii menu data.\n");
                    }
                    break;
                case 0x00010000 | SUBTYPE_SIMPLE_DISC:
                case 0x00010000 | SUBTYPE_WII_SHOP:
                case 0x00010000 | SUBTYPE_CHANNEL_DISC:
                case 0x00010000 | SUBTYPE_DLC:
                case 0x00010000 | SUBTYPE_UNK6:
                case 0x00010000 | SUBTYPE_UNK7:
                    ret = utility::ESMisc::DeleteTitle(System::getMem2Sys(), titleIds[i]);
                    if (ret != 0 && ret != -106) {
                        OSReport("NandSDWorker: ESMisc::DeleteTitle 0x%016llx failed [%d]\n", titleIds[i], ret);
                        ret = WORKER_RESULT_GENERIC_ERR;
                        goto CLEANUP;
                    }
                    OSReport("NandSDWorker: successfully delete app [0x%016llx].\n", titleIds[i]);
                    break;
                case 0x00010000 | SUBTYPE_PREINSTALL:
                case 0x00010000 | SUBTYPE_UNK3:
                case 0x00010000 | SUBTYPE_HIDDEN:
                    ret = recursion_nand_save(titleIds[i], RECURSIVE_DELETE, NULL, 0);
                    if (ret != WORKER_RESULT_OK && ret != WORKER_RESULT_GENERIC_ERR) {
                        OSReport("NandSDWorker: failed to delete 0x%016llx save data.\n", titleIds[i]);
                        goto CLEANUP;
                    }
                    break;
                default:
                    OSReport("NandSDWorker: don't process for 0x%016llx\n", titleIds[i]);
                    break;
            }
        }
        ret = WORKER_RESULT_OK;

    CLEANUP:
        if (titleIds != NULL) {
            MEMFreeToExpHeap(pWork->pHeap19000, titleIds);
        }
        return ret;
    }

    void NandSDWorker::do_get_nand_user_free_area() {
        u32 usedBlocks = 0;
        u32 usedINodes = 0;
        int getUserUsageRes = nand::wrapper::SecretGetUserUsage(&usedBlocks, &usedINodes);
        if (getUserUsageRes != NAND_RESULT_OK) {
            OSReport("NandSDWorker: NANDSecretGetUserUsage failed [%d]\n", getUserUsageRes);
            pWork->mAsyncResult = WORKER_RESULT_GENERIC_ERR;
            return;
        }
        OSReport("NandSDWorker: user fsBlock = %d\n", usedBlocks);
        OSReport("NandSDWorker: user inode   = %d\n", usedINodes);
        pWork->mAsyncResult = NAND_USR_FREE_AREA_SIZE - usedBlocks * FS_BLK_SIZE;
        OSReport("NandSDWorker: user free area = %d/%d\n", pWork->mAsyncResult, NAND_USR_FREE_AREA_SIZE);
    }
    int NandSDWorker::get_nand_free_area(u32* sysInodes, u32* sysFsblocks, s32* usrInodes, s32* usrFsblocks) {
        int ret;
        NANDFileSystemStatus fsStatus;
        u32 usedUsrFsblocks, usedUsrInodes;

        nand::wrapper::SecretGetFileSystemStatus(&fsStatus);
        int getUserUsageRes = nand::wrapper::SecretGetUserUsage(&usedUsrFsblocks, &usedUsrInodes);
        if (getUserUsageRes != NAND_RESULT_OK) {
            OSReport("NandSDWorker: NANDSecretGetUserUsage failed [%d]\n", getUserUsageRes);
            return WORKER_RESULT_GENERIC_ERR;
        }
        *usrFsblocks = USR_FS_BLK_CNT - usedUsrFsblocks;
        *usrInodes = USR_INODE_CNT - usedUsrInodes;
        OSReport("NandSDWorker: user free area fsblocks/inodes = %d/%d\n", *usrFsblocks, *usrInodes);

        int getSysAvailRes = nand::wrapper::SecretGetSystemAvailableArea(&fsStatus, usedUsrFsblocks, usedUsrInodes, sysFsblocks, sysInodes);
        if (getSysAvailRes == NAND_RESULT_OK) {
            OSReport("NandSDWorker: system free area fsblocks/inodes = %d/%d\n", *sysFsblocks, *sysInodes);
        } else {
            OSReport("NandSDWorker: user area overs limit.[%d]\n", getSysAvailRes);
            *sysFsblocks = 0;
            *sysInodes = 0;
        }
        return WORKER_RESULT_OK;
    }
    int NandSDWorker::check_nand_free_area(u32 sysInodes, u32 sysFsblocks, s32 usrInodes, s32 usrFsblocks) {
        u32 freeSysInodes, freeSysFsblocks;
        s32 freeUsrInodes, freeUsrFsblocks;
        if (get_nand_free_area(&freeSysInodes, &freeSysFsblocks, &freeUsrInodes, &freeUsrFsblocks) != WORKER_RESULT_OK) {
            return WORKER_RESULT_GENERIC_ERR;
        }
        if (freeSysInodes < sysInodes) {
            OSReport("NandSDWorker: in short of system inodes. %d/%d \n", sysInodes, freeSysInodes);
            return WORKER_RESULT_NO_SPACE;
        }
        if (freeSysFsblocks < sysFsblocks) {
            OSReport("NandSDWorker: in short of system fsblocks. %d/%d \n", sysFsblocks, freeSysFsblocks);
            return WORKER_RESULT_NO_SPACE;
        }
        if (freeUsrInodes < usrInodes) {
            OSReport("NandSDWorker: in short of user inodes. %d/%d \n", usrInodes, freeUsrInodes);
            return WORKER_RESULT_NO_SPACE;
        }
        if (freeUsrFsblocks < usrFsblocks) {
            OSReport("NandSDWorker: in short of user fsblocks. %d/%d \n", usrFsblocks, freeUsrFsblocks);
            return WORKER_RESULT_NO_SPACE;
        }
        return WORKER_RESULT_OK;
    }

    void NandSDWorker::do_copy_nand_save_to_sd() {
        u32 sdSaveBnrSize = 0;
        SDSaveBanner* sdSaveBnr = NULL;
        void* encSaveBnr = NULL;
        bool changedDir = false;
        bool backedUp = false;
        int isDataOnlyTitle = false;
        // int isDataOnlyTitleRes;
        char bnrPath[0x40];
        char savePath[0x40];
        get_sd_save_path(pWork->mTitleId, savePath);

        s64 sdFreeArea;
        u32 backupWadSize;
        NANDStatus bnrFileStatus;
        s32 uVar1;
        int prepSdCopyRes = prepare_sd_copy(savePath);
        if (prepSdCopyRes != WORKER_RESULT_OK) {
            pWork->mAsyncResult = prepSdCopyRes;
            goto CLEANUP;
        }

        sdFreeArea = get_sd_free_area();
        if (sdFreeArea < 0) {
            pWork->mAsyncResult = sdFreeArea;
            goto CLEANUP;
        }

        sdSaveBnr = (SDSaveBanner*)MEMAllocFromExpHeapEx(pWork->pHeap19000, sizeof(SDSaveBanner), 0x20);
        memset(sdSaveBnr, 0, sizeof(SDSaveBanner));

        int getNandSaveBannerRes;
        getNandSaveBannerRes = get_nand_save_banner(pWork->mTitleId, &sdSaveBnr->mBanner, &sdSaveBnrSize);
        if (getNandSaveBannerRes != WORKER_RESULT_OK) {
            OSReport("NandSDWorker: get banner failed.[%d]\n", getNandSaveBannerRes);
            pWork->mAsyncResult = getNandSaveBannerRes;
            goto CLEANUP;
        }

        sdSaveBnr->mHdrSize = sdSaveBnrSize;
        if ((sdSaveBnr->mBanner.flags & 1) != 0) {
            OSReport("NandSDWorker: this save data has nocopy flag.\n");
            pWork->mAsyncResult = WORKER_RESULT_NOCOPY;
            goto CLEANUP;
        }
        sdSaveBnr->mTitleId = pWork->mTitleId;

        if (is_data_only_title(pWork->mTitleId))
            isDataOnlyTitle = true;

        if (isDataOnlyTitle)
            goto START_BACKUP;

        if (!change_uid(pWork->mTitleId)) {
            pWork->mAsyncResult = WORKER_RESULT_GENERIC_ERR;
            goto CLEANUP;
        }
        get_nand_data_only_title_save_path(pWork->mTitleId, bnrPath);
        strncat(bnrPath, "/", 0x40);
        strncat(bnrPath, c_banner_file_name, 0x40);

        int getStatusRes;
        getStatusRes = nand::wrapper::GetStatus(bnrPath, &bnrFileStatus);
        if (check_nand_corrupt(getStatusRes, &pWork->mAsyncResult))
            goto CLEANUP;
        if (getStatusRes != NAND_RESULT_OK) {
            OSReport("NandSDWorker: NANDGetStatus[%s] failed %d\n", bnrPath, getStatusRes);
            pWork->mAsyncResult = WORKER_RESULT_GENERIC_ERR;
            goto CLEANUP;
        }
        sdSaveBnr->mPerms = bnrFileStatus.permission;
        sdSaveBnr->mAttrib = bnrFileStatus.attribute;

        uVar1 = nand_get_length(bnrPath);
        if (uVar1 < 0) {
            pWork->mAsyncResult = uVar1;
            goto CLEANUP;
        }
        sdSaveBnr->mHdrSize = uVar1;
        get_nand_data_only_title_save_path(pWork->mTitleId, bnrPath);

        int changeDirRes;
        changeDirRes = nand::wrapper::ChangeDir(bnrPath);
        if (changeDirRes != NAND_RESULT_OK) {
            OSReport("NandSDWorker: NANDChangeDir %s failed.[%d]\n", bnrPath, changeDirRes);
            pWork->mAsyncResult = WORKER_RESULT_GENERIC_ERR;
            goto CLEANUP;
        }
        changedDir = true;

    START_BACKUP:
        backupWadSize = 0;
        int wadBackupRes;
        if (isDataOnlyTitle) {
            wadBackupRes =
                WADBackupEx(pWork->mTitleId, 1, &pWork->mBothHeapAllocator, NULL, &backupWadSize, WAD_LOC_SD_CARD, sizeof(SDSaveBanner), NULL);
        } else {
            wadBackupRes =
                WADBackupEx(pWork->mTitleId, 14, &pWork->mBothHeapAllocator, NULL, &backupWadSize, WAD_LOC_SD_CARD, sizeof(SDSaveBanner), NULL);
        }
        if (wadBackupRes == -3002) {
            OSReport("NandSDWorker: WADBackup 0x%016llx failed, this save data has nocopy only.[%d]\n", pWork->mTitleId, wadBackupRes);
            pWork->mAsyncResult = WORKER_RESULT_NOCOPY;
            goto CLEANUP;
        } else if (wadBackupRes != 0) {
            OSReport("NandSDWorker: WADBackup %s failed.[%d]\n", bnrPath, wadBackupRes);
            pWork->mAsyncResult = WORKER_RESULT_GENERIC_ERR;
            goto CLEANUP;
        }

        if (backupWadSize + sizeof(SDSaveBanner) > sdFreeArea) {
            OSReport("NandSDWorker: backup size [%d] is too large for SD card.\n", backupWadSize);
            pWork->mAsyncResult = WORKER_RESULT_NO_SPACE;
            goto CLEANUP;
        }
        memcpy(sdSaveBnr->mMd5Digest, c_md5_secret_key, 0x10);
        NETMD5Context md5Ctx;
        u8 md5Digest[0x10];
        NETMD5Init(&md5Ctx);
        NETMD5Update(&md5Ctx, sdSaveBnr, sizeof(SDSaveBanner));
        NETMD5GetDigest(&md5Ctx, md5Digest);
        memcpy(sdSaveBnr->mMd5Digest, md5Digest, 0x10);
        encSaveBnr = MEMAllocFromAllocator(&pWork->mBothHeapAllocator, sizeof(SDSaveBanner));
        if (encrypt(sdSaveBnr, sizeof(SDSaveBanner), encSaveBnr) != WORKER_RESULT_OK) {
            pWork->mAsyncResult = WORKER_RESULT_GENERIC_ERR;
            goto CLEANUP;
        }

        backedUp = true;
        if (isDataOnlyTitle) {
            wadBackupRes = WADBackupEx(pWork->mTitleId, 1, &pWork->mBothHeapAllocator, savePath, &backupWadSize, WAD_LOC_SD_CARD, 0xf0c0, NULL);
        } else {
            wadBackupRes = WADBackupEx(pWork->mTitleId, 14, &pWork->mBothHeapAllocator, savePath, &backupWadSize, WAD_LOC_SD_CARD, 0xf0c0, NULL);
        }
        if (wadBackupRes == -3002) {
            OSReport("NandSDWorker: WADBackup 0x%016llx failed, this save data has nocopy only.[%d]\n", pWork->mTitleId, wadBackupRes);
            pWork->mAsyncResult = WORKER_RESULT_NOCOPY;
            goto CLEANUP;
        } else if (wadBackupRes != 0) {
            OSReport("NandSDWorker: WADBackup %s failed.[%d]\n", bnrPath, wadBackupRes);
            pWork->mAsyncResult = WORKER_RESULT_GENERIC_ERR;
            goto CLEANUP;
        }
        OSReport("NandSDWorker: make wad backup, size = [%d].\n", backupWadSize);
        FAFILE* stream;
        stream = FAFopen(savePath, "r+");
        if (stream == NULL) {
            OSReport("NandSDWorker: FAFopen %s failed.\n", savePath);
            handle_sd_error(FA_ERR_SYSTEM, &pWork->mAsyncResult);
            goto CLEANUP;
        }
        OSReport("NandSDWorker: create %s in sd.\n", savePath);

        if (handle_sd_error(FAFseek(stream, 0, FA_SEEK_ORIGIN_BEGIN), &pWork->mAsyncResult) != WORKER_RESULT_OK) {
            OSReport("NandSDWorker: FAFseek %s failed.\n", savePath);
            FAFclose(stream);
            goto CLEANUP;
        }

        size_t fwriteRes;
        fwriteRes = FAFwrite(encSaveBnr, sizeof(SDSaveBanner), 1, stream);
        if (fwriteRes != 1) {
            OSReport("NandSDWorker: FAFwrite %s failed.[%d]\n", savePath, fwriteRes);
            handle_sd_error(FA_ERR_SYSTEM, &pWork->mAsyncResult);
            FAFclose(stream);
            goto CLEANUP;
        }

        if (handle_sd_error(FAFclose(stream), &pWork->mAsyncResult) != WORKER_RESULT_OK) {
            OSReport("NandSDWorker: FAFclose %s failed.\n", savePath);
            goto CLEANUP;
        }

        int nocopyExists, notransferExists;
        nocopyExists = item_exist_nand_save_folder(pWork->mTitleId, c_nocopy_folder_name);
        notransferExists = item_exist_nand_save_folder(pWork->mTitleId, c_notransfer_folder_name);

        bool dataOnlyTitle;
        dataOnlyTitle = false;
        if (isDataOnlyTitle)
            dataOnlyTitle = true;
        pWork->mAsyncResult = nocopyExists | (notransferExists << 1) | (dataOnlyTitle << 2);
        pWork->mSdSaveNum++;

    CLEANUP:
        if (sdSaveBnr != NULL) {
            MEMFreeToExpHeap(pWork->pHeap19000, sdSaveBnr);
        }
        if (encSaveBnr != NULL) {
            MEMFreeToAllocator(&pWork->mBothHeapAllocator, encSaveBnr);
        }
        change_uid(SYSMENU_TITLE_ID);
        if (changedDir) {
            int changeDirRes = nand::wrapper::ChangeDir(c_wii_menu_save_path);
            if (changeDirRes != NAND_RESULT_OK) {
                OSReport("NandSDWorker: NANDChangeDir %s failed.[%d]\n", c_wii_menu_save_path, changeDirRes);
            }
        }
        if (pWork->mAsyncResult < WORKER_RESULT_OK && backedUp) {
            int handleSdErrRes = handle_sd_error_for_entry(FARemove(savePath), NULL);
            if (handleSdErrRes == WORKER_RESULT_OK) {
                OSReport("NandSDWorker: remove %s because copy is not done correctly.\n", savePath);
            } else {
                OSReport("NandSDWorker: FARemove %s failed.[%d]\n", savePath, handleSdErrRes);
            }
        }
    }
    int NandSDWorker::prepare_sd_copy(const char* path) {
        FAFileStat fStat;
        int errno;
        FAError statFaErr = FAFstat(path, &fStat);
        errno = handle_sd_error_for_entry(statFaErr, NULL);
        if (errno == WORKER_RESULT_OK) {
            if (fStat.size > sizeof(SDSaveBanner) && is_fa_file(fStat.stat)) {
                OSReport("NandSDWorker: sd data [%s] already exists.\n", path);
                return WORKER_RESULT_ALREADY_EXISTS;
            }
            if (statFaErr == FA_ERR_SUCCESS) {
                errno = handle_sd_error_for_entry(FARemove(path), NULL);
                if (errno != WORKER_RESULT_OK && errno != WORKER_RESULT_GENERIC_ERR) {
                    OSReport("NandSDWorker: FARemove %s failed.[%d]\n", path, errno);
                    return errno;
                }
            }
        } else if (errno == WORKER_RESULT_GENERIC_ERR) {
            errno = create_sd_backup_dir(pWork->mTitleId);
            if (errno != WORKER_RESULT_OK) {
                OSReport("NandSDWorker: create sd backup dir failed.[%d]\n", errno);
                return errno;
            }
        } else {
            OSReport("NandSDWorker: FAFstat %s failed.[%d]\n", path, errno);
            return errno;
        }
        return WORKER_RESULT_OK;
    }

    int NandSDWorker::create_sd_backup_dir(ESTitleId titleId) {
        char path[0x40];

        ESTitleId32 titleCode = ES_TITLE_CODE(titleId);
        const char* paths[4] = {
            NULL,
            "/private/wii/title",
            "/private/wii",
            "/private",
        };

        if (is_data_only_title(titleId)) {
            snprintf(path, 0x40, "/private/wii/title/%08x", titleCode);
        } else {
            snprintf(path, 0x40, "/private/wii/title/%c%c%c%c", (u8)(titleCode >> 0x18), (u8)(titleCode >> 0x10), (u8)(titleCode >> 0x08),
                     (u8)(titleCode >> 0x00));
        }
        paths[0] = path;

        const char* fileName;
        u32 i;
        for (i = 0; i < 4; i++) {
            fileName = paths[i];

            FAFileStat fStat;
            int handleSdErrRes = handle_sd_error_for_entry(FAFstat(fileName, &fStat), NULL);
            if (handleSdErrRes == WORKER_RESULT_OK) {
                if ((fStat.stat & 0x10) == 0) {
                    OSReport("NandSDWorker: %s is not a dir.[%d]\n", fileName, fStat.stat);
                    return WORKER_RESULT_UNK_N12;
                }
                break;
            }
            if (handleSdErrRes != WORKER_RESULT_GENERIC_ERR) {
                OSReport("NandSDWorker: FAFstat %s failed.[%d]\n", fileName, handleSdErrRes);
                return handleSdErrRes;
            }
        }

        if (i != 0)
            return create_sd_dir(paths[i - 1], path);
        else
            return WORKER_RESULT_OK;
    }

    int NandSDWorker::create_sd_dir(const char* base, const char* final) {
        char currPath[0x40];
        int createDirRes;

        u32 currLen = strlen(base);
        u32 finalLen = strlen(final);
        strncpy(currPath, base, 0x40);
        while (true) {
            FADta fData;
            memset(&fData, 0, sizeof(FADta));
            createDirRes = handle_sd_error_for_entry(FACreatedir(currPath, 0, &fData), NULL);
            if (createDirRes != WORKER_RESULT_OK) {
                OSReport("NandSDWorker: FACreatedir %s failed.[%d]\n", currPath, createDirRes);
                return createDirRes;
            }
            OSReport("NandSDWorker: create sd card dir [%s].\n", currPath);
            if (currLen + 1 >= finalLen)
                break;
            strncpy(currPath, final, 0x40);

            char* nextSlash = strstr(currLen + 1 + currPath, "/");
            if (nextSlash != NULL) {
                *nextSlash = '\0';
            }
            currLen = strlen(currPath);
        }
        return WORKER_RESULT_OK;
    }

    void NandSDWorker::do_copy_sd_save_to_nand() {
        bool hasNotransfer = false;
        SDSaveBanner* saveBnr;

        char sdSavePath[0x40];
        char pathC[0x40];
        char pathB[0x40];
        char pathA[0x40] = "";

        bool changedDir = false;
        bool isDataOnlyTitle = false;
        get_sd_save_path(pWork->mTitleId, sdSavePath);
        saveBnr = (SDSaveBanner*)MEMAllocFromAllocator(&pWork->mBothHeapAllocator, sizeof(SDSaveBanner));
        int getSaveBannerRes = get_sd_save_banner(pWork->mTitleId, saveBnr);
        if (getSaveBannerRes != WORKER_RESULT_OK) {
            pWork->mAsyncResult = getSaveBannerRes;
            goto CLEANUP;
        }

        ESTitleId wadTitleId;
        u16 titleVersion;
        int getTitleVersionRes;
        getTitleVersionRes = WADGetTitleVersionEx(sdSavePath, &wadTitleId, &titleVersion, WAD_LOC_SD_CARD, sizeof(SDSaveBanner));
        if (getTitleVersionRes != 0) {
            OSReport("NandSDWorker: WADGetTitleVersionEx failed.[%d]\n", getTitleVersionRes);
            pWork->mAsyncResult = WORKER_RESULT_GENERIC_ERR;
            goto CLEANUP;
        }

        if (wadTitleId != saveBnr->mTitleId) {
            OSReport("NandSDWorker: titleid %016llx in wad is different from %016llx in banner %s.\n", wadTitleId, saveBnr->mTitleId, sdSavePath);
            pWork->mAsyncResult = WORKER_RESULT_BAD_FILE;
            goto CLEANUP;
        }

        if (is_data_only_title(saveBnr->mTitleId)) {
            isDataOnlyTitle = true;
            if (nand_app_exist_ex(saveBnr->mTitleId)) {
                OSReport("NandSDWorker: titleid = 0x%016llx is already in nand.\n", saveBnr->mTitleId);
                pWork->mAsyncResult = WORKER_RESULT_ALREADY_EXISTS;
                goto CLEANUP;
            }
        }
        if (!isDataOnlyTitle) {
            ESError prepTitleDirRes = utility::ESMisc::PrepareTitleDir(saveBnr->mTitleId, System::getMem2Sys());
            if (prepTitleDirRes == ES_ERR_NO_TMD_FILE_FOUND) {
                OSReport("NandSDWorker: titleid = 0x%016llx is not installed.\n", saveBnr->mTitleId);
                pWork->mAsyncResult = WORKER_RESULT_ES_ERROR;
                goto CLEANUP;
            }
            if (prepTitleDirRes != 0) {
                pWork->mAsyncResult = WORKER_RESULT_GENERIC_ERR;
                goto CLEANUP;
            }

            if (!change_uid(saveBnr->mTitleId)) {
                OSReport("NandSDWorker: titleid = 0x%016llx is not installed.\n", saveBnr->mTitleId);
                pWork->mAsyncResult = WORKER_RESULT_ES_ERROR;
                goto CLEANUP;
            }

            if (check_nand_save_banner_exist(saveBnr->mTitleId)) {
                OSReport("NandSDWorker: titleid = 0x%016llx is already in nand.\n", saveBnr->mTitleId);
                pWork->mAsyncResult = WORKER_RESULT_ALREADY_EXISTS;
                goto CLEANUP;
            }
            get_nand_data_only_title_save_path(saveBnr->mTitleId, pathC);

            int delRes = nand::wrapper::Delete(c_tmp_work_path);
            if (check_nand_corrupt(delRes, &pWork->mAsyncResult))
                goto CLEANUP;

            int createDirRes = nand::wrapper::CreateDir(c_tmp_work_path, NAND_PERM_USER_READ | NAND_PERM_USER_WRITE, 0);
            if (check_nand_corrupt(createDirRes, &pWork->mAsyncResult))
                goto CLEANUP;
            if (createDirRes != NAND_RESULT_OK) {
                OSReport("NandSDWorker: NANDCreateDir %s failed.[%d]\n", c_tmp_work_path, createDirRes);
                pWork->mAsyncResult = WORKER_RESULT_GENERIC_ERR;
                goto CLEANUP;
            }
            int changeDirRes = nand::wrapper::ChangeDir(c_tmp_work_path);
            if (changeDirRes != NAND_RESULT_OK) {
                OSReport("NandSDWorker: NANDChangeDir %s failed.[%d]\n", c_tmp_work_path, changeDirRes);
                pWork->mAsyncResult = WORKER_RESULT_GENERIC_ERR;
                goto CLEANUP;
            }
            changedDir = true;
        }

        WADBlocks wadBlocks;
        int getBlocksRes;
        getBlocksRes = WADImportGetBlocks(sdSavePath, &pWork->mBothHeapAllocator, WAD_LOC_SD_CARD, sizeof(SDSaveBanner), 1, &wadBlocks, NULL);
        if (getBlocksRes == -3008) {
            OSReport("NandSDWorker: WADImportGetBlocks failed, not original Wii.[%d]\n", getBlocksRes);
            pWork->mAsyncResult = WORKER_RESULT_NOT_TRANSFERRABLE;
            goto CLEANUP;
        } else if (getBlocksRes != 0) {
            OSReport("NandSDWorker: WADImportGetBlocks failed.[%d]\n", getBlocksRes);
            pWork->mAsyncResult = WORKER_RESULT_BAD_FILE;
            goto CLEANUP;
        }

        OSReport("NandSDWorker: shared content inodes/blocks = %d/%d\n", wadBlocks.sharedInodes, wadBlocks.sharedBlocks);
        OSReport("NandSDWorker: private content inodes/blocks = %d/%d\n", wadBlocks.privateInodes, wadBlocks.privateBlocks);
        OSReport("NandSDWorker: file inodes/blocks = %d/%d\n", wadBlocks.fileInodes, wadBlocks.fileBlocks);
        int checkFreeAreaRes;
        checkFreeAreaRes = check_nand_free_area(wadBlocks.sharedInodes, wadBlocks.sharedBlocks, wadBlocks.privateInodes + wadBlocks.fileInodes + 1,
                                                (saveBnr->mHdrSize + FS_BLK_SIZE - 1) / FS_BLK_SIZE + wadBlocks.fileBlocks + wadBlocks.privateBlocks);
        if (checkFreeAreaRes != WORKER_RESULT_OK) {
            pWork->mAsyncResult = checkFreeAreaRes;
            goto CLEANUP;
        }

        if (!isDataOnlyTitle) {
            WADBackupHeader wadHdr;
            int getSdWadHeaderRes = get_sd_wad_header(pWork->mTitleId, &wadHdr, 0);
            if (getSdWadHeaderRes != WORKER_RESULT_OK) {
                pWork->mAsyncResult = getSdWadHeaderRes;
                goto CLEANUP;
            }

            if (wadBlocks.fileInodes == 0) {
                if (wadHdr.numFiles != 0) {
                    OSReport("NandSDWorker: this save data includes only notransfer.\n");
                    pWork->mAsyncResult = WORKER_RESULT_NOT_TRANSFERRABLE;
                    goto CLEANUP;
                }
            }
            if (wadBlocks.fileInodes < wadHdr.numFiles - 1) {
                OSReport("NandSDWorker: this save data includes notransfer, %d files/directries not copied.\n",
                         wadHdr.numFiles - wadBlocks.fileInodes);
                hasNotransfer = true;
            }
        }

        int wadImportRes;
        wadImportRes = WADImportEx(sdSavePath, &pWork->mBothHeapAllocator, WAD_LOC_SD_CARD, sizeof(SDSaveBanner), 8, NULL);
        if (wadImportRes != 0) {
            OSReport("NandSDWorker: WADRestoreSDEx failed.[%d]\n", wadImportRes);
            if (isDataOnlyTitle) {
                if (nand_app_exist_ex(saveBnr->mTitleId) != EXISTENCE_COMPLETE) {
                    int delNandAppContentRes = delete_nand_app_content(saveBnr->mTitleId);
                    if (delNandAppContentRes == WORKER_RESULT_NAND_CORRUPT) {
                        pWork->mAsyncResult = WORKER_RESULT_NAND_CORRUPT;
                        goto CLEANUP;
                    }
                    if (delNandAppContentRes != WORKER_RESULT_OK) {
                        OSReport("NandSDWorker: delete title 0x%016llx content failed.[%d]\n", saveBnr->mTitleId, delNandAppContentRes);
                    }
                }
            }
            pWork->mAsyncResult = WORKER_RESULT_BAD_FILE;
            goto CLEANUP;
        }

        if (!isDataOnlyTitle) {
            strncpy(pathB, c_tmp_work_path, 0x40);
            strncat(pathB, "/", 0x40);
            strncat(pathB, c_banner_file_name, 0x40);

            int createRes = nand::wrapper::Create(pathB, saveBnr->mPerms, saveBnr->mAttrib);
            if (check_nand_corrupt(createRes, &pWork->mAsyncResult))
                goto CLEANUP;
            if (createRes != NAND_RESULT_OK) {
                OSReport("NandSDWorker: NANDCreate %s failed [%d]\n", pathB, createRes);
                pWork->mAsyncResult = WORKER_RESULT_GENERIC_ERR;
                goto CLEANUP;
            }

            NANDFileInfo fInfo;
            int openRes = nand::wrapper::Open(pathB, &fInfo, NAND_ACCESS_WRITE);
            if (openRes != NAND_RESULT_OK) {
                OSReport("NandSDWorker: NANDOpen %s failed [%d]\n", pathB, openRes);
                pWork->mAsyncResult = WORKER_RESULT_GENERIC_ERR;
                goto CLEANUP;
            }

            s32 writeRes = nand::wrapper::Write(&fInfo, &saveBnr->mBanner, saveBnr->mHdrSize);
            if (check_nand_corrupt(writeRes, &pWork->mAsyncResult)) {
                nand::wrapper::Close(&fInfo);
                goto CLEANUP;
            }
            if (writeRes < saveBnr->mHdrSize) {
                OSReport("NandSDWorker: NANDWrite %s failed [%d]\n", pathB, writeRes);
                pWork->mAsyncResult = WORKER_RESULT_GENERIC_ERR;
                nand::wrapper::Close(&fInfo);
                goto CLEANUP;
            }

            int closeRes = nand::wrapper::Close(&fInfo);
            if (check_nand_corrupt(closeRes, &pWork->mAsyncResult))
                goto CLEANUP;
            if (closeRes != 0) {
                OSReport("NandSDWorker: NANDClose %s failed [%d]\n", pathB, closeRes);
                pWork->mAsyncResult = WORKER_RESULT_GENERIC_ERR;
                goto CLEANUP;
            }

            int recursionNandRes = recursion_nand(c_tmp_work_path, pathC, RECURSIVE_MOVE, NULL, 0);
            if (recursionNandRes != WORKER_RESULT_OK) {
                OSReport("NandSDWorker: failed to move files from %s to %s.\n", c_tmp_work_path, pathC);
                pWork->mAsyncResult = recursionNandRes;
                goto CLEANUP;
            }
            OSReport("NandSDWorker: import save data titleid = 0x%016llx.\n", saveBnr->mTitleId);
            if (hasNotransfer) {
                pWork->mAsyncResult = 1;
            } else {
                pWork->mAsyncResult = 0;
            }
        }
        pWork->mNandSaveNum++;
    CLEANUP:
        if (!isDataOnlyTitle) {
            check_nand_corrupt(nand::wrapper::Delete(c_tmp_work_path), &pWork->mAsyncResult);
            change_uid(SYSMENU_TITLE_ID);
            if (changedDir) {
                int changeDirRes = nand::wrapper::ChangeDir(c_wii_menu_save_path);
                if (changeDirRes != NAND_RESULT_OK) {
                    OSReport("NandSDWorker: NANDChangeDir %s failed.[%d]\n", c_wii_menu_save_path, changeDirRes);
                    pWork->mAsyncResult = WORKER_RESULT_GENERIC_ERR;
                }
            }
        }
        if (saveBnr != NULL) {
            MEMFreeToAllocator(&pWork->mBothHeapAllocator, saveBnr);
        }
    }

    int NandSDWorker::get_sd_save_banner(ESTitleId32 titleId, SDSaveBanner* banner) {
        s32 ret;
        SDSaveBanner* encBanner = (SDSaveBanner*)MEMAllocFromExpHeapEx(pWork->pHeap19000, sizeof(SDSaveBanner), 0x20);
        if (banner == NULL || encBanner == NULL) {
            OSReport("NandSDWorker: Failed to allocate buffer.\n");
            ret = WORKER_RESULT_GENERIC_ERR;
            goto CLEANUP;
        }

        char sdSavePath[0x40];
        get_sd_save_path(titleId, sdSavePath);
        FAFILE* fStream;
        fStream = FAFopen(sdSavePath, "r");
        if (fStream == NULL) {
            OSReport("NandSDWorker: FAFopen %s failed.\n", sdSavePath);
            handle_sd_error_for_entry(FA_ERR_SYSTEM, &ret);
            goto CLEANUP;
        }

        if (FAFread(encBanner, sizeof(SDSaveBanner), 1, fStream) != 1) {
            ret = handle_sd_error_for_entry(FA_ERR_SYSTEM, NULL);
            if (ret == WORKER_RESULT_OK || ret == WORKER_RESULT_GENERIC_ERR) {
                ret = WORKER_RESULT_BAD_FILE;
            }
            FAFclose(fStream);
            goto CLEANUP;
        }

        if (handle_sd_error_for_entry(FAFclose(fStream), &ret) != WORKER_RESULT_OK) {
            OSReport("NandSDWorker: FAFclose failed.\n");
            goto CLEANUP;
        }

        if (decrypt(encBanner, sizeof(SDSaveBanner), banner) != WORKER_RESULT_OK) {
            ret = WORKER_RESULT_BAD_FILE;
            goto CLEANUP;
        }
        u8 md5Digest[0x10];
        memcpy(md5Digest, banner->mMd5Digest, 0x10);
        memcpy(banner->mMd5Digest, &c_md5_secret_key, 0x10);

        if (!check_md5(md5Digest, (u8*)banner, sizeof(SDSaveBanner))) {
            OSReport("NandSDWorker: banner file %s md5 digest is not correct.\n", sdSavePath);
            ret = WORKER_RESULT_BAD_FILE;
        } else if ((titleId == (ESTitleId32)ES_TITLE_CODE(banner->mTitleId)) && (banner->mBanner.magic == 'WIBN')) {
            ret = WORKER_RESULT_OK;
        } else {
            OSReport("NandSDWorker: banner file %s signature is not correct\n", sdSavePath);
            ret = WORKER_RESULT_BAD_FILE;
        }

    CLEANUP:
        MEMFreeToExpHeap(pWork->pHeap19000, encBanner);
        return ret;
    }

    int NandSDWorker::get_sd_wad_header(ESTitleId32 titleId, WADBackupHeader* wadHdr, u32 offsetIn) {
        s32 ret;
        char path[0x40];

        u32 offset;
        if (offsetIn == 0) {
            offset = sizeof(SDSaveBanner);
            get_sd_save_path(titleId, path);
        } else {
            offset = offsetIn + sizeof(SDAppBanner);
            get_sd_app_path(titleId, path);
        }

        FAFILE* fStream = FAFopen(path, "r");
        if (fStream == NULL) {
            OSReport("NandSDWorker: FAFopen %s failed.\n", path);
            handle_sd_error_for_entry(FA_ERR_SYSTEM, &ret);
            goto RETURN;
        }

        if (handle_sd_error_for_entry(FAFseek(fStream, offset, FA_SEEK_ORIGIN_BEGIN), &ret) != WORKER_RESULT_OK) {
            OSReport("NandSDWorker: FAFseek %s failed.\n", path);
            FAFclose(fStream);
            goto RETURN;
        }

        if (FAFread(wadHdr, 0x70, 1, fStream) != 1) {
            ret = handle_sd_error_for_entry(FA_ERR_SYSTEM, NULL);
            if (ret == WORKER_RESULT_OK) {
                ret = WORKER_RESULT_BAD_FILE;
            }
            FAFclose(fStream);
            goto RETURN;
        }

        if (handle_sd_error_for_entry(FAFclose(fStream), &ret) != WORKER_RESULT_OK) {
            OSReport("NandSDWorker: FAFclose failed.\n");
            goto RETURN;
        }

        ret = WORKER_RESULT_OK;
    RETURN:
        return ret;
    }

    void NandSDWorker::do_format_sd() {
        if (s_sd_state != SD_STATE_READY && s_sd_state != SD_STATE_BROKEN_MEDIA) {
            OSReport("NandSDWorker: cannot format sd because of illegal sd state.[%d]\n", s_sd_state);
            pWork->mAsyncResult = WORKER_RESULT_GENERIC_ERR;
            return;
        }

        FAError formatFaError = FAFormat(pWork->mFatDriveTable.drive, 0);
        if (formatFaError != FA_ERR_SUCCESS && FAErrnum() == FA_ERR_ENOEXEC) {
            OSReport("NandSDWorker: SD card MBR is broken. cannot use this media.\n");
            s_sd_state = SD_STATE_BROKEN_MEDIA;
            pWork->mAsyncResult = WORKER_RESULT_BROKEN_MEDIA;
            return;
        }

        if (handle_sd_error(formatFaError, &pWork->mAsyncResult) == WORKER_RESULT_OK) {
            OSReport("NandSDWorker: successfully format sd.\n");
            s_sd_state = SD_STATE_READY;
            if (pWork->pSaveCacheHeap != NULL) {
                clear_save_cache(&pWork->mSavesListSD);
                pWork->mSdSaveNum = 0;
            }
            if (pWork->pAppCacheHeap != NULL) {
                clear_app_cache(&pWork->mAppsListSD);
                pWork->mSdAppNum = 0;
            }
        } else {
            OSReport("NandSDWorker: FAFormat failed.[%d]\n", pWork->mAsyncResult);
        }
    }

    u64 NandSDWorker::get_sd_free_area() {
        u32 deviceInfo[4];
        FAError faErr = FAGetdev(pWork->mFatDriveTable.drive, deviceInfo);
        int handleSdErr = handle_sd_error(faErr, NULL);
        if (handleSdErr == NULL) {
            OSReport("NandSDWorker: SD card free area = %llu\n", (u64)deviceInfo[1] * deviceInfo[3] * deviceInfo[2]);
            return (s64)deviceInfo[1] * deviceInfo[3] * deviceInfo[2];
        } else {
            OSReport("NandSDWorker: FAGetdev failed.[%d]\n", handleSdErr);
            return handleSdErr;
        }
    }

    int NandSDWorker::delete_download_task(ESTitleId32 titleId) {
        void* nwc24Work;
        int ret = WORKER_RESULT_OK;
        nwc24Work = MEMAllocFromExpHeapEx(pWork->pHeap19000, 0x4000, 0x20);

        OSTick startTick = OSGetTick();
        goto ATTEMPT_OPEN;
        while (true) {
            OSReport("NandSDWorker: waiting NWC24Open.\n");
            OSSleepTicks(OSMillisecondsToTicks(30ll));
            if (OSTicksToMilliseconds(OSGetTick() - startTick) > 3000) {
                ret = WORKER_RESULT_GENERIC_ERR;
                OSReport("NandSDWorker: NWC24Open failed.\n");
                break;
            }

        ATTEMPT_OPEN:
            if (NWC24OpenLib(nwc24Work) != NWC24_OK)
                continue;

            u16 dlId = 0;
            for (int iterRes = NWC24IterateDlTask(&dlId, TRUE); iterRes >= 0; iterRes = NWC24IterateDlTask(&dlId, FALSE)) {
                NWC24DlTask dlTask;
                NWC24Err getDlTaskRes = NWC24GetDlTask(&dlTask, dlId);
                if (getDlTaskRes != NWC24_OK) {
                    OSReport("NandSDWorker: NWC24GetDlTask failed - [%d]  -> continue\n", getDlTaskRes);
                    continue;
                }

                u32 dlAppId;
                NWC24Err getDlAppIdRes = NWC24GetDlAppId(&dlTask, &dlAppId);
                if (getDlAppIdRes != NWC24_OK) {
                    OSReport("NandSDWorker: NWC24GetDlAppId failed - [%d]  -> continue\n", getDlAppIdRes);
                    continue;
                }

                if (dlAppId == titleId) {
                    OSReport("NandSDWorker: found dl task owned same titleid [%p]\n", &dlTask);
                    NWC24Err delDlTaskRes = NWC24DeleteDlTask(&dlTask);
                    if (delDlTaskRes != NWC24_OK) {
                        // @bug this should say NWC24DeleteDlTask, looks like it was copy-pasted from above
                        OSReport("NandSDWorker: NWC24GetDlAppId failed - [%d]  -> continue\n", delDlTaskRes);
                    } else {
                        OSReport("NandSDWorker: delete download task for index : %d\n", dlId);
                    }
                } else {
                    OSReport("NandSDWorker: ignore title id %d: %08x \n", dlId, dlAppId);
                }
            }
            int closeLibRes = NWC24CloseLib();
            if (closeLibRes != 0) {
                OSReport("NandSDWorker: NWC24CloseLib failed - [%d]  -> continue\n", closeLibRes);
            }
            break;
        }

    CLEANUP:
        if (nwc24Work != NULL) {
            MEMFreeToExpHeap(pWork->pHeap19000, nwc24Work);
        }
        OSReport("NandSDWorker: delete download task for %08x\n", titleId);
        return ret;
    }

    int NandSDWorker::delete_nand_app_content(ESTitleId titleId) {
        if (!is_user_nand_app(titleId)) {
            OSReport("NandSDWorker: 0x%016llx is not nand app, cannot delete.\n", titleId);
            return WORKER_RESULT_GENERIC_ERR;
        }

        int delMetaFileRes = delete_meta_file(titleId);
        if (delMetaFileRes != WORKER_RESULT_OK) {
            return delMetaFileRes;
        }

        int delTitleContentRes = ES_DeleteTitleContent(titleId);
        if (delTitleContentRes != WORKER_RESULT_OK) {
            OSReport("NandSDWorker: ES_DeleteTitleContent failed [%d]\n", delTitleContentRes);
            return WORKER_RESULT_GENERIC_ERR;
        }

        OSReport("NandSDWorker: delete title 0x%016llx content.\n", titleId);
        // Force deletion on TV Remote channel
        int delEmptyTitleRes = delete_empty_title(titleId, (titleId & 0x00000000FFFFFF00) == 'HAO\0');
        if (delEmptyTitleRes != WORKER_RESULT_OK) {
            return WORKER_RESULT_GENERIC_ERR;
        }

        int delDownloadTaskRes = delete_download_task(titleId);
        if (delDownloadTaskRes != WORKER_RESULT_OK) {
            OSReport("NandSDWorker: delete download task failed [%d]\n", delDownloadTaskRes);
        }
        return delDownloadTaskRes;
    }

    void NandSDWorker::do_copy_nand_app_to_sd() {
        ContentBin* sdBanner = (ContentBin*)MEMAllocFromExpHeapEx(pWork->pHeap19000, sizeof(ContentBin), 0x20);
        ContentBin* encBuf = NULL;
        bool backedUp = false;

        char sdAppPath[0x40];
        get_sd_app_path(pWork->mTitleId, sdAppPath);

        int prepSdCopyRes;
        prepSdCopyRes = prepare_sd_copy(sdAppPath);
        if (prepSdCopyRes != WORKER_RESULT_OK) {
            pWork->mAsyncResult = prepSdCopyRes;
            goto CLEANUP;
        }

        s64 sdFreeArea;
        sdFreeArea = get_sd_free_area();
        if (sdFreeArea < 0) {
            pWork->mAsyncResult = sdFreeArea;
            goto CLEANUP;
        }

        int getAppBannerRes;
        getAppBannerRes = get_app_banner_from_meta(pWork->mTitleId, &sdBanner->hdr);
        if (getAppBannerRes != WORKER_RESULT_OK) {
            pWork->mAsyncResult = getAppBannerRes;
            goto CLEANUP;
        }

        sdBanner->hdr.mTitleId = pWork->mTitleId;

        u32 wadSize, wadOffset;
        wadSize = 0;
        // inputSize = ;
        wadOffset = ROUNDUP(sdBanner->hdr.mThumbnailSize, 0x40) + sizeof(SDAppBanner);

        int wadCalcSizeRes;
        wadCalcSizeRes = WADBackupEx(pWork->mTitleId, 1, &pWork->mBothHeapAllocator, NULL, &wadSize, WAD_LOC_SD_CARD, wadOffset, NULL);
        if (wadCalcSizeRes != 0) {
            OSReport("NandSDWorker: WADBackup failed.[%d]\n", wadCalcSizeRes);
            pWork->mAsyncResult = WORKER_RESULT_GENERIC_ERR;
            goto CLEANUP;
        }

        if (wadOffset + wadSize > sdFreeArea) {
            OSReport("NandSDWorker: backup size [%d] is too large for SD card.\n", wadSize);
            pWork->mAsyncResult = WORKER_RESULT_NO_SPACE;
            goto CLEANUP;
        }

        u8 md5Digest[0x10];
        NETMD5Context iconBinMd5Ctx;
        NETMD5Context hdrMd5Ctx;
        NETMD5Init(&iconBinMd5Ctx);
        void* iconPtr;
        iconPtr = sdBanner->icon;
        NETMD5Update(&iconBinMd5Ctx, iconPtr, wadOffset - sizeof(SDAppBanner));
        NETMD5GetDigest(&iconBinMd5Ctx, md5Digest);
        memcpy((sdBanner->hdr).mIconMd5, md5Digest, 0x10);
        memcpy((sdBanner->hdr).mHdrMd5, &c_md5_secret_key, 0x10);

        NETMD5Init(&hdrMd5Ctx);
        NETMD5Update(&hdrMd5Ctx, sdBanner, sizeof(SDAppBanner));
        NETMD5GetDigest(&hdrMd5Ctx, md5Digest);
        memcpy(sdBanner->hdr.mHdrMd5, md5Digest, 0x10);

        encBuf = (ContentBin*)MEMAllocFromAllocator(&pWork->mBothHeapAllocator, wadOffset);
        if (encrypt(&sdBanner->hdr, sizeof(SDAppBanner), &encBuf->hdr) != WORKER_RESULT_OK) {
            pWork->mAsyncResult = WORKER_RESULT_GENERIC_ERR;
            goto CLEANUP;
        }

        if (encrypt(iconPtr, wadOffset - sizeof(SDAppBanner), encBuf->icon) != WORKER_RESULT_OK) {
            pWork->mAsyncResult = WORKER_RESULT_GENERIC_ERR;
            goto CLEANUP;
        }

        backedUp = true;

        int wadBackupRes;
        wadBackupRes = WADBackupEx(pWork->mTitleId, 1, &pWork->mBothHeapAllocator, sdAppPath, &wadSize, WAD_LOC_SD_CARD, wadOffset,
                                   wad_backup_progress_callback);
        if (wadBackupRes != 0) {
            OSReport("NandSDWorker: WADBackup failed.[%d]\n", wadBackupRes);
            pWork->mAsyncResult = WORKER_RESULT_GENERIC_ERR;
            goto CLEANUP;
        }
        OSReport("NandSDWorker: make wad backup, size = [%d].\n", wadSize);

        FAFILE* fStream;
        fStream = FAFopen(sdAppPath, "r+");
        if (fStream == NULL) {
            OSReport("NandSDWorker: FAFopen %s failed.\n", sdAppPath);
            handle_sd_error(FA_ERR_SYSTEM, &pWork->mAsyncResult);
            goto CLEANUP;
        }
        OSReport("NandSDWorker: create %s in sd.\n", sdAppPath);

        if (handle_sd_error(FAFseek(fStream, 0, FA_SEEK_ORIGIN_BEGIN), &pWork->mAsyncResult) != WORKER_RESULT_OK) {
            OSReport("NandSDWorker: FAFseek %s failed.\n", sdAppPath);
            FAFclose(fStream);
            goto CLEANUP;
        }

        wadOffset = FAFwrite(encBuf, wadOffset, 1, fStream);
        if (wadOffset != 1) {
            OSReport("NandSDWorker: FAFwrite %s failed.[%d]\n", sdAppPath, wadOffset);
            handle_sd_error(FA_ERR_SYSTEM, &pWork->mAsyncResult);
            FAFclose(fStream);
            goto CLEANUP;
        }

        if (handle_sd_error(FAFclose(fStream), &pWork->mAsyncResult) != WORKER_RESULT_OK) {
            OSReport("NandSDWorker: FAFclose %s failed.\n", sdAppPath);
            goto CLEANUP;
        }

        pWork->mSdAppNum++;
        pWork->mAsyncResult = WORKER_RESULT_OK;

    CLEANUP:
        MEMFreeToExpHeap(pWork->pHeap19000, sdBanner);
        if (encBuf != NULL) {
            MEMFreeToAllocator(&pWork->mBothHeapAllocator, encBuf);
        }
        if (pWork->mAsyncResult < WORKER_RESULT_OK && backedUp) {
            int faRemoveRes = handle_sd_error_for_entry(FARemove(sdAppPath), NULL);
            if (faRemoveRes == WORKER_RESULT_OK) {
                OSReport("NandSDWorker: remove %s because copy is not done correctly.\n", sdAppPath);
            } else {
                OSReport("NandSDWorker: FARemove %s failed.[%d]\n", sdAppPath, faRemoveRes);
            }
        }
    }

    int NandSDWorker::get_save_banner_for_data_only_title(ESTitleId titleId, WIISaveBannerFile* fileOut, u32* sizeOut) {
        int ret;
        u32 contentSize;
        ESTicketView* tikView;
        tikView = 0;

        s32 openNandAppRes = open_nand_app_content(titleId, 0, &contentSize, &tikView);
        if (openNandAppRes < WORKER_RESULT_OK) {
            OSReport("NandSDWorker: can't open banner file for data only title [0x%016llx]\n", titleId);
            return WORKER_RESULT_GENERIC_ERR;
        }

        void* fd = (void*)openNandAppRes;

        contentSize -= 0x40;
        if (contentSize < offsetof(WIISaveBannerFile, iconData1)) {
            OSReport("NandSDWorker: banner file is too small [%d]\n", contentSize);
            ret = WORKER_RESULT_BAD_FILE;
            goto CLEANUP;
        } else if (contentSize > sizeof(WIISaveBannerFile)) {
            OSReport("NandSDWorker: banner file is too large [%d]\n", contentSize);
            ret = WORKER_RESULT_BAD_FILE;
            goto CLEANUP;
        }

        if (sizeOut != NULL)
            *sizeOut = contentSize;

        ret = read_file(fd, FILEKIND_ES_CONTENT, 0x40, contentSize, fileOut);
        if (ret != WORKER_RESULT_OK) {
            OSReport("NandSDWorker: failed to read from content.\n");
            ret = WORKER_RESULT_GENERIC_ERR;
            goto CLEANUP;
        }

        if (fileOut->magic != 'WIBN') {
            OSReport("NandSDWorker: banner file signature is not correct\n");
            ret = WORKER_RESULT_BAD_FILE;
            goto CLEANUP;
        }
        ret = WORKER_RESULT_OK;

    CLEANUP:
        ES_CloseContentFile((ESFd)fd);
        if (tikView != NULL) {
            MEMFreeToExpHeap(pWork->pHeap19000, tikView);
        }
        return ret;
    }

    int NandSDWorker::get_app_banner_from_meta(ESTitleId titleId, SDAppBanner* appBnrOut) {
        NANDFileInfo nandFileInfo;
        char metaPath[0x40];
        ARCHandle archandle;
        ARCFileInfo arcFinfo;
        s32 ret;
        u32 contentSize;

        int openRes;

#define META_HDR_BUF_SIZE (0x80 + sizeof(SMetaBlockHeader))
#define META_HDR_BUF_SIZE_ALIGNED ROUNDUP(META_HDR_BUF_SIZE, 0x20)

        u8* openingBnrBuf = (u8*)MEMAllocFromExpHeapEx(pWork->pHeap19000, 0x1400, 0x20);
        u8* metaHdrBuf = (u8*)MEMAllocFromExpHeapEx(pWork->pHeap19000, ROUNDUP(META_HDR_BUF_SIZE, 0x20), 0x20);
        ARCHeader* arcHdrBuf = (ARCHeader*)MEMAllocFromExpHeapEx(pWork->pHeap19000, sizeof(ARCHeader), 0x20);

        void* fd;

        FileKind fileKind;
        fileKind = (FileKind)0;

        ESTicketView* tikView;
        tikView = NULL;

        s32 openNandAppContentRes;
        openNandAppContentRes = open_nand_app_content(titleId, 0, &contentSize, &tikView);
        ret = openNandAppContentRes;

        if (openNandAppContentRes >= 0 && contentSize > 4) {
            fileKind = FILEKIND_ES_CONTENT;
            fd = (void*)openNandAppContentRes;
        } else {
            get_nand_meta_file_path(titleId, metaPath);
            openRes = nand::wrapper::Open(metaPath, &nandFileInfo, NAND_ACCESS_READ);
            if (check_nand_corrupt(openRes, &ret))
                goto CLEANUP;
            if (openRes != NAND_RESULT_OK) {
                OSReport("NandSDWorker: NANDOpen %s failed.[%d]\n", metaPath, openRes);
                ret = WORKER_RESULT_BAD_FILE;
                goto CLEANUP;
            }
            fd = &nandFileInfo;
            fileKind = FILEKIND_NAND;
        }

        memset(metaHdrBuf, 0, ROUNDUP(META_HDR_BUF_SIZE, 0x20));
        ret = read_file(fd, fileKind, 0x40, META_HDR_BUF_SIZE, metaHdrBuf);
        if (ret != WORKER_RESULT_OK)
            goto CLEANUP;

        s32 hdrOffset;
        hdrOffset = search_meta_header(metaHdrBuf);
        if (hdrOffset < 0) {
            OSReport("NandSDWorker: cannot find meta offset: %d\n", hdrOffset);
            ret = WORKER_RESULT_BAD_FILE;
            goto CLEANUP;
        }

        u32 headerSize;
        headerSize = 0;
        if (!check_header_base(metaHdrBuf + hdrOffset, &headerSize)) {
            OSReport("NandSDWorker: illegal header.\n");
            ret = WORKER_RESULT_BAD_FILE;
            goto CLEANUP;
        }

        OSReport("NandSDWorker: headder size = %d\n", headerSize);
        memset(&appBnrOut->mMetaHdr, 0, sizeof(channel::SChanMgrMetaHeader));
        ret = read_file(fd, fileKind, hdrOffset, headerSize, &appBnrOut->mMetaHdr);
        if (ret != WORKER_RESULT_OK)
            goto CLEANUP;

        bool checkHeaderRes;
        checkHeaderRes = check_header_md5((u8*)&appBnrOut->mMetaHdr);
        if (!checkHeaderRes) {
            // @bug They left out the format parameter :(
            OSReport("NandSDWorker: hash check failed.[%d]\n");
            ret = WORKER_RESULT_BAD_FILE;
            goto CLEANUP;
        }
        ret = read_file(fd, fileKind, hdrOffset + headerSize, 0x20, arcHdrBuf);
        if (ret != WORKER_RESULT_OK)
            goto CLEANUP;

        ret = read_file(fd, fileKind, hdrOffset + headerSize, ROUNDUP(arcHdrBuf->fileStart, 0x20), openingBnrBuf);
        if (ret != WORKER_RESULT_OK) {
            goto CLEANUP;
        }

        int initArcHandleRes;
        initArcHandleRes = ARCInitHandle(openingBnrBuf, &archandle);
        if (initArcHandleRes == 0) {
            // @bug Uses the wrong variable as the format parameter
            OSReport("NandSDWorker: ARCInitHandle failed.[%d]\n", openRes);
            ret = WORKER_RESULT_BAD_FILE;
            goto CLEANUP;
        }

        int arcOpenRes;
        arcOpenRes = ARCOpen(&archandle, "/meta/icon.bin", &arcFinfo);
        if (arcOpenRes == 0) {
            // @bug Uses the wrong variable as the format parameter
            OSReport("NandSDWorker: ARCOpen failed.[%d]\n", openRes);
            ret = WORKER_RESULT_BAD_FILE;
            goto CLEANUP;
        }

        u32 thumbnailSize;
        thumbnailSize = ARCGetLength(&arcFinfo);
        if (ROUNDUP(thumbnailSize, 0x20) > sizeof(((ContentBin*)appBnrOut)->icon)) {
            OSReport("NandSDWorker: illegal thumbnail size.[%d]\n", thumbnailSize);
            ret = WORKER_RESULT_BAD_FILE;
            goto CLEANUP;
        }
        appBnrOut->mThumbnailSize = thumbnailSize;
        OSReport("NandSDWorker: thumbnail size = %d\n", thumbnailSize);

        u32 iconBinOffset;
        iconBinOffset = hdrOffset + headerSize + ARCGetStartOffset(&arcFinfo);

        ret = read_file(fd, fileKind, iconBinOffset, thumbnailSize, ((ContentBin*)appBnrOut)->icon);
        if (ret == WORKER_RESULT_OK) {
            ret = WORKER_RESULT_OK;
        }

    CLEANUP:
        if (fileKind == FILEKIND_ES_CONTENT) {
            ES_CloseContentFile((ESFd)fd);
        } else if (fileKind == FILEKIND_NAND) {
            int closeRes = nand::wrapper::Close(&nandFileInfo);
            if (!check_nand_corrupt(closeRes, &ret) && closeRes != NAND_RESULT_OK) {
                OSReport("NandSDWorker: failed to close %s [%d]\n", metaPath, closeRes);
                ret = WORKER_RESULT_GENERIC_ERR;
            }
        }
        MEMFreeToExpHeap(pWork->pHeap19000, openingBnrBuf);
        MEMFreeToExpHeap(pWork->pHeap19000, metaHdrBuf);
        MEMFreeToExpHeap(pWork->pHeap19000, arcHdrBuf);
        if (tikView != NULL) {
            MEMFreeToExpHeap(pWork->pHeap19000, tikView);
        }
        return ret;
    }

    s32 NandSDWorker::open_nand_app_content(ESTitleId titleId, u16 contentIdx, u32* contentSizeOut, ESTicketView** tikViewOut) {
        s32 ret;
        u32 tikViewCount;
        ESTmdView* tmdView;

        *tikViewOut = NULL;
        tmdView = NULL;
        ret = get_nand_app_tmdview(titleId, &tmdView);
        if (ret != WORKER_RESULT_OK)
            goto CLEANUP;

        if (content_exist(tmdView, contentIdx) == 0) {
            OSReport("NandSDWorker: titleid 0x%016llx cidx %d not exist.\n", titleId, contentIdx);
            ret = WORKER_RESULT_GENERIC_ERR;
            goto CLEANUP;
        }

        ret = ES_GetTicketViews(titleId, NULL, &tikViewCount);
        if (ret != ES_ERR_OK) {
            OSReport("NandSDWorker: ES_GetTicketViews titleid 0x%016llx failed.\n", titleId);
            ret = WORKER_RESULT_GENERIC_ERR;
            goto CLEANUP;
        }

        if (tikViewCount == 0) {
            OSReport("NandSDWorker: titleid 0x%016llx has no ticket.\n", titleId);
            ret = WORKER_RESULT_GENERIC_ERR;
            goto CLEANUP;
        }

        ESTicketView* ticketViewList;
        ticketViewList = (ESTicketView*)MEMAllocFromExpHeapEx(pWork->pHeap19000, ROUNDUP(tikViewCount * sizeof(ESTicketView), 0x20), 0x20);
        *tikViewOut = ticketViewList;
        ret = ES_GetTicketViews(titleId, ticketViewList, &tikViewCount);
        if (ret != ES_ERR_OK) {
            OSReport("NandSDWorker: ES_GetTicketViews titleid 0x%016llx failed.\n", titleId);
            ret = WORKER_RESULT_GENERIC_ERR;
            goto CLEANUP;
        }

        s32 openTitleContentFileRes;
        openTitleContentFileRes = ES_OpenTitleContentFile(titleId, *tikViewOut, contentIdx);
        if (openTitleContentFileRes < ES_ERR_OK) {
            OSReport("NandSDWorker: ES_OpenTitleContentFile titleid 0x%016llx cidx %d failed.[%d]\n", titleId, contentIdx, openTitleContentFileRes);
            ret = WORKER_RESULT_GENERIC_ERR;
            goto CLEANUP;
        }
        ret = openTitleContentFileRes;

        *contentSizeOut = tmdView->contents[contentIdx].size;
        OSReport("NandSDWorker: successfully open titleid 0x%016llx cidx %d. fd = %d, size = %d.\n", titleId, contentIdx, ret, *contentSizeOut);

    CLEANUP:
        if (tmdView != NULL) {
            MEMFreeToExpHeap(pWork->pHeap19000, tmdView);
        }
        if (ret != WORKER_RESULT_OK) {
            if (*tikViewOut != NULL) {
                MEMFreeToExpHeap(pWork->pHeap19000, *tikViewOut);
            }
            *tikViewOut = NULL;
        }
        return ret;
    }
    int NandSDWorker::read_file(void* file, FileKind kind, s32 offset, u32 size, void* buf) {
        if (kind == FILEKIND_NAND) {
            int seekRes = nand::wrapper::Seek((NANDFileInfo*)file, offset, NAND_SEEK_BEG);
            if (seekRes < offset) {
                OSReport("NandSDWorker: NANDSeek failed: %d\n", seekRes);
                return WORKER_RESULT_BAD_FILE;
            }

            u32 readSize = nand::wrapper::Read((NANDFileInfo*)file, buf, ROUNDUP(size, 0x20));
            if (check_nand_corrupt(readSize, NULL)) {
                return WORKER_RESULT_NAND_CORRUPT;
            }

            if (readSize < size) {
                OSReport("NandSDWorker: NANDRead failed.[%d]\n", readSize);
                return WORKER_RESULT_BAD_FILE;
            }

            return WORKER_RESULT_OK;
        } else if (kind == FILEKIND_ES_CONTENT) {
            int seekRes = ES_SeekContentFile((ESFd)file, offset, ES_SEEK_BEG);
            if (seekRes < ES_ERR_OK) {
                OSReport("NandSDWorker: ES_SeekContentFile failed.[%d]\n", seekRes);
                return WORKER_RESULT_BAD_FILE;
            }

            u32 readSize = ES_ReadContentFile((ESFd)file, buf, ROUNDUP(size, 0x20));
            if (readSize < size) {
                OSReport("NandSDWorker: ES_ReadContentFile failed.[%d]\n", readSize);
                return WORKER_RESULT_BAD_FILE;
            }

            return WORKER_RESULT_OK;
        }

        return WORKER_RESULT_GENERIC_ERR;
    }

    s32 NandSDWorker::search_meta_header(const u8* buf) {
        const char* magic = "IMET";

        int magicIdx = 0;
        for (int i = 0; i < 0xa0; i++) {
            if (buf[i] == magic[magicIdx]) {
                magicIdx++;
                if (magicIdx == 4) {
                    return i - 3;
                }
            } else {
                magicIdx = 0;
            }
        }
        return -1;
    }

    bool NandSDWorker::check_header_base(const u8* bnrData, u32* headerSize) {
        SMetaBlockHeader* header = (SMetaBlockHeader*)(bnrData);

        u32 headSize = header->headSize;
        if (headerSize != NULL) {
            *headerSize = headSize;
        }

        // Check signature
        if (!NAND_CHECK_MAGIC4(header->sig, 'I', 'M', 'E', 'T') || headSize < sizeof(channel::SMetaBlockHeader)) {
            OSReport("BANNER WARNING: invalid signature or header size %d\n", headSize);
            return false;
        }

        // Check version
        if (header->version != channel::META_CURRENT_VERSION) {
            OSReport("BANNER WARNING: different version v.%d ( now v.%d)\n", header->version, channel::META_CURRENT_VERSION);
            return false;
        }

        return true;
    }

    bool NandSDWorker::check_header_md5(u8* hdr) {
        u8 digest[0x10];

        u32 dataLen = ((channel::SChanMgrMetaHeader*)hdr)->blockHdr.headerSize;
        for (int i = 0; i < 0x10; i++) {
            digest[i] = (hdr + (dataLen - 0x10))[i];
        }
        memset(hdr, 0, 0x40);
        memset(hdr + (dataLen - 0x10), 0, 0x10);
        return check_md5(digest, hdr, dataLen);
    }

    bool NandSDWorker::check_md5(const u8* digest, const u8* input, u32 dataLen) {
        NETMD5Context md5Ctx;
        u8 calculated[0x10];

        NETMD5Init(&md5Ctx);
        NETMD5Update(&md5Ctx, input, dataLen);
        NETMD5GetDigest(&md5Ctx, calculated);
        for (int i = 0; i < 0x10; i++) {
            if (digest[i] != calculated[i]) {
                OSReport("BANNER WARNING: invalid md5 value ( data )\n");
                return false;
            }
        }
        return true;
    }

    void NandSDWorker::wad_backup_progress_callback(u32 complete, u32 total, BOOL done) {
        if (total != 0)
            s_completion_pct = complete * 100.f / total;
    }

    void NandSDWorker::do_copy_sd_app_to_nand(bool ignoreSC) {
        SDAppBanner* sdAppBanner = (SDAppBanner*)MEMAllocFromAllocator(&pWork->mBothHeapAllocator, 0x640);
        u16 titleVersion = 0;
        u16 wadVersion = 0;
        if (!ignoreSC) {
            u32 numFreeSlots;
            if (SCGetFreeChannelAppCount(&numFreeSlots) != 0) {
                OSReport("NandSDWorker: free nand app count = %d.\n", numFreeSlots);
                if (numFreeSlots == 0) {
                    OSReport("NandSDWorker: there is no free count to install application.\n");
                    pWork->mAsyncResult = WORKER_RESULT_NO_SPACE;
                    goto CLEANUP;
                }
            } else {
                OSReport("NandSDWorker: SCGetFreeChannelAppCount failed.\n");
            }
        }
        int getSdAppBannerRes;
        getSdAppBannerRes = get_sd_app_banner(pWork->mTitleId, sdAppBanner);
        if (getSdAppBannerRes != WORKER_RESULT_OK) {
            pWork->mAsyncResult = getSdAppBannerRes;
            goto CLEANUP;
        }

        if (nand_app_exist_ex(sdAppBanner->mTitleId) == 2) {
            OSReport("NandSDWorker: titleid = 0x%016llx is already in nand.\n", sdAppBanner->mTitleId);
            pWork->mAsyncResult = WORKER_RESULT_ALREADY_EXISTS;
            goto CLEANUP;
        }

        int getTitleVersionRes;
        getTitleVersionRes = get_nand_title_version(sdAppBanner->mTitleId, &titleVersion);
        if (getTitleVersionRes != WORKER_RESULT_OK) {
            pWork->mAsyncResult = getTitleVersionRes;
            goto CLEANUP;
        }

        char sdAppPath[0x40];
        get_sd_app_path(pWork->mTitleId, sdAppPath);

        u64 wadTitleId;
        int wadGetTitleVersionRes;
        wadGetTitleVersionRes =
            WADGetTitleVersionEx(sdAppPath, &wadTitleId, &wadVersion, WAD_LOC_SD_CARD, ROUNDUP(sdAppBanner->mThumbnailSize, 0x40) + 0x640);
        if (wadGetTitleVersionRes != 0) {
            OSReport("NandSDWorker: WADGetTitleVersionEx failed.[%d]\n", wadGetTitleVersionRes);
            pWork->mAsyncResult = WORKER_RESULT_GENERIC_ERR;
            goto CLEANUP;
        }

        if (wadTitleId != sdAppBanner->mTitleId) {
            OSReport("NandSDWorker: titleid %016llx in wad is different from %016llx in banner %s.\n", wadTitleId, sdAppBanner->mTitleId, sdAppPath);
            pWork->mAsyncResult = WORKER_RESULT_BAD_FILE;
            goto CLEANUP;
        }
        if ((titleVersion >> 8) > (wadVersion >> 8)) {
            OSReport("NandSDWorker: titleid %016llx has higher version than that of sd (%d vs %d)\n", sdAppBanner->mTitleId, titleVersion,
                     wadVersion);
            pWork->mAsyncResult = WORKER_RESULT_VERSION_ERR;
            goto CLEANUP;
        }

        WADBlocks wadBlocks;
        int wadGetBlocksRes;
        wadGetBlocksRes = WADImportGetBlocks(sdAppPath, &pWork->mBothHeapAllocator, WAD_LOC_SD_CARD,
                                             ROUNDUP(sdAppBanner->mThumbnailSize, 0x40) + 0x640, 1, &wadBlocks, NULL);
        if (wadGetBlocksRes == -3008) {
            OSReport("NandSDWorker: WADImportGetBlocks failed, not original Wii.[%d]\n", wadGetBlocksRes);
            pWork->mAsyncResult = WORKER_RESULT_NOT_TRANSFERRABLE;
            goto CLEANUP;
        } else if (wadGetBlocksRes != 0) {
            OSReport("NandSDWorker: WADImportGetBlocks failed.[%d]\n", wadGetBlocksRes);
            pWork->mAsyncResult = WORKER_RESULT_BAD_FILE;
            goto CLEANUP;
        }

        OSReport("NandSDWorker: shared content inodes/blocks = %d/%d\n", wadBlocks.sharedInodes, wadBlocks.sharedBlocks);
        OSReport("NandSDWorker: private content inodes/blocks = %d/%d\n", wadBlocks.privateInodes, wadBlocks.privateBlocks);
        OSReport("NandSDWorker: file inodes/blocks = %d/%d\n", wadBlocks.fileInodes, wadBlocks.fileBlocks);

        int checkNandFreeRes;
        checkNandFreeRes = check_nand_free_area(wadBlocks.sharedInodes, wadBlocks.sharedBlocks, wadBlocks.privateInodes + wadBlocks.fileInodes,
                                                wadBlocks.privateBlocks + wadBlocks.fileBlocks);
        if (checkNandFreeRes != WORKER_RESULT_OK) {
            pWork->mAsyncResult = checkNandFreeRes;
            goto CLEANUP;
        }

        int restoreSdExRes;
        restoreSdExRes = WADImportEx(sdAppPath, &pWork->mBothHeapAllocator, WAD_LOC_SD_CARD, ROUNDUP(sdAppBanner->mThumbnailSize, 0x40) + 0x640, 8,
                                     wad_backup_progress_callback);
        if (restoreSdExRes == -3008) {
            OSReport("NandSDWorker: WADRestoreSDEx failed, not original Wii.[%d]\n", restoreSdExRes);
            pWork->mAsyncResult = WORKER_RESULT_NOT_TRANSFERRABLE;
            goto CLEANUP;
        } else if (restoreSdExRes != 0) {
            OSReport("NandSDWorker: WADRestoreSDEx failed.[%d]\n", restoreSdExRes);
            if (nand_app_exist_ex(sdAppBanner->mTitleId) == 1) {
                int delNandAppContentRes = delete_nand_app_content(sdAppBanner->mTitleId);
                if (delNandAppContentRes == WORKER_RESULT_NAND_CORRUPT) {
                    pWork->mAsyncResult = WORKER_RESULT_NAND_CORRUPT;
                    goto CLEANUP;
                }
                if (delNandAppContentRes != WORKER_RESULT_OK) {
                    OSReport("NandSDWorker: delete title 0x%016llx content failed.[%d]\n", sdAppBanner->mTitleId, delNandAppContentRes);
                }
            }
            pWork->mAsyncResult = WORKER_RESULT_BAD_FILE;
            goto CLEANUP;
        }

        OSReport("NandSDWorker: import app data titleid = 0x%016llx.\n", sdAppBanner->mTitleId);
        pWork->mNandAppNum++;
        if (!ignoreSC)
            change_nand_app_count(1);

        pWork->mAsyncResult = WORKER_RESULT_OK;

    CLEANUP:
        if (sdAppBanner != NULL) {
            MEMFreeToAllocator(&pWork->mBothHeapAllocator, sdAppBanner);
        }
        return;
    }

    void NandSDWorker::change_nand_app_count(s32 delta) {
        if (delta == 0)
            return;

        u32 installedCount = 0;
        if (SCGetInstalledChannelAppCount(&installedCount) == 0) {
            OSReport("NandSDWorker: SCGetInstalledChannelAppCount failed.\n");
            return;
        }

        OSReport("NandSDWorker: old installed nand app count = %d.\n", installedCount);
        installedCount += delta;

        SCSetInstalledChannelAppCount(installedCount);
        SCSetFreeChannelAppCount(0x30 - installedCount);
        OSReport("NandSDWorker: new installed nand app count = %d.\n", installedCount);
        OSReport("NandSDWorker: new free nand app count = %d.\n", 0x30 - installedCount);
        SCFlush();
    }

    int NandSDWorker::get_sd_app_banner(ESTitleId32 titleId, SDAppBanner* appBanner) {
        s32 ret;
        SDAppBanner* encBuffer = (SDAppBanner*)MEMAllocFromExpHeapEx(pWork->pHeap19000, 0x640, 0x20);
        if (appBanner == NULL || encBuffer == NULL) {
            OSReport("NandSDWorker: Failed to allocate buffer.\n");
            ret = WORKER_RESULT_GENERIC_ERR;
            goto CLEANUP;
        }

        char appPath[0x40];
        FAFILE* fStream;
        get_sd_app_path(titleId, appPath);
        fStream = FAFopen(appPath, "r");
        if (fStream == NULL) {
            OSReport("NandSDWorker: FAFopen %s failed.\n", appPath);
            handle_sd_error_for_entry(FA_ERR_SYSTEM, &ret);
            goto CLEANUP;
        }

        if (FAFread(encBuffer, 0x640, 1, fStream) != 1) {
            ret = handle_sd_error_for_entry(FA_ERR_SYSTEM, (s32*)0x0);
            if (ret == WORKER_RESULT_OK || ret == WORKER_RESULT_GENERIC_ERR) {
                ret = WORKER_RESULT_BAD_FILE;
            }
            FAFclose(fStream);
            goto CLEANUP;
        }

        if (handle_sd_error_for_entry(FAFclose(fStream), &ret) != WORKER_RESULT_OK) {
            OSReport("NandSDWorker: FAFclose failed.\n");
            goto CLEANUP;
        }

        if (decrypt(encBuffer, 0x640, appBanner) != WORKER_RESULT_OK) {
            ret = WORKER_RESULT_BAD_FILE;
            goto CLEANUP;
        }

        u8 md5Digest[0x10];
        memcpy(md5Digest, appBanner->mHdrMd5, 0x10);
        memcpy(appBanner->mHdrMd5, &c_md5_secret_key, 0x10);
        if (!check_md5(md5Digest, (u8*)appBanner, 0x640)) {
            OSReport("NandSDWorker: banner file %s md5 digest is not correct.\n", appPath);
            ret = WORKER_RESULT_BAD_FILE;
            goto CLEANUP;
        }

        if (titleId == (u32)ES_TITLE_CODE(appBanner->mTitleId))
            ret = WORKER_RESULT_OK;
        else
            ret = WORKER_RESULT_BAD_FILE;

        FAFileStat fStat;
        memset(&fStat, 0, 0x14);
        if (handle_sd_error_for_entry(FAFstat(appPath, &fStat), &ret) != WORKER_RESULT_OK) {
            // @bug this should say FAFstat, looks like it was copy-pasted from above
            OSReport("NandSDWorker: FAFclose failed.\n");
            goto CLEANUP;
        }

        if (fStat.size <= ROUNDUP(appBanner->mThumbnailSize, 0x40) + 0x640) {
            ret = WORKER_RESULT_BAD_FILE;
        }

    CLEANUP:
        MEMFreeToExpHeap(pWork->pHeap19000, encBuffer);
        return ret;
    }

    s32 NandSDWorker::get_sd_app_thumbnail(const SDAppBanner* appBanner, u8* thumbnailOut) {
        s32 ret;
        u8* cmprBuf = NULL;
        u8* encBuf = NULL;
        char appPath[0x40];
        get_sd_app_path(appBanner->mTitleId, appPath);
        if (appBanner->mThumbnailSize > 0xc800) {
            OSReport("NandSDWorker: %s has illegal thumbnail size.[%d]\n", appPath, appBanner->mThumbnailSize);
            ret = WORKER_RESULT_BAD_FILE;
            goto CLEANUP;
        }

        cmprBuf = (u8*)MEMAllocFromExpHeapEx(pWork->pHeap19000, ROUNDUP(appBanner->mThumbnailSize, 0x40), 0x20);
        encBuf = (u8*)MEMAllocFromAllocator(&pWork->mBothHeapAllocator, ROUNDUP(appBanner->mThumbnailSize, 0x40));

        FAFILE* stream;
        stream = FAFopen(appPath, "r");
        if (stream == NULL) {
            OSReport("NandSDWorker: FAFopen %s failed.\n", appPath);
            handle_sd_error_for_entry(FA_ERR_SYSTEM, &ret);
            goto CLEANUP;
        }

        if (handle_sd_error_for_entry(FAFseek(stream, 0x640, FA_SEEK_ORIGIN_BEGIN), &ret) != WORKER_RESULT_OK) {
            OSReport("NandSDWorker: FAFseek failed.\n");
            FAFclose(stream);
            goto CLEANUP;
        }

        if (FAFread(encBuf, ROUNDUP(appBanner->mThumbnailSize, 0x40), 1, stream) != 1) {
            ret = handle_sd_error_for_entry(FA_ERR_SYSTEM, NULL);
            if (ret == WORKER_RESULT_OK || ret == WORKER_RESULT_GENERIC_ERR) {
                ret = WORKER_RESULT_BAD_FILE;
            }
            FAFclose(stream);
            goto CLEANUP;
        }

        if (handle_sd_error_for_entry(FAFclose(stream), &ret) != WORKER_RESULT_OK) {
            OSReport("NandSDWorker: FAFclose failed.\n");
            goto CLEANUP;
        }

        if (decrypt(encBuf, ROUNDUP(appBanner->mThumbnailSize, 0x40), cmprBuf) != WORKER_RESULT_OK) {
            ret = WORKER_RESULT_BAD_FILE;
            goto CLEANUP;
        }

        if (!check_md5(appBanner->mIconMd5, cmprBuf, ROUNDUP(appBanner->mThumbnailSize, 0x40))) {
            OSReport("NandSDWorker: banner file %s md5 digest is not correct.\n", appPath);
            ret = WORKER_RESULT_BAD_FILE;
            goto CLEANUP;
        }

        ret = uncompress_app_thumbnail(cmprBuf, appBanner->mThumbnailSize, thumbnailOut);
        if (ret < WORKER_RESULT_OK) {
            OSReport("NandSDWorker: cannot uncompress thumbnail of %016llx [%d].\n", appBanner->mTitleId, ret);
            ret = WORKER_RESULT_BAD_FILE;
            goto CLEANUP;
        }

        OSReport("NandSDWorker: uncompress thumbnail size = %d.\n", ret);

    CLEANUP:
        MEMFreeToExpHeap(pWork->pHeap19000, cmprBuf);
        MEMFreeToAllocator(&pWork->mBothHeapAllocator, encBuf);
        return ret;
    }

    bool NandSDWorker::nand_app_exist(ESTitleId titleId) {
        DO_NOT_INLINE;
        return nand_app_exist_ex(titleId) == EXISTENCE_COMPLETE;
    }
    int NandSDWorker::nand_app_exist_ex(ESTitleId titleId) {
        char contentPath[0x40];
        ESContentId contentIds[0x200] ALIGN32;

        ESTmdView* tmdView = (ESTmdView*)0x0;
        u32 numContents;
        u32 usedBlocks = 0;
        u32 usedInodes = 0;

        u32 expectedContents;
        u32 actualContents = 0;

        int ret;

        u32 titleCode = ES_TITLE_CODE(titleId);
        sprintf(contentPath, "/title/%08x/%08x/content", (u32)ES_TITLE_TYPE_NOMASK(titleId), titleCode);

        int getUsageRes = nand::wrapper::SecretGetUsage(contentPath, &usedBlocks, &usedInodes);
        if (getUsageRes != NAND_RESULT_OK && getUsageRes != NAND_RESULT_NOEXISTS) {
            OSReport("NandSDWorker: NANDSecretGetUsage failed.[%d]\n", getUsageRes);
            ret = EXISTENCE_NOEXIST;
            goto CLEANUP;
        }

        if (getUsageRes == NAND_RESULT_NOEXISTS || usedInodes <= 2) {
            OSReport("NandSDWorker: no content for 0x%016llx.\n", titleId);
            ret = EXISTENCE_NOEXIST;
            goto CLEANUP;
        }

        expectedContents = usedInodes - 2;

        if (get_nand_app_tmdview(titleId, &tmdView) == WORKER_RESULT_GENERIC_ERR) {
            MEMFreeToExpHeap(pWork->pHeap19000, tmdView);
            ret = EXISTENCE_NOEXIST;
            goto CLEANUP;
        }

        for (u32 i = 0; i < tmdView->head.numContents; i++) {
            if ((tmdView->contents[i].type & 0x8000) == 0) {
                actualContents++;
            }
        }
        if (expectedContents == actualContents) {
            ret = EXISTENCE_COMPLETE;
            goto CLEANUP;
        }
        OSReport("NandSDWorker: private content num for 0x%016llx is now/tmd = %d/%d.\n", titleId, expectedContents, actualContents);

        int getNumTitleContentsOnCardRes;
        getNumTitleContentsOnCardRes = ES_ListTitleContentsOnCard(titleId, (ESContentId*)0x0, &numContents);
        if (getNumTitleContentsOnCardRes != ES_ERR_OK) {
            OSReport("NandSDWorker: ES_ListTitleContentsOnCard failed.[%d]\n", getNumTitleContentsOnCardRes);
            ret = EXISTENCE_NOEXIST;
            goto CLEANUP;
        }
        if (numContents == 0) {
            OSReport("NandSDWorker: no content for 0x%016llx.\n", titleId);
            ret = EXISTENCE_NOEXIST;
            goto CLEANUP;
        }

        int listTitleContentsOnCardRes;
        listTitleContentsOnCardRes = ES_ListTitleContentsOnCard(titleId, contentIds, &numContents);
        if (listTitleContentsOnCardRes == ES_ERR_OK) {
            bool foundNonOptionalMatch = false;
            for (u32 i = 0; i < numContents && !foundNonOptionalMatch; i++) {
                for (u32 j = 0; j < tmdView->head.numContents; j++) {
                    if (contentIds[i] == tmdView->contents[j].cid && (tmdView->contents[j].type & 0x8000) == 0) {
                        foundNonOptionalMatch = true;
                        break;
                    }
                }
            }
            if (!foundNonOptionalMatch) {
                OSReport("NandSDWorker: 0x%016llx is already deleted.\n", titleId);
                ret = EXISTENCE_NOEXIST;
                goto CLEANUP;
            }

            ret = EXISTENCE_NOEXIST;
            u32 count;
            for (u32 i = 0; i < tmdView->head.numContents; i++) {
                count = 0;
                for (u32 j = 0; j < numContents; j++) {
                    if (contentIds[j] == tmdView->contents[i].cid)
                        break;
                    count++;
                }
                if (count == numContents && (tmdView->contents[i].type & 0x4000) == 0) {
                    OSReport("NandSDWorker: not complete: non-optional cidx %d missing for 0x%016llx.\n", tmdView->contents[i].index, titleId);
                    ret = EXISTENCE_INCOMPLETE;
                    goto CLEANUP;
                }
            }
            OSReport("NandSDWorker: complete: only missing non-optional contents for 0x%016llx.\n", titleId);
            ret = EXISTENCE_COMPLETE;
        } else {
            OSReport("NandSDWorker: ES_ListTitleContentsOnCard failed.[%d]\n", listTitleContentsOnCardRes);
            ret = EXISTENCE_NOEXIST;
            goto CLEANUP;
        }

    CLEANUP:
        if (tmdView != NULL) {
            MEMFreeToExpHeap(pWork->pHeap19000, tmdView);
        }
        return ret;
    }

    int NandSDWorker::get_nand_app_tmdview(ESTitleId titleId, ESTmdView** tmdViewOut) {
        u32 tmdSize;

        int getTmdViewRes = ES_GetTmdView(titleId, NULL, &tmdSize);
        if (getTmdViewRes != ES_ERR_OK) {
            OSReport("NandSDWorker: failed to get TMD of 0x%016llx.[%d]\n", titleId, getTmdViewRes);
            return WORKER_RESULT_GENERIC_ERR;
        }

        ESTmdView* tmdViewBuf = (ESTmdView*)MEMAllocFromExpHeapEx(pWork->pHeap19000, ROUNDUP(tmdSize, 0x20), 0x20);
        *tmdViewOut = tmdViewBuf;
        getTmdViewRes = ES_GetTmdView(titleId, tmdViewBuf, &tmdSize);
        if (getTmdViewRes != ES_ERR_OK) {
            OSReport("NandSDWorker: failed to get TMD of 0x%016llx.[%d]\n", titleId, getTmdViewRes);
            return WORKER_RESULT_GENERIC_ERR;
        }

        return WORKER_RESULT_OK;
    }

    bool NandSDWorker::content_exist(ESTmdView* tmdView, u32 contentIdx) {
        u64 titleId;
        ESContentId cid;
        u32 i;

        titleId = tmdView->head.titleId;
        for (i = 0; i < tmdView->head.numContents; i++) {
            if (contentIdx == tmdView->contents[i].index) {
                cid = tmdView->contents[i].cid;
                break;
            }
        }
        if (i == tmdView->head.numContents)
            return false;

        u32 numContents;
        ESContentId contentIds[0x200] ALIGN32;
        if (ES_ListTitleContentsOnCard(titleId, NULL, &numContents) != ES_ERR_OK)
            return false;
        if (ES_ListTitleContentsOnCard(titleId, contentIds, &numContents) != ES_ERR_OK)
            return false;

        for (i = 0; i < numContents; i++) {
            if (cid == contentIds[i])
                return true;
        }
        return false;
    }

    void NandSDWorker::do_list_nand_app() {
        ESTitleId* titleIds;
        ESTitleId* titleIdsOut;

        u32 titleCount;

        titleIdsOut = (ESTitleId*)pWork->pParamA;
        titleCount = 0;
        ES_ListTitlesOnCard(NULL, &titleCount);
        titleIds = (ESTitleId*)MEMAllocFromExpHeapEx(pWork->pHeap19000, titleCount * sizeof(ESTitleId), 0x20);
        ES_ListTitlesOnCard(titleIds, &titleCount);
        int outI = 0;
        for (int i = 0; i < titleCount; i++) {
            if (is_user_nand_app(titleIds[i])) {
                if (nand_app_exist(titleIds[i])) {
                    titleIdsOut[outI++] = titleIds[i];
                }
            }
        }
        MEMFreeToExpHeap(pWork->pHeap19000, titleIds);
        pWork->mAsyncResult = WORKER_RESULT_OK;
    }

    s32 NandSDWorker::get_nand_app_thumbnail(ESTitleId titleId, u8* thumbnailOut, channel::SChanMgrMetaHeader* metaHdrOut) {
        s32 sizeOrErr;
        AppCacheEntry* cacheEntry = find_app_cache(&pWork->mAppsListNand, titleId);
        if (cacheEntry == NULL || cacheEntry->mThumbnailSize == -1) {
            ContentBin* contentBin = (ContentBin*)MEMAllocFromExpHeapEx(pWork->pHeap19000, sizeof(ContentBin), 0x20);
            sizeOrErr = get_app_banner_from_meta(titleId, &contentBin->hdr);
            if (sizeOrErr == WORKER_RESULT_OK) {
                OSReport("NandSDWorker: get 0x%016llx app thumbnail from meta.\n", titleId);
                sizeOrErr = uncompress_app_thumbnail(contentBin->icon, (contentBin->hdr).mThumbnailSize, thumbnailOut);
                if (sizeOrErr < WORKER_RESULT_OK) {
                    OSReport("NandSDWorker: cannot uncompress thumbnail of %016llx [%d].\n", titleId, sizeOrErr);
                    sizeOrErr = WORKER_RESULT_BAD_FILE;
                } else {
                    OSReport("NandSDWorker: uncompress thumbnail size = %d.\n", sizeOrErr);
                    if (metaHdrOut != NULL) {
                        memcpy(metaHdrOut, &(contentBin->hdr).mMetaHdr, 0x600);
                    }
                    if (cacheEntry != NULL) {
                        memcpy(cacheEntry->mThumbnail, thumbnailOut, (contentBin->hdr).mThumbnailSize);
                        cacheEntry->mThumbnailSize = sizeOrErr;
                    } else {
                        add_app_cache(&pWork->mAppsListNand, titleId, thumbnailOut, sizeOrErr, &(contentBin->hdr).mMetaHdr, -1);
                    }
                }
            }
            MEMFreeToExpHeap(this->pWork->pHeap19000, contentBin);
        } else {
            memcpy(thumbnailOut, cacheEntry->mThumbnail, cacheEntry->mThumbnailSize);
            if (metaHdrOut != NULL) {
                memcpy(metaHdrOut, &cacheEntry->mMetaHdr, 0x600);
            }
            sizeOrErr = cacheEntry->mThumbnailSize;
        }
        return sizeOrErr;
    }

    s32 NandSDWorker::uncompress_app_thumbnail(const u8* cmpr, u32 uncmprSize, u8* uncmpr) {
        s32 size;

        u8 md5Digest[0x10];
        bool hasMd5 = false;
        u32 dataLen = 0;
        u32 offset = 0;
        if (NAND_CHECK_MAGIC4(cmpr, 'I', 'M', 'D', '5')) {
            dataLen = *(u32*)(cmpr + 4);
            hasMd5 = true;
            memcpy(md5Digest, cmpr + 0x10, 0x10);
            offset = 0x20;
        }

        if (is_compressed(cmpr + offset)) {
            size = get_decode_size(cmpr + offset);
            if (size > 0x19000) {
                return WORKER_RESULT_GENERIC_ERR;
            }

            if (is_lz7_compressed(cmpr + offset)) {
                CXUncompressLZ(cmpr + (offset + 4), uncmpr);
            } else {
                Rvl_decode(uncmpr, (u8*)cmpr + offset);
            }

            if (hasMd5 && !check_md5(md5Digest, cmpr + offset, dataLen)) {
                size = -1;
            }
        } else {
            size = uncmprSize - offset;
            memcpy(uncmpr, cmpr + offset, size);
            if (hasMd5 && !check_md5(md5Digest, uncmpr, dataLen)) {
                size = -1;
            }
        }
        return size;
    }

    bool NandSDWorker::is_sli_compressed(const u8* data) {
        return NAND_CHECK_MAGIC3(data, 'Y', 'a', 'z');
    }
    bool NandSDWorker::is_asr_compressed(const u8* data) {
        return NAND_CHECK_MAGIC3(data, 'A', 'S', 'R');
    }
    bool NandSDWorker::is_ash_compressed(const u8* data) {
        return NAND_CHECK_MAGIC3(data, 'A', 'S', 'H');
    }
    bool NandSDWorker::is_lz7_compressed(const u8* data) {
        // @bug This checks the 3rd byte twice instead of the 4th
        return NAND_CHECK_MAGIC3(data, 'L', 'Z', '7') && data[2] == '7';
    }

    bool NandSDWorker::is_compressed(const u8* data) {
        if (is_sli_compressed(data) || is_asr_compressed(data) || is_ash_compressed(data) || is_lz7_compressed(data))
            return true;
        else
            return false;
    }

    u32 NandSDWorker::get_decode_size(const u8* data) {
        if (data[0] == 'Y') {
            return (data[4] << 0x18) | (data[5] << 0x10) | (data[6] << 0x8) | data[7];
        }
        if (data[0] == 'L') {
            return CXGetUncompressedSize(data + 4);
        }
        return (data[5] << 0x10) | (data[6] << 0x8) | data[7];
    }

    void NandSDWorker::send_work(WorkMessage msg) {
        if (!is_working()) {
            set_state(WORKER_STATE_WORKING);
            OSSendMessage(&pWork->mMsgQueue, (OSMessage)msg, 0);
        }
    }

    NandSDWorker::WorkMessage NandSDWorker::wait_work() {
        OSMessage cmd = NULL;
        OSReceiveMessage(&pWork->mMsgQueue, &cmd, 1);
        OSReport("NandSDWorker: recieve message = %d\n", cmd);
        return (WorkMessage)(u32)cmd;
    }

    NandSDWorker::WorkState NandSDWorker::get_state() {
        OSLockMutex(&pWork->mMutex);
        WorkState state = pWork->mState;
        OSUnlockMutex(&pWork->mMutex);
        return state;
    }
    void NandSDWorker::set_state(WorkState newState) {
        OSLockMutex(&pWork->mMutex);
        pWork->mState = newState;
        OSUnlockMutex(&pWork->mMutex);
    }

    void NandSDWorker::sd_insert_callback(s8 driveLetter) {
        OSReport("NandSDWorker: SD card inserted !!   %c drive\n", driveLetter);
        if (s_sd_state != SD_STATE_INITIAL)
            s_sd_state = SD_STATE_NOT_MOUNTED;
    }
    void NandSDWorker::sd_eject_callback(s8 driveLetter) {
        OSReport("NandSDWorker: SD card ejected  !!   %c drive\n", driveLetter);
        if (s_sd_state != SD_STATE_INITIAL)
            s_sd_state = SD_STATE_SLOT_EMPTY;
    }

    void NandSDWorker::add_save_cache(nw4r::ut::List* list, ESTitleId titleId, WIISaveBannerFile* saveData, s32 size) {
        if (list->numObjects >= 45) {
            SaveCacheEntry* lastEntry = (SaveCacheEntry*)nw4r::ut::List_GetPrev(list, NULL);
            nw4r::ut::List_Remove(list, lastEntry);
            MEMFreeToUnitHeap(pWork->pSaveCacheHeap, lastEntry);
        }

        SaveCacheEntry* entry = (SaveCacheEntry*)MEMAllocFromUnitHeap(pWork->pSaveCacheHeap);
        entry->mTitleId = titleId;
        if (saveData != NULL) {
            entry->mBanner = *saveData;
        } else {
            entry->mBanner.magic = 0;
        }
        entry->mSize = size;
        nw4r::ut::List_Prepend(list, entry);
    }
    NandSDWorker::SaveCacheEntry* NandSDWorker::find_save_cache(nw4r::ut::List* list, ESTitleId titleId) {
        SaveCacheEntry* curr = NULL;
        while ((curr = (SaveCacheEntry*)nw4r::ut::List_GetNext(list, curr)) != NULL) {
            if (curr->mTitleId == titleId)
                return curr;
        }
        return NULL;
    }
    void NandSDWorker::delete_save_cache(nw4r::ut::List* list, ESTitleId titleId) {
        SaveCacheEntry* entry = find_save_cache(list, titleId);
        if (entry == NULL)
            return;

        nw4r::ut::List_Remove(list, entry);
        MEMFreeToUnitHeap(pWork->pSaveCacheHeap, entry);
    }
    void NandSDWorker::clear_save_cache(nw4r::ut::List* list) {
        SaveCacheEntry* curr = NULL;
        while ((curr = (SaveCacheEntry*)nw4r::ut::List_GetNext(list, curr)) != NULL) {
            nw4r::ut::List_Remove(list, curr);
            MEMFreeToUnitHeap(pWork->pSaveCacheHeap, curr);
        }
    }

    void NandSDWorker::add_app_cache(nw4r::ut::List* list, ESTitleId titleId, u8* thumb, u32 thumbSize, channel::SChanMgrMetaHeader* meta, s32 size) {
        if (list->numObjects >= 48) {
            AppCacheEntry* lastEntry = (AppCacheEntry*)nw4r::ut::List_GetPrev(list, NULL);
            nw4r::ut::List_Remove(list, lastEntry);
            MEMFreeToUnitHeap(pWork->pAppCacheHeap, lastEntry);
        }
        AppCacheEntry* entry = (AppCacheEntry*)MEMAllocFromUnitHeap(pWork->pAppCacheHeap);
        entry->titleId = titleId;
        if (thumb != NULL) {
            memcpy(entry->mThumbnail, thumb, thumbSize);
            memcpy(&entry->mMetaHdr, meta, sizeof(channel::SChanMgrMetaHeader));
            entry->mThumbnailSize = thumbSize;
        } else {
            entry->mThumbnailSize = -1;
        }
        entry->mFileSize = size;
        nw4r::ut::List_Prepend(list, entry);
    }
    NandSDWorker::AppCacheEntry* NandSDWorker::find_app_cache(nw4r::ut::List* list, ESTitleId titleId) {
        AppCacheEntry* curr = NULL;
        if (list == &pWork->mAppsListSD) {
            while ((curr = (AppCacheEntry*)nw4r::ut::List_GetNext(list, curr)) != NULL) {
                if (ES_TITLE_CODE(curr->titleId) == titleId)
                    return curr;
            }
        } else {
            while ((curr = (AppCacheEntry*)nw4r::ut::List_GetNext(list, curr)) != NULL) {
                if (curr->titleId == titleId)
                    return curr;
            }
        }
        return NULL;
    }
    void NandSDWorker::delete_app_cache(nw4r::ut::List* list, ESTitleId titleId) {
        AppCacheEntry* entry = find_app_cache(list, titleId);
        if (entry == NULL)
            return;

        nw4r::ut::List_Remove(list, entry);
        MEMFreeToUnitHeap(pWork->pAppCacheHeap, entry);
    }
    void NandSDWorker::clear_app_cache(nw4r::ut::List* list) {
        AppCacheEntry* curr;
        while ((curr = (AppCacheEntry*)nw4r::ut::List_GetFirst(list)) != NULL) {
            nw4r::ut::List_Remove(list, curr);
            MEMFreeToUnitHeap(pWork->pAppCacheHeap, curr);
        }
    }

    s32 NandSDWorker::get_sd_entry_list(const char* filename, ESTitleId32* titleIdsOut, u32 minSize) {
        FADta fData;
        char fmtStr[0x40];
        char path[0x40];
        FAFileStat fStat;
        s32 sdErr;

        u32 count = 0;
        FAError dirIterRes = FAFsfirst("/private/wii/title/*", 0x10, &fData);
        if (dirIterRes != FA_ERR_SUCCESS) {
            OSReport("NandSDWorker: FAFsfirst /private/wii/title/* failed.\n");
            return handle_sd_error_for_entry(FA_ERR_SYSTEM, NULL);
        }

        strncpy(fmtStr, c_wii_sd_title_root, 0x40);
        strncat(fmtStr, "%s/", 0x40);
        strncat(fmtStr, filename, 0x40);
        // FVar1 = FA_ERR_SUCCESS;
        while (dirIterRes == FA_ERR_SUCCESS) {
            if (unk_0x4 != false)
                return WORKER_RESULT_UNK_N18;

            if ((fData.attribute & 0x10) != 0) {
                u32 filenameLen = strlen(fData.fileName);
                if (filenameLen == 4 || filenameLen == 8) {
                    snprintf(path, 0x40, fmtStr, fData.fileName);
                    if (handle_sd_error_for_entry(FAFstat(path, &fStat), &sdErr) == WORKER_RESULT_OK) {
                        if (fStat.size > minSize && is_fa_file(fStat.stat)) {
                            OSReport("NandSDWorker: found sd data %s [size: %d]\n", path, fStat.size);
                            if (filenameLen == 8) {
                                char* local_508 = NULL;
                                ESTitleId32 titleId = strtoul(fData.fileName, &local_508, 0x10);
                                if (is_available_data_only_titleidlo(titleId)) {
                                    if (titleIdsOut != NULL) {
                                        titleIdsOut[count] = titleId;
                                    }
                                    count++;
                                    OSReport("OK: %08x\n", titleId);
                                } else {
                                    OSReport("NG: %08x\n", titleId);
                                }
                            } else {
                                if (titleIdsOut != NULL) {
                                    titleIdsOut[count] = gamecode_to_titleid_lo(fData.fileName);
                                }
                                count++;
                            }
                            if (count >= 2400) {
                                OSReport("NandSDWorker: There is too many entry on this SD card.\n");
                                break;
                            }
                        }
                    } else if (sdErr != WORKER_RESULT_GENERIC_ERR) {
                        OSReport("NandSDWorker: FAFstat %s failed.\n", path);
                        return sdErr;
                    }
                }
            }
            dirIterRes = FAFsnext(&fData);
            if (dirIterRes != FA_ERR_SUCCESS && handle_sd_error_for_entry(FA_ERR_SYSTEM, &sdErr) != WORKER_RESULT_GENERIC_ERR) {
                OSReport("NandSDWorker: FAFsnext /private/wii/title/* failed.\n");
                return sdErr;
            }
        }
        return count;
    }

    int NandSDWorker::sd_file_exist(const char* path, u32 minSize) {
        FAFileStat fStat;
        if (FAFstat(path, &fStat) == FA_ERR_SUCCESS) {
            if (fStat.size > minSize && is_fa_file(fStat.stat)) {
                OSReport("NandSDWorker: found sd data %s [size: %d]\n", path, fStat.size);
                return TRUE;
            } else {
                return FALSE;
            }
        } else {
            FAError faErr = FAErrnum();
            if (faErr == FA_ERR_ENOENT || faErr == FA_ERR_EINVAL) {
                return FALSE;
            } else {
                OSReport("NandSDWorker: FAFstat %s failed.[%d]\n", path, faErr);
                return handle_sd_error_for_entry(FA_ERR_SYSTEM, NULL);
            }
        }
    }

    int NandSDWorker::get_sd_save_list(ESTitleId32* titleIdsOut) {
        pWork->mSdSaveNum = 0;
        s32 ret = get_sd_entry_list(c_sd_save_file_name, titleIdsOut, sizeof(SDSaveBanner));
        if (ret < WORKER_RESULT_OK)
            return ret;

        pWork->mSdSaveNum = ret;
        OSReport("NandSDWorker: sd save num = %d\n", ret);
        return WORKER_RESULT_OK;
    }

    int NandSDWorker::get_sd_app_list(ESTitleId32* titleIdsOut) {
        pWork->mSdAppNum = 0;
        s32 ret = get_sd_entry_list(c_sd_app_file_name, titleIdsOut, sizeof(SDAppBanner));
        if (ret < WORKER_RESULT_OK)
            return ret;

        pWork->mSdAppNum = ret;
        OSReport("NandSDWorker: sd app num = %d\n", ret);
        return WORKER_RESULT_OK;
    }

    int NandSDWorker::recursion_nand_save(ESTitleId titleId, RecursiveProcess process, const char** ignoreList, u32 ignoreListLen) {
        char bannerPath[0x40];
        char dataPath[0x41];  // Between 0x41 and 0x50, likely 0x41 because 0x40 + null byte

        get_nand_data_only_title_save_path(titleId, dataPath);

        if (!change_uid(titleId)) {
            return WORKER_RESULT_GENERIC_ERR;
        }

        if (process == RECURSIVE_DELETE) {
            strncpy(bannerPath, dataPath, 0x40);
            strncat(bannerPath, "/", 0x40);
            strncat(bannerPath, c_banner_file_name, 0x40);

            int delBannerRes = nand::wrapper::Delete(bannerPath);
            if (check_nand_corrupt(delBannerRes, NULL)) {
                change_uid(SYSMENU_TITLE_ID);
                return WORKER_RESULT_NAND_CORRUPT;
            }
            if (delBannerRes == NAND_RESULT_OK) {
                OSReport("NandSDWorker: delete [%s]\n", bannerPath);
            } else if (delBannerRes == NAND_RESULT_NOEXISTS) {
                OSReport("NandSDWorker: [%s] no exists\n", bannerPath);
            } else {
                OSReport("NandSDWorker: NANDDelete %s failed [%d]\n", bannerPath, delBannerRes);
                change_uid(SYSMENU_TITLE_ID);
                return WORKER_RESULT_GENERIC_ERR;
            }
        }

        int ret = recursion_nand(dataPath, NULL, process, ignoreList, ignoreListLen);
        if (process == RECURSIVE_DELETE && delete_empty_title(titleId, FALSE) != WORKER_RESULT_OK) {
            return WORKER_RESULT_GENERIC_ERR;
        }
        change_uid(SYSMENU_TITLE_ID);

        return ret;
    }

    typedef struct {
        s32 type;
        char text[0x40];
    } IgnoreListBufElement;
    inline void initIgnoreListBuf(IgnoreListBufElement* ignoreListBuf, u32 ignoreListLen, const char** ignoreList) {
        for (int i = 0; i < ignoreListLen; i++) {
            u32 currIgnoreLen = strlen(ignoreList[i]);
            strncpy(ignoreListBuf[i].text, ignoreList[i], 0x40);
            if (ignoreListBuf[i].text[currIgnoreLen - 1] == '/') {
                ignoreListBuf[i].text[currIgnoreLen - 1] = '\0';
                ignoreListBuf[i].type = NAND_TYPE_DIR;
            } else {
                ignoreListBuf[i].type = NAND_TYPE_FILE;
            }
        }
    }

    int NandSDWorker::recursion_nand(const char* mainPath, const char* pathMoveTarget, RecursiveProcess process, const char** ignoreList,
                                     u32 ignoreListLen) {
        u32 dirMemberCount = 0;
        s32 ret = WORKER_RESULT_OK;
        ut::Stack stack;

        IgnoreListBufElement* ignoreListBuf;
        char* dirListingBuf;
        u32 mainPathLen;

        int i;

        if (ignoreListLen != 0) {
            ignoreListBuf = (IgnoreListBufElement*)MEMAllocFromExpHeapEx(pWork->pHeap19000, ignoreListLen * sizeof(IgnoreListBufElement), 0x20);
            for (i = 0; i < ignoreListLen; i++) {
                u32 currIgnoreLen = strlen(ignoreList[i]);
                strncpy(ignoreListBuf[i].text, ignoreList[i], 0x40);
                if (ignoreListBuf[i].text[currIgnoreLen - 1] == '/') {
                    ignoreListBuf[i].text[currIgnoreLen - 1] = '\0';
                    ignoreListBuf[i].type = NAND_TYPE_DIR;
                } else {
                    ignoreListBuf[i].type = NAND_TYPE_FILE;
                }
            }
        }

        dirListingBuf = (char*)MEMAllocFromExpHeapEx(pWork->pHeap19000, sizeof("XXXXXXXX.app") * 32, 0x20);
        stack.init(MEMAllocFromExpHeapEx(pWork->pHeap19000, ut::Stack::getRequiredBufSize(0x20, 0x40), 4), 0x40, 0x20);

        mainPathLen = strlen(mainPath);
        stack.push(mainPath);

        char currBasePath[0x40];
        char currFullPath[0x40];

        while (stack.pop(currBasePath)) {
            int getDirMemberCountRes = nand::wrapper::PrivateReadDir(currBasePath, NULL, &dirMemberCount);
            if (getDirMemberCountRes != NAND_RESULT_OK) {
                OSReport("NandSDWorker: NANDPrivateReadDir[%s] failed %d\n", currBasePath, getDirMemberCountRes);
                ret = WORKER_RESULT_GENERIC_ERR;
                goto CLEANUP;
            }

            if (dirMemberCount == 0)
                continue;

            int listDirRes = nand::wrapper::PrivateReadDir(currBasePath, dirListingBuf, &dirMemberCount);
            if (listDirRes != NAND_RESULT_OK) {
                OSReport("NandSDWorker: NANDPrivateReadDir[%s] failed %d\n", currBasePath, listDirRes);
                ret = WORKER_RESULT_GENERIC_ERR;
                goto CLEANUP;
            }

            u32 dirListingOff = 0;
            u8 currPathFileType = NAND_TYPE_NONE;
            for (int memberI = 0; memberI < dirMemberCount; memberI++) {
                strncpy(currFullPath, currBasePath, 0x40);
                strncat(currFullPath, "/", 0x40);
                strncat(currFullPath, dirListingBuf + dirListingOff, 0x40);
                dirListingOff += strlen(dirListingBuf + dirListingOff) + 1;

                if (ignoreListLen != 0) {
                    bool matchesIgnore = false;
                    for (u32 ignoreI = 0; ignoreI < ignoreListLen; ignoreI++) {
                        if (strcmp(currFullPath + (mainPathLen + 1), ignoreListBuf[ignoreI].text) != 0)
                            continue;

                        int getTypeRes = nand::wrapper::PrivateGetType(currFullPath, &currPathFileType);
                        if (getTypeRes != NAND_RESULT_OK) {
                            OSReport("NandSDWorker: NANDPrivateGetType[%s] failed %d\n", currFullPath, getTypeRes);
                            ret = WORKER_RESULT_GENERIC_ERR;
                            goto CLEANUP;
                        }
                        if (currPathFileType == ignoreListBuf[ignoreI].type) {
                            OSReport("NandSDWorker: ignore [%s]\n", currFullPath);
                            matchesIgnore = true;
                        }
                    }
                    if (matchesIgnore)
                        continue;
                }

                switch (process) {
                    case RECURSIVE_GET_SIZE: {
                        int getTypeRes;
                        getTypeRes = nand::wrapper::PrivateGetType(currFullPath, &currPathFileType);
                        if (getTypeRes != NAND_RESULT_OK) {
                            OSReport("NandSDWorker: NANDPrivateGetType[%s] failed %d\n", currFullPath, getTypeRes);
                            ret = WORKER_RESULT_GENERIC_ERR;
                            goto CLEANUP;
                        }
                        if (currPathFileType == NAND_TYPE_FILE) {
                            s32 fileSizeRes = nand_get_length(currFullPath);
                            if (fileSizeRes < 0) {
                                ret = fileSizeRes;
                                goto CLEANUP;
                            }
                            ret += fileSizeRes;
                        } else if (currPathFileType == NAND_TYPE_DIR) {
                            if (!stack.push(currFullPath)) {
                                OSReport("NandSDWorker: too many files in %s\n", currBasePath);
                                ret = WORKER_RESULT_TOO_MANY_FILES;
                                goto CLEANUP;
                            }
                        }
                        break;
                    }
                    case RECURSIVE_DELETE: {
                        int deleteRes = nand::wrapper::PrivateDelete(currFullPath);
                        if (check_nand_corrupt(deleteRes, &ret))
                            goto CLEANUP;
                        if (deleteRes != NAND_RESULT_OK) {
                            OSReport("NandSDWorker: NANDPrivateDelete[%s] failed %d\n", currFullPath, deleteRes);
                            ret = WORKER_RESULT_GENERIC_ERR;
                            goto CLEANUP;
                        }
                        OSReport("NandSDWorker: delete [%s]\n", currFullPath);
                        break;
                    }
                    case RECURSIVE_MOVE: {
                        int moveRes = nand::wrapper::PrivateMove(currFullPath, pathMoveTarget);
                        if (moveRes != NAND_RESULT_OK) {
                            OSReport("NandSDWorker: NANDPrivateMove %s failed.[%d]\n", currFullPath, moveRes);
                            recursion_nand(pathMoveTarget, NULL, RECURSIVE_DELETE, ignoreList, ignoreListLen);
                            if (moveRes == NAND_RESULT_CORRUPT) {
                                ret = WORKER_RESULT_NAND_CORRUPT;
                            } else {
                                ret = WORKER_RESULT_GENERIC_ERR;
                            }
                            goto CLEANUP;
                        }

                        OSReport("NandSDWorker: move %s from %s to %s\n", currFullPath + (strlen(currBasePath) + 1), currBasePath, pathMoveTarget);
                        break;
                    }
                }
            }
        }

    CLEANUP:
        MEMFreeToExpHeap(pWork->pHeap19000, stack.getBuf());
        MEMFreeToExpHeap(pWork->pHeap19000, dirListingBuf);
        if (ignoreListLen != 0)
            MEMFreeToExpHeap(pWork->pHeap19000, ignoreListBuf);

        return ret;
    }

    s32 NandSDWorker::nand_get_length(const char* path) {
        s32 ret;
        int errno;

        u32 fileLen;
        NANDFileInfo fInfo;

        fileLen = 0;
        errno = nand::wrapper::PrivateOpen(path, &fInfo, NAND_ACCESS_READ);
        if (errno != NAND_RESULT_OK) {
            OSReport("NandSDWorker: NANDPrivateOpen[%s] failed %d\n", path, errno);
            return WORKER_RESULT_GENERIC_ERR;
        }

        errno = nand::wrapper::GetLength(&fInfo, &fileLen);
        if (errno != NAND_RESULT_OK) {
            OSReport("NandSDWorker: NANDGetLength[%s] failed %d\n", path, errno);
            ret = WORKER_RESULT_GENERIC_ERR;
        } else {
            OSReport("NandSDWorker: size of %s is [%d]\n", path, fileLen);
            ret = fileLen;
        }

        errno = nand::wrapper::Close(&fInfo);
        if (check_nand_corrupt(errno, NULL)) {
            return WORKER_RESULT_NAND_CORRUPT;
        }
        if (errno != NAND_RESULT_OK) {
            OSReport("NandSDWorker: NANDClose[%s] failed %d\n", path, errno);
            ret = WORKER_RESULT_GENERIC_ERR;
        }

        return ret;
    }

    bool NandSDWorker::change_uid(ESTitleId newUid) {
        if (pWork->mUid != newUid) {
            int setUidRes = ES_SetUid(newUid);
            if (setUidRes != ES_ERR_OK) {
                OSReport("ES_SetUid failed[%d]: 0x%016llx\n", setUidRes, newUid);
                return false;
            }
            ISFS_CloseLib();
            ISFS_OpenLib();

            pWork->mUid = newUid;
        }
        return true;
    }

    bool NandSDWorker::check_nand_corrupt(s32 nandCode, s32* errcodeOut) {
        if (nandCode == NAND_RESULT_CORRUPT) {
            OSReport("NandSDWorker: nand memory corrupt!\n");
            if (errcodeOut != NULL) {
                *errcodeOut = WORKER_RESULT_NAND_CORRUPT;
            }
            return true;
        } else {
            return false;
        }
    }

    int NandSDWorker::handle_sd_error(s32 err, s32* errOut) {
        if (err == WORKER_RESULT_OK)
            return WORKER_RESULT_OK;

        int ret = WORKER_RESULT_GENERIC_ERR;
        switch (FAErrnum()) {
            case FA_ERR_SYSTEM:
            case FA_ERR_EPERM:
            case FA_ERR_ENOENT:
            case FA_ERR_EBADF:
            case FA_ERR_ENOMEM:
            case FA_ERR_EACCES:
            case FA_ERR_EBUSY:
            case FA_ERR_EEXIST:
            case FA_ERR_EISDIR:
            case FA_ERR_EINVAL:
            case FA_ERR_ENFILE:
            case FA_ERR_EMFILE:
            case FA_ERR_EFBIG:
            case FA_ERR_ENOLCK:
            case FA_ERR_ENOSYS:
            case FA_ERR_ENOTEMPTY:
                ret = WORKER_RESULT_GENERIC_ERR;
                break;

            case FA_ERR_ENOSPC:
                ret = WORKER_RESULT_NO_SPACE;
                break;

            case FA_ERR_EWRTPROTECT:
                ret = WORKER_RESULT_WRITE_PROTECTED;
                break;

            case FA_ERR_EIO:
            case FA_ERR_ENOEXEC:
                ret = WORKER_RESULT_GENERIC_ERR;
                break;
        }

        OSReport("NandSDWorker: FA library error.[%d]\n", FAErrnum());
        if (errOut != NULL)
            *errOut = ret;
        return ret;
    }
    int NandSDWorker::handle_sd_error_for_entry(s32 err, s32* errOut) {
        if (err == FA_ERR_SUCCESS)
            return WORKER_RESULT_OK;

        FAError faErr = FAErrnum();
        if (faErr == FA_ERR_ENOENT || faErr == FA_ERR_EINVAL) {
            if (errOut != NULL)
                *errOut = WORKER_RESULT_GENERIC_ERR;
            return WORKER_RESULT_GENERIC_ERR;
        } else {
            return handle_sd_error(err, errOut);
        }
    }

    bool NandSDWorker::is_all_region(ESTitleId titleId) {
        DO_NOT_INLINE;
        u64 masked = titleId & ~0xFFFFFFFFFFFFFF00ULL;
        char maskedChar = masked;
        return maskedChar == 'A';
    }
    bool NandSDWorker::is_same_title(ESTitleId titleIdA, ESTitleId titleIdB) {
        DO_NOT_INLINE;
        ESTitleId maskedA = titleIdA & 0xFFFFFFFFFFFFFF00ULL;
        ESTitleId maskedB = titleIdB & 0xFFFFFFFFFFFFFF00ULL;
        return maskedA == maskedB;
    }
    int NandSDWorker::item_exist_nand_save_folder(ESTitleId titleId, const char* folderName) {
        char fullPath[0x40];
        if (!change_uid(titleId)) {
            return WORKER_RESULT_ES_ERROR;
        }

        get_nand_data_only_title_save_path(titleId, fullPath);
        strncat(fullPath, "/", 0x40);
        strncat(fullPath, folderName, 0x40);
        u32 numItemsInFolder;
        int readDirRes = nand::wrapper::ReadDir(fullPath, NULL, &numItemsInFolder);

        bool exists;
        if (readDirRes == NAND_RESULT_OK) {
            OSReport("NandSDWorker: %d item in %s.\n", numItemsInFolder, fullPath);
            if (numItemsInFolder != 0) {
                exists = true;
            } else {
                exists = false;
            }
        } else {
            OSReport("NandSDWorker: NANDReadDir %s failed.[%d]\n", fullPath, readDirRes);
            exists = false;
        }
        change_uid(SYSMENU_TITLE_ID);
        return exists;
    }

    int NandSDWorker::encrypt(const void* input, u32 inputSize, void* output) {
        int res;
        u8 iv[0x10] ALIGN32;

        memcpy(iv, &c_es_encrypt_iv, 0x10);
        res = ES_Encrypt(6, iv, (u8*)input, inputSize, (u8*)output);
        if (res != ES_ERR_OK)
            OSReport("NandSDWorker: ES_Encrypt failed.[%d]\n", res);

        return res;
    }

    int NandSDWorker::decrypt(const void* input, u32 inputSize, void* output) {
        int res;
        u8 iv[0x10] ALIGN32;

        memcpy(iv, &c_es_encrypt_iv, 0x10);
        res = ES_Decrypt(6, iv, (u8*)input, inputSize, (u8*)output);
        if (res != ES_ERR_OK)
            OSReport("NandSDWorker: ES_Decrypt failed.[%d]\n", res);

        return res;
    }

    bool NandSDWorker::is_fa_file(u8 stat) {
        DO_NOT_INLINE;
        return (stat & 0b00010000) == 0 && (stat & 0b00000010) == 0;
    }

    int ipl::NandSDWorker::get_nand_save_perms(ESTitleId titleId) {
        u32 numTitleFiles;

        WIISaveBannerFile* fileOut;
        int ret;

        fileOut = (WIISaveBannerFile*)MEMAllocFromExpHeapEx(this->pWork->pHeap19000, 0xf0a0, 0x20);

        ret = get_nand_save_banner(titleId, fileOut, NULL);
        if (ret != WORKER_RESULT_OK)
            goto CLEANUP;

        if (is_data_only_title(titleId)) {
            ret = 5;
            goto CLEANUP;
        }

        if ((fileOut->flags & 1) != 0) {
            ret = 1;
            goto CLEANUP;
        }

        if (item_exist_nand_save_folder(titleId, c_nocopy_folder_name) != 0) {
            ret = get_num_nand_data_only_title_save_files(titleId, &numTitleFiles);
            if (ret != WORKER_RESULT_OK)
                goto CLEANUP;

            if (numTitleFiles == 2)
                ret = 1;
            else
                ret = 2;
            goto CLEANUP;
        }

        if (item_exist_nand_save_folder(titleId, c_notransfer_folder_name) != 0) {
            ret = get_num_nand_data_only_title_save_files(titleId, &numTitleFiles);
            if (ret != WORKER_RESULT_OK)
                goto CLEANUP;

            if (numTitleFiles == 2)
                ret = 3;
            else
                ret = 4;
            goto CLEANUP;
        }

        ret = 0;

    CLEANUP:
        if (fileOut != NULL)
            MEMFreeToExpHeap(pWork->pHeap19000, fileOut);
        return ret;
    }

    int NandSDWorker::get_num_nand_data_only_title_save_files(ESTitleId titleId, u32* numFiles) {
        if (!change_uid(titleId)) {
            return WORKER_RESULT_ES_ERROR;
        }

        char savePath[0x40];
        get_nand_data_only_title_save_path(titleId, savePath);

        int readDirRes = nand::wrapper::ReadDir(savePath, NULL, numFiles);
        if (readDirRes != NAND_RESULT_OK) {
            OSReport("NandSDWorker: NANDReadDir %s failed.[%d]\n", savePath, readDirRes);
        }
        change_uid(SYSMENU_TITLE_ID);
        return readDirRes;
    }

    int NandSDWorker::get_sd_save_perms(ESTitleId32 titleId) {
        SaveCacheEntry* cacheEntry = find_save_cache(&pWork->mSavesListSD, titleId);
        if (cacheEntry == NULL || cacheEntry->mBanner.magic == 0)
            return WORKER_RESULT_GENERIC_ERR;

        return cacheEntry->mBanner.flags & scene::WiiBannerFileInfo::FLAG_LOCAL_SAVE;
    }

    void NandSDWorker::do_move_nand_app_to_sd() {
        do_copy_nand_app_to_sd();
        if (pWork->mAsyncResult < WORKER_RESULT_OK)
            return;

        pWork->mAsyncResult = delete_nand_app_content(pWork->mTitleId);
        if (pWork->mAsyncResult != WORKER_RESULT_OK)
            return;

        pWork->mNandAppNum--;
        change_nand_app_count(-1);
        delete_app_cache(&pWork->mAppsListNand, pWork->mTitleId);
    }

    void NandSDWorker::do_move_sd_app_to_nand() {
        do_copy_sd_app_to_nand(false);
        if (pWork->mAsyncResult < WORKER_RESULT_OK)
            return;

        do_delete_sd_app();
    }

    void NandSDWorker::do_move_nand_save_to_sd() {
        do_copy_nand_save_to_sd();
        if (pWork->mAsyncResult < WORKER_RESULT_OK)
            return;

        if (is_data_only_title(pWork->mTitleId)) {
            int delTitleRes = utility::ESMisc::DeleteTitle(System::getMem2Sys(), pWork->mTitleId);
            if (delTitleRes != 0) {
                OSReport("NandSDWorker: ESMisc::DeleteTitle failed [%d]\n", delTitleRes);
                pWork->mAsyncResult = WORKER_RESULT_GENERIC_ERR;
            } else {
                pWork->mAsyncResult = WORKER_RESULT_OK;
            }
            pWork->mAsyncResult = delete_meta_file(pWork->mTitleId);
        } else {
            pWork->mAsyncResult = recursion_nand_save(pWork->mTitleId, RECURSIVE_DELETE, NULL, 0);
            delete_download_task(pWork->mTitleId);
        }
        if (pWork->mAsyncResult != WORKER_RESULT_OK)
            return;

        pWork->mNandSaveNum--;
        delete_save_cache(&pWork->mSavesListNand, pWork->mTitleId);
    }

    void NandSDWorker::do_move_sd_save_to_nand() {
        do_copy_sd_save_to_nand();
        if (pWork->mAsyncResult != WORKER_RESULT_OK)
            return;

        do_delete_sd_save();
    }

    bool NandSDWorker::both_app_exist(ESTitleId32 titleId) {
        bool exists = false;
        SDAppBanner* banner = (SDAppBanner*)MEMAllocFromAllocator(&pWork->mBothHeapAllocator, 0x640);
        if (get_sd_app_banner(titleId, banner) == WORKER_RESULT_OK && nand_app_exist_ex(banner->mTitleId) == EXISTENCE_COMPLETE) {
            exists = true;
        }

        if (banner != NULL)
            MEMFreeToAllocator(&pWork->mBothHeapAllocator, banner);

        return exists;
    }

    bool NandSDWorker::check_nand_save_exist_lo(ESTitleId32 titleId) {
        bool exists = false;
        SDSaveBanner* banner = (SDSaveBanner*)MEMAllocFromAllocator(&this->pWork->mBothHeapAllocator, sizeof(SDSaveBanner));
        if (get_sd_save_banner(titleId, banner) == WORKER_RESULT_OK) {
            if (is_data_only_title(titleId)) {
                exists = nand_app_exist(banner->mTitleId);
            } else {
                exists = check_nand_save_banner_exist(banner->mTitleId);
            }
        }

        if (banner != NULL)
            MEMFreeToAllocator(&pWork->mBothHeapAllocator, banner);

        return exists;
    }

    int NandSDWorker::get_nand_title_version(ESTitleId titleId, u16* titleVersion) {
        ESTmdView* tmdViewPtr;

        tmdViewPtr = NULL;
        if (get_nand_app_tmdview(titleId, &tmdViewPtr) == WORKER_RESULT_OK) {
            *titleVersion = tmdViewPtr->head.titleVersion;
        } else {
            *titleVersion = 0;
        }
        if (tmdViewPtr != NULL) {
            MEMFreeToExpHeap(pWork->pHeap19000, tmdViewPtr);
        }
        return WORKER_RESULT_OK;
    }
    int NandSDWorker::get_sd_title_version(ESTitleId32 titleId, u16* titleVersion) {
        SDAppBanner* banner;
        int ret;

        banner = (SDAppBanner*)MEMAllocFromAllocator(&pWork->mBothHeapAllocator, 0x640);
        ret = get_sd_app_banner(titleId, banner);
        if (ret != WORKER_RESULT_OK) {
            MEMFreeToAllocator(&pWork->mBothHeapAllocator, banner);
            return WORKER_RESULT_GENERIC_ERR;
        } else {
            char path[0x40];
            ESTitleId wadTitleId;
            get_sd_app_path(titleId, path);
            int getTitleVersionRes =
                WADGetTitleVersionEx(path, &wadTitleId, titleVersion, WAD_LOC_SD_CARD, (banner->mThumbnailSize + 0x3f & 0xffffffc0) + 0x640);
            if (getTitleVersionRes != 0) {
                OSReport("NandSDWorker: WADGetTitleVersionEx failed.[%d]\n", getTitleVersionRes);
                ret = WORKER_RESULT_GENERIC_ERR;
            }
            MEMFreeToAllocator(&pWork->mBothHeapAllocator, banner);
            return ret;
        }
    }

    int NandSDWorker::check_sd_title_restorable(ESTitleId32 titleId) {
        SDAppBanner* sdAppBanner;
        ESTitleId fullTitleId;
        int ret;

        sdAppBanner = (SDAppBanner*)MEMAllocFromAllocator(&pWork->mBothHeapAllocator, 0x640);
        u16 nandTitleVersion = 0;
        u16 sdTitleVersion = 0;
        ret = get_sd_app_banner(titleId, sdAppBanner);
        if (ret != WORKER_RESULT_OK)
            goto CLEANUP;

        fullTitleId = sdAppBanner->mTitleId;
        ret = get_sd_title_version(titleId, &sdTitleVersion);
        if (ret != WORKER_RESULT_OK)
            goto CLEANUP;

        ret = get_nand_title_version(fullTitleId, &nandTitleVersion);
        if (ret != WORKER_RESULT_OK)
            goto CLEANUP;

        nandTitleVersion = (nandTitleVersion >> 8) & 0xFFFF;
        sdTitleVersion = (sdTitleVersion >> 8) & 0xFFFF;
        if (nandTitleVersion > sdTitleVersion) {
            OSReport("NandSDWorker: SD app %08x is older version: %d (NAND: %d)\n", titleId, sdTitleVersion, nandTitleVersion);
            ret = WORKER_RESULT_VERSION_ERR;
            goto CLEANUP;
        }

        WADBackupHeader wadBakHdr;
        ESDeviceId deviceId;
        ret = get_sd_wad_header(titleId, &wadBakHdr, sdAppBanner->mThumbnailSize + 0x3f & 0xffffffc0);
        if (ret != WORKER_RESULT_OK)
            goto CLEANUP;

        ret = ES_GetDeviceId(&deviceId);
        if (ret != ES_ERR_OK) {
            OSReport("NandSDWorker: ES_GetDeviceId failed: %d\n", ret);
            ret = WORKER_RESULT_GENERIC_ERR;
            goto CLEANUP;
        }

        if (wadBakHdr.deviceId != deviceId) {
            OSReport("NandSDWorker: device id is different: %d vs %d\n", wadBakHdr.deviceId, deviceId);
            ret = WORKER_RESULT_NOT_TRANSFERRABLE;
        }
    CLEANUP:
        MEMFreeToAllocator(&pWork->mBothHeapAllocator, sdAppBanner);
        return ret;
    }
}  // namespace ipl
