#ifndef EGG_CORE_THREAD_H
#define EGG_CORE_THREAD_H

#include <revolution.h>

#include <nw4r/ut/list.h>

#include <egg/core/eggHeap.h>

namespace EGG {
    class Thread {
        public:
            Thread();
            virtual ~Thread();

            OSMessageQueue* getMessageQueue() { return &mMsgQueue; }

        private:
            static nw4r::ut::List   smThreadList;

            Heap*                   mpHeap;         // 0x04
            OSThread*               mpThread;       // 0x08

            OSMessageQueue          mMsgQueue;      // 0x0C
            void*                   mpMsgArray;     // 0x2C
            s32                     mMsgCount;      // 0x30

            void*                   mpStack;        // 0x34
            u32                     mStackSize;     // 0x38

            nw4r::ut::Link          mLink;          // 0x3C
    };
}

#endif // EGG_CORE_THREAD_H
