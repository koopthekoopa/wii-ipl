#ifndef IPL_RESET_HANDLER_H
#define IPL_RESET_HANDLER_H

#include <revolution/types.h>

#include <egg/core.h>

namespace ipl {
    class ResetHandler {
        enum {
            RESET_STATE_SHUTDOWN_LIB = 0,
            RESET_STATE_SHUTDOWN_VIDEO = 3,
            RESET_STATE_SHUTDOWN_SYSTEM = 4,
        };

        enum {
            STATE_WAIT_REQUEST = 0,
            STATE_RESTART,
            STATE_SHUTDOWN
        };

        enum {
            FATAL_RESET_STATE_NONE = 0,
            FATAL_RESET_STATE_FADE,
            FATAL_RESET_STATE_INIT = FATAL_RESET_STATE_FADE,
            FATAL_RESET_STATE_VIDEO,
            FATAL_RESET_STATE_SYSTEM
        };

        public:
            ResetHandler(EGG::Heap* heap);

            void    reset();
            void    powerOff()  { cbPowerOff(); }

            void    setFatalResetCallback();

            void    check();

            void    update();
            void    fatalUpdate();

            BOOL    isResetting() const         { return mState != STATE_WAIT_REQUEST; }
   
            /**
             * This tells the reset handler to return to the system menu when resetting (calling `OSReturnToMenu()`)
             * instead of rebooting the system (calling `OSRebootSystem()`)
             */
            void enableResetToMenu(BOOL value)  { mbReturnToMenu = value; }
            /**
             * Returns whether the reset handler to return to the system menu when resetting (calling `OSReturnToMenu()`)
             * instead of rebooting the system (calling `OSRebootSystem()`)
             */
            BOOL willResetToMenu() const        { return mbReturnToMenu; }

        private:
            static void cbReset();
            static void cbPowerOff();

            static void cbFatalReset();
            static void cbFatalPowerOff();

            u32     mUpdateSatate;      // 0x00
            vu32    mState;             // 0x04
            BOOL    mbReturnToMenu;     // 0x08
            u32     mFatalResetState;   // 0x0C
    };
}

#endif // IPL_RESET_HANDLER_H
