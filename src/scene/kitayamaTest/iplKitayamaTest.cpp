#include "scene/kitayamaTest/iplKitayamaTest.h"
#include "scene/kitayamaTest/nandsdworker_autotest.h"

#include "scene/iplSceneCreator.h"
#include "scene/setting/iplSetting.h"

#include <private/os/OSPlayRecord.h>

#include "iplSystem.h"
#include "utility/iplGraphics.h"

namespace ipl {
    namespace scene {
        KitayamaTest::KitayamaTest(EGG::Heap* heap, int opt) : FaderSceneBase(heap) {
            mpHeap = heap;
            mOption = (KitayamaTestOpt)opt;
            mpWorkerBuf = NULL;
            mpWorkerCacheBuf = NULL;
            mState = KITAYAMA_STATE_IDLE;
        }

        KitayamaTest::~KitayamaTest() {
        }

        void KitayamaTest::prepare() {
        }

        void KitayamaTest::create() {
            OSReport("Kitayamatest scene created.\n");

            mpAutoTest = new (mpHeap, 4) kitayama::NandSDWorker_AutoTest;

            switch (mOption) {
                case KITAYAMA_OPT_CHOOSE: {
                    mState = KITAYAMA_STATE_CHOOSE_PROCESS;
                    break;
                }
                case KITAYAMA_OPT_TESTS: {
                    mState = KITAYAMA_STATE_SETUP_FOR_TESTS;
                    break;
                }
                case KITAYAMA_OPT_INIT_NAND: {
                    mState = KITAYAMA_STATE_SETUP_FOR_NAND_INIT;
                    break;
                }
            }
        }

        void KitayamaTest::destroy() {
            delete mpAutoTest;

            if (mpWorkerBuf != NULL) {
                System::getMem2App()->free(mpWorkerBuf);
            }

            if (mpWorkerCacheBuf != NULL) {
                System::getMem2App()->free(mpWorkerCacheBuf);
            }

            OSReport("Kitayamatest scene destroyed.\n");
        }

        void KitayamaTest::calcCommon() {
        }

        FaderSceneCommand KitayamaTest::calcNormal() {
            FaderSceneCommand command = FADER_SCN_CONTINUE;
            controller::Interface* controller = System::getMasterController();

            switch (mState) {
                case KITAYAMA_STATE_CHOOSE_PROCESS: {
                    if (controller->downTrg(controller::REVO_BTN_A)) {
                        mState = KITAYAMA_STATE_SETUP_FOR_TESTS;
                    } else if (controller->downTrg(controller::REVO_BTN_B)) {
                        mState = KITAYAMA_STATE_SETUP_FOR_NAND_INIT;
                    }
                    break;
                }
                case KITAYAMA_STATE_SETUP_FOR_TESTS: {
                    s32 result;
                    NANDFileInfo bannerInfo;
                    NANDFileInfo testInfo;
                    WIISaveBannerFile* buffer;

                    ES_SetUid(0x0001000030303030);
                    ISFS_CloseLib();
                    ISFS_OpenLib();

                    // Delete old test file
                    nand::wrapper::Delete("/title/00010000/30303030/data/banner.bin");

                    // Create new test file
                    result = nand::wrapper::Create("/title/00010000/30303030/data/banner.bin", NAND_PERM_ALL_RW, 0);
                    if (result == NAND_RESULT_OK) {
                        result = nand::wrapper::Open("/title/00010000/30303030/data/banner.bin", &bannerInfo, NAND_ACCESS_WRITE);
                        if (result != NAND_RESULT_OK) {
                            OSReport(" NANDOpen failed: %d\n", result);
                            OSHalt("Terminated.\n", 173);
                        }

                        // Write some data to test file
                        buffer = (WIISaveBannerFile*)mpHeap->alloc(sizeof(WIISaveBannerFile), 32);
                        memset(buffer, 0x55, sizeof(WIISaveBannerFile));
                        buffer->signature = 'WIBN';
                        buffer->flags = 0;

                        result = nand::wrapper::Write(&bannerInfo, buffer, sizeof(WIISaveBannerFile));
                        if ((u32)result != sizeof(WIISaveBannerFile)) {
                            OSReport(" NANDWrite failed: %d\n", result);
                            OSHalt("Terminated.\n", 184);
                        }

                        result = nand::wrapper::Close(&bannerInfo);
                        if (result != NAND_RESULT_OK) {
                            OSReport(" NANDClose failed: %d\n", result);
                            OSHalt("Terminated.\n", 190);
                        }

                        mpHeap->free(buffer);
                    } else if (result == NAND_RESULT_EXISTS) {
                        OSReport("banner.bin already exist.\n");
                    } else {
                        OSReport(" NANDCreate failed: %d\n", result);
                        OSHalt("Terminated.\n", 198);
                    }

                    result = nand::wrapper::Create("/title/00010000/30303030/data/test1.bin", NAND_PERM_ALL_RW, 0);
                    if (result == NAND_RESULT_OK) {
                        result = nand::wrapper::Open("/title/00010000/30303030/data/test1.bin", &testInfo, NAND_ACCESS_WRITE);
                        if (result != NAND_RESULT_OK) {
                            OSReport(" NANDOpen failed: %d\n", result);
                            OSHalt("Terminated.\n", 213);
                        }

                        buffer = (WIISaveBannerFile*)mpHeap->alloc(sizeof(WIISaveBannerFile), 32);
                        memset(buffer, 0x55, sizeof(WIISaveBannerFile));
                        buffer->signature = 'WIBN';
                        buffer->flags = 0;

                        result = nand::wrapper::Write(&testInfo, buffer, sizeof(WIISaveBannerFile));
                        if ((u32)result != sizeof(WIISaveBannerFile)) {
                            OSReport(" NANDWrite failed: %d\n", result);
                            OSHalt("Terminated.\n", 224);
                        }

                        result = nand::wrapper::Close(&testInfo);
                        if (result != NAND_RESULT_OK) {
                            OSReport(" NANDClose failed: %d\n", result);
                            OSHalt("Terminated.\n", 230);
                        }

                        mpHeap->free(buffer);
                    } else if (result == NAND_RESULT_EXISTS) {
                        OSReport("test1.bin already exist.\n");
                    } else {
                        OSReport(" NANDCreate failed: %d\n", result);
                        OSHalt("Terminated.\n", 238);
                    }

                    result = nand::wrapper::CreateDir("/title/00010000/30303030/data/nocopy", NAND_PERM_ALL_RW, 0);
                    if (result != NAND_RESULT_OK && result != NAND_RESULT_EXISTS) {
                        OSReport(" NANDCreateDir failed: %d\n", result);
                        OSHalt("Terminated.\n", 248);
                    }

                    result = nand::wrapper::Create("/title/00010000/30303030/data/nocopy/test1.txt", NAND_PERM_ALL_RW, 0);
                    if (result != NAND_RESULT_OK && result != NAND_RESULT_EXISTS) {
                        OSReport(" NANDCreate failed: %d\n", result);
                        OSHalt("Terminated.\n", 254);
                    }

                    ES_SetUid(SYSMENU_TITLE_ID);
                    ISFS_CloseLib();
                    ISFS_OpenLib();

                    mpWorkerBuf = System::getMem2App()->alloc(NandSDWorker::workerWorkSize(), 64);
                    mpWorkerCacheBuf = System::getMem2App()->alloc(NandSDWorker::heapSizeForAppWorker(), 32);
                    mState = KITAYAMA_STATE_DO_SAVE_TEST;
                    break;
                }
                case KITAYAMA_STATE_DO_SAVE_TEST: {
                    mpAutoTest->start_save_test(mpWorkerBuf, mpWorkerCacheBuf, 24);
                    mState = KITAYAMA_STATE_WAIT_SAVE_TEST_DONE;
                    break;
                }
                case KITAYAMA_STATE_WAIT_SAVE_TEST_DONE: {
                    if (mpAutoTest->process() == kitayama::NandSDWorker_AutoTest::PROCESS_STATE_DONE_ERR) {
                        mState = KITAYAMA_STATE_DONE_ERR;
                    } else if (mpAutoTest->process() == kitayama::NandSDWorker_AutoTest::PROCESS_STATE_DONE_OK) {
                        mState = KITAYAMA_STATE_DO_APP_TEST;
                    }
                    break;
                }
                case KITAYAMA_STATE_DO_APP_TEST: {
                    mpAutoTest->start_app_test(mpWorkerBuf, mpWorkerCacheBuf, 24);
                    mState = KITAYAMA_STATE_WAIT_APP_TEST_DONE;
                    break;
                }
                case KITAYAMA_STATE_WAIT_APP_TEST_DONE: {
                    if (mpAutoTest->process() == kitayama::NandSDWorker_AutoTest::PROCESS_STATE_DONE_ERR) {
                        mState = KITAYAMA_STATE_DONE_ERR;
                    } else if (mpAutoTest->process() == kitayama::NandSDWorker_AutoTest::PROCESS_STATE_DONE_OK) {
                        mState = KITAYAMA_STATE_DONE_OK;
                    }
                    break;
                }
                case KITAYAMA_STATE_SETUP_FOR_NAND_INIT: {
                    System::stopReceiveSchedule();
                    mpWorkerBuf = System::getMem2App()->alloc(NandSDWorker::workerWorkSize(), 0x40);
                    mState = KITAYAMA_STATE_DO_NAND_INIT;
                    break;
                }
                case KITAYAMA_STATE_DO_NAND_INIT: {
                    if (System::isReceiveScheduleStopped()) {
                        System::getNandManager()->closeContentsAll();

                        if (System::getCdbManager() != NULL) {
                            System::getCdbManager()->closeDatabase();
                        }

                        CDBErr err = CDBUninit();
                        OSReport("CDBERR: %d\n", err);

                        __OSStopPlayRecord();

                        mpAutoTest->start_initialize_nand(mpWorkerBuf, 19);

                        mState = KITAYAMA_STATE_WAIT_NAND_INIT_DONE;
                    } else {
                        OSReport("Wait for stop schedule...\n");
                    }
                    break;
                }
                case KITAYAMA_STATE_WAIT_NAND_INIT_DONE: {
                    if (mpAutoTest->process() == kitayama::NandSDWorker_AutoTest::PROCESS_STATE_DONE_ERR ||
                        mpAutoTest->process() == kitayama::NandSDWorker_AutoTest::PROCESS_STATE_DONE_OK) {
                        mState = KITAYAMA_STATE_HANDLE_NAND_INIT_RESULT;
                    }
                    break;
                }
                case KITAYAMA_STATE_HANDLE_NAND_INIT_RESULT: {
                    int result = mpAutoTest->get_result();
                    System::getNandManager()->openContentsAll();

                    if (mOption != KITAYAMA_OPT_CHOOSE) {
                        static_cast<Setting*>(System::getSceneManager()->getScene(SCENE_SETTING))->setInitializeResult(true, result);
                        mState = KITAYAMA_STATE_DONE_OK;
                        command = FADER_SCN_NEXT;
                    } else if (result == 0) {
                        mState = KITAYAMA_STATE_DONE_OK;
                    } else {
                        mState = KITAYAMA_STATE_DONE_ERR;
                    }
                    break;
                }
                case KITAYAMA_STATE_DONE_OK:
                case KITAYAMA_STATE_DONE_ERR: {
                    if (controller->downTrg(controller::REVO_BTN_1)) {
                        System::getFader()->fadeOut();
                        reserveAllSceneDestruction(SCENE_BOARD, NULL);
                        command = FADER_SCN_NEXT;
                    }

                    System::getFader()->fadeOut();
                    break;
                }
            }

            return command;
        }

        FaderSceneCommand KitayamaTest::calcFadeout() {
            if (mOption == KITAYAMA_OPT_INIT_NAND) {
                return FADER_SCN_NEXT;
            }

            return System::getFader()->getStatus() == EGG::Fader::PREPARE_IN ? FADER_SCN_NEXT : FADER_SCN_CONTINUE;
        }

        void KitayamaTest::draw() {
            if (System::onDefaultDrawLayer()) {
                utility::Graphics::setOrtho();
            }
        }
    }  // namespace scene
}  // namespace ipl
