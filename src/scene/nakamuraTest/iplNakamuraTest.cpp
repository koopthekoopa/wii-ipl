#include "scene/nakamuratest/iplNakamuraTest.h"

#include "scene/nakamuratest/iplContest.h"
#include "scene/setting/iplSetting.h"

#include <revolution/nhttp/d_nhttp.h>
#include <revolution/os.h>
#include <revolution/soex.h>

#include "system/iplSystem.h"

namespace ipl {
    namespace scene {
        EGG::Heap* NakamuraTest::spHeap;
        BOOL NakamuraTest::sNHTTPFinished;

        NakamuraTest::NakamuraTest(EGG::Heap* heap) : scene::FaderSceneBase(heap), mNetSetup() {
            pNetSetupHeapBuf = NULL;
            pNUPHeapBuf = 0;
            unk_0x2b88 = 0;
            mState = 0x00;

            pAppHeapBuf = System::getMem2App()->alloc(0x299999, 4);
            pAppHeap = EGG::ExpHeap::create(pAppHeapBuf, 0x299999, 2);
            spHeap = pAppHeap;
        }

        NakamuraTest::~NakamuraTest() {
            pAppHeap->destroy();
            System::getMem2App()->free(pAppHeapBuf);
        }

        void NakamuraTest::prepare() {
        }
        void NakamuraTest::create() {
            OSReport("Nakamuratest scene created.\n");
            pNetSetupHeapBuf = NULL;
            pNUPHeapBuf = NULL;
            pNUPHeap = NULL;
            mState = 0x01;
            mNetSetupLastErr = 0;
            mConnTestResult = 0;
            mFoundUpdate = false;
            mAmtCompleted = 0;
            mAmtTotal = 0;
            pNUPInstance = NULL;
        }
        void NakamuraTest::destroy() {
            OSReport("Nakamuratest scene destroyed.\n");
        }

        void NakamuraTest::calcCommon() {
        }

        // TODO: Put these in iplContest
        extern "C" {
        int WADGetInstalledVersion(ESTitleId titleID, u16* version);

        // int NHTTPStartup(void* (*)(u32, int), void (*)(void*), int);
        // int NHTTPCleanupAsync(void (*)());

        int NETGetStartupErrorCode(int);

        void* NUP_Init(MEMAllocator* allocator);
        int NUP_Start(void* instance, const char* nus, const char* isoCountryCode, void* productAreaString, int);
        int NUP_GetStatus(void* instance, u64*);
        int NUP_Finish(void* instance);

        const char* SCUTILGetISOCountryCodeA2();
        }
        FaderSceneCommand NakamuraTest::calcNormal() {
            FaderSceneCommand cmd = FADER_SCN_CONTINUE;

            System::getMasterController();
            switch (mState) {
                case 0x00:
                    break;
                case 0x01:
                    if (System::isReceiveScheduleStopped() == FALSE) {
                        System::stopReceiveSchedule();
                        OSReport("[Receive Scheduler] Wait..\n");
                    } else {
                        pNetSetupHeapBuf = pAppHeap->alloc(0x10000, 4);
                        mNetSetupLastErr = 0;
                        Setting* settingScene = (Setting*)System::getSceneManager()->getScene(SCENE_SETTING);
                        u32 profileId = settingScene->getProfileID();
                        if (mNetSetup.setup(pNetSetupHeapBuf, profileId)) {
                            mState = 0x02;
                            OSReport("NetSetup Start\n");
                        } else {
                            mState = 0x11;
                            mNetSetupLastErr = mNetSetup.getlasterror();
                            if (pNetSetupHeapBuf != NULL) {
                                pAppHeap->free(pNetSetupHeapBuf);
                                pNetSetupHeapBuf = NULL;
                            }
                            OSReport("[error] NetSetup failed\n");
                        }
                    }
                    break;

                case 0x02:
                    switch (mNetSetup.getstate()) {
                        case NetSetup::NET_SETUP_SUCCESS:
                            mState = 0x03;
                            OSReport("NetSetup Completed\n");
                            OSReport("Starting Connecting Test\n");
                            break;
                        case NetSetup::NET_SETUP_UNK_4:
                            mState = 0x11;
                            mNetSetup.cleanup();
                            mNetSetupLastErr = mNetSetup.getlasterror();
                            if (pNetSetupHeapBuf != NULL) {
                                pAppHeap->free(pNetSetupHeapBuf);
                                pNetSetupHeapBuf = NULL;
                            }
                            OSReport("[error] %d\n", this->mNetSetupLastErr);
                            break;
                        case NetSetup::NET_SETUP_ERROR:
                            mState = 0x11;
                            mNetSetup.cleanup();
                            mNetSetupLastErr = mNetSetup.getlasterror();
                            if (pNetSetupHeapBuf != NULL) {
                                pAppHeap->free(pNetSetupHeapBuf);
                                pNetSetupHeapBuf = NULL;
                            }
                            OSReport("[error] %d\n", this->mNetSetupLastErr);
                            break;

                        default:
                            break;
                    }
                    break;

                case 0x03:
                    pNUPHeapBuf = pAppHeap->alloc(0x10000, 4);
                    IPLContestInitialize(pNUPHeapBuf, mNetSetup.getproxy());
                    pConnTestThreadStack = pAppHeap->alloc(0x4000, 4);
                    OSCreateThread(&mConnTestThread, conntestthread, NULL, (u8*)pConnTestThreadStack + 0x4000, 0x4000, 0x12, 1);
                    OSResumeThread(&mConnTestThread);
                    mState = 0x04;
                    break;

                case 0x04:
                    if (OSIsThreadTerminated(&mConnTestThread)) {
                        if (pConnTestThreadStack != NULL) {
                            pAppHeap->free(pConnTestThreadStack);
                            pConnTestThreadStack = NULL;
                        }
                        mState = 0x05;
                        System::resetNWC24Regist();
                    }
                    break;

                case 0x05:
                    mState = 0x06;
                    if (IPLContestGetResult() == 0 && System::processNWC24Regist() == 0) {
                        mState = 0x05;
                    }
                    break;

                case 0x06:
                    mConnTestResult = IPLContestGetResult();
                    if (System::getNWC24RegistErr() != 0) {
                        OSReport("WiiID ErrorOccur\n");
                        mConnTestResult = 0x10;
                        mFoundUpdate = false;
                    }
                    if (mConnTestResult == 0xff00) {
                        OSReport("[result] test has not been completed.\n");
                    } else if (mConnTestResult == 0x10) {
                        OSReport("[result] Wii ID register error.\n");
                    } else if ((mConnTestResult & 4) != 0) {
                        OSReport("[result] http : error\n");
                    } else {
                        OSReport("[result] http : %s\n", (mConnTestResult & 1) ? "ng" : "ok");
                    }
                    if (mConnTestResult != 0) {
                        if (mConnTestResult == 0x10) {
                            mNetSetupLastErr = -System::getNWC24RegistErr();
                        } else {
                            mNetSetupLastErr = IPLContestGetErrorCode(mNetSetup.getconntype());
                        }
                    } else {
                        Setting* settingsScene = (Setting*)System::getScene(SCENE_SETTING);

                        settingsScene->setConnectTestResult(1, mNetSetupLastErr, mFoundUpdate, IPLGetNATSupportCode(mNetSetup.getconntype()));
                    }
                    mState = 0x07;
                    break;

                case 0x07:
                    IPLContestShutdown();
                    if (pNUPHeapBuf != NULL) {
                        pAppHeap->free(pNUPHeapBuf);
                        pNUPHeapBuf = NULL;
                    }

                    if (mNetSetupLastErr != 0) {
                        mState = 0x11;
                        mNetSetup.cleanup();

                        if (pNetSetupHeapBuf != NULL) {
                            pAppHeap->free(pNetSetupHeapBuf);
                            pNetSetupHeapBuf = NULL;
                        }
                    } else {
                        mState = 0x08;
                    }
                    break;

                case 0x08: {
                    Setting* settingsScene = (Setting*)System::getScene(SCENE_SETTING);
                    if (settingsScene->getUpdateTiming() == 4) {
                        mState = 0x09;
                    } else if (settingsScene->getUpdateTiming() == 10) {
                        mState = 0x0e;
                    }
                    break;
                }
                case 0x09: {
                    u16 menuVersion;
                    System::getNandManager()->closeContentsAll();
                    WADGetInstalledVersion(0x0000000100000002ULL, &menuVersion);
                    mCurrVersion = menuVersion;
                    NHTTPStartup(nhttpalloc, nhttpfree, 0x13);

                    pNUPHeapBuf = pAppHeap->alloc(0x270000, 4);
                    pNUPHeap = MEMCreateExpHeapEx(pNUPHeapBuf, 0x270000, 0);
                    MEMInitAllocatorForExpHeap(&mNUPAllocator, pNUPHeap, 4);
                    pNUPInstance = NUP_Init(&mNUPAllocator);
                    if (pNUPInstance != (void*)0x0) {
                        char productAreaString[8];
                        char nus[] = "nus.shop.wii.com";
                        SCGetProductAreaString(productAreaString, 4);
                        OSReport("NUP region code : %s\n", productAreaString);
                        const char* isoCountryCode = SCUTILGetISOCountryCodeA2();
                        OSReport("NUP country code : %s\n", isoCountryCode);
                        int iVar8 = NUP_Start(pNUPInstance, nus, isoCountryCode, productAreaString, 0);
                        OSReport("NUP_Start()\n");
                        if (iVar8 < 0) {
                            switch (iVar8) {
                                case -5000:
                                    OSReport("FAIL ALLOC\n");
                                case -5001:
                                    OSReport("FAIL INTERNAL\n");
                                case -5002:
                                    OSReport("INVALID_FLAG\n");
                                case -5003:
                                    OSReport("NOT READY\n");
                                case -5011:
                                    OSReport("BAD HEAP\n");
                                case -5012:
                                    OSReport("BAD SIZE\n");
                                    mNetSetupLastErr = 32004;
                                    break;
                                case -5005:
                                    mNetSetupLastErr = 32001;
                                    break;
                                case -5009:
                                case -5008:
                                case -5007:
                                case -5006:
                                case -5004:
                                    mNetSetupLastErr = 32002;
                                    break;
                                case -5010:
                                    mNetSetupLastErr = 32003;
                                    break;
                                default:
                                    mNetSetupLastErr = 32004;
                                    break;
                            }
                            mState = 0x0c;
                            break;
                        }
                    }
                    mState = 0x0a;
                    break;
                }
                case 0x0a: {
                    u16 menuVersion;

                    u64 nupStatus[3];
                    int nupErrno = NUP_GetStatus(pNUPInstance, nupStatus);
                    if (nupStatus[1] != 0) {
                        mAmtCompleted = nupStatus[2];
                        mAmtTotal = nupStatus[1];
                    }
                    if (nupErrno == 0) {
                        mFoundUpdate = true;
                        mState = 0x0c;
                    } else if (nupErrno < 0) {
                        OSReport("NUP failed errorcode :%d\n", nupErrno);
                        WADGetInstalledVersion(0x0000000100000002ULL, &menuVersion);
                        if (mCurrVersion != menuVersion) {
                            mFoundUpdate = true;
                        } else {
                            mFoundUpdate = false;
                        }
                        switch (nupErrno) {
                            case -5000:
                                OSReport("FAIL ALLOC\n");
                            case -5001:
                                OSReport("FAIL INTERNAL\n");
                            case -5002:
                                OSReport("INVALID_FLAG\n");
                            case -5003:
                                OSReport("NOT READY\n");
                            case -5011:
                                OSReport("BAD HEAP\n");
                            case -5012:
                                OSReport("BAD SIZE\n");
                                mNetSetupLastErr = 32004;
                                break;
                            case -5005:
                                mNetSetupLastErr = 32001;
                                break;
                            case -5009:
                            case -5008:
                            case -5007:
                            case -5006:
                            case -5004:
                                mNetSetupLastErr = 32002;
                                break;
                            case -5010:
                                mNetSetupLastErr = 32003;
                                break;
                            default:
                                if (-1001 >= nupErrno && nupErrno >= -1007) {
                                    mNetSetupLastErr = 32005;
                                } else if (-6000 >= nupErrno && nupErrno > -7000) {
                                    mNetSetupLastErr = 32006;
                                } else if (-7000 >= nupErrno && nupErrno > -8000) {
                                    mNetSetupLastErr = 32007;
                                } else if (-1008 >= nupErrno && nupErrno > -2000) {
                                    mNetSetupLastErr = 32000 - (nupErrno + 1000);
                                } else {
                                    mNetSetupLastErr = 32004;
                                }
                        }
                        mState = 0x0c;
                    }
                    break;
                }

                case 0x0c: {
                    NUP_Finish(pNUPInstance);
                    if (pNUPHeap != NULL) {
                        MEMDestroyExpHeap(pNUPHeap);
                        pNUPHeap = NULL;
                    }
                    if (pNUPHeapBuf != NULL) {
                        pAppHeap->free(pNUPHeapBuf);
                        pNUPHeapBuf = NULL;
                    }
                    sNHTTPFinished = false;
                    NHTTPCleanupAsync(nhttpcleanupcallback);
                    mState = 0x0d;

                    u16 menuVersion;
                    WADGetInstalledVersion(0x0000000100000002ULL, &menuVersion);
                    OSReport("systemmenu ver. before:%d after:%d\n", mCurrVersion, menuVersion);
                    mFoundUpdate = true;
                    break;
                }

                case 0x0d:
                    if (sNHTTPFinished)
                        mState = 0x0b;
                    break;
                case 0x0b:
                    mState = 0x0f;
                    break;

                case 0x0e:
                    mState = 0x0f;
                    OSReport("Network update has been skipped.\n");
                    break;

                case 0x0f:
                    OSReport("Disconnecting from network.\n");
                    mNetSetup.cleanup();
                    OSReport("Finished\n");
                    if (pNetSetupHeapBuf != NULL) {
                        pAppHeap->free(pNetSetupHeapBuf);
                        pNetSetupHeapBuf = NULL;
                    }
                    if (mNetSetupLastErr == 0) {
                        mState = 0x10;
                    } else {
                        mState = 0x11;
                    }
                    break;

                case 0x10:
                    if (mAmtTotal == 0) {
                        Setting* settingScene = (Setting*)System::getScene(SCENE_SETTING);
                        settingScene->setConnectTestResult(3, mNetSetupLastErr, mFoundUpdate, 0);
                        cmd = FADER_SCN_NEXT;
                    } else {
                        Setting* settingScene = (Setting*)System::getScene(SCENE_SETTING);
                        settingScene->setConnectTestResult(1, mNetSetupLastErr, mFoundUpdate, 0);
                        cmd = FADER_SCN_NEXT;
                    }
                    break;

                case 0x11:
                    int val;
                    int len = 4;
                    // local_50 = 4;
                    int level = 0xfffe;
                    int optname = 0x1003;
                    if (SOGetInterfaceOpt(NULL, level, optname, &val, &len) == 0 && val == -111) {
                        int iVar7 = NETGetStartupErrorCode(-111);
                        mNetSetupLastErr = (-iVar7 / 100) * 100;
                        mNetSetupLastErr = mNetSetup.getconntype();
                    }
                    Setting* settingScene = (Setting*)System::getScene(SCENE_SETTING);
                    settingScene->setConnectTestResult(2, mNetSetupLastErr, mFoundUpdate, 0);
                    cmd = FADER_SCN_NEXT;
                    break;
            }
            return cmd;
            // WADGetInstalledVersion;
        }

        FaderSceneCommand NakamuraTest::calcFadeout() {
            return FADER_SCN_NEXT;
        }

        void NakamuraTest::draw() {
            if (System::getSceneManager()->onDefaultDrawLayer() != TRUE) {
                return;
            }
            utility::Graphics::setOrtho(0);
        }

        void* NakamuraTest::conntestthread(void*) {
            int iVar1;

            IPLContestStart();
            while (true) {
                switch (IPLContestProcess()) {
                    case 4:
                        return NULL;

                    case 0:
                    case 1:
                    case 2:
                    case 3:
                        break;
                }
                OSSleepTicks(OSMicrosecondsToTicks(1));
            }
        }

        void* NakamuraTest::nhttpalloc(u32 size, int align) {
            if (align < 4)
                align = 4;
            return spHeap->alloc(size, align);
        }
        void NakamuraTest::nhttpfree(void* buf) {
            return spHeap->free(buf);
        }
        void NakamuraTest::nhttpcleanupcallback() {
            sNHTTPFinished = TRUE;
        }

        BOOL NakamuraTest::isResetAcceptable() const {
            return FALSE;
        }

    }  // namespace scene
}  // namespace ipl
