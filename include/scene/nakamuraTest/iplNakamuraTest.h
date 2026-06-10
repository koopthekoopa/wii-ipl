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

            NetSetup mNetSetup;          // 0x0058
            EGG::Heap* pAppHeap;         // 0x2810
            void* pAppHeapBuf;           // 0x2814
            void* pNetSetupHeapBuf;      // 0x2818
            void* pNUPHeapBuf;           // 0x281c
            MEMHeapHandle pNUPHeap;      // 0x2820
            MEMAllocator mNUPAllocator;  // 0x2824
            OSThread mConnTestThread;    // 0x2838
            void* pConnTestThreadStack;  // 0x2b50
            u32 mNetSetupLastErr;        // 0x2b54
            u32 mState;                  // 0x2b58
            u32 mConnTestResult;         // 0x2b5c
            bool mFoundUpdate;           // 0x2b60
            u64 mAmtCompleted;           // 0x2b68
            u64 mAmtTotal;               // 0x2b70
            u16 mCurrVersion;            // 0x2b78
            void* pNUPInstance;          // 0x2b7c
            u32 unk_0x2b80;              // 0x2b80
            u32 unk_0x2b84;              // 0x2b84
            u32 unk_0x2b88;              // 0x2b88

            static EGG::Heap* spHeap;
            static BOOL sNHTTPFinished;
        };
    }  // namespace scene
}  // namespace ipl

#endif  // IPL_SCENE_NAKAMURA_TEST_H
