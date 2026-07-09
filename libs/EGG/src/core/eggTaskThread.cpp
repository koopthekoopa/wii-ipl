#include <egg/core.h>

#include <revolution/os.h>

namespace EGG {
    OSMessage* TaskThread::sEndMesgBuffer = NULL;
    int TaskThread::sEndMesgBufSize = 0;

    OSMessageQueue TaskThread::sEndMesgQueue;

    TaskThread* TaskThread::create(int capacity, int priority, u32 stackSize, Heap* pHeap) {
        if (pHeap == NULL) {
            pHeap = Heap::getCurrentHeap();
        }

        TaskThread* pThread = new (pHeap) TaskThread(capacity, priority, stackSize);
        if (pThread == NULL) {
            return NULL;
        }

        pThread->mpCurrentJob = NULL;
        pThread->mpJobList = new (pHeap) TJob[capacity];
        pThread->mJobNum = capacity;

        if (pThread->mpJobList == NULL) {
            delete pThread;
            return NULL;
        }

        for (int i = 0; i < capacity; i++) {
            pThread->mpJobList[i].pTask = NULL;
            pThread->mpJobList[i].clear_functions();
        }

        return pThread;
    }

    // probably supposed to be weaks, but cant get the order so, here i guess.

    void TaskThread::TJob::clear_functions() {
        pTask = NULL;
        pOnEnter = NULL;
        pOnExit = NULL;
        pOnDone = NULL;
    }

    TaskThread::TJob::TJob() : pOnEnter(NULL), pOnExit(NULL), pOnDone(NULL) {
    }

    bool TaskThread::request(TFunction pTask, void* pTaskArg, OSMessage endMesg) {
        TJob* pJob = findBlank();
        if (pJob == NULL) {
            return false;
        }

        pJob->pTask = pTask;
        pJob->pTaskArg = pTaskArg;
        pJob->endMesg = endMesg;

        bool success = sendMessage(pJob);
        if (!success) {
            pJob->pTask = NULL;
        }

        return success;
    }

    bool TaskThread::requestJam(TFunction pTask, void* pTaskArg, OSMessage endMesg) {
        TJob* pJob = findBlank();
        if (pJob == NULL) {
            return false;
        }

        pJob->pTask = pTask;
        pJob->pTaskArg = pTaskArg;
        pJob->endMesg = endMesg;

        bool success = jamMessage(pJob);
        if (!success) {
            pJob->pTask = NULL;
        }

        return success;
    }

    OSMessageQueue* TaskThread::createTaskEndMessageQueue(int size, Heap* pHeap) {
        sEndMesgBufSize = size;

        sEndMesgBuffer = static_cast<OSMessage*>(Heap::alloc(size * sizeof(OSMessage), 4, pHeap));

        OSInitMessageQueue(&sEndMesgQueue, sEndMesgBuffer, sEndMesgBufSize);
        return &sEndMesgQueue;
    }

    bool TaskThread::isTaskExist() const {
        for (int i = 0; i < mJobNum; i++) {
            if (mpJobList[i].pTask != NULL) {
                return true;
            }
        }

        return false;
    }

    TaskThread::~TaskThread() {
    }

    void TaskThread::onEnter() {
        if (mpCurrentJob != NULL && mpCurrentJob->pOnEnter != NULL) {
            mpCurrentJob->pOnEnter(mpCurrentJob->pTaskArg);
        }
    }

    void TaskThread::onExit() {
        if (mpCurrentJob != NULL && mpCurrentJob->pOnExit != NULL) {
            mpCurrentJob->pOnExit(mpCurrentJob->pTaskArg);
        }
    }

    void* TaskThread::run() {
        OSInitFastCast();

        while (true) {
            TJob* pJob = static_cast<TJob*>(waitMessageBlock());
            mpCurrentJob = pJob;

            if (pJob->pTask != NULL) {
                pJob->pTask(pJob->pTaskArg);

                if (mpEndMesgQueue != NULL && pJob->endMesg != NULL) {
                    OSSendMessage(mpEndMesgQueue, pJob->endMesg, 0);
                }
            }

            pJob->pTask = NULL;

            if (mpCurrentJob != NULL && mpCurrentJob->pOnDone != NULL) {
                mpCurrentJob->pOnDone(mpCurrentJob->pTaskArg);
            }

            mpCurrentJob = NULL;

            pJob->clear_functions();
        }
    }

    void forceWeak() {
        OSInitFastCast();
    }

    TaskThread::TaskThread(int capacity, int priority, u32 stackSize) : Thread(stackSize, capacity, priority, NULL), mpEndMesgQueue(NULL) {
        resume();
    }

    OSMessage TaskThread::waitQueueMessage(OSMessageQueue* pQueue, BOOL* pSuccess) {
        OSMessage msg = NULL;
        BOOL success = FALSE;

        if (pQueue != NULL) {
            success = OSReceiveMessage(pQueue, &msg, 0);
        }

        if (pSuccess != NULL) {
            *pSuccess = success;
        }

        return msg;
    }

    TaskThread::TJob* TaskThread::findBlank() {
        for (int i = 0; i < mJobNum; i++) {
            if (mpJobList[i].pTask != NULL) {
                continue;
            }

            mpJobList[i].clear_functions();
            return &mpJobList[i];
        }

        return NULL;
    }
}  // namespace EGG
