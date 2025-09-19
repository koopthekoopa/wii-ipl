#include "system/iplCdbBackup.h"

#include "iplSystem.h"

namespace ipl {
    const int   CdbBackup::unknown = (cdb::Manager::UNKNOWN_VALUE * 0x1400000) / 100;

    void    cdb_backup_delete_task_(void*);
    void    cdb_backup_move_task_(void*);

    CdbBackup::CdbBackup() :
    mbDoneProcess(false),
    mCDBResult(0),
    mPrevFreeSize(0),
    mTotalFreeSize(0),
    mState(STATE_MOUNT_SD),
    mState2(STATE_INVALID) {
        System::getHomeButtonMenu()->disable();
        System::stopReceiveSchedule();

        if (System::getCdbManager()->getSDWorker()->is_working()) {
            mState = STATE_WAIT_WORKER;
            mState2 = STATE_MOUNT_SD;
        }
    }

    CdbBackup::~CdbBackup() {
        System::getHomeButtonMenu()->enable();
        System::startReceiveSchedule();
    }

    void CdbBackup::update() {
        switch (mState) {
            case STATE_WAIT_WORKER: {
                stt_wait_worker();
                break;
            }
            case STATE_MOUNT_SD: {
                stt_mount_sd();
                break;
            }
            case STATE_CHECK_SD: {
                stt_check_sd();
                break;
            }
            case STATE_DELETING: {
                stt_wait_del_msg();
                break;
            }
            case STATE_DELETING_2: {
                stt_wait_besd_del_msg();
                break;
            }
            case STATE_WAIT_DELETING: {
                stt_wait_delete();
                break;
            }
            case STATE_DONE_DELETE: {
                stt_wait_del_msg_fns();
                break;
            }
            case STATE_SD_BACKING: {
                stt_wait_sd_back_msg();
                break;
            }
            case STATE_SD_CHECK_ERR: {
                stt_check_sd_err();
                break;
            }
            case STATE_SD_BACK_PREPARE: {
                stt_check_prepare_back();
                break;
            }
            case STATE_WAIT_SD_BACKING: {
                stt_wait_backup();
                break;
            }
            case STATE_DONE_SD_BACK: {
                stt_wait_back_msg_fns();
                break;
            }
            case STATE_FINISHED_2: {
                mState = STATE_FINISHED;
                break;
            }
            case STATE_CLEAN_SD_BACK: {
                stt_clean_up_back();
                break;
            }
            case STATE_WAIT_RET: {
                stt_wait_ret_msg();
                break;
            }
            case STATE_WAIT_FINISH_MSG: {
                stt_wait_fns_msg();
                break;
            }
            case STATE_WAIT_TERMINATE: {
                stt_wait_terminate();
                break;
            }
            default: {
                break;
            }
        }
    }

    void CdbBackup::stt_wait_worker() {
        if (!System::getCdbManager()->getSDWorker()->is_working()) {
            error_handling();
            mState = mState2;
            mState2 = STATE_INVALID;
        }
    }

    void CdbBackup::stt_mount_sd() {
        System::getCdbManager()->getSDWorker()->mount_sd_async();
        mState2 = STATE_CHECK_SD;
        mState = STATE_WAIT_WORKER;
    }

    void CdbBackup::stt_check_sd() {
        SDVFWorker* sdVfWorker = System::getCdbManager()->getSDWorker();
        // ...
        if (System::isSafeMode()) {
            
        }
        switch (sdVfWorker->get_sd_state()) {
            case SDVFWorker::SD_STATE_UNAVAILABLE: {
                break;
            }
            case SDVFWorker::SD_STATE_EJECTED: {
                // @BUG Should set `bSwapSound` to true
                System::getDialog()->callBtn2(MESG_CDBBACKUP_ASK_FOR_DELETE, MESG_CMN_NO, MESG_CMN_YES);
                mState = STATE_DELETING;
                break;
            }
            case SDVFWorker::SD_STATE_INSERTED: {
                mState = STATE_MOUNT_SD;
                break;
            }
            default: {
                // @BUG Should set `bSwapSound` to true
                System::getDialog()->callBtn2(MESG_CDBBACKUP_ASK_FOR_BACKUP, MESG_CMN_NO, MESG_CMN_YES);
                mState = STATE_SD_BACKING;
                break;
            }
        }
    }

    void CdbBackup::stt_wait_del_msg() {
        switch (System::getDialog()->getLastResult()) {
            // "Yes"
            case DialogWindow::RESULT_LEFT_BUTTON: {
                mbDoneProcess = false;
                System::getTask1()->request(cdb_backup_delete_task_, this, NULL);
                System::getDialog()->callBtn0(MESG_CDBBACKUP_DELETING, 0, true);
                mState = STATE_WAIT_DELETING;
                break;
            }
            // "No"
            case DialogWindow::RESULT_RIGHT_BUTTON: {
                System::getDialog()->callBtn1(MESG_CDBBACKUP_BACKING_NO_SD, MESG_CMN_OK);
                mState = STATE_WAIT_RET;
                mState2 = STATE_MOUNT_SD;
                break;
            }
        }
    }

    void CdbBackup::stt_wait_besd_del_msg() {
        switch (System::getDialog()->getLastResult()) {
            // "Yes"
            case DialogWindow::RESULT_LEFT_BUTTON: {
                mbDoneProcess = false;
                System::getTask1()->request(cdb_backup_delete_task_, this, NULL);
                System::getDialog()->callBtn0(MESG_CDBBACKUP_DELETING, 0, true);
                mState = STATE_WAIT_DELETING;
                break;
            }
            // "No"
            case DialogWindow::RESULT_RIGHT_BUTTON: {
                mState = STATE_CHECK_SD;
                break;
            }
        }
    }

    void CdbBackup::stt_wait_delete() {
        if (mbDoneProcess) {
            System::getDialog()->terminate();
            mState = STATE_DONE_DELETE;
        }
    }

    void CdbBackup::stt_wait_del_msg_fns() {
        if (System::getDialog()->getLastResult() != DialogWindow::RESULT_NONE) {
            if (!System::getCdbManager()->isOverFlow()) {
                System::getDialog()->callBtn1(MESG_CDBBACKUP_DELETE_FINISH, MESG_CMN_OK);
                mState = STATE_WAIT_FINISH_MSG;
                mState2 = STATE_FINISHED;
            }
        }
    }

    void CdbBackup::stt_wait_sd_back_msg() {
        if (!System::getCdbManager()->getSDWorker()->is_working()) {
            if (System::getCdbManager()->getSDWorker()->get_sd_state() == SDVFWorker::SD_STATE_INSERTED) {
                System::getCdbManager()->getSDWorker()->mount_sd_async();
            }
        }
        else {
            error_handling();
        }

        switch (System::getDialog()->getLastResult()) {
            // "Yes"
            case DialogWindow::RESULT_LEFT_BUTTON: {
                if (System::getCdbManager()->getSDWorker()->is_working()) {
                    mState = STATE_WAIT_WORKER;
                    mState2 = 8;
                }
                else {
                    mState = STATE_SD_CHECK_ERR;
                }
                break;
            }
            // "No"
            case DialogWindow::RESULT_RIGHT_BUTTON: {
                // @BUG Should set `bSwapSound` to true
                System::getDialog()->callBtn2(MESG_CDBBACKUP_ASK_FOR_DELETE, MESG_CMN_NO, MESG_CMN_YES);
                mState = STATE_DELETING_2;
                break;
            }
        }
    }

    void CdbBackup::stt_check_sd_err() {
        SDVFWorker* sdVfWorker = System::getCdbManager()->getSDWorker();
        switch (sdVfWorker->get_sd_state()) {
            case SDVFWorker::SD_STATE_AVAILABLE: {
                if (sdVfWorker->is_sd_write_protected()) {
                    System::getDialog()->callBtn1(MESG_CDBBACKUP_SD_LOCKED, MESG_CMN_OK);
                    mState = STATE_WAIT_RET;
                    mState2 = STATE_MOUNT_SD;
                }
                else {
                    sdVfWorker->prepare_cdb_backup_to_sd_async();
                    mState = STATE_WAIT_WORKER;
                    mState2 = STATE_SD_BACK_PREPARE;
                }
                break;
            }
            case SDVFWorker::SD_STATE_BROKEN:
            case SDVFWorker::SD_STATE_ERROR: {
                System::getDialog()->callBtn1(MESG_CDBBACKUP_SD_UNAVAILABLE, MESG_CMN_OK);
                mState = STATE_WAIT_RET;
                mState2 = STATE_MOUNT_SD;
                break;
            }
            default: {
                System::getDialog()->callBtn1(MESG_CDBBACKUP_SD_UNKNOWN_ERR, MESG_CMN_OK);
                mState = STATE_WAIT_RET;
                mState2 = STATE_MOUNT_SD;
                break;
            }
        }
    }

    void CdbBackup::stt_check_prepare_back() {
        if (System::getCdbManager()->getSDWorker()->get_async_result() == SDVFWorker::RESULT_SUCCESS) {
            mbDoneProcess = false;
            System::getTask1()->request(cdb_backup_move_task_, this, NULL);
            System::getDialog()->callBtnPrg(MESG_CDBBACKUP_BACKING);
            mState = STATE_WAIT_SD_BACKING;
        }
        else {
            System::getDialog()->callBtn1(MESG_CDBBACKUP_SD_UNKNOWN_ERR, MESG_CMN_OK);
            mState = STATE_WAIT_RET;
            mState2 = STATE_MOUNT_SD;
        }
    }

    void CdbBackup::stt_wait_backup() {
        if (fn_8135B1C0() < 100) {
            System::getDialog()->setProgBarLength(fn_8135B1C0());
        }

        if (mbDoneProcess) {
            if (fn_8135B1C0() >= 100) {
                System::getDialog()->setProgBarLength(100);
            }
            else {
                System::getDialog()->terminate();
            }
            mState = STATE_DONE_SD_BACK;
        }
    }

    void CdbBackup::stt_wait_back_msg_fns() {
        if (System::getDialog()->getLastResult() != DialogWindow::RESULT_NONE) {
            cdb::Manager* cdbManager = System::getCdbManager();

            switch (mCDBResult) {
                case CDB_ERROR_OK: {
                    System::getDialog()->callBtn1(MESG_CDBBACKUP_BACK_FINISHED, MESG_CMN_OK);
                    mState = STATE_WAIT_FINISH_MSG;
                    mState2 = STATE_FINISHED_2;
                    break;
                }
                case CDB_ERROR_OUT_OF_SPACE: {
                    if (cdbManager->isOverFlow()) {
                        System::getDialog()->callBtn1(MESG_CDBBACKUP_BACK_SD_FULL, MESG_CMN_OK);
                        mState = STATE_WAIT_RET;
                        mState2 = STATE_CLEAN_SD_BACK;
                    }
                    else {
                        System::getDialog()->callBtn1(MESG_CDBBACKUP_BACK_FINISHED_2, MESG_CMN_OK);
                        mState = STATE_WAIT_FINISH_MSG;
                        mState2 = STATE_FINISHED_2;
                    }
                    break;
                }
                default: {
                    System::getDialog()->callBtn1(MESG_CDBBACKUP_BACK_SD_ERROR, MESG_CMN_OK);
                    mState = STATE_WAIT_RET;
                    mState2 = STATE_CLEAN_SD_BACK;
                }
            }
            mCDBResult = 0;
        }
    }

    void CdbBackup::stt_wait_ret_msg() {
        if (System::getDialog()->getLastResult() != DialogWindow::RESULT_NONE) {
            mState = mState2;
            mState2 = STATE_INVALID;
        }
    }

    void CdbBackup::stt_wait_fns_msg() {
        if (System::getDialog()->getLastResult() != DialogWindow::RESULT_NONE) {
            mState = mState2;
            mState2 = STATE_INVALID;
        }
    }

    void CdbBackup::stt_clean_up_back() {
        System::getCdbManager()->getSDWorker()->cleanup_cdb_backup_to_sd_async();
        mState = STATE_WAIT_WORKER;
        mState2 = STATE_MOUNT_SD;
    }

    void CdbBackup::stt_wait_terminate() {
        if (System::getCdbManager()->getSDWorker()->is_terminated()) {
            mState = STATE_FINISHED;
        }
    }

    void CdbBackup::error_handling() {
        switch (System::getCdbManager()->getSDWorker()->get_async_result()) {
            // SD Card errors are considered corrupted system files??
            case SDVFWorker::RESULT_FA_ERROR: {
                IPLErrorLogAndDisplay(MESG_ERR_FILE, "SDVFWorker", SDVFWorker::RESULT_FA_ERROR, 592);
                break;
            }
            // Unused code (likely left over from it's base, NandSDWorker)
            case SDVFWorker::RESULT_NAND_CORRUPT: {
                IPLErrorDisplay(MESG_ERR_NAND);
                break;
            }
        }
    }

    int CdbBackup::fn_8135B1C0() {
        return ((mTotalFreeSize - mPrevFreeSize) * 100) / ((0x1400000 - unknown) - mPrevFreeSize);
    }

    BOOL cdb_backup_delete_search_cb_(void* work, CDBRecord* record) {
        CdbBackup* cdbBackup = reinterpret_cast<CdbBackup*>(work);

        BOOL result = TRUE;

        cdb::Manager* cdbManager = System::getCdbManager();

        if (cdbManager->remove(record)) {
            cdbManager->getFreeSize();
            if (cdbManager->isUnderFlow()) {
                result = FALSE;
            }
        }
        else {
            result = FALSE;
        }

        return result;
    }

    // Stack loading order is swapped. Turning peephole off fixes it but still not matching
    // https://decomp.me/scratch/G7ppD
    void cdb_backup_delete_task_(void* work) {
        CdbBackup* cdbBackup = reinterpret_cast<CdbBackup*>(work);

        CDBDate beginDate = CDBMakeCDBDate(MIN_YEAR, MIN_MONTH-1, MIN_DAY, MIN_HOUR, MIN_MINUTE, MIN_SECOND);
        // @Bug should be MAX_MONTH-1
        CDBDate endDate = CDBMakeCDBDate(MAX_YEAR, MAX_MONTH, MAX_DAY, MAX_HOUR, MAX_MINUTE, MAX_SECOND);

        System::getCdbManager()->search(beginDate, endDate,
                                        CDB_SEARCH_DIRECTION_RIGHT, CDB_RECORD_LOCATION_VF, 0,
                                        cdb_backup_delete_search_cb_, cdbBackup);

        System::getCdbManager()->cleanUpEmptyDirectories(CDB_RECORD_LOCATION_VF);

        cdbBackup->set_done_process(true);
    }

    BOOL cdb_backup_move_search_cb_(void* work, CDBRecord* record) {
        CdbBackup* cdbBackup = reinterpret_cast<CdbBackup*>(work);

        BOOL result = TRUE;

        cdb::Manager* cdbManager = System::getCdbManager();

        u32 freeSize = 0;

        BOOL result2 = cdbManager->backupToSD(record);
        cdbBackup->set_cdb_result(cdbManager->getCDBResult());

        if (result2) {
            cdbManager->getFreeSize(&freeSize);
            cdbBackup->set_free_size(freeSize);
            if (cdbManager->isUnderFlow()) {
                result = FALSE;
            }
        }
        else {
            result = FALSE;
        }

        cdbManager->close(record);

        return result;
    }

    // NonMatching too. see cdb_backup_delete_task_
    void cdb_backup_move_task_(void* work) {
        CdbBackup* cdbBackup = reinterpret_cast<CdbBackup*>(work);

        const CDBDate beginDate = CDBMakeCDBDate(MIN_YEAR, MIN_MONTH-1, MIN_DAY, MIN_HOUR, MIN_MINUTE, MIN_SECOND);
        // @Bug should be MAX_MONTH-1
        const CDBDate endDate = CDBMakeCDBDate(MAX_YEAR, MAX_MONTH, MAX_DAY, MAX_HOUR, MAX_MINUTE, MAX_SECOND);
        u32 freeSize;

        System::getCdbManager()->getFreeSize(&freeSize);

        cdbBackup->set_prev_free_size(freeSize);
        cdbBackup->set_free_size(freeSize);

        System::getCdbManager()->search(beginDate, endDate,
                                        CDB_SEARCH_DIRECTION_RIGHT, CDB_RECORD_LOCATION_VF, 1,
                                        cdb_backup_move_search_cb_, cdbBackup);

        System::getCdbManager()->cleanUpEmptyDirectories(CDB_RECORD_LOCATION_VF);

        cdbBackup->set_done_process(true);
    }
}
