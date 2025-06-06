#ifndef IPL_NWC24_MANAGER_H
#define IPL_NWC24_MANAGER_H

#include <revolution.h>

#include <revolution/nwc24.h>

namespace ipl {
    namespace nwc24 {
        class Manager {
            public:
                Manager();

                BOOL    open();
                BOOL    close();

                void    setMsgAppId(NWC24MsgObj* msgObj, u32 appId);
                void    commitMsg(NWC24MsgObj* msgObj);
            
            private:
                u8      unk_0x00[0xA31];
                bool    unk_0xA31;
                u8      unk_0xA32[0xA34 - 0xA32];
        };
    }
}

#endif // IPL_NWC24_MANAGER_H


