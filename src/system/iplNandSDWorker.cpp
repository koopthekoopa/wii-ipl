#define UNIT_DOESNT_MATCH

#include <decomp.h>

#include "system/iplNandSDWorker.h"

#include <revolution.h>

typedef struct {
    u8  sig[4];     // 0x00
    u32 hash;       // 0x04
    u32 version;    // 0x08 (always 3)
} METABlockHeader;

namespace ipl {
    /**
     * @note Address 0x81350EB4
     * @note Size 0xAC
     */
    BOOL NandSDWorker::check_header_base(const u8 *bnrData, u32 *hashOut) {
        METABlockHeader* header = (METABlockHeader*)(bnrData);
    
        u32 hash = header->hash;
        if (hashOut != NULL) {
            *hashOut = hash;
        }
        
        if (header->sig[0] != 'I' ||
        header->sig[1] != 'M' ||
        header->sig[2] != 'E' ||
        header->sig[3] != 'T' ||
        hash < IMET_MAX_HEADER_SIZE) {
            OSReport("BANNER WARNING: invalid signature or header size %d\n", hash);
            return FALSE;
        }
        
        if (header->version != IMET_CURRENT_VERSION) {
            OSReport("BANNER WARNING: different version v.%d ( now v.%d)\n", header->version, IMET_CURRENT_VERSION);
            return FALSE;
        }
        
        return TRUE;
    }
}


