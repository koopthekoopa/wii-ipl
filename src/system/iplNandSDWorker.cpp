#include <decomp.h>

#include "system/iplNandSDWorker.h"

#include "iplSystem.h"

#include <revolution.h>

typedef struct SMetaBlockHeader {
    char    sig[4];     // 0x00
    u32     headSize;   // 0x04
    u32     version;    // 0x08 (always 3)
} SMetaBlockHeader;

namespace ipl {
    BOOL NandSDWorker::check_header_base(const u8* bnrData, u32* headerSize) {
        SMetaBlockHeader* header = (SMetaBlockHeader*)(bnrData);
    
        u32 headSize = header->headSize;
        if (headerSize != NULL) {
            *headerSize = headSize;
        }
        
        // Check signature
        if (!NAND_CHECK_MAGIC4(header->sig, 'I','M','E','T') || headSize < sizeof(channel::SMetaBlockHeader)) {
            OSReport("BANNER WARNING: invalid signature or header size %d\n", headSize);
            return FALSE;
        }
        
        // Check version
        if (header->version != META_CURRENT_VERSION) {
            OSReport("BANNER WARNING: different version v.%d ( now v.%d)\n", header->version, META_CURRENT_VERSION);
            return FALSE;
        }
        
        return TRUE;
    }
}
