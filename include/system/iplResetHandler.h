#ifndef IPL_RESET_HANDLER_H
#define IPL_RESET_HANDLER_H

#include <revolution/types.h>

#include <egg/core.h>

namespace ipl {
    class ResetHandler {
        enum {
            STATE_SHUTDOWN_LIB = 0,
            STATE_SHUTDOWN_VIDEO = 3,
            STATE_SHUTDOWN_SYSTEM = 4,
        };

        enum {
            TYPE_INVALID = 0,
            TYPE_RESTART,
            TYPE_SHUTDOWN
        };

        enum {
            FATAL_STATE_NONE = 0,
            FATAL_STATE_FADE,
            FATAL_STATE_INIT = FATAL_STATE_FADE,
            FATAL_STATE_VIDEO,
            FATAL_STATE_SYSTEM
        };

        public:
            ResetHandler(EGG::Heap* heap);

            void    reset();
            void    check();

            void    update();
            void    fatalUpdate();

            BOOL    isValidType() const         { return mType != TYPE_INVALID; }
            BOOL    isInvalidType() const       { return mType == TYPE_INVALID; }

            u32     getType() const             { return mType; }

            void    changeType(u32 value)       { mType = value; }

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

            void setFatalResetCallback();

            u32     mState;         // 0x00
            vu32    mType;          // 0x04
            BOOL    mbReturnToMenu; // 0x08
            u32     mFatalState;    // 0x0C
    };
}

#endif // IPL_RESET_HANDLER_H
