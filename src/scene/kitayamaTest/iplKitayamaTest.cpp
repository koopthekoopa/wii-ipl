#include "scene/kitayamaTest/iplKitayamaTest.h"
#include "scene/kitayamaTest/iplNandSDWorker_AutoTest.h"

#include "scene/iplSceneCreator.h"
#include "scene/setting/iplSetting.h"

#include <private/os/OSPlayRecord.h>

#include "iplSystem.h"
#include "utility/iplGraphics.h"

namespace ipl {
    namespace scene {
        KitayamaTest::KitayamaTest(EGG::Heap* heap, int opt) : FaderSceneBase(heap) {
            pHeap = heap;
            mOption = (KitayamaTestOpt)opt;
            pWorkerWork = NULL;
            pWorkerCacheBuf = NULL;
            mState = KITAYAMA_STATE_IDLE;
        }

        KitayamaTest::~KitayamaTest() {
        }

        void KitayamaTest::prepare() {
        }

        void KitayamaTest::create() {
            OSReport("Kitayamatest scene created.\n");

            pAutoTest = new (pHeap, 4) kitayama::NandSDWorker_AutoTest;

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
            delete pAutoTest;

            if (pWorkerWork != NULL) {
                System::getMem2App()->free(pWorkerWork);
            }

            if (pWorkerCacheBuf != NULL) {
                System::getMem2App()->free(pWorkerCacheBuf);
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

                    ES_SetUid(0x0001000030303030ULL);
                    ISFS_CloseLib();
                    ISFS_OpenLib();

                    nand::wrapper::Delete("/title/00010000/30303030/data/banner.bin");
                    result = nand::wrapper::Create("/title/00010000/30303030/data/banner.bin", 0x3F, 0);
                    if (result == NAND_RESULT_OK) {
                        result = nand::wrapper::Open("/title/00010000/30303030/data/banner.bin", &bannerInfo, 2);
                        if (result != NAND_RESULT_OK) {
                            OSReport(" NANDOpen failed: %d\n", result);
                            OSPanic("iplKitayamaTest.cpp", 0xAD, "Terminated.\n");
                        }

                        buffer = (WIISaveBannerFile*)pHeap->alloc(sizeof(WIISaveBannerFile), 0x20);
                        memset(buffer, 0x55, sizeof(WIISaveBannerFile));
                        buffer->signature = 'WIBN';
                        buffer->flags = 0;

                        result = nand::wrapper::Write(&bannerInfo, buffer, sizeof(WIISaveBannerFile));
                        if ((u32)result != sizeof(WIISaveBannerFile)) {
                            OSReport(" NANDWrite failed: %d\n", result);
                            OSPanic("iplKitayamaTest.cpp", 0xB8, "Terminated.\n");
                        }

                        result = nand::wrapper::Close(&bannerInfo);
                        if (result != NAND_RESULT_OK) {
                            OSReport(" NANDClose failed: %d\n", result);
                            OSPanic("iplKitayamaTest.cpp", 0xBE, "Terminated.\n");
                        }

                        pHeap->free(buffer);
                    } else if (result == NAND_RESULT_EXISTS) {
                        OSReport("banner.bin already exist.\n");
                    } else {
                        OSReport(" NANDCreate failed: %d\n", result);
                        OSPanic("iplKitayamaTest.cpp", 0xC6, "Terminated.\n");
                    }

                    result = nand::wrapper::Create("/title/00010000/30303030/data/test1.bin", 0x3F, 0);
                    if (result == NAND_RESULT_OK) {
                        result = nand::wrapper::Open("/title/00010000/30303030/data/test1.bin", &testInfo, 2);
                        if (result != NAND_RESULT_OK) {
                            OSReport(" NANDOpen failed: %d\n", result);
                            OSPanic("iplKitayamaTest.cpp", 0xD5, "Terminated.\n");
                        }

                        buffer = (WIISaveBannerFile*)pHeap->alloc(sizeof(WIISaveBannerFile), 0x20);
                        memset(buffer, 0x55, sizeof(WIISaveBannerFile));
                        buffer->signature = 'WIBN';
                        buffer->flags = 0;

                        result = nand::wrapper::Write(&testInfo, buffer, sizeof(WIISaveBannerFile));
                        if ((u32)result != sizeof(WIISaveBannerFile)) {
                            OSReport(" NANDWrite failed: %d\n", result);
                            OSPanic("iplKitayamaTest.cpp", 0xE0, "Terminated.\n");
                        }

                        result = nand::wrapper::Close(&testInfo);
                        if (result != NAND_RESULT_OK) {
                            OSReport(" NANDClose failed: %d\n", result);
                            OSPanic("iplKitayamaTest.cpp", 0xE6, "Terminated.\n");
                        }

                        pHeap->free(buffer);
                    } else if (result == NAND_RESULT_EXISTS) {
                        OSReport("test1.bin already exist.\n");
                    } else {
                        OSReport(" NANDCreate failed: %d\n", result);
                        OSPanic("iplKitayamaTest.cpp", 0xEE, "Terminated.\n");
                    }

                    result = nand::wrapper::CreateDir("/title/00010000/30303030/data/nocopy", 0x3F, 0);
                    if (result != NAND_RESULT_OK && result != NAND_RESULT_EXISTS) {
                        OSReport(" NANDCreateDir failed: %d\n", result);
                        OSPanic("iplKitayamaTest.cpp", 0xF8, "Terminated.\n");
                    }

                    result = nand::wrapper::Create("/title/00010000/30303030/data/nocopy/test1.txt", 0x3F, 0);
                    if (result != NAND_RESULT_OK && result != NAND_RESULT_EXISTS) {
                        OSReport(" NANDCreate failed: %d\n", result);
                        OSPanic("iplKitayamaTest.cpp", 0xFE, "Terminated.\n");
                    }

                    ES_SetUid(SYSMENU_TITLE_ID);
                    ISFS_CloseLib();
                    ISFS_OpenLib();

                    pWorkerWork = System::getMem2App()->alloc(NandSDWorker::workerWorkSize(), 0x40);
                    pWorkerCacheBuf = System::getMem2App()->alloc(NandSDWorker::heapSizeForAppWorker(), 0x20);
                    mState = KITAYAMA_STATE_DO_SAVE_TEST;
                    break;
                }

                case KITAYAMA_STATE_DO_SAVE_TEST: {
                    pAutoTest->start_save_test(pWorkerWork, pWorkerCacheBuf, 0x18);
                    mState = KITAYAMA_STATE_WAIT_SAVE_TEST_DONE;
                    break;
                }

                case KITAYAMA_STATE_WAIT_SAVE_TEST_DONE: {
                    if (pAutoTest->process() == kitayama::NandSDWorker_AutoTest::PROCESS_STATE_DONE_ERR) {
                        mState = KITAYAMA_STATE_DONE_ERR;
                    } else if (pAutoTest->process() == kitayama::NandSDWorker_AutoTest::PROCESS_STATE_DONE_OK) {
                        mState = KITAYAMA_STATE_DO_APP_TEST;
                    }
                    break;
                }

                case KITAYAMA_STATE_DO_APP_TEST: {
                    pAutoTest->start_app_test(pWorkerWork, pWorkerCacheBuf, 0x18);
                    mState = KITAYAMA_STATE_WAIT_APP_TEST_DONE;
                    break;
                }

                case KITAYAMA_STATE_WAIT_APP_TEST_DONE: {
                    if (pAutoTest->process() == kitayama::NandSDWorker_AutoTest::PROCESS_STATE_DONE_ERR) {
                        mState = KITAYAMA_STATE_DONE_ERR;
                    } else if (pAutoTest->process() == kitayama::NandSDWorker_AutoTest::PROCESS_STATE_DONE_OK) {
                        mState = KITAYAMA_STATE_DONE_OK;
                    }
                    break;
                }

                case KITAYAMA_STATE_SETUP_FOR_NAND_INIT: {
                    System::stopReceiveSchedule();
                    pWorkerWork = System::getMem2App()->alloc(NandSDWorker::workerWorkSize(), 0x40);
                    mState = KITAYAMA_STATE_DO_NAND_INIT;
                    break;
                }

                case KITAYAMA_STATE_DO_NAND_INIT: {
                    if (System::isReceiveScheduleStopped()) {
                        System::getNandManager()->closeContentsAll();

                        if (System::getCdbManager() != NULL) {
                            System::getCdbManager()->closeDatabase();
                        }

                        s32 result = CDBUninit();
                        OSReport("CDBERR: %d\n", result);
                        __OSStopPlayRecord();
                        pAutoTest->start_initialize_nand(pWorkerWork, 0x13);
                        mState = KITAYAMA_STATE_WAIT_NAND_INIT_DONE;
                    } else {
                        OSReport("Wait for stop schedule...\n");
                    }
                    break;
                }

                case KITAYAMA_STATE_WAIT_NAND_INIT_DONE: {
                    if (pAutoTest->process() == kitayama::NandSDWorker_AutoTest::PROCESS_STATE_DONE_ERR ||
                        pAutoTest->process() == kitayama::NandSDWorker_AutoTest::PROCESS_STATE_DONE_OK) {
                        mState = KITAYAMA_STATE_HANDLE_NAND_INIT_RESULT;
                    }
                    break;
                }

                case KITAYAMA_STATE_HANDLE_NAND_INIT_RESULT: {
                    int result = pAutoTest->get_result();
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
