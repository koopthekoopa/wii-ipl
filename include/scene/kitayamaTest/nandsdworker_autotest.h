#ifndef IPL_KITAYAMA_NANDSDWORKER_AUTOTEST_H
#define IPL_KITAYAMA_NANDSDWORKER_AUTOTEST_H

#include "system/iplNandSDWorker.h"

namespace ipl {
    namespace kitayama {
        class NandSDWorker_AutoTest {
        public:
            enum ProcessState {
                PROCESS_STATE_IDLE = 0,                         // 0x00
                PROCESS_STATE_PRE_STARTUP,                      // 0x01
                PROCESS_STATE_DO_STARTUP,                       // 0x02
                PROCESS_STATE_WAIT_FOR_STARTUP,                 // 0x03
                PROCESS_STATE_DO_MOUNT_SD,                      // 0x04
                PROCESS_STATE_WAIT_MOUNT_SD,                    // 0x05
                PROCESS_STATE_DO_GET_NAND_USER_FREE_AREA,       // 0x06
                PROCESS_STATE_WAIT_GET_NAND_USER_FREE_AREA,     // 0x07
                PROCESS_STATE_DO_LIST_NAND_SAVE,                // 0x08
                PROCESS_STATE_WAIT_LIST_NAND_SAVE,              // 0x09
                PROCESS_STATE_DO_GET_NAND_BANNER,               // 0x0a
                PROCESS_STATE_WAIT_GET_NAND_BANNER,             // 0x0b
                PROCESS_STATE_DO_GET_NAND_SAVE_SIZE,            // 0x0c
                PROCESS_STATE_WAIT_GET_NAND_SAVE_SIZE,          // 0x0d
                PROCESS_STATE_DO_DELETE_NAND_SAVE,              // 0x0e
                PROCESS_STATE_WAIT_DELETE_NAND_SAVE,            // 0x0f
                PROCESS_STATE_WAIT_FOR_UNMOUNTED_SD,            // 0x10
                PROCESS_STATE_DO_REMOUNT_SD,                    // 0x11
                PROCESS_STATE_WAIT_REMOUNT_SD,                  // 0x12
                PROCESS_STATE_DO_LIST_SD_SAVE,                  // 0x13
                PROCESS_STATE_WAIT_LIST_SD_SAVE,                // 0x14
                PROCESS_STATE_DO_GET_SD_BANNER,                 // 0x15
                PROCESS_STATE_WAIT_GET_SD_BANNER,               // 0x16
                PROCESS_STATE_DO_GET_SD_SAVE_SIZE,              // 0x17
                PROCESS_STATE_WAIT_GET_SD_SAVE_SIZE,            // 0x18
                PROCESS_STATE_DO_DELETE_SD_SAVE,                // 0x19
                PROCESS_STATE_WAIT_DELETE_SD_SAVE,              // 0x1a
                PROCESS_STATE_DO_INITIALIZE,                    // 0x1b
                PROCESS_STATE_WAIT_FOR_INITIALIZE,              // 0x1c
                PROCESS_STATE_DO_COPY_SAVE_TO_SD,               // 0x1d
                PROCESS_STATE_WAIT_COPY_SAVE_TO_SD,             // 0x1e
                PROCESS_STATE_DO_COPY_SAVE_TO_NAND,             // 0x1f
                PROCESS_STATE_WAIT_COPY_SAVE_TO_NAND,           // 0x20
                PROCESS_STATE_DO_FORMAT_SD,                     // 0x21
                PROCESS_STATE_WAIT_FORMAT_SD,                   // 0x22
                PROCESS_STATE_DO_GET_SD_FREE_AREA,              // 0x23
                PROCESS_STATE_WAIT_GET_SD_FREE_AREA,            // 0x24
                PROCESS_STATE_DO_COPY_APP_TO_SD,                // 0x25
                PROCESS_STATE_WAIT_COPY_APP_TO_SD,              // 0x26
                PROCESS_STATE_DO_COPY_APP_TO_NAND,              // 0x27
                PROCESS_STATE_WAIT_COPY_APP_TO_NAND,            // 0x28
                PROCESS_STATE_DO_DELETE_NAND_APP,               // 0x29
                PROCESS_STATE_WAIT_DELETE_NAND_APP,             // 0x2a
                PROCESS_STATE_DO_LIST_NAND_APP,                 // 0x2b
                PROCESS_STATE_WAIT_LIST_NAND_APP,               // 0x2c
                PROCESS_STATE_DO_GET_NAND_THUMBNAIL,            // 0x2d
                PROCESS_STATE_WAIT_GET_NAND_THUMBNAIL,          // 0x2e
                PROCESS_STATE_DO_LIST_SD_APP,                   // 0x2f
                PROCESS_STATE_WAIT_LIST_SD_APP,                 // 0x30
                PROCESS_STATE_DO_GET_SD_THUMBNAIL,              // 0x31
                PROCESS_STATE_WAIT_GET_SD_THUMBNAIL,            // 0x32
                PROCESS_STATE_DO_GET_SD_APP_SIZE,               // 0x33
                PROCESS_STATE_WAIT_GET_SD_APP_SIZE,             // 0x34
                PROCESS_STATE_DO_DELETE_SD_APP,                 // 0x35
                PROCESS_STATE_WAIT_DELETE_SD_APP,               // 0x36
                PROCESS_STATE_DO_GET_NAND_SIZE,                 // 0x37
                PROCESS_STATE_WAIT_GET_NAND_SIZE,               // 0x38
                PROCESS_STATE_DO_NAND_SAVE_EXIST_NOCOPY,        // 0x39
                PROCESS_STATE_WAIT_NAND_SAVE_EXIST_NOCOPY,      // 0x3a
                PROCESS_STATE_DO_NAND_SAVE_EXIST,               // 0x3b
                PROCESS_STATE_WAIT_NAND_SAVE_EXIST,             // 0x3c
                PROCESS_STATE_DO_NAND_SAVE_EXIST_LO,            // 0x3d
                PROCESS_STATE_WAIT_NAND_SAVE_EXIST_LO,          // 0x3e
                PROCESS_STATE_DO_NAND_APP_EXIST,                // 0x3f
                PROCESS_STATE_WAIT_NAND_APP_EXIST,              // 0x40
                PROCESS_STATE_DO_POSTCPY_SD_SAVE_EXIST,         // 0x41
                PROCESS_STATE_WAIT_POSTCPY_SD_SAVE_EXIST,       // 0x42
                PROCESS_STATE_DO_SD_APP_EXIST,                  // 0x43
                PROCESS_STATE_WAIT_SD_APP_EXIST,                // 0x44
                PROCESS_STATE_DO_POSTDEL_NAND_SAVE_EXIST,       // 0x45
                PROCESS_STATE_WAIT_POSTDEL_NAND_SAVE_EXIST,     // 0x46
                PROCESS_STATE_DO_POSTDEL_NAND_SAVE_EXIST_LO,    // 0x47
                PROCESS_STATE_WAIT_POSTDEL_NAND_SAVE_EXIST_LO,  // 0x48
                PROCESS_STATE_DO_POSTDEL_NAND_APP_EXIST,        // 0x49
                PROCESS_STATE_WAIT_POSTDEL_NAND_APP_EXIST,      // 0x4a
                PROCESS_STATE_DO_POSTDEL_SD_SAVE_EXIST,         // 0x4b
                PROCESS_STATE_WAIT_POSTDEL_SD_SAVE_EXIST,       // 0x4c
                PROCESS_STATE_DO_POSTDEL_SD_APP_EXIST,          // 0x4d
                PROCESS_STATE_WAIT_POSTDEL_SD_APP_EXIST,        // 0x4e
                PROCESS_STATE_DO_TERMINATE,                     // 0x4f
                PROCESS_STATE_WAIT_FOR_TERMINATE,               // 0x50
                PROCESS_STATE_DONE_ERR,                         // 0x51
                PROCESS_STATE_DONE_OK,                          // 0x52
            };

            NandSDWorker_AutoTest();
            ~NandSDWorker_AutoTest();

            void start_save_test(void* work, void* savesBuf, int prio);
            void start_initialize_nand(void* work, int prio);
            void start_app_test(void* work, void* appsBuf, int prio);

            ProcessState process();
            int get_result();

        private:
            ProcessState process_save_test();
            ProcessState process_initialize();
            ProcessState process_app_test();

            enum ProcessType {
                PROCESS_TYPE_SAVE_TEST = 0,   // 0
                PROCESS_TYPE_INITIALIZE = 1,  // 1
                PROCESS_TYPE_APP_TEST = 2,    // 2
            };

            NandSDWorker base;  // 0x00

            ESTitleId mWiiTitleIds[0x40];   // 0x08
            ESTitleId32 mSDTitleIds[0x40];  // 0x208

            WIISaveBannerFile mBanner;  // 0x308

            ProcessState mProcessState;  // 0xF3A8
            ProcessType mProcessType;    // 0xF3AC

            int mResult;  // 0xF3B0

            u8 mThumbnailData[0x19000];            // 0xF3B4
            channel::SChanMgrMetaHeader mMetaHdr;  // 0x283B4

            u64 mSDFreeSize;  // 0x289B8
        };
    }  // namespace kitayama
}  // namespace ipl

#endif  // IPL_KITAYAMA_NANDSDWORKER_AUTOTEST_H
