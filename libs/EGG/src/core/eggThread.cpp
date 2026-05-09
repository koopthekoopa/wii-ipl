#include <egg/core/eggThread.h>

#include <egg/core/eggTaskThread.h>

namespace EGG {

    Thread::ThreadList Thread::sThreadList;

    TaskThread::TJob* TaskThread::findBlank() {
        for (int i = 0; i < mJobCount; i++) {
            if (mJobs[i].mFunction == NULL) {
                mJobs[i].clear_functions();
                return &mJobs[i];
            }
        }
        return NULL;
    }

    void Thread::switchThreadCallback(OSThread* pCurrOSThread, OSThread* pNewOSThread) {
        Thread* pCurrThread = findThread(pCurrOSThread);
        Thread* pNewThread = findThread(pNewOSThread);
        if (pCurrThread != NULL) {
            pCurrThread->onExit();
        }
        if (pNewThread != NULL) {
            pNewThread->onEnter();
        }
    }

    void Thread::onEnter() {}
    void Thread::onExit() {}

    Thread::Thread(u32 stackSize, int capacity, int priority, Heap* pHeap) {
        if (pHeap == NULL) {
            pHeap = Heap::sCurrentHeap;
        }
        mpHeap = pHeap;
        mStackSize = stackSize & ~0x1F;
        mpStack = Heap::alloc(mStackSize, 0x20, mpHeap);
        mpThread = (OSThread*)Heap::alloc(sizeof(OSThread), 0x20, mpHeap);
        OSCreateThread(mpThread, Thread::start, this, (u8*)mpStack + mStackSize, mStackSize, priority, OS_THREAD_ATTR_DETACH);
        setCommonMesgQueue(capacity, mpHeap);
    }

    Thread::Thread(OSThread* currThread, int capacity) {
        mpHeap = NULL;
        mpThread = currThread;
        mStackSize = (u32)((u8*)currThread->stackEnd - (u8*)currThread->stackBase);
        mpStack = currThread->stackBase;
        setCommonMesgQueue(capacity, Heap::sCurrentHeap);
    }

    Thread::~Thread() {
        nw4r::ut::List_Remove(&sThreadList, this);
        if (mpHeap != NULL) {
            if (!OSIsThreadTerminated(mpThread)) {
                OSDetachThread(mpThread);
                OSCancelThread(mpThread);
            }
            Heap::free(mpStack, mpHeap);
            Heap::free(mpThread, mpHeap);
        }
        Heap::free(mpMsgArray, NULL);
    }

    Thread* Thread::findThread(OSThread* pOSThread) {
        Thread* it = NULL;
        while ((it = (Thread*)nw4r::ut::List_GetNext(&sThreadList, it)) != NULL) {
            if (it->mpThread == pOSThread) {
                return it;
            }
        }
        return NULL;
    }

    void Thread::initialize() {
        nw4r::ut::List_Init(&sThreadList, offsetof(Thread, mLink));
        OSSetSwitchThreadCallback(Thread::switchThreadCallback);
    }

    void Thread::setCommonMesgQueue(int capacity, Heap* pHeap) {
        mMsgCount = capacity;
        mpMsgArray = Heap::alloc(capacity * sizeof(OSMessage), 4, pHeap);
        OSInitMessageQueue(&mMsgQueue, (OSMessage*)mpMsgArray, mMsgCount);
        nw4r::ut::List_Append(&sThreadList, this);
    }

    void* Thread::start(void* pArg) {
        return ((Thread*)pArg)->run();
    }

    void* Thread::run() {
        return NULL;
    }

}  // namespace EGG
