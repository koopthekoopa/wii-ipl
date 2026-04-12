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
            KitayamaTest(EGG::Heap * heap, int);
            virtual void create();
            virtual void draw();
            virtual void destroy();
            virtual void calcCommon() { };
            virtual FaderSceneCommand calcNormal();
            virtual FaderSceneCommand calcFadeout();
            virtual BOOL isResetAcceptable() const;

        private:
            EGG::Heap* unk_0x58;  // 0x58
            int unk_0x5C;         // 0x5C
            u32 unk_0x60;         // 0x60
            kitayama::NandSDWorker_AutoTest* unk_0x64;  // 0x64
            u32 unk_0x68;         // 0x68
            u32 unk_0x6C;         // 0x6C
        };
    }  // namespace scene
}  // namespace ipl

#endif  // IPL_SCENE_KITAYAMA_TEST_H
