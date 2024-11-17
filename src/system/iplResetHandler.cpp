#define UNIT_DOESNT_MATCH

#include "system/iplResetHandler.h"

#include <decomp.h>

#include <revolution.h>

#include "system/iplSystem.h"
#include "system/iplTVRCManager.h"

namespace ipl {
    ResetHandler::ResetHandler(EGG::Heap* pHeap) :
    mType(0), // ?
    mState(0),
    mbReturnToMenu(FALSE),
    mFatalState(FATAL_STATE_NONE) {
        
        #pragma unused(pHeap)

        // Prepare the fade out.
        System::getResetFader()->setStatus(EGG::Fader::STATUS_PREPARE_OUT);
        System::getResetFader()->calc();

        // Set the callbacks.
        OSSetResetCallback((OSResetCallback)cbReset);
        OSSetPowerCallback((OSPowerCallback)cbPowerOff);
    }
    void ResetHandler::cbReset() {
        if (System::getResetHandler()->getType() == 0) {
            System::getResetHandler()->changeType(1);
        }
    }

    void ResetHandler::cbPowerOff() {
        if (System::getResetHandler()->getType() == 0) {
            System::getResetHandler()->changeType(2);
        }
    }

    void ResetHandler::reset() {
        if (mType == 0) {
            mType = 1;
        }
    }

    void ResetHandler::check() {
        if (mType != 0) {
            System::reset_run();
        }
    }

    void ResetHandler::update() {
        if (mType != 0) {
            switch(mState) {
                case 0: {
                    // TODO!!...
                    break;
                }
            }
        }
    }

    void ResetHandler::cbFatalReset() {
        // stub
    }

    void ResetHandler::cbFatalPowerOff() {
        if (System::getResetHandler()->getFatalState() == FATAL_STATE_NONE) {
            System::getResetHandler()->changeFatalState(FATAL_STATE_INIT);
        }
    }

    void ResetHandler::setFatalResetCallback() {
        OSSetResetCallback(cbFatalReset);
        OSSetPowerCallback(cbFatalPowerOff);
    }

    void ResetHandler::fatalUpdate() {
        switch(mFatalState) {
            // Fade out
            case FATAL_STATE_FADE: {
                if (System::getResetFader()->fadeOut()) {
                    System::getResetFader()->fadeOut();

                    mFatalState = FATAL_STATE_VIDEO;
                }
                break;
            }
            // Shutdown the video
            case FATAL_STATE_VIDEO: {
                if (System::getResetFader()->getStatus() == EGG::Fader::STATUS_PREPARE_IN) {
                    VISetBlack(TRUE);
                    VIFlush();

                    mFatalState = FATAL_STATE_SYSTEM;
                }
                break;
            }
            // Shutdown the system
            case FATAL_STATE_SYSTEM: {
                // Shutdown the video... again?
                VISetBlack(TRUE);
                VIFlush();

                VIWaitForRetrace();
                VIWaitForRetrace();

                OSShutdownSystem();
                break;
            }
        }
    }
}


