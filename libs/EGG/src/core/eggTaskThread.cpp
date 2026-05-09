#include <egg/core/eggTaskThread.h>

namespace EGG {

    TaskThread* TaskThread::create(int capacity, int priority, u32 stackSize, Heap* pHeap) {
        if (pHeap == NULL) {
            pHeap = Heap::sCurrentHeap;
        }
        TaskThread* pThread = new (pHeap, 4) TaskThread(capacity, priority, stackSize);
        if (pThread == NULL) {
            return NULL;
        }
        pThread->mCurrentJob = NULL;
        pThread->mJobs = new (pHeap, 4) TJob[capacity];
        pThread->mJobCount = capacity;
        if (pThread->mJobs == NULL) {
            delete pThread;
            return NULL;
        }
        for (int i = 0; i < capacity; i++) {
            pThread->mJobs[i].mFunction = NULL;
            pThread->mJobs[i].clear_functions();
        }
        return pThread;
    }

    void TaskThread::TJob::clear_functions() {
        mFunction = NULL;
        mEnterFunction = NULL;
        mExitFunction = NULL;
        unk_0x14 = NULL;
    }

    TaskThread::TJob::TJob() : mEnterFunction(NULL), mExitFunction(NULL), unk_0x14(NULL) {}

    bool TaskThread::request(TFunction func, void* work, OSMessage msg) {
        TJob* job = findBlank();
        if (job == NULL) {
            return false;
        }
        job->mFunction = func;
        job->unk_0x04 = work;
        job->mMsg = msg;
        bool success = OSSendMessage(getMessageQueue(), job, 0) != 0;
        if (!success) {
            job->mFunction = NULL;
        }
        return success;
    }

    bool TaskThread::requestJam(TFunction func, void* work, OSMessage msg) {
        TJob* job = findBlank();
        if (job == NULL) {
            return false;
        }
        job->mFunction = func;
        job->unk_0x04 = work;
        job->mMsg = msg;
        bool success = OSJamMessage(getMessageQueue(), job, 0) != 0;
        if (!success) {
            job->mFunction = NULL;
        }
        return success;
    }

    TaskThread::~TaskThread() {}

    void TaskThread::onEnter() {
        if (mCurrentJob != NULL && mCurrentJob->mEnterFunction != NULL) {
            mCurrentJob->mEnterFunction(mCurrentJob->unk_0x04);
        }
    }

    void TaskThread::onExit() {
        if (mCurrentJob != NULL && mCurrentJob->mExitFunction != NULL) {
            mCurrentJob->mExitFunction(mCurrentJob->unk_0x04);
        }
    }

#pragma dont_inline on
    void* TaskThread::run() {
        OSInitFastCast();
        while (true) {
            OSMessage msg;
            OSReceiveMessage(&mMsgQueue, &msg, OS_MESSAGE_BLOCK);
            TJob* job = (TJob*)msg;
            mCurrentJob = job;
            if (mCurrentJob->mFunction != NULL) {
                mCurrentJob->mFunction(mCurrentJob->unk_0x04);
                if (mpMsgQueue != NULL && job->mMsg != NULL) {
                    OSSendMessage(mpMsgQueue, job->mMsg, 0);
                }
            }
            job->mFunction = NULL;
            if (mCurrentJob != NULL && mCurrentJob->unk_0x14 != NULL) {
                mCurrentJob->unk_0x14(mCurrentJob->unk_0x04);
            }
            mCurrentJob = NULL;
            job->clear_functions();
        }
    }
#pragma dont_inline off

    TaskThread::TaskThread(int capacity, int priority, u32 stackSize)
        : Thread(stackSize, capacity, priority, NULL), mpMsgQueue(NULL) {
        OSResumeThread(getOSThread());
    }

    OSMessage TaskThread::waitQueueMessage(OSMessageQueue* queue, BOOL* result) {
        OSMessage msg = NULL;
        BOOL success = FALSE;
        if (queue != NULL) {
            success = OSReceiveMessage(queue, &msg, 0);
        }
        if (result != NULL) {
            *result = success;
        }
        return msg;
    }

}  // namespace EGG
