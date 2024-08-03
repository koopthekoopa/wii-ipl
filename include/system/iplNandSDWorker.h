#ifndef IPL_NAND_SD_WORKER_H
#define IPL_NAND_SD_WORKER_H

#include <revolution.h>

#define IMET_MAX_HEADER_SIZE    0x1C
#define IMET_CURRENT_VERSION    3

namespace ipl {
    class NandSDWorker {
        public:
            NandSDWorker();
            ~NandSDWorker();
        
        private:
            /**
             * @brief Verifies if the banner header is valid.
             * 
             * @param pBnrData The buffer containing the banner data.
             * @param hashOut Save the hash of the banner as a `u32`.
             * 
             * @return Boolean telling if the header is valid.
             */
            BOOL    check_header_base(const u8 *pBnrData, u32 *hashOut);
    };
}

#endif // IPL_NAND_SD_WORKER_H


