#ifndef IPL_THREAD
#define IPL_THREAD

#include <revolution/types.h>
#include <revolution/os.h>

namespace ipl {
    namespace utility {
        class ut_thread {
            public:
                ut_thread();

                virtual         ~ut_thread();                                                                   // 0x08
                virtual void*   Run() = 0;                                                                      // 0x0C
                virtual void    Create(void* pStack, u32 stackSize, int priority, bool bStartThread = true);    // 0x10
                virtual void    Resume();                                                                       // 0x14
                virtual void    Suspend();                                                                      // 0x18
                virtual BOOL    WaitForThreadExit();                                                            // 0x1C
                virtual bool    IsThreadTerminated();                                                           // 0x20
                virtual bool    IsThreadSuspended();                                                            // 0x24
                virtual bool    SetThreadPriority(int priority);                                                // 0x28
                
            private:
                static  void*   ThreadMain_(void* param);

                OSThread        mThread;        // 0x08
                
                void*           mpStack;        // 0x320
                u32             mStackSize;     // 0x324
                
                int             mPriority;      // 0x328
        };
    }
}

#endif // IPL_THREAD


