#include "system/iplPostmanManager.h"

#include "utility/iplMessageBase.h"
#include "system/iplPlayTimeLog.h"
#include "system/iplSocketSetting.h"
#include "iplSystem.h"

#include "config.h"

#define POSTMANReport(...)  OSReport("[POSTMAN] "__VA_ARGS__);

namespace ipl {
    namespace postman {
        Manager::Manager(EGG::Heap* heap) :
        ut_thread(),
        mpHeap(heap),
        mpThreadStack(NULL),
        mState(STATE_NONE),
        mMessage() {
            OSCreateAlarm(&mAlarm);
        }

        void Manager::InitManager() {
            mpThreadStack = mpHeap->alloc(THREAD_STACK_SIZE, DEFAULT_ALIGN);
            Create(mpThreadStack, THREAD_STACK_SIZE, 21, false);
        }

        void Manager::Send_ReceiveImmediately() {
            mMessage.SendMessage((OSMessage)MESSAGE_RECEIVE_IMMEDIATELY, 0);
        }

        void Manager::Send_Pause() {
            nwc24::Manager* nwc24Manager = System::getNwc24Manager();
            if (nwc24Manager != NULL) {
                System::getNwc24Manager()->mbReceivePaused = true;
            }
            mMessage.SendMessage((OSMessage)MESSAGE_PAUSE, 0);
        }

        void Manager::Send_Start() {
            if (System::getNwc24Manager() != NULL) {
                System::getNwc24Manager()->mbReceivePaused = false;
            }
            mMessage.SendMessage((OSMessage)MESSAGE_START, 0);
        }

        // From what I can guess it was originally
        void Manager::Send_Stop() {
            mMessage.SendMessage((OSMessage)MESSAGE_STOP, 0);
        }

        void Manager::Send_GetUsbEtherMacAddr() {
            mMessage.SendMessage((OSMessage)MESSAGE_GET_USBETHER_MACADDR, 0);
        }

        void Manager::Send_DownloadTaskReload() {
            mMessage.SendMessage((OSMessage)MESSAGE_DOWNLOADTASK_RELOAD, 0);
        }

        void Manager::alarm_handler_(OSAlarm* alarm, OSContext* context) {
            Manager* manager = reinterpret_cast<Manager*>(OSGetAlarmUserData(alarm));
            manager->Send_ReceiveImmediately();
        }

        void* Manager::Run() {
            if (!System::getResetHandler()->isResetting()) {
                mState = STATE_UNKNOWN;

                update_playlog_();
                add_dl_task_();
                manage_dltasklist_for_menu_();
                set_nwc24_permission_();
                resume_scheduler_();
                save_mail_now_();
                do_daily_tasks_();
                ncd_debug_print_full_();

                mState = STATE_RUN_RECEIVE;

                while (TRUE) {
                    s32 message = -1;
                    mMessage.ReceiveMessage((OSMessage*)&message, OS_MESSAGE_BLOCK);
                    POSTMANReport("Receive Message : %d\n", message);

                    switch (message) {
                        case MESSAGE_START: {
                            if (mState != STATE_RUN_RECEIVE) {
                                mState = STATE_RUN_RECEIVE;
                                ncd_debug_print_full_();
                                set_nwc24_permission_();
                                resume_scheduler_();
                            }
                        }
                        case MESSAGE_RECEIVE_IMMEDIATELY: {
                            OSCancelAlarm(&mAlarm);
                            receive_immediately_();
                            continue;
                        }
                        case MESSAGE_PAUSE: {
                            if (mState != STATE_STOP_RUN) {
                                OSCancelAlarm(&mAlarm);
                                suspend_scheduler_();
                                mState = STATE_STOP_RUN;
                            }
                            continue;
                        }
                        case MESSAGE_GET_USBETHER_MACADDR: {
                            int old = mState;
                            mState = STATE_USBETHER_MAC;
                            get_usb_ether_macaddr_();
                            mState = old;
                            continue;
                        }
                        case MESSAGE_DOWNLOADTASK_RELOAD: {
                            int old = mState;
                            mState = STATE_DL_TASK;
                            add_dl_task_();
                            mState = old;
                            continue;
                        }
                        case MESSAGE_STOP: {
                            mState = STATE_STOP_RUN;
                            OSCancelAlarm(&mAlarm);
                            break;
                        }
                        default: {
                            POSTMANReport("received unknown message.\n");
                            continue;
                        }
                    }
                    break;
                }
            }

            return NULL;
        }

        void Manager::suspend_scheduler_() {
            NWC24SuspendScheduler();
            OSReport("NWC24 Scheduler suspended\n");
        }

        void Manager::resume_scheduler_() {
            NWC24ResumeScheduler();
            OSReport("NWC24 Scheduler started\n");
        }

        void Manager::update_playlog_() {
            if (System::getCdbManager() != NULL) {
                if (!System::getCdbManager()->isOverFlow() && !System::goingToDataManager()) {
                    PlayTimeLog::log();
                }
                System::getCdbManager()->cleanUpEmptyDirectories(CDB_RECORD_LOCATION_NAND);
            }
        }

        void Manager::add_dl_task_() {
            if (System::getNwc24Manager() != NULL) {
                System::getNwc24Manager()->addDlTask();
            }
        }

        void Manager::save_mail_now_() {
            if (System::getNwc24Manager() != NULL) {
                System::getNwc24Manager()->saveMailNow();
            }
        }

        void Manager::do_daily_tasks_() {
            if (System::getNwc24Manager() != NULL) {
                System::getNwc24Manager()->doDailyTasks();
            }
        }

        void Manager::manage_dltasklist_for_menu_() {
            if (System::getNwc24Manager() != NULL) {
                if (System::getNwc24Manager()->open()) {
                    System::getNwc24Manager()->manageDlTaskListForMenu();
                    System::getNwc24Manager()->close();
                }
            }
        }

        void Manager::receive_immediately_() {
            if (mState == STATE_RUN_RECEIVE) {
                if (System::getNwc24Manager() != NULL) {
                    if (System::getCdbManager() != NULL) {
                        NWC24SuspendScheduler();

                        POSTMANReport("receive_immediately_\n");
                        if (!System::getCdbManager()->isOverFlow()) {
                            System::getNwc24Manager()->receive();
                        }

                        NWC24ResumeScheduler();
                    }
                }
                set_alarm_();
            }
            else {
                POSTMANReport("IGNORED: receive_immediately_\n");
            }
        }

        void Manager::set_alarm_() {
            OSSetAlarmUserData(&mAlarm, this);
            OSSetAlarm(&mAlarm, OSSecondsToTicks(60), alarm_handler_);
        }

        void Manager::get_usb_ether_macaddr_() {
            if (mState == STATE_RUN_RECEIVE) {
                suspend_scheduler_();
            }

            socket::SocketSetting::obtainLANMacAddr(NULL);

            if (mState == STATE_RUN_RECEIVE) {
                set_nwc24_permission_();
                resume_scheduler_();
            }
        }

        void Manager::set_nwc24_permission_() {
            SCParentalControlsInfo pcInfo;
            u8 nwc24Permission = NCD_NWC24_PERMISSION_NONE;
            
            SCGetParentalControl(&pcInfo);

            if ((SCGetWCFlags() & SC_WC_FLAGS_ENABLED) == SC_WC_FLAGS_ENABLED && SCGetEULA()) {
                POSTMANReport("PERMISSION_DOWNLOAD_ON\n");
                nwc24Permission |= NCD_NWC24_PERMISSION_DOWNLOAD;

                if ((pcInfo.enable & SC_PARENTAL_FLAG_ENABLED) != SC_PARENTAL_FLAG_ENABLED
                || (SCGetNetContentRestrictions() & SC_NET_RESTRICTIONS_MSG_BOARD) != SC_NET_RESTRICTIONS_MSG_BOARD) {
                    POSTMANReport("PERMISSION_MESSAGE_ON\n");
                    nwc24Permission |= NCD_NWC24_PERMISSION_MESSAGE;
                }
            }
            else {
                POSTMANReport("PERMISSION_ALL_OFF\n");
            }

            NCDConfig ncdConfig;
            s32 ncdErr = NCDReadConfig(&ncdConfig);
            if (ncdErr < NCD_RESULT_SUCCESS) {
                POSTMANReport("NCDReadConfig failed - %d\n", ncdErr);
                return;
            }

            if (nwc24Permission != ncdConfig.nwc24Permission) {
                POSTMANReport("....... PERMISSION_WRITE BACK\n");
                ncdConfig.nwc24Permission = nwc24Permission;

                ncdErr = NCDWriteConfig(&ncdConfig);
                if (ncdErr < NCD_RESULT_SUCCESS) {
                    POSTMANReport("NCDWriteConfig failed - %d\n", ncdErr);
                    return;
                }
            }

            NCDRestoreConfig();
        }

        void Manager::register_nwc24(void* work) {
            OSReport("Start Register UserId\n");

            NWC24Err err = NWC24RegisterUserId();
            s32 errorCode = 0;
            if (err != NWC24_OK && err != NWC24_ERR_ID_REGISTERED) {
                OSReport("resister nwc24id err %d\n", err);

                errorCode = NWC24GetErrorCode();
                OSReport("Error: Code: %d\n", errorCode);
            }

            System::setNWC24RegistEnd(errorCode);
            OSReport("DONE\n");
        }

        void Manager::ncd_debug_print_(bool unused) {
            NCDConfig ncdConfig;
            NCDReadConfig(&ncdConfig);
            // Stripped out for release
#ifdef USE_POSTMAN_NCD_DEBUG_PRINT
            OSReport("[NCDConfig.selectedMedia] %d\n", ncdConfig.selectedMedia);
            OSReport("[NCDConfig.nwc24Permission] %d\n", ncdConfig.nwc24Permission);
            OSReport("[NCDConfig.linkTimeout] %d\n", ncdConfig.linkTimeout);
#endif
        }

        void Manager::ncd_debug_print_full_() {
            POSTMANReport("Network State: %d\n", NCDGetLinkStatus());
            ncd_debug_print_();
        }
    }
}
