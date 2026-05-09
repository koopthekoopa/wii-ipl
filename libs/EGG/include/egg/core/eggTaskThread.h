#ifndef EGG_CORE_TASK_THREAD_H
#define EGG_CORE_TASK_THREAD_H

#include "revolution/os/OSMessage.h"
#include <egg/core/eggThread.h>

namespace EGG {
    class TaskThread : public Thread {
    public:
        typedef void (*TFunction)(void*);

        typedef struct TJob {
            TFunction mFunction;  // 0x00

            void* unk_0x04;
            OSMessage mMsg;  // 0x08

            TFunction mEnterFunction;  // 0x0C
            TFunction mExitFunction;   // 0x10
            TFunction unk_0x14;

            TJob();

            void clear_functions();
        } TJob;

        TaskThread(int capacity, int priority, u32 stackSize);
        virtual ~TaskThread();

        virtual void* run();

        virtual void onEnter();
        virtual void onExit();

        static TaskThread* create(int capacity, int priority, u32 stackSize, Heap* heap);

        bool request(TFunction func, void* work, OSMessage msg);
        bool requestJam(TFunction func, void* work, OSMessage msg);

        OSMessageQueue* getThreadMsgQueue() { return mpMsgQueue; }

        void setMessageQueue(OSMessageQueue* queue) { mpMsgQueue = queue; }

        static OSMessage waitQueueMessage(OSMessageQueue* queue, BOOL* result);

    private:
        TJob* findBlank();

    private:
        TJob* mCurrentJob;  // 0x44
        TJob* mJobs;        // 0x48
        int mJobCount;      // 0x4C

        OSMessageQueue* mpMsgQueue;  // 0x50

        static OSMessage* sEndMesgBuffer;
        static int sEndMesgBufSize;

        static OSMessageQueue sEndMesgQueue;
    };
}  // namespace EGG

#endif  // EGG_CORE_TASK_THREAD_H
