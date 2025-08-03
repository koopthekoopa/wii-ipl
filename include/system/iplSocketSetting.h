#ifndef IPL_SOCKET_SETTING_H
#define IPL_SOCKET_SETTING_H

#include <revolution/types.h>

#include <revolution/mem.h>

#include <revolution/ncd.h>

namespace ipl {
    namespace socket {
        class SocketSetting {
            public:
                static const char*  getLANMacAddrUtf8();

                static BOOL         init(void* work /*unused*/);
                static void         finish();

                static void         convertLANMacAddr();
                static void         obtainLANMacAddr(void* work);
                static bool         checkLANMacAddrAvailable();

            private:
                static void*        allocfunc(u32 unk, s32 size);
                static void         freefunc(u32 unk, void* buffer, s32 size);

                static char             mMac[64];

                static MEMHeapHandle    mpHeap;
                static void*            mpHeapBuf;

                static u8               mMacAddr[NCD_MAC_ADDRESS_LENGTH];
                static bool             isMacAddr;
        };
    }
}

#endif // IPL_SOCKET_SETTING_H
