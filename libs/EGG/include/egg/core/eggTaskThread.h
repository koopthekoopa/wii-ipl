#ifndef EGG_CORE_TASK_THREAD_H
#define EGG_CORE_TASK_THREAD_H

#include "revolution/os/OSMessage.h"
#include <egg/core/eggThread.h>

namespace EGG {
    class Heap;

    class TaskThread : public Thread {
    public:
        typedef void (*TFunction)(void* pTaskArg);

        struct TJob {
            TFunction pTask;    // 0x00
            void* pTaskArg;     // 0x04
            OSMessage endMesg;  // 0x08

            TFunction pOnEnter;  // 0x0C
            TFunction pOnExit;   // 0x10
            TFunction pOnDone;   // 0x14

            TJob();

            void clear_functions();
        };

    public:
        static TaskThread* create(int capacity, int priority, u32 stackSize, Heap* pHeap);
        static OSMessageQueue* createTaskEndMessageQueue(int size, Heap* pHeap);

        TaskThread(int capacity, int priority, u32 stackSize);
        virtual ~TaskThread();  // 0x08

        virtual void* run();  // 0x0C

        virtual void onEnter();  // 0x10
        virtual void onExit();   // 0x14

        bool request(TFunction pTask, void* pTaskArg, OSMessage endMesg);
        bool requestJam(TFunction pTask, void* pTaskArg, OSMessage endMesg);

        bool isTaskExist() const;

        static OSMessage waitQueueMessage(OSMessageQueue* pQueue, BOOL* pSuccess);

        bool isTaskWorking() const { return mpCurrentJob != NULL; }

        void setEndMessageQueue(OSMessageQueue* pQueue) { mpEndMesgQueue = pQueue; }
        OSMessageQueue* getEndMessageQueue() { return mpEndMesgQueue; }

        OSMessage waitTaskEndMessage(BOOL* pSuccess) {
            OSMessage msg;
            *pSuccess = OSReceiveMessage(mpEndMesgQueue, &msg, 0);
            return msg;
        }

    private:
        TJob* findBlank();

    private:
        TJob* mpCurrentJob;              // 0x44
        TJob* mpJobList;                 // 0x48
        int mJobNum;                     // 0x4C
        OSMessageQueue* mpEndMesgQueue;  // 0x50

        static OSMessage* sEndMesgBuffer;
        static int sEndMesgBufSize;

        static OSMessageQueue sEndMesgQueue;
    };
}  // namespace EGG

#endif  // EGG_CORE_TASK_THREAD_H
