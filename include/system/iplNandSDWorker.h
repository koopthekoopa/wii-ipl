#ifndef IPL_NAND_SD_WORKER_H
#define IPL_NAND_SD_WORKER_H

#define IMET_MAX_HEADER_SIZE    0x1C
#define IMET_CURRENT_VERSION    3

namespace ipl {
    class NandSDWorker {
        public:
            NandSDWorker();
            ~NandSDWorker();
        
        private:
            BOOL check_header_base(const u8 *bnrData, u32 *hashOut);
    };
}

#endif // IPL_NAND_SD_WORKER_H


