#ifndef IPL_NAND_SD_WORKER_H
#define IPL_NAND_SD_WORKER_H

#include <revolution.h>

namespace ipl {
    class NandSDWorker {
    public:
        enum SDState {
            SD_STATE_FORMATTED = 0,          // 0
            SD_STATE_SLOT_EMPTY = 1,         // 1
            SD_STATE_NOT_MOUNTED = 2,        // 2
            SD_STATE_DECIVE_INCOMPAT_3 = 3,  // 3
            SD_STATE_DECIVE_INCOMPAT_4 = 4,  // 4
            SD_STATE_ERRORED = 5,            // 5
            SD_STATE_MOUNTED = 6,            // 6
        };
        NandSDWorker();
        ~NandSDWorker();

        SDState get_sd_state();

        u32 get_nand_save_num();
        int get_sd_save_num();

        BOOL is_sd_write_protected();

    private:
        /**
         * @brief Verifies if the banner header is valid.
         * @param pBnrData The buffer containing the banner data.
         * @param headerSize Header file size.
         */
        BOOL check_header_base(const u8* bnrData, u32* headerSize = NULL);
    };
}  // namespace ipl

#endif  // IPL_NAND_SD_WORKER_H
