#ifndef NW4R_SND_TASK_H
#define NW4R_SND_TASK_H

#include <nw4r/snd/types.h>

#include <nw4r/ut.h>

namespace nw4r {
    namespace snd {
        namespace detail {
            class Task : private ut::NonCopyable {
                friend class TaskManager;

                public:
                    Task() :
                    mTaskId(0) {}

                    Task(u32 taskId) :
                    mTaskId(taskId) {}

                    virtual ~Task() {} // 0x08

                    virtual void    Execute() = 0;  // 0x0C
                    virtual void    Cancel() = 0;   // 0x10

                    u32             GetTaskId() const   { return mTaskId; }

                public:
                    ut::LinkListNode    mTaskLink;  // 0x04

                private:
                    u32 mTaskId;                    // 0x0C
            };

            typedef ut::LinkList<Task, offsetof(Task, mTaskLink)> TaskList;
        }
    }
}

#endif // NW4R_SND_TASK_H
