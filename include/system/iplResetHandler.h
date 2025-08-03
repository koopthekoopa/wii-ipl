#ifndef IPL_RESET_HANDLER_H
#define IPL_RESET_HANDLER_H

#include <revolution/types.h>

#include <egg/core.h>

namespace ipl {
    class ResetHandler {
        enum {
            FATAL_STATE_NONE = 0,
            FATAL_STATE_FADE,
            FATAL_STATE_INIT = FATAL_STATE_FADE,
            FATAL_STATE_VIDEO,
            FATAL_STATE_SYSTEM
        };

        public:
            ResetHandler(EGG::Heap* heap);

            void reset();
            void check();

            void update();
            void fatalUpdate();

            volatile BOOL isTypeEq0() const             { return mType != 0; }
            u32 getType() const                 { return mType; }
            u32 getFatalState() const           { return mFatalState; }

            void changeType(u32 value)          { mType = value; }
            void changeFatalState(u32 value)    { mFatalState = value; }

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

            u32     mState;
            u32     mType;
            BOOL    mbReturnToMenu;

            u32     mFatalState;
    };
}

#endif // IPL_RESET_HANDLER_H
