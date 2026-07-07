#include "scene/board/iplBoardSD.h"

#include "iplSystem.h"

#include <revolution/cdb.h>

namespace ipl {
    namespace scene {
        BoardSD::BoardSD() : mState(STATE_PREPARE), mSDState(SD_STATE_NONE) {
        }

        void BoardSD::update() {
            SDVFWorker* sdWorker = System::getCdbManager()->getSDWorker();

            switch (mState) {
                case STATE_PREPARE: {
                    if (!sdWorker->is_working()) {
                        switch (sdWorker->get_sd_state()) {
                            case SDVFWorker::SD_STATE_INSERTED: {
                                mSDState = SD_STATE_INSERTED;
                                sdWorker->mount_sd_async();
                                break;
                            }
                            case SDVFWorker::SD_STATE_AVAILABLE: {
                                mSDState = SD_STATE_INSERTED;
                                sdWorker->prepare_cdb_backup_to_sd_async();
                                mState = STATE_PREPARE_RESULT;
                                break;
                            }
                            case SDVFWorker::SD_STATE_BROKEN:
                            case SDVFWorker::SD_STATE_ERROR: {
                                mSDState = SD_STATE_INSERTED;
                                break;
                            }
                            case SDVFWorker::SD_STATE_EJECTED: {
                                mSDState = SD_STATE_EJECTED;
                                break;
                            }
                            default: {
                                break;
                            }
                        }
                    }
                    break;
                }
                case STATE_PREPARE_RESULT: {
                    mSDState = SD_STATE_INSERTED;
                    if (!sdWorker->is_working()) {
                        error_handling(sdWorker->get_async_result());
                        if (sdWorker->get_async_result() == SDVFWorker::RESULT_SUCCESS) {
                            mState = STATE_CLEANUP;
                        } else {
                            sdWorker->mount_sd_async();
                            mState = STATE_PREPARE;
                        }
                    }
                    break;
                }
                case STATE_CLEANUP: {
                    mSDState = SD_STATE_INSERTED;
                    if (CDBIsSDAvailable() != TRUE) {
                        sdWorker->cleanup_cdb_backup_to_sd_async();
                        mState = STATE_CLEANUP_RESULT;
                    }
                    break;
                }
                case STATE_CLEANUP_RESULT: {
                    if (!sdWorker->is_working()) {
                        error_handling(sdWorker->get_async_result());
                        sdWorker->mount_sd_async();
                        mState = STATE_PREPARE;
                    }
                    break;
                }
            }
        }

        void BoardSD::error_handling(int code) {
            switch (code) {
                // SD Card errors are considered corrupted system files??
                case SDVFWorker::RESULT_FA_ERROR: {
                    IPLErrorLogAndDisplay(MESG_ERR_FILE, "SDVFWorker", SDVFWorker::RESULT_FA_ERROR, 117);
                    break;
                }
                // Unused code (likely left over from it's base, NandSDWorker)
                case SDVFWorker::RESULT_NAND_CORRUPT: {
                    IPLErrorDisplay(MESG_ERR_NAND);
                    break;
                }
            }
        }
    }  // namespace scene
}  // namespace ipl
