#ifndef IPL_POSTMAN_MANAGER_H
#define IPL_POSTMAN_MANAGER_H

#include <revolution/types.h>

#include "utility/iplThread.h"
#include "utility/iplMessageBase.h"

#include <egg/core.h>

namespace ipl {
    namespace postman {
        class Manager : public utility::ut_thread {
            public:
                enum {
                    STATE_NONE = 0,
                    STATE_RUN_RECEIVE,
                    STATE_STOP_RUN,
                    STATE_USBETHER_MAC,
                    STATE_DL_TASK,
                    STATE_PREPARE
                };
                Manager(EGG::Heap* heap);
                virtual ~Manager() {}

                void            InitManager();

                void            Send_ReceiveImmediately();
                void            Send_Pause();
                void            Send_Start();
                void            Send_Stop();
                void            Send_GetUsbEtherMacAddr();
                void            Send_DownloadTaskReload();

                virtual void*   Run();
                
                int             Get_CurrentState() const { return mState; }

            private:
                enum {
                    MESSAGE_RECEIVE_IMMEDIATELY = 0,
                    MESSAGE_START,
                    MESSAGE_PAUSE,
                    MESSAGE_STOP,
                    MESSAGE_GET_USBETHER_MACADDR,
                    MESSAGE_DOWNLOADTASK_RELOAD,
                };

                void    suspend_scheduler_();
                void    resume_scheduler_();

                void    update_playlog_();
                void    add_dl_task_();
                void    save_mail_now_();
                void    do_daily_tasks_();
                void    manage_dltasklist_for_menu_();
                void    receive_immediately_();
                void    set_alarm_();
                void    get_usb_ether_macaddr_();
                void    set_nwc24_permission_();
                void    register_nwc24(void* work /*unused*/);

                void    ncd_debug_print_(bool unused = true) NO_INLINE;
                void    ncd_debug_print_full_();

                EGG::Heap*              mpHeap;         // 0x32C
                void*                   mpThreadStack;  // 0x330
                volatile int            mState;         // 0x334
                OSAlarm                 mAlarm;         // 0x338
                utility::ut_message<32> mMessage;       // 0x368

                static void alarm_handler_(OSAlarm* alarm, OSContext* context);

                static const int THREAD_STACK_SIZE = 0x8000;
        };
    }
}

#endif // IPL_POSTMAN_MANAGER_H
