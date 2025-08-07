#include "system/iplResetHandler.h"

#include <decomp.h>

#include <revolution.h>

#include "iplSystem.h"
#include "system/iplTVRCManager.h"

namespace ipl {
    ResetHandler::ResetHandler(EGG::Heap* heap) {
        mUpdateSatate = /*RESET_STATE_SHUTDOWN_LIB;*/ mState = STATE_WAIT_REQUEST;
        mbReturnToMenu = FALSE;
        mFatalResetState = FATAL_RESET_STATE_NONE;
        // Prepare the fade out.
        System::getResetFader()->setStatus(EGG::Fader::STATUS_PREPARE_OUT);
        System::getResetFader()->calc();

        // Set the callbacks.
        OSSetResetCallback(cbReset);
        OSSetPowerCallback(cbPowerOff);
    }

    void ResetHandler::cbReset() {
        if (System::getResetHandler()->mState == STATE_WAIT_REQUEST) {
            System::getResetHandler()->mState = STATE_RESTART;
        }
    }

    void ResetHandler::cbPowerOff() {
        if (System::getResetHandler()->mState == STATE_WAIT_REQUEST) {
            System::getResetHandler()->mState = STATE_SHUTDOWN;
        }
    }

    void ResetHandler::reset() {
        if (mState == STATE_WAIT_REQUEST) {
            mState = STATE_RESTART;
        }
    }

    void ResetHandler::check() {
        if (mState != STATE_WAIT_REQUEST) {
            System::reset_run();
        }
    }

    void ResetHandler::update() {
        if (mState != STATE_WAIT_REQUEST) {
            switch (mUpdateSatate) {
                // Shutdown Library
                case RESET_STATE_SHUTDOWN_LIB: {
                    if (TVRCManager::getHandle() != NULL) {
                        TVRCManager::getHandle()->resetProcessAsync(TRUE);
                    }

                    if ((System::getSceneManager() == NULL || System::getSceneManager()->isResetAcceptable())
                    && (System::getSaveData() == NULL || System::getSaveData()->isResetAcceptable())
                    && System::isResetAcceptable()) {
                        if (TVRCManager::getHandle() == NULL || TVRCManager::getHandle()->waitResetProcessCompleted()) {
                            if (System::getPostmanManager()->IsUnknown()
                            || (System::getSceneManager() != NULL && System::getSceneManager()->getScene(scene::SCENE_ADDRESS) != NULL)) {
                                if (System::getNwc24Manager() != NULL && !System::isNandFull()) {
                                    if (System::createdAfterAndLibMgr() && !System::getNwc24Manager()->isUnk0xA31()) {
                                        return;
                                    }
                                }

                                WPADGetStatus();

                                if (System::getResetFader()->fadeOut()
                                || System::getResetFader()->getStatus() == EGG::Fader::STATUS_PREPARE_IN) {
                                #ifdef VERSION_43E
                                    if (System::getMasterController()->down(controller::REVO_BTN_DOWN)) {
                                        SCSetEuRgb60Mode(FALSE);
                                        SCSetProgressiveMode(FALSE);
                                        SCFlush();
                                    }
                                #endif

                                    mUpdateSatate = RESET_STATE_SHUTDOWN_VIDEO;

                                    if (System::getSceneManager() != NULL) {
                                        System::getSceneManager()->startResetting();
                                    }

                                    switch (mState) {
                                        case STATE_RESTART: {
                                            __WPADReconnect(TRUE);
                                            break;
                                        }
                                        case STATE_SHUTDOWN: {
                                            break;
                                        }
                                    }
                                }
                            }
                        }
                    }
                    break;
                }
                // Shutdown video
                case RESET_STATE_SHUTDOWN_VIDEO: {
                    if (System::getResetFader()->getStatus() == EGG::Fader::STATUS_PREPARE_IN
                    && (System::getSceneManager() == NULL || System::getSceneManager()->isResetProcessDone())) {
                        mUpdateSatate = RESET_STATE_SHUTDOWN_SYSTEM;
                        VISetBlack(TRUE);
                        VIFlush();
                    }
                    break;
                }
                // Shutdown System
                case RESET_STATE_SHUTDOWN_SYSTEM: {
                    switch (mState) {
                        case STATE_RESTART: {
                            if (WPADGetStatus() == 0) {
                                VISetBlack(TRUE);
                                VIFlush();
                                VIWaitForRetrace();
                                VIWaitForRetrace();
                                if (mbReturnToMenu) {
                                    OSReturnToMenu();
                                }
                                else {
                                    OSRebootSystem();
                                }
                            }
                            break;
                        }
                        case STATE_SHUTDOWN: {
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
        }
    }

    void ResetHandler::cbFatalReset() {
        // stub
    }

    void ResetHandler::cbFatalPowerOff() {
        if (System::getResetHandler()->mFatalResetState == FATAL_RESET_STATE_NONE) {
            System::getResetHandler()->mFatalResetState = FATAL_RESET_STATE_INIT;
        }
    }

    void ResetHandler::setFatalResetCallback() {
        OSSetResetCallback(cbFatalReset);
        OSSetPowerCallback(cbFatalPowerOff);
    }

    void ResetHandler::fatalUpdate() {
        switch (mFatalResetState) {
            // Fade out
            case FATAL_RESET_STATE_FADE: {
                if (System::getResetFader()->fadeOut()) {
                    System::getResetFader()->fadeOut();

                    mFatalResetState = FATAL_RESET_STATE_VIDEO;
                }
                break;
            }
            // Shutdown the video
            case FATAL_RESET_STATE_VIDEO: {
                if (System::getResetFader()->getStatus() == EGG::Fader::STATUS_PREPARE_IN) {
                    VISetBlack(TRUE);
                    VIFlush();

                    mFatalResetState = FATAL_RESET_STATE_SYSTEM;
                }
                break;
            }
            // Shutdown the system
            case FATAL_RESET_STATE_SYSTEM: {
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
