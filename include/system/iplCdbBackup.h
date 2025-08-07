#ifndef IPL_CDB_BACKUP_H
#define IPL_CDB_BACKUP_H

#include <revolution/types.h>
#include <revolution/cdb/CDBRecord.h>

#include <egg/core.h>

namespace ipl {
    class CdbBackup {
        public:
            CdbBackup();
            ~CdbBackup();

            void    update();

            void    set_done_process(bool value)    { mbDoneProcess = value; }
            void    set_cdb_result(int value)       { mCDBResult = value; }
            void    set_prev_free_size(int value)   { mPrevFreeSize = value; }
            void    set_free_size(int value)        { mTotalFreeSize = value; }

            BOOL    is_working()                    { return mState != STATE_FINISHED; }

        private:
            void    stt_wait_worker();
            void    stt_mount_sd();
            void    stt_check_sd();
            void    stt_wait_del_msg();
            void    stt_wait_besd_del_msg();
            void    stt_wait_delete();
            void    stt_wait_del_msg_fns();
            void    stt_wait_sd_back_msg();
            void    stt_check_sd_err();
            void    stt_check_prepare_back();
            void    stt_wait_backup();
            void    stt_wait_back_msg_fns();
            void    stt_clean_up_back();
            void    stt_wait_ret_msg();
            void    stt_wait_fns_msg();
            void    stt_wait_terminate();

            int     fn_8135B1C0();

            void    error_handling();

            enum {
                STATE_INVALID = -1,
                STATE_WAIT_WORKER,
                STATE_MOUNT_SD,
                STATE_CHECK_SD,
                STATE_DELETING,
                STATE_DELETING_2,
                STATE_WAIT_DELETING,
                STATE_DONE_DELETE,
                STATE_SD_BACKING,
                STATE_SD_CHECK_ERR,
                STATE_SD_BACK_PREPARE,
                STATE_WAIT_SD_BACKING,
                STATE_DONE_SD_BACK,
                STATE_FINISHED_2,
                STATE_CLEAN_SD_BACK,
                STATE_WAIT_RET,
                STATE_WAIT_FINISH_MSG,
                STATE_WAIT_TERMINATE,
                STATE_FINISHED,
            };

            bool    mbDoneProcess;  // 0x00
            int     mCDBResult;     // 0x04

            int     mPrevFreeSize;  // 0x08
            int     mTotalFreeSize; // 0x0C

            int     mState;         // 0x10
            int     mState2;        // 0x14

            static const int unknown;
    };
}

#endif // IPL_CDB_BACKUP_H
