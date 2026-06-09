#include "scene/nakamuratest/iplNetSetup.h"

#include <revolution/net.h>
#include <revolution/soex.h>

namespace ipl {
    namespace scene {
        MEMHeapHandle NetSetup::sHeap;
        void* NetSetup::sHeapBuf;

        OSMutex NetSetup::sAllocLock;
        NetSetup::StaticSOStartupInfo NetSetup::sSOStartupInfo;

        void* NetSetup::iSOStartupEXThread(void* param_1) {
            s32 cfgSetResult;
            int soStartupRes;
            undefined* puVar3;
            SOInAddr soAddr;

            OSReport("NCDSetIpConfig()\n");
            cfgSetResult = NCDSetIpConfig(sSOStartupInfo.ipcfg);
            if (cfgSetResult != 0) {
                switch (cfgSetResult) {
                    case -3:
                        sSOStartupInfo.state = NET_SETUP_ERROR;
                        sSOStartupInfo.lastErr = 50300;
                        break;

                    case -1:
                    case -2:
                    case -4:
                    default:
                        sSOStartupInfo.state = NET_SETUP_ERROR;
                        sSOStartupInfo.lastErr = 50100;
                        break;
                }
                return NULL;
            }

            OSReport("NCDSetIfConfig()\n");
            cfgSetResult = NCDSetIfConfig(sSOStartupInfo.ifcfg);
            if (cfgSetResult != 0) {
                switch (cfgSetResult) {
                    case -3:
                        sSOStartupInfo.state = NET_SETUP_ERROR;
                        sSOStartupInfo.lastErr = 50300;
                        break;

                    case -1:
                    case -2:
                    case -4:
                    default:
                        sSOStartupInfo.state = NET_SETUP_ERROR;
                        sSOStartupInfo.lastErr = 50100;
                        break;
                }
                return NULL;
            }

            soStartupRes = SOStartupEx(45000);
            if (soStartupRes < 0) {
                OSReport("[FAIL] SOStartup() failed.(%d)\n", soStartupRes);
                soStartupRes = NETGetStartupErrorCodeEx(soStartupRes, (int)param_1);
                OSReport("<Error Code: %d>\n", -soStartupRes);
                sSOStartupInfo.state = NET_SETUP_ERROR;
                sSOStartupInfo.lastErr = -soStartupRes;
            } else {
                soAddr.addr = SOGetHostID();
                OSReport("IP address = %s\n", SOInetNtoA(soAddr));
                sSOStartupInfo.state = NET_SETUP_SUCCESS;
                sSOStartupInfo.lastErr = 0;
            }

            return NULL;
        }

        NetSetup::NetSetup() {
            memset(&mNcdCfg, 0, sizeof(NCDConfig));
            memset(&mNcdIfCfg, 0, sizeof(NCDIfConfig));
            memset(&mNcdIpCfg, 0, sizeof(NCDIpConfig));
            sSOStartupInfo.ifcfg = &mNcdIfCfg;
            sSOStartupInfo.ipcfg = &mNcdIpCfg;
        }

        NetSetup::~NetSetup() {
        }

        NCDProxyProfile* NetSetup::getproxy() {
            return &mNcdCfg.profiles[mProfileId].proxy;
        }
        int NetSetup::getlasterror() {
            return mLastErr;
        }
        u32 NetSetup::getconntype() {
            return mConnType;
        }

        int NetSetup::setup(void* heapBuf, u8 profileId) {
            s32 readCfgRes;

            sHeapBuf = heapBuf;
            sHeap = MEMCreateExpHeapEx(heapBuf, 0x10000, 0);
            OSInitMutex(&sAllocLock);
            mProfileId = profileId;

            OSReport("NCDReadConfig()\n");
            readCfgRes = NCDReadConfig(&mNcdCfg);
            if (readCfgRes != 0) {
                OSReport("[error] Failed to read settings from NAND.(%d)\n", readCfgRes);
                mLastErr = 50200;
                return FALSE;
            }
            if (mNcdCfg.profiles[mProfileId].flags & 1) {
                mNcdIfCfg.netif.wired = mNcdCfg.profiles[mProfileId].netif.wired;
                mNcdIfCfg.selectedMedia = 2;
            } else {
                mNcdIfCfg.netif.wireless = mNcdCfg.profiles[mProfileId].netif.wireless;
                mNcdIfCfg.selectedMedia = 1;
            }
            mNcdIfCfg.linkTimeout = mNcdCfg.linkTimeout;

            mNcdIpCfg.useDhcp = (mNcdCfg.profiles[mProfileId].flags >> 1) & TRUE;
            mNcdIpCfg.useProxy = (mNcdCfg.profiles[mProfileId].flags >> 4) & TRUE;
            mNcdIpCfg.ip = mNcdCfg.profiles[mProfileId].ip;
            mNcdIpCfg.adjust = mNcdCfg.profiles[mProfileId].adjust;
            mNcdIpCfg.proxy = mNcdCfg.profiles[mProfileId].proxy;

            if (mNcdCfg.profiles[mProfileId].flags & 1) {
                mConnType = mProfileId + 20;
            } else if (mNcdCfg.profiles[mProfileId].netif.wireless.configMethod != 1) {
                mConnType = mProfileId + 30;
            } else {
                mConnType = mProfileId + 40;
            }
            mState = NET_SETUP_REQUESTED_STARTUP;
            return TRUE;
        }

        NetSetup::NetSetupState NetSetup::getstate() {
            void* stackEnd;
            void* threadStack;

            SOLibraryConfig soLibCfg;

            switch (mState) {
                case NET_SETUP_REQUESTED_STARTUP:
                    memset(&soLibCfg, 0, 8);
                    soLibCfg.alloc = allocfunc;
                    soLibCfg.free = freefunc;
                    SOInit(&soLibCfg);
                    pThreadStack = (void*)allocfunc(0x4000, 0x20);
                    stackEnd = (void*)((int)pThreadStack + 0x4000);
                    if (OSCreateThread(&mThread, iSOStartupEXThread, (void*)mConnType, stackEnd, 0x4000, 0x11, 1) == 0) {
                        mLastErr = -(-50100 + -mConnType);
                        mState = NET_SETUP_ERROR;
                        OSReport("OSCreateThread failed\n");
                    } else {
                        OSResumeThread(&mThread);
                        mState = NET_SETUP_RUNNING;
                    }
                    break;

                case NET_SETUP_RUNNING:
                    if (OSIsThreadTerminated(&mThread)) {
                        threadStack = pThreadStack;
                        mState = sSOStartupInfo.state;
                        mLastErr = sSOStartupInfo.lastErr;
                        if (threadStack != NULL) {
                            if (threadStack != NULL) {
                                OSLockMutex(&sAllocLock);
                                MEMFreeToExpHeap(sHeap, threadStack);
                                OSUnlockMutex(&sAllocLock);
                            }
                            pThreadStack = NULL;
                        }
                    }
                    break;

                case NET_SETUP_SUCCESS:
                    NCDGetLinkStatus();
                    break;

                case NET_SETUP_NOT_STARTED:
                case NET_SETUP_UNK_4:
                case NET_SETUP_ERROR:
                default:
                    break;
            }
            return mState;
        }

        void NetSetup::cleanup() {
            SOCleanup();
            SOFinish();
            memset(&mNcdIfCfg, 0, 0x15e);
            mNcdIfCfg.selectedMedia = 0;
            NCDSetIfConfig(&mNcdIfCfg);
            MEMDestroyExpHeap(sHeap);
        }

        void* NetSetup::allocfunc(u32, s32 size) {
            void* ptr = NULL;
            if (size > 0) {
                OSLockMutex(&sAllocLock);
                ptr = MEMAllocFromExpHeapEx(sHeap, size, 0x20);
                OSUnlockMutex(&sAllocLock);
            }
            return ptr;
        }
        void NetSetup::freefunc(u32, void* buf, s32) {
            if (buf != (void*)0x0) {
                OSLockMutex(&sAllocLock);
                MEMFreeToExpHeap(sHeap, buf);
                OSUnlockMutex(&sAllocLock);
            }
        }
    }  // namespace scene
}  // namespace ipl
