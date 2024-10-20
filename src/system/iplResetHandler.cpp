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
    ResetHandler::ResetHandler(EGG::Heap* pHeap) :
    mType(0), // ?
    mState(0),
    mToMenu(FALSE),
    mFatalState(FATAL_STATE_NONE) {
        
        #pragma unused(pHeap)

        // Prepare the fade out.
        System::getResetFader()->setStatus(EGG::Fader::STATUS_PREPARE_OUT);
        System::getResetFader()->calc();

        // Set the callbacks.
        OSSetResetCallback((OSResetCallback)cbReset);
        OSSetPowerCallback((OSPowerCallback)cbPowerOff);
    }

    /**
     * @note Address: 0x81356890 (4.3U)
     * @note Size: 0x24
     */
    void ResetHandler::cbReset() {
        if (System::getResetHandler()->getType() == 0) {
            System::getResetHandler()->changeType(1);
        }
    }

    /**
     * @note Address: 0x813568B4 (4.3U)
     * @note Size: 0x24
     */
    void ResetHandler::cbPowerOff() {
        if (System::getResetHandler()->getType() == 0) {
            System::getResetHandler()->changeType(2);
        }
    }

    /**
     * @note Address: 0x813568D8 (4.3U)
     * @note Size: 0x18
     */
    void ResetHandler::reset() {
        if (mType == 0) {
            mType = 1;
        }
    }

    /**
     * @note Address: 0x813568F0 (4.3U)
     * @note Size: 0x14
     */
    void ResetHandler::check() {
        if (mType != 0) {
            System::reset_run();
        }
    }

    /**
     * @note Address: 0x81356904 (4.3U)
     * @note Size: 0x2FC
     */
    void ResetHandler::update() {
        if (mType != 0) {
            switch(mState) {
                case 0: {
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
        if (System::getResetHandler()->getFatalState() == FATAL_STATE_NONE) {
            System::getResetHandler()->changeFatalState(FATAL_STATE_INIT);
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


