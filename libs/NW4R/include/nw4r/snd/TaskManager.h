#ifndef NW4R_SND_TASK_MANAGER_H
#define NW4R_SND_TASK_MANAGER_H

#include <nw4r/snd/Task.h>

#include <revolution/mem.h>

namespace nw4r {
    namespace snd {
        namespace detail {
            class TaskManager {
                public:
                    typedef enum TaskPriority {
                        PRIORITY_LOW = 0,
                        PRIORITY_MIDDLE,
                        PRIORITY_HIGH,
                        PRIORITY_MAX
                    } TaskPriority;

                public:
                    static TaskManager& GetInstance();

                    void                AppendTask(Task* task, TaskPriority priority);
                    Task*               PopTask(TaskPriority priority);

                    void                Execute();
                    bool                ExecuteSingle() NO_INLINE;

                    void                CancelByTaskId(u32 taskId);

                    void*               Alloc();
                    void                Free(void* ptr);

                    static u8  mTaskArea[0x2000 + 0x44];

                private:
                    TaskManager();

                    OSMutex         mMutex;                     // 0x00
                    MEMHeapHandle   mHeapHandle;                // 0x18

                    Task*           mCurrentTask;               // 0x1C
                    TaskList        mTaskList[PRIORITY_MAX];    // 0x20
            };
        }
    }
}

#endif // NW4R_SND_TASK_MANAGER_H
