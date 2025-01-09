#ifndef IPL_POSTMAN_MANAGER_H
#define IPL_POSTMAN_MANAGER_H

#include <revolution.h>

namespace ipl {
    namespace postman {
        class Manager {
            public:
                Manager();
                
                int getUnk0x334() const { return unk_0x334; }
            
            private:
                u8      unk_0x00[0x334];
                int     unk_0x334;
                u8      unk_0x338[0xD8];
        };
    }
}

#endif // IPL_POSTMAN_MANAGER_H


