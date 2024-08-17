#ifndef IPL_NWC24_MANAGER_H
#define IPL_NWC24_MANAGER_H

#include <revolution.h>

namespace ipl {
    namespace nwc24 {
        class Manager {
            public:
                Manager();
            
            private:
                u8      unk_0x00[0xA31];
                bool    unk_0x0A31;
                u8      unk_0x0A32[0x02];
        };
    }
}

#endif // IPL_NWC24_MANAGER_H


