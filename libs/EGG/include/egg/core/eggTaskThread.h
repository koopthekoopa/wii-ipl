#ifndef EGG_CORE_TASK_THREAD_H
#define EGG_CORE_TASK_THREAD_H

#include <nw4r/ut/list.h>

namespace EGG {
    class TaskThread {
        public:
            typedef void (*Func)(void*);

            TaskThread();
            virtual ~TaskThread();

            void request(Func func, void* work, void*);
        
        private:
            unsigned char a[32];
    };
}

#endif // EGG_CORE_TASK_THREAD_H
