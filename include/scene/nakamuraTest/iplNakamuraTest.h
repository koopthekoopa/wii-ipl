#ifndef IPL_SCENE_NAKAMURA_TEST_H
#define IPL_SCENE_NAKAMURA_TEST_H

#include "iplSceneHeader.h"

#include "revolution/mem/expHeap.h"
#include "scene/nakamuraTest/iplNetSetup.h"

namespace ipl {
    namespace scene {
        FADER_SCENE_CLASS(NakamuraTest) {
        public:
            NakamuraTest(EGG::Heap * heap);
            virtual ~NakamuraTest();

            virtual void prepare() override;
            virtual void create() override;
            virtual void destroy() override;
            virtual BOOL isResetAcceptable() const override;

            virtual void calcCommon() override;
            virtual FaderSceneCommand calcNormal() override;
            virtual FaderSceneCommand calcFadeout() override;

            virtual void draw() override;

            inline u64 amtCompleted() const {
                return mAmtCompleted;
            }
            inline u64 amtTotal() const {
                return mAmtTotal;
            }

        private:
            static void* conntestthread(void*);
            static void* nhttpalloc(u32 size, int align);
            static void nhttpfree(void* buf);
            static void nhttpcleanupcallback();

            NetSetup mNetSetup;           // 0x0058
            EGG::Heap* mpAppHeap;         // 0x2810
            void* mpAppHeapBuf;           // 0x2814
            void* mpNetSetupHeapBuf;      // 0x2818
            void* mpNUPHeapBuf;           // 0x281C
            MEMHeapHandle mNUPHeap;       // 0x2820
            MEMAllocator mNUPAllocator;   // 0x2824
            OSThread mConnTestThread;     // 0x2838
            void* mpConnTestThreadStack;  // 0x2B50
            u32 mNetSetupLastErr;         // 0x2B54
            u32 mState;                   // 0x2B58
            u32 mConnTestResult;          // 0x2B5C
            bool mFoundUpdate;            // 0x2B60
            u64 mAmtCompleted;            // 0x2B68
            u64 mAmtTotal;                // 0x2B70
            u16 mCurrVersion;             // 0x2B78
            void* mpNUPInstance;          // 0x2B7C
            u32 unk_0x2B80;               // 0x2B80
            u32 unk_0x2B84;               // 0x2B84
            u32 unk_0x2B88;               // 0x2B88

            static EGG::Heap* spHeap;
            static BOOL sNHTTPFinished;
        };
    }  // namespace scene
}  // namespace ipl

#endif  // IPL_SCENE_NAKAMURA_TEST_H
