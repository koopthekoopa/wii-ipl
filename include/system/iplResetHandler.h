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
            ResetHandler(EGG::Heap* pHeap);

            void reset();
            void check();

            void update();
            void fatalUpdate();

            u32 getType() { return mType; }
            u32 getFatalState() { return mFatalState; }

            void changeType(u32 value) { mType = value; }
            void changeFatalState(u32 value) { mFatalState = value; }

        private:
            static void cbReset();
            static void cbPowerOff();

            static void cbFatalReset();
            static void cbFatalPowerOff();

            void setFatalResetCallback();

            u32     mState;
            u32     mType;
            BOOL    mPoweringOff;

            u32     mFatalState;
    };
}

#endif // IPL_RESET_HANDLER_H


