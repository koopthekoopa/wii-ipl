#include "system/iplSocketSetting.h"

#include <revolution/soex.h>

#include "iplSystem.h"

#include <cstdio>

#pragma sym on

#define HEAP_BUFFER_SIZE    0x4000

namespace ipl {
    namespace socket {
        char             SocketSetting::mMac[64];

        MEMHeapHandle    SocketSetting::mpHeap;
        void*            SocketSetting::mpHeapBuf;

        u8               SocketSetting::mMacAddr[NCD_MAC_ADDRESS_LENGTH];
        bool             SocketSetting::isMacAddr;

        const char* SocketSetting::getLANMacAddrUtf8() {
            if (!isMacAddr) {
                sprintf(mMac, "00-00-00-00-00-00");
            }
            return mMac;
        }

        BOOL SocketSetting::init(void* work) {
            if (mpHeap == NULL) {
                mpHeapBuf = System::getMem2Sys()->alloc(HEAP_BUFFER_SIZE, -BUFFER_HEAP);
                mpHeap = MEMCreateExpHeapEx(mpHeapBuf, HEAP_BUFFER_SIZE, 2);

                SOLibraryConfig config;
                memset(&config, 0, sizeof(SOLibraryConfig));

                config.alloc = allocfunc;
                config.free = freefunc;

                SOInit(&config);
            }
            return TRUE;
        }

        void SocketSetting::finish() {
            if (mpHeapBuf != NULL) {
                SOFinish();

                MEMDestroyExpHeap(mpHeap);
                System::getMem2Sys()->free(mpHeapBuf);

                mpHeapBuf = NULL;
                mpHeap = NULL;
            }
        }

        void* SocketSetting::allocfunc(u32 unk, s32 size) {
            void* buf = NULL;
            if (size > 0) {
                buf = MEMAllocFromExpHeapEx(mpHeap, size, BUFFER_HEAP);
            }
            return buf;
        }

        void SocketSetting::freefunc(u32 unk, void* buffer, s32 size) {
            if (buffer != NULL) {
                MEMFreeToExpHeap(mpHeap, buffer);
            }
        }

        void SocketSetting::convertLANMacAddr() {
            sprintf(mMac, "%02x-%02x-%02x-%02x-%02x-%02x",
                            mMacAddr[0], mMacAddr[1], mMacAddr[2], mMacAddr[3], mMacAddr[4], mMacAddr[5]);
        }

        void SocketSetting::obtainLANMacAddr(void* work) {
            if (isMacAddr) {
                return;
            }

            memset(mMacAddr, 0, NCD_MAC_ADDRESS_LENGTH);
            convertLANMacAddr();

            if (init(work)) {
                // Wait for NCD Link to finish
                while (NCDGetLinkStatus() == NCD_RESULT_INPROGRESS) {
                    OSSleepMilliseconds(100);
                }

                {
                    // Setup IP config
                    NCDIpConfig ipConfig;

                    memset(&ipConfig, 0, sizeof(ipConfig));

                    ipConfig.useDhcp = TRUE;

                    if (NCDSetIpConfig(&ipConfig) >= 0) {
                        // Setup connection config
                        NCDIfConfig ifConfig;

                        memset(&ifConfig, 0, sizeof(ifConfig));

                        ifConfig.selectedMedia = 2;

                        if (NCDSetIfConfig(&ifConfig) >= 0) {
                            while (NCDGetLinkStatus() != NCD_LINKSTATUS_WIRED) {
                                OSSleepMilliseconds(100);
                            }
                        }
                    }
                }

                // Set socket config mac address
                int bufLen = NCD_MAC_ADDRESS_LENGTH;
                if (SOGetInterfaceOpt(NULL, SO_SOL_CONFIG, SO_CONFIG_MAC_ADDRESS, mMacAddr, &bufLen) < 0) {
                    memset(mMacAddr, 0, NCD_MAC_ADDRESS_LENGTH);
                }

                convertLANMacAddr();
                finish();
            }

            isMacAddr = true;
        }

        bool SocketSetting::checkLANMacAddrAvailable() {
            u8 macAddr[NCD_MAC_ADDRESS_LENGTH];

            memset(macAddr, 0, NCD_MAC_ADDRESS_LENGTH);
            return !(memcmp(mMacAddr, macAddr, NCD_MAC_ADDRESS_LENGTH) == 0);
        }
    }
}
