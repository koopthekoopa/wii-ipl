#ifndef IPL_SDVF_WORKER_H
#define IPL_SDVF_WORKER_H

#include <revolution/types.h>

#include <revolution/os.h>
#include <revolution/fa.h>
#include <revolution/cdb.h>

namespace ipl {
    #define FAT_PAGES    4
    #define DATA_PAGES   4
    #define TOTAl_PAGES  (FAT_PAGES + DATA_PAGES)
    #define STACK_SIZE   0x20000

    class SDVFWorker {
        public:
            typedef enum WorkMessage {
                MESSAGE_NONE = 0,
                MESSAGE_TERMINATE,
                MESSAGE_MOUNT_SD,
                MESSAGE_FORMAT_SD,
                MESSAGE_UNUSED_4,
                MESSAGE_PREPARE_CDB_BACKUP,
                MESSAGE_CLEANUP_CDB_BACKUP,
            } WorkMessage;

            typedef enum WorkState {
                STATE_IDLE = 0,
                STATE_WORKING,
            } WorkState;

            typedef enum WorkSDState {
               SD_STATE_UNAVAILABLE = 0,
               SD_STATE_EJECTED,
               SD_STATE_INSERTED,
               SD_STATE_BROKEN,
               SD_STATE_ERROR,
               SD_STATE_AVAILABLE,
            } WorkSDState;

            enum {
                RESULT_SUCCESS = 0,
                RESULT_STILL_WORKING = -1,
                RESULT_FATAL_SD_ERROR = -2,
                RESULT_NAND_CORRUPT = -5, // Unused but checked by CdbBackup
                RESULT_OUT_OF_SPACE = -7,
                RESULT_FA_ERROR = -8,
                RESULT_SD_BROKEN = -9,
                RESULT_SD_ERROR = -10,
                RESULT_WRITE_PROTECTED = -11,
            };

        private:
            typedef struct Work {
                FACacheBuf      cacheBuf[TOTAl_PAGES];   // 0x00
                FACachePage     cachePages[TOTAl_PAGES]; // 0x1000

                FADrvTbl        driveTable;                         // 0x1140

                FACacheSetting  cacheSetting;                       // 0x114C

                u8              threadStack[STACK_SIZE]; // 0x1160
                OSThread        thread;                             // 0x21160

                OSMutex         mutex;                              // 0x21478

                OSMessageQueue  msgQueue;                           // 0x21490
                OSMessage       messages[8];                        // 0x214B0

                WorkState       workState;                          // 0x214D0
                int             asyncResult;                        // 0x214D4
                BOOL            isWriteProtected;                   // 0x214D8
                int             prevAsyncResult;                    // 0x214DC
                int             priority;                           // 0x214E0
                int             unused_0x214E4;
            } Work;

        public:
            static const int WORK_SIZE = sizeof(Work);

            SDVFWorker();

            void        create(void* work, int priority);

            BOOL        is_terminated();
            BOOL        is_working();

            int         get_async_result();
            WorkSDState get_sd_state();

            BOOL        is_sd_write_protected();

            void        terminate_async();
            void        mount_sd_async();

            void        prepare_cdb_backup_to_sd_async();
            void        cleanup_cdb_backup_to_sd_async();

            void        do_mount_sd();
            void        do_format_sd();

            int         call_fa_mount();

            void        send_work(WorkMessage messsage);
            WorkMessage wait_work();

            WorkState   get_state();
            void        set_state(WorkState state);

        private:
            void*           run();

            static void     sd_insert_callback(s8 drive);
            static void     sd_eject_callback(s8 drive);

            /**
             * @brief Handles FA error code
             * @param err The FA error code to handle
             * @param resultOut The SDVFWorker result, NULL by default
             * @return ...The SDVFWorker result
             */
            s32             handle_sd_error(FAError err, s32* resultOut = NULL);

            static void*    thread_main(void* work);

            static WorkSDState  s_sd_state;
            static bool         s_sd_inserted;

            Work*               myWork; // 0x00
    };
}

#endif // IPL_H
