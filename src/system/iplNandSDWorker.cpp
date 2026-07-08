#include <decomp.h>

#include "system/iplNandSDWorker.h"

#include "titledb.h"

#pragma sym on  // required to match (fakematch?)

// (for now, unless dtk makes the ATTRIBUTE_ALIGN part optional :P)
// stub ATTRIBUTE_ALIGN
#undef ATTRIBUTE_ALIGN
#define ATTRIBUTE_ALIGN(num)
// redefine ALIGN32 to make it not use the stubbed out ATTRIBUTE_ALIGN
#undef ALIGN32
#define ALIGN32 __attribute__((aligned(32)))

// Encryption keys. These are extracted from the executable.
#include "system/nandsdworker/es_encrypt.inc"
#include "system/nandsdworker/md5_secret_key.inc"

#include "system/rvl_dec.h"

#include "utility/iplESMisc.h"
#include "utility/iplStack.h"

#include "iplSystem.h"

#include <revolution.h>

#include <revolution/cx.h>
#include <revolution/nand.h>

#include <revolution/ncd.h>
#include <revolution/net.h>

#include <cstdlib>

namespace ipl {
#ifndef NON_MATCHING
    // this could work as a seperate unit???
    void forceStackWeaks() {
        ut::FreeList freeList;
        freeList.init(NULL, 0, 0);
        freeList.get();

        ut::Stack stack;
        stack.init(NULL, 0, 0);
        stack.push(NULL);
        stack.pop(NULL);
    }
#endif

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

    NandSDWorker::WorkSDState NandSDWorker::s_sd_state = SD_STATE_INITIAL;
    int NandSDWorker::s_completion_pct = 0;

    NandSDWorker::NandSDWorker() : myWork(NULL) {
    }

    NandSDWorker::~NandSDWorker() {
    }

    void NandSDWorker::create(void* work, void* savesBuf, void* appsBuf, int priority) {
        myWork = (Work*)work;

        /* Setup important stuff */

        Work* workForStackP = (Work*)((u8*)myWork + sizeof(myWork->threadStack));
        OSCreateThread(&myWork->thread, thread_main, this, workForStackP->threadStack, sizeof(myWork->threadStack), priority, OS_THREAD_ATTR_DETACH);

        OSInitMessageQueue(&myWork->msgQueue, myWork->messages, ARRAY_LENGTH(myWork->messages));
        OSInitMutex(&myWork->mutex);

        myWork->mainHeap = MEMCreateExpHeapEx(myWork->mHeap19000Buf, sizeof(myWork->mHeap19000Buf), 0);
        myWork->unkHeap = NULL;

        /* Setup Save Data list */

        if (savesBuf != NULL) {
            nw4r::ut::List_Init(&myWork->nandSaveList, offsetof(SaveCacheEntry, link));
            nw4r::ut::List_Init(&myWork->sdSaveList, offsetof(SaveCacheEntry, link));

            myWork->saveCacheHeap = MEMCreateUnitHeapEx(savesBuf, saveCacheHeapSize(), sizeof(SaveCacheEntry), 32, 0);
            myWork->unkHeap = MEMCreateExpHeapEx((u8*)savesBuf + saveCacheHeapSize(), 0x40000, 0);

            MEMInitAllocatorForExpHeap(&myWork->unkAllocator, myWork->unkHeap, 64);
        } else {
            myWork->saveCacheHeap = NULL;
        }

        /* Setup app list */

        if (appsBuf != NULL) {
            nw4r::ut::List_Init(&myWork->nandAppList, offsetof(AppCacheEntry, link));
            nw4r::ut::List_Init(&myWork->sdAppList, offsetof(AppCacheEntry, link));

            myWork->appCacheHeap = MEMCreateUnitHeapEx(appsBuf, appCacheHeapSize(), sizeof(AppCacheEntry), 32, 0);

            if (myWork->unkHeap == NULL) {
                myWork->unkHeap = MEMCreateExpHeapEx((u8*)appsBuf + appCacheHeapSize(), 0x40000, 0);
                MEMInitAllocatorForExpHeap(&myWork->unkAllocator, myWork->unkHeap, 64);
            }
        } else {
            myWork->appCacheHeap = NULL;
        }

        /* Setup FA system */

        FAInit(FA_FLAG_FILENAME_CHECK);

        FASetThreadPriority(priority);
        FARegistCB(FA_DEVICE_SD, sd_insert_callback, sd_eject_callback);

        myWork->cacheSetting.pages = myWork->cachePages;
        myWork->cacheSetting.buffers = myWork->cacheBuf;
        myWork->cacheSetting.numFatPages = FAT_PAGES;
        myWork->cacheSetting.numDataPages = DATA_PAGES;
        myWork->cacheSetting.numFatBufSize = 1;
        myWork->cacheSetting.numDataBufSize = 1;

        OSReport("NandSDWorker: num FAT cache : %d\n", FAT_PAGES);
        OSReport("NandSDWorker: num Data cache: %d\n", DATA_PAGES);

        myWork->driveTable.pPart = NULL;
        myWork->driveTable.pCache = &myWork->cacheSetting;

        /* Setup other work stuff */

        myWork->state = STATE_IDLE;
        myWork->asyncResult = RESULT_WORKING;
        myWork->nandSaveNum = -1;
        myWork->nandAppNum = -1;
        myWork->sdSaveNum = -1;
        myWork->sdAppNum = -1;

        s_sd_state = SD_STATE_INITIAL;
        myWork->curUId = SYSMENU_TITLE_ID;
        myWork->sdWriteProtected = FALSE;
        myWork->prevAsyncResult = RESULT_WORKING;

        unk_0x04 = false;

        OSResumeThread(&myWork->thread);
    }

    BOOL NandSDWorker::is_terminated() {
        return myWork == NULL;
    }

    BOOL NandSDWorker::is_working() {
        return get_state() == STATE_WORKING;
    }

    int NandSDWorker::get_async_result() {
        return is_working() ? RESULT_WORKING : myWork->asyncResult;
    }

    NandSDWorker::WorkSDState NandSDWorker::get_sd_state() {
        return s_sd_state;
    }

    u32 NandSDWorker::get_nand_save_num() {
        return myWork->nandSaveNum;
    }

    u32 NandSDWorker::get_nand_app_num() {
        return myWork->nandAppNum;
    }

    WIISaveBannerFile* NandSDWorker::get_cached_nand_save_banner(ESTitleId titleId) {
        SaveCacheEntry* entry = find_save_cache(&myWork->nandSaveList, titleId);
        if (entry != NULL && entry->banner.signature != 0) {
            return &entry->banner;
        } else {
            return NULL;
        }
    }

    void* NandSDWorker::get_cached_nand_app_thumbnail(ESTitleId titleId, u32* sizeOut) {
        AppCacheEntry* entry = find_app_cache(&myWork->nandAppList, titleId);
        if (entry != NULL && entry->thumbSize != -1) {
            if (sizeOut != NULL) {
                *sizeOut = entry->thumbSize;
            }
            return entry->thumbnail;
        } else {
            return NULL;
        }
    }

    channel::SChanMgrMetaHeader* NandSDWorker::get_cached_nand_app_meta_header(ESTitleId titleId) {
        AppCacheEntry* entry = find_app_cache(&myWork->nandAppList, titleId);
        if (entry != NULL && entry->thumbSize != -1) {
            return &entry->metaHdr;
        } else {
            return NULL;
        }
    }

    channel::SChanMgrMetaHeader* NandSDWorker::get_cached_sd_app_meta_header(ESTitleId32 titleId) {
        if (s_sd_state != SD_STATE_READY) {
            return NULL;
        }

        AppCacheEntry* entry = find_app_cache(&myWork->sdAppList, titleId);
        if (entry != NULL && entry->thumbSize != -1) {
            return &entry->metaHdr;
        } else {
            return NULL;
        }
    }

    s32 NandSDWorker::get_cached_nand_save_size(ESTitleId titleId) {
        SaveCacheEntry* entry = find_save_cache(&myWork->nandSaveList, titleId);
        if (entry != NULL && entry->size != -1) {
            return entry->size;
        } else {
            return -1;
        }
    }

    s32 NandSDWorker::get_cached_nand_app_size(ESTitleId titleId) {
        AppCacheEntry* entry = find_app_cache(&myWork->nandAppList, titleId);
        if (entry != NULL && entry->fileSize != -1) {
            return entry->fileSize;
        } else {
            return -1;
        }
    }

    s32 NandSDWorker::get_sd_save_num() {
        return s_sd_state == SD_STATE_READY ? myWork->sdSaveNum : -1;
    }

    s32 NandSDWorker::get_sd_app_num() {
        return s_sd_state == SD_STATE_READY ? myWork->sdAppNum : -1;
    }

    WIISaveBannerFile* NandSDWorker::get_cached_sd_save_banner(ESTitleId32 titleId) {
        if (s_sd_state != SD_STATE_READY) {
            return NULL;
        }

        SaveCacheEntry* entry = find_save_cache(&myWork->sdSaveList, titleId);
        if (entry != NULL && entry->banner.signature != 0) {
            return &entry->banner;
        } else {
            return NULL;
        }
    }

    void* NandSDWorker::get_cached_sd_app_thumbnail(ESTitleId32 titleId, u32* sizeOut) {
        if (s_sd_state != SD_STATE_READY) {
            return NULL;
        }

        AppCacheEntry* entry = find_app_cache(&myWork->sdAppList, titleId);
        if (entry != NULL && entry->thumbSize != -1) {
            if (sizeOut != NULL) {
                *sizeOut = entry->thumbSize;
            }
            return entry->thumbnail;
        } else {
            return NULL;
        }
    }

    s32 NandSDWorker::get_cached_sd_save_size(ESTitleId32 titleId) {
        if (s_sd_state != SD_STATE_READY) {
            return NULL;
        }

        SaveCacheEntry* entry = find_save_cache(&myWork->sdSaveList, titleId);
        if (entry != NULL && entry->size != -1) {
            return entry->size;
        } else {
            return -1;
        }
    }

    s32 NandSDWorker::get_cached_sd_app_size(ESTitleId32 titleId) {
        if (s_sd_state != SD_STATE_READY) {
            return NULL;
        }

        AppCacheEntry* entry = find_app_cache(&myWork->sdAppList, titleId);
        if (entry != NULL && entry->fileSize != -1) {
            return entry->fileSize;
        } else {
            return -1;
        }
    }

    BOOL NandSDWorker::is_sd_write_protected() {
        return s_sd_state == SD_STATE_READY ? myWork->sdWriteProtected : FALSE;
    }

    char NandSDWorker::get_sd_drive_letter() {
        return s_sd_state == SD_STATE_READY ? myWork->driveTable.drive : '\0';
    }

    void NandSDWorker::startup_async() {
        send_work(MESSAGE_STARTUP);
    }

    void NandSDWorker::terminate_async() {
        if (!is_working()) {
            send_work(MESSAGE_TERMINATE);
        }
    }

    void NandSDWorker::mount_sd_async() {
        send_work(MESSAGE_MOUNT_SD);
    }

    void NandSDWorker::list_nand_save_async(ESTitleId* titleIdOut) {
        myWork->paramA = titleIdOut;
        send_work(MESSAGE_LIST_NAND_SAVE);
    }

    void NandSDWorker::get_nand_save_banner_async(ESTitleId titleId, WIISaveBannerFile* fileOut) {
        myWork->curTitleId = titleId;
        myWork->paramA = fileOut;
        send_work(MESSAGE_GET_NAND_SAVE_BANNER);
    }

    void NandSDWorker::list_sd_save_async(ESTitleId32* titleIdOut) {
        myWork->paramA = titleIdOut;
        send_work(MESSAGE_LIST_SD_SAVE);
    }

    void NandSDWorker::list_sd_app_async(ESTitleId32* titleIdOut) {
        myWork->paramA = titleIdOut;
        send_work(MESSAGE_LIST_SD_APP);
    }

    void NandSDWorker::get_sd_save_banner_async(ESTitleId32 titleId, WIISaveBannerFile* fileOut) {
        myWork->curTitleId = titleId;
        myWork->paramA = fileOut;
        send_work(MESSAGE_GET_SD_SAVE_BANNER);
    }

    void NandSDWorker::get_sd_app_thumbnail_async(ESTitleId32 titleId, u8* thumbnailBuf, channel::SChanMgrMetaHeader* file) {
        myWork->curTitleId = titleId;
        myWork->paramA = thumbnailBuf;
        myWork->paramB = file;
        send_work(MESSAGE_GET_SD_APP_THUMBNAIL);
    }

    void NandSDWorker::get_sd_app_meta_async(ESTitleId32 titleId, u8* thumbnailBuf, SDAppMetaEntry* metaEntries) {
        myWork->curTitleId = titleId;
        myWork->paramA = thumbnailBuf;
        myWork->paramB = metaEntries;
        send_work(MESSAGE_GET_SD_APP_META);
    }

    void NandSDWorker::update_sd_app_location_async(ESTitleId32* titleIds) {
        myWork->paramA = titleIds;
        send_work(MESSAGE_UPDATE_SD_APP_LOCATION);
    }

    void NandSDWorker::read_sd_app_location_async(ESTitleId32* titleIds) {
        myWork->paramA = titleIds;
        send_work(MESSAGE_READ_SD_APP_LOCATION);
    }

    void NandSDWorker::check_for_sd_app_to_nand_async(ESTitleId titleId, AppBlocksInfo* usedBlocks, AppBlocksInfo* freeBlocks) {
        myWork->curTitleId = titleId;
        myWork->paramA = usedBlocks;
        myWork->paramB = freeBlocks;
        send_work(MESSAGE_CHECK_FOR_SD_APP_TO_NAND);
    }

    void NandSDWorker::check_backup_fits_async(TitleIdList* newTitles, TitleIdList* replacingTitles) {
        myWork->paramA = newTitles;
        myWork->paramB = replacingTitles;
        send_work(MESSAGE_CHECK_BACKUP_FITS);
    }

    void NandSDWorker::iplNandSD_81348EA8(void* ptrA, void* ptrB, void* ptrC) {
        myWork->paramA = ptrA;
        myWork->paramB = ptrB;
        myWork->paramC = ptrC;
        send_work(MESSAGE_UNK_49);
    }

    void NandSDWorker::get_nand_save_size_async(ESTitleId titleId) {
        myWork->curTitleId = titleId;
        send_work(MESSAGE_GET_NAND_SAVE_SIZE);
    }

    void NandSDWorker::get_nand_app_size_async(ESTitleId titleId) {
        myWork->curTitleId = titleId;
        send_work(MESSAGE_GET_NAND_APP_SIZE);
    }

    void NandSDWorker::delete_nand_save_async(ESTitleId titleId) {
        myWork->curTitleId = titleId;
        send_work(MESSAGE_DEL_NAND_SAVE);
    }

    void NandSDWorker::get_sd_save_size_async(ESTitleId32 titleId) {
        myWork->curTitleId = titleId;
        send_work(MESSAGE_GET_SD_SAVE_SIZE);
    }

    void NandSDWorker::get_sd_app_size_async(ESTitleId32 titleId) {
        myWork->curTitleId = titleId;
        send_work(MESSAGE_GET_SD_APP_SIZE);
    }

    void NandSDWorker::delete_sd_save_async(ESTitleId32 titleId) {
        myWork->curTitleId = titleId;
        send_work(MESSAGE_DEL_SD_SAVE);
    }

    void NandSDWorker::delete_sd_app_async(ESTitleId32 titleId) {
        myWork->curTitleId = titleId;
        send_work(MESSAGE_DEL_SD_APP);
    }

    void NandSDWorker::initialize_nand_async() {
        send_work(MESSAGE_INITIALIZE_NAND);
    }

    void NandSDWorker::get_nand_user_free_area_async() {
        send_work(MESSAGE_GET_NAND_USER_FREE_AREA);
    }

    void NandSDWorker::copy_nand_save_to_sd_async(ESTitleId titleId) {
        myWork->curTitleId = titleId;
        send_work(MESSAGE_COPY_NAND_SAVE_TO_SD);
    }

    void NandSDWorker::copy_sd_save_to_nand_async(ESTitleId32 titleId) {
        myWork->curTitleId = titleId;
        send_work(MESSAGE_COPY_SD_SAVE_TO_NAND);
    }

    void NandSDWorker::format_sd_async() {
        send_work(MESSAGE_FORMAT_SD);
    }

    void NandSDWorker::get_sd_free_area_async(ESTitleId* titleIdOut /*?*/) {
        myWork->paramA = titleIdOut;
        send_work(MESSAGE_GET_SD_FREE_AREA);
    }

    void NandSDWorker::list_nand_app_async(ESTitleId* titleIdOut) {
        myWork->paramA = titleIdOut;
        send_work(MESSAGE_LIST_NAND_APP);
    }

    void NandSDWorker::list_nand_apps_usage_async(void* ptrA, void* ptrB) {
        myWork->paramA = ptrA;
        myWork->paramB = ptrB;
        send_work(MESSAGE_LIST_NAND_APPS_USAGE);
    }

    void NandSDWorker::get_nand_app_thumbnail_async(ESTitleId titleId, void* thumbnailBuf, channel::SChanMgrMetaHeader* file) {
        myWork->curTitleId = titleId;
        myWork->paramA = thumbnailBuf;
        myWork->paramB = file;
        send_work(MESSAGE_GET_NAND_APP_THUMBNAIL);
    }

    void NandSDWorker::delete_nand_app_async(ESTitleId titleId, bool hidden) {
        myWork->curTitleId = titleId;
        if (hidden) {
            send_work(MESSAGE_DEL_NAND_APP_HIDDEN);
        } else {
            send_work(MESSAGE_DEL_NAND_APP);
        }
    }

    void NandSDWorker::copy_nand_app_to_sd_async(ESTitleId titleId) {
        myWork->curTitleId = titleId;
        s_completion_pct = 0;
        send_work(MESSAGE_COPY_NAND_APP_TO_SD);
    }

    void NandSDWorker::copy_sd_app_to_nand_async(ESTitleId32 titleId, bool hidden) {
        myWork->curTitleId = titleId;
        s_completion_pct = 0;
        if (hidden) {
            send_work(MESSAGE_COPY_SD_APP_TO_NAND);
        } else {
            send_work(MESSAGE_COPY_SD_APP_TO_NAND_HIDDEN);
        }
    }

    void NandSDWorker::nocopy_exist_nand_save_async(ESTitleId titleId) {
        myWork->curTitleId = titleId;
        send_work(MESSAGE_NOCOPY_EXIST_NAND_SAVE);
    }

    void NandSDWorker::nand_save_exist_async(ESTitleId titleId) {
        myWork->curTitleId = titleId;
        send_work(MESSAGE_NAND_SAVE_EXIST);
    }

    void NandSDWorker::nand_save_exist_lo_async(ESTitleId32 titleId) {
        myWork->curTitleId = titleId;
        send_work(MESSAGE_NAND_SAVE_EXIST_LO);
    }

    void NandSDWorker::nand_app_exist_async(ESTitleId titleId) {
        myWork->curTitleId = titleId;
        send_work(MESSAGE_NAND_APP_EXIST);
    }

    void NandSDWorker::both_app_exist_async(ESTitleId32 titleId) {
        myWork->curTitleId = titleId;
        send_work(MESSAGE_BOTH_APP_EXIST);
    }

    void NandSDWorker::sd_save_exist_async(ESTitleId32 titleId) {
        myWork->curTitleId = titleId;
        send_work(MESSAGE_SD_SAVE_EXIST);
    }

    void NandSDWorker::sd_app_exist_async(ESTitleId32 titleId) {
        myWork->curTitleId = titleId;
        send_work(MESSAGE_SD_APP_EXIST);
    }

    void NandSDWorker::get_nand_save_perms_async(ESTitleId titleId) {
        myWork->curTitleId = titleId;
        send_work(MESSAGE_GET_NAND_SAVE_PERMS);
    }

    void NandSDWorker::get_sd_save_perms_async(ESTitleId32 titleId) {
        myWork->curTitleId = titleId;
        send_work(MESSAGE_GET_SD_SAVE_PERMS);
    }

    void NandSDWorker::move_nand_app_to_sd_async(ESTitleId titleId) {
        myWork->curTitleId = titleId;
        send_work(MESSAGE_MOVE_NAND_APP_TO_SD);
    }

    void NandSDWorker::move_sd_app_to_nand_async(ESTitleId32 titleId) {
        myWork->curTitleId = titleId;
        send_work(MESSAGE_MOVE_SD_APP_TO_NAND);
    }

    void NandSDWorker::move_nand_save_to_sd_async(ESTitleId titleId) {
        myWork->curTitleId = titleId;
        send_work(MESSAGE_MOVE_NAND_SAVE_TO_SD);
    }

    void NandSDWorker::move_sd_save_to_nand_async(ESTitleId32 titleId) {
        myWork->curTitleId = titleId;
        send_work(MESSAGE_MOVE_SD_SAVE_TO_NAND);
    }

    void NandSDWorker::change_nand_app_count_async(s32 delta) {
        myWork->paramA = (void*)delta;
        send_work(MESSAGE_CHANGE_NAND_APP_COUNT);
    }

    void NandSDWorker::check_sd_title_restorable_async(ESTitleId32 titleId) {
        myWork->curTitleId = titleId;
        send_work(MESSAGE_CHECK_SD_TITLE_RESTORABLE);
    }

    bool NandSDWorker::is_disk_or_user_nand_app(ESTitleId titleId) {
        u32 titleType = ES_TITLE_TYPE_NOMASK(titleId);  // This is here so it doesn't inline. Idek anymore.
        return (u32)ES_TITLE_TYPE_NOMASK(titleId) == TITLE_TYPE_DISC || is_user_nand_app(titleId);
    }

    bool NandSDWorker::is_user_nand_app(ESTitleId titleId) {
#define USER_APP_TYPE_MASK                                                                                                                           \
    ((1 << TITLE_TYPE_LO(TITLE_TYPE_DISC)) | (1 << TITLE_TYPE_LO(TITLE_TYPE_CHANNEL)) | (1 << TITLE_TYPE_LO(TITLE_TYPE_DISC_CHANNEL)) |              \
     (1 << TITLE_TYPE_LO(TITLE_TYPE_UNK6)) | (1 << TITLE_TYPE_LO(TITLE_TYPE_UNK7)))

        bool valid = false;
        bool matchUserAppType = false;

        /*
        Check if the title type is either:
          0x00010000
          0x00010001
          0x00010004
          0x00010006
          0x00010007
          */
        u32 titleSubtype = (u32)ES_TITLE_TYPE_NOMASK(titleId) - TITLE_TYPE_DISC;
        if (titleSubtype <= TITLE_TYPE_LO(TITLE_TYPE_UNK7) && ((1 << titleSubtype) & USER_APP_TYPE_MASK)) {
            matchUserAppType = true;
        }

        if (matchUserAppType && !is_data_only_title(titleId)) {
            valid = true;
        }

        return valid;

#undef USER_APP_TYPE_MASK
    }

    /* Data only titles are normally for game save data. */
    bool NandSDWorker::is_data_only_title(ESTitleId titleId) {
        bool isGood = false;
        int codeLet = ((u32)ES_TITLE_CODE(titleId) >> 24);
        // Check if last letter is a valid ASCII character
        return ((u32)codeLet >= ' ' && (u32)codeLet <= '~') && !('A' <= codeLet && codeLet <= 'Z') && !('0' <= codeLet && codeLet <= '9');
    }

    bool NandSDWorker::is_available_data_only_titleidlo(ESTitleId32 titleId) {
        return (titleId & 0xFF000000) && (titleId & 0x00FF0000) && (titleId & 0x0000FF00) && (titleId & 0x000000FF) && is_data_only_title(titleId);
    }

    void get_nand_data_only_title_save_path(ESTitleId titleId, char* outStr) {
        snprintf(outStr, NAND_MAX_PATH, "/title/%08x/%08x/data", (u32)ES_TITLE_TYPE_NOMASK(titleId), (u32)ES_TITLE_CODE(titleId));
    }

    void get_nand_title_save_path(ESTitleId titleId, char* outStr) {
        snprintf(outStr, NAND_MAX_PATH, "/title/%08x/%08x", (u32)ES_TITLE_TYPE_NOMASK(titleId), (u32)ES_TITLE_CODE(titleId));
    }

    void get_nand_save_path(ESTitleId titleId, char* outStr) {
        if (NandSDWorker::is_data_only_title(titleId)) {
            get_nand_data_only_title_save_path(titleId, outStr);
        } else {
            get_nand_title_save_path(titleId, outStr);
        }
    }

    void get_nand_app_path(ESTitleId titleId, char* outStr) {
        snprintf(outStr, NAND_MAX_PATH, "/title/%08x/%08x/content", (u32)ES_TITLE_TYPE_NOMASK(titleId), (u32)ES_TITLE_CODE(titleId));
    }

    void get_nand_meta_file_path(ESTitleId titleId, char* outStr) {
        snprintf(outStr, NAND_MAX_PATH, "/meta/%08x/%08x/title.met", (u32)ES_TITLE_TYPE_NOMASK(titleId), (u32)ES_TITLE_CODE(titleId));
    }

    void get_nand_meta_dir_path(ESTitleId titleId, char* outStr) {
        snprintf(outStr, NAND_MAX_PATH, "/meta/%08x/%08x", (u32)ES_TITLE_TYPE_NOMASK(titleId), (u32)ES_TITLE_CODE(titleId));
    }

    void NandSDWorker::get_sd_save_path(ESTitleId titleId, char* outStr) {
        ESTitleId32 titleCode = ES_TITLE_CODE(titleId);
        if (is_data_only_title(titleId)) {
            snprintf(outStr, NAND_MAX_PATH, "/private/wii/title/%08x/data.bin", titleCode);
        } else {
            snprintf(outStr, NAND_MAX_PATH, "/private/wii/title/%c%c%c%c/data.bin", (u8)(titleCode >> 0x18), (u8)(titleCode >> 0x10),
                     (u8)(titleCode >> 0x08), (u8)titleCode);
        }
    }

    void NandSDWorker::get_sd_app_path(ESTitleId titleId, char* outStr) {
        ESTitleId32 titleCode = ES_TITLE_CODE(titleId);
        snprintf(outStr, NAND_MAX_PATH, "/private/wii/title/%c%c%c%c/content.bin", (u8)(titleCode >> 0x18), (u8)(titleCode >> 0x10),
                 (u8)(titleCode >> 0x08), (u8)(titleCode >> 0x00));
    }

    ESTitleId32 NandSDWorker::gamecode_to_titleid_lo(const char* gamecode) {
        return (gamecode[0] << 0x18) + (gamecode[1] << 0x10) + (gamecode[2] << 0x08) + (gamecode[3] << 0x00);
    }

    void* NandSDWorker::thread_main(void* work) {
        OSInitFastCast();

        NandSDWorker* nandSdWorker = reinterpret_cast<NandSDWorker*>(work);
        return nandSdWorker->run();
    }

    int NandSDWorker::delete_meta_file(ESTitleId titleId) {
        char str[NAND_MAX_PATH];

        get_nand_meta_dir_path(titleId, str);

        // Attempt to delete
        s32 err = nand::wrapper::Delete(str);
        if (check_nand_corrupt(err, NULL)) {
            return RESULT_NAND_CORRUPT;
        }

        // Error code report
        if (err == NAND_RESULT_OK) {
            OSReport("NandSDWorker: delete [%s]\n", str);
        } else if (err == NAND_RESULT_NOEXISTS) {
            OSReport("NandSDWorker: [%s] no exists\n", str);
        } else {
            OSReport("NandSDWorker: NANDDelete %s failed [%d]\n", str, err);
            return RESULT_FATAL_SD_ERROR;
        }

        return RESULT_OK;
    }

    void* NandSDWorker::run() {
        FAError faErr;

        bool terminated = false;

        while (true) {
            switch (wait_work()) {
                case MESSAGE_TERMINATE: {
                    if (s_sd_state != SD_STATE_INITIAL) {
                        faErr = FAUnmount(myWork->driveTable.drive, TRUE);
                        OSReport("NandSDWorker: unmount sd [%d]\n", faErr);

                        faErr = FADetach(myWork->driveTable.drive);
                        OSReport("NandSDWorker: detach sd [%d]\n", faErr);
                    }

                    MEMDestroyExpHeap(myWork->mainHeap);

                    if (myWork->saveCacheHeap != NULL) {
                        MEMDestroyUnitHeap(myWork->saveCacheHeap);
                    }
                    if (myWork->appCacheHeap != NULL) {
                        MEMDestroyUnitHeap(myWork->appCacheHeap);
                    }
                    if (myWork->unkHeap != NULL) {
                        MEMDestroyExpHeap(myWork->unkHeap);
                    }

                    terminated = true;

                    break;
                }
                case MESSAGE_STARTUP: {
                    do_startup();
                    break;
                }
                case MESSAGE_MOUNT_SD: {
                    do_mount_sd();
                    if (s_sd_state == SD_STATE_BROKEN || s_sd_state == SD_STATE_ILLEGAL) {
                        myWork->prevAsyncResult = myWork->asyncResult;
                    } else {
                        myWork->prevAsyncResult = RESULT_WORKING;
                    }
                    break;
                }
                case MESSAGE_LIST_NAND_SAVE: {
                    do_list_nand_save();
                    break;
                }
                case MESSAGE_GET_NAND_SAVE_BANNER: {
                    WIISaveBannerFile* bannerTmp = (WIISaveBannerFile*)MEMAllocFromExpHeapEx(myWork->mainHeap, sizeof(WIISaveBannerFile), 32);
                    myWork->asyncResult = get_nand_save_banner(myWork->curTitleId, bannerTmp, NULL);
                    if (myWork->asyncResult == RESULT_OK) {
                        memcpy(myWork->paramA, bannerTmp, sizeof(WIISaveBannerFile));
                    }
                    MEMFreeToExpHeap(myWork->mainHeap, bannerTmp);
                    break;
                }
                case MESSAGE_LIST_SD_SAVE: {
                    myWork->asyncResult = get_sd_save_list((ESTitleId32*)myWork->paramA);
                    break;
                }
                case MESSAGE_LIST_SD_APP: {
                    myWork->asyncResult = get_sd_app_list((ESTitleId32*)myWork->paramA);
                    break;
                }
                case MESSAGE_GET_SD_SAVE_BANNER: {
                    do_get_sd_save_banner();
                    break;
                }
                case MESSAGE_GET_SD_APP_THUMBNAIL: {
                    do_get_sd_app_thumbnail();
                    break;
                }
                case MESSAGE_GET_SD_APP_META: {
                    do_get_sd_app_meta();
                    break;
                }
                case MESSAGE_UPDATE_SD_APP_LOCATION: {
                    do_update_sd_app_location();
                    break;
                }
                case MESSAGE_READ_SD_APP_LOCATION: {
                    do_read_sd_app_location();
                    break;
                }
                case MESSAGE_CHECK_FOR_SD_APP_TO_NAND: {
                    do_check_for_sd_app_to_nand();
                    break;
                }
                case MESSAGE_CHECK_BACKUP_FITS: {
                    check_backup_fits();
                    break;
                }
                case MESSAGE_UNK_49: {
                    do_unk_8134C838();
                    break;
                }
                case MESSAGE_GET_NAND_SAVE_SIZE: {
                    do_get_nand_save_size();
                    break;
                }
                case MESSAGE_DEL_NAND_SAVE: {
                    // If the title only has the "data" directory, delete the whole title
                    if (is_data_only_title(myWork->curTitleId)) {
                        ESError err = utility::ESMisc::DeleteTitle(System::getMem2Sys(), myWork->curTitleId);
                        if (err != ES_ERR_OK) {
                            OSReport("NandSDWorker: ESMisc::DeleteTitle failed [%d]\n", err);
                            myWork->asyncResult = RESULT_FATAL_SD_ERROR;
                        } else {
                            myWork->asyncResult = RESULT_OK;
                        }
                        myWork->asyncResult = delete_meta_file(myWork->curTitleId);
                        // Otherwise, delete the "data" directory contents.
                    } else {
                        myWork->asyncResult = recursion_nand_save(myWork->curTitleId, RECURSIVE_DELETE, NULL, 0);
                        delete_download_task(myWork->curTitleId);
                    }

                    if (myWork->asyncResult == RESULT_OK) {
                        myWork->nandSaveNum--;
                        delete_save_cache(&myWork->nandSaveList, myWork->curTitleId);
                    }
                    break;
                }
                case MESSAGE_GET_SD_SAVE_SIZE: {
                    myWork->asyncResult = get_sd_save_size(myWork->curTitleId);
                    break;
                }
                case MESSAGE_DEL_SD_SAVE: {
                    do_delete_sd_save();
                    break;
                }
                case MESSAGE_DEL_SD_APP: {
                    do_delete_sd_app();
                    break;
                }
                case MESSAGE_INITIALIZE_NAND: {
                    do_initialize_nand();
                    break;
                }
                case MESSAGE_GET_NAND_USER_FREE_AREA: {
                    do_get_nand_user_free_area();
                    if (myWork->asyncResult < 0) {
                        OSReport("NandSDWorker: nand user area limit over. return 0.\n");
                        myWork->asyncResult = 0;
                    }
                    break;
                }
                case MESSAGE_COPY_NAND_SAVE_TO_SD: {
                    do_copy_nand_save_to_sd();
                    break;
                }
                case MESSAGE_COPY_SD_SAVE_TO_NAND: {
                    do_copy_sd_save_to_nand();
                    break;
                }
                case MESSAGE_FORMAT_SD: {
                    do_format_sd();
                    break;
                }
                case MESSAGE_GET_SD_FREE_AREA: {
                    u64* sizeOutPtr = (u64*)myWork->paramA;
                    s64 size = get_sd_free_area();
                    if (size >= 0) {
                        myWork->asyncResult = RESULT_OK;
                        *sizeOutPtr = size;
                    } else {
                        myWork->asyncResult = RESULT_FATAL_SD_ERROR;
                        *sizeOutPtr = 0;
                    }
                    break;
                }
                case MESSAGE_DEL_NAND_APP: {
                    // Delete NAND app...
                    myWork->asyncResult = delete_nand_app_content(myWork->curTitleId);
                    if (myWork->asyncResult == RESULT_OK) {
                        myWork->nandAppNum--;
                        // ...and update the NAND app count for the user.
                        change_nand_app_count(-1);
                        delete_app_cache(&myWork->nandAppList, myWork->curTitleId);
                    }
                    break;
                }
                case MESSAGE_DEL_NAND_APP_HIDDEN: {
                    // Delete NAND app...
                    myWork->asyncResult = delete_nand_app_content(myWork->curTitleId);
                    if (myWork->asyncResult == RESULT_OK) {
                        myWork->nandAppNum--;
                        // ...and don't update the NAND app count. (secret!!!)
                        delete_app_cache(&myWork->nandAppList, myWork->curTitleId);
                    }
                    break;
                }
                case MESSAGE_COPY_NAND_APP_TO_SD: {
                    do_copy_nand_app_to_sd();
                    break;
                }
                case MESSAGE_COPY_SD_APP_TO_NAND_HIDDEN: {
                    do_copy_sd_app_to_nand(false);
                    break;
                }
                case MESSAGE_COPY_SD_APP_TO_NAND: {
                    do_copy_sd_app_to_nand(true);
                    break;
                }
                case MESSAGE_LIST_NAND_APP: {
                    do_list_nand_app();
                    break;
                }
                case MESSAGE_LIST_NAND_APPS_USAGE: {
                    do_list_nand_apps_usage();
                    break;
                }
                case MESSAGE_GET_NAND_APP_THUMBNAIL: {
                    myWork->asyncResult =
                        get_nand_app_thumbnail(myWork->curTitleId, (u8*)myWork->paramA, (channel::SChanMgrMetaHeader*)myWork->paramB);
                    break;
                }
                case MESSAGE_GET_SD_APP_SIZE: {
                    myWork->asyncResult = get_sd_app_size(myWork->curTitleId);
                    break;
                }
                case MESSAGE_GET_NAND_APP_SIZE: {
                    do_get_nand_app_size();
                    break;
                }
                case MESSAGE_NOCOPY_EXIST_NAND_SAVE: {
                    myWork->asyncResult = item_exist_nand_save_folder(myWork->curTitleId, c_nocopy_folder_name);
                    break;
                }
                case MESSAGE_NAND_SAVE_EXIST: {
                    myWork->asyncResult = check_nand_save_banner_exist(myWork->curTitleId);
                    change_uid(SYSMENU_TITLE_ID);
                    break;
                }
                case MESSAGE_NAND_SAVE_EXIST_LO: {
                    myWork->asyncResult = check_nand_save_exist_lo(myWork->curTitleId);
                    change_uid(SYSMENU_TITLE_ID);
                    break;
                }
                case MESSAGE_NAND_APP_EXIST: {
                    myWork->asyncResult = nand_app_exist(myWork->curTitleId);
                    break;
                }
                case MESSAGE_BOTH_APP_EXIST: {
                    myWork->asyncResult = both_app_exist(myWork->curTitleId);
                    break;
                }
                case MESSAGE_SD_SAVE_EXIST: {
                    char savePath[NAND_MAX_PATH];
                    get_sd_save_path(myWork->curTitleId, savePath);
                    myWork->asyncResult = sd_file_exist(savePath, sizeof(SaveCacheEntry));
                    break;
                }
                case MESSAGE_SD_APP_EXIST: {
                    char savePath[NAND_MAX_PATH];
                    get_sd_app_path(myWork->curTitleId, savePath);
                    myWork->asyncResult = sd_file_exist(savePath, sizeof(SDAppBanner));
                    break;
                }
                case MESSAGE_GET_NAND_SAVE_PERMS: {
                    myWork->asyncResult = get_nand_save_perms(myWork->curTitleId);
                    break;
                }
                case MESSAGE_GET_SD_SAVE_PERMS: {
                    myWork->asyncResult = get_sd_save_perms(myWork->curTitleId);
                    break;
                }
                case MESSAGE_MOVE_NAND_APP_TO_SD: {
                    do_move_nand_app_to_sd();
                    break;
                }
                case MESSAGE_MOVE_SD_APP_TO_NAND: {
                    do_move_sd_app_to_nand();
                    break;
                }
                case MESSAGE_MOVE_NAND_SAVE_TO_SD: {
                    do_move_nand_save_to_sd();
                    break;
                }
                case MESSAGE_MOVE_SD_SAVE_TO_NAND: {
                    do_move_sd_save_to_nand();
                    break;
                }
                case MESSAGE_CHANGE_NAND_APP_COUNT: {
                    change_nand_app_count((s32)myWork->paramA);
                    break;
                }
                case MESSAGE_CHECK_SD_TITLE_RESTORABLE: {
                    myWork->asyncResult = check_sd_title_restorable(myWork->curTitleId);
                    break;
                }
                default: {
                    break;
                }
            }

            if (*(u32*)myWork->thread.stackEnd != 0xDEADBABE) {
                OSHalt("NandSDWorker: stack over!\n", 2259);
            }

            if (terminated) {
                break;
            }

            set_state(STATE_IDLE);
        }

        myWork = NULL;
        s_sd_state = SD_STATE_INITIAL;

        return this;
    }

    void NandSDWorker::do_startup() {
        u32 numTitleIds = 0;
        u32 numNandSaves, numNandApps;

        s32 err;

        ESTitleId* titleIds;
        u8* buf = NULL;

        // Get title ID count
        myWork->asyncResult = RESULT_OK;
        ES_ListTitlesOnCard(NULL, &numTitleIds);

        // Get title ID list
        titleIds = (ESTitleId*)MEMAllocFromExpHeapEx(myWork->mainHeap, numTitleIds * sizeof(ESTitleId), 32);
        ES_ListTitlesOnCard(titleIds, &numTitleIds);

        // Delete any duplicates possibly found
        if (clean_duplicated_nand_app(titleIds, numTitleIds) == RESULT_NAND_CORRUPT) {
            myWork->asyncResult = RESULT_NAND_CORRUPT;
            goto clean_up;
        }

        // Delete update partition titles
        numNandSaves = 0;
        numNandApps = 0;
        if (myWork->appCacheHeap != NULL) {
            int result = clean_partial_nand_app(titleIds, numTitleIds, &numNandApps);
            if (result == RESULT_NAND_CORRUPT) {
                myWork->asyncResult = RESULT_NAND_CORRUPT;
                goto clean_up;
            }
            if (result == RESULT_UNK_18) {
                myWork->asyncResult = RESULT_UNK_18;
                goto clean_up;
            }
            myWork->nandAppNum = numNandApps;
            OSReport("NandSDWorker: nand app num = %d\n", myWork->nandAppNum);
        }

        // Delete "partial Save Data"
        if (myWork->saveCacheHeap != NULL) {
            int result = clean_partial_nand_save(titleIds, numTitleIds, &numNandSaves);
            if (result == RESULT_NAND_CORRUPT) {
                myWork->asyncResult = RESULT_NAND_CORRUPT;
                goto clean_up;
            }
            myWork->nandSaveNum = numNandSaves;
            OSReport("NandSDWorker: nand save num = %d\n", myWork->nandSaveNum);
        }

        if (myWork->saveCacheHeap == NULL) {
            goto clean_up;
        }

        if (nand_get_length(c_transferid_path) != (int)OSRoundUp32B(NCD_MAC_ADDRESS_LENGTH)) {  // If transfer.id is invalid
            // Delete old one
            err = nand::wrapper::PrivateDelete(c_transferid_path);
            if (err != NAND_RESULT_OK) {
                OSReport("NandSDWorker: NANDPrivateDelete %s failed.[%d]\n", c_transferid_path, err);
                if (err == NAND_RESULT_CORRUPT) {
                    myWork->asyncResult = RESULT_NAND_CORRUPT;
                    goto clean_up;
                }
            }

            u8 type;
            err = nand::wrapper::PrivateGetType(c_succession_path, &type);
            if (err != NAND_RESULT_OK || type != NAND_TYPE_DIR) {
                // Is "succession" a file?
                if (err == NAND_RESULT_OK && type != NAND_TYPE_DIR) {
                    // Delete file. It's supposed to be a directory.
                    err = nand::wrapper::PrivateDelete(c_succession_path);
                    if (err != NAND_RESULT_OK) {
                        OSReport("NandSDWorker: NANDPrivateDelete %s failed.[%d]\n", c_succession_path, err);
                        if (err == NAND_RESULT_CORRUPT) {
                            myWork->asyncResult = RESULT_NAND_CORRUPT;
                            goto clean_up;
                        }
                    }
                } else {
                    if (check_nand_free_area(1, 0, 0, 0) != RESULT_OK) {
                        OSReport("NandSDWorker: cannot make %s because of system area shortage.\n", c_succession_path);
                        goto clean_up;
                    }
                }

                // Recreate directory
                err = nand::wrapper::PrivateCreateDir(c_succession_path, NAND_PERM_ALL_RW, 0);
                if (err != NAND_RESULT_OK) {
                    OSReport("NandSDWorker: NANDPrivateCreateDir %s failed.[%d]\n", c_succession_path, err);
                    if (err == NAND_RESULT_CORRUPT) {
                        myWork->asyncResult = RESULT_NAND_CORRUPT;
                    }
                    goto clean_up;
                }
            }

            if (check_nand_free_area(1, 1, 0, 0) != RESULT_OK) {
                OSReport("NandSDWorker: cannot make %s because of system area shortage.\n", c_transferid_path);
                goto clean_up;
            }

            // Recreate transfer.id
            err = nand::wrapper::PrivateCreate(c_transferid_path, NAND_PERM_ALL_RW, 0);
            if (err != NAND_RESULT_OK) {
                OSReport("NandSDWorker: NANDPrivateCreate %s failed.[%d]\n", c_transferid_path, err);
                if (err == NAND_RESULT_CORRUPT) {
                    myWork->asyncResult = RESULT_NAND_CORRUPT;
                }
                goto clean_up;
            }

            // Let's write some stuff to the file...
            NANDFileInfo fileInfo;
            err = nand::wrapper::PrivateOpen(c_transferid_path, &fileInfo, NAND_ACCESS_WRITE);
            if (err != NAND_RESULT_OK) {
                OSReport("NandSDWorker: NANDPrivateOpen %s failed.[%d]\n", c_transferid_path, err);
                goto clean_up;
            }

            // Let's write the MAC address...
            buf = (u8*)MEMAllocFromExpHeapEx(myWork->mainHeap, OSRoundUp32B(NCD_MAC_ADDRESS_LENGTH), 32);
            memset(buf, 0, OSRoundUp32B(NCD_MAC_ADDRESS_LENGTH));
            NETGetWirelessMacAddress(buf);

            // and that's it.

            // Write the buffer to the file!
            err = nand::wrapper::Write(&fileInfo, buf, OSRoundUp32B(NCD_MAC_ADDRESS_LENGTH));
            if (err != (s32)OSRoundUp32B(NCD_MAC_ADDRESS_LENGTH)) {
                OSReport("NandSDWorker: NANDWrite %s failed.[%d]\n", c_transferid_path, err);
                if (err == NAND_RESULT_CORRUPT) {
                    myWork->asyncResult = RESULT_NAND_CORRUPT;
                }
                nand::wrapper::Close(&fileInfo);
                goto clean_up;
            }

            // We're done with the file now. Close...
            err = nand::wrapper::Close(&fileInfo);
            if (err != NAND_RESULT_OK) {
                OSReport("NandSDWorker: NANDClose %s failed.[%d]\n", c_transferid_path, err);
                if (err == NAND_RESULT_CORRUPT) {
                    myWork->asyncResult = RESULT_NAND_CORRUPT;
                }
                goto clean_up;
            }
            OSReport("NandSDWorker: %s created.[%02x%02x%02x%02x%02x%02x]\n", c_transferid_path, buf[0], buf[1], buf[2], buf[3], buf[4], buf[5]);
        } else {
            // transfer.id is valid. Do nothing.
            OSReport("NandSDWorker: %s already exist.\n", c_transferid_path);
            goto clean_up;
        }

    clean_up:
        change_uid(SYSMENU_TITLE_ID);
        if (titleIds != NULL) {
            MEMFreeToExpHeap(myWork->mainHeap, titleIds);
        }
        if (buf != NULL) {
            MEMFreeToExpHeap(myWork->mainHeap, buf);
        }
    }

    int NandSDWorker::clean_duplicated_nand_app(ESTitleId* titleIds, u32 titleIdCount) {
        int result;
        OSReport("NandSDWorker: cleaning duplicated nand app...\n");
        for (int i = 0; i < titleIdCount; i++) {
            ESTitleId titleIdA = titleIds[i];
            if (is_user_nand_app(titleIdA) && is_all_region(titleIdA) && nand_app_exist_ex(titleIdA) != EXISTENCE_NOEXIST) {
                for (int j = 0; j < titleIdCount; j++) {
                    ESTitleId titleIdB = titleIds[j];
                    if (titleIdA != titleIdB && is_same_title(titleIdA, titleIdB) && nand_app_exist_ex(titleIds[j]) != EXISTENCE_NOEXIST) {
                        // Goodbye ticket
                        result = delete_ticket(titleIdA);
                        if (result != RESULT_OK) {
                            OSReport("NandSDWorker: delete ticket 0x%016llx failed.[%d]\n", titleIdA, result);
                        }

                        // Goodbye content (.app files)
                        result = delete_nand_app_content(titleIdA);
                        if (result == RESULT_NAND_CORRUPT) {
                            goto ret;
                        }
                        if (result != RESULT_OK) {
                            OSReport("NandSDWorker: delete title 0x%016llx content failed.[%d]\n", titleIdA, result);
                        }

                        // Goodbye savedata
                        result = recursion_nand_save(titleIdA, RECURSIVE_DELETE, NULL, 0);
                        if (result == RESULT_NAND_CORRUPT) {
                            goto ret;
                        }
                        if (result != RESULT_OK) {
                            OSReport("NandSDWorker: delete title 0x%016llx content failed.[%d]\n", titleIdA, result);
                        }

                        OSReport("NandSDWorker: delete title 0x%016llx duplicated by 0x%016llx.\n", titleIdA, titleIds[j]);
                        delete_download_task(titleIdA);
                        titleIds[i] = 0;

                        // TMD is not deleted however.

                        break;
                    }
                }
            }
        }
        result = RESULT_OK;
    ret:
        return result;
    }

    int NandSDWorker::clean_partial_nand_app(ESTitleId* titleIds, u32 titleIdCount, u32* numNandAppsOut) {
        int result;
        OSReport("NandSDWorker: cleaning partial nand app...\n");
        for (int i = 0; i < titleIdCount; i++) {
            if (unk_0x04 != false) {
                return RESULT_UNK_18;
            }

            // The titles that we are going to delete are:
            // Update partition titles.
            if (is_user_nand_app(titleIds[i]) && (((u32)ES_TITLE_CODE(titleIds[i]) & 0xFFFFFF00) != ES_TITLE_CODE(TITLE_UPDATE_PART))) {
                int result2 = nand_app_exist_ex(titleIds[i]);
                if (result2 == EXISTENCE_NOEXIST) {
                    // If we can actually delete the title.
                    if (utility::ESMisc::CheckSafeDeleteTitle(System::getMem2Sys(), titleIds[i]) > 0) {
                        ESError err = utility::ESMisc::DeleteTitle(System::getMem2Sys(), titleIds[i]);
                        if (err != ES_ERR_OK) {
                            OSReport("NandSDWorker: delete title 0x%016llx failed.[%d]\n", titleIds[i], err);
                        } else {
                            OSReport("NandSDWorker: clean empty title %016llx\n", titleIds[i]);
                        }
                    }
                } else if (result2 == EXISTENCE_INCOMPLETE) {
                    result = delete_nand_app_content(titleIds[i]);
                    if (result == RESULT_NAND_CORRUPT) {
                        goto ret;
                    }
                    if (result != RESULT_OK) {
                        OSReport("NandSDWorker: delete title 0x%016llx content failed.[%d]\n", titleIds[i], result);
                    }
                } else if (result2 == EXISTENCE_COMPLETE) {
                    (*numNandAppsOut)++;
                }
            }
        }
        result = RESULT_OK;
    ret:
        return result;
    }

    int NandSDWorker::clean_partial_nand_save(ESTitleId* titleIds, u32 titleIdCount, u32* numNandSavesOut) {
        int result;
        OSReport("NandSDWorker: cleaning partial nand save...\n");
        for (int i = 0; i < titleIdCount; i++) {
            if (is_disk_or_user_nand_app(titleIds[i])) {
                u32 dirEntryCnt = 0;
                if (change_uid(titleIds[i])) {
                    char path[NAND_MAX_PATH + 1];

                    get_nand_data_only_title_save_path(titleIds[i], path);
                    if (nand::wrapper::ReadDir(path, NULL, &dirEntryCnt) == NAND_RESULT_OK && dirEntryCnt != 0) {
                        if (check_nand_save_banner_exist(titleIds[i])) {
                            (*numNandSavesOut)++;
                        } else {
                            strncat(path, "/noerase", NAND_MAX_PATH);
                            u8 fileType;
                            if (nand::wrapper::GetType(path, &fileType) == NAND_RESULT_OK && fileType == NAND_TYPE_DIR) {
                                OSReport("NandSDWorker: ignore nand save 0x%016llx becase of noerase\n", titleIds[i]);
                            } else {
                                result = recursion_nand_save(titleIds[i], RECURSIVE_DELETE, NULL, 0);
                                if (result == RESULT_NAND_CORRUPT) {
                                    return RESULT_NAND_CORRUPT;
                                }
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
                    ESError err = utility::ESMisc::DeleteTitle(System::getMem2Sys(), titleIds[i]);
                    if (err != ES_ERR_OK) {
                        OSReport("NandSDWorker: ESMisc::DeleteTitle failed [%d]\n", err);
                        return RESULT_FATAL_SD_ERROR;
                    }
                    OSReport("NandSDWorker: clean data title %016llx\n", titleIds[i]);
                }
            }
        }
        result = RESULT_OK;
    ret:
        return result;
    }

    void NandSDWorker::do_mount_sd() {
        int result;

        switch (s_sd_state) {
            case SD_STATE_INITIAL: {
                if (FAAttach(FA_DEVICE_SD, NULL, 0, &myWork->driveTable) == FA_ERR_SUCCESS) {
                    OSReport("NandSDWorker: attach SD card drive = %c\n", myWork->driveTable.drive);
                    s_sd_state = SD_STATE_ERROR;

                    // Attempt to mount SD Card drive
                    result = call_fa_mount();
                    if (result == RESULT_OK) {
                        // Alright we mounted. Get SD apps and save data!
                        s_sd_state = SD_STATE_MOUNTED;
                        if (myWork->saveCacheHeap != NULL) {
                            clear_save_cache(&myWork->sdSaveList);
                            get_sd_save_list(NULL);
                        }
                        if (myWork->appCacheHeap != NULL) {
                            clear_app_cache(&myWork->sdAppList);
                            get_sd_app_list(NULL);
                        }
                        if (s_sd_state == SD_STATE_MOUNTED) {
                            s_sd_state = SD_STATE_READY;
                        }
                        // Error reports
                    } else if (result == RESULT_BROKEN_MEDIA) {
                        OSReport("NandSDWorker:: Broken Media\n");
                        s_sd_state = SD_STATE_BROKEN;
                    } else if (result == RESULT_ILLEGAL_MEDIA) {
                        OSReport("NandSDWorker:: Illegal Media\n");
                        s_sd_state = SD_STATE_ILLEGAL;
                    } else {
                        OSReport("NandSDWorker:: not inserted\n");
                        s_sd_state = SD_STATE_EJECTED;
                    }
                    myWork->asyncResult = result;
                } else {
                    OSReport("NandSDWorker: FAAttach failed.[%d]\n", FAErrnum());
                    s_sd_state = SD_STATE_INITIAL;
                    myWork->asyncResult = RESULT_FATAL_SD_ERROR;
                }
                break;
            }
            case SD_STATE_EJECTED: {
                if (myWork->prevAsyncResult == RESULT_WORKING) {
                    myWork->asyncResult = RESULT_FATAL_SD_ERROR;
                } else {
                    myWork->asyncResult = myWork->prevAsyncResult;
                }
                break;
            }
            case SD_STATE_INSERTED: {
                s_sd_state = SD_STATE_ERROR;

                // Attempt to mount
                result = call_fa_mount();
                if (result == RESULT_OK) {
                    // Alright we mounted. Get SD apps and save data!
                    s_sd_state = SD_STATE_MOUNTED;
                    if (myWork->saveCacheHeap != NULL) {
                        clear_save_cache(&myWork->sdSaveList);
                        get_sd_save_list(NULL);
                    }
                    if (myWork->appCacheHeap != NULL) {
                        clear_app_cache(&myWork->sdAppList);
                        get_sd_app_list(NULL);
                    }
                    if (s_sd_state == SD_STATE_MOUNTED) {
                        s_sd_state = SD_STATE_READY;
                    }
                    // Error reports
                } else if (result == RESULT_BROKEN_MEDIA) {
                    s_sd_state = SD_STATE_BROKEN;
                } else if (result == RESULT_ILLEGAL_MEDIA) {
                    s_sd_state = SD_STATE_ILLEGAL;
                } else {
                    s_sd_state = SD_STATE_EJECTED;
                }
                myWork->asyncResult = result;
                break;
            }
            case SD_STATE_READY: {
                myWork->asyncResult = RESULT_OK;
                break;
            }
            default: {
                break;
            }
        }
    }

    int NandSDWorker::call_fa_mount() {
        FAError faErr;

        // Unmount if already mounted
        if (s_sd_state != SD_STATE_INITIAL) {
            faErr = FAUnmount(myWork->driveTable.drive, TRUE);
            OSReport("NandSDWorker: force unmount sd before mounting[%d]\n", faErr);

            faErr = FADetach(myWork->driveTable.drive);
            OSReport("NandSDWorker: detach sd [%d]\n", faErr);

            faErr = FAAttach(FA_DEVICE_SD, NULL, 0, &myWork->driveTable);
            OSReport("NandSDWorker: attach sd [%d]\n", faErr);
        }

        // Mount if not mounted.
        if (FAMount(myWork->driveTable.drive) == FA_ERR_SUCCESS) {
            OSReport("NandSDWorker: mount SD card drive = %c\n", myWork->driveTable.drive);
            faErr = FABuffering(myWork->driveTable.drive, 2);
            if (faErr == FA_ERR_SUCCESS) {
                myWork->sdWriteProtected = FALSE;
                return RESULT_OK;
            } else if (FAErrnum() == FA_ERR_EWRTPROTECT) {
                OSReport("NandSDWorker: SD card is write protected.\n");
                myWork->sdWriteProtected = TRUE;
                return RESULT_OK;
            } else {
                return handle_sd_error(faErr, NULL);
            }
        } else {
            // Error handling
            FAError errnum = FAErrnum();
            if (errnum == FA_ERR_ENOEXEC) {
                return FA_INSERTED(myWork->driveTable) ? RESULT_BROKEN_MEDIA : RESULT_FATAL_SD_ERROR;
            } else if (errnum == FA_ERR_EINVAL) {
                return RESULT_FATAL_SD_ERROR;
            } else if (errnum == FA_ERR_EIO) {
                OSReport("NandSDWorker:: stat : %08x\n", myWork->driveTable.stat);
                return s_sd_state == SD_STATE_EJECTED ? RESULT_FATAL_SD_ERROR : RESULT_ILLEGAL_MEDIA;
            } else {
                return RESULT_ILLEGAL_MEDIA;
            }
        }
    }

    void NandSDWorker::do_list_nand_save() {
        ESTitleId* titleIds;
        ESTitleId* titleIdsOut = (ESTitleId*)myWork->paramA;
        u32 numTitles = 0;

        // Get title ID count
        ES_ListTitlesOnCard(NULL, &numTitles);

        // Get title ID list
        titleIds = (ESTitleId*)MEMAllocFromExpHeapEx(myWork->mainHeap, numTitles * sizeof(ESTitleId), 32);
        ES_ListTitlesOnCard(titleIds, &numTitles);

        for (int dest = 0, i = 0; i < numTitles; i++) {
            if (is_disk_or_user_nand_app(titleIds[i])) {
                char path[NAND_MAX_PATH + 1];
                get_nand_data_only_title_save_path(titleIds[i], path);

                u32 blocks, inodes;
                if (nand::wrapper::SecretGetUsage(path, &blocks, &inodes) == NAND_RESULT_OK) {
                    // If there is at least one file
                    if (inodes > 1) {
                        // Count it!
                        titleIdsOut[dest++] = titleIds[i];
                    }
                }
                // If the title only has a data folder
            } else if (is_data_only_title(titleIds[i])) {
                // Count it!
                titleIdsOut[dest++] = titleIds[i];
            }
        }

        change_uid(SYSMENU_TITLE_ID);

        MEMFreeToExpHeap(myWork->mainHeap, titleIds);

        myWork->asyncResult = RESULT_OK;
    }

    bool NandSDWorker::check_nand_save_banner_exist(ESTitleId titleId) {
        u8 fileType = 0;
        char path[NAND_MAX_PATH + 1];

        if (!change_uid(titleId)) {
            return false;
        }

        // Construct path
        get_nand_data_only_title_save_path(titleId, path);
        strncat(path, "/", NAND_MAX_PATH);
        strncat(path, c_banner_file_name, NAND_MAX_PATH);

        // If the banner is a file
        s32 result = nand::wrapper::GetType(path, &fileType);
        if (result == NAND_RESULT_OK && fileType == NAND_TYPE_FILE) {
            return true;
        }

        if (result != NAND_RESULT_NOEXISTS) {
            OSReport("NandSDWorker: NANDGetType %s failed.[%d/%d]\n", path, result, fileType);
        }

        return false;
    }

    int NandSDWorker::get_nand_save_banner(ESTitleId titleId, WIISaveBannerFile* bannerFile, u32* sizeOut) {
        s32 err;
        s32 ret;

        ret = RESULT_OK;
        SaveCacheEntry* cached = find_save_cache(&myWork->nandSaveList, myWork->curTitleId);
        if (cached == NULL || cached->banner.signature == 0) {
            u32 fileLength = 0;
            bool fileOpened = false;
            memset(bannerFile, 0, WII_SAVE_BANNER_FULL_SIZE);

            if (is_data_only_title(titleId)) {
                ret = get_save_banner_for_data_only_title(titleId, bannerFile, sizeOut);
            } else {
                char path[NAND_MAX_PATH];
                NANDFileInfo fileInfo;
                u32 readSize;

                // Construct save path
                get_nand_data_only_title_save_path(titleId, path);
                strncat(path, "/", NAND_MAX_PATH);
                strncat(path, c_banner_file_name, NAND_MAX_PATH);

                if (!change_uid(titleId)) {
                    ret = RESULT_FATAL_SD_ERROR;
                    goto clean_up;
                }

                // Open file
                err = nand::wrapper::Open(path, &fileInfo, NAND_ACCESS_READ);
                if (err != NAND_RESULT_OK) {
                    OSReport("NandSDWorker: failed to open %s [%d]\n", path, err);
                    ret = RESULT_FATAL_SD_ERROR;
                    goto clean_up;
                }
                fileOpened = true;

                // Grab size of file
                err = nand::wrapper::GetLength(&fileInfo, &fileLength);
                if (err != NAND_RESULT_OK) {
                    OSReport("NandSDWorker: failed to get length %s [%d]\n", path, err);
                    ret = RESULT_FATAL_SD_ERROR;
                    goto clean_up;
                }

                // Check file size for normal or animated banner
                if (fileLength < WII_SAVE_BANNER_NORMAL_SIZE) {
                    OSReport("NandSDWorker: banner file %s is too small [%d]\n", path, fileLength);
                    ret = RESULT_BAD_FILE;
                    goto clean_up;
                } else if (fileLength > WII_SAVE_BANNER_FULL_SIZE) {
                    OSReport("NandSDWorker: banner file %s is too large [%d]\n", path, fileLength);
                    ret = RESULT_BAD_FILE;
                    goto clean_up;
                }

                if (sizeOut != NULL) {
                    *sizeOut = fileLength;
                }

                // Now let's check on the file contents
                readSize = nand::wrapper::Read(&fileInfo, bannerFile, fileLength);
                if (check_nand_corrupt(readSize, &ret)) {
                    goto clean_up;
                }

                if (readSize != fileLength) {
                    OSReport("NandSDWorker: failed to read %s [%d]\n", path, readSize);
                    ret = RESULT_FATAL_SD_ERROR;
                    goto clean_up;
                }

                err = nand::wrapper::Close(&fileInfo);
                if (check_nand_corrupt(err, &ret)) {
                    goto clean_up;
                }

                if (err != NAND_RESULT_OK) {
                    OSReport("NandSDWorker: failed to close %s [%d]\n", path, err);
                    ret = RESULT_FATAL_SD_ERROR;
                    goto clean_up;
                }
                fileOpened = false;

                // Verify signature in file
                if (bannerFile->signature != WII_SAVE_BANNER_SIGNATURE) {
                    OSReport("NandSDWorker: banner file %s signature is not correct\n", path);
                    ret = RESULT_BAD_FILE;
                    goto clean_up;
                }

                ret = RESULT_OK;

            clean_up:
                if (fileOpened) {
                    err = nand::wrapper::Close(&fileInfo);
                    if (!check_nand_corrupt(err, &ret) && err != NAND_RESULT_OK) {
                        OSReport("NandSDWorker: failed to close %s [%d]\n", path, err);
                        ret = RESULT_FATAL_SD_ERROR;
                    }
                }
                change_uid(SYSMENU_TITLE_ID);
            }

            if (ret == RESULT_OK) {
                if (cached != NULL) {
                    memcpy(cached, bannerFile, sizeof(WIISaveBannerFile));
                } else {
                    add_save_cache(&myWork->nandSaveList, titleId, bannerFile, -1);
                }
            }
        } else {
            memcpy(bannerFile, &cached->banner, sizeof(WIISaveBannerFile));
            ret = RESULT_OK;
        }
        return ret;
    }

    void NandSDWorker::do_get_sd_save_banner() {
        SaveCacheEntry* cacheEntry = find_save_cache(&myWork->sdSaveList, myWork->curTitleId);
        if (cacheEntry == NULL || cacheEntry->banner.signature == 0) {
            SDSaveBanner* sdSaveBanner = (SDSaveBanner*)MEMAllocFromAllocator(&myWork->unkAllocator, sizeof(SDSaveBanner));
            int result = get_sd_save_banner(myWork->curTitleId, sdSaveBanner);
            if (result == RESULT_OK) {
                memcpy(myWork->paramA, &sdSaveBanner->banner, sizeof(WIISaveBannerFile));

                if (cacheEntry != NULL) {
                    memcpy(cacheEntry, &sdSaveBanner->banner, sizeof(WIISaveBannerFile));
                } else {
                    add_save_cache(&myWork->sdSaveList, myWork->curTitleId, &sdSaveBanner->banner, -1);
                }

                myWork->asyncResult = RESULT_OK;
            } else {
                myWork->asyncResult = result;
            }
            MEMFreeToAllocator(&myWork->unkAllocator, sdSaveBanner);
        } else {
            memcpy(myWork->paramA, &cacheEntry->banner, sizeof(WIISaveBannerFile));
            myWork->asyncResult = RESULT_OK;
        }
    }

    void NandSDWorker::do_get_sd_app_thumbnail() {
        AppCacheEntry* cacheEntry = find_app_cache(&myWork->sdAppList, myWork->curTitleId);
        if (cacheEntry == NULL || cacheEntry->thumbSize == -1) {
            SDAppBanner* sdAppBanner = (SDAppBanner*)MEMAllocFromAllocator(&myWork->unkAllocator, sizeof(SDAppBanner));
            int result = get_sd_app_banner(myWork->curTitleId, sdAppBanner);
            if (result != RESULT_OK) {
                myWork->asyncResult = result;
            } else {
                int thumbnailSize = get_sd_app_thumbnail(sdAppBanner, (u8*)myWork->paramA);
                if (thumbnailSize < 0) {
                    myWork->asyncResult = thumbnailSize;
                } else {
                    if (myWork->paramB != NULL) {
                        memcpy(myWork->paramB, &sdAppBanner->metaHdr, sizeof(channel::SChanMgrMetaHeader));
                    }

                    if (cacheEntry != NULL) {
                        memcpy(cacheEntry->thumbnail, myWork->paramA, thumbnailSize);
                        cacheEntry->thumbSize = thumbnailSize;
                    } else {
                        add_app_cache(&myWork->sdAppList, myWork->curTitleId, (u8*)myWork->paramA, thumbnailSize, &sdAppBanner->metaHdr, -1);
                    }

                    myWork->asyncResult = thumbnailSize;
                }
            }
            if (sdAppBanner != NULL) {
                MEMFreeToAllocator(&myWork->unkAllocator, sdAppBanner);
            }
        } else {
            memcpy(myWork->paramA, cacheEntry->thumbnail, cacheEntry->thumbSize);
            if (myWork->paramB != NULL) {
                memcpy(myWork->paramB, &cacheEntry->metaHdr, sizeof(channel::SChanMgrMetaHeader));
            }
            myWork->asyncResult = cacheEntry->thumbSize;
        }
    }

    void NandSDWorker::do_get_sd_app_meta() {
        AppCacheEntry* cacheEntry = find_app_cache(&myWork->sdAppList, myWork->curTitleId);
        if (cacheEntry == NULL || cacheEntry->thumbSize == -1) {
            SDAppBanner* sdAppBanner = (SDAppBanner*)MEMAllocFromAllocator(&myWork->unkAllocator, sizeof(SDAppBanner));
            int result = get_sd_app_banner(myWork->curTitleId, sdAppBanner);
            if (result != RESULT_OK) {
                myWork->asyncResult = result;
            } else {
                int thumbnailSize = get_sd_app_thumbnail(sdAppBanner, (u8*)myWork->paramA);
                if (thumbnailSize < 0) {
                    myWork->asyncResult = thumbnailSize;
                } else {
                    if (myWork->paramB != NULL) {
                        SDAppMetaEntry* paramB = (SDAppMetaEntry*)myWork->paramB;
                        paramB->titleId = sdAppBanner->titleId;
                        memcpy(&paramB->metaHdr, &sdAppBanner->metaHdr, sizeof(channel::SChanMgrMetaHeader));
                    }
                    if (cacheEntry != NULL) {
                        memcpy(cacheEntry->thumbnail, myWork->paramA, thumbnailSize);
                        cacheEntry->thumbSize = thumbnailSize;
                    } else {
                        add_app_cache(&myWork->sdAppList, sdAppBanner->titleId, (u8*)myWork->paramA, thumbnailSize, &sdAppBanner->metaHdr, -1);
                    }
                    myWork->asyncResult = thumbnailSize;
                }
            }
            if (sdAppBanner != NULL) {
                MEMFreeToAllocator(&myWork->unkAllocator, sdAppBanner);
            }
        } else {
            memcpy(myWork->paramA, cacheEntry->thumbnail, cacheEntry->thumbSize);
            if (myWork->paramB != NULL) {
                SDAppMetaEntry* paramB = (SDAppMetaEntry*)myWork->paramB;
                paramB->titleId = cacheEntry->titleId;
                memcpy(&paramB->metaHdr, &cacheEntry->metaHdr, sizeof(channel::SChanMgrMetaHeader));
            }
            myWork->asyncResult = cacheEntry->thumbSize;
        }
    }

    void NandSDWorker::do_update_sd_app_location() {
        FAFileStat stat;
        NETMD5Sum MD5Sum;

        const char* c_sd_app_location_paths[2] = {"/private/wii/loc.dat", "/private/wii/loc.bak"};
        SDAppLocation* sdAppLoc = (SDAppLocation*)MEMAllocFromAllocator(&myWork->unkAllocator, sizeof(SDAppLocation));
        SDAppLocation* sdAppLocEncrypt = (SDAppLocation*)MEMAllocFromAllocator(&myWork->unkAllocator, sizeof(SDAppLocation));
        // "sdal" (SD App Location?)
        sdAppLoc->signature[0] = 's';
        sdAppLoc->signature[1] = 'd';
        sdAppLoc->signature[2] = 'a';
        sdAppLoc->signature[3] = 'l';

        // Copy blank MD5 (for now)
        memcpy(sdAppLoc->MD5Sum, c_md5_secret_key, sizeof(sdAppLoc->MD5Sum));
        // Copy Title ID order
        memcpy(sdAppLoc->titleIds, myWork->paramA, sizeof(sdAppLoc->titleIds));
        // Copy padding
        memset(sdAppLoc->padding, 0, sizeof(sdAppLoc->padding));

        // Nowe we calculate MD5
        NETCalcMD5(MD5Sum, sdAppLoc, sizeof(SDAppLocation));
        memcpy(sdAppLoc->MD5Sum, MD5Sum, NET_MD5_DIGEST_SIZE);

        myWork->asyncResult = RESULT_FATAL_SD_ERROR;

        // And then encrypt the file.
        if (encrypt(sdAppLoc, sizeof(SDAppLocation), sdAppLocEncrypt) != RESULT_OK) {
            myWork->asyncResult = RESULT_FATAL_SD_ERROR;
        } else {
            bool fileExists;
            const char* fileName;
            for (int i = 0; i < (int)ARRAY_LENGTH(c_sd_app_location_paths); i++) {
                fileName = c_sd_app_location_paths[i];
                // Check if it's a file
                if (FAFstat(fileName, &stat) == FA_ERR_SUCCESS) {
                    if (is_fa_file(stat.stat)) {
                        fileExists = true;
                    } else {
                        myWork->asyncResult = RESULT_FATAL_SD_ERROR;
                        break;
                    }
                } else {
                    // Error handling
                    FAError err = FAErrnum();
                    if (err == FA_ERR_ENOENT || err == FA_ERR_EINVAL) {
                        fileExists = false;
                    } else {
                        handle_sd_error_for_entry(FA_ERR_SYSTEM, &myWork->asyncResult);
                        break;
                    }
                }

                FAFILE* fileStream;
                if (!fileExists) {
                    // Find some free space in SD
                    s64 freeArea = get_sd_free_area();
                    if (freeArea < 0) {
                        myWork->asyncResult = freeArea;
                        break;
                    }
                    if (freeArea < (s32)sizeof(SDAppLocation)) {
                        myWork->asyncResult = RESULT_OUT_OF_SPACE;
                        break;
                    }
                    // Some free space available? Create the file!
                    fileStream = FACreate(fileName, 0);
                    if (fileStream == NULL) {
                        handle_sd_error_for_entry(FA_ERR_SYSTEM, &myWork->asyncResult);
                        break;
                    }
                } else {
                    // If the file already exists, open existing file
                    fileStream = FAFopen(fileName, "r+");
                    if (fileStream == NULL) {
                        handle_sd_error_for_entry(FA_ERR_SYSTEM, &myWork->asyncResult);
                        break;
                    }
                }

                // Write new contents
                if (FAFwrite(sdAppLocEncrypt, sizeof(SDAppLocation), 1, fileStream) != 1) {
                    FAFclose(fileStream);
                    handle_sd_error_for_entry(FA_ERR_SYSTEM, &myWork->asyncResult);
                    break;
                }

                if (FAFclose(fileStream) == FA_ERR_SYSTEM) {
                    handle_sd_error_for_entry(FA_ERR_SYSTEM, &myWork->asyncResult);
                    break;
                }
            }
        }

        MEMFreeToAllocator(&myWork->unkAllocator, sdAppLoc);
        MEMFreeToAllocator(&myWork->unkAllocator, sdAppLocEncrypt);
    }

    void NandSDWorker::do_read_sd_app_location() {
        FAFileStat stat;
        NETMD5Sum MD5Sum;
        NETMD5Context md5Ctx;

        const char* c_sd_app_location_paths[2] = {"/private/wii/loc.dat", "/private/wii/loc.bak"};
        SDAppLocation* sdAppLocEncrypt = (SDAppLocation*)MEMAllocFromAllocator(&myWork->unkAllocator, sizeof(SDAppLocation));
        SDAppLocation* sdAppLoc = (SDAppLocation*)MEMAllocFromAllocator(&myWork->unkAllocator, sizeof(SDAppLocation));

        myWork->asyncResult = RESULT_FATAL_SD_ERROR;
        get_sd_free_area();  // why?

        bool hadSuccess = false;
        bool errored = false;
        for (int i = 0; i < (int)ARRAY_LENGTH(c_sd_app_location_paths); i++) {
            const char* fileName = c_sd_app_location_paths[i];
            if (sd_file_exist(fileName, sizeof(SDAppLocation) - 1) > 0) {
                FAFILE* fileStream = FAFopen(fileName, "r");
                if (fileStream != NULL) {
                    // Read contents of file
                    if (FAFread(sdAppLocEncrypt, sizeof(SDAppLocation), 1, fileStream) == 1) {
                        if (FAFclose(fileStream) != FA_ERR_SYSTEM) {
                            // Decrypt the file
                            if (decrypt(sdAppLocEncrypt, sizeof(SDAppLocation), sdAppLoc) == RESULT_OK) {
                                memcpy(MD5Sum, sdAppLoc->MD5Sum, NET_MD5_DIGEST_SIZE);
                                memcpy(sdAppLoc->MD5Sum, c_md5_secret_key, NET_MD5_DIGEST_SIZE);

                                if (check_md5(MD5Sum, (u8*)sdAppLoc, sizeof(SDAppLocation))) {
                                    myWork->asyncResult = RESULT_OK;
                                    if (!hadSuccess) {
                                        hadSuccess = true;
                                        memcpy(myWork->paramA, sdAppLoc->titleIds, sizeof(sdAppLoc->titleIds));
                                    }
                                } else {
                                    myWork->asyncResult = RESULT_BAD_FILE;
                                }
                            }
                        } else {
                            handle_sd_error_for_entry(FA_ERR_SYSTEM, &myWork->asyncResult);
                        }
                    } else {
                        handle_sd_error_for_entry(FA_ERR_SYSTEM, &myWork->asyncResult);
                    }
                } else {
                    handle_sd_error_for_entry(FA_ERR_SYSTEM, &myWork->asyncResult);
                }
            } else {
                myWork->asyncResult = RESULT_FATAL_SD_ERROR;
            }

            if (myWork->asyncResult != RESULT_OK) {
                errored = true;
            }
        }
        if (hadSuccess && errored) {
            myWork->asyncResult = RESULT_SD_APP_LOC_NOT_FOUND;
        }
        MEMFreeToAllocator(&myWork->unkAllocator, sdAppLocEncrypt);
        MEMFreeToAllocator(&myWork->unkAllocator, sdAppLoc);
    }

    void NandSDWorker::do_check_for_sd_app_to_nand() {
        // TODO: Clean up paramA and paramB types
        SDAppBanner* sdAppBanner = (SDAppBanner*)MEMAllocFromAllocator(&myWork->unkAllocator, sizeof(SDAppBanner));

        u16 nandTitleVersion, sdTitleVersion;
        u32 numTicketViews;
        ESTitleId wadTitleId;
        char appPath[NAND_MAX_PATH];

        nandTitleVersion = 0;
        myWork->asyncResult = RESULT_FATAL_SD_ERROR;
        numTicketViews = 0;

        // Get ticket count
        s32 err = ES_GetTicketViews(myWork->curTitleId, NULL, &numTicketViews);
        if (err != ES_ERR_OK) {
            OSReport("NandSDWorker: ES_GetTicketViews failed [%d]\n", err);
            myWork->asyncResult = RESULT_FATAL_SD_ERROR;
            goto clean_up;
        }

        if (numTicketViews == 0) {
            myWork->asyncResult = RESULT_ES_ERROR;
            goto clean_up;
        }

        int result;
        result = get_sd_app_banner(myWork->curTitleId, sdAppBanner);
        if (result != RESULT_OK) {
            myWork->asyncResult = result;
            goto clean_up;
        }

        // Get title info of SD App
        get_sd_app_path(myWork->curTitleId, appPath);
        err = WADGetTitleVersionEx(appPath, &wadTitleId, &sdTitleVersion, WAD_LOCATION_SD_CARD,
                                   ROUNDUP(sdAppBanner->thumbSize, 64) + sizeof(SDAppBanner));
        if (err != 0) {
            OSReport("NandSDWorker: WADGetTitleVersionEx failed.[%d]\n", err);
            myWork->asyncResult = RESULT_FATAL_SD_ERROR;
            goto clean_up;
        }

        if (wadTitleId != sdAppBanner->titleId) {
            OSReport("NandSDWorker: titleid %016llx in wad is different from %016llx in banner %s.\n", wadTitleId, sdAppBanner->titleId, appPath);
            myWork->asyncResult = RESULT_FATAL_SD_ERROR;
            goto clean_up;
        }

        // Get WAD blocks
        WADBlocks wadBlocks;
        err = WADImportGetBlocks(appPath, &myWork->unkAllocator, WAD_LOCATION_SD_CARD, ROUNDUP(sdAppBanner->thumbSize, 64) + sizeof(SDAppBanner), 1,
                                 &wadBlocks, NULL);
        if (err == WAD_ERROR_INCORRECT_DEVICE) {
            OSReport("NandSDWorker: WADImportGetBlocks failed, not original Wii.[%d]\n", err);
            myWork->asyncResult = RESULT_NOT_TRANSFERRABLE;
            goto clean_up;
        } else if (err != WAD_ERROR_OK) {
            OSReport("NandSDWorker: WADImportGetBlocks failed.[%d]\n", err);
            myWork->asyncResult = RESULT_BAD_FILE;
            goto clean_up;
        }

        // Calculate required blocks
        ((AppBlocksInfo*)myWork->paramA)->bytes = NAND_BLOCKS_TO_BYTES(wadBlocks.privateBlocks + wadBlocks.unkBlocks);
        ((AppBlocksInfo*)myWork->paramA)->blocks = wadBlocks.privateInodes + wadBlocks.unkInodes;

        // Calculate free blocks
        if (myWork->paramB != NULL) {
            u32 sysNodes, sysBlocks;
            s32 userNodes, userBlocks;
            err = get_nand_free_area(&sysNodes, &sysBlocks, &userNodes, &userBlocks);
            if (err != RESULT_OK) {
                myWork->asyncResult = RESULT_FATAL_SD_ERROR;
                goto clean_up;
            }
            ((AppBlocksInfo*)myWork->paramB)->bytes = NAND_BLOCKS_TO_BYTES(userBlocks);
            ((AppBlocksInfo*)myWork->paramB)->blocks = userNodes;
        }

        if (result != RESULT_OK) {
            myWork->asyncResult = result;
            goto clean_up;
        }

        // If the file already exists
        if (nand_app_exist_ex(sdAppBanner->titleId) == EXISTENCE_COMPLETE) {
            OSReport("NandSDWorker: titleid = 0x%016llx is already in nand.\n", sdAppBanner->titleId);
            myWork->asyncResult = RESULT_ALREADY_EXISTS;
            goto clean_up;
        }

        err = get_nand_title_version(sdAppBanner->titleId, &nandTitleVersion);
        if (err != RESULT_OK) {
            myWork->asyncResult = err;
            goto clean_up;
        }

        // Compare version
        int nandTitleMajor, sdTitleMajor;
        nandTitleMajor = (u16)(nandTitleVersion >> 8);
        sdTitleMajor = (u16)(sdTitleVersion >> 8);
        if (nandTitleMajor > sdTitleMajor) {
            OSReport("NandSDWorker: titleid %016llx has higher version than that of sd (%d vs %d)\n", sdAppBanner->titleId, nandTitleVersion,
                     sdTitleVersion);
            myWork->asyncResult = RESULT_VERSION_ERR;
        } else {
            myWork->asyncResult = RESULT_OK;
        }
    clean_up:
        MEMFreeToAllocator(&myWork->unkAllocator, sdAppBanner);
    }

    void NandSDWorker::check_backup_fits() {
        u32 newTitleCount = ((TitleIdList*)myWork->paramA)->count;
        ESTitleId* newTitleIds = ((TitleIdList*)myWork->paramA)->titleIds;

        u32 replacingTitleCount = ((TitleIdList*)myWork->paramB)->count;
        ESTitleId* replacingTitleIds = ((TitleIdList*)myWork->paramB)->titleIds;

        SDAppBackupData* backupData = (SDAppBackupData*)MEMAllocFromExpHeapEx(myWork->mainHeap, sizeof(SDAppBackupData), 32);
        s64 sdFreeArea = get_sd_free_area();
        if (sdFreeArea < 0) {
            myWork->asyncResult = sdFreeArea;
            goto clean_up;
        }

        u64 totalBackupSize;
        totalBackupSize = 0;
        for (int i = 0; i < newTitleCount; i++) {
            if (s_sd_state != SD_STATE_READY) {
                myWork->asyncResult = RESULT_FATAL_SD_ERROR;
                goto clean_up;
            }

            // Get app banner
            int result = get_app_banner_from_meta(newTitleIds[i], backupData);
            if (result != RESULT_OK) {
                myWork->asyncResult = result;
                goto clean_up;
            }

            u32 backupSize = 0;
            u32 wadOffset = sizeof(SDAppBanner) + ROUNDUP(backupData->head.thumbSize, 64);

            s32 err = WADBackupEx(newTitleIds[i], 1, &myWork->unkAllocator, NULL, &backupSize, WAD_LOCATION_SD_CARD, wadOffset, NULL);
            if (err != WAD_ERROR_OK) {
                OSReport("NandSDWorker: WADBackup failed.[%d]\n", err);
                myWork->asyncResult = RESULT_FATAL_SD_ERROR;
                goto clean_up;
            }
            totalBackupSize += wadOffset;
            totalBackupSize += backupSize;
        }

        for (int i = 0; i < replacingTitleCount; i++) {
            if (s_sd_state != SD_STATE_READY) {
                myWork->asyncResult = RESULT_FATAL_SD_ERROR;
                goto clean_up;
            }

            int result = get_app_banner_from_meta(replacingTitleIds[i], backupData);
            if (result != RESULT_OK) {
                myWork->asyncResult = result;
                goto clean_up;
            }

            u32 backupSize = 0;
            u32 wadOffset = sizeof(SDAppBanner) + ROUNDUP(backupData->head.thumbSize, 64);

            s32 err = WADBackupEx(replacingTitleIds[i], 1, &myWork->unkAllocator, NULL, &backupSize, WAD_LOCATION_SD_CARD, wadOffset, NULL);
            if (err != WAD_ERROR_OK) {
                OSReport("NandSDWorker: WADBackup failed.[%d]\n", err);
                myWork->asyncResult = RESULT_FATAL_SD_ERROR;
                goto clean_up;
            }

            totalBackupSize += wadOffset;
            totalBackupSize += backupSize;
        }

        u64 totalDeletableSize;
        totalDeletableSize = 0;
        for (int i = 0; i < replacingTitleCount; i++) {
            if (s_sd_state != SD_STATE_READY) {
                myWork->asyncResult = RESULT_FATAL_SD_ERROR;
                goto clean_up;
            }

            char sdAppPath[NAND_MAX_PATH];
            get_sd_app_path(replacingTitleIds[i], sdAppPath);

            FAFileStat fileStat;
            if (FAFstat(sdAppPath, &fileStat) == FA_ERR_SUCCESS) {
                if (is_fa_file(fileStat.stat)) {
                    totalDeletableSize += fileStat.size;
                } else {
                    myWork->asyncResult = RESULT_FATAL_SD_ERROR;
                    goto clean_up;
                }
            } else {
                myWork->asyncResult = RESULT_FATAL_SD_ERROR;
                goto clean_up;
            }
        }

        u64 netSize;
        netSize = totalBackupSize - totalDeletableSize;
        if (netSize + 0x19000 > sdFreeArea) {
            OSReport("NandSDWorker: total backup size [%d] is too large for SD card. \n", netSize + 0x19000);
            myWork->asyncResult = netSize + 0x19000;
            goto clean_up;
        }

        myWork->asyncResult = RESULT_OK;

    clean_up:
        MEMFreeToExpHeap(myWork->mainHeap, backupData);
    }

    void NandSDWorker::do_list_nand_apps_usage() {
        ESTitleId* titleIds;
        TitleUsage* output = (TitleUsage*)myWork->paramA;

        u32 titleIdCount = 0;
        myWork->asyncResult = RESULT_FATAL_SD_ERROR;

        // Get title ID count
        ES_ListTitlesOnCard(NULL, &titleIdCount);

        // Get title ID list
        titleIds = (ESTitleId*)MEMAllocFromExpHeapEx(myWork->mainHeap, titleIdCount * sizeof(ESTitleId), 32);
        ES_ListTitlesOnCard(titleIds, &titleIdCount);

        u32 dest, capacity;
        capacity = (u32)myWork->paramB;
        dest = 0;
        for (int i = 0; i < titleIdCount; i++) {
            if (dest >= capacity) {
                break;
            }

            if (!is_user_nand_app(titleIds[i])) {
                continue;
            }

            if (!nand_app_exist(titleIds[i])) {
                continue;
            }

            u32 usedBlocks = 0, usedInodes = 0;

            // Get path to NAND title
            char path[NAND_MAX_PATH];
            get_nand_app_path(titleIds[i], path);

            // Get usage of NAND app path
            s32 err = nand::wrapper::SecretGetUsage(path, &usedBlocks, &usedInodes);
            if (err != NAND_RESULT_OK) {
                OSReport("NandSDWorker: NANDSecretGetUsage[%s] failed %d\n", path, err);
                myWork->asyncResult = RESULT_FATAL_SD_ERROR;
                goto clean_up;
            }

            // Save the information.
            output[dest].curTitleId = titleIds[i];
            output[dest].size = NAND_BLOCKS_TO_BYTES(usedBlocks);
            output[dest].inode = usedInodes;

            OSReport("NandSDWorker: nand app 0x%016llx size is [%d] inode is [%d]\n", output[dest].curTitleId, output[dest].size, output[dest].inode);

            dest++;
        }
        myWork->asyncResult = RESULT_OK;

    clean_up:
        MEMFreeToExpHeap(myWork->mainHeap, titleIds);
    }

    void NandSDWorker::do_unk_8134C838() {
        SDAppBanner* sdAppBanner = (SDAppBanner*)MEMAllocFromAllocator(&myWork->unkAllocator, sizeof(SDAppBanner));

        /* i guess */
        TitleIdList* titleIdList = (TitleIdList*)myWork->paramA;
        TitleIdList* foundTitleIdList = (TitleIdList*)myWork->paramB;
        TitleIdList* badTitleIdList = (TitleIdList*)myWork->paramC;

        ESTitleId* titleIds = titleIdList->titleIds;
        ESTitleId* foundTitleIds = foundTitleIdList->titleIds;
        ESTitleId* badTitleIds = badTitleIdList->titleIds;

        u32 titleIdCount = titleIdList->count;

        myWork->asyncResult = RESULT_FATAL_SD_ERROR;

        ESDeviceId deviceId;
        ES_GetDeviceId(&deviceId);

        int foundCount = 0, badCount = 0;

        for (int i = 0; i < titleIdCount; i++) {
            if (s_sd_state != SD_STATE_READY) {
                myWork->asyncResult = RESULT_FATAL_SD_ERROR;
                break;
            }

            char path[NAND_MAX_PATH];
            get_sd_app_path(titleIds[i], path);

            // Attempt to get banner
            int result = get_sd_app_banner(titleIds[i], sdAppBanner);
            if (result == RESULT_OK) {
                ESTitleId sdTitleId;
                u16 sdVersion;
                s32 err = WADGetTitleVersionEx(path, &sdTitleId, &sdVersion, WAD_LOCATION_SD_CARD,
                                               ROUNDUP(sdAppBanner->thumbSize, 64) + sizeof(SDAppBanner));
                if (err != WAD_ERROR_OK) {
                    OSReport("NandSDWorker: WADGetTitleVersionEx failed.[%d]\n", err);
                    foundTitleIds[foundCount++] = titleIds[i];
                    continue;
                }

                if (sdTitleId != titleIds[i]) {
                    OSReport("NandSDWorker: titleid %llx in wad is different from %llx in banner %s.\n", sdTitleId, sdAppBanner->titleId, path);
                    foundTitleIds[foundCount++] = titleIds[i];
                    continue;
                }

                WADBackupHeader wadBackupHeader;
                result = get_sd_wad_header(titleIds[i], &wadBackupHeader, ROUNDUP(sdAppBanner->thumbSize, 64));
                if (result != RESULT_OK) {
                    foundTitleIds[foundCount++] = titleIds[i];
                }
                if (wadBackupHeader.deviceId == deviceId) {
                    u16 titleVersion;
                    get_nand_title_version(titleIds[i], &titleVersion);
                    if (titleVersion != sdVersion) {
                        foundTitleIds[foundCount++] = titleIds[i];
                    }
                } else {
                    foundTitleIds[foundCount++] = titleIds[i];
                }
            } else if (result == RESULT_FATAL_SD_ERROR) {
                badTitleIds[badCount++] = titleIds[i];
            } else {
                foundTitleIds[foundCount++] = titleIds[i];
            }
        }

        badTitleIdList->count = badCount;
        foundTitleIdList->count = foundCount;

        myWork->asyncResult = RESULT_OK;

        MEMFreeToAllocator(&myWork->unkAllocator, sdAppBanner);
    }

    void NandSDWorker::do_get_nand_save_size() {
        SaveCacheEntry* cacheEntry = (SaveCacheEntry*)find_save_cache(&myWork->nandSaveList, myWork->curTitleId);
        if (cacheEntry == NULL || cacheEntry->size == -1) {
            u32 usedBlocks = 0;
            u32 usedInodes = 0;

            char path[NAND_MAX_PATH];
            if (is_data_only_title(myWork->curTitleId)) {
                get_nand_title_save_path(myWork->curTitleId, path);
            } else {
                get_nand_data_only_title_save_path(myWork->curTitleId, path);
            }

            s32 err = nand::wrapper::SecretGetUsage(path, &usedBlocks, &usedInodes);
            if (err != NAND_RESULT_OK) {
                OSReport("NandSDWorker: NANDSecretGetUsage[%s] failed %d\n", path, err);
                myWork->asyncResult = RESULT_FATAL_SD_ERROR;
                return;
            }

            if (is_data_only_title(myWork->curTitleId)) {
                get_nand_meta_file_path(myWork->curTitleId, path);
                s32 metaFileSize = nand_get_length(path);
                if (metaFileSize > 0) {
                    usedBlocks += ((u32)metaFileSize + (NAND_BLOCK_SIZE - 1)) / NAND_BLOCK_SIZE;
                } else {
                    if (metaFileSize != RESULT_FATAL_SD_ERROR) {
                        OSReport("NandSDWorker: failed to get meta file size.[%d]\n", metaFileSize);
                        myWork->asyncResult = metaFileSize;
                        return;
                    }
                }
            }

            myWork->asyncResult = NAND_BLOCKS_TO_BYTES(usedBlocks);

            OSReport("NandSDWorker: save size under %s is [%d] : [inodes:%d]\n", path, myWork->asyncResult, usedInodes);
            if (cacheEntry != NULL) {
                cacheEntry->size = myWork->asyncResult;
            } else {
                add_save_cache(&myWork->nandSaveList, myWork->curTitleId, NULL, myWork->asyncResult);
            }
        } else {
            myWork->asyncResult = cacheEntry->size;
        }
    }

    void NandSDWorker::do_get_nand_app_size() {
        AppCacheEntry* cacheEntry = find_app_cache(&myWork->nandAppList, myWork->curTitleId);
        if (cacheEntry == NULL || cacheEntry->fileSize == -1) {
            u32 usedBlocks = 0;
            u32 usedInodes = 0;
            char path[NAND_MAX_PATH];

            get_nand_app_path(myWork->curTitleId, path);
            s32 err = nand::wrapper::SecretGetUsage(path, &usedBlocks, &usedInodes);
            if (err != NAND_RESULT_OK) {
                OSReport("NandSDWorker: NANDSecretGetUsage[%s] failed %d\n", path, err);
                myWork->asyncResult = RESULT_FATAL_SD_ERROR;
                return;
            }

            get_nand_meta_file_path(myWork->curTitleId, path);
            s32 metaFileSize = nand_get_length(path);
            if (metaFileSize > 0) {
                usedBlocks = usedBlocks + ((u32)metaFileSize + (NAND_BLOCK_SIZE - 1)) / NAND_BLOCK_SIZE;
            } else {
                if (metaFileSize != RESULT_FATAL_SD_ERROR) {
                    OSReport("NandSDWorker: failed to get meta file size.[%d]\n", metaFileSize);
                    myWork->asyncResult = metaFileSize;
                    return;
                }
            }

            myWork->asyncResult = NAND_BLOCKS_TO_BYTES(usedBlocks);
            OSReport("NandSDWorker: nand app 0x%016llx size is [%d]\n", myWork->curTitleId, myWork->asyncResult);
            if (cacheEntry != NULL) {
                cacheEntry->fileSize = myWork->asyncResult;
            } else {
                add_app_cache(&myWork->nandAppList, myWork->curTitleId, NULL, 0, NULL, myWork->asyncResult);
            }
        } else {
            myWork->asyncResult = cacheEntry->fileSize;
        }
    }

    int NandSDWorker::get_sd_save_size(ESTitleId32 titleId) {
        s32 size;

        SaveCacheEntry* cacheEntry = find_save_cache(&myWork->sdSaveList, titleId);
        if (cacheEntry == NULL || cacheEntry->size == -1) {
            char path[NAND_MAX_PATH];
            get_sd_save_path(titleId, path);

            FAFileStat fileStat;
            FAError err = FAFstat(path, &fileStat);
            if (err == FA_ERR_SUCCESS) {
                if (err == FA_ERR_SUCCESS && fileStat.size > sizeof(SaveCacheEntry) && is_fa_file(fileStat.stat)) {
                    OSReport("NandSDWorker: file %s size = %d\n", path, fileStat.size);
                    size = fileStat.size;
                    if (cacheEntry != NULL) {
                        cacheEntry->size = fileStat.size;
                    } else {
                        add_save_cache(&myWork->sdSaveList, titleId, NULL, fileStat.size);
                    }
                } else {
                    size = RESULT_FATAL_SD_ERROR;
                }
            } else {
                OSReport("NandSDWorker: FAFstat failed.\n");
                handle_sd_error_for_entry(FA_ERR_SYSTEM, &size);
            }
        } else {
            size = cacheEntry->size;
        }
        return size;
    }

    int NandSDWorker::get_sd_app_size(ESTitleId32 titleId) {
        s32 size;
        AppCacheEntry* cacheEntry = find_app_cache(&myWork->sdAppList, titleId);
        if (cacheEntry == NULL || cacheEntry->fileSize == -1) {
            char path[NAND_MAX_PATH];
            get_sd_app_path(titleId, path);

            FAFileStat fileStat;
            FAError err = FAFstat(path, &fileStat);
            if (err == FA_ERR_SUCCESS) {
                if (err == FA_ERR_SUCCESS && fileStat.size > sizeof(SDAppBanner) && is_fa_file(fileStat.stat)) {
                    OSReport("NandSDWorker: file %s size = %d\n", path, fileStat.size);
                    size = fileStat.size;
                    if (cacheEntry != NULL) {
                        cacheEntry->fileSize = fileStat.size;
                    } else {
                        add_app_cache(&myWork->sdAppList, titleId, NULL, 0, NULL, fileStat.size);
                    }
                } else {
                    size = RESULT_FATAL_SD_ERROR;
                }
            } else {
                OSReport("NandSDWorker: FAFstat failed.\n");
                handle_sd_error_for_entry(FA_ERR_SYSTEM, &size);
            }
        } else {
            size = cacheEntry->fileSize;
        }
        return size;
    }

    void NandSDWorker::do_delete_sd_save() {
        char path[NAND_MAX_PATH];
        get_sd_save_path(myWork->curTitleId, path);

        if (FARemove(path) == FA_ERR_SUCCESS) {
            OSReport("NandSDWorker: delete file %s\n", path);
            myWork->sdSaveNum--;
            delete_save_cache(&myWork->sdSaveList, myWork->curTitleId);
            myWork->asyncResult = RESULT_OK;
        } else {
            OSReport("NandSDWorker: FARemove failed.\n");
            handle_sd_error_for_entry(FA_ERR_SYSTEM, &myWork->asyncResult);
        }
    }

    void NandSDWorker::do_delete_sd_app() {
        char path[NAND_MAX_PATH];
        get_sd_app_path(myWork->curTitleId, path);

        if (FARemove(path) == FA_ERR_SUCCESS) {
            OSReport("NandSDWorker: delete file %s\n", path);
            myWork->sdAppNum--;
            delete_app_cache(&myWork->sdAppList, myWork->curTitleId);
            myWork->asyncResult = RESULT_OK;
        } else {
            OSReport("NandSDWorker: FARemove failed.\n");
            handle_sd_error_for_entry(FA_ERR_SYSTEM, &myWork->asyncResult);
        }
    }

    void NandSDWorker::do_initialize_nand() {
        // Clear shared2 directory.
        int result = recursion_nand("/shared2", NULL, RECURSIVE_DELETE, c_ignore_list_for_shared2, ARRAY_LENGTH(c_ignore_list_for_shared2));
        if (result != RESULT_OK && result != RESULT_FATAL_SD_ERROR) {
            myWork->asyncResult = result;
            return;
        }
        OSReport("NandSDWorker: successfully initialize under /shared2.\n");

        // Clear meta directory.
        result = initialize_meta();
        if (result != RESULT_OK && result != RESULT_FATAL_SD_ERROR) {
            myWork->asyncResult = result;
            return;
        }
        OSReport("NandSDWorker: successfully initialize under /meta.\n");

        // Delete user titles
        result = delete_nand_disk_app_with_ticket();
        if (result != RESULT_OK && result != RESULT_FATAL_SD_ERROR) {
            myWork->asyncResult = result;
            return;
        }
        result = delete_nand_titles();
        if (result != RESULT_OK && result != RESULT_FATAL_SD_ERROR) {
            myWork->asyncResult = result;
            return;
        }

        // Clear system configuration
        result = nand::wrapper::PrivateDelete("/shared2/sys");
        if (result != NAND_RESULT_OK) {
            OSReport("NandSDWorker: NANDPrivateDelete /shared2/sys failed.[%d]\n", result);
            if (result == NAND_RESULT_CORRUPT) {
                myWork->asyncResult = RESULT_NAND_CORRUPT;
                return;
            }
        }
        OSReport("NandSDWorker: successfully delete /shared2/sys.\n");

        BOOL enabled = OSDisableInterrupts();
        SCBtDeviceInfoArray btDeviceInfo;

        // Resetup SYSCONF
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

        OSRestoreInterrupts(enabled);

        int scFlushRes = SCFlush();
        if (scFlushRes == 0) {
            OSReport("NandSDWorker: successfully initialize SC.\n");
        } else {
            OSReport("NandSDWorker: SCFlush failed.[%d]\n", scFlushRes);
        }

        // Initialize NWC24 files in NAND
        void* nwc24Work = MEMAllocFromExpHeapEx(myWork->mainHeap, NWC24_LIB_WORK_SIZE, 32);
        NWC24Err nwc24Err = NWC24InitFilesIndividually(nwc24Work, FALSE, TRUE, TRUE, TRUE);
        MEMFreeToExpHeap(myWork->mainHeap, nwc24Work);
        if (nwc24Err == NWC24_ERR_NAND_CORRUPT) {
            OSReport("NandSDWorker: NWC24InitFiles failed with NAND currupt.\n");
            myWork->asyncResult = RESULT_NAND_CORRUPT;
        } else {
            if (nwc24Err == NWC24_OK) {
                OSReport("NandSDWorker: successfully initialize NWC24.\n");
            } else {
                OSReport("NandSDWorker: NWC24InitFiles failed.[%d]\n", nwc24Err);
            }
            myWork->asyncResult = RESULT_OK;
        }
    }

    int NandSDWorker::initialize_meta() {
        int result = nand::wrapper::PrivateDelete("/meta/00010000");
        if (check_nand_corrupt(result, NULL)) {
            return RESULT_NAND_CORRUPT;
        }
        if (result != NAND_RESULT_OK && result != NAND_RESULT_NOEXISTS) {
            OSReport("NandSDWorker: NANDPrivateDelete /meta/00010000 failed [%d]\n", result);
        }

        result = nand::wrapper::PrivateDelete("/meta/00010001");
        if (check_nand_corrupt(result, NULL)) {
            return RESULT_NAND_CORRUPT;
        }
        if (result != NAND_RESULT_OK && result != NAND_RESULT_NOEXISTS) {
            OSReport("NandSDWorker: NANDPrivateDelete /meta/00010001 failed [%d]\n", result);
        }

        return RESULT_OK;
    }

    int NandSDWorker::delete_nand_disk_app_with_ticket() {
        int ret;

        ESTitleId* titleIds = NULL;
        u32 titleIdCount = 0;

        // Get title ID count
        ESError esErr = ES_ListOwnedTitles(NULL, &titleIdCount);
        if (esErr != ES_ERR_OK) {
            OSReport("NandSDWorker: ES_ListOwnedTitles failed [%d]\n", esErr);
            ret = RESULT_FATAL_SD_ERROR;
            goto clean_up;
        }

        // Get title ID list
        titleIds = (ESTitleId*)MEMAllocFromExpHeapEx(myWork->mainHeap, titleIdCount * sizeof(ESTitleId), 32);
        esErr = ES_ListOwnedTitles(titleIds, &titleIdCount);
        if (esErr != ES_ERR_OK) {
            OSReport("NandSDWorker: ES_ListOwnedTitles failed [%d]\n", esErr);
            ret = RESULT_FATAL_SD_ERROR;
            goto clean_up;
        }

        for (int i = 0; i < titleIdCount; i++) {
            // Check if it's a disc title (title type 00010000 and only has "data" folder)
            if (!is_disk_or_user_nand_app(titleIds[i]) && !is_data_only_title(titleIds[i])) {
                continue;
            }

            // Goodbye ticket!
            int result = delete_ticket(titleIds[i]);
            if (result != RESULT_OK && result != RESULT_ES_ERROR) {
                OSReport("NandSDWorker: delete ticket 0x%016llx failed [%d]\n", titleIds[i], result);
            }

            // Goodbye title!
            esErr = utility::ESMisc::DeleteTitle(System::getMem2Sys(), titleIds[i]);
            if (esErr != ES_ERR_OK && esErr != ES_ERR_DONT_EXISTS) {
                OSReport("NandSDWorker: ESMisc::DeleteTitle 0x%016llx failed [%d]\n", titleIds[i], esErr);
            }

            OSReport("NandSDWorker: delete title [0x%016llx]\n", titleIds[i]);
        }
        ret = RESULT_OK;

    clean_up:
        if (titleIds != NULL) {
            MEMFreeToExpHeap(myWork->mainHeap, titleIds);
        }
        return ret;
    }

    int NandSDWorker::delete_ticket(ESTitleId titleId) {
        ESTicketView* ticketViewList = NULL;
        u32 tikCount = 0;

        // Get ticket count
        ESError esErr = ES_GetTicketViews(titleId, NULL, &tikCount);
        if (esErr != ES_ERR_OK) {
            OSReport("NandSDWorker: ES_GetTicketViews failed [%d]\n", esErr);
            if (esErr == ES_ERR_DONT_EXISTS) {
                return RESULT_ES_ERROR;
            } else {
                return RESULT_FATAL_SD_ERROR;
            }
        }

        if (tikCount != 0) {
            u32 listSize = tikCount * sizeof(ESTicketView);
            ticketViewList = (ESTicketView*)MEMAllocFromExpHeapEx(myWork->mainHeap, OSRoundUp32B(listSize), 32);

            // Get tickets
            esErr = ES_GetTicketViews(titleId, ticketViewList, &tikCount);
            if (esErr != ES_ERR_OK) {
                OSReport("NandSDWorker: ES_GetTicketViews failed [%d]\n", esErr);
                MEMFreeToExpHeap(myWork->mainHeap, ticketViewList);

                if (esErr == ES_ERR_DONT_EXISTS) {
                    return RESULT_ES_ERROR;
                } else {
                    return RESULT_FATAL_SD_ERROR;
                }
            }

            for (int i = 0; i < tikCount; i++) {
                ESTicketView ticketView ALIGN32;

                // Thank you, EAD
                ticketView.version = ticketViewList[i].version;
                ticketView.ticketId = ticketViewList[i].ticketId;
                ticketView.deviceId = ticketViewList[i].deviceId;
                ticketView.titleId = ticketViewList[i].titleId;
                ticketView.accessMask[0] = ticketViewList[i].accessMask[0];
                ticketView.accessMask[1] = ticketViewList[i].accessMask[1];
                ticketView.ticketVersion = ticketViewList[i].ticketVersion;
                ticketView.accessTitleID = ticketViewList[i].accessTitleID;
                ticketView.accessTitleMask = ticketViewList[i].accessTitleMask;
                ticketView.license = ticketViewList[i].license;
                ticketView.reserved = ticketViewList[i].reserved;
                ticketView.unk_0x55 = ticketViewList[i].unk_0x55;
                ticketView.cidxMask = ticketViewList[i].cidxMask;
                ticketView.limits = ticketViewList[i].limits;
                esErr = ES_DeleteTicket(&ticketView);

                if (esErr != ES_ERR_OK) {
                    OSReport("NandSDWorker: ES_DeleteTicket failed [%d]\n", esErr);
                    MEMFreeToExpHeap(myWork->mainHeap, ticketViewList);
                    if (esErr == ES_ERR_DONT_EXISTS) {
                        return RESULT_ES_ERROR;
                    } else {
                        return RESULT_FATAL_SD_ERROR;
                    }
                }
                OSReport("NandSDWorker: delete ticket [#%d] in 0x%016llx\n", i, titleId);
            }
            MEMFreeToExpHeap(myWork->mainHeap, ticketViewList);
        }
        return RESULT_OK;
    }

    int NandSDWorker::delete_empty_title(ESTitleId titleId, bool force) {
        int result = utility::ESMisc::CheckSafeDeleteTitle(System::getMem2Sys(), titleId);
        if (result == 1 || force) {
            s32 esErr = utility::ESMisc::DeleteTitle(System::getMem2Sys(), titleId);
            if (esErr != ES_ERR_OK) {
                OSReport("NandSDWorker: ESMisc::DeleteTitle failed [%d]\n", esErr);
                return esErr;
            }
        } else if (result < 0) {
            OSReport("NandSDWorker: ESMisc::CheckSafeDeleteTitle failed [%d]\n", result);
            return result;
        }
        return RESULT_OK;
    }

    int NandSDWorker::delete_nand_titles() {
        s32 ret;

        ESTitleId* titleIds = NULL;
        u32 titleCount = 0;

        // Get title ID count
        ESError esErr = ES_ListTitlesOnCard(NULL, &titleCount);
        if (esErr != ES_ERR_OK) {
            OSReport("NandSDWorker: ES_ListTitlesOnCard failed [%d]\n", esErr);
            ret = RESULT_FATAL_SD_ERROR;
            goto clean_up;
        }

        // Get title ID list
        titleIds = (ESTitleId*)MEMAllocFromExpHeapEx(myWork->mainHeap, titleCount * sizeof(ESTitleId), 32);
        esErr = ES_ListTitlesOnCard(titleIds, &titleCount);
        if (esErr != ES_ERR_OK) {
            OSReport("NandSDWorker: ES_ListTitlesOnCard failed [%d]\n", esErr);
            ret = RESULT_FATAL_SD_ERROR;
            goto clean_up;
        }

        // Now let's delete all titles! Except the system titles of course
        for (int i = 0; i < titleCount; i++) {
            switch ((u32)ES_TITLE_TYPE_NOMASK(titleIds[i])) {
                case ES_TITLE_TYPE(SYSMENU_TITLE_ID): {
                    // Delete Wii Menu save data.
                    if ((u32)ES_TITLE_CODE(titleIds[i]) == (u32)ES_TITLE_CODE(SYSMENU_TITLE_ID)) {
                        ret = recursion_nand_save(titleIds[i], RECURSIVE_DELETE, c_ignore_list_for_wiimenu, ARRAY_LENGTH(c_ignore_list_for_wiimenu));
                        if (ret != RESULT_OK && ret != RESULT_FATAL_SD_ERROR) {
                            OSReport("NandSDWorker: failed to delete wii menu data.\n");
                            goto clean_up;
                        }
                        OSReport("NandSDWorker: successfully initialize wii menu data.\n");
                    }
                    break;
                }
                case TITLE_TYPE_DISC:
                case TITLE_TYPE_CHANNEL:
                case TITLE_TYPE_DISC_CHANNEL:
                case TITLE_TYPE_SHARED:
                case TITLE_TYPE_UNK6:
                case TITLE_TYPE_UNK7: {
                    // Delete user installed titles
                    ret = utility::ESMisc::DeleteTitle(System::getMem2Sys(), titleIds[i]);
                    if (ret != ES_ERR_OK && ret != ES_ERR_DONT_EXISTS) {
                        OSReport("NandSDWorker: ESMisc::DeleteTitle 0x%016llx failed [%d]\n", titleIds[i], ret);
                        ret = RESULT_FATAL_SD_ERROR;
                        goto clean_up;
                    }
                    OSReport("NandSDWorker: successfully delete app [0x%016llx].\n", titleIds[i]);
                    break;
                }
                case TITLE_TYPE_SYSTEM_CHANNEL:
                case TITLE_TYPE_UNK3:
                case TITLE_TYPE_HIDDEN_CHANNEL: {
                    // Delete save data for hidden and system channels.
                    ret = recursion_nand_save(titleIds[i], RECURSIVE_DELETE, NULL, 0);
                    if (ret != RESULT_OK && ret != RESULT_FATAL_SD_ERROR) {
                        OSReport("NandSDWorker: failed to delete 0x%016llx save data.\n", titleIds[i]);
                        goto clean_up;
                    }
                    break;
                }
                default: {
                    // Unknown channel type. Don't bother to do anything with it.
                    OSReport("NandSDWorker: don't process for 0x%016llx\n", titleIds[i]);
                    break;
                }
            }
        }
        ret = RESULT_OK;

    clean_up:
        if (titleIds != NULL) {
            MEMFreeToExpHeap(myWork->mainHeap, titleIds);
        }
        return ret;
    }

    void NandSDWorker::do_get_nand_user_free_area() {
        u32 usedBlocks = 0;
        u32 usedINodes = 0;

        s32 err = nand::wrapper::SecretGetUserUsage(&usedBlocks, &usedINodes);
        if (err != NAND_RESULT_OK) {
            OSReport("NandSDWorker: NANDSecretGetUserUsage failed [%d]\n", err);
            myWork->asyncResult = RESULT_FATAL_SD_ERROR;
            return;
        }

        OSReport("NandSDWorker: user fsBlock = %d\n", usedBlocks);
        OSReport("NandSDWorker: user inode   = %d\n", usedINodes);

        myWork->asyncResult = NAND_BLOCKS_TO_BYTES(NAND_MAX_USER_BLOCKS) - NAND_BLOCKS_TO_BYTES(usedBlocks);

        OSReport("NandSDWorker: user free area = %d/%d\n", myWork->asyncResult, NAND_BLOCKS_TO_BYTES(NAND_MAX_USER_BLOCKS));
    }

    int NandSDWorker::get_nand_free_area(u32* sysNodes, u32* sysBlocks, s32* userNodes, s32* userBlocks) {
        int ret;
        NANDFileSystemStatus fsStatus;
        u32 usedUserBlocks, usedUserInodes;

        nand::wrapper::SecretGetFileSystemStatus(&fsStatus);

        s32 err = nand::wrapper::SecretGetUserUsage(&usedUserBlocks, &usedUserInodes);
        if (err != NAND_RESULT_OK) {
            OSReport("NandSDWorker: NANDSecretGetUserUsage failed [%d]\n", err);
            return RESULT_FATAL_SD_ERROR;
        }

        *userBlocks = NAND_MAX_USER_BLOCKS - usedUserBlocks;
        *userNodes = NAND_MAX_USER_INODES - usedUserInodes;
        OSReport("NandSDWorker: user free area fsblocks/inodes = %d/%d\n", *userBlocks, *userNodes);

        err = nand::wrapper::SecretGetSystemAvailableArea(&fsStatus, usedUserBlocks, usedUserInodes, sysBlocks, sysNodes);
        if (err == NAND_RESULT_OK) {
            OSReport("NandSDWorker: system free area fsblocks/inodes = %d/%d\n", *sysBlocks, *sysNodes);
        } else {
            OSReport("NandSDWorker: user area overs limit.[%d]\n", err);
            *sysBlocks = 0;
            *sysNodes = 0;
        }
        return RESULT_OK;
    }

    int NandSDWorker::check_nand_free_area(u32 sysNodes, u32 sysBlocks, s32 userNodes, s32 userBlocks) {
        u32 freeSysInodes, freeSysBlocks;
        s32 freeUserInodes, freeUserBlocks;
        if (get_nand_free_area(&freeSysInodes, &freeSysBlocks, &freeUserInodes, &freeUserBlocks) != RESULT_OK) {
            return RESULT_FATAL_SD_ERROR;
        }
        if (freeSysInodes < sysNodes) {
            OSReport("NandSDWorker: in short of system inodes. %d/%d \n", sysNodes, freeSysInodes);
            return RESULT_OUT_OF_SPACE;
        }
        if (freeSysBlocks < sysBlocks) {
            OSReport("NandSDWorker: in short of system fsblocks. %d/%d \n", sysBlocks, freeSysBlocks);
            return RESULT_OUT_OF_SPACE;
        }
        if (freeUserInodes < userNodes) {
            OSReport("NandSDWorker: in short of user inodes. %d/%d \n", userNodes, freeUserInodes);
            return RESULT_OUT_OF_SPACE;
        }
        if (freeUserBlocks < userBlocks) {
            OSReport("NandSDWorker: in short of user fsblocks. %d/%d \n", userBlocks, freeUserBlocks);
            return RESULT_OUT_OF_SPACE;
        }
        return RESULT_OK;
    }

    void NandSDWorker::do_copy_nand_save_to_sd() {
        u32 sdSaveBnrSize = 0;
        SDSaveBanner* sdSaveBnr = NULL;
        void* encSaveBnr = NULL;
        bool changedDir = false;
        bool backedUp = false;
        int isDataOnlyTitle = false;
        char bnrPath[NAND_MAX_PATH];
        char savePath[NAND_MAX_PATH];
        s32 bnrLen;
        get_sd_save_path(myWork->curTitleId, savePath);

        s64 sdFreeArea;
        u32 backupWadSize;
        NANDStatus bnrFileStatus;

        s32 err;

        int result = prepare_sd_copy(savePath);
        if (result != RESULT_OK) {
            myWork->asyncResult = result;
            goto clean_up;
        }

        sdFreeArea = get_sd_free_area();
        if (sdFreeArea < 0) {
            myWork->asyncResult = sdFreeArea;
            goto clean_up;
        }

        sdSaveBnr = (SDSaveBanner*)MEMAllocFromExpHeapEx(myWork->mainHeap, sizeof(SDSaveBanner), 32);
        memset(sdSaveBnr, 0, sizeof(SDSaveBanner));

        result = get_nand_save_banner(myWork->curTitleId, &sdSaveBnr->banner, &sdSaveBnrSize);
        if (result != RESULT_OK) {
            OSReport("NandSDWorker: get banner failed.[%d]\n", result);
            myWork->asyncResult = result;
            goto clean_up;
        }

        // Cannot copy with the nocopy flag (this is prevented by iplMemory anyway)
        sdSaveBnr->headerSize = sdSaveBnrSize;
        if ((sdSaveBnr->banner.flags & WII_SAVE_BANNER_FLAG_NOCOPY) != 0) {
            OSReport("NandSDWorker: this save data has nocopy flag.\n");
            myWork->asyncResult = RESULT_NOCOPY;
            goto clean_up;
        }
        sdSaveBnr->curTitleId = myWork->curTitleId;

        if (is_data_only_title(myWork->curTitleId)) {
            isDataOnlyTitle = true;
        }

        if (isDataOnlyTitle) {
            goto start_backup;
        }

        if (!change_uid(myWork->curTitleId)) {
            myWork->asyncResult = RESULT_FATAL_SD_ERROR;
            goto clean_up;
        }
        get_nand_data_only_title_save_path(myWork->curTitleId, bnrPath);

        strncat(bnrPath, "/", NAND_MAX_PATH);
        strncat(bnrPath, c_banner_file_name, NAND_MAX_PATH);

        err = nand::wrapper::GetStatus(bnrPath, &bnrFileStatus);
        if (check_nand_corrupt(err, &myWork->asyncResult))
            goto clean_up;
        if (err != NAND_RESULT_OK) {
            OSReport("NandSDWorker: NANDGetStatus[%s] failed %d\n", bnrPath, err);
            myWork->asyncResult = RESULT_FATAL_SD_ERROR;
            goto clean_up;
        }
        sdSaveBnr->perms = bnrFileStatus.permission;
        sdSaveBnr->attr = bnrFileStatus.attribute;

        bnrLen = nand_get_length(bnrPath);
        if (bnrLen < 0) {
            myWork->asyncResult = bnrLen;
            goto clean_up;
        }
        sdSaveBnr->headerSize = bnrLen;
        get_nand_data_only_title_save_path(myWork->curTitleId, bnrPath);

        err = nand::wrapper::ChangeDir(bnrPath);
        if (err != NAND_RESULT_OK) {
            OSReport("NandSDWorker: NANDChangeDir %s failed.[%d]\n", bnrPath, err);
            myWork->asyncResult = RESULT_FATAL_SD_ERROR;
            goto clean_up;
        }
        changedDir = true;

    start_backup:
        backupWadSize = 0;
        s32 wadErr;

        // Attempt to backup
        if (isDataOnlyTitle) {
            wadErr =
                WADBackupEx(myWork->curTitleId, 1, &myWork->unkAllocator, NULL, &backupWadSize, WAD_LOCATION_SD_CARD, sizeof(SDSaveBanner), NULL);
        } else {
            wadErr =
                WADBackupEx(myWork->curTitleId, 14, &myWork->unkAllocator, NULL, &backupWadSize, WAD_LOCATION_SD_CARD, sizeof(SDSaveBanner), NULL);
        }
        if (wadErr == WAD_ERROR_NOCOPY) {
            OSReport("NandSDWorker: WADBackup 0x%016llx failed, this save data has nocopy only.[%d]\n", myWork->curTitleId, wadErr);
            myWork->asyncResult = RESULT_NOCOPY;
            goto clean_up;
        } else if (wadErr != 0) {
            OSReport("NandSDWorker: WADBackup %s failed.[%d]\n", bnrPath, wadErr);
            myWork->asyncResult = RESULT_FATAL_SD_ERROR;
            goto clean_up;
        }

        if (backupWadSize + sizeof(SDSaveBanner) > sdFreeArea) {
            OSReport("NandSDWorker: backup size [%d] is too large for SD card.\n", backupWadSize);
            myWork->asyncResult = RESULT_OUT_OF_SPACE;
            goto clean_up;
        }
        memcpy(sdSaveBnr->MD5Sum, c_md5_secret_key, NET_MD5_DIGEST_SIZE);

        NETMD5Sum MD5Sum;
        NETCalcMD5(MD5Sum, sdSaveBnr, sizeof(SDSaveBanner));

        memcpy(sdSaveBnr->MD5Sum, MD5Sum, NET_MD5_DIGEST_SIZE);
        encSaveBnr = MEMAllocFromAllocator(&myWork->unkAllocator, sizeof(SDSaveBanner));
        if (encrypt(sdSaveBnr, sizeof(SDSaveBanner), encSaveBnr) != RESULT_OK) {
            myWork->asyncResult = RESULT_FATAL_SD_ERROR;
            goto clean_up;
        }

        backedUp = true;
        if (isDataOnlyTitle) {
            wadErr = WADBackupEx(myWork->curTitleId, 1, &myWork->unkAllocator, savePath, &backupWadSize, WAD_LOCATION_SD_CARD, 0xf0c0, NULL);
        } else {
            wadErr = WADBackupEx(myWork->curTitleId, 14, &myWork->unkAllocator, savePath, &backupWadSize, WAD_LOCATION_SD_CARD, 0xf0c0, NULL);
        }
        if (wadErr == WAD_ERROR_NOCOPY) {
            OSReport("NandSDWorker: WADBackup 0x%016llx failed, this save data has nocopy only.[%d]\n", myWork->curTitleId, wadErr);
            myWork->asyncResult = RESULT_NOCOPY;
            goto clean_up;
        } else if (wadErr != 0) {
            OSReport("NandSDWorker: WADBackup %s failed.[%d]\n", bnrPath, wadErr);
            myWork->asyncResult = RESULT_FATAL_SD_ERROR;
            goto clean_up;
        }
        OSReport("NandSDWorker: make wad backup, size = [%d].\n", backupWadSize);

        FAFILE* stream;
        stream = FAFopen(savePath, "r+");
        if (stream == NULL) {
            OSReport("NandSDWorker: FAFopen %s failed.\n", savePath);
            handle_sd_error(FA_ERR_SYSTEM, &myWork->asyncResult);
            goto clean_up;
        }
        OSReport("NandSDWorker: create %s in sd.\n", savePath);

        if (handle_sd_error(FAFseek(stream, 0, FA_SEEK_ORIGIN_BEGIN), &myWork->asyncResult) != RESULT_OK) {
            OSReport("NandSDWorker: FAFseek %s failed.\n", savePath);
            FAFclose(stream);
            goto clean_up;
        }

        size_t fwriteRes;
        fwriteRes = FAFwrite(encSaveBnr, sizeof(SDSaveBanner), 1, stream);
        if (fwriteRes != 1) {
            OSReport("NandSDWorker: FAFwrite %s failed.[%d]\n", savePath, fwriteRes);
            handle_sd_error(FA_ERR_SYSTEM, &myWork->asyncResult);
            FAFclose(stream);
            goto clean_up;
        }

        if (handle_sd_error(FAFclose(stream), &myWork->asyncResult) != RESULT_OK) {
            OSReport("NandSDWorker: FAFclose %s failed.\n", savePath);
            goto clean_up;
        }

        int nocopyExists, notransferExists;
        nocopyExists = item_exist_nand_save_folder(myWork->curTitleId, c_nocopy_folder_name);
        notransferExists = item_exist_nand_save_folder(myWork->curTitleId, c_notransfer_folder_name);

        bool dataOnlyTitle;
        dataOnlyTitle = false;
        if (isDataOnlyTitle) {
            dataOnlyTitle = true;
        }
        myWork->asyncResult = nocopyExists | (notransferExists << 1) | (dataOnlyTitle << 2);
        myWork->sdSaveNum++;

    clean_up:
        if (sdSaveBnr != NULL) {
            MEMFreeToExpHeap(myWork->mainHeap, sdSaveBnr);
        }
        if (encSaveBnr != NULL) {
            MEMFreeToAllocator(&myWork->unkAllocator, encSaveBnr);
        }

        change_uid(SYSMENU_TITLE_ID);
        if (changedDir) {
            err = nand::wrapper::ChangeDir(c_wii_menu_save_path);
            if (err != NAND_RESULT_OK) {
                OSReport("NandSDWorker: NANDChangeDir %s failed.[%d]\n", c_wii_menu_save_path, err);
            }
        }
        if (myWork->asyncResult < RESULT_OK && backedUp) {
            int result = handle_sd_error_for_entry(FARemove(savePath), NULL);
            if (result == RESULT_OK) {
                OSReport("NandSDWorker: remove %s because copy is not done correctly.\n", savePath);
            } else {
                OSReport("NandSDWorker: FARemove %s failed.[%d]\n", savePath, result);
            }
        }
    }

    int NandSDWorker::prepare_sd_copy(const char* path) {
        FAFileStat fileStat;
        int err;

        FAError faErr = FAFstat(path, &fileStat);

        err = handle_sd_error_for_entry(faErr, NULL);
        if (err == RESULT_OK) {
            if (fileStat.size > sizeof(SDSaveBanner) && is_fa_file(fileStat.stat)) {
                OSReport("NandSDWorker: sd data [%s] already exists.\n", path);
                return RESULT_ALREADY_EXISTS;
            }
            if (faErr == FA_ERR_SUCCESS) {
                err = handle_sd_error_for_entry(FARemove(path), NULL);
                if (err != RESULT_OK && err != RESULT_FATAL_SD_ERROR) {
                    OSReport("NandSDWorker: FARemove %s failed.[%d]\n", path, err);
                    return err;
                }
            }
        } else if (err == RESULT_FATAL_SD_ERROR) {
            err = create_sd_backup_dir(myWork->curTitleId);
            if (err != RESULT_OK) {
                OSReport("NandSDWorker: create sd backup dir failed.[%d]\n", err);
                return err;
            }
        } else {
            OSReport("NandSDWorker: FAFstat %s failed.[%d]\n", path, err);
            return err;
        }
        return RESULT_OK;
    }

    int NandSDWorker::create_sd_backup_dir(ESTitleId titleId) {
        char path[NAND_MAX_PATH];

        ESTitleId32 titleCode = ES_TITLE_CODE(titleId);
        const char* c_sd_app_location_paths[4] = {
            NULL,
            "/private/wii/title",
            "/private/wii",
            "/private",
        };

        if (is_data_only_title(titleId)) {
            snprintf(path, NAND_MAX_PATH, "/private/wii/title/%08x", titleCode);
        } else {
            snprintf(path, NAND_MAX_PATH, "/private/wii/title/%c%c%c%c", (u8)(titleCode >> 0x18), (u8)(titleCode >> 0x10), (u8)(titleCode >> 0x08),
                     (u8)titleCode);
        }
        c_sd_app_location_paths[0] = path;

        const char* fileName;
        u32 i;
        for (i = 0; i < (int)ARRAY_LENGTH(c_sd_app_location_paths); i++) {
            fileName = c_sd_app_location_paths[i];

            FAFileStat fileStat;
            int result = handle_sd_error_for_entry(FAFstat(fileName, &fileStat), NULL);
            if (result == RESULT_OK) {
                if ((fileStat.stat & FA_FILE_STAT_DIR) == 0) {
                    OSReport("NandSDWorker: %s is not a dir.[%d]\n", fileName, fileStat.stat);
                    return RESULT_UNK_N12;
                }
                break;
            }
            if (result != RESULT_FATAL_SD_ERROR) {
                OSReport("NandSDWorker: FAFstat %s failed.[%d]\n", fileName, result);
                return result;
            }
        }

        if (i != 0) {
            return create_sd_dir(c_sd_app_location_paths[i - 1], path);
        } else {
            return RESULT_OK;
        }
    }

    int NandSDWorker::create_sd_dir(const char* base, const char* final) {
        char curPath[NAND_MAX_PATH];
        int result;

        u32 curLen = strlen(base);
        u32 finalLen = strlen(final);
        strncpy(curPath, base, NAND_MAX_PATH);

        while (true) {
            FADta fileDta;
            memset(&fileDta, 0, sizeof(FADta));
            result = handle_sd_error_for_entry(FACreatedir(curPath, 0, &fileDta), NULL);
            if (result != RESULT_OK) {
                OSReport("NandSDWorker: FACreatedir %s failed.[%d]\n", curPath, result);
                return result;
            }

            OSReport("NandSDWorker: create sd card dir [%s].\n", curPath);
            if (curLen + 1 >= finalLen) {
                break;
            }

            strncpy(curPath, final, NAND_MAX_PATH);

            char* nextSlash = strstr(curLen + 1 + curPath, "/");
            if (nextSlash != NULL) {
                *nextSlash = '\0';
            }
            curLen = strlen(curPath);
        }
        return RESULT_OK;
    }

    void NandSDWorker::do_copy_sd_save_to_nand() {
        bool hasNotransfer = false;
        SDSaveBanner* saveBanner;

        char sdSavePath[NAND_MAX_PATH];
        char targetPath[NAND_MAX_PATH];
        char tmpPath[NAND_MAX_PATH];
        char unusedPath[NAND_MAX_PATH] = "";

        bool changedDir = false;
        bool isDataOnlyTitle = false;
        get_sd_save_path(myWork->curTitleId, sdSavePath);
        saveBanner = (SDSaveBanner*)MEMAllocFromAllocator(&myWork->unkAllocator, sizeof(SDSaveBanner));
        int getSaveBannerRes = get_sd_save_banner(myWork->curTitleId, saveBanner);
        if (getSaveBannerRes != RESULT_OK) {
            myWork->asyncResult = getSaveBannerRes;
            goto clean_up;
        }

        ESTitleId wadTitleId;
        u16 titleVersion;

        s32 wadErr;
        wadErr = WADGetTitleVersionEx(sdSavePath, &wadTitleId, &titleVersion, WAD_LOCATION_SD_CARD, sizeof(SDSaveBanner));
        if (wadErr != WAD_ERROR_OK) {
            OSReport("NandSDWorker: WADGetTitleVersionEx failed.[%d]\n", wadErr);
            myWork->asyncResult = RESULT_FATAL_SD_ERROR;
            goto clean_up;
        }

        if (wadTitleId != saveBanner->curTitleId) {
            OSReport("NandSDWorker: titleid %016llx in wad is different from %016llx in banner %s.\n", wadTitleId, saveBanner->curTitleId,
                     sdSavePath);
            myWork->asyncResult = RESULT_BAD_FILE;
            goto clean_up;
        }

        if (is_data_only_title(saveBanner->curTitleId)) {
            isDataOnlyTitle = true;
            if (nand_app_exist_ex(saveBanner->curTitleId)) {
                OSReport("NandSDWorker: titleid = 0x%016llx is already in nand.\n", saveBanner->curTitleId);
                myWork->asyncResult = RESULT_ALREADY_EXISTS;
                goto clean_up;
            }
        }
        if (!isDataOnlyTitle) {
            ESError esErr = utility::ESMisc::PrepareTitleDir(saveBanner->curTitleId, System::getMem2Sys());
            if (esErr == ES_ERR_NO_TMD_FILE_FOUND) {
                OSReport("NandSDWorker: titleid = 0x%016llx is not installed.\n", saveBanner->curTitleId);
                myWork->asyncResult = RESULT_ES_ERROR;
                goto clean_up;
            }
            if (esErr != ES_ERR_OK) {
                myWork->asyncResult = RESULT_FATAL_SD_ERROR;
                goto clean_up;
            }

            if (!change_uid(saveBanner->curTitleId)) {
                OSReport("NandSDWorker: titleid = 0x%016llx is not installed.\n", saveBanner->curTitleId);
                myWork->asyncResult = RESULT_ES_ERROR;
                goto clean_up;
            }

            if (check_nand_save_banner_exist(saveBanner->curTitleId)) {
                OSReport("NandSDWorker: titleid = 0x%016llx is already in nand.\n", saveBanner->curTitleId);
                myWork->asyncResult = RESULT_ALREADY_EXISTS;
                goto clean_up;
            }
            get_nand_data_only_title_save_path(saveBanner->curTitleId, targetPath);

            s32 nandErr = nand::wrapper::Delete(c_tmp_work_path);
            if (check_nand_corrupt(nandErr, &myWork->asyncResult)) {
                goto clean_up;
            }

            nandErr = nand::wrapper::CreateDir(c_tmp_work_path, NAND_PERM_USER_READ | NAND_PERM_USER_WRITE, 0);
            if (check_nand_corrupt(nandErr, &myWork->asyncResult)) {
                goto clean_up;
            }
            if (nandErr != NAND_RESULT_OK) {
                OSReport("NandSDWorker: NANDCreateDir %s failed.[%d]\n", c_tmp_work_path, nandErr);
                myWork->asyncResult = RESULT_FATAL_SD_ERROR;
                goto clean_up;
            }
            nandErr = nand::wrapper::ChangeDir(c_tmp_work_path);
            if (nandErr != NAND_RESULT_OK) {
                OSReport("NandSDWorker: NANDChangeDir %s failed.[%d]\n", c_tmp_work_path, nandErr);
                myWork->asyncResult = RESULT_FATAL_SD_ERROR;
                goto clean_up;
            }
            changedDir = true;
        }

        WADBlocks wadBlocks;
        wadErr = WADImportGetBlocks(sdSavePath, &myWork->unkAllocator, WAD_LOCATION_SD_CARD, sizeof(SDSaveBanner), 1, &wadBlocks, NULL);
        if (wadErr == WAD_ERROR_INCORRECT_DEVICE) {
            OSReport("NandSDWorker: WADImportGetBlocks failed, not original Wii.[%d]\n", wadErr);
            myWork->asyncResult = RESULT_NOT_TRANSFERRABLE;
            goto clean_up;
        } else if (wadErr != WAD_ERROR_OK) {
            OSReport("NandSDWorker: WADImportGetBlocks failed.[%d]\n", wadErr);
            myWork->asyncResult = RESULT_BAD_FILE;
            goto clean_up;
        }

        OSReport("NandSDWorker: shared content inodes/blocks = %d/%d\n", wadBlocks.sharedInodes, wadBlocks.sharedBlocks);
        OSReport("NandSDWorker: private content inodes/blocks = %d/%d\n", wadBlocks.privateInodes, wadBlocks.privateBlocks);
        OSReport("NandSDWorker: file inodes/blocks = %d/%d\n", wadBlocks.fileInodes, wadBlocks.fileBlocks);
        int result;
        result =
            check_nand_free_area(wadBlocks.sharedInodes, wadBlocks.sharedBlocks, wadBlocks.privateInodes + wadBlocks.fileInodes + 1,
                                 (saveBanner->headerSize + NAND_BLOCK_SIZE - 1) / NAND_BLOCK_SIZE + wadBlocks.fileBlocks + wadBlocks.privateBlocks);
        if (result != RESULT_OK) {
            myWork->asyncResult = result;
            goto clean_up;
        }

        if (!isDataOnlyTitle) {
            WADBackupHeader wadBackupHeader;
            result = get_sd_wad_header(myWork->curTitleId, &wadBackupHeader, 0);
            if (result != RESULT_OK) {
                myWork->asyncResult = result;
                goto clean_up;
            }

            if (wadBlocks.fileInodes == 0) {
                if (wadBackupHeader.numFiles != 0) {
                    OSReport("NandSDWorker: this save data includes only notransfer.\n");
                    myWork->asyncResult = RESULT_NOT_TRANSFERRABLE;
                    goto clean_up;
                }
            }
            if (wadBlocks.fileInodes < wadBackupHeader.numFiles - 1) {
                OSReport("NandSDWorker: this save data includes notransfer, %d files/directries not copied.\n",
                         wadBackupHeader.numFiles - wadBlocks.fileInodes);
                hasNotransfer = true;
            }
        }

        wadErr = WADImportEx(sdSavePath, &myWork->unkAllocator, WAD_LOCATION_SD_CARD, sizeof(SDSaveBanner), 8, NULL);
        if (wadErr != WAD_ERROR_OK) {
            OSReport("NandSDWorker: WADRestoreSDEx failed.[%d]\n", wadErr);
            if (isDataOnlyTitle) {
                if (nand_app_exist_ex(saveBanner->curTitleId) != EXISTENCE_COMPLETE) {
                    int delNandAppContentRes = delete_nand_app_content(saveBanner->curTitleId);
                    if (delNandAppContentRes == RESULT_NAND_CORRUPT) {
                        myWork->asyncResult = RESULT_NAND_CORRUPT;
                        goto clean_up;
                    }
                    if (delNandAppContentRes != RESULT_OK) {
                        OSReport("NandSDWorker: delete title 0x%016llx content failed.[%d]\n", saveBanner->curTitleId, delNandAppContentRes);
                    }
                }
            }
            myWork->asyncResult = RESULT_BAD_FILE;
            goto clean_up;
        }

        if (!isDataOnlyTitle) {
            strncpy(tmpPath, c_tmp_work_path, NAND_MAX_PATH);
            strncat(tmpPath, "/", NAND_MAX_PATH);
            strncat(tmpPath, c_banner_file_name, NAND_MAX_PATH);

            s32 nandErr = nand::wrapper::Create(tmpPath, saveBanner->perms, saveBanner->attr);
            if (check_nand_corrupt(nandErr, &myWork->asyncResult)) {
                goto clean_up;
            }
            if (nandErr != NAND_RESULT_OK) {
                OSReport("NandSDWorker: NANDCreate %s failed [%d]\n", tmpPath, nandErr);
                myWork->asyncResult = RESULT_FATAL_SD_ERROR;
                goto clean_up;
            }

            NANDFileInfo fileInfo;
            s32 err = nand::wrapper::Open(tmpPath, &fileInfo, NAND_ACCESS_WRITE);
            if (err != NAND_RESULT_OK) {
                OSReport("NandSDWorker: NANDOpen %s failed [%d]\n", tmpPath, err);
                myWork->asyncResult = RESULT_FATAL_SD_ERROR;
                goto clean_up;
            }

            nandErr = nand::wrapper::Write(&fileInfo, &saveBanner->banner, saveBanner->headerSize);
            if (check_nand_corrupt(nandErr, &myWork->asyncResult)) {
                nand::wrapper::Close(&fileInfo);
                goto clean_up;
            }
            if (nandErr < saveBanner->headerSize) {
                OSReport("NandSDWorker: NANDWrite %s failed [%d]\n", tmpPath, nandErr);
                myWork->asyncResult = RESULT_FATAL_SD_ERROR;
                nand::wrapper::Close(&fileInfo);
                goto clean_up;
            }

            nandErr = nand::wrapper::Close(&fileInfo);
            if (check_nand_corrupt(nandErr, &myWork->asyncResult))
                goto clean_up;
            if (nandErr != NAND_RESULT_OK) {
                OSReport("NandSDWorker: NANDClose %s failed [%d]\n", tmpPath, nandErr);
                myWork->asyncResult = RESULT_FATAL_SD_ERROR;
                goto clean_up;
            }

            result = recursion_nand(c_tmp_work_path, targetPath, RECURSIVE_MOVE, NULL, 0);
            if (result != RESULT_OK) {
                OSReport("NandSDWorker: failed to move files from %s to %s.\n", c_tmp_work_path, targetPath);
                myWork->asyncResult = result;
                goto clean_up;
            }
            OSReport("NandSDWorker: import save data titleid = 0x%016llx.\n", saveBanner->curTitleId);
            if (hasNotransfer) {
                myWork->asyncResult = 1;
            } else {
                myWork->asyncResult = 0;
            }
        }
        myWork->nandSaveNum++;
    clean_up:
        if (!isDataOnlyTitle) {
            check_nand_corrupt(nand::wrapper::Delete(c_tmp_work_path), &myWork->asyncResult);
            change_uid(SYSMENU_TITLE_ID);
            if (changedDir) {
                s32 nandErr = nand::wrapper::ChangeDir(c_wii_menu_save_path);
                if (nandErr != NAND_RESULT_OK) {
                    OSReport("NandSDWorker: NANDChangeDir %s failed.[%d]\n", c_wii_menu_save_path, nandErr);
                    myWork->asyncResult = RESULT_FATAL_SD_ERROR;
                }
            }
        }
        if (saveBanner != NULL) {
            MEMFreeToAllocator(&myWork->unkAllocator, saveBanner);
        }
    }

    int NandSDWorker::get_sd_save_banner(ESTitleId32 titleId, SDSaveBanner* banner) {
        s32 ret;
        SDSaveBanner* encBanner = (SDSaveBanner*)MEMAllocFromExpHeapEx(myWork->mainHeap, sizeof(SDSaveBanner), 32);
        if (banner == NULL || encBanner == NULL) {
            OSReport("NandSDWorker: Failed to allocate buffer.\n");
            ret = RESULT_FATAL_SD_ERROR;
            goto clean_up;
        }

        char sdSavePath[NAND_MAX_PATH];
        get_sd_save_path(titleId, sdSavePath);
        FAFILE* fStream;
        fStream = FAFopen(sdSavePath, "r");
        if (fStream == NULL) {
            OSReport("NandSDWorker: FAFopen %s failed.\n", sdSavePath);
            handle_sd_error_for_entry(FA_ERR_SYSTEM, &ret);
            goto clean_up;
        }

        if (FAFread(encBanner, sizeof(SDSaveBanner), 1, fStream) != 1) {
            ret = handle_sd_error_for_entry(FA_ERR_SYSTEM, NULL);
            if (ret == RESULT_OK || ret == RESULT_FATAL_SD_ERROR) {
                ret = RESULT_BAD_FILE;
            }
            FAFclose(fStream);
            goto clean_up;
        }

        if (handle_sd_error_for_entry(FAFclose(fStream), &ret) != RESULT_OK) {
            OSReport("NandSDWorker: FAFclose failed.\n");
            goto clean_up;
        }

        if (decrypt(encBanner, sizeof(SDSaveBanner), banner) != RESULT_OK) {
            ret = RESULT_BAD_FILE;
            goto clean_up;
        }
        NETMD5Sum MD5Sum;
        memcpy(MD5Sum, banner->MD5Sum, NET_MD5_DIGEST_SIZE);
        memcpy(banner->MD5Sum, &c_md5_secret_key, NET_MD5_DIGEST_SIZE);

        if (!check_md5(MD5Sum, (u8*)banner, sizeof(SDSaveBanner))) {
            OSReport("NandSDWorker: banner file %s md5 digest is not correct.\n", sdSavePath);
            ret = RESULT_BAD_FILE;
        } else if (titleId == (ESTitleId32)ES_TITLE_CODE(banner->curTitleId) && banner->banner.signature == WII_SAVE_BANNER_SIGNATURE) {
            ret = RESULT_OK;
        } else {
            OSReport("NandSDWorker: banner file %s signature is not correct\n", sdSavePath);
            ret = RESULT_BAD_FILE;
        }

    clean_up:
        MEMFreeToExpHeap(myWork->mainHeap, encBanner);
        return ret;
    }

    int NandSDWorker::get_sd_wad_header(ESTitleId32 titleId, WADBackupHeader* wadBackupHeader, u32 offset) {
        s32 ret;
        char path[NAND_MAX_PATH];

        u32 fileOffset;
        if (offset == 0) {
            fileOffset = sizeof(SDSaveBanner);
            get_sd_save_path(titleId, path);
        } else {
            fileOffset = offset + sizeof(SDAppBanner);
            get_sd_app_path(titleId, path);
        }

        FAFILE* fStream = FAFopen(path, "r");
        if (fStream == NULL) {
            OSReport("NandSDWorker: FAFopen %s failed.\n", path);
            handle_sd_error_for_entry(FA_ERR_SYSTEM, &ret);
            goto ret;
        }

        if (handle_sd_error_for_entry(FAFseek(fStream, fileOffset, FA_SEEK_ORIGIN_BEGIN), &ret) != RESULT_OK) {
            OSReport("NandSDWorker: FAFseek %s failed.\n", path);
            FAFclose(fStream);
            goto ret;
        }

        if (FAFread(wadBackupHeader, sizeof(WADBackupHeader), 1, fStream) != 1) {
            ret = handle_sd_error_for_entry(FA_ERR_SYSTEM, NULL);
            if (ret == RESULT_OK) {
                ret = RESULT_BAD_FILE;
            }
            FAFclose(fStream);
            goto ret;
        }

        if (handle_sd_error_for_entry(FAFclose(fStream), &ret) != RESULT_OK) {
            OSReport("NandSDWorker: FAFclose failed.\n");
            goto ret;
        }

        ret = RESULT_OK;
    ret:
        return ret;
    }

    void NandSDWorker::do_format_sd() {
        if (s_sd_state != SD_STATE_READY && s_sd_state != SD_STATE_BROKEN) {
            OSReport("NandSDWorker: cannot format sd because of illegal sd state.[%d]\n", s_sd_state);
            myWork->asyncResult = RESULT_FATAL_SD_ERROR;
            return;
        }

        FAError faErr = FAFormat(myWork->driveTable.drive, 0);
        if (faErr != FA_ERR_SUCCESS && FAErrnum() == FA_ERR_ENOEXEC) {
            OSReport("NandSDWorker: SD card MBR is broken. cannot use this media.\n");
            s_sd_state = SD_STATE_BROKEN;
            myWork->asyncResult = RESULT_BROKEN_MEDIA;
            return;
        }

        if (handle_sd_error(faErr, &myWork->asyncResult) == RESULT_OK) {
            OSReport("NandSDWorker: successfully format sd.\n");
            s_sd_state = SD_STATE_READY;
            if (myWork->saveCacheHeap != NULL) {
                clear_save_cache(&myWork->sdSaveList);
                myWork->sdSaveNum = 0;
            }
            if (myWork->appCacheHeap != NULL) {
                clear_app_cache(&myWork->sdAppList);
                myWork->sdAppNum = 0;
            }
        } else {
            OSReport("NandSDWorker: FAFormat failed.[%d]\n", myWork->asyncResult);
        }
    }

    u64 NandSDWorker::get_sd_free_area() {
        FADevInf devInf;
        FAError faErr = FAGetdev(myWork->driveTable.drive, &devInf);
        int handleSdErr = handle_sd_error(faErr, NULL);
        if (handleSdErr == NULL) {
            OSReport("NandSDWorker: SD card free area = %llu\n", (u64)devInf.ecl * devInf.spc * devInf.bps);
            return (s64)devInf.ecl * devInf.spc * devInf.bps;
        } else {
            OSReport("NandSDWorker: FAGetdev failed.[%d]\n", handleSdErr);
            return handleSdErr;
        }
    }

    int NandSDWorker::delete_download_task(ESTitleId32 titleId) {
        void* nwc24Work;
        int ret = RESULT_OK;
        nwc24Work = MEMAllocFromExpHeapEx(myWork->mainHeap, NWC24_LIB_WORK_SIZE, 32);

        OSTick startTick = OSGetTick();

        goto open_lib;
        while (true) {
            OSReport("NandSDWorker: waiting NWC24Open.\n");
            OSSleepTicks(OSMillisecondsToTicks((OSTime)30));
            if (OSTicksToMilliseconds(OSGetTick() - startTick) > 3000) {
                ret = RESULT_FATAL_SD_ERROR;
                OSReport("NandSDWorker: NWC24Open failed.\n");
                break;
            }

        open_lib:
            if (NWC24OpenLib(nwc24Work) != NWC24_OK) {
                continue;
            }

            u16 dlId = 0;
            NWC24Err nwc24Err;
            for (nwc24Err = NWC24IterateDlTask(&dlId, TRUE); nwc24Err >= NWC24_OK; nwc24Err = NWC24IterateDlTask(&dlId, FALSE)) {
                NWC24DlTask dlTask;
                nwc24Err = NWC24GetDlTask(&dlTask, dlId);
                if (nwc24Err != NWC24_OK) {
                    OSReport("NandSDWorker: NWC24GetDlTask failed - [%d]  -> continue\n", nwc24Err);
                    continue;
                }

                u32 dlAppId;
                nwc24Err = NWC24GetDlAppId(&dlTask, &dlAppId);
                if (nwc24Err != NWC24_OK) {
                    OSReport("NandSDWorker: NWC24GetDlAppId failed - [%d]  -> continue\n", nwc24Err);
                    continue;
                }

                if (dlAppId == titleId) {
                    OSReport("NandSDWorker: found dl task owned same titleid [%p]\n", &dlTask);
                    nwc24Err = NWC24DeleteDlTask(&dlTask);
                    if (nwc24Err != NWC24_OK) {
                        // @bug this should say NWC24DeleteDlTask, looks like it was copy-pasted from above
                        OSReport("NandSDWorker: NWC24GetDlAppId failed - [%d]  -> continue\n", nwc24Err);
                    } else {
                        OSReport("NandSDWorker: delete download task for index : %d\n", dlId);
                    }
                } else {
                    OSReport("NandSDWorker: ignore title id %d: %08x \n", dlId, dlAppId);
                }
            }
            nwc24Err = NWC24CloseLib();
            if (nwc24Err != NWC24_OK) {
                OSReport("NandSDWorker: NWC24CloseLib failed - [%d]  -> continue\n", nwc24Err);
            }
            break;
        }

    clean_up:
        if (nwc24Work != NULL) {
            MEMFreeToExpHeap(myWork->mainHeap, nwc24Work);
        }
        OSReport("NandSDWorker: delete download task for %08x\n", titleId);
        return ret;
    }

    int NandSDWorker::delete_nand_app_content(ESTitleId titleId) {
        if (!is_user_nand_app(titleId)) {
            OSReport("NandSDWorker: 0x%016llx is not nand app, cannot delete.\n", titleId);
            return RESULT_FATAL_SD_ERROR;
        }

        int result = delete_meta_file(titleId);
        if (result != RESULT_OK) {
            return result;
        }

        result = ES_DeleteTitleContent(titleId);
        if (result != RESULT_OK) {
            OSReport("NandSDWorker: ES_DeleteTitleContent failed [%d]\n", result);
            return RESULT_FATAL_SD_ERROR;
        }

        OSReport("NandSDWorker: delete title 0x%016llx content.\n", titleId);

        // Force delete TV Remote channel
        result = delete_empty_title(titleId, ES_TITLE_CODE(titleId & 0xFFFFFF00) == ES_TITLE_CODE(TITLE_TVRC));
        if (result != RESULT_OK) {
            return RESULT_FATAL_SD_ERROR;
        }

        result = delete_download_task(titleId);
        if (result != RESULT_OK) {
            OSReport("NandSDWorker: delete download task failed [%d]\n", result);
        }

        return result;
    }

    void NandSDWorker::do_copy_nand_app_to_sd() {
        SDAppBackupData* sdBanner = (SDAppBackupData*)MEMAllocFromExpHeapEx(myWork->mainHeap, sizeof(SDAppBackupData), 32);
        SDAppBackupData* encBanner = NULL;
        bool backedUp = false;

        char sdAppPath[NAND_MAX_PATH];
        get_sd_app_path(myWork->curTitleId, sdAppPath);

        int result;
        result = prepare_sd_copy(sdAppPath);
        if (result != RESULT_OK) {
            myWork->asyncResult = result;
            goto clean_up;
        }

        s64 sdFreeArea;
        sdFreeArea = get_sd_free_area();
        if (sdFreeArea < 0) {
            myWork->asyncResult = sdFreeArea;
            goto clean_up;
        }

        result = get_app_banner_from_meta(myWork->curTitleId, sdBanner);
        if (result != RESULT_OK) {
            myWork->asyncResult = result;
            goto clean_up;
        }

        sdBanner->head.titleId = myWork->curTitleId;

        u32 wadSize, wadOffset;
        wadSize = 0;
        wadOffset = ROUNDUP(sdBanner->head.thumbSize, 64) + sizeof(SDAppBanner);

        result = WADBackupEx(myWork->curTitleId, 1, &myWork->unkAllocator, NULL, &wadSize, WAD_LOCATION_SD_CARD, wadOffset, NULL);
        if (result != 0) {
            OSReport("NandSDWorker: WADBackup failed.[%d]\n", result);
            myWork->asyncResult = RESULT_FATAL_SD_ERROR;
            goto clean_up;
        }

        if (wadOffset + wadSize > sdFreeArea) {
            OSReport("NandSDWorker: backup size [%d] is too large for SD card.\n", wadSize);
            myWork->asyncResult = RESULT_OUT_OF_SPACE;
            goto clean_up;
        }

        NETMD5Sum MD5Sum;

        // FAKEMATCH: Should be using NETCalcMD5, but thumbPtr had to ruin everything.
        NETMD5Context context;
        NETMD5Init(&context);
        void* thumbPtr;
        thumbPtr = sdBanner->thumbnail;
        NETMD5Update(&context, thumbPtr, wadOffset - sizeof(SDAppBanner));
        NETMD5GetDigest(&context, MD5Sum);
        memcpy(sdBanner->head.iconMD5, MD5Sum, NET_MD5_DIGEST_SIZE);
        memcpy(sdBanner->head.headerMD5, &c_md5_secret_key, NET_MD5_DIGEST_SIZE);

        NETCalcMD5(MD5Sum, sdBanner, sizeof(SDAppBanner));
        memcpy(sdBanner->head.headerMD5, MD5Sum, NET_MD5_DIGEST_SIZE);

        encBanner = (SDAppBackupData*)MEMAllocFromAllocator(&myWork->unkAllocator, wadOffset);
        if (encrypt(&sdBanner->head, sizeof(SDAppBanner), &encBanner->head) != RESULT_OK) {
            myWork->asyncResult = RESULT_FATAL_SD_ERROR;
            goto clean_up;
        }

        if (encrypt(thumbPtr, wadOffset - sizeof(SDAppBanner), encBanner->thumbnail) != RESULT_OK) {
            myWork->asyncResult = RESULT_FATAL_SD_ERROR;
            goto clean_up;
        }

        backedUp = true;

        s32 wadErr;
        wadErr = WADBackupEx(myWork->curTitleId, 1, &myWork->unkAllocator, sdAppPath, &wadSize, WAD_LOCATION_SD_CARD, wadOffset,
                             wad_backup_progress_callback);
        if (wadErr != WAD_ERROR_OK) {
            OSReport("NandSDWorker: WADBackup failed.[%d]\n", wadErr);
            myWork->asyncResult = RESULT_FATAL_SD_ERROR;
            goto clean_up;
        }
        OSReport("NandSDWorker: make wad backup, size = [%d].\n", wadSize);

        FAFILE* fStream;
        fStream = FAFopen(sdAppPath, "r+");
        if (fStream == NULL) {
            OSReport("NandSDWorker: FAFopen %s failed.\n", sdAppPath);
            handle_sd_error(FA_ERR_SYSTEM, &myWork->asyncResult);
            goto clean_up;
        }
        OSReport("NandSDWorker: create %s in sd.\n", sdAppPath);

        if (handle_sd_error(FAFseek(fStream, 0, FA_SEEK_ORIGIN_BEGIN), &myWork->asyncResult) != RESULT_OK) {
            OSReport("NandSDWorker: FAFseek %s failed.\n", sdAppPath);
            FAFclose(fStream);
            goto clean_up;
        }

        wadOffset = FAFwrite(encBanner, wadOffset, 1, fStream);
        if (wadOffset != 1) {
            OSReport("NandSDWorker: FAFwrite %s failed.[%d]\n", sdAppPath, wadOffset);
            handle_sd_error(FA_ERR_SYSTEM, &myWork->asyncResult);
            FAFclose(fStream);
            goto clean_up;
        }

        if (handle_sd_error(FAFclose(fStream), &myWork->asyncResult) != RESULT_OK) {
            OSReport("NandSDWorker: FAFclose %s failed.\n", sdAppPath);
            goto clean_up;
        }

        myWork->sdAppNum++;
        myWork->asyncResult = RESULT_OK;

    clean_up:
        MEMFreeToExpHeap(myWork->mainHeap, sdBanner);
        if (encBanner != NULL) {
            MEMFreeToAllocator(&myWork->unkAllocator, encBanner);
        }
        if (myWork->asyncResult < RESULT_OK && backedUp) {
            result = handle_sd_error_for_entry(FARemove(sdAppPath), NULL);
            if (result == RESULT_OK) {
                OSReport("NandSDWorker: remove %s because copy is not done correctly.\n", sdAppPath);
            } else {
                OSReport("NandSDWorker: FARemove %s failed.[%d]\n", sdAppPath, result);
            }
        }
    }

    int NandSDWorker::get_save_banner_for_data_only_title(ESTitleId titleId, WIISaveBannerFile* fileOut, u32* sizeOut) {
        int ret;
        u32 contentSize;
        ESTicketView* ticketView = NULL;

        int result = open_nand_app_content(titleId, 0, &contentSize, &ticketView);
        if (result < RESULT_OK) {
            OSReport("NandSDWorker: can't open banner file for data only title [0x%016llx]\n", titleId);
            return RESULT_FATAL_SD_ERROR;
        }

        void* fd = (void*)result;

        contentSize -= 0x40;
        if (contentSize < WII_SAVE_BANNER_NORMAL_SIZE) {
            OSReport("NandSDWorker: banner file is too small [%d]\n", contentSize);
            ret = RESULT_BAD_FILE;
            goto clean_up;
        } else if (contentSize > WII_SAVE_BANNER_FULL_SIZE) {
            OSReport("NandSDWorker: banner file is too large [%d]\n", contentSize);
            ret = RESULT_BAD_FILE;
            goto clean_up;
        }

        if (sizeOut != NULL) {
            *sizeOut = contentSize;
        }

        ret = read_file(fd, FILEKIND_ES_CONTENT, 0x40, contentSize, fileOut);
        if (ret != RESULT_OK) {
            OSReport("NandSDWorker: failed to read from content.\n");
            ret = RESULT_FATAL_SD_ERROR;
            goto clean_up;
        }

        if (fileOut->signature != WII_SAVE_BANNER_SIGNATURE) {
            OSReport("NandSDWorker: banner file signature is not correct\n");
            ret = RESULT_BAD_FILE;
            goto clean_up;
        }
        ret = RESULT_OK;

    clean_up:
        ES_CloseContentFile((ESFd)fd);
        if (ticketView != NULL) {
            MEMFreeToExpHeap(myWork->mainHeap, ticketView);
        }
        return ret;
    }

    int NandSDWorker::get_app_banner_from_meta(ESTitleId titleId, SDAppBackupData* appBnrOut) {
        NANDFileInfo fileInfo;
        char metaPath[NAND_MAX_PATH];
        ARCHandle arcHandle;
        ARCFileInfo arcFile;
        s32 ret;
        u32 contentSize;

        s32 openRes;

        // TODO: maybe move this somewhere else?
#define META_HDR_BUF_SIZE (0x40 + channel::META_RESERVED_PADDING + channel::META_HEAD_BLOCK_SIZE)

        u8* openingBnrBuf = (u8*)MEMAllocFromExpHeapEx(myWork->mainHeap, 0x1400, 32);
        u8* metaHdrBuf = (u8*)MEMAllocFromExpHeapEx(myWork->mainHeap, OSRoundUp32B(META_HDR_BUF_SIZE), 32);
        ARCHeader* arcHeader = (ARCHeader*)MEMAllocFromExpHeapEx(myWork->mainHeap, sizeof(ARCHeader), 32);

        void* fd;

        FileKind fileKind = FILEKIND_NONE;

        ESTicketView* ticketView = NULL;

        int result;
        result = open_nand_app_content(titleId, 0, &contentSize, &ticketView);
        ret = result;

        if (result >= 0 && contentSize > 4) {
            fileKind = FILEKIND_ES_CONTENT;
            fd = (void*)result;
        } else {
            get_nand_meta_file_path(titleId, metaPath);
            openRes = nand::wrapper::Open(metaPath, &fileInfo, NAND_ACCESS_READ);
            if (check_nand_corrupt(openRes, &ret))
                goto clean_up;
            if (openRes != NAND_RESULT_OK) {
                OSReport("NandSDWorker: NANDOpen %s failed.[%d]\n", metaPath, openRes);
                ret = RESULT_BAD_FILE;
                goto clean_up;
            }
            fd = &fileInfo;
            fileKind = FILEKIND_NAND;
        }

        memset(metaHdrBuf, 0, OSRoundUp32B(META_HDR_BUF_SIZE));
        ret = read_file(fd, fileKind, 0x40, META_HDR_BUF_SIZE, metaHdrBuf);
        if (ret != RESULT_OK) {
            goto clean_up;
        }

        s32 hdrOffset;
        hdrOffset = search_meta_header(metaHdrBuf);
        if (hdrOffset < 0) {
            OSReport("NandSDWorker: cannot find meta offset: %d\n", hdrOffset);
            ret = RESULT_BAD_FILE;
            goto clean_up;
        }

        u32 headerSize;
        headerSize = 0;
        if (!check_header_base(metaHdrBuf + hdrOffset, &headerSize)) {
            OSReport("NandSDWorker: illegal header.\n");
            ret = RESULT_BAD_FILE;
            goto clean_up;
        }

        OSReport("NandSDWorker: headder size = %d\n", headerSize);
        memset(&appBnrOut->head.metaHdr, 0, sizeof(channel::SChanMgrMetaHeader));
        ret = read_file(fd, fileKind, hdrOffset, headerSize, &appBnrOut->head.metaHdr);
        if (ret != RESULT_OK) {
            goto clean_up;
        }

        if (!check_header_md5((u8*)&appBnrOut->head.metaHdr)) {
            // @bug They left out the format parameter :(
            OSReport("NandSDWorker: hash check failed.[%d]\n");
            ret = RESULT_BAD_FILE;
            goto clean_up;
        }
        ret = read_file(fd, fileKind, hdrOffset + headerSize, sizeof(ARCHeader), arcHeader);
        if (ret != RESULT_OK) {
            goto clean_up;
        }

        ret = read_file(fd, fileKind, hdrOffset + headerSize, OSRoundUp32B(arcHeader->fileStart), openingBnrBuf);
        if (ret != RESULT_OK) {
            goto clean_up;
        }

        if (!ARCInitHandle(openingBnrBuf, &arcHandle)) {
            // @bug Uses the wrong variable as the format parameter
            OSReport("NandSDWorker: ARCInitHandle failed.[%d]\n", openRes);
            ret = RESULT_BAD_FILE;
            goto clean_up;
        }

        if (!ARCOpen(&arcHandle, "/meta/icon.bin", &arcFile)) {
            // @bug Uses the wrong variable as the format parameter
            OSReport("NandSDWorker: ARCOpen failed.[%d]\n", openRes);
            ret = RESULT_BAD_FILE;
            goto clean_up;
        }

        u32 thumbnailSize;
        thumbnailSize = ARCGetLength(&arcFile);
        if (OSRoundUp32B(thumbnailSize) > SD_APP_BACKUP_THUMBNAIL_LENGTH) {
            OSReport("NandSDWorker: illegal thumbnail size.[%d]\n", thumbnailSize);
            ret = RESULT_BAD_FILE;
            goto clean_up;
        }
        appBnrOut->head.thumbSize = thumbnailSize;
        OSReport("NandSDWorker: thumbnail size = %d\n", thumbnailSize);

        u32 iconBinOffset;
        iconBinOffset = hdrOffset + headerSize + ARCGetStartOffset(&arcFile);

        ret = read_file(fd, fileKind, iconBinOffset, thumbnailSize, ((SDAppBackupData*)appBnrOut)->thumbnail);
        if (ret == RESULT_OK) {
            ret = RESULT_OK;
        }

    clean_up:
        if (fileKind == FILEKIND_ES_CONTENT) {
            ES_CloseContentFile((ESFd)fd);
        } else if (fileKind == FILEKIND_NAND) {
            int closeRes = nand::wrapper::Close(&fileInfo);
            if (!check_nand_corrupt(closeRes, &ret) && closeRes != NAND_RESULT_OK) {
                OSReport("NandSDWorker: failed to close %s [%d]\n", metaPath, closeRes);
                ret = RESULT_FATAL_SD_ERROR;
            }
        }

        MEMFreeToExpHeap(myWork->mainHeap, openingBnrBuf);
        MEMFreeToExpHeap(myWork->mainHeap, metaHdrBuf);
        MEMFreeToExpHeap(myWork->mainHeap, arcHeader);

        if (ticketView != NULL) {
            MEMFreeToExpHeap(myWork->mainHeap, ticketView);
        }
        return ret;
    }

    s32 NandSDWorker::open_nand_app_content(ESTitleId titleId, u16 contentIdx, u32* contentSizeOut, ESTicketView** ticketViewOut) {
        s32 ret;
        u32 ticketViewCount;
        ESTmdView* tmdView;

        *ticketViewOut = NULL;
        tmdView = NULL;

        ret = get_nand_app_tmdview(titleId, &tmdView);
        if (ret != RESULT_OK) {
            goto clean_up;
        }

        if (!content_exist(tmdView, contentIdx)) {
            OSReport("NandSDWorker: titleid 0x%016llx cidx %d not exist.\n", titleId, contentIdx);
            ret = RESULT_FATAL_SD_ERROR;
            goto clean_up;
        }

        ret = ES_GetTicketViews(titleId, NULL, &ticketViewCount);
        if (ret != ES_ERR_OK) {
            OSReport("NandSDWorker: ES_GetTicketViews titleid 0x%016llx failed.\n", titleId);
            ret = RESULT_FATAL_SD_ERROR;
            goto clean_up;
        }

        if (ticketViewCount == 0) {
            OSReport("NandSDWorker: titleid 0x%016llx has no ticket.\n", titleId);
            ret = RESULT_FATAL_SD_ERROR;
            goto clean_up;
        }

        ESTicketView* ticketViewList;
        ticketViewList = (ESTicketView*)MEMAllocFromExpHeapEx(myWork->mainHeap, OSRoundUp32B(ticketViewCount * sizeof(ESTicketView)), 32);
        *ticketViewOut = ticketViewList;
        ret = ES_GetTicketViews(titleId, ticketViewList, &ticketViewCount);
        if (ret != ES_ERR_OK) {
            OSReport("NandSDWorker: ES_GetTicketViews titleid 0x%016llx failed.\n", titleId);
            ret = RESULT_FATAL_SD_ERROR;
            goto clean_up;
        }

        s32 err;
        err = ES_OpenTitleContentFile(titleId, *ticketViewOut, contentIdx);
        if (err < ES_ERR_OK) {
            OSReport("NandSDWorker: ES_OpenTitleContentFile titleid 0x%016llx cidx %d failed.[%d]\n", titleId, contentIdx, err);
            ret = RESULT_FATAL_SD_ERROR;
            goto clean_up;
        }
        ret = err;

        *contentSizeOut = tmdView->contents[contentIdx].size;
        OSReport("NandSDWorker: successfully open titleid 0x%016llx cidx %d. fd = %d, size = %d.\n", titleId, contentIdx, ret, *contentSizeOut);

    clean_up:
        if (tmdView != NULL) {
            MEMFreeToExpHeap(myWork->mainHeap, tmdView);
        }

        if (ret != RESULT_OK) {
            if (*ticketViewOut != NULL) {
                MEMFreeToExpHeap(myWork->mainHeap, *ticketViewOut);
            }
            *ticketViewOut = NULL;
        }
        return ret;
    }

    int NandSDWorker::read_file(void* file, FileKind kind, s32 offset, u32 size, void* buf) {
        if (kind == FILEKIND_NAND) {
            s32 seek = nand::wrapper::Seek((NANDFileInfo*)file, offset, NAND_SEEK_BEG);
            if (seek < offset) {
                OSReport("NandSDWorker: NANDSeek failed: %d\n", seek);
                return RESULT_BAD_FILE;
            }

            u32 readSize = nand::wrapper::Read((NANDFileInfo*)file, buf, OSRoundUp32B(size));
            if (check_nand_corrupt(readSize, NULL)) {
                return RESULT_NAND_CORRUPT;
            }

            if (readSize < size) {
                OSReport("NandSDWorker: NANDRead failed.[%d]\n", readSize);
                return RESULT_BAD_FILE;
            }

            return RESULT_OK;
        } else if (kind == FILEKIND_ES_CONTENT) {
            s32 seek = ES_SeekContentFile((ESFd)file, offset, ES_SEEK_BEG);
            if (seek < ES_ERR_OK) {
                OSReport("NandSDWorker: ES_SeekContentFile failed.[%d]\n", seek);
                return RESULT_BAD_FILE;
            }

            u32 readSize = ES_ReadContentFile((ESFd)file, buf, OSRoundUp32B(size));
            if (readSize < size) {
                OSReport("NandSDWorker: ES_ReadContentFile failed.[%d]\n", readSize);
                return RESULT_BAD_FILE;
            }

            return RESULT_OK;
        }

        return RESULT_FATAL_SD_ERROR;
    }

    int NandSDWorker::search_meta_header(const u8* buffer) {
        const char* magic = IPL_META_MAGIC;
        int next = 0;

        for (int i = 0; i < ((channel::META_RESERVED_PADDING * 2) + 0x20); i++, buffer++) {
            // Found one character?
            if (*buffer == magic[next]) {
                // Look for the next one
                next++;

                // Found them all? Well theres the offset!
                if (next == 4) {
                    return i - 3;
                }
            } else {
                // Otherwise, try again!!
                next = 0;
            }
        }
        return -1;
    }

    bool NandSDWorker::check_header_base(const u8* bnrData, u32* headerSize) {
        channel::SMetaBlockHeader* header = (channel::SMetaBlockHeader*)(bnrData);

        u32 headSize = header->headerSize;
        if (headerSize != NULL) {
            *headerSize = headSize;
        }

        // Check signature
        if (!NAND_CHECK_MAGIC4(header->magic, 'I', 'M', 'E', 'T') || headSize < sizeof(channel::SMetaBlockHeader)) {
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

    bool NandSDWorker::check_header_md5(u8* head) {
        NETMD5Sum digest;

        u32 dataLen = ((channel::SChanMgrMetaHeader*)head)->blockHdr.headerSize;
        for (int i = 0; i < NET_MD5_DIGEST_SIZE; i++) {
            digest[i] = (head + (dataLen - NET_MD5_DIGEST_SIZE))[i];
        }
        memset(head, 0, 0x40);
        memset(head + (dataLen - NET_MD5_DIGEST_SIZE), 0, NET_MD5_DIGEST_SIZE);
        return check_md5(digest, head, dataLen);
    }

    bool NandSDWorker::check_md5(const u8* digest, const u8* input, u32 dataLen) {
        NETMD5Sum calculated;

        NETCalcMD5(calculated, input, dataLen);
        for (int i = 0; i < NET_MD5_DIGEST_SIZE; i++) {
            if (digest[i] != calculated[i]) {
                OSReport("BANNER WARNING: invalid md5 value ( data )\n");
                return false;
            }
        }
        return true;
    }

    void NandSDWorker::wad_backup_progress_callback(u32 complete, u32 total, BOOL done) {
        if (total != 0) {
            s_completion_pct = complete * 100.f / total;
        }
    }

    void NandSDWorker::do_copy_sd_app_to_nand(bool changeAppCount) {
        SDAppBanner* sdAppBanner = (SDAppBanner*)MEMAllocFromAllocator(&myWork->unkAllocator, sizeof(SDAppBanner));
        u16 titleVersion = 0;
        u16 wadVersion = 0;
        if (!changeAppCount) {
            u32 numFreeSlots;
            if (SCGetFreeChannelAppCount(&numFreeSlots) != 0) {
                OSReport("NandSDWorker: free nand app count = %d.\n", numFreeSlots);
                if (numFreeSlots == 0) {
                    OSReport("NandSDWorker: there is no free count to install application.\n");
                    myWork->asyncResult = RESULT_OUT_OF_SPACE;
                    goto clean_up;
                }
            } else {
                OSReport("NandSDWorker: SCGetFreeChannelAppCount failed.\n");
            }
        }

        int result;
        result = get_sd_app_banner(myWork->curTitleId, sdAppBanner);
        if (result != RESULT_OK) {
            myWork->asyncResult = result;
            goto clean_up;
        }

        if (nand_app_exist_ex(sdAppBanner->titleId) == 2) {
            OSReport("NandSDWorker: titleid = 0x%016llx is already in nand.\n", sdAppBanner->titleId);
            myWork->asyncResult = RESULT_ALREADY_EXISTS;
            goto clean_up;
        }

        result = get_nand_title_version(sdAppBanner->titleId, &titleVersion);
        if (result != RESULT_OK) {
            myWork->asyncResult = result;
            goto clean_up;
        }

        char sdAppPath[NAND_MAX_PATH];
        get_sd_app_path(myWork->curTitleId, sdAppPath);

        u64 wadTitleId;
        s32 wadErr;
        wadErr = WADGetTitleVersionEx(sdAppPath, &wadTitleId, &wadVersion, WAD_LOCATION_SD_CARD,
                                      ROUNDUP(sdAppBanner->thumbSize, 64) + sizeof(SDAppBanner));
        if (wadErr != WAD_ERROR_OK) {
            OSReport("NandSDWorker: WADGetTitleVersionEx failed.[%d]\n", wadErr);
            myWork->asyncResult = RESULT_FATAL_SD_ERROR;
            goto clean_up;
        }

        if (wadTitleId != sdAppBanner->titleId) {
            OSReport("NandSDWorker: titleid %016llx in wad is different from %016llx in banner %s.\n", wadTitleId, sdAppBanner->titleId, sdAppPath);
            myWork->asyncResult = RESULT_BAD_FILE;
            goto clean_up;
        }
        if ((titleVersion >> 8) > (wadVersion >> 8)) {
            OSReport("NandSDWorker: titleid %016llx has higher version than that of sd (%d vs %d)\n", sdAppBanner->titleId, titleVersion, wadVersion);
            myWork->asyncResult = RESULT_VERSION_ERR;
            goto clean_up;
        }

        WADBlocks wadBlocks;
        wadErr = WADImportGetBlocks(sdAppPath, &myWork->unkAllocator, WAD_LOCATION_SD_CARD, ROUNDUP(sdAppBanner->thumbSize, 64) + sizeof(SDAppBanner),
                                    1, &wadBlocks, NULL);
        if (wadErr == WAD_ERROR_INCORRECT_DEVICE) {
            OSReport("NandSDWorker: WADImportGetBlocks failed, not original Wii.[%d]\n", wadErr);
            myWork->asyncResult = RESULT_NOT_TRANSFERRABLE;
            goto clean_up;
        } else if (wadErr != WAD_ERROR_OK) {
            OSReport("NandSDWorker: WADImportGetBlocks failed.[%d]\n", wadErr);
            myWork->asyncResult = RESULT_BAD_FILE;
            goto clean_up;
        }

        OSReport("NandSDWorker: shared content inodes/blocks = %d/%d\n", wadBlocks.sharedInodes, wadBlocks.sharedBlocks);
        OSReport("NandSDWorker: private content inodes/blocks = %d/%d\n", wadBlocks.privateInodes, wadBlocks.privateBlocks);
        OSReport("NandSDWorker: file inodes/blocks = %d/%d\n", wadBlocks.fileInodes, wadBlocks.fileBlocks);

        result = check_nand_free_area(wadBlocks.sharedInodes, wadBlocks.sharedBlocks, wadBlocks.privateInodes + wadBlocks.fileInodes,
                                      wadBlocks.privateBlocks + wadBlocks.fileBlocks);
        if (result != RESULT_OK) {
            myWork->asyncResult = result;
            goto clean_up;
        }

        wadErr = WADImportEx(sdAppPath, &myWork->unkAllocator, WAD_LOCATION_SD_CARD, ROUNDUP(sdAppBanner->thumbSize, 64) + sizeof(SDAppBanner), 8,
                             wad_backup_progress_callback);
        if (wadErr == WAD_ERROR_INCORRECT_DEVICE) {
            OSReport("NandSDWorker: WADRestoreSDEx failed, not original Wii.[%d]\n", wadErr);
            myWork->asyncResult = RESULT_NOT_TRANSFERRABLE;
            goto clean_up;
        } else if (wadErr != WAD_ERROR_OK) {
            OSReport("NandSDWorker: WADRestoreSDEx failed.[%d]\n", wadErr);
            if (nand_app_exist_ex(sdAppBanner->titleId) == 1) {
                result = delete_nand_app_content(sdAppBanner->titleId);
                if (result == RESULT_NAND_CORRUPT) {
                    myWork->asyncResult = RESULT_NAND_CORRUPT;
                    goto clean_up;
                }
                if (result != RESULT_OK) {
                    OSReport("NandSDWorker: delete title 0x%016llx content failed.[%d]\n", sdAppBanner->titleId, result);
                }
            }
            myWork->asyncResult = RESULT_BAD_FILE;
            goto clean_up;
        }

        OSReport("NandSDWorker: import app data titleid = 0x%016llx.\n", sdAppBanner->titleId);
        myWork->nandAppNum++;
        if (!changeAppCount) {
            change_nand_app_count(1);
        }

        myWork->asyncResult = RESULT_OK;

    clean_up:
        if (sdAppBanner != NULL) {
            MEMFreeToAllocator(&myWork->unkAllocator, sdAppBanner);
        }
        return;
    }

    void NandSDWorker::change_nand_app_count(s32 delta) {
        if (delta == 0) {
            return;
        }

        u32 installedCount = 0;
        if (SCGetInstalledChannelAppCount(&installedCount) == 0) {
            OSReport("NandSDWorker: SCGetInstalledChannelAppCount failed.\n");
            return;
        }

        OSReport("NandSDWorker: old installed nand app count = %d.\n", installedCount);
        installedCount += delta;

        SCSetInstalledChannelAppCount(installedCount);
        SCSetFreeChannelAppCount(MAX_CHANNEL_TOTAL - installedCount);
        OSReport("NandSDWorker: new installed nand app count = %d.\n", installedCount);
        OSReport("NandSDWorker: new free nand app count = %d.\n", MAX_CHANNEL_TOTAL - installedCount);
        SCFlush();
    }

    int NandSDWorker::get_sd_app_banner(ESTitleId32 titleId, SDAppBanner* appBanner) {
        s32 ret;
        SDAppBanner* encBuffer = (SDAppBanner*)MEMAllocFromExpHeapEx(myWork->mainHeap, sizeof(SDAppBanner), 32);
        if (appBanner == NULL || encBuffer == NULL) {
            OSReport("NandSDWorker: Failed to allocate buffer.\n");
            ret = RESULT_FATAL_SD_ERROR;
            goto clean_up;
        }

        char appPath[NAND_MAX_PATH];
        FAFILE* fStream;
        get_sd_app_path(titleId, appPath);
        fStream = FAFopen(appPath, "r");
        if (fStream == NULL) {
            OSReport("NandSDWorker: FAFopen %s failed.\n", appPath);
            handle_sd_error_for_entry(FA_ERR_SYSTEM, &ret);
            goto clean_up;
        }

        if (FAFread(encBuffer, sizeof(SDAppBanner), 1, fStream) != 1) {
            ret = handle_sd_error_for_entry(FA_ERR_SYSTEM, NULL);
            if (ret == RESULT_OK || ret == RESULT_FATAL_SD_ERROR) {
                ret = RESULT_BAD_FILE;
            }
            FAFclose(fStream);
            goto clean_up;
        }

        if (handle_sd_error_for_entry(FAFclose(fStream), &ret) != RESULT_OK) {
            OSReport("NandSDWorker: FAFclose failed.\n");
            goto clean_up;
        }

        if (decrypt(encBuffer, sizeof(SDAppBanner), appBanner) != RESULT_OK) {
            ret = RESULT_BAD_FILE;
            goto clean_up;
        }

        NETMD5Sum MD5Sum;
        memcpy(MD5Sum, appBanner->headerMD5, NET_MD5_DIGEST_SIZE);
        memcpy(appBanner->headerMD5, &c_md5_secret_key, NET_MD5_DIGEST_SIZE);
        if (!check_md5(MD5Sum, (u8*)appBanner, sizeof(SDAppBanner))) {
            OSReport("NandSDWorker: banner file %s md5 digest is not correct.\n", appPath);
            ret = RESULT_BAD_FILE;
            goto clean_up;
        }

        if (titleId == (u32)ES_TITLE_CODE(appBanner->titleId)) {
            ret = RESULT_OK;
        } else {
            ret = RESULT_BAD_FILE;
        }

        FAFileStat fileStat;
        memset(&fileStat, 0, sizeof(FAFileStat));
        if (handle_sd_error_for_entry(FAFstat(appPath, &fileStat), &ret) != RESULT_OK) {
            // @bug this should say FAFstat, looks like it was copy-pasted from above
            OSReport("NandSDWorker: FAFclose failed.\n");
            goto clean_up;
        }

        if (fileStat.size <= ROUNDUP(appBanner->thumbSize, 64) + sizeof(SDAppBanner)) {
            ret = RESULT_BAD_FILE;
        }

    clean_up:
        MEMFreeToExpHeap(myWork->mainHeap, encBuffer);
        return ret;
    }

    s32 NandSDWorker::get_sd_app_thumbnail(const SDAppBanner* appBanner, u8* thumbnailBuf) {
        s32 ret;
        u8* cmprBuf = NULL;
        u8* encBanner = NULL;
        char appPath[NAND_MAX_PATH];
        get_sd_app_path(appBanner->titleId, appPath);
        if (appBanner->thumbSize > SD_APP_BACKUP_THUMBNAIL_LENGTH) {
            OSReport("NandSDWorker: %s has illegal thumbnail size.[%d]\n", appPath, appBanner->thumbSize);
            ret = RESULT_BAD_FILE;
            goto clean_up;
        }

        cmprBuf = (u8*)MEMAllocFromExpHeapEx(myWork->mainHeap, ROUNDUP(appBanner->thumbSize, 64), 32);
        encBanner = (u8*)MEMAllocFromAllocator(&myWork->unkAllocator, ROUNDUP(appBanner->thumbSize, 64));

        FAFILE* stream;
        stream = FAFopen(appPath, "r");
        if (stream == NULL) {
            OSReport("NandSDWorker: FAFopen %s failed.\n", appPath);
            handle_sd_error_for_entry(FA_ERR_SYSTEM, &ret);
            goto clean_up;
        }

        if (handle_sd_error_for_entry(FAFseek(stream, sizeof(SDAppBanner), FA_SEEK_ORIGIN_BEGIN), &ret) != RESULT_OK) {
            OSReport("NandSDWorker: FAFseek failed.\n");
            FAFclose(stream);
            goto clean_up;
        }

        if (FAFread(encBanner, ROUNDUP(appBanner->thumbSize, 64), 1, stream) != 1) {
            ret = handle_sd_error_for_entry(FA_ERR_SYSTEM, NULL);
            if (ret == RESULT_OK || ret == RESULT_FATAL_SD_ERROR) {
                ret = RESULT_BAD_FILE;
            }
            FAFclose(stream);
            goto clean_up;
        }

        if (handle_sd_error_for_entry(FAFclose(stream), &ret) != RESULT_OK) {
            OSReport("NandSDWorker: FAFclose failed.\n");
            goto clean_up;
        }

        if (decrypt(encBanner, ROUNDUP(appBanner->thumbSize, 64), cmprBuf) != RESULT_OK) {
            ret = RESULT_BAD_FILE;
            goto clean_up;
        }

        if (!check_md5(appBanner->iconMD5, cmprBuf, ROUNDUP(appBanner->thumbSize, 64))) {
            OSReport("NandSDWorker: banner file %s md5 digest is not correct.\n", appPath);
            ret = RESULT_BAD_FILE;
            goto clean_up;
        }

        ret = uncompress_app_thumbnail(cmprBuf, appBanner->thumbSize, thumbnailBuf);
        if (ret < RESULT_OK) {
            OSReport("NandSDWorker: cannot uncompress thumbnail of %016llx [%d].\n", appBanner->titleId, ret);
            ret = RESULT_BAD_FILE;
            goto clean_up;
        }

        OSReport("NandSDWorker: uncompress thumbnail size = %d.\n", ret);

    clean_up:
        MEMFreeToExpHeap(myWork->mainHeap, cmprBuf);
        MEMFreeToAllocator(&myWork->unkAllocator, encBanner);
        return ret;
    }

    bool NandSDWorker::nand_app_exist(ESTitleId titleId) {
        return nand_app_exist_ex(titleId) == EXISTENCE_COMPLETE;
    }

    int NandSDWorker::nand_app_exist_ex(ESTitleId titleId) {
        char contentPath[NAND_MAX_PATH];
        ESContentId contentIds[0x200] ALIGN32;

        ESTmdView* tmdView = NULL;
        u32 numContents;
        u32 usedBlocks = 0;
        u32 usedInodes = 0;

        u32 expectedContents;
        u32 actualContents = 0;

        int ret;

        u32 titleCode = ES_TITLE_CODE(titleId);
        sprintf(contentPath, "/title/%08x/%08x/content", (u32)ES_TITLE_TYPE_NOMASK(titleId), titleCode);

        int result = nand::wrapper::SecretGetUsage(contentPath, &usedBlocks, &usedInodes);
        if (result != NAND_RESULT_OK && result != NAND_RESULT_NOEXISTS) {
            OSReport("NandSDWorker: NANDSecretGetUsage failed.[%d]\n", result);
            ret = EXISTENCE_NOEXIST;
            goto clean_up;
        }

        if (result == NAND_RESULT_NOEXISTS || usedInodes <= 2) {
            OSReport("NandSDWorker: no content for 0x%016llx.\n", titleId);
            ret = EXISTENCE_NOEXIST;
            goto clean_up;
        }

        expectedContents = usedInodes - 2;

        if (get_nand_app_tmdview(titleId, &tmdView) == RESULT_FATAL_SD_ERROR) {
            MEMFreeToExpHeap(myWork->mainHeap, tmdView);
            ret = EXISTENCE_NOEXIST;
            goto clean_up;
        }

        for (u32 i = 0; i < tmdView->head.numContents; i++) {
            if ((tmdView->contents[i].type & 0x8000) == 0) {
                actualContents++;
            }
        }
        if (expectedContents == actualContents) {
            ret = EXISTENCE_COMPLETE;
            goto clean_up;
        }
        OSReport("NandSDWorker: private content num for 0x%016llx is now/tmd = %d/%d.\n", titleId, expectedContents, actualContents);

        ESError esErr;
        esErr = ES_ListTitleContentsOnCard(titleId, NULL, &numContents);
        if (esErr != ES_ERR_OK) {
            OSReport("NandSDWorker: ES_ListTitleContentsOnCard failed.[%d]\n", esErr);
            ret = EXISTENCE_NOEXIST;
            goto clean_up;
        }
        if (numContents == 0) {
            OSReport("NandSDWorker: no content for 0x%016llx.\n", titleId);
            ret = EXISTENCE_NOEXIST;
            goto clean_up;
        }

        esErr = ES_ListTitleContentsOnCard(titleId, contentIds, &numContents);
        if (esErr == ES_ERR_OK) {
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
                goto clean_up;
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
                    goto clean_up;
                }
            }
            OSReport("NandSDWorker: complete: only missing non-optional contents for 0x%016llx.\n", titleId);
            ret = EXISTENCE_COMPLETE;
        } else {
            OSReport("NandSDWorker: ES_ListTitleContentsOnCard failed.[%d]\n", esErr);
            ret = EXISTENCE_NOEXIST;
            goto clean_up;
        }

    clean_up:
        if (tmdView != NULL) {
            MEMFreeToExpHeap(myWork->mainHeap, tmdView);
        }
        return ret;
    }

    int NandSDWorker::get_nand_app_tmdview(ESTitleId titleId, ESTmdView** tmdViewOut) {
        u32 tmdSize;

        ESError err = ES_GetTmdView(titleId, NULL, &tmdSize);
        if (err != ES_ERR_OK) {
            OSReport("NandSDWorker: failed to get TMD of 0x%016llx.[%d]\n", titleId, err);
            return RESULT_FATAL_SD_ERROR;
        }

        ESTmdView* tmdViewBuf = (ESTmdView*)MEMAllocFromExpHeapEx(myWork->mainHeap, OSRoundUp32B(tmdSize), 32);
        *tmdViewOut = tmdViewBuf;
        err = ES_GetTmdView(titleId, tmdViewBuf, &tmdSize);
        if (err != ES_ERR_OK) {
            OSReport("NandSDWorker: failed to get TMD of 0x%016llx.[%d]\n", titleId, err);
            return RESULT_FATAL_SD_ERROR;
        }

        return RESULT_OK;
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
        if (i == tmdView->head.numContents) {
            return false;
        }

        u32 numContents;
        ESContentId contentIds[0x200] ALIGN32;
        if (ES_ListTitleContentsOnCard(titleId, NULL, &numContents) != ES_ERR_OK) {
            return false;
        }
        if (ES_ListTitleContentsOnCard(titleId, contentIds, &numContents) != ES_ERR_OK) {
            return false;
        }

        for (i = 0; i < numContents; i++) {
            if (cid == contentIds[i]) {
                return true;
            }
        }
        return false;
    }

    void NandSDWorker::do_list_nand_app() {
        ESTitleId* titleIds;
        ESTitleId* titleIdsOut = (ESTitleId*)myWork->paramA;

        u32 titleCount = 0;

        ES_ListTitlesOnCard(NULL, &titleCount);
        titleIds = (ESTitleId*)MEMAllocFromExpHeapEx(myWork->mainHeap, titleCount * sizeof(ESTitleId), 32);
        ES_ListTitlesOnCard(titleIds, &titleCount);
        int dest = 0;
        for (int i = 0; i < titleCount; i++) {
            if (is_user_nand_app(titleIds[i])) {
                if (nand_app_exist(titleIds[i])) {
                    titleIdsOut[dest++] = titleIds[i];
                }
            }
        }
        MEMFreeToExpHeap(myWork->mainHeap, titleIds);
        myWork->asyncResult = RESULT_OK;
    }

    s32 NandSDWorker::get_nand_app_thumbnail(ESTitleId titleId, u8* thumbnailBuf, channel::SChanMgrMetaHeader* metaHdrOut) {
        int result;
        AppCacheEntry* cacheEntry = find_app_cache(&myWork->nandAppList, titleId);
        if (cacheEntry == NULL || cacheEntry->thumbSize == -1) {
            SDAppBackupData* backupData = (SDAppBackupData*)MEMAllocFromExpHeapEx(myWork->mainHeap, sizeof(SDAppBackupData), 32);
            result = get_app_banner_from_meta(titleId, backupData);
            if (result == RESULT_OK) {
                OSReport("NandSDWorker: get 0x%016llx app thumbnail from meta.\n", titleId);
                result = uncompress_app_thumbnail(backupData->thumbnail, backupData->head.thumbSize, thumbnailBuf);
                if (result < RESULT_OK) {
                    OSReport("NandSDWorker: cannot uncompress thumbnail of %016llx [%d].\n", titleId, result);
                    result = RESULT_BAD_FILE;
                } else {
                    OSReport("NandSDWorker: uncompress thumbnail size = %d.\n", result);
                    if (metaHdrOut != NULL) {
                        memcpy(metaHdrOut, &backupData->head.metaHdr, sizeof(channel::SChanMgrMetaHeader));
                    }
                    if (cacheEntry != NULL) {
                        memcpy(cacheEntry->thumbnail, thumbnailBuf, backupData->head.thumbSize);
                        cacheEntry->thumbSize = result;
                    } else {
                        add_app_cache(&myWork->nandAppList, titleId, thumbnailBuf, result, &backupData->head.metaHdr, -1);
                    }
                }
            }
            MEMFreeToExpHeap(myWork->mainHeap, backupData);
        } else {
            memcpy(thumbnailBuf, cacheEntry->thumbnail, cacheEntry->thumbSize);
            if (metaHdrOut != NULL) {
                memcpy(metaHdrOut, &cacheEntry->metaHdr, sizeof(channel::SChanMgrMetaHeader));
            }
            result = cacheEntry->thumbSize;
        }
        return result;
    }

    s32 NandSDWorker::uncompress_app_thumbnail(const u8* cmpr, u32 uncmprSize, u8* uncmpr) {
        s32 size;

        NETMD5Sum MD5Sum;
        bool hasMd5 = false;
        u32 dataLen = 0;
        u32 offset = 0;
        if (NAND_CHECK_MAGIC4(cmpr, 'I', 'M', 'D', '5')) {
            dataLen = *(u32*)(cmpr + 4);
            hasMd5 = true;
            memcpy(MD5Sum, cmpr + 0x10, 0x10);
            offset = 0x20;
        }

        if (is_compressed(cmpr + offset)) {
            size = get_decode_size(cmpr + offset);
            if (size > 0x19000) {
                return RESULT_FATAL_SD_ERROR;
            }

            if (is_lz7_compressed(cmpr + offset)) {
                CXUncompressLZ(cmpr + (offset + 4), uncmpr);
            } else {
                Rvl_decode(uncmpr, (u8*)cmpr + offset);
            }

            if (hasMd5 && !check_md5(MD5Sum, cmpr + offset, dataLen)) {
                size = -1;
            }
        } else {
            size = uncmprSize - offset;
            memcpy(uncmpr, cmpr + offset, size);
            if (hasMd5 && !check_md5(MD5Sum, uncmpr, dataLen)) {
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
        if (is_sli_compressed(data) || is_asr_compressed(data) || is_ash_compressed(data) || is_lz7_compressed(data)) {
            return true;
        } else {
            return false;
        }
    }

    u32 NandSDWorker::get_decode_size(const u8* data) {
        if (data[0] == 'Y') {
            return Rvl_decode_szs_size(data);
        }
        if (data[0] == 'L') {
            return CXGetUncompressedSize(data + 4);
        }
        return Rvl_decode_ash_size(data);
    }

    void NandSDWorker::send_work(WorkMessage msg) {
        if (!is_working()) {
            set_state(STATE_WORKING);
            OSSendMessage(&myWork->msgQueue, (OSMessage)msg, 0);
        }
    }

    NandSDWorker::WorkMessage NandSDWorker::wait_work() {
        OSMessage cmd = NULL;
        OSReceiveMessage(&myWork->msgQueue, &cmd, 1);
        OSReport("NandSDWorker: recieve message = %d\n", cmd);
        return (WorkMessage)(u32)cmd;
    }

    NandSDWorker::WorkState NandSDWorker::get_state() {
        OSLockMutex(&myWork->mutex);
        WorkState state = myWork->state;
        OSUnlockMutex(&myWork->mutex);
        return state;
    }

    void NandSDWorker::set_state(WorkState newState) {
        OSLockMutex(&myWork->mutex);
        myWork->state = newState;
        OSUnlockMutex(&myWork->mutex);
    }

    void NandSDWorker::sd_insert_callback(s8 driveLetter) {
        OSReport("NandSDWorker: SD card inserted !!   %c drive\n", driveLetter);
        if (s_sd_state != SD_STATE_INITIAL) {
            s_sd_state = SD_STATE_INSERTED;
        }
    }

    void NandSDWorker::sd_eject_callback(s8 driveLetter) {
        OSReport("NandSDWorker: SD card ejected  !!   %c drive\n", driveLetter);
        if (s_sd_state != SD_STATE_INITIAL) {
            s_sd_state = SD_STATE_EJECTED;
        }
    }

    void NandSDWorker::add_save_cache(nw4r::ut::List* list, ESTitleId titleId, WIISaveBannerFile* saveData, s32 size) {
        if (list->numObjects >= 45) {
            SaveCacheEntry* lastEntry = (SaveCacheEntry*)nw4r::ut::List_GetPrev(list, NULL);
            nw4r::ut::List_Remove(list, lastEntry);
            MEMFreeToUnitHeap(myWork->saveCacheHeap, lastEntry);
        }

        SaveCacheEntry* entry = (SaveCacheEntry*)MEMAllocFromUnitHeap(myWork->saveCacheHeap);
        entry->titleId = titleId;
        if (saveData != NULL) {
            entry->banner = *saveData;
        } else {
            entry->banner.signature = 0;
        }
        entry->size = size;
        nw4r::ut::List_Prepend(list, entry);
    }
    NandSDWorker::SaveCacheEntry* NandSDWorker::find_save_cache(nw4r::ut::List* list, ESTitleId titleId) {
        SaveCacheEntry* cur = NULL;
        while ((cur = (SaveCacheEntry*)nw4r::ut::List_GetNext(list, cur)) != NULL) {
            if (cur->titleId == titleId) {
                return cur;
            }
        }
        return NULL;
    }
    void NandSDWorker::delete_save_cache(nw4r::ut::List* list, ESTitleId titleId) {
        SaveCacheEntry* entry = find_save_cache(list, titleId);
        if (entry == NULL) {
            return;
        }

        nw4r::ut::List_Remove(list, entry);
        MEMFreeToUnitHeap(myWork->saveCacheHeap, entry);
    }
    void NandSDWorker::clear_save_cache(nw4r::ut::List* list) {
        SaveCacheEntry* cur = NULL;
        while ((cur = (SaveCacheEntry*)nw4r::ut::List_GetNext(list, cur)) != NULL) {
            nw4r::ut::List_Remove(list, cur);
            MEMFreeToUnitHeap(myWork->saveCacheHeap, cur);
        }
    }

    void NandSDWorker::add_app_cache(nw4r::ut::List* list, ESTitleId titleId, u8* thumb, u32 thumbSize, channel::SChanMgrMetaHeader* meta, s32 size) {
        if (list->numObjects >= 48) {
            AppCacheEntry* lastEntry = (AppCacheEntry*)nw4r::ut::List_GetPrev(list, NULL);
            nw4r::ut::List_Remove(list, lastEntry);
            MEMFreeToUnitHeap(myWork->appCacheHeap, lastEntry);
        }
        AppCacheEntry* entry = (AppCacheEntry*)MEMAllocFromUnitHeap(myWork->appCacheHeap);

        entry->titleId = titleId;
        if (thumb != NULL) {
            memcpy(entry->thumbnail, thumb, thumbSize);
            memcpy(&entry->metaHdr, meta, sizeof(channel::SChanMgrMetaHeader));
            entry->thumbSize = thumbSize;
        } else {
            entry->thumbSize = -1;
        }
        entry->fileSize = size;

        nw4r::ut::List_Prepend(list, entry);
    }
    NandSDWorker::AppCacheEntry* NandSDWorker::find_app_cache(nw4r::ut::List* list, ESTitleId titleId) {
        AppCacheEntry* cur = NULL;
        if (list == &myWork->sdAppList) {
            while ((cur = (AppCacheEntry*)nw4r::ut::List_GetNext(list, cur)) != NULL) {
                if (ES_TITLE_CODE(cur->titleId) == titleId) {
                    return cur;
                }
            }
        } else {
            while ((cur = (AppCacheEntry*)nw4r::ut::List_GetNext(list, cur)) != NULL) {
                if (cur->titleId == titleId) {
                    return cur;
                }
            }
        }
        return NULL;
    }
    void NandSDWorker::delete_app_cache(nw4r::ut::List* list, ESTitleId titleId) {
        AppCacheEntry* entry = find_app_cache(list, titleId);
        if (entry == NULL) {
            return;
        }

        nw4r::ut::List_Remove(list, entry);
        MEMFreeToUnitHeap(myWork->appCacheHeap, entry);
    }
    void NandSDWorker::clear_app_cache(nw4r::ut::List* list) {
        AppCacheEntry* cur;
        while ((cur = (AppCacheEntry*)nw4r::ut::List_GetFirst(list)) != NULL) {
            nw4r::ut::List_Remove(list, cur);
            MEMFreeToUnitHeap(myWork->appCacheHeap, cur);
        }
    }

    s32 NandSDWorker::get_sd_entry_list(const char* fileName, ESTitleId32* titleIdsOut, u32 minSize) {
        FADta fileDta;
        char fmtStr[NAND_MAX_PATH];
        char path[NAND_MAX_PATH];
        FAFileStat fileStat;
        s32 sdErr;

        u32 count = 0;
        FAError faErr = FAFsfirst("/private/wii/title/*", 0x10, &fileDta);
        if (faErr != FA_ERR_SUCCESS) {
            OSReport("NandSDWorker: FAFsfirst /private/wii/title/* failed.\n");
            return handle_sd_error_for_entry(FA_ERR_SYSTEM, NULL);
        }

        strncpy(fmtStr, c_wii_sd_title_root, NAND_MAX_PATH);
        strncat(fmtStr, "%s/", NAND_MAX_PATH);
        strncat(fmtStr, fileName, NAND_MAX_PATH);

        while (faErr == FA_ERR_SUCCESS) {
            if (unk_0x04 != false) {
                return RESULT_UNK_18;
            }

            if ((fileDta.attribute & 0x10) != 0) {
                u32 filenameLen = strlen(fileDta.fileName);
                if (filenameLen == 4 || filenameLen == 8) {
                    snprintf(path, NAND_MAX_PATH, fmtStr, fileDta.fileName);
                    if (handle_sd_error_for_entry(FAFstat(path, &fileStat), &sdErr) == RESULT_OK) {
                        if (fileStat.size > minSize && is_fa_file(fileStat.stat)) {
                            OSReport("NandSDWorker: found sd data %s [size: %d]\n", path, fileStat.size);
                            if (filenameLen == 8) {
                                char* endPtr = NULL;
                                ESTitleId32 titleId = strtoul(fileDta.fileName, &endPtr, 0x10);
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
                                    titleIdsOut[count] = gamecode_to_titleid_lo(fileDta.fileName);
                                }
                                count++;
                            }

                            if (count >= (SD_MAX_APP_TOTAL * 10) /* maybe????? */) {
                                OSReport("NandSDWorker: There is too many entry on this SD card.\n");
                                break;
                            }
                        }
                    } else if (sdErr != RESULT_FATAL_SD_ERROR) {
                        OSReport("NandSDWorker: FAFstat %s failed.\n", path);
                        return sdErr;
                    }
                }
            }
            faErr = FAFsnext(&fileDta);
            if (faErr != FA_ERR_SUCCESS && handle_sd_error_for_entry(FA_ERR_SYSTEM, &sdErr) != RESULT_FATAL_SD_ERROR) {
                OSReport("NandSDWorker: FAFsnext /private/wii/title/* failed.\n");
                return sdErr;
            }
        }
        return count;
    }

    int NandSDWorker::sd_file_exist(const char* path, u32 minSize) {
        FAFileStat fileStat;
        if (FAFstat(path, &fileStat) == FA_ERR_SUCCESS) {
            if (fileStat.size > minSize && is_fa_file(fileStat.stat)) {
                OSReport("NandSDWorker: found sd data %s [size: %d]\n", path, fileStat.size);
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
        myWork->sdSaveNum = 0;
        s32 ret = get_sd_entry_list(c_sd_save_file_name, titleIdsOut, sizeof(SDSaveBanner));
        if (ret < RESULT_OK) {
            return ret;
        }

        myWork->sdSaveNum = ret;
        OSReport("NandSDWorker: sd save num = %d\n", ret);
        return RESULT_OK;
    }

    int NandSDWorker::get_sd_app_list(ESTitleId32* titleIdsOut) {
        myWork->sdAppNum = 0;
        s32 ret = get_sd_entry_list(c_sd_app_file_name, titleIdsOut, sizeof(SDAppBanner));
        if (ret < RESULT_OK) {
            return ret;
        }

        myWork->sdAppNum = ret;
        OSReport("NandSDWorker: sd app num = %d\n", ret);
        return RESULT_OK;
    }

    int NandSDWorker::recursion_nand_save(ESTitleId titleId, RecursiveProcess process, const char** ignoreList, u32 ignoreListLen) {
        char bannerPath[NAND_MAX_PATH];
        char dataPath[NAND_MAX_PATH + 1];

        get_nand_data_only_title_save_path(titleId, dataPath);

        if (!change_uid(titleId)) {
            return RESULT_FATAL_SD_ERROR;
        }

        if (process == RECURSIVE_DELETE) {
            strncpy(bannerPath, dataPath, NAND_MAX_PATH);
            strncat(bannerPath, "/", NAND_MAX_PATH);
            strncat(bannerPath, c_banner_file_name, NAND_MAX_PATH);

            s32 err = nand::wrapper::Delete(bannerPath);
            if (check_nand_corrupt(err, NULL)) {
                change_uid(SYSMENU_TITLE_ID);
                return RESULT_NAND_CORRUPT;
            }
            if (err == NAND_RESULT_OK) {
                OSReport("NandSDWorker: delete [%s]\n", bannerPath);
            } else if (err == NAND_RESULT_NOEXISTS) {
                OSReport("NandSDWorker: [%s] no exists\n", bannerPath);
            } else {
                OSReport("NandSDWorker: NANDDelete %s failed [%d]\n", bannerPath, err);
                change_uid(SYSMENU_TITLE_ID);
                return RESULT_FATAL_SD_ERROR;
            }
        }

        int ret = recursion_nand(dataPath, NULL, process, ignoreList, ignoreListLen);
        if (process == RECURSIVE_DELETE && delete_empty_title(titleId, FALSE) != RESULT_OK) {
            return RESULT_FATAL_SD_ERROR;
        }
        change_uid(SYSMENU_TITLE_ID);

        return ret;
    }

    typedef struct {
        s32 type;
        char text[NAND_MAX_PATH];
    } IgnoreListBufElement;

    int NandSDWorker::recursion_nand(const char* mainPath, const char* pathMoveTarget, RecursiveProcess process, const char** ignoreList,
                                     u32 ignoreListLen) {
        u32 dirMemberCount = 0;
        s32 ret = RESULT_OK;
        ut::Stack stack;

        IgnoreListBufElement* ignoreListBuf;
        char* dirListingBuf;
        u32 mainPathLen;

        if (ignoreListLen != 0) {
            ignoreListBuf = (IgnoreListBufElement*)MEMAllocFromExpHeapEx(myWork->mainHeap, ignoreListLen * sizeof(IgnoreListBufElement), 32);
            for (int i = 0; i < ignoreListLen; i++) {
                u32 curIgnoreLen = strlen(ignoreList[i]);
                strncpy(ignoreListBuf[i].text, ignoreList[i], NAND_MAX_PATH);
                if (ignoreListBuf[i].text[curIgnoreLen - 1] == '/') {
                    ignoreListBuf[i].text[curIgnoreLen - 1] = '\0';
                    ignoreListBuf[i].type = NAND_TYPE_DIR;
                } else {
                    ignoreListBuf[i].type = NAND_TYPE_FILE;
                }
            }
        }

        dirListingBuf = (char*)MEMAllocFromExpHeapEx(myWork->mainHeap, sizeof("XXXXXXXX.app") * 32, 32);
        stack.init(MEMAllocFromExpHeapEx(myWork->mainHeap, ut::Stack::getRequiredBufSize(0x20, NAND_MAX_PATH), 4), NAND_MAX_PATH, 32);

        mainPathLen = strlen(mainPath);
        stack.push(mainPath);

        char curBasePath[NAND_MAX_PATH];
        char curFullPath[NAND_MAX_PATH];

        while (stack.pop(curBasePath)) {
            s32 nandErr = nand::wrapper::PrivateReadDir(curBasePath, NULL, &dirMemberCount);
            if (nandErr != NAND_RESULT_OK) {
                OSReport("NandSDWorker: NANDPrivateReadDir[%s] failed %d\n", curBasePath, nandErr);
                ret = RESULT_FATAL_SD_ERROR;
                goto clean_up;
            }

            if (dirMemberCount == 0) {
                continue;
            }

            nandErr = nand::wrapper::PrivateReadDir(curBasePath, dirListingBuf, &dirMemberCount);
            if (nandErr != NAND_RESULT_OK) {
                OSReport("NandSDWorker: NANDPrivateReadDir[%s] failed %d\n", curBasePath, nandErr);
                ret = RESULT_FATAL_SD_ERROR;
                goto clean_up;
            }

            u32 dirListingOff = 0;
            u8 curPathFileType = NAND_TYPE_NONE;
            for (int i = 0; i < dirMemberCount; i++) {
                strncpy(curFullPath, curBasePath, NAND_MAX_PATH);
                strncat(curFullPath, "/", NAND_MAX_PATH);
                strncat(curFullPath, dirListingBuf + dirListingOff, NAND_MAX_PATH);
                dirListingOff += strlen(dirListingBuf + dirListingOff) + 1;

                if (ignoreListLen != 0) {
                    bool matchesIgnore = false;
                    for (u32 j = 0; j < ignoreListLen; j++) {
                        if (strcmp(curFullPath + (mainPathLen + 1), ignoreListBuf[j].text) != 0) {
                            continue;
                        }

                        nandErr = nand::wrapper::PrivateGetType(curFullPath, &curPathFileType);
                        if (nandErr != NAND_RESULT_OK) {
                            OSReport("NandSDWorker: NANDPrivateGetType[%s] failed %d\n", curFullPath, nandErr);
                            ret = RESULT_FATAL_SD_ERROR;
                            goto clean_up;
                        }
                        if (curPathFileType == ignoreListBuf[j].type) {
                            OSReport("NandSDWorker: ignore [%s]\n", curFullPath);
                            matchesIgnore = true;
                        }
                    }
                    if (matchesIgnore) {
                        continue;
                    }
                }

                switch (process) {
                    case RECURSIVE_GET_SIZE: {
                        nandErr = nand::wrapper::PrivateGetType(curFullPath, &curPathFileType);
                        if (nandErr != NAND_RESULT_OK) {
                            OSReport("NandSDWorker: NANDPrivateGetType[%s] failed %d\n", curFullPath, nandErr);
                            ret = RESULT_FATAL_SD_ERROR;
                            goto clean_up;
                        }
                        if (curPathFileType == NAND_TYPE_FILE) {
                            s32 fileSizeRes = nand_get_length(curFullPath);
                            if (fileSizeRes < 0) {
                                ret = fileSizeRes;
                                goto clean_up;
                            }
                            ret += fileSizeRes;
                        } else if (curPathFileType == NAND_TYPE_DIR) {
                            if (!stack.push(curFullPath)) {
                                OSReport("NandSDWorker: too many files in %s\n", curBasePath);
                                ret = RESULT_TOO_MANY_FILES;
                                goto clean_up;
                            }
                        }
                        break;
                    }
                    case RECURSIVE_DELETE: {
                        int deleteRes = nand::wrapper::PrivateDelete(curFullPath);
                        if (check_nand_corrupt(deleteRes, &ret)) {
                            goto clean_up;
                        }
                        if (deleteRes != NAND_RESULT_OK) {
                            OSReport("NandSDWorker: NANDPrivateDelete[%s] failed %d\n", curFullPath, deleteRes);
                            ret = RESULT_FATAL_SD_ERROR;
                            goto clean_up;
                        }
                        OSReport("NandSDWorker: delete [%s]\n", curFullPath);
                        break;
                    }
                    case RECURSIVE_MOVE: {
                        nandErr = nand::wrapper::PrivateMove(curFullPath, pathMoveTarget);
                        if (nandErr != NAND_RESULT_OK) {
                            OSReport("NandSDWorker: NANDPrivateMove %s failed.[%d]\n", curFullPath, nandErr);
                            recursion_nand(pathMoveTarget, NULL, RECURSIVE_DELETE, ignoreList, ignoreListLen);
                            if (nandErr == NAND_RESULT_CORRUPT) {
                                ret = RESULT_NAND_CORRUPT;
                            } else {
                                ret = RESULT_FATAL_SD_ERROR;
                            }
                            goto clean_up;
                        }

                        OSReport("NandSDWorker: move %s from %s to %s\n", curFullPath + (strlen(curBasePath) + 1), curBasePath, pathMoveTarget);
                        break;
                    }
                }
            }
        }

    clean_up:
        MEMFreeToExpHeap(myWork->mainHeap, stack.getBuf());
        MEMFreeToExpHeap(myWork->mainHeap, dirListingBuf);
        if (ignoreListLen != 0) {
            MEMFreeToExpHeap(myWork->mainHeap, ignoreListBuf);
        }

        return ret;
    }

    s32 NandSDWorker::nand_get_length(const char* path) {
        int ret;
        s32 err;

        u32 fileLen;
        NANDFileInfo fileInfo;

        fileLen = 0;
        err = nand::wrapper::PrivateOpen(path, &fileInfo, NAND_ACCESS_READ);
        if (err != NAND_RESULT_OK) {
            OSReport("NandSDWorker: NANDPrivateOpen[%s] failed %d\n", path, err);
            return RESULT_FATAL_SD_ERROR;
        }

        err = nand::wrapper::GetLength(&fileInfo, &fileLen);
        if (err != NAND_RESULT_OK) {
            OSReport("NandSDWorker: NANDGetLength[%s] failed %d\n", path, err);
            ret = RESULT_FATAL_SD_ERROR;
        } else {
            OSReport("NandSDWorker: size of %s is [%d]\n", path, fileLen);
            ret = fileLen;
        }

        err = nand::wrapper::Close(&fileInfo);
        if (check_nand_corrupt(err, NULL)) {
            return RESULT_NAND_CORRUPT;
        }
        if (err != NAND_RESULT_OK) {
            OSReport("NandSDWorker: NANDClose[%s] failed %d\n", path, err);
            ret = RESULT_FATAL_SD_ERROR;
        }

        return ret;
    }

    bool NandSDWorker::change_uid(ESTitleId newUid) {
        if (myWork->curUId != newUid) {
            ESError esErr = ES_SetUid(newUid);
            if (esErr != ES_ERR_OK) {
                OSReport("ES_SetUid failed[%d]: 0x%016llx\n", esErr, newUid);
                return false;
            }
            ISFS_CloseLib();
            ISFS_OpenLib();

            myWork->curUId = newUid;
        }
        return true;
    }

    bool NandSDWorker::check_nand_corrupt(s32 nandErr, s32* result) {
        if (nandErr == NAND_RESULT_CORRUPT) {
            OSReport("NandSDWorker: nand memory corrupt!\n");
            if (result != NULL) {
                *result = RESULT_NAND_CORRUPT;
            }
            return true;
        } else {
            return false;
        }
    }

    int NandSDWorker::handle_sd_error(s32 err, s32* errOut) {
        if (err == RESULT_OK) {
            return RESULT_OK;
        }

        int ret = RESULT_FATAL_SD_ERROR;
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
            case FA_ERR_ENOTEMPTY: {
                // why not RESULT_FA_ERROR
                ret = RESULT_FATAL_SD_ERROR;
                break;
            }
            case FA_ERR_ENOSPC: {
                ret = RESULT_OUT_OF_SPACE;
                break;
            }
            case FA_ERR_EWRTPROTECT: {
                ret = RESULT_WRITE_PROTECTED;
                break;
            }
            case FA_ERR_EIO:
            case FA_ERR_ENOEXEC: {
                ret = RESULT_FATAL_SD_ERROR;
                break;
            }
        }

        OSReport("NandSDWorker: FA library error.[%d]\n", FAErrnum());
        if (errOut != NULL) {
            *errOut = ret;
        }

        return ret;
    }

    int NandSDWorker::handle_sd_error_for_entry(s32 err, s32* errOut) {
        if (err == FA_ERR_SUCCESS) {
            return RESULT_OK;
        }

        FAError faErr = FAErrnum();
        if (faErr == FA_ERR_ENOENT || faErr == FA_ERR_EINVAL) {
            if (errOut != NULL) {
                *errOut = RESULT_FATAL_SD_ERROR;
            }
            return RESULT_FATAL_SD_ERROR;
        } else {
            return handle_sd_error(err, errOut);
        }
    }

    bool NandSDWorker::is_all_region(ESTitleId titleId) {
        u64 masked = titleId & 0xFF;
        char maskedChar = masked;
        return maskedChar == 'A';
    }
    bool NandSDWorker::is_same_title(ESTitleId titleIdA, ESTitleId titleIdB) {
        ESTitleId maskedA = titleIdA & 0xFFFFFFFFFFFFFF00;
        ESTitleId maskedB = titleIdB & 0xFFFFFFFFFFFFFF00;
        return maskedA == maskedB;
    }
    int NandSDWorker::item_exist_nand_save_folder(ESTitleId titleId, const char* folderName) {
        char fullPath[NAND_MAX_PATH];
        if (!change_uid(titleId)) {
            return RESULT_ES_ERROR;
        }

        get_nand_data_only_title_save_path(titleId, fullPath);

        strncat(fullPath, "/", NAND_MAX_PATH);
        strncat(fullPath, folderName, NAND_MAX_PATH);

        u32 numItemsInFolder;
        bool exists;

        s32 err = nand::wrapper::ReadDir(fullPath, NULL, &numItemsInFolder);
        if (err == NAND_RESULT_OK) {
            OSReport("NandSDWorker: %d item in %s.\n", numItemsInFolder, fullPath);
            if (numItemsInFolder != 0) {
                exists = true;
            } else {
                exists = false;
            }
        } else {
            OSReport("NandSDWorker: NANDReadDir %s failed.[%d]\n", fullPath, err);
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
        if (res != ES_ERR_OK) {
            OSReport("NandSDWorker: ES_Encrypt failed.[%d]\n", res);
        }

        return res;
    }

    int NandSDWorker::decrypt(const void* input, u32 inputSize, void* output) {
        int res;
        u8 iv[0x10] ALIGN32;

        memcpy(iv, &c_es_encrypt_iv, 0x10);
        res = ES_Decrypt(6, iv, (u8*)input, inputSize, (u8*)output);
        if (res != ES_ERR_OK) {
            OSReport("NandSDWorker: ES_Decrypt failed.[%d]\n", res);
        }

        return res;
    }

    bool NandSDWorker::is_fa_file(u8 stat) {
        return (stat & FA_FILE_STAT_DIR) == 0 && (stat & FA_FILE_UNK_1) == 0;
    }

    int NandSDWorker::get_nand_save_perms(ESTitleId titleId) {
        u32 numTitleFiles;

        WIISaveBannerFile* fileOut;
        int ret;

        fileOut = (WIISaveBannerFile*)MEMAllocFromExpHeapEx(this->myWork->mainHeap, 0xf0a0, 0x20);

        ret = get_nand_save_banner(titleId, fileOut, NULL);
        if (ret != RESULT_OK) {
            goto clean_up;
        }

        if (is_data_only_title(titleId)) {
            ret = 5;
            goto clean_up;
        }

        if ((fileOut->flags & WII_SAVE_BANNER_FLAG_NOCOPY) != 0) {
            ret = 1;
            goto clean_up;
        }

        if (item_exist_nand_save_folder(titleId, c_nocopy_folder_name) != 0) {
            ret = get_num_nand_data_only_title_save_files(titleId, &numTitleFiles);
            if (ret != RESULT_OK) {
                goto clean_up;
            }

            if (numTitleFiles == 2) {
                ret = 1;
            } else {
                ret = 2;
            }
            goto clean_up;
        }

        if (item_exist_nand_save_folder(titleId, c_notransfer_folder_name) != 0) {
            ret = get_num_nand_data_only_title_save_files(titleId, &numTitleFiles);
            if (ret != RESULT_OK) {
                goto clean_up;
            }

            if (numTitleFiles == 2) {
                ret = 3;
            } else {
                ret = 4;
            }
            goto clean_up;
        }

        ret = 0;

    clean_up:
        if (fileOut != NULL) {
            MEMFreeToExpHeap(myWork->mainHeap, fileOut);
        }

        return ret;
    }

    int NandSDWorker::get_num_nand_data_only_title_save_files(ESTitleId titleId, u32* numFiles) {
        if (!change_uid(titleId)) {
            return RESULT_ES_ERROR;
        }

        char savePath[NAND_MAX_PATH];
        get_nand_data_only_title_save_path(titleId, savePath);

        int readDirRes = nand::wrapper::ReadDir(savePath, NULL, numFiles);
        if (readDirRes != NAND_RESULT_OK) {
            OSReport("NandSDWorker: NANDReadDir %s failed.[%d]\n", savePath, readDirRes);
        }
        change_uid(SYSMENU_TITLE_ID);
        return readDirRes;
    }

    int NandSDWorker::get_sd_save_perms(ESTitleId32 titleId) {
        SaveCacheEntry* cacheEntry = find_save_cache(&myWork->sdSaveList, titleId);
        if (cacheEntry == NULL || cacheEntry->banner.signature == 0) {
            return RESULT_FATAL_SD_ERROR;
        }

        return cacheEntry->banner.flags & WII_SAVE_BANNER_FLAG_NOCOPY;
    }

    void NandSDWorker::do_move_nand_app_to_sd() {
        do_copy_nand_app_to_sd();
        if (myWork->asyncResult < RESULT_OK) {
            return;
        }

        myWork->asyncResult = delete_nand_app_content(myWork->curTitleId);
        if (myWork->asyncResult != RESULT_OK) {
            return;
        }

        myWork->nandAppNum--;
        change_nand_app_count(-1);
        delete_app_cache(&myWork->nandAppList, myWork->curTitleId);
    }

    void NandSDWorker::do_move_sd_app_to_nand() {
        do_copy_sd_app_to_nand(false);
        if (myWork->asyncResult < RESULT_OK) {
            return;
        }

        do_delete_sd_app();
    }

    void NandSDWorker::do_move_nand_save_to_sd() {
        do_copy_nand_save_to_sd();
        if (myWork->asyncResult < RESULT_OK)
            return;

        if (is_data_only_title(myWork->curTitleId)) {
            ESError esErr = utility::ESMisc::DeleteTitle(System::getMem2Sys(), myWork->curTitleId);
            if (esErr != ES_ERR_OK) {
                OSReport("NandSDWorker: ESMisc::DeleteTitle failed [%d]\n", esErr);
                myWork->asyncResult = RESULT_FATAL_SD_ERROR;
            } else {
                myWork->asyncResult = RESULT_OK;
            }
            myWork->asyncResult = delete_meta_file(myWork->curTitleId);
        } else {
            myWork->asyncResult = recursion_nand_save(myWork->curTitleId, RECURSIVE_DELETE, NULL, 0);
            delete_download_task(myWork->curTitleId);
        }
        if (myWork->asyncResult != RESULT_OK) {
            return;
        }

        myWork->nandSaveNum--;
        delete_save_cache(&myWork->nandSaveList, myWork->curTitleId);
    }

    void NandSDWorker::do_move_sd_save_to_nand() {
        do_copy_sd_save_to_nand();
        if (myWork->asyncResult != RESULT_OK) {
            return;
        }

        do_delete_sd_save();
    }

    bool NandSDWorker::both_app_exist(ESTitleId32 titleId) {
        bool exists = false;
        SDAppBanner* banner = (SDAppBanner*)MEMAllocFromAllocator(&myWork->unkAllocator, sizeof(SDAppBanner));
        if (get_sd_app_banner(titleId, banner) == RESULT_OK && nand_app_exist_ex(banner->titleId) == EXISTENCE_COMPLETE) {
            exists = true;
        }

        if (banner != NULL) {
            MEMFreeToAllocator(&myWork->unkAllocator, banner);
        }

        return exists;
    }

    bool NandSDWorker::check_nand_save_exist_lo(ESTitleId32 titleId) {
        bool exists = false;
        SDSaveBanner* banner = (SDSaveBanner*)MEMAllocFromAllocator(&myWork->unkAllocator, sizeof(SDSaveBanner));
        if (get_sd_save_banner(titleId, banner) == RESULT_OK) {
            if (is_data_only_title(titleId)) {
                exists = nand_app_exist(banner->curTitleId);
            } else {
                exists = check_nand_save_banner_exist(banner->curTitleId);
            }
        }

        if (banner != NULL) {
            MEMFreeToAllocator(&myWork->unkAllocator, banner);
        }

        return exists;
    }

    int NandSDWorker::get_nand_title_version(ESTitleId titleId, u16* titleVersion) {
        ESTmdView* tmdViewPtr;

        tmdViewPtr = NULL;
        if (get_nand_app_tmdview(titleId, &tmdViewPtr) == RESULT_OK) {
            *titleVersion = tmdViewPtr->head.titleVersion;
        } else {
            *titleVersion = 0;
        }

        if (tmdViewPtr != NULL) {
            MEMFreeToExpHeap(myWork->mainHeap, tmdViewPtr);
        }

        return RESULT_OK;
    }
    int NandSDWorker::get_sd_title_version(ESTitleId32 titleId, u16* titleVersion) {
        SDAppBanner* banner;
        int ret;

        banner = (SDAppBanner*)MEMAllocFromAllocator(&myWork->unkAllocator, sizeof(SDAppBanner));
        ret = get_sd_app_banner(titleId, banner);
        if (ret != RESULT_OK) {
            MEMFreeToAllocator(&myWork->unkAllocator, banner);
            return RESULT_FATAL_SD_ERROR;
        } else {
            char path[NAND_MAX_PATH];
            ESTitleId wadTitleId;
            get_sd_app_path(titleId, path);
            s32 wadErr =
                WADGetTitleVersionEx(path, &wadTitleId, titleVersion, WAD_LOCATION_SD_CARD, ROUNDUP(banner->thumbSize, 64) + sizeof(SDAppBanner));
            if (wadErr != WAD_ERROR_OK) {
                OSReport("NandSDWorker: WADGetTitleVersionEx failed.[%d]\n", wadErr);
                ret = RESULT_FATAL_SD_ERROR;
            }
            MEMFreeToAllocator(&myWork->unkAllocator, banner);
            return ret;
        }
    }

    int NandSDWorker::check_sd_title_restorable(ESTitleId32 titleId) {
        SDAppBanner* sdAppBanner;
        ESTitleId fullTitleId;
        int ret;

        sdAppBanner = (SDAppBanner*)MEMAllocFromAllocator(&myWork->unkAllocator, sizeof(SDAppBanner));
        u16 nandTitleVersion = 0;
        u16 sdTitleVersion = 0;
        ret = get_sd_app_banner(titleId, sdAppBanner);
        if (ret != RESULT_OK) {
            goto clean_up;
        }

        fullTitleId = sdAppBanner->titleId;
        ret = get_sd_title_version(titleId, &sdTitleVersion);
        if (ret != RESULT_OK) {
            goto clean_up;
        }

        ret = get_nand_title_version(fullTitleId, &nandTitleVersion);
        if (ret != RESULT_OK) {
            goto clean_up;
        }

        nandTitleVersion = (nandTitleVersion >> 8) & 0xFFFF;
        sdTitleVersion = (sdTitleVersion >> 8) & 0xFFFF;
        if (nandTitleVersion > sdTitleVersion) {
            OSReport("NandSDWorker: SD app %08x is older version: %d (NAND: %d)\n", titleId, sdTitleVersion, nandTitleVersion);
            ret = RESULT_VERSION_ERR;
            goto clean_up;
        }

        WADBackupHeader wadBakHdr;
        ESDeviceId deviceId;
        ret = get_sd_wad_header(titleId, &wadBakHdr, ROUNDUP(sdAppBanner->thumbSize, 64));
        if (ret != RESULT_OK) {
            goto clean_up;
        }

        ret = ES_GetDeviceId(&deviceId);
        if (ret != ES_ERR_OK) {
            OSReport("NandSDWorker: ES_GetDeviceId failed: %d\n", ret);
            ret = RESULT_FATAL_SD_ERROR;
            goto clean_up;
        }

        if (wadBakHdr.deviceId != deviceId) {
            OSReport("NandSDWorker: device id is different: %d vs %d\n", wadBakHdr.deviceId, deviceId);
            ret = RESULT_NOT_TRANSFERRABLE;
        }

    clean_up:
        MEMFreeToAllocator(&myWork->unkAllocator, sdAppBanner);
        return ret;
    }
}  // namespace ipl
