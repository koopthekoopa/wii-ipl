#ifndef IPL_RESET_HANDLER_H
#define IPL_RESET_HANDLER_H

#include <revolution/types.h>

#include <egg/core.h>

namespace ipl {
    class ResetHandler {
        enum {
            FATAL_STATE_SHUTDOWN_NONE = 0,
            FATAL_STATE_SHUTDOWN_FADE,
            FATAL_STATE_SHUTDOWN_VIDEO,
            FATAL_STATE_SHUTDOWN_OS
        };

        public:
            ResetHandler(EGG::Heap* pHeap);

            static void cbReset();
            static void cbPowerOff();

            void reset();
            void check();

            void update();
            
            static void cbFatalReset();
            static void cbFatalPowerOff();

            void fatalUpdate();

            void setFatalResetCallback();

            u32 getPowerType() { return mPowerType; }
            u32 getFatalPowerState() { return mFatalPowerState; }

            void changePowerType(u32 value) { mPowerType = value; }
            void changeFatalPowerState(u32 value) { mFatalPowerState = value; }

        private:
            u32     mPowerState;
            u32     mPowerType;
            BOOL    mPoweringOff;

            u32     mFatalPowerState;
    };
}

#endif // IPL_RESET_HANDLER_H


