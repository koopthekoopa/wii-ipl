#ifndef IPL_NAND_H
#define IPL_NAND_H

#include <decomp_types.h>
#include <revolution.h>
#include <egg/core.h>

namespace ipl {
    namespace nand {
        class LayoutFile {
            public:
                LayoutFile();
                // STUB
        };
        
        class Manager {
            public:
                Manager();
                LayoutFile* readLayout(EGG::Heap* pHead, const char* archiveName, bool unk);
                // STUB
        };
    }
}

#endif // IPL_NAND_H

