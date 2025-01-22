#ifndef EGG_CORE_TASK_THREAD_H
#define EGG_CORE_TASK_THREAD_H

#include "revolution/os/OSMessage.h"
#include <egg/core/eggThread.h>

namespace EGG {
    class TaskThread : Thread {
        public:
            typedef void (*TFunction)(void*);
            
            typedef struct TJob {
                TFunction mFunction;        // 0x00
                
                void* unk_0x04;
                OSMessage mMsg;             // 0x08
                
                TFunction mEnterFunction;   // 0x0c
                TFunction mExitFunction;    // 0x10
                TFunction unk_0x14;
                
                inline TJob() : mEnterFunction(NULL), mExitFunction(NULL), unk_0x14(NULL) {}
                
                inline void clearFunctions() {
                    mFunction = NULL;
                    mEnterFunction = NULL;
                    mExitFunction = NULL;
                    unk_0x14 = NULL;
                }
            } TJob;

            TaskThread();
            virtual ~TaskThread();

            static TaskThread*  create(int msgCount, int, u32 size, Heap* heap);

            void                request(TFunction func, void* work, void*);
            void                requestJam(TFunction func, void* work, void*);

            OSMessageQueue*     getMessageQueue()                       { return mpMsgQueue; }

            void                setMessageQueue(OSMessageQueue* queue)  { mpMsgQueue = queue; }

            static OSMessage    waitQueueMessage(OSMessageQueue* queue, BOOL* result);

        private:
            TJob*                   mCurrentJob;    // 0x44
            TJob*                   mJobs;          // 0x48
            int                     mJobCount;      // 0x4C

            OSMessageQueue*         mpMsgQueue;     // 0x50

            static OSMessage*       sEndMesgBuffer;
            static int              sEndMesgBufSize;

            static OSMessageQueue   sEndMesgQueue;
    };
}

#endif // EGG_CORE_TASK_THREAD_H
