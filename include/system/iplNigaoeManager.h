#ifndef IPL_NIGAOE_MANAGER_H
#define IPL_NIGAOE_MANAGER_H

#include "system/iplNigaoe.h"

#include <nw4r/ut.h>

namespace ipl {
    namespace nigaoe {
        class Manager {
            public:
                Manager(EGG::Heap* pHeap);
            
            private:
                void*       mpArcBuffer;    // 0x00
                RFLErrcode  mErrcode;       // 0x04
        };
    }
}

#endif // IPL_NIGAOE_MANAGER_H


