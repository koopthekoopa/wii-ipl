#ifndef IPL_SCENE_NET_SETUP_H
#define IPL_SCENE_NET_SETUP_H

#include "iplSceneHeader.h"

#include <revolution/mem/expHeap.h>
#include <revolution/ncd.h>

namespace ipl {
    namespace scene {
        class NetSetup {
        public:
            enum NetSetupState {
                NET_SETUP_NOT_STARTED = 0,
                NET_SETUP_REQUESTED_STARTUP = 1,
                NET_SETUP_RUNNING = 2,
                NET_SETUP_SUCCESS = 3,
                NET_SETUP_UNK_4 = 4,
                NET_SETUP_ERROR = 5,
            };

            NetSetup();
            virtual ~NetSetup();

            NCDProxyProfile* getproxy();
            int getlasterror();
            u32 getconntype();
            NetSetupState getstate();

            BOOL setup(void* heapBuf, u8 profileId);
            void cleanup();

        private:
            static void* iSOStartupEXThread(void*);

            static void* allocfunc(u32, s32 size);
            static void freefunc(u32, void* buf, s32);

            typedef struct {
                NetSetupState state;
                int lastErr;
                NCDIfConfig* ifcfg;
                NCDIpConfig* ipcfg;
            } StaticSOStartupInfo;

            NCDConfig mNcdCfg;      // 0x0004
            u8 mProfileId;          // 0x1b60
            u32 mConnType;          // 0x1b64
            NCDIfConfig mNcdIfCfg;  // 0x1b68
            NCDIpConfig mNcdIpCfg;  // 0x1cc8
            NetSetupState mState;   // 0x248c
            int mLastErr;           // 0x2490
            OSThread mThread;       // 0x2498
            void* pThreadStack;     // 0x27b0

            static MEMHeapHandle sHeap;
            static void* sHeapBuf;

            static OSMutex sAllocLock;
            static StaticSOStartupInfo sSOStartupInfo;
        };
    }  // namespace scene
}  // namespace ipl

#endif  // IPL_SCENE_NET_SETUP_H
