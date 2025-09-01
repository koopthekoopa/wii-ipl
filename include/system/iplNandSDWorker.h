#ifndef IPL_NAND_SD_WORKER_H
#define IPL_NAND_SD_WORKER_H

#include <revolution.h>

namespace ipl {
    class NandSDWorker {
        public:
            NandSDWorker();
            ~NandSDWorker();
        
        private:
            /**
             * @brief Verifies if the banner header is valid.
             * @param pBnrData The buffer containing the banner data.
             * @param headerSize Header file size.
             */
            BOOL    check_header_base(const u8* bnrData, u32* headerSize = NULL);
    };
}

#endif // IPL_NAND_SD_WORKER_H
