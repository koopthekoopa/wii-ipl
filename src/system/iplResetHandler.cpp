#define UNIT_DOESNT_MATCH

#include "system/iplResetHandler.h"

#include <decomp.h>

#include <revolution.h>

#include "system/iplSystem.h"
#include "system/iplTVRCManager.h"

namespace ipl {
    /**
     * @note Address: 0x813567FC (4.3U)
     * @note Size: 0x94
     */
    ResetHandler::ResetHandler(EGG::Heap* pHeap) {
        #pragma unused(pHeap)
        mPowerType = 0;
        mPowerState = 0;
        mPoweringOff = FALSE;
        mFatalPowerState = 0;

        // Prepare the fade out.
        System::getArg()->getFader()->setStatus(EGG::Fader::STATUS_PREPARE_OUT);
        System::getArg()->getFader()->calc();

        // Set the callbacks.
        OSSetResetCallback((OSResetCallback)cbReset);
        OSSetPowerCallback((OSPowerCallback)cbPowerOff);
    }

    /**
     * @note Address: 0x81356890 (4.3U)
     * @note Size: 0x24
     */
    void ResetHandler::cbReset() {
        if (System::getArg()->getResetHandler()->getPowerType() == 0) {
            System::getArg()->getResetHandler()->changePowerType(1);
        }
    }

    /**
     * @note Address: 0x813568B4 (4.3U)
     * @note Size: 0x24
     */
    void ResetHandler::cbPowerOff() {
        if (System::getArg()->getResetHandler()->getPowerType() == 0) {
            System::getArg()->getResetHandler()->changePowerType(2);
        }
    }

    /**
     * @note Address: 0x813568D8 (4.3U)
     * @note Size: 0x18
     */
    void ResetHandler::reset() {
        if (mPowerType == 0) {
            mPowerType = 1;
        }
    }

    /**
     * @note Address: 0x813568F0 (4.3U)
     * @note Size: 0x14
     */
    void ResetHandler::check() {
        if (mPowerType != 0) {
            System::reset_run();
        }
    }

    /**
     * @note Address: 0x81356904 (4.3U)
     * @note Size: 0x2FC
     */
    void ResetHandler::update() {
        if (mPowerType != 0) {
            switch(mPowerState) {
                case 0: {
                    // To be matched...
                    break;
                }
            }
        }
    }

    /**
     * @note Address: 0x81356C00 (4.3U)
     * @note Size: 0x4
     */
    void ResetHandler::cbFatalReset() {
        // stub
    }

    /**
     * @note Address: 0x81356C04 (4.3U)
     * @note Size: 0x24
     */
    void ResetHandler::cbFatalPowerOff() {
        if (System::getArg()->getResetHandler()->getFatalPowerState() == FATAL_STATE_SHUTDOWN_NONE) {
            System::getArg()->getResetHandler()->changeFatalPowerState(FATAL_STATE_SHUTDOWN_FADE);
        }
    }

    /**
     * @note Address: 0x81356C28 (4.3U)
     * @note Size: 0x34
     */
    void ResetHandler::setFatalResetCallback() {
        OSSetResetCallback(cbFatalReset);
        OSSetPowerCallback(cbFatalPowerOff);
    }

    /**
     * @note Address: 0x81356C5C (4.3U)
     * @note Size: 0xF0
     */
    void ResetHandler::fatalUpdate() {
        switch(mFatalPowerState) {
            case FATAL_STATE_SHUTDOWN_FADE: {   // Fade out
                if (System::getArg()->getFader()->fadeOut()) {
                    System::getArg()->getFader()->fadeOut();

                    mFatalPowerState = FATAL_STATE_SHUTDOWN_VIDEO;
                }
                break;
            }
            case FATAL_STATE_SHUTDOWN_VIDEO: {  // Shutdown the video when it is done fading out
                if (System::getArg()->getFader()->getStatus() == EGG::Fader::STATUS_PREPARE_IN) {
                    // no need
                    VISetBlack(TRUE);
                    VIFlush();

                    mFatalPowerState = FATAL_STATE_SHUTDOWN_OS;
                }
                break;
            }
            case FATAL_STATE_SHUTDOWN_OS: {     // Shutdown the system
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


