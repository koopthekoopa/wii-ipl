#include <egg/core.h>

#include <nw4r/ut.h>

#include <revolution/os.h>

namespace EGG {
    nw4r::ut::List Thread::sThreadList;

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

    void Thread::onEnter() {
    }

    void Thread::onExit() {
    }

    Thread::Thread(u32 stackSize, int capacity, int priority, Heap* pHeap) {
        if (pHeap == NULL) {
            pHeap = Heap::getCurrentHeap();
        }

        mpContainHeap = pHeap;
        mStackSize = OSRoundDown32B(stackSize);

        mpStackMemory = Heap::alloc(mStackSize, 32, mpContainHeap);

        mpOSThread = static_cast<OSThread*>(Heap::alloc(sizeof(OSThread), 32, mpContainHeap));

        OSCreateThread(mpOSThread, Thread::start, this, reinterpret_cast<u8*>(mpStackMemory) + mStackSize, mStackSize, priority,
                       OS_THREAD_ATTR_DETACH);

        setCommonMesgQueue(capacity, mpContainHeap);
    }

    Thread::Thread(OSThread* pOSThread, int capacity) {
        mpContainHeap = NULL;
        mpOSThread = pOSThread;

        mStackSize = nw4r::ut::GetOffsetFromPtr(pOSThread->stackBase, pOSThread->stackEnd);

        mpStackMemory = pOSThread->stackBase;

        setCommonMesgQueue(capacity, Heap::getCurrentHeap());
    }

    Thread::~Thread() {
        nw4r::ut::List_Remove(&sThreadList, this);

        if (mpContainHeap != NULL) {
            if (!OSIsThreadTerminated(mpOSThread)) {
                OSDetachThread(mpOSThread);
                OSCancelThread(mpOSThread);
            }

            Heap::free(mpStackMemory, mpContainHeap);
            Heap::free(mpOSThread, mpContainHeap);
        }

        Heap::free(mpMesgBuffer, NULL);
    }

    Thread* Thread::findThread(OSThread* pOSThread) {
        Thread* it = NULL;
        while ((it = (Thread*)nw4r::ut::List_GetNext(&sThreadList, it)) != NULL) {
            if (it->mpOSThread == pOSThread) {
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
        mMesgNum = capacity;

        mpMesgBuffer = static_cast<OSMessage*>(Heap::alloc(capacity * sizeof(OSMessage), 4, pHeap));

        OSInitMessageQueue(&mMesgQueue, mpMesgBuffer, mMesgNum);
        nw4r::ut::List_Append(&sThreadList, this);
    }

    void* Thread::start(void* pArg) {
        return static_cast<Thread*>(pArg)->run();
    }
}  // namespace EGG
