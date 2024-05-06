#include "ipl.h"

extern u32 lbl_816986DC;

namespace ipl {
    BOOL NandSDWorker::check_header_base(const u8 *bnrData, u32 *hashOut) {
    #define IMET_HDR_HASH *(u32 *)(bnrData + 4) 
    #define IMET_HDR_VERSION *(u32 *)(bnrData + 8)
    
        u32 hash = IMET_HDR_HASH;
        if (hashOut != NULL) {
            *hashOut = hash;
        }
        
        if (bnrData[0] != 'I' || bnrData[1] != 'M' || bnrData[2] != 'E' || bnrData[3] != 'T' || hash < IMET_MAX_HEADER_SIZE) {
            OSReport("BANNER WARNING: invalid signature or header size %d\n", hash);
            return FALSE;
        }
        
        if (IMET_HDR_VERSION != IMET_CURRENT_VERSION) {
            OSReport("BANNER WARNING: different version v.%d ( now v.%d)\n", IMET_HDR_VERSION, IMET_CURRENT_VERSION);
            return FALSE;
        }
        
        return TRUE;
    
    #undef IMET_HDR_HASH
    #undef IMET_HDR_VERSION
    }
}


