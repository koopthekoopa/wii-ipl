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
                KITAYAMA_OPT_CHOOSE = 0,
                KITAYAMA_OPT_TESTS,
                KITAYAMA_OPT_INIT_NAND,
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
            enum {
                KITAYAMA_STATE_IDLE = 0,
                KITAYAMA_STATE_CHOOSE_PROCESS,
                KITAYAMA_STATE_SETUP_FOR_TESTS,
                KITAYAMA_STATE_DO_SAVE_TEST,
                KITAYAMA_STATE_WAIT_SAVE_TEST_DONE,
                KITAYAMA_STATE_DO_APP_TEST,
                KITAYAMA_STATE_WAIT_APP_TEST_DONE,
                KITAYAMA_STATE_SETUP_FOR_NAND_INIT,
                KITAYAMA_STATE_DO_NAND_INIT,
                KITAYAMA_STATE_WAIT_NAND_INIT_DONE,
                KITAYAMA_STATE_HANDLE_NAND_INIT_RESULT,
                KITAYAMA_STATE_DONE_OK,
                KITAYAMA_STATE_DONE_ERR,
            };

            EGG::Heap* mpHeap;                            // 0x58
            KitayamaTestOpt mOption;                      // 0x5C
            u32 mState;                                   // 0x60
            kitayama::NandSDWorker_AutoTest* mpAutoTest;  // 0x64
            void* mpWorkerBuf;                            // 0x68
            void* mpWorkerCacheBuf;                       // 0x6C
            u32 unk_0x70;                                 // 0x70 (unused)
            u32 unk_0x74;                                 // 0x74 (unused)
        };
    }  // namespace scene
}  // namespace ipl

#endif  // IPL_SCENE_KITAYAMA_TEST_H
