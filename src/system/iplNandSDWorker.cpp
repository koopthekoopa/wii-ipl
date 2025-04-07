#include <decomp.h>

#include "system/iplNandSDWorker.h"
#include "system/iplNand.h"

#include <revolution.h>

typedef struct {
    u8  sig[4];     // 0x00
    u32 hash;       // 0x04
    u32 version;    // 0x08 (always 3)
} MetaBlockHeader;

namespace ipl {
    BOOL NandSDWorker::check_header_base(const u8 *bnrData, u32 *hashOut) {
        MetaBlockHeader* header = (MetaBlockHeader*)(bnrData);
    
        u32 hash = header->hash;
        if (hashOut != NULL) {
            *hashOut = hash;
        }
        
        // Check signature
        if (!NAND_CHECK_MAGIC4(header->sig, 'I','M','E','T') || hash < IMET_MAX_HEADER_SIZE) {
            OSReport("BANNER WARNING: invalid signature or header size %d\n", hash);
            return FALSE;
        }
        
        // Check version
        if (header->version != IMET_CURRENT_VERSION) {
            OSReport("BANNER WARNING: different version v.%d ( now v.%d)\n", header->version, IMET_CURRENT_VERSION);
            return FALSE;
        }
        
        return TRUE;
    }
}
