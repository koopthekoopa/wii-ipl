#include <nw4r/snd/TaskManager.h>

#include <revolution/mem.h>

namespace nw4r {
    namespace snd {
        namespace detail {
            u8 TaskManager::mTaskArea[0x2000 + 0x44] ALIGN32;

            TaskManager& TaskManager::GetInstance() {
                static TaskManager instance;
                return instance;
            }

            TaskManager::TaskManager() :
            mMutex(),
            mCurrentTask(NULL),
            mTaskList() {
                OSInitMutex(&mMutex);
                mHeapHandle = MEMCreateUnitHeap(mTaskArea, sizeof(mTaskArea), 64);
            }

            void* TaskManager::Alloc() {
                void* allocBuf;
                ut::AutoInterruptLock lock;

                allocBuf = MEMAllocFromUnitHeap(mHeapHandle);
                while (allocBuf == NULL) {
                    bool result = ExecuteSingle();
                    allocBuf = MEMAllocFromUnitHeap(mHeapHandle);
                }
                return allocBuf;
            }

            void TaskManager::Free(void* ptr) {
                ut::AutoInterruptLock lock;
                MEMFreeToUnitHeap(mHeapHandle, ptr);
            }

            void TaskManager::AppendTask(Task* task, TaskPriority prio) {
                ut::AutoInterruptLock lock;
                mTaskList[prio].PushBack(task);
            }

            Task* TaskManager::PopTask(TaskPriority prio) {
                Task* task;
                ut::AutoInterruptLock lock;

                if (mTaskList[prio].IsEmpty()) {
                    return NULL;
                }

                task = &mTaskList[prio].GetFront();
                mTaskList[prio].PopFront();
                return task;
            }

            void TaskManager::Execute() {
                while (ExecuteSingle()) {}
            }

            bool TaskManager::ExecuteSingle() {
                ut::AutoMutexLock lock(mMutex);

                if ((mCurrentTask = PopTask(static_cast<TaskPriority>(PRIORITY_HIGH))) == NULL) {
                    if ((mCurrentTask = PopTask(static_cast<TaskPriority>(PRIORITY_MIDDLE))) == NULL) {
                        if ((mCurrentTask = PopTask(static_cast<TaskPriority>(PRIORITY_LOW))) == NULL) {
                            return false;
                        }
                    }
                }

                mCurrentTask->Execute();

                Free(mCurrentTask);
                mCurrentTask = NULL;

                return true;
            }

            void TaskManager::CancelByTaskId(u32 taskId) {
                ut::AutoInterruptLock lock;

                for (int i = 0; i < PRIORITY_MAX; i++) {
                    TaskPriority prio = static_cast<TaskPriority>(i);

                    for (TaskList::Iterator it = mTaskList[prio].GetBeginIter(); it != mTaskList[prio].GetEndIter();) {
                        TaskList::Iterator currIt = it++;
                        if (currIt->GetTaskId() == taskId) {
                            mTaskList[prio].Erase(currIt);
                            Free(&*currIt);
                        }
                    }
                }

                if (mCurrentTask && mCurrentTask->GetTaskId() == taskId) {
                    mCurrentTask->Cancel();
                }
            }
        }
    }
}
