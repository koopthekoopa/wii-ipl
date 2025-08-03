#include "system/iplResetHandler.h"

#include <decomp.h>

#include <revolution.h>

#include "iplSystem.h"
#include "system/iplTVRCManager.h"

namespace ipl {
    ResetHandler::ResetHandler(EGG::Heap* heap) {
        mState = /*STATE_SHUTDOWN_LIB;*/ mType = TYPE_INVALID;
        mbReturnToMenu = FALSE;
        mFatalState = FATAL_STATE_NONE;
        // Prepare the fade out.
        System::getResetFader()->setStatus(EGG::Fader::STATUS_PREPARE_OUT);
        System::getResetFader()->calc();

        // Set the callbacks.
        OSSetResetCallback(cbReset);
        OSSetPowerCallback(cbPowerOff);
    }

    void ResetHandler::cbReset() {
        if (System::getResetHandler()->getType() == TYPE_INVALID) {
            System::getResetHandler()->changeType(TYPE_RESTART);
        }
    }

    void ResetHandler::cbPowerOff() {
        if (System::getResetHandler()->getType() == TYPE_INVALID) {
            System::getResetHandler()->changeType(TYPE_SHUTDOWN);
        }
    }

    void ResetHandler::reset() {
        if (mType == TYPE_INVALID) {
            mType = TYPE_RESTART;
        }
    }

    void ResetHandler::check() {
        if (mType != TYPE_INVALID) {
            System::reset_run();
        }
    }

    void ResetHandler::update() {
        if (mType != TYPE_INVALID) {
            switch (mState) {
                // Shutdown Library
                case STATE_SHUTDOWN_LIB: {
                    if (TVRCManager::getHandle() != NULL) {
                        TVRCManager::getHandle()->resetProcessAsync(TRUE);
                    }

                    if ((System::getSceneManager() == NULL || System::getSceneManager()->isResetAcceptable())
                    && (System::getSaveData() == NULL || System::getSaveData()->isResetAcceptable())
                    && System::isResetAcceptable()) {
                        if (TVRCManager::getHandle() == NULL || TVRCManager::getHandle()->waitResetProcessCompleted()) {
                            if (System::getPostmanManager()->Running()
                            || (System::getSceneManager() != NULL && System::getSceneManager()->getScene(scene::SCENE_ADDRESS) != NULL)) {
                                if (System::getNwc24Manager() != NULL && !System::isNandFull()) {
                                    if (System::unkBool() && !System::getNwc24Manager()->isUnk0xA31()) {
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

                                    mState = STATE_SHUTDOWN_VIDEO;

                                    if (System::getSceneManager() != NULL) {
                                        System::getSceneManager()->startResetting();
                                    }

                                    switch (mType) {
                                        case TYPE_RESTART: {
                                            __WPADReconnect(TRUE);
                                            break;
                                        }
                                        case TYPE_SHUTDOWN: {
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
                case STATE_SHUTDOWN_VIDEO: {
                    if (System::getResetFader()->getStatus() == EGG::Fader::STATUS_PREPARE_IN
                    && (System::getSceneManager() == NULL || System::getSceneManager()->isResetProcessDone())) {
                        mState = STATE_SHUTDOWN_SYSTEM;
                        VISetBlack(TRUE);
                        VIFlush();
                    }
                    break;
                }
                // Shutdown System
                case STATE_SHUTDOWN_SYSTEM: {
                    switch (mType) {
                        case TYPE_RESTART: {
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
                        case TYPE_SHUTDOWN: {
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
        if (System::getResetHandler()->mFatalState == FATAL_STATE_NONE) {
            System::getResetHandler()->mFatalState = FATAL_STATE_INIT;
        }
    }

    void ResetHandler::setFatalResetCallback() {
        OSSetResetCallback(cbFatalReset);
        OSSetPowerCallback(cbFatalPowerOff);
    }

    void ResetHandler::fatalUpdate() {
        switch (mFatalState) {
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
