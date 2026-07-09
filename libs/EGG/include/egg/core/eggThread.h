#ifndef EGG_CORE_THREAD_H
#define EGG_CORE_THREAD_H

#include <revolution/types.h>

#include <revolution/os.h>

#include <nw4r/ut/list.h>

#include <egg/core/eggHeap.h>

namespace EGG {

    // Forward declarations
    class Heap;

    class Thread {
    public:
        static void initialize();
        static Thread* findThread(OSThread* pOSThread);

        Thread(u32 stackSize, int capacity, int priority, Heap* pHeap = NULL);
        Thread(OSThread* pOSThread, int capacity);
        virtual ~Thread();  // 0x08

        virtual void* run() { return NULL; }  // 0x0C

        virtual void onEnter();  // 0x10
        virtual void onExit();   // 0x14

        void resume() { OSResumeThread(mpOSThread); }

        bool sendMessage(OSMessage msg) { return OSSendMessage(&mMesgQueue, msg, 0); }
        bool jamMessage(OSMessage msg) { return OSJamMessage(&mMesgQueue, msg, 0); }

        OSMessage waitMessage(BOOL* pSuccess) {
            OSMessage msg;
            *pSuccess = OSReceiveMessage(&mMesgQueue, &msg, 0);
            return msg;
        }

        OSMessage waitMessageBlock() {
            OSMessage msg;
            OSReceiveMessage(&mMesgQueue, &msg, OS_MESSAGE_BLOCK);
            return msg;
        }

        OSThread* getOSThread() const { return mpOSThread; }

        void* getStack() const { return mpStackMemory; }
        u32 getStackSize() const { return mStackSize; }

        static nw4r::ut::List& getList() { return sThreadList; }

        nw4r::ut::Link mLink;  // 0x04

    private:
        void setCommonMesgQueue(int capacity, Heap* pHeap);

        static void switchThreadCallback(OSThread* pCurrOSThread, OSThread* pNewOSThread);
        static void* start(void* pArg);

        Heap* mpContainHeap;  // 0x0C

        OSThread* mpOSThread;  // 0x10

        OSMessageQueue mMesgQueue;  // 0x14
        OSMessage* mpMesgBuffer;    // 0x34
        int mMesgNum;               // 0x38

        void* mpStackMemory;  // 0x3C
        u32 mStackSize;       // 0x40

        static nw4r::ut::List sThreadList;
    };
}  // namespace EGG

#endif  // EGG_CORE_THREAD_H
