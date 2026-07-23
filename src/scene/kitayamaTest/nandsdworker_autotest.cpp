#include "scene/kitayamaTest/nandsdworker_autotest.h"

#include "titledb.h"

namespace ipl {
    namespace kitayama {
        NandSDWorker_AutoTest::NandSDWorker_AutoTest() {
            mProcessState = PROCESS_STATE_IDLE;
            mResult = NandSDWorker::RESULT_WORKING;
        }

        NandSDWorker_AutoTest::~NandSDWorker_AutoTest() {
        }

        void NandSDWorker_AutoTest::start_save_test(void* work, void* savesBuf, int prio) {
            base.create(work, savesBuf, NULL, prio);
            mProcessState = PROCESS_STATE_PRE_STARTUP;
            mProcessType = PROCESS_TYPE_SAVE_TEST;
        }

        void NandSDWorker_AutoTest::start_initialize_nand(void* work, int prio) {
            base.create(work, NULL, NULL, prio);
            mProcessState = PROCESS_STATE_DO_INITIALIZE;
            mProcessType = PROCESS_TYPE_INITIALIZE;
        }

        void NandSDWorker_AutoTest::start_app_test(void* work, void* appsBuf, int prio) {
            base.create(work, NULL, appsBuf, prio);
            mProcessState = PROCESS_STATE_DO_STARTUP;
            mProcessType = PROCESS_TYPE_APP_TEST;
        }

        NandSDWorker_AutoTest::ProcessState NandSDWorker_AutoTest::process() {
            switch (mProcessType) {
                case PROCESS_TYPE_SAVE_TEST: {
                    return process_save_test();
                }
                case PROCESS_TYPE_INITIALIZE: {
                    return process_initialize();
                }
                case PROCESS_TYPE_APP_TEST: {
                    return process_app_test();
                }
                default: {
                    OSHalt("illegal state.\n", 60);
                    return mProcessState;
                }
            }
        }

        int NandSDWorker_AutoTest::get_result() {
            return mResult;
        }

        NandSDWorker_AutoTest::ProcessState NandSDWorker_AutoTest::process_save_test() {
            switch (mProcessState) {
                case PROCESS_STATE_PRE_STARTUP: {
                    mProcessState = PROCESS_STATE_DO_STARTUP;
                    break;
                }
                case PROCESS_STATE_DO_STARTUP: {
                    base.startup_async();
                    mProcessState = PROCESS_STATE_WAIT_FOR_STARTUP;
                    break;
                }
                case PROCESS_STATE_WAIT_FOR_STARTUP: {
                    if (base.is_working()) {
                        break;
                    }
                    OSReport("result: %d\n", base.get_async_result());
                    mProcessState = PROCESS_STATE_DO_MOUNT_SD;
                    break;
                }
                case PROCESS_STATE_DO_MOUNT_SD: {
                    base.mount_sd_async();
                    mProcessState = PROCESS_STATE_WAIT_MOUNT_SD;
                    break;
                }
                case PROCESS_STATE_WAIT_MOUNT_SD: {
                    if (base.is_working()) {
                        break;
                    }
                    OSReport("result: %d\n", base.get_async_result());
                    OSReport("is_sd_write_protected: %d\n", base.is_sd_write_protected());
                    OSReport("sd drive letter: %c\n", base.get_sd_drive_letter());
                    OSReport("sd state: %d\n", base.get_sd_state());
                    mProcessState = PROCESS_STATE_DO_FORMAT_SD;
                    break;
                }
                case PROCESS_STATE_DO_FORMAT_SD: {
                    base.format_sd_async();
                    mProcessState = PROCESS_STATE_WAIT_FORMAT_SD;
                    break;
                }
                case PROCESS_STATE_WAIT_FORMAT_SD: {
                    if (base.is_working()) {
                        break;
                    }
                    OSReport("result: %d\n", base.get_async_result());
                    OSReport("nand save num = %d\n", base.get_nand_save_num());
                    OSReport("sd save num = %d\n", base.get_sd_save_num());
                    mProcessState = PROCESS_STATE_DO_NAND_SAVE_EXIST_NOCOPY;
                    break;
                }
                case PROCESS_STATE_DO_NAND_SAVE_EXIST_NOCOPY: {
                    base.nocopy_exist_nand_save_async(0x0001000030303030);
                    mProcessState = PROCESS_STATE_WAIT_NAND_SAVE_EXIST_NOCOPY;
                    break;
                }
                case PROCESS_STATE_WAIT_NAND_SAVE_EXIST_NOCOPY: {
                    if (base.is_working()) {
                        break;
                    }
                    OSReport("result: %d\n", base.get_async_result());
                    mProcessState = PROCESS_STATE_DO_COPY_SAVE_TO_SD;
                    break;
                }
                case PROCESS_STATE_DO_COPY_SAVE_TO_SD: {
                    base.copy_nand_save_to_sd_async(0x0001000030303030);
                    mProcessState = PROCESS_STATE_WAIT_COPY_SAVE_TO_SD;
                    break;
                }
                case PROCESS_STATE_WAIT_COPY_SAVE_TO_SD: {
                    if (base.is_working()) {
                        break;
                    }
                    OSReport("result: %d\n", base.get_async_result());
                    OSReport("nand save num = %d\n", base.get_nand_save_num());
                    OSReport("sd save num = %d\n", base.get_sd_save_num());
                    mProcessState = PROCESS_STATE_DO_NAND_SAVE_EXIST;
                    break;
                }
                case PROCESS_STATE_DO_NAND_SAVE_EXIST: {
                    base.nand_save_exist_async(0x0001000030303030);
                    mProcessState = PROCESS_STATE_WAIT_NAND_SAVE_EXIST;
                    break;
                }
                case PROCESS_STATE_WAIT_NAND_SAVE_EXIST: {
                    if (base.is_working()) {
                        break;
                    }
                    OSReport("result: %d\n", base.get_async_result());
                    mProcessState = PROCESS_STATE_DO_NAND_SAVE_EXIST_LO;
                    break;
                }
                case PROCESS_STATE_DO_NAND_SAVE_EXIST_LO: {
                    base.nand_save_exist_lo_async(ES_TITLE_CODE(0x0001000030303030));
                    mProcessState = PROCESS_STATE_WAIT_NAND_SAVE_EXIST_LO;
                    break;
                }
                case PROCESS_STATE_WAIT_NAND_SAVE_EXIST_LO: {
                    if (base.is_working()) {
                        break;
                    }
                    OSReport("result: %d\n", base.get_async_result());
                    mProcessState = PROCESS_STATE_DO_DELETE_NAND_SAVE;
                    break;
                }
                case PROCESS_STATE_DO_DELETE_NAND_SAVE: {
                    base.delete_nand_save_async(0x0001000030303030);
                    mProcessState = PROCESS_STATE_WAIT_DELETE_NAND_SAVE;
                    break;
                }
                case PROCESS_STATE_WAIT_DELETE_NAND_SAVE: {
                    if (base.is_working()) {
                        break;
                    }

                    if (base.get_async_result() == NandSDWorker::RESULT_OK) {
                        OSReport("delete nand save id = 0x%016llx.\n", 0x0001000030303030);
                    }
                    OSReport("result: %d\n", base.get_async_result());
                    OSReport("nand save num = %d\n", base.get_nand_save_num());
                    OSReport("sd save num = %d\n", base.get_sd_save_num());
                    mProcessState = PROCESS_STATE_DO_POSTDEL_NAND_SAVE_EXIST;
                    break;
                }
                case PROCESS_STATE_DO_POSTDEL_NAND_SAVE_EXIST: {
                    base.nand_save_exist_async(0x0001000030303030);
                    mProcessState = PROCESS_STATE_WAIT_POSTDEL_NAND_SAVE_EXIST;
                    break;
                }
                case PROCESS_STATE_WAIT_POSTDEL_NAND_SAVE_EXIST: {
                    if (base.is_working()) {
                        break;
                    }
                    OSReport("result: %d\n", base.get_async_result());
                    mProcessState = PROCESS_STATE_DO_POSTDEL_NAND_SAVE_EXIST_LO;
                    break;
                }
                case PROCESS_STATE_DO_POSTDEL_NAND_SAVE_EXIST_LO: {
                    base.nand_save_exist_lo_async(ES_TITLE_CODE(0x0001000030303030));
                    mProcessState = PROCESS_STATE_WAIT_POSTDEL_NAND_SAVE_EXIST_LO;
                    break;
                }
                case PROCESS_STATE_WAIT_POSTDEL_NAND_SAVE_EXIST_LO: {
                    if (base.is_working()) {
                        break;
                    }
                    OSReport("result: %d\n", base.get_async_result());
                    mProcessState = PROCESS_STATE_DO_COPY_SAVE_TO_NAND;
                    break;
                }
                case PROCESS_STATE_DO_COPY_SAVE_TO_NAND: {
                    base.copy_sd_save_to_nand_async(ES_TITLE_CODE(0x0001000030303030));
                    mProcessState = PROCESS_STATE_WAIT_COPY_SAVE_TO_NAND;
                    break;
                }
                case PROCESS_STATE_WAIT_COPY_SAVE_TO_NAND: {
                    if (base.is_working()) {
                        break;
                    }
                    mResult = base.get_async_result();
                    OSReport("result: %d\n", mResult);
                    OSReport("nand save num = %d\n", base.get_nand_save_num());
                    OSReport("sd save num = %d\n", base.get_sd_save_num());
                    mProcessState = PROCESS_STATE_DO_POSTCPY_SD_SAVE_EXIST;
                    break;
                }
                case PROCESS_STATE_DO_POSTCPY_SD_SAVE_EXIST: {
                    base.sd_save_exist_async(ES_TITLE_CODE(0x0001000030303030));
                    mProcessState = PROCESS_STATE_WAIT_POSTCPY_SD_SAVE_EXIST;
                    break;
                }
                case PROCESS_STATE_WAIT_POSTCPY_SD_SAVE_EXIST: {
                    if (base.is_working()) {
                        break;
                    }
                    OSReport("result: %d\n", base.get_async_result());
                    mProcessState = PROCESS_STATE_DO_GET_NAND_USER_FREE_AREA;
                    break;
                }
                case PROCESS_STATE_DO_GET_NAND_USER_FREE_AREA: {
                    base.get_nand_user_free_area_async();
                    mProcessState = PROCESS_STATE_WAIT_GET_NAND_USER_FREE_AREA;
                    break;
                }
                case PROCESS_STATE_WAIT_GET_NAND_USER_FREE_AREA: {
                    if (base.is_working()) {
                        break;
                    }
                    OSReport("result: %d\n", base.get_async_result());
                    mProcessState = PROCESS_STATE_DO_LIST_NAND_SAVE;
                    break;
                }
                case PROCESS_STATE_DO_LIST_NAND_SAVE: {
                    OSReport("nand save num = %d\n", base.get_nand_save_num());
                    base.list_nand_save_async(mWiiTitleIds);
                    mProcessState = PROCESS_STATE_WAIT_LIST_NAND_SAVE;
                    break;
                }
                case PROCESS_STATE_WAIT_LIST_NAND_SAVE: {
                    if (base.is_working()) {
                        break;
                    }

                    OSReport("result: %d\n", base.get_async_result());
                    for (int i = 0; i < base.get_nand_save_num(); i++) {
                        OSReport("nand save id = 0x%016llx\n", mWiiTitleIds[i]);
                    }
                    mProcessState = PROCESS_STATE_DO_GET_NAND_BANNER;
                    break;
                }
                case PROCESS_STATE_DO_GET_NAND_BANNER: {
                    base.get_nand_save_banner_async(mWiiTitleIds[0], &mBanner);
                    mProcessState = PROCESS_STATE_WAIT_GET_NAND_BANNER;
                    break;
                }
                case PROCESS_STATE_WAIT_GET_NAND_BANNER: {
                    if (base.is_working()) {
                        break;
                    }

                    OSReport("result: %d\n", base.get_async_result());
                    if (base.get_async_result() == NandSDWorker::RESULT_OK) {
                        OSReport("banner signature = 0x%x\n", mBanner.signature);

                        u32 cachedThumbSize;
                        WIISaveBannerFile* cachedBnr = base.get_cached_nand_save_banner(mWiiTitleIds[0]);
                        OSReport("cached banner signature = 0x%x\n", cachedBnr->signature);
                    }
                    mProcessState = PROCESS_STATE_DO_GET_NAND_SAVE_SIZE;
                    break;
                }
                case PROCESS_STATE_DO_GET_NAND_SAVE_SIZE: {
                    base.get_nand_save_size_async(mWiiTitleIds[0]);
                    mProcessState = PROCESS_STATE_WAIT_GET_NAND_SAVE_SIZE;
                    break;
                }
                case PROCESS_STATE_WAIT_GET_NAND_SAVE_SIZE: {
                    if (base.is_working()) {
                        break;
                    }

                    int result;
                    result = base.get_async_result();
                    if (result >= 0) {
                        OSReport("size of save id 0x%016llx: %d\n", mWiiTitleIds[0], result);
                        OSReport("cached save size = %d\n", base.get_cached_nand_save_size(mWiiTitleIds[0]));
                    } else {
                        OSReport("get_nand_save_size_async error: %d\n", result);
                        mResult = result;
                        mProcessState = PROCESS_STATE_DO_TERMINATE;
                        break;
                    }
                    mProcessState = PROCESS_STATE_WAIT_FOR_UNMOUNTED_SD;
                    break;
                }
                case PROCESS_STATE_WAIT_FOR_UNMOUNTED_SD: {
                    if (base.get_sd_state() == NandSDWorker::SD_STATE_INSERTED) {
                        mProcessState = PROCESS_STATE_DO_REMOUNT_SD;
                    }
                    break;
                }
                case PROCESS_STATE_DO_REMOUNT_SD: {
                    base.mount_sd_async();
                    mProcessState = PROCESS_STATE_WAIT_REMOUNT_SD;
                    break;
                }
                case PROCESS_STATE_WAIT_REMOUNT_SD: {
                    if (base.is_working()) {
                        break;
                    }

                    OSReport("result: %d\n", base.get_async_result());
                    OSReport("sd state: %d\n", base.get_sd_state());
                    if (base.get_sd_state() == NandSDWorker::SD_STATE_READY) {
                        OSReport("is_sd_write_protected: %d\n", base.is_sd_write_protected());
                        OSReport("sd drive letter: %c\n", base.get_sd_drive_letter());
                        mProcessState = PROCESS_STATE_DO_LIST_SD_SAVE;
                    } else {
                        mProcessState = PROCESS_STATE_WAIT_FOR_UNMOUNTED_SD;
                    }
                    break;
                }
                case PROCESS_STATE_DO_LIST_SD_SAVE: {
                    memset(mSDTitleIds, 0, sizeof(mSDTitleIds));
                    base.list_sd_save_async(mSDTitleIds);
                    mProcessState = PROCESS_STATE_WAIT_LIST_SD_SAVE;
                    break;
                }
                case PROCESS_STATE_WAIT_LIST_SD_SAVE: {
                    if (base.is_working()) {
                        break;
                    }
                    OSReport("result: %d\n", base.get_async_result());
                    OSReport("sd save num = %d\n", base.get_sd_save_num());
                    for (int i = 0; i < base.get_sd_save_num(); i++) {
                        OSReport("sd save id = 0x%08x\n", mSDTitleIds[i]);
                    }
                    mProcessState = PROCESS_STATE_DO_GET_SD_BANNER;
                    break;
                }
                case PROCESS_STATE_DO_GET_SD_BANNER: {
                    memset(&mBanner, 0, sizeof(mBanner));
                    base.get_sd_save_banner_async(mSDTitleIds[0], &mBanner);
                    mProcessState = PROCESS_STATE_WAIT_GET_SD_BANNER;
                    break;
                }
                case PROCESS_STATE_WAIT_GET_SD_BANNER: {
                    if (base.is_working()) {
                        break;
                    }
                    OSReport("result: %d\n", base.get_async_result());
                    if (base.get_async_result() == NandSDWorker::RESULT_OK) {
                        OSReport("banner signature = 0x%x\n", mBanner.signature);

                        u32 cachedThumbSize;
                        WIISaveBannerFile* cachedBnr = base.get_cached_sd_save_banner(mSDTitleIds[0]);
                        OSReport("cached banner signature = 0x%x\n", cachedBnr->signature);
                    }
                    mProcessState = PROCESS_STATE_DO_GET_SD_SAVE_SIZE;
                    break;
                }
                case PROCESS_STATE_DO_GET_SD_SAVE_SIZE: {
                    base.get_sd_save_size_async(mSDTitleIds[0]);
                    mProcessState = PROCESS_STATE_WAIT_GET_SD_SAVE_SIZE;
                    break;
                }
                case PROCESS_STATE_WAIT_GET_SD_SAVE_SIZE: {
                    if (base.is_working()) {
                        break;
                    }

                    int result;
                    result = base.get_async_result();
                    if (result >= 0) {
                        OSReport("size of save id 0x%08x: %d\n", mSDTitleIds[0], result);
                        OSReport("cached save size = %d\n", base.get_cached_sd_save_size(mSDTitleIds[0]));
                    } else {
                        OSReport("get_sd_save_size_async error: %d\n", result);
                        mResult = result;
                        mProcessState = PROCESS_STATE_DO_TERMINATE;
                        break;
                    }
                    mProcessState = PROCESS_STATE_DO_DELETE_SD_SAVE;
                    break;
                }
                case PROCESS_STATE_DO_DELETE_SD_SAVE: {
                    base.delete_sd_save_async(mSDTitleIds[0]);
                    OSReport("delete sd save id = 0x%08x.\n", mSDTitleIds[0]);
                    mProcessState = PROCESS_STATE_WAIT_DELETE_SD_SAVE;
                    break;
                }
                case PROCESS_STATE_WAIT_DELETE_SD_SAVE: {
                    if (base.is_working()) {
                        break;
                    }
                    OSReport("result: %d\n", base.get_async_result());
                    mResult = NandSDWorker::RESULT_OK;
                    mProcessState = PROCESS_STATE_DO_POSTDEL_SD_SAVE_EXIST;
                    break;
                }
                case PROCESS_STATE_DO_POSTDEL_SD_SAVE_EXIST: {
                    base.sd_save_exist_async(mSDTitleIds[0]);
                    mProcessState = PROCESS_STATE_WAIT_POSTDEL_SD_SAVE_EXIST;
                    break;
                }
                case PROCESS_STATE_WAIT_POSTDEL_SD_SAVE_EXIST: {
                    if (base.is_working()) {
                        break;
                    }
                    OSReport("result: %d\n", base.get_async_result());
                    mProcessState = PROCESS_STATE_DO_TERMINATE;
                    break;
                }
                case PROCESS_STATE_DO_TERMINATE: {
                    base.terminate_async();
                    mProcessState = PROCESS_STATE_WAIT_FOR_TERMINATE;
                    break;
                }
                case PROCESS_STATE_WAIT_FOR_TERMINATE: {
                    if (!base.is_terminated())
                        break;
                    if (mResult == NandSDWorker::RESULT_OK) {
                        mProcessState = PROCESS_STATE_DONE_OK;
                    } else {
                        mProcessState = PROCESS_STATE_DONE_ERR;
                    }
                    break;
                }
                case PROCESS_STATE_DONE_ERR:
                case PROCESS_STATE_DONE_OK:
                default: {
                    break;
                }
            }

            return mProcessState;
        }

        NandSDWorker_AutoTest::ProcessState NandSDWorker_AutoTest::process_initialize() {
            switch (mProcessState) {
                case PROCESS_STATE_DO_INITIALIZE: {
                    base.initialize_nand_async();
                    mProcessState = PROCESS_STATE_WAIT_FOR_INITIALIZE;
                    break;
                }
                case PROCESS_STATE_WAIT_FOR_INITIALIZE: {
                    if (base.is_working()) {
                        break;
                    }
                    mResult = base.get_async_result();
                    OSReport("result: %d\n", mResult);
                    mProcessState = PROCESS_STATE_DO_TERMINATE;
                    break;
                }
                case PROCESS_STATE_DO_TERMINATE: {
                    base.terminate_async();
                    mProcessState = PROCESS_STATE_WAIT_FOR_TERMINATE;
                    break;
                }
                case PROCESS_STATE_WAIT_FOR_TERMINATE: {
                    if (!base.is_terminated()) {
                        break;
                    }
                    if (mResult == NandSDWorker::RESULT_OK) {
                        mProcessState = PROCESS_STATE_DONE_OK;
                    } else {
                        mProcessState = PROCESS_STATE_DONE_ERR;
                    }
                    break;
                }
                case PROCESS_STATE_DONE_ERR:
                case PROCESS_STATE_DONE_OK:
                default: {
                    break;
                }
            }

            return mProcessState;
        }

        NandSDWorker_AutoTest::ProcessState NandSDWorker_AutoTest::process_app_test() {
            switch (mProcessState) {
                case PROCESS_STATE_DO_STARTUP: {
                    base.startup_async();
                    mProcessState = PROCESS_STATE_WAIT_FOR_STARTUP;
                    break;
                }
                case PROCESS_STATE_WAIT_FOR_STARTUP: {
                    if (base.is_working()) {
                        break;
                    }
                    OSReport("result: %d\n", base.get_async_result());
                    mProcessState = PROCESS_STATE_DO_LIST_NAND_APP;
                    break;
                }
                case PROCESS_STATE_DO_LIST_NAND_APP: {
                    OSReport("nand app num = %d\n", base.get_nand_app_num());
                    base.list_nand_app_async(mWiiTitleIds);
                    mProcessState = PROCESS_STATE_WAIT_LIST_NAND_APP;
                    break;
                }
                case PROCESS_STATE_WAIT_LIST_NAND_APP: {
                    if (base.is_working()) {
                        break;
                    }
                    OSReport("result: %d\n", base.get_async_result());
                    for (int i = 0; i < base.get_nand_app_num(); i++) {
                        OSReport("nand app id = 0x%016llx\n", mWiiTitleIds[i]);
                    }
                    mProcessState = PROCESS_STATE_DO_GET_NAND_THUMBNAIL;
                    break;
                }
                case PROCESS_STATE_DO_GET_NAND_THUMBNAIL: {
                    base.get_nand_app_thumbnail_async(mWiiTitleIds[0], mThumbnailData, &mMetaHdr);
                    mProcessState = PROCESS_STATE_WAIT_GET_NAND_THUMBNAIL;
                    break;
                }
                case PROCESS_STATE_WAIT_GET_NAND_THUMBNAIL: {
                    if (base.is_working()) {
                        break;
                    }
                    OSReport("result: %d\n", base.get_async_result());
                    if (base.get_async_result() > 0) {
                        channel::SChanMgrMetaHeader* cachedHdr = base.get_cached_nand_app_meta_header(mWiiTitleIds[0]);

                        OSReport("banner signature = 0x%x\n", *(u32*)mThumbnailData);

                        u32 cachedThumbSize;
                        void* cachedThumb = base.get_cached_nand_app_thumbnail(mWiiTitleIds[0], &cachedThumbSize);
                        OSReport("cached banner signature = 0x%x\n", *(u32*)cachedThumb);

                        OSReport("meta signature: %c%c%c%c\n", mMetaHdr.blockHdr.magic[0], mMetaHdr.blockHdr.magic[1], mMetaHdr.blockHdr.magic[2],
                                 mMetaHdr.blockHdr.magic[3]);
                        OSReport("cached meta signature: %c%c%c%c\n", cachedHdr->blockHdr.magic[0], cachedHdr->blockHdr.magic[1],
                                 cachedHdr->blockHdr.magic[2], cachedHdr->blockHdr.magic[3]);
                    }
                    mProcessState = PROCESS_STATE_DO_GET_NAND_SIZE;
                    break;
                }
                case PROCESS_STATE_DO_GET_NAND_SIZE: {
                    base.get_nand_app_size_async(mWiiTitleIds[0]);
                    mProcessState = PROCESS_STATE_WAIT_GET_NAND_SIZE;
                    break;
                }
                case PROCESS_STATE_WAIT_GET_NAND_SIZE: {
                    if (base.is_working()) {
                        break;
                    }
                    int result;
                    result = base.get_async_result();
                    if (result >= 0) {
                        OSReport("size of app id 0x%016llx: %d\n", mWiiTitleIds[0], result);
                        OSReport("cached app size = %d\n", base.get_cached_nand_app_size(mWiiTitleIds[0]));
                    } else {
                        OSReport("get_nand_app_size_async error: %d\n", result);
                        mResult = result;
                        mProcessState = PROCESS_STATE_DO_TERMINATE;
                        break;
                    }
                    mProcessState = PROCESS_STATE_DO_MOUNT_SD;
                    break;
                }
                case PROCESS_STATE_DO_MOUNT_SD: {
                    base.mount_sd_async();
                    mProcessState = PROCESS_STATE_WAIT_MOUNT_SD;
                    break;
                }
                case PROCESS_STATE_WAIT_MOUNT_SD: {
                    if (base.is_working()) {
                        break;
                    }
                    OSReport("result: %d\n", base.get_async_result());
                    OSReport("is_sd_write_protected: %d\n", base.is_sd_write_protected());
                    OSReport("sd drive letter: %c\n", base.get_sd_drive_letter());
                    OSReport("sd state: %d\n", base.get_sd_state());
                    mProcessState = PROCESS_STATE_DO_FORMAT_SD;
                    break;
                }
                case PROCESS_STATE_DO_FORMAT_SD: {
                    base.format_sd_async();
                    mProcessState = PROCESS_STATE_WAIT_FORMAT_SD;
                    break;
                }
                case PROCESS_STATE_WAIT_FORMAT_SD: {
                    if (base.is_working()) {
                        break;
                    }
                    OSReport("result: %d\n", base.get_async_result());
                    OSReport("sd app num = %d\n", base.get_sd_app_num());
                    OSReport("nand app num = %d\n", base.get_nand_app_num());
                    mProcessState = PROCESS_STATE_DO_NAND_APP_EXIST;
                    break;
                }
                case PROCESS_STATE_DO_NAND_APP_EXIST: {
                    base.nand_app_exist_async(mWiiTitleIds[0]);
                    mProcessState = PROCESS_STATE_WAIT_NAND_APP_EXIST;
                    break;
                }
                case PROCESS_STATE_WAIT_NAND_APP_EXIST: {
                    if (base.is_working()) {
                        break;
                    }
                    OSReport("result: %d\n", base.get_async_result());
                    mProcessState = PROCESS_STATE_DO_COPY_APP_TO_SD;
                    break;
                }
                case PROCESS_STATE_DO_COPY_APP_TO_SD: {
                    base.copy_nand_app_to_sd_async(mWiiTitleIds[0]);
                    mProcessState = PROCESS_STATE_WAIT_COPY_APP_TO_SD;
                    break;
                }
                case PROCESS_STATE_WAIT_COPY_APP_TO_SD: {
                    if (base.is_working()) {
                        break;
                    }
                    OSReport("result: %d\n", base.get_async_result());
                    mProcessState = PROCESS_STATE_DO_GET_SD_FREE_AREA;
                    break;
                }
                case PROCESS_STATE_DO_GET_SD_FREE_AREA:
                    OSReport("get sd free area.\n");
                    base.get_sd_free_area_async(&mSDFreeSize);
                    mProcessState = PROCESS_STATE_WAIT_GET_SD_FREE_AREA;
                    break;
                case PROCESS_STATE_WAIT_GET_SD_FREE_AREA: {
                    if (base.is_working()) {
                        break;
                    }
                    OSReport("result: %d free size: %llu\n", base.get_async_result(), mSDFreeSize);
                    mProcessState = PROCESS_STATE_DO_LIST_SD_APP;
                    break;
                }
                case PROCESS_STATE_DO_LIST_SD_APP: {
                    memset(mSDTitleIds, 0, sizeof(mSDTitleIds));
                    base.list_sd_app_async(mSDTitleIds);
                    mProcessState = PROCESS_STATE_WAIT_LIST_SD_APP;
                    break;
                }
                case PROCESS_STATE_WAIT_LIST_SD_APP: {
                    if (base.is_working()) {
                        break;
                    }
                    OSReport("result: %d\n", base.get_async_result());
                    OSReport("sd app num = %d\n", base.get_sd_app_num());
                    OSReport("nand app num = %d\n", base.get_nand_app_num());
                    for (int i = 0; i < base.get_sd_app_num(); i++) {
                        OSReport("sd app id = 0x%08x\n", mSDTitleIds[i]);
                    }
                    mProcessState = PROCESS_STATE_DO_SD_APP_EXIST;
                    break;
                }
                case PROCESS_STATE_DO_SD_APP_EXIST: {
                    base.sd_app_exist_async(mSDTitleIds[0]);
                    mProcessState = PROCESS_STATE_WAIT_SD_APP_EXIST;
                    break;
                }
                case PROCESS_STATE_WAIT_SD_APP_EXIST: {
                    if (base.is_working()) {
                        break;
                    }
                    OSReport("result: %d\n", base.get_async_result());
                    mProcessState = PROCESS_STATE_DO_GET_SD_THUMBNAIL;
                    break;
                }
                case PROCESS_STATE_DO_GET_SD_THUMBNAIL: {
                    memset(mThumbnailData, 0, sizeof(mThumbnailData));
                    base.get_sd_app_thumbnail_async(mSDTitleIds[0], mThumbnailData, &mMetaHdr);
                    mProcessState = PROCESS_STATE_WAIT_GET_SD_THUMBNAIL;
                    break;
                }
                case PROCESS_STATE_WAIT_GET_SD_THUMBNAIL: {
                    if (base.is_working()) {
                        break;
                    }
                    OSReport("result: %d\n", base.get_async_result());
                    if (base.get_async_result() >= 0) {
                        channel::SChanMgrMetaHeader* cachedHdr = base.get_cached_sd_app_meta_header(mSDTitleIds[0]);

                        OSReport("banner signature = 0x%x\n", *(u32*)mThumbnailData);

                        u32 cachedThumbSize;
                        void* cachedThumb = base.get_cached_sd_app_thumbnail(mSDTitleIds[0], &cachedThumbSize);
                        OSReport("cached banner signature = 0x%x\n", *(u32*)cachedThumb);

                        OSReport("meta signature: %c%c%c%c\n", mMetaHdr.blockHdr.magic[0], mMetaHdr.blockHdr.magic[1], mMetaHdr.blockHdr.magic[2],
                                 mMetaHdr.blockHdr.magic[3]);
                        OSReport("cached meta signature: %c%c%c%c\n", cachedHdr->blockHdr.magic[0], cachedHdr->blockHdr.magic[1],
                                 cachedHdr->blockHdr.magic[2], cachedHdr->blockHdr.magic[3]);
                    }
                    mProcessState = PROCESS_STATE_DO_GET_SD_APP_SIZE;
                    break;
                }
                case PROCESS_STATE_DO_GET_SD_APP_SIZE: {
                    base.get_sd_app_size_async(mSDTitleIds[0]);
                    mProcessState = PROCESS_STATE_WAIT_GET_SD_APP_SIZE;
                    break;
                }
                case PROCESS_STATE_WAIT_GET_SD_APP_SIZE: {
                    if (base.is_working()) {
                        break;
                    }
                    int result;
                    result = base.get_async_result();
                    if (result >= 0) {
                        OSReport("size of app id 0x%08x: %d\n", mSDTitleIds[0], result);
                        OSReport("cached app size = %d\n", base.get_cached_sd_app_size(mSDTitleIds[0]));
                    } else {
                        OSReport("get_sd_app_size_async error: %d\n", result);
                        mResult = result;
                        mProcessState = PROCESS_STATE_DO_TERMINATE;
                        break;
                    }
                    mProcessState = PROCESS_STATE_DO_DELETE_NAND_APP;
                    break;
                }
                case PROCESS_STATE_DO_DELETE_NAND_APP: {
                    base.delete_nand_app_async(mWiiTitleIds[0], false);
                    mProcessState = PROCESS_STATE_WAIT_DELETE_NAND_APP;
                    break;
                }
                case PROCESS_STATE_WAIT_DELETE_NAND_APP: {
                    if (base.is_working()) {
                        break;
                    }
                    if (base.get_async_result() == NandSDWorker::RESULT_OK) {
                        OSReport("delete nand app id = 0x%016llx.\n", mWiiTitleIds[0]);
                    }
                    OSReport("result: %d\n", base.get_async_result());
                    OSReport("sd app num = %d\n", base.get_sd_app_num());
                    OSReport("nand app num = %d\n", base.get_nand_app_num());
                    mProcessState = PROCESS_STATE_DO_POSTDEL_NAND_APP_EXIST;
                    break;
                }
                case PROCESS_STATE_DO_POSTDEL_NAND_APP_EXIST: {
                    base.nand_app_exist_async(mWiiTitleIds[0]);
                    mProcessState = PROCESS_STATE_WAIT_POSTDEL_NAND_APP_EXIST;
                    break;
                }
                case PROCESS_STATE_WAIT_POSTDEL_NAND_APP_EXIST: {
                    if (base.is_working()) {
                        break;
                    }
                    OSReport("result: %d\n", base.get_async_result());
                    mProcessState = PROCESS_STATE_DO_COPY_APP_TO_NAND;
                    break;
                }
                case PROCESS_STATE_DO_COPY_APP_TO_NAND: {
                    base.copy_sd_app_to_nand_async(mSDTitleIds[0], false);
                    mProcessState = PROCESS_STATE_WAIT_COPY_APP_TO_NAND;
                    break;
                }
                case PROCESS_STATE_WAIT_COPY_APP_TO_NAND: {
                    if (base.is_working()) {
                        break;
                    }
                    OSReport("result: %d\n", base.get_async_result());
                    OSReport("sd app num = %d\n", base.get_sd_app_num());
                    OSReport("nand app num = %d\n", base.get_nand_app_num());
                    mProcessState = PROCESS_STATE_DO_DELETE_SD_APP;
                    break;
                }
                case PROCESS_STATE_DO_DELETE_SD_APP: {
                    base.delete_sd_app_async(mSDTitleIds[0]);
                    OSReport("delete sd app id = 0x%08x.\n", mSDTitleIds[0]);
                    mProcessState = PROCESS_STATE_WAIT_DELETE_SD_APP;
                    break;
                }
                case PROCESS_STATE_WAIT_DELETE_SD_APP: {
                    if (base.is_working()) {
                        break;
                    }
                    OSReport("result: %d\n", base.get_async_result());
                    OSReport("sd app num = %d\n", base.get_sd_app_num());
                    OSReport("nand app num = %d\n", base.get_nand_app_num());
                    mResult = 0;
                    mProcessState = PROCESS_STATE_DO_POSTDEL_SD_APP_EXIST;
                    break;
                }
                case PROCESS_STATE_DO_POSTDEL_SD_APP_EXIST: {
                    base.sd_app_exist_async(mSDTitleIds[0]);
                    mProcessState = PROCESS_STATE_WAIT_POSTDEL_SD_APP_EXIST;
                    break;
                }
                case PROCESS_STATE_WAIT_POSTDEL_SD_APP_EXIST: {
                    if (base.is_working()) {
                        break;
                    }
                    OSReport("result: %d\n", base.get_async_result());
                    mProcessState = PROCESS_STATE_DO_TERMINATE;
                    break;
                }
                case PROCESS_STATE_DO_TERMINATE: {
                    base.terminate_async();
                    mProcessState = PROCESS_STATE_WAIT_FOR_TERMINATE;
                    break;
                }
                case PROCESS_STATE_WAIT_FOR_TERMINATE: {
                    if (!base.is_terminated())
                        break;
                    if (mResult == NandSDWorker::RESULT_OK) {
                        mProcessState = PROCESS_STATE_DONE_OK;
                    } else {
                        mProcessState = PROCESS_STATE_DONE_ERR;
                    }
                    break;
                }
                case PROCESS_STATE_DONE_ERR:
                case PROCESS_STATE_DONE_OK:
                default: {
                    break;
                }
            }

            return mProcessState;
        }
    }  // namespace kitayama
}  // namespace ipl
