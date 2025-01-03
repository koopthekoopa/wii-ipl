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

            OSMessageQueue* getMessageQueue() { return &mMesgQueue; }

        private:
            static nw4r::ut::List   smThreadList;

            Heap*                   mheap;         // 0x04
            OSThread*               mpThread;       // 0x08

            OSMessageQueue          mMesgQueue;     // 0x0C
            void*                   mpMesgArray;    // 0x2C
            s32                     mMesgCount;     // 0x30

            void*                   mpStack;        // 0x34
            u32                     mStackSize;     // 0x38

            Heap*                   mNextHeap;      // 0x3C

            nw4r::ut::Link          mLink;          // 0x40
    };
}

#endif // EGG_CORE_THREAD_H


