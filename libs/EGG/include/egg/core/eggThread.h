#ifndef EGG_CORE_THREAD_H
#define EGG_CORE_THREAD_H

#include <revolution/os.h>
#include <revolution/types.h>

#include <nw4r/ut/list.h>

#include <egg/core/eggHeap.h>

namespace EGG {
    class Thread {
    public:
        static void initialize();
        static Thread* findThread(OSThread* pOSThread);

        Thread(u32 stackSize, int capacity, int priority, Heap* pHeap = NULL);
        Thread(OSThread* currThread, int capacity);
        virtual ~Thread();

        virtual void* run();

        virtual void onEnter();
        virtual void onExit();

        OSMessageQueue* getMessageQueue() { return &mMsgQueue; }
        OSThread* getOSThread() const { return mpThread; }

    private:
        void setCommonMesgQueue(int capacity, Heap* pHeap);

        static void switchThreadCallback(OSThread* pCurrOSThread, OSThread* pNewOSThread);
        static void* start(void* pArg);

    private:
        nw4r::ut::Link mLink;  // 0x04

        Heap* mpHeap;        // 0x0C
        OSThread* mpThread;  // 0x10

        OSMessageQueue mMsgQueue;  // 0x14
        void* mpMsgArray;          // 0x34
        s32 mMsgCount;             // 0x38

        void* mpStack;   // 0x3C
        u32 mStackSize;  // 0x40

        struct ThreadList : public nw4r::ut::List {
            u32 _pad;
        };
        static ThreadList sThreadList;
    };
}  // namespace EGG

#endif  // EGG_CORE_THREAD_H
