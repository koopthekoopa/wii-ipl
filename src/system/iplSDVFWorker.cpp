#include "system/iplSDVFWorker.h"

#include "iplSystem.h"

namespace ipl {
    SDVFWorker::WorkSDState SDVFWorker::s_sd_state;
    bool                    SDVFWorker::s_sd_inserted = false;

    SDVFWorker::SDVFWorker() :
    myWork(NULL) {}

    void SDVFWorker::create(void* work, int priority) {
        Work* workArg = reinterpret_cast<Work*>(work);
        myWork = workArg;

        /* BUG: Stack should be threadStack, not the thread itself! */
        OSCreateThread(&workArg->thread,
                        thread_main, this,
                        &myWork->thread, STACK_SIZE,
                        priority, OS_THREAD_ATTR_DETACH);

        OSInitMessageQueue(&myWork->msgQueue, myWork->messages, 8);
        OSInitMutex(&myWork->mutex);

        myWork->cacheSetting.pages = myWork->cachePages;
        myWork->cacheSetting.buffers = myWork->cacheBuf;
        myWork->cacheSetting.numFatPages = FAT_PAGES;
        myWork->cacheSetting.numDataPages = DATA_PAGES;
        myWork->cacheSetting.numFatBufSize = 1;
        myWork->cacheSetting.numDataBufSize = 1;

        myWork->driveTable.pPart = NULL;
        myWork->driveTable.pCache = &myWork->cacheSetting;

        myWork->workState = STATE_IDLE;
        myWork->asyncResult = RESULT_STILL_WORKING;

        s_sd_state = SD_STATE_UNAVAILABLE;

        myWork->isWriteProtected = FALSE;
        myWork->prevAsyncResult = RESULT_STILL_WORKING;
        myWork->priority = priority;

        OSResumeThread(&myWork->thread);
    }

    BOOL SDVFWorker::is_terminated() {
        return myWork == NULL;
    }

    BOOL SDVFWorker::is_working() {
        return get_state() == STATE_WORKING;
    }

    int SDVFWorker::get_async_result() {
        return is_working() ? RESULT_STILL_WORKING : myWork->asyncResult;
    }

    SDVFWorker::WorkSDState SDVFWorker::get_sd_state() {
        return s_sd_state;
    }

    BOOL SDVFWorker::is_sd_write_protected() {
        if (s_sd_state == SD_STATE_AVAILABLE) {
            return myWork->isWriteProtected;
        }
        else {
            return FALSE;
        }
    }

    void SDVFWorker::terminate_async() {
        if (!is_working()) {
            send_work(MESSAGE_TERMINATE);
        }
    }

    void SDVFWorker::mount_sd_async() {
        send_work(MESSAGE_MOUNT_SD);
    }

    void SDVFWorker::prepare_cdb_backup_to_sd_async() {
        send_work(MESSAGE_PREPARE_CDB_BACKUP);
    }

    void SDVFWorker::cleanup_cdb_backup_to_sd_async() {
        send_work(MESSAGE_CLEANUP_CDB_BACKUP);
    }

    void* SDVFWorker::thread_main(void* work) {
        OSInitFastCast();

        SDVFWorker* sdVfWorker = reinterpret_cast<SDVFWorker*>(work);
        return sdVfWorker->run();
    }

    void* SDVFWorker::run() {
        FAError         faErr;

        CDBErr          cdbErr;
        
        bool            started = false;

        while (true) {
            switch (wait_work()) {
                case MESSAGE_TERMINATE: {
                    if (s_sd_state != SD_STATE_UNAVAILABLE) {
                        faErr = FAUnmount(myWork->driveTable.drive, 1);
                        OSReport("SDVFWorker: unmount sd [%d]\n", faErr);

                        faErr = FADetach(myWork->driveTable.drive);
                        OSReport("SDVFWorker: detach sd [%d]\n", faErr);
                    }

                    started = true;
                    break;
                }
                case MESSAGE_MOUNT_SD: {
                    do_mount_sd();

                    if (s_sd_state == SD_STATE_ALREADY_INSERTED || s_sd_state == SD_STATE_ERROR) {
                        myWork->prevAsyncResult = myWork->asyncResult;
                    }
                    else {
                        myWork->prevAsyncResult = RESULT_STILL_WORKING;
                    }
                    break;
                }
                case MESSAGE_FORMAT_SD: {
                    do_format_sd();
                    break;
                }
                case MESSAGE_PREPARE_CDB_BACKUP: {
                    if (s_sd_state != SD_STATE_UNAVAILABLE) {
                        faErr = FAUnmount(myWork->driveTable.drive, 1);
                        OSReport("SDVFWorker: unmount sd [%d]\n", faErr);

                        faErr = FADetach(myWork->driveTable.drive);
                        OSReport("SDVFWorker: detach sd [%d]\n", faErr);

                        s_sd_state = SD_STATE_UNAVAILABLE;
                    }

                    System::getCdbManager()->mountSD_if_unmounted();
 
                    cdbErr = System::getCdbManager()->getCDBResult();
                    if (cdbErr == CDB_ERROR_OK || cdbErr == CDB_ERROR_SD_IS_MOUNTED) {
                        myWork->asyncResult = RESULT_SUCCESS;
                    }
                    else {
                        OSReport("SDVFWorker: CDBMountSD failed [%d]\n", cdbErr);
                        myWork->asyncResult = RESULT_FATAL_ERROR;
                    }

                    break;
                }
                case MESSAGE_CLEANUP_CDB_BACKUP: {
                    System::getCdbManager()->unmountSD2_if_mounted();

                    cdbErr = System::getCdbManager()->getCDBResult();
                    if (cdbErr == CDB_ERROR_OK || cdbErr == CDB_ERROR_SD_IS_NOT_MOUNTED) {
                        myWork->asyncResult = RESULT_SUCCESS;
                    }
                    else {
                        OSReport("SDVFWorker: CDBUnmountSD failed [%d]\n", cdbErr);
                        myWork->asyncResult = RESULT_FATAL_ERROR;
                    }

                    break;
                }
                case MESSAGE_NONE:
                case MESSAGE_UNUSED_4:
                default: {
                    break;
                }
            }

            if (*(u32*)myWork->thread.stackEnd != 0xDEADBABE) {
                OSHalt("SDVFWorker: stack over!\n", 448);
            }

            if (started) {
                break;
            }

            set_state(STATE_IDLE);
        }

        myWork = NULL;
        s_sd_state = SD_STATE_UNAVAILABLE;

        return this;
    }

    void SDVFWorker::do_mount_sd() {
        FAError faErr;

        switch (s_sd_state) {
            case SD_STATE_UNAVAILABLE: {
                s_sd_inserted = true;

                FAInit(FA_FLAG_FILENAME_CHECK);
                FASetThreadPriority(myWork->priority);
                FARegistCB(FA_DEVICE_SD, sd_insert_callback, sd_eject_callback);
            
                faErr = FAAttach(FA_DEVICE_SD, NULL, 0, &myWork->driveTable);
                if (faErr == FA_ERR_SUCCESS) {
                    OSReport("SDVFWorker: attach SD card drive = %c\n", myWork->driveTable.drive);
                
                    int result = call_fa_mount();
                    if (result == RESULT_SUCCESS) {
                        s_sd_state = SD_STATE_AVAILABLE;
                    }
                    else if (result == RESULT_SD_ALREADY_INIT) {
                        s_sd_state = SD_STATE_ALREADY_INSERTED;
                    }
                    else if (result == RESULT_SD_CANNOT_INIT) {
                        s_sd_state = SD_STATE_ERROR;
                    }
                    else {
                        s_sd_state = SD_STATE_EJECTED;
                        s_sd_inserted = false;
                    }
                    myWork->asyncResult = result;
                }
                else {
                    OSReport("SDVFWorker: FAAttach failed.[%d]\n", FAErrnum());
                    s_sd_state = SD_STATE_UNAVAILABLE;
                    myWork->asyncResult = RESULT_FA_ERROR;
                }
                break;
            }
            case SD_STATE_EJECTED: {
                if (myWork->prevAsyncResult == RESULT_STILL_WORKING) {
                    myWork->asyncResult = RESULT_FATAL_ERROR;
                }
                else {
                    myWork->asyncResult = myWork->prevAsyncResult;
                }
                break;
            }
            case SD_STATE_INSERTED: {
                int result = call_fa_mount();
                if (result == RESULT_SUCCESS) {
                    s_sd_state = SD_STATE_AVAILABLE;
                }
                else if (result == RESULT_SD_ALREADY_INIT) {
                    s_sd_state = SD_STATE_ALREADY_INSERTED;
                }
                else {
                    s_sd_state = result == RESULT_SD_CANNOT_INIT ? SD_STATE_ERROR : SD_STATE_EJECTED;
                }
                myWork->asyncResult = result;
                break;
            }
            case SD_STATE_AVAILABLE: {
                myWork->asyncResult = RESULT_SUCCESS;
                break;
            }
            default: {
                break;
            }
        }
    }

    int SDVFWorker::call_fa_mount() {
        FAError faErr;
        int result;

        if (s_sd_state != SD_STATE_UNAVAILABLE) {
            faErr = FAUnmount(myWork->driveTable.drive, TRUE);
            OSReport("SDVFWorker: force unmount sd before mounting[%d]\n", faErr);
            faErr = FADetach(myWork->driveTable.drive);
            OSReport("SDVFWorker: detach sd [%d]\n", faErr);
            faErr = FAAttach(FA_DEVICE_SD, NULL, 0, &myWork->driveTable);
            OSReport("SDVFWorker: attach sd [%d]\n", faErr);
        }

        faErr = FAMount(myWork->driveTable.drive);

        if (faErr == FA_ERR_SUCCESS) {
            OSReport("SDVFWorker: mount SD card drive = %c\n", myWork->driveTable.drive);
            faErr = FABuffering(myWork->driveTable.drive, 1);
            if (faErr == FA_ERR_SUCCESS) {
                myWork->isWriteProtected = FALSE;
                result = RESULT_SUCCESS;
            }
            else {
                if (FAErrnum() == FA_ERR_EWRTPROTECT) {
                    OSReport("SDVFWorker: SD card is write protected.\n");
                    result = RESULT_SUCCESS;
                    myWork->isWriteProtected = TRUE;
                }
                else {
                    result = handle_sd_error(faErr);
                }
            }
        }
        else {
            faErr = FAErrnum();
            OSReport("SDVFWorker: FAMount failed.[%d]\n", faErr);
            if (faErr == FA_ERR_ENOEXEC) {
                result = RESULT_FATAL_ERROR;
                if (FA_INSERTED(myWork->driveTable)) {
                    result = RESULT_SD_ALREADY_INIT;
                }
            }
            else if (faErr == FA_ERR_EINVAL) {
                result = RESULT_FATAL_ERROR;
            }
            else if (faErr == FA_ERR_EIO) {
                if (s_sd_state == SD_STATE_EJECTED) {
                    result = RESULT_FATAL_ERROR;
                }
                else {
                    result = RESULT_FATAL_ERROR;
                    if (s_sd_inserted) {
                        result = RESULT_SD_CANNOT_INIT;
                    }
                }
            }
            else {
                result = RESULT_SD_CANNOT_INIT;
            }
        }

        return result;
    }

    void SDVFWorker::do_format_sd() {
        FAError faErr;

        if (s_sd_state != SD_STATE_AVAILABLE && s_sd_state != SD_STATE_ALREADY_INSERTED) {
            OSReport("SDVFWorker: cannot format sd because of illegal sd state.[%d]\n", s_sd_state);
            myWork->asyncResult = RESULT_FATAL_ERROR;
            return;
        }

        faErr = FAFormat(myWork->driveTable.drive, 0);
        if (faErr != FA_ERR_SUCCESS && FAErrnum() == FA_ERR_ENOEXEC) {
            OSReport("SDVFWorker: SD card MBR is broken. cannot use this media.\n");
            myWork->asyncResult = RESULT_SD_ALREADY_INIT;
            return;
        }

        myWork->asyncResult = handle_sd_error(faErr);

        if (myWork->asyncResult == RESULT_SUCCESS) {
            OSReport("SDVFWorker: successfully format sd.\n");
        }
        else {
            OSReport("SDVFWorker: FAFormat failed.[%d]\n", myWork->asyncResult);
        }
    }

    void SDVFWorker::send_work(WorkMessage message) {
        if (!is_working()) {
            set_state(STATE_WORKING);
            OSSendMessage(&myWork->msgQueue, (OSMessage)message, 0);
        }
    }

    SDVFWorker::WorkMessage SDVFWorker::wait_work() {
        SDVFWorker::WorkMessage message = MESSAGE_NONE;

        OSReceiveMessage(&myWork->msgQueue, (OSMessage*)&message, 1);
        OSReport("SDVFWorker: recieve message = %d\n", message);

        return message;
    }

    SDVFWorker::WorkState SDVFWorker::get_state() {
        OSLockMutex(&this->myWork->mutex);
        SDVFWorker::WorkState state = myWork->workState;
        OSUnlockMutex(&this->myWork->mutex);

        return state;
    }

    void SDVFWorker::set_state(SDVFWorker::WorkState state) {
        OSLockMutex(&this->myWork->mutex);
        myWork->workState = state;
        OSUnlockMutex(&this->myWork->mutex);
    }

    void SDVFWorker::sd_insert_callback(s8 drive) {
        s_sd_inserted = true;
        if (s_sd_state != SD_STATE_UNAVAILABLE) {
            OSReport("SDVFWorker: SD card inserted !!   %c drive\n", drive);
            s_sd_state = SD_STATE_INSERTED;
        }
        return;
    }

    void SDVFWorker::sd_eject_callback(s8 drive) {
        s_sd_inserted = false;
        if (s_sd_state != SD_STATE_UNAVAILABLE) {
            OSReport("SDVFWorker: SD card ejected  !!   %c drive\n", drive);
            s_sd_state = SD_STATE_EJECTED;
        }
        return;
    }

    s32 SDVFWorker::handle_sd_error(FAError err, s32* resultOut) {
        s32 result;

        if (err == FA_ERR_SUCCESS) {
            return RESULT_SUCCESS;
        }

        result = RESULT_FATAL_ERROR;
        switch (FAErrnum()) {
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
            case FA_ERR_SYSTEM: {
                result = RESULT_FA_ERROR;
                break;
            }
            case FA_ERR_ENOSPC: {
                result = RESULT_OUT_OF_SPACE;
                break;
            }
            case FA_ERR_EWRTPROTECT: {
                result = RESULT_WRITE_PROTECTED;
                break;
            }
            case FA_ERR_EIO:
            case FA_ERR_ENOEXEC: {
                result = RESULT_FATAL_ERROR;
                break;
            }
        }

        OSReport("SDVFWorker: FA library error.[%d]\n", FAErrnum());

        if (resultOut != NULL) {
            *resultOut = result;
        }
        return result;
    }
}
