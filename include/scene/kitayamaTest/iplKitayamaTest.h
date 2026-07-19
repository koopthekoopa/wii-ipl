#ifndef IPL_SCENE_KITAYAMA_TEST_H
#define IPL_SCENE_KITAYAMA_TEST_H

#include "iplSceneHeader.h"

namespace ipl {
    namespace kitayama {
        class NandSDWorker_AutoTest;
    }

    namespace scene {
        FADER_SCENE_CLASS(KitayamaTest) {
        public:
            enum KitayamaTestOpt {
                KITAYAMA_OPT_CHOOSE = 0,  // 0
                KITAYAMA_OPT_TESTS,       // 1
                KITAYAMA_OPT_INIT_NAND,   // 2
            };

            KitayamaTest(EGG::Heap * heap, int opt);
            ~KitayamaTest();

            void prepare();
            void create();
            void destroy();

            void draw();

            void calcCommon();
            FaderSceneCommand calcNormal();
            FaderSceneCommand calcFadeout();

            BOOL isResetAcceptable() const {
                return FALSE;
            }

        private:
            enum State {
                KITAYAMA_STATE_IDLE = 0,                 // 0x0
                KITAYAMA_STATE_CHOOSE_PROCESS,           // 0x1
                KITAYAMA_STATE_SETUP_FOR_TESTS,          // 0x2
                KITAYAMA_STATE_DO_SAVE_TEST,             // 0x3
                KITAYAMA_STATE_WAIT_SAVE_TEST_DONE,      // 0x4
                KITAYAMA_STATE_DO_APP_TEST,              // 0x5
                KITAYAMA_STATE_WAIT_APP_TEST_DONE,       // 0x6
                KITAYAMA_STATE_SETUP_FOR_NAND_INIT,      // 0x7
                KITAYAMA_STATE_DO_NAND_INIT,             // 0x8
                KITAYAMA_STATE_WAIT_NAND_INIT_DONE,      // 0x9
                KITAYAMA_STATE_HANDLE_NAND_INIT_RESULT,  // 0xa
                KITAYAMA_STATE_DONE_OK,                  // 0xb
                KITAYAMA_STATE_DONE_ERR,                 // 0xc
            };

            EGG::Heap* pHeap;                            // 0x58
            KitayamaTestOpt mOption;                     // 0x5C
            u32 mState;                                  // 0x60
            kitayama::NandSDWorker_AutoTest* pAutoTest;  // 0x64
            void* pWorkerWork;                           // 0x68
            void* pWorkerCacheBuf;                       // 0x6C
            u32 unk_0x70;                                // 0x70 (unused?)
            u32 unk_0x74;                                // 0x74 (unused?)
        };
    }  // namespace scene
}  // namespace ipl

#endif  // IPL_SCENE_KITAYAMA_TEST_H
