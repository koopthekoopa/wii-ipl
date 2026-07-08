#include "scene/nakamuratest/iplNakamuraTest.h"

#include "scene/nakamuratest/iplContest.h"
#include "scene/setting/iplSetting.h"

#include <revolution/net.h>
#include <revolution/nhttp.h>
#include <revolution/nup.h>
#include <revolution/os.h>
#include <revolution/scutil.h>
#include <revolution/soex.h>
#include <revolution/wad.h>

#include "system/iplSystem.h"

#include "titledb.h"

namespace ipl {
    namespace scene {
        EGG::Heap* NakamuraTest::spHeap;
        BOOL NakamuraTest::sNHTTPFinished;

        NakamuraTest::NakamuraTest(EGG::Heap* heap) : scene::FaderSceneBase(heap), mNetSetup() {
            mpNetSetupHeapBuf = NULL;
            mpNUPHeapBuf = 0;
            unk_0x2B88 = 0;
            mState = 0;

            mpAppHeapBuf = System::getMem2App()->alloc(0x299999, 4);
            mpAppHeap = EGG::ExpHeap::create(mpAppHeapBuf, 0x299999, 2);
            spHeap = mpAppHeap;
        }

        NakamuraTest::~NakamuraTest() {
            mpAppHeap->destroy();
            System::getMem2App()->free(mpAppHeapBuf);
        }

        void NakamuraTest::prepare() {
        }

        void NakamuraTest::create() {
            OSReport("Nakamuratest scene created.\n");
            mpNetSetupHeapBuf = NULL;
            mpNUPHeapBuf = NULL;
            mNUPHeap = NULL;
            mState = 1;
            mNetSetupLastErr = 0;
            mConnTestResult = 0;
            mFoundUpdate = false;
            mAmtCompleted = 0;
            mAmtTotal = 0;
            mpNUPInstance = NULL;
        }

        void NakamuraTest::destroy() {
            OSReport("Nakamuratest scene destroyed.\n");
        }

        void NakamuraTest::calcCommon() {
        }

        FaderSceneCommand NakamuraTest::calcNormal() {
            FaderSceneCommand cmd = FADER_SCN_CONTINUE;

            System::getMasterController();
            switch (mState) {
                case 0: {
                    break;
                }
                case 1: {
                    if (System::isReceiveScheduleStopped() == FALSE) {
                        System::stopReceiveSchedule();
                        OSReport("[Receive Scheduler] Wait..\n");
                    } else {
                        mpNetSetupHeapBuf = mpAppHeap->alloc(0x10000, 4);
                        mNetSetupLastErr = 0;
                        u32 profileId = ((Setting*)System::getScene(SCENE_SETTING))->getProfileID();
                        if (mNetSetup.setup(mpNetSetupHeapBuf, profileId)) {
                            mState = 2;
                            OSReport("NetSetup Start\n");
                        } else {
                            mState = 17;
                            mNetSetupLastErr = mNetSetup.getlasterror();
                            if (mpNetSetupHeapBuf != NULL) {
                                mpAppHeap->free(mpNetSetupHeapBuf);
                                mpNetSetupHeapBuf = NULL;
                            }
                            OSReport("[error] NetSetup failed\n");
                        }
                    }
                    break;
                }
                case 2: {
                    switch (mNetSetup.getstate()) {
                        case NetSetup::NET_SETUP_SUCCESS: {
                            mState = 3;
                            OSReport("NetSetup Completed\n");
                            OSReport("Starting Connecting Test\n");
                            break;
                        }
                        case NetSetup::NET_SETUP_UNK_4: {
                            mState = 17;
                            mNetSetup.cleanup();
                            mNetSetupLastErr = mNetSetup.getlasterror();
                            if (mpNetSetupHeapBuf != NULL) {
                                mpAppHeap->free(mpNetSetupHeapBuf);
                                mpNetSetupHeapBuf = NULL;
                            }
                            OSReport("[error] %d\n", mNetSetupLastErr);
                            break;
                        }
                        case NetSetup::NET_SETUP_ERROR: {
                            mState = 17;
                            mNetSetup.cleanup();
                            mNetSetupLastErr = mNetSetup.getlasterror();
                            if (mpNetSetupHeapBuf != NULL) {
                                mpAppHeap->free(mpNetSetupHeapBuf);
                                mpNetSetupHeapBuf = NULL;
                            }
                            OSReport("[error] %d\n", mNetSetupLastErr);
                            break;
                        }
                        default: {
                            break;
                        }
                    }
                    break;
                }
                case 3: {
                    mpNUPHeapBuf = mpAppHeap->alloc(0x10000, 4);

                    IPLContestInitialize(mpNUPHeapBuf, mNetSetup.getproxy());
                    mpConnTestThreadStack = mpAppHeap->alloc(0x4000, 4);

                    OSCreateThread(&mConnTestThread, conntestthread, NULL, (u8*)mpConnTestThreadStack + 0x4000, 0x4000, 0x12, 1);
                    OSResumeThread(&mConnTestThread);
                    mState = 4;
                    break;
                }
                case 4: {
                    if (OSIsThreadTerminated(&mConnTestThread)) {
                        if (mpConnTestThreadStack != NULL) {
                            mpAppHeap->free(mpConnTestThreadStack);
                            mpConnTestThreadStack = NULL;
                        }
                        mState = 5;
                        System::resetNWC24Regist();
                    }
                    break;
                }
                case 5: {
                    mState = 6;
                    if (IPLContestGetResult() == 0 && System::processNWC24Regist() == 0) {
                        mState = 5;
                    }
                    break;
                }
                case 6: {
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
                        ((Setting*)System::getScene(SCENE_SETTING))
                            ->setConnectTestResult(1, mNetSetupLastErr, mFoundUpdate, IPLGetNATSupportCode(mNetSetup.getconntype()));
                    }
                    mState = 7;
                    break;
                }
                case 7: {
                    IPLContestShutdown();
                    if (mpNUPHeapBuf != NULL) {
                        mpAppHeap->free(mpNUPHeapBuf);
                        mpNUPHeapBuf = NULL;
                    }

                    if (mNetSetupLastErr != 0) {
                        mState = 17;
                        mNetSetup.cleanup();

                        if (mpNetSetupHeapBuf != NULL) {
                            mpAppHeap->free(mpNetSetupHeapBuf);
                            mpNetSetupHeapBuf = NULL;
                        }
                    } else {
                        mState = 8;
                    }
                    break;
                }
                case 8: {
                    Setting* settingsScene = (Setting*)System::getScene(SCENE_SETTING);
                    if (settingsScene->getUpdateTiming() == 4) {
                        mState = 9;
                    } else if (settingsScene->getUpdateTiming() == 10) {
                        mState = 14;
                    }
                    break;
                }
                case 9: {
                    u16 menuVersion;
                    System::getNandManager()->closeContentsAll();
                    WADGetInstalledVersion(SYSMENU_TITLE_ID, &menuVersion);
                    mCurrVersion = menuVersion;
                    NHTTPStartup(nhttpalloc, nhttpfree, 0x13);

                    mpNUPHeapBuf = mpAppHeap->alloc(0x270000, 4);
                    mNUPHeap = MEMCreateExpHeapEx(mpNUPHeapBuf, 0x270000, 0);
                    MEMInitAllocatorForExpHeap(&mNUPAllocator, mNUPHeap, 4);

                    mpNUPInstance = NUP_Init(&mNUPAllocator);

                    if (mpNUPInstance != NULL) {
                        char productAreaString[8];
                        char nus[] = "nus.shop.wii.com";
                        SCGetProductAreaString(productAreaString, 4);
                        OSReport("NUP region code : %s\n", productAreaString);
                        const char* isoCountryCode = SCUTILGetISOCountryCodeA2();
                        OSReport("NUP country code : %s\n", isoCountryCode);
                        int iVar8 = NUP_Start(mpNUPInstance, nus, isoCountryCode, productAreaString, 0);
                        OSReport("NUP_Start()\n");
                        if (iVar8 < 0) {
                            switch (iVar8) {
                                case -5000: {
                                    OSReport("FAIL ALLOC\n");
                                }
                                case -5001: {
                                    OSReport("FAIL INTERNAL\n");
                                }
                                case -5002: {
                                    OSReport("INVALID_FLAG\n");
                                }
                                case -5003: {
                                    OSReport("NOT READY\n");
                                }
                                case -5011: {
                                    OSReport("BAD HEAP\n");
                                }
                                case -5012: {
                                    OSReport("BAD SIZE\n");
                                    mNetSetupLastErr = 32004;
                                    break;
                                }
                                case -5005: {
                                    mNetSetupLastErr = 32001;
                                    break;
                                }
                                case -5009:
                                case -5008:
                                case -5007:
                                case -5006:
                                case -5004: {
                                    mNetSetupLastErr = 32002;
                                    break;
                                }
                                case -5010: {
                                    mNetSetupLastErr = 32003;
                                    break;
                                }
                                default: {
                                    mNetSetupLastErr = 32004;
                                    break;
                                }
                            }
                            mState = 12;
                            break;
                        }
                    }
                    mState = 10;
                    break;
                }
                case 10: {
                    u16 menuVersion;

                    u64 nupStatus[3];
                    int nupErrno = NUP_GetStatus(mpNUPInstance, nupStatus);
                    if (nupStatus[1] != 0) {
                        mAmtCompleted = nupStatus[2];
                        mAmtTotal = nupStatus[1];
                    }
                    if (nupErrno == 0) {
                        mFoundUpdate = true;
                        mState = 12;
                    } else if (nupErrno < 0) {
                        OSReport("NUP failed errorcode :%d\n", nupErrno);
                        WADGetInstalledVersion(SYSMENU_TITLE_ID, &menuVersion);
                        if (mCurrVersion != menuVersion) {
                            mFoundUpdate = true;
                        } else {
                            mFoundUpdate = false;
                        }
                        switch (nupErrno) {
                            case -5000: {
                                OSReport("FAIL ALLOC\n");
                            }
                            case -5001: {
                                OSReport("FAIL INTERNAL\n");
                            }
                            case -5002: {
                                OSReport("INVALID_FLAG\n");
                            }
                            case -5003: {
                                OSReport("NOT READY\n");
                            }
                            case -5011: {
                                OSReport("BAD HEAP\n");
                            }
                            case -5012: {
                                OSReport("BAD SIZE\n");
                                mNetSetupLastErr = 32004;
                                break;
                            }
                            case -5005: {
                                mNetSetupLastErr = 32001;
                                break;
                            }
                            case -5009:
                            case -5008:
                            case -5007:
                            case -5006:
                            case -5004: {
                                mNetSetupLastErr = 32002;
                                break;
                            }
                            case -5010: {
                                mNetSetupLastErr = 32003;
                                break;
                            }
                            default: {
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
                        }
                        mState = 12;
                    }
                    break;
                }
                case 12: {
                    NUP_Finish(mpNUPInstance);
                    if (mNUPHeap != NULL) {
                        MEMDestroyExpHeap(mNUPHeap);
                        mNUPHeap = NULL;
                    }
                    if (mpNUPHeapBuf != NULL) {
                        mpAppHeap->free(mpNUPHeapBuf);
                        mpNUPHeapBuf = NULL;
                    }
                    sNHTTPFinished = false;
                    NHTTPCleanupAsync(nhttpcleanupcallback);
                    mState = 13;

                    u16 menuVersion;
                    WADGetInstalledVersion(SYSMENU_TITLE_ID, &menuVersion);
                    OSReport("systemmenu ver. before:%d after:%d\n", mCurrVersion, menuVersion);
                    mFoundUpdate = true;
                    break;
                }
                case 13: {
                    if (sNHTTPFinished)
                        mState = 11;
                    break;
                }
                case 11: {
                    mState = 15;
                    break;
                }
                case 14: {
                    mState = 15;
                    OSReport("Network update has been skipped.\n");
                    break;
                }
                case 15: {
                    OSReport("Disconnecting from network.\n");
                    mNetSetup.cleanup();
                    OSReport("Finished\n");
                    if (mpNetSetupHeapBuf != NULL) {
                        mpAppHeap->free(mpNetSetupHeapBuf);
                        mpNetSetupHeapBuf = NULL;
                    }
                    if (mNetSetupLastErr == 0) {
                        mState = 16;
                    } else {
                        mState = 17;
                    }
                    break;
                }
                case 16: {
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
                }
                case 17: {
                    int val;
                    int len = 4;
                    if (SOGetInterfaceOpt(NULL, SO_SOL_CONFIG, SO_CONFIG_ERROR, &val, &len) == 0 && val == -111) {
                        int iVar7 = NETGetStartupErrorCode(-111);
                        mNetSetupLastErr = (-iVar7 / 100) * 100;
                        mNetSetupLastErr = mNetSetup.getconntype();
                    }
                    Setting* settingScene = (Setting*)System::getScene(SCENE_SETTING);
                    settingScene->setConnectTestResult(2, mNetSetupLastErr, mFoundUpdate, 0);
                    cmd = FADER_SCN_NEXT;
                    break;
                }
            }
            return cmd;
        }

        FaderSceneCommand NakamuraTest::calcFadeout() {
            return FADER_SCN_NEXT;
        }

        void NakamuraTest::draw() {
            if (System::getSceneManager()->onDefaultDrawLayer() != TRUE) {
                return;
            }
            utility::Graphics::setOrtho();
        }

        void* NakamuraTest::conntestthread(void*) {
            int iVar1;

            IPLContestStart();
            while (true) {
                switch (IPLContestProcess()) {
                    case 4: {
                        return NULL;
                    }
                    case 0:
                    case 1:
                    case 2:
                    case 3: {
                        break;
                    }
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
