#include "scene/channelEdit/iplNandSDCardManager.h"
#include "scene/channelEdit/iplChannelEdit.h"

#include "titledb.h"

// actually needed to match.
#pragma sym on

namespace ipl {
    namespace scene {
#define COMMAND_FN(FUNCTION_HEADER, TAG, APP_BOX, SAVE_BOX, WII_TITLE_ID, SD_TITLE_ID)                                                               \
    void NandSDCardManager::FUNCTION_HEADER {                                                                                                        \
        Command cmd;                                                                                                                                 \
        cmd.tag = TAG;                                                                                                                               \
        cmd.chanAppBox = APP_BOX;                                                                                                                    \
        cmd.savedataBox = SAVE_BOX;                                                                                                                  \
        cmd.wiiTitleId = WII_TITLE_ID;                                                                                                               \
        cmd.sdTitleId = SD_TITLE_ID;                                                                                                                 \
        mCmdQueue.push(cmd);                                                                                                                         \
    }

#define GATED_STATE(FN_NAME, COND, THEN)                                                                                                             \
    void FN_NAME() {                                                                                                                                 \
        if (!(COND))                                                                                                                                 \
            return;                                                                                                                                  \
        THEN;                                                                                                                                        \
    }

        NandSDCardManager::NandSDCardManager(Mode mode)
            : mState(STATE_INIT), mMode(mode), mpWorker(NULL), mpWorkerWorkBuf(NULL), mpWorkerDataBuf(NULL), mpNandTitleIds(NULL), mpSDTitleIds(NULL),
              mThumbnails(), mBanners(), mpActiveChanAppBox(NULL), mpActiveThumbnail(NULL), mpActiveSavedataBox(NULL), mpActiveBanner(NULL),
              mNandBlocksFree(-1), mSDBlocksFree(-1), mbDisableThumbFetch(false), mTmpTitleId(0), unk_0xE87A0(false) {
            mpWorker = new (System::getMem2App()) NandSDWorker();
            mpWorkerWorkBuf = System::getMem2App()->alloc(0x3ea60, 0x40);

            if (mMode == NAND_MODE_APPS) {
                int heapSize = MEMCalcHeapSizeForUnitHeap(0x19620, 0x60, 0x20);
                mpWorkerDataBuf = System::getMem2App()->alloc(heapSize + 0x40000, 0x40);
            } else {
                int heapSize = MEMCalcHeapSizeForUnitHeap(0xf0c0, 0x5a, 0x20);
                mpWorkerDataBuf = System::getMem2App()->alloc(heapSize + 0x40000, 0x40);
            }

            nw4r::ut::List_Init(&mNandListingList, 0xc);
            nw4r::ut::List_Init(&mSDListingList, 0xc);

            for (int i = 0; i < 15; i++) {
                mThumbnails[i].init();
                mBanners[i].init();
            }
        }

        NandSDCardManager::~NandSDCardManager() {
            System::getMem2App()->free(mpWorkerWorkBuf);
            System::getMem2App()->free(mpWorkerDataBuf);
            delete mpWorker;

            TitleListing* listing;

            listing = NULL;
            while (listing = (TitleListing*)nw4r::ut::List_GetNext(&mNandListingList, listing), listing != NULL) {
                if (listing == NULL) {
                    break;
                }
                nw4r::ut::List_Remove(&mNandListingList, listing);
                delete listing;
                listing = NULL;
            }

            listing = NULL;
            while (listing = (TitleListing*)nw4r::ut::List_GetNext(&mSDListingList, listing), listing != NULL) {
                if (listing == NULL) {
                    break;
                }
                nw4r::ut::List_Remove(&mSDListingList, listing);
                delete listing;
                listing = NULL;
            }
        }

        void NandSDCardManager::calc() {
            switch (mState) {
                case STATE_INIT: {
                    on_init();
                    break;
                }
                case STATE_CHECK_EXIST: {
                    on_check_exist();
                    break;
                }
                case STATE_STARTUP: {
                    on_startup();
                    break;
                }
                case STATE_MOUNT_SD: {
                    on_mount_sd();
                    break;
                }
                case STATE_LIST_NANDAPP: {
                    on_list_nandapp();
                    break;
                }
                case STATE_LIST_SDAPP: {
                    on_list_sdapp();
                    break;
                }
                case STATE_GET_NAND_FREE: {
                    on_get_nand_free();
                    break;
                }
                case STATE_GET_SD_FREE: {
                    on_get_sd_free();
                    break;
                }
                case STATE_NORMAL: {
                    on_normal();
                    break;
                }
                case STATE_TERMINATE: {
                    on_terminate();
                    break;
                }
                case STATE_COPY_NANDSAVE_TO_SD: {
                    on_copy_nandsave_to_sd();
                    break;
                }
                case STATE_COPY_SDSAVE_TO_NAND: {
                    on_copy_sdsave_to_nand();
                    break;
                }
                case STATE_COPY_NANDAPP_TO_SD: {
                    on_copy_nandapp_to_sd();
                    break;
                }
                case STATE_COPY_SDAPP_TO_NAND: {
                    on_copy_sdapp_to_nand();
                    break;
                }
                case STATE_DEL_NANDAPP: {
                    on_del_nandapp();
                    break;
                }
                case STATE_DEL_NANDSAVE: {
                    on_del_nandsave();
                    break;
                }
                case STATE_DEL_SDSAVE: {
                    on_del_sdsave();
                    break;
                }
                case STATE_DEL_SDAPP: {
                    on_del_sdapp();
                    break;
                }
                case STATE_GET_THUMBNAIL: {
                    on_get_thumbnail();
                    break;
                }
                case STATE_GET_THUMBNAIL_SIZE: {
                    on_get_thumbnail_size();
                    break;
                }
                case STATE_GET_WIIBANNER: {
                    on_get_wiibanner();
                    break;
                }
                case STATE_GET_WIIBANNER_SIZE: {
                    on_get_wiibanner_size();
                    break;
                }
                case STATE_GET_WIIBANNER_PERMS: {
                    on_get_wiibanner_perms();
                    break;
                }
                case STATE_SC_FLUSH: {
                    on_sc_flush();
                    break;
                }
                case STATE_CHANGE_NAND_APP_COUNT: {
                    on_change_nand_app_count();
                    break;
                }
                case STATE_MOVE_NANDAPP_TO_SD: {
                    on_move_nandapp_to_sd();
                    break;
                }
                case STATE_MOVE_SDAPP_TO_NAND: {
                    on_move_sdapp_to_nand();
                    break;
                }
                case STATE_MOVE_NANDSAVE_TO_SD: {
                    on_move_nandsave_to_sd();
                    break;
                }
                case STATE_MOVE_SDSAVE_TO_NAND: {
                    on_move_sdsave_to_nand();
                    break;
                }
                case STATE_CHECK_SD_TITLE_RESTORABLE: {
                    on_check_sd_title_restorable();
                    break;
                }
                default:
                    break;
            }
        }

        void NandSDCardManager::cmdGetThumbnail(ChanAppBox* box, int idx, bool isWiiNotSD) {
            GetThumbnailCmd thumbnailCmd;
            thumbnailCmd.channelBox = box;
            thumbnailCmd.savedataBox = NULL;
            thumbnailCmd.idx = idx;
            thumbnailCmd.isWii = isWiiNotSD;

            mThumbCmdQueue.push(thumbnailCmd);
        }

        void NandSDCardManager::cmdGetWiiBanner(SavedataBox* box, int idx, bool isWiiNotSD) {
            GetThumbnailCmd thumbnailCmd;
            thumbnailCmd.channelBox = NULL;
            thumbnailCmd.savedataBox = box;
            thumbnailCmd.idx = idx;
            thumbnailCmd.isWii = isWiiNotSD;

            mThumbCmdQueue.push(thumbnailCmd);
        }

        GATED_STATE(NandSDCardManager::on_init, System::isReceiveScheduleStopped(), {
            if (mMode == NAND_MODE_APPS) {
                mpWorker->create(mpWorkerWorkBuf, NULL, mpWorkerDataBuf, 18);
            } else {
                mpWorker->create(mpWorkerWorkBuf, mpWorkerDataBuf, NULL, 18);
            }
            mpWorker->startup_async();
            mState = STATE_STARTUP;
        })
        GATED_STATE(NandSDCardManager::on_startup, !mpWorker->is_working(), {
            if (mMode == NAND_MODE_APPS) {
                mpNandTitleIds = new (System::getMem2App(), 4) ESTitleId[mpWorker->get_nand_app_num()];
                mpWorker->list_nand_app_async(mpNandTitleIds);
            } else {
                mpNandTitleIds = new (System::getMem2App(), 4) ESTitleId[mpWorker->get_nand_save_num()];
                mpWorker->list_nand_save_async(mpNandTitleIds);
            }
            mState = STATE_LIST_NANDAPP;
        })
        GATED_STATE(NandSDCardManager::on_check_exist, !mpWorker->is_working(), mState = STATE_NORMAL)
        GATED_STATE(NandSDCardManager::on_mount_sd, !mpWorker->is_working(), mState = STATE_NORMAL)
        GATED_STATE(NandSDCardManager::on_list_nandapp, !mpWorker->is_working(), {
            TitleListing* listing = NULL;
            while (listing = (TitleListing*)nw4r::ut::List_GetNext(&mNandListingList, listing), listing != NULL) {
                nw4r::ut::List_Remove(&mNandListingList, listing);
                delete listing;
                listing = NULL;
            }

            mTmpTitleId = SCGetTmpTitleID();
            if (mMode == NAND_MODE_APPS) {
                for (int i = 0; i < mpWorker->get_nand_app_num(); i++) {
                    if (mTmpTitleId != 0 && mpNandTitleIds[i] == mTmpTitleId) {
                        nw4r::ut::List_Prepend(&mNandListingList, new (System::getMem2App(), 4) TitleListing(mpNandTitleIds[i]));
                    } else {
                        nw4r::ut::List_Append(&mNandListingList, new (System::getMem2App(), 4) TitleListing(mpNandTitleIds[i]));
                    }
                }
            } else {
                for (int i = 0; i < mpWorker->get_nand_save_num(); i++) {
                    nw4r::ut::List_Append(&mNandListingList, new (System::getMem2App(), 4) TitleListing(mpNandTitleIds[i]));
                }
            }
            delete[] mpNandTitleIds;
            mpWorker->get_nand_user_free_area_async();
            mState = STATE_GET_NAND_FREE;
        })
        GATED_STATE(NandSDCardManager::on_get_nand_free, !mpWorker->is_working(), {
            mNandBlocksFree = (f32)floor((f32)getAsyncResult() / 128 / 1024);
            mState = STATE_NORMAL;
        })
        GATED_STATE(NandSDCardManager::on_get_sd_free, !mpWorker->is_working(), {
            mSDBlocksFree = (f32)floor((f32)mSDBytesFree / 128 / 1024);
            mState = STATE_NORMAL;
        })
        GATED_STATE(NandSDCardManager::on_list_sdapp, !mpWorker->is_working(), {
            u8* buf = NULL;
            while (buf = (u8*)nw4r::ut::List_GetNext(&mSDListingList, buf), buf != NULL) {
                nw4r::ut::List_Remove(&mSDListingList, buf);
                delete buf;
                buf = NULL;
            }

            if (mMode == NAND_MODE_APPS) {
                for (int i = 0; i < mpWorker->get_sd_app_num(); i++) {
                    nw4r::ut::List_Append(&mSDListingList, new (System::getMem2App(), 4) TitleListing(mpSDTitleIds[i]));
                }
            } else {
                for (int i = 0; i < mpWorker->get_sd_save_num(); i++) {
                    nw4r::ut::List_Append(&mSDListingList, new (System::getMem2App(), 4) TitleListing(mpSDTitleIds[i]));
                }
            }
            delete[] mpSDTitleIds;

            if (mpWorker->get_sd_state() == 6) {
                mpWorker->get_sd_free_area_async(&mSDBytesFree);
                mState = STATE_GET_SD_FREE;

            } else {
                mState = STATE_NORMAL;
            }
        })
        GATED_STATE(NandSDCardManager::on_normal, true, {
            if (mCmdQueue.current != 0) {
                Command cmd = mCmdQueue.get_popped_item();

                switch (cmd.tag) {
                    case CMD_NUL: {
                        break;
                    }
                    case CMD_TERMINATE: {
                        mpWorker->terminate_async();
                        mState = STATE_TERMINATE;
                        break;
                    }
                    case CMD_MOUNT_SD: {
                        mpWorker->mount_sd_async();
                        mState = STATE_MOUNT_SD;
                        break;
                    }
                    case CMD_FORMAT_SD: {
                        mpWorker->format_sd_async();
                        mState = STATE_CHECK_EXIST;
                        break;
                    }
                    case CMD_GET_NAND_FREE: {
                        mpWorker->get_nand_user_free_area_async();
                        mState = STATE_GET_NAND_FREE;
                        break;
                    }
                    case CMD_GET_SD_FREE: {
                        mpWorker->get_sd_free_area_async(&mSDBytesFree);
                        mState = STATE_GET_SD_FREE;
                        break;
                    }
                    case CMD_COPY_NANDSAVE_TO_SD: {
                        mpWorker->copy_nand_save_to_sd_async(cmd.wiiTitleId);
                        mState = STATE_COPY_NANDSAVE_TO_SD;
                        break;
                    }
                    case CMD_COPY_SDSAVE_TO_NAND: {
                        mpWorker->copy_sd_save_to_nand_async(cmd.sdTitleId);
                        mState = STATE_COPY_SDSAVE_TO_NAND;
                        break;
                    }
                    case CMD_COPY_NANDAPP_TO_SD: {
                        mpWorker->copy_nand_app_to_sd_async(cmd.wiiTitleId);
                        mState = STATE_COPY_NANDAPP_TO_SD;
                        break;
                    }
                    case CMD_COPY_SDAPP_TO_NAND: {
                        if (cmd.sdTitleId == (ESTitleId32)mTmpTitleId) {
                            unk_0xE87A0 = false;
                            mpWorker->check_sd_title_restorable_async(cmd.sdTitleId);
                            mState = STATE_CHECK_SD_TITLE_RESTORABLE;
                        } else {
                            mpWorker->copy_sd_app_to_nand_async(cmd.sdTitleId, 0);
                            mState = STATE_COPY_SDAPP_TO_NAND;
                        }
                        break;
                    }
                    case CMD_DEL_NANDAPP: {
                        if ((cmd.wiiTitleId & 0xFFFFFFFFFFFFFF00) == TITLE_PHOTO_2_CHECK || cmd.wiiTitleId == mTmpTitleId) {
                            mpActiveChanAppBox = cmd.chanAppBox;
                            mpWorker->delete_nand_app_async(cmd.wiiTitleId, true);
                            mState = STATE_DEL_NANDAPP;
                        } else {
                            mpActiveChanAppBox = cmd.chanAppBox;
                            mpWorker->delete_nand_app_async(cmd.wiiTitleId, false);
                            mState = STATE_DEL_NANDAPP;
                        }
                        break;
                    }
                    case CMD_DEL_SDAPP: {
                        mpActiveChanAppBox = cmd.chanAppBox;
                        mpWorker->delete_sd_app_async(cmd.sdTitleId);
                        mState = STATE_DEL_SDAPP;
                        break;
                    }
                    case CMD_DEL_NANDSAVE: {
                        mpActiveSavedataBox = cmd.savedataBox;
                        mpWorker->delete_nand_save_async(cmd.wiiTitleId);
                        mState = STATE_DEL_NANDSAVE;
                        break;
                    }
                    case CMD_DEL_SDSAVE: {
                        mpActiveSavedataBox = cmd.savedataBox;
                        mpWorker->delete_sd_save_async(cmd.sdTitleId);
                        mState = STATE_DEL_SDSAVE;
                        break;
                    }
                    case CMD_CLEAN_QUEUE: {
                        clean_command_queue();
                        break;
                    }
                    case CMD_LIST_NAND: {
                        if (mMode == NAND_MODE_APPS) {
                            mpNandTitleIds = new (System::getMem2App(), -32) ESTitleId[mpWorker->get_nand_app_num()];
                            mpWorker->list_nand_app_async(mpNandTitleIds);
                            mState = STATE_LIST_NANDAPP;
                        } else {
                            mpNandTitleIds = new (System::getMem2App(), -32) ESTitleId[mpWorker->get_nand_save_num()];
                            mpWorker->list_nand_save_async(mpNandTitleIds);
                            mState = STATE_LIST_NANDAPP;
                        }
                        break;
                    }
                    case CMD_LIST_SD: {
                        if (mpWorker->get_sd_state() == NandSDWorker::SD_STATE_READY) {
                            if (mMode == NAND_MODE_APPS) {
                                mpSDTitleIds = new (System::getMem2App(), -32) ESTitleId32[mpWorker->get_sd_app_num()];
                                mpWorker->list_sd_app_async(mpSDTitleIds);
                                mState = STATE_LIST_SDAPP;
                            } else {
                                mpSDTitleIds = new (System::getMem2App(), -32) ESTitleId32[mpWorker->get_sd_save_num()];
                                mpWorker->list_sd_save_async(mpSDTitleIds);
                                mState = STATE_LIST_SDAPP;
                            }
                        } else {
                            mState = STATE_NORMAL;
                        }
                        break;
                    }
                    case CMD_NAND_APP_EXIST: {
                        mpWorker->both_app_exist_async(cmd.sdTitleId);
                        mState = STATE_CHECK_EXIST;
                        break;
                    }
                    case CMD_NAND_SAVE_EXIST: {
                        mpWorker->nand_save_exist_lo_async(cmd.sdTitleId);
                        mState = STATE_CHECK_EXIST;
                        break;
                    }
                    case CMD_SD_APP_EXIST: {
                        mpWorker->sd_app_exist_async(cmd.sdTitleId);
                        mState = STATE_CHECK_EXIST;
                        break;
                    }
                    case CMD_SD_SAVE_EXIST: {
                        mpWorker->sd_save_exist_async(cmd.sdTitleId);
                        mState = STATE_CHECK_EXIST;
                        break;
                    }
                    case CMD_MOVE_NANDAPP_TO_SD: {
                        mpActiveChanAppBox = cmd.chanAppBox;
                        mpWorker->move_nand_app_to_sd_async(cmd.wiiTitleId);
                        mState = STATE_MOVE_NANDAPP_TO_SD;
                        break;
                    }
                    case CMD_MOVE_SDAPP_TO_NAND: {
                        if (cmd.sdTitleId == (ESTitleId32)mTmpTitleId) {
                            mpActiveChanAppBox = cmd.chanAppBox;
                            unk_0xE87A0 = true;
                            mpWorker->check_sd_title_restorable_async(cmd.sdTitleId);
                            mState = STATE_CHECK_SD_TITLE_RESTORABLE;
                        } else {
                            mpActiveChanAppBox = cmd.chanAppBox;
                            mpWorker->move_sd_app_to_nand_async(cmd.sdTitleId);
                            mState = STATE_MOVE_SDAPP_TO_NAND;
                        }
                        break;
                    }
                    case CMD_MOVE_NANDSAVE_TO_SD: {
                        mpActiveSavedataBox = cmd.savedataBox;
                        mpWorker->move_nand_save_to_sd_async(cmd.wiiTitleId);
                        mState = STATE_MOVE_NANDSAVE_TO_SD;
                        break;
                    }
                    case CMD_MOVE_SDSAVE_TO_NAND: {
                        mpActiveSavedataBox = cmd.savedataBox;
                        mpWorker->move_sd_save_to_nand_async(cmd.sdTitleId);
                        mState = STATE_MOVE_SDSAVE_TO_NAND;
                        break;
                    }
                    default: {
                        break;
                    }
                }

                mCmdQueue.pop();
            } else if (mThumbCmdQueue.current != 0) {
                if (mpWorker->is_working()) {
                    return;
                }

                if (mbDisableThumbFetch) {
                    return;
                }

                GetThumbnailCmd thumbnailCmd = mThumbCmdQueue.get_popped_item();
                if (mMode == NAND_MODE_APPS) {
                    get_thumbnail(thumbnailCmd);
                } else {
                    get_wiibanner(thumbnailCmd);
                }
                mThumbCmdQueue.pop();
            }
        })
        GATED_STATE(NandSDCardManager::on_terminate, mpWorker->is_terminated(), mState = STATE_STOPPED)
        GATED_STATE(NandSDCardManager::on_copy_nandsave_to_sd, !mpWorker->is_working(), mState = STATE_NORMAL)
        GATED_STATE(NandSDCardManager::on_copy_sdsave_to_nand, !mpWorker->is_working(), mState = STATE_NORMAL)
        GATED_STATE(NandSDCardManager::on_copy_nandapp_to_sd, !mpWorker->is_working(), mState = STATE_NORMAL)
        GATED_STATE(NandSDCardManager::on_copy_sdapp_to_nand, !mpWorker->is_working(), mState = STATE_NORMAL)
        GATED_STATE(NandSDCardManager::on_del_nandapp, !mpWorker->is_working(), {
            TitleListing* listing = NULL;
            while (listing = (TitleListing*)nw4r::ut::List_GetNext(&mNandListingList, listing), listing != NULL) {
                ESTitleId titleId = mpActiveChanAppBox->getThumbnail()->getWiiTitleId();
                if (titleId == listing->wiiTitleId) {
                    nw4r::ut::List_Remove(&mNandListingList, listing);
                    delete listing;
                    break;
                }
            }
            if (mpActiveChanAppBox->getThumbnail()->getMatchesTmpTitle()) {
                SCSetTmpTitleID(0);
                SCFlushAsync(NULL);
                mState = STATE_SC_FLUSH;
            } else {
                mState = STATE_NORMAL;
            }
        })
        GATED_STATE(NandSDCardManager::on_del_nandsave, !mpWorker->is_working(), {
            TitleListing* listing = NULL;
            while (listing = (TitleListing*)nw4r::ut::List_GetNext(&mNandListingList, listing), listing != NULL) {
                ESTitleId titleId = mpActiveSavedataBox->getBanner()->getWiiTitleId();
                if (titleId == listing->wiiTitleId) {
                    nw4r::ut::List_Remove(&mNandListingList, listing);
                    delete listing;
                    break;
                }
            }
            mState = STATE_NORMAL;
        })
        GATED_STATE(NandSDCardManager::on_del_sdsave, !mpWorker->is_working(), {
            TitleListing* listing = NULL;
            while (listing = (TitleListing*)nw4r::ut::List_GetNext(&mSDListingList, listing), listing != NULL) {
                u32 titleId = mpActiveSavedataBox->getBanner()->getSDTitleId();
                if (titleId == listing->sdTitleId) {
                    nw4r::ut::List_Remove(&mSDListingList, listing);
                    delete listing;
                    break;
                }
            }
            mState = STATE_NORMAL;
        })
        GATED_STATE(NandSDCardManager::on_del_sdapp, !mpWorker->is_working(), {
            TitleListing* listing = NULL;
            while (listing = (TitleListing*)nw4r::ut::List_GetNext(&mSDListingList, listing), listing != NULL) {
                u32 titleId = mpActiveChanAppBox->getThumbnail()->getSDTitleId();
                if (titleId == listing->sdTitleId) {
                    nw4r::ut::List_Remove(&mSDListingList, listing);
                    delete listing;
                    break;
                }
            }
            mState = STATE_NORMAL;
        })
        GATED_STATE(NandSDCardManager::on_get_thumbnail, !mpWorker->is_working(), {
            if (getAsyncResult() > NandSDWorker::RESULT_OK || getAsyncResult() == NandSDWorker::RESULT_BAD_FILE) {
                if (getAsyncResult() == NandSDWorker::RESULT_BAD_FILE) {
                    mpActiveThumbnail->setIsCorrupt(true);

                    nand::File* hatenaLayout = mpActiveChanAppBox->get_channel_edit()->getHatenaLayout();
                    OSReport("[SSK] HatenaLayout - %p\n", hatenaLayout);
                    memcpy(mpActiveThumbnail->getLytHeapBufRef(), hatenaLayout->getBuffer(), hatenaLayout->getLength());
                }

                if (mpActiveThumbnail->getWiiTitleId() != 0) {
                    ESTitleId titleId = mpActiveThumbnail->getWiiTitleId();
                    ESTitleId tmpId = mTmpTitleId;
                    if (titleId == tmpId) {
                        mpActiveThumbnail->setMatchesTmpTitle(true);

                        nand::File* tmpTitleLayout = mpActiveChanAppBox->get_channel_edit()->geTmpTitleLayout();
                        OSReport("NandSDCardManager: %016llx is tmp title.\n", mpActiveThumbnail->getWiiTitleId());
                        memcpy(mpActiveThumbnail->getLytHeapBufRef(), tmpTitleLayout->getBuffer(), tmpTitleLayout->getLength());
                    }
                }

                if (mpActiveThumbnail->getWiiTitleId() != 0) {
                    mpWorker->get_nand_app_size_async(mpActiveThumbnail->getWiiTitleId());
                } else {
                    mpWorker->get_sd_app_size_async(mpActiveThumbnail->getSDTitleId());
                }

                mState = STATE_GET_THUMBNAIL_SIZE;
            } else {
                OSReport("サムネイルの取得に失敗 %d\n", getAsyncResult()); /* "Failed to get thumbnail" */
                mState = STATE_NORMAL;
            }
        })
        GATED_STATE(NandSDCardManager::on_get_thumbnail_size, !mpWorker->is_working(), {
            mpActiveThumbnail->create(NULL);
            mpActiveThumbnail->setBlockCount((f32)ceil((f32)getAsyncResult() / 128 / 1024));

            mpActiveChanAppBox->setThumbnail(mpActiveThumbnail);

            mState = STATE_NORMAL;
        })
        GATED_STATE(NandSDCardManager::on_get_wiibanner, !mpWorker->is_working(), {
            if (getAsyncResult() == NandSDWorker::RESULT_OK) {
                if (mpActiveBanner->getWiiTitleId() != 0) {
                    mpWorker->get_nand_save_size_async(mpActiveBanner->getWiiTitleId());
                } else {
                    mpWorker->get_sd_save_size_async(mpActiveBanner->getSDTitleId());
                }
                mpActiveBanner->setCorrupt(false);
                mState = STATE_GET_WIIBANNER_SIZE;
            } else if (getAsyncResult() == NandSDWorker::RESULT_BAD_FILE) {
                if (mpActiveBanner->getWiiTitleId() != 0) {
                    mpWorker->get_nand_save_size_async(mpActiveBanner->getWiiTitleId());
                } else {
                    mpWorker->get_sd_save_size_async(mpActiveBanner->getSDTitleId());
                }
                mpActiveBanner->setCorrupt(true);
                mState = STATE_GET_WIIBANNER_SIZE;
            } else {
                mState = STATE_NORMAL;
            }
        })
        GATED_STATE(NandSDCardManager::on_get_wiibanner_size, !mpWorker->is_working(), {
            mpActiveBanner->create();
            mpActiveBanner->setBlockCount((f32)ceil((f32)getAsyncResult() / 128 / 1024));

            if (mpActiveBanner->getWiiTitleId() != 0) {
                mpWorker->get_nand_save_perms_async(mpActiveBanner->getWiiTitleId());
            } else {
                mpWorker->get_sd_save_perms_async(mpActiveBanner->getSDTitleId());
            }
            mState = STATE_GET_WIIBANNER_PERMS;
        })
        GATED_STATE(NandSDCardManager::on_get_wiibanner_perms, !mpWorker->is_working(), {
            mpActiveBanner->setFilePerms(getAsyncResult());
            mpActiveSavedataBox->setBannerFileInfo(mpActiveBanner);
            mState = STATE_NORMAL;
        })
        GATED_STATE(NandSDCardManager::on_sc_flush, SCCheckStatus() != SC_STATUS_BUSY, {
            mTmpTitleId = 0;
            System::getChannelManager()->reserveRefresh();
            if (unk_0xE87A0) {
                mpWorker->delete_sd_app_async(mpActiveChanAppBox->getThumbnail()->getSDTitleId());
                mState = STATE_DEL_SDAPP;
            } else {
                mState = STATE_NORMAL;
            }
        })
        GATED_STATE(NandSDCardManager::on_change_nand_app_count, !mpWorker->is_working(), {
            SCSetTmpTitleID(0);
            SCFlushAsync(NULL);
            mState = STATE_SC_FLUSH;
        })
        GATED_STATE(NandSDCardManager::on_check_sd_title_restorable, !mpWorker->is_working(), {
            if (getAsyncResult() == NandSDWorker::RESULT_OK) {
                mpWorker->change_nand_app_count_async(1);
                mState = STATE_CHANGE_NAND_APP_COUNT;
            } else {
                mState = STATE_NORMAL;
            }
        })
        GATED_STATE(NandSDCardManager::on_move_nandapp_to_sd, !mpWorker->is_working(), {
            if (getAsyncResult() == NandSDWorker::RESULT_OK) {
                TitleListing* listing = NULL;
                while (listing = (TitleListing*)nw4r::ut::List_GetNext(&mNandListingList, listing), listing != NULL) {
                    ESTitleId titleId = mpActiveChanAppBox->getThumbnail()->getWiiTitleId();
                    if (titleId == listing->wiiTitleId) {
                        nw4r::ut::List_Remove(&mNandListingList, listing);
                        delete listing;
                        break;
                    }
                }
            }
            mState = STATE_NORMAL;
        })
        GATED_STATE(NandSDCardManager::on_move_sdapp_to_nand, !mpWorker->is_working(), {
            if (getAsyncResult() == NandSDWorker::RESULT_OK) {
                TitleListing* listing = NULL;
                while (listing = (TitleListing*)nw4r::ut::List_GetNext(&mSDListingList, listing), listing != NULL) {
                    u32 titleId = mpActiveChanAppBox->getThumbnail()->getSDTitleId();
                    if (titleId == listing->sdTitleId) {
                        nw4r::ut::List_Remove(&mSDListingList, listing);
                        delete listing;
                        break;
                    }
                }
            }
            mState = STATE_NORMAL;
        })
        GATED_STATE(NandSDCardManager::on_move_nandsave_to_sd, !mpWorker->is_working(), {
            if (getAsyncResult() == NandSDWorker::RESULT_OK) {
                TitleListing* listing = NULL;
                while (listing = (TitleListing*)nw4r::ut::List_GetNext(&mNandListingList, listing), listing != NULL) {
                    ESTitleId titleId = mpActiveSavedataBox->getBanner()->getWiiTitleId();
                    if (titleId == listing->wiiTitleId) {
                        nw4r::ut::List_Remove(&mNandListingList, listing);
                        delete listing;
                        break;
                    }
                }
            }
            mState = STATE_NORMAL;
        })
        GATED_STATE(NandSDCardManager::on_move_sdsave_to_nand, !mpWorker->is_working(), {
            if (getAsyncResult() == NandSDWorker::RESULT_OK) {
                TitleListing* listing = NULL;
                while (listing = (TitleListing*)nw4r::ut::List_GetNext(&mSDListingList, listing), listing != NULL) {
                    u32 titleId = mpActiveSavedataBox->getBanner()->getSDTitleId();
                    if (titleId == listing->sdTitleId) {
                        nw4r::ut::List_Remove(&mSDListingList, listing);
                        delete listing;
                        break;
                    }
                }
            }
            mState = STATE_NORMAL;
        })

        void NandSDCardManager::clean_command_queue() {
            OSReport("NandSDCardManager: Clear command que\n");
            while (mThumbCmdQueue.current > 0) {
                mThumbCmdQueue.pop();
            }

            mpActiveChanAppBox = NULL;
            mpActiveThumbnail = NULL;
            mpActiveSavedataBox = NULL;
            mpActiveBanner = NULL;
            for (int i = 0; i < 15; i++) {
                mThumbnails[i].init();
                mBanners[i].init();
            }
        }

        int NandSDCardManager::getAsyncResult() {
            int result = mpWorker->get_async_result();
            if (result == NandSDWorker::RESULT_FA_ERROR) {
                IPLErrorLogAndDisplay(MESG_ERR_FILE, "NandSDWorker", NandSDWorker::RESULT_FA_ERROR, 1209);
            } else if (result == NandSDWorker::RESULT_NAND_CORRUPT) {
                IPLErrorDisplay(MESG_ERR_NAND);
            }
            return result;
        }

        void NandSDCardManager::get_thumbnail(GetThumbnailCmd cmd) {
            if (cmd.isWii) {
                if (cmd.idx >= mpWorker->get_nand_app_num()) {
                    cmd.channelBox->setThumbnail(NULL);
                    return;
                }
                Thumbnail* freeThumbnail = get_free_thumbnail();
                TitleListing* listing = (TitleListing*)nw4r::ut::List_GetNth(&mNandListingList, cmd.idx);
                if (listing == NULL) {
                    cmd.channelBox->setThumbnail(NULL);
                    return;
                }

                ESTitleId titleId = listing->wiiTitleId;
                freeThumbnail->setWiiTitleId(titleId);
                freeThumbnail->setSDTitleId(0);
                mpWorker->get_nand_app_thumbnail_async(titleId, freeThumbnail->getLytHeapBufRef(), freeThumbnail->getChanMetaRef());
                mpActiveChanAppBox = cmd.channelBox;
                mpActiveThumbnail = freeThumbnail;
                mState = STATE_GET_THUMBNAIL;
            } else {
                if (cmd.idx >= mpWorker->get_sd_app_num()) {
                    cmd.channelBox->setThumbnail(NULL);
                    return;
                }
                Thumbnail* freeThumbnail = get_free_thumbnail();
                TitleListing* listing = (TitleListing*)nw4r::ut::List_GetNth(&mSDListingList, cmd.idx);
                if (listing == NULL) {
                    cmd.channelBox->setThumbnail(NULL);
                    return;
                }

                freeThumbnail->setWiiTitleId(0);
                ESTitleId32 titleId = listing->sdTitleId;
                freeThumbnail->setSDTitleId(titleId);
                mpWorker->get_sd_app_thumbnail_async(titleId, freeThumbnail->getLytHeapBufRef(), freeThumbnail->getChanMetaRef());
                mpActiveChanAppBox = cmd.channelBox;
                mpActiveThumbnail = freeThumbnail;
                mState = STATE_GET_THUMBNAIL;
            }
        }

        void NandSDCardManager::get_wiibanner(GetThumbnailCmd cmd) {
            if (cmd.isWii) {
                if (cmd.idx >= mpWorker->get_nand_save_num()) {
                    cmd.savedataBox->setBannerFileInfo(NULL);
                    return;
                }
                WiiBannerFileInfo* freeBanner = get_free_banner();
                TitleListing* listing = (TitleListing*)nw4r::ut::List_GetNth(&mNandListingList, cmd.idx);
                if (listing == NULL) {
                    cmd.savedataBox->setBannerFileInfo(NULL);
                    return;
                }

                ESTitleId titleId = listing->wiiTitleId;
                freeBanner->setWiiTitleId(titleId);
                freeBanner->setSDTitleId(0);
                mpWorker->get_nand_save_banner_async(titleId, freeBanner->getData());
                mpActiveSavedataBox = cmd.savedataBox;
                mpActiveBanner = freeBanner;
                mState = STATE_GET_WIIBANNER;
            } else {
                if (cmd.idx >= mpWorker->get_sd_save_num()) {
                    cmd.savedataBox->setBannerFileInfo(NULL);
                    return;
                }
                WiiBannerFileInfo* freeBanner = get_free_banner();
                TitleListing* listing = (TitleListing*)nw4r::ut::List_GetNth(&mSDListingList, cmd.idx);
                if (listing == NULL) {
                    cmd.savedataBox->setBannerFileInfo(NULL);
                    return;
                }
                freeBanner->setWiiTitleId(0);
                ESTitleId32 titleId = listing->sdTitleId;
                freeBanner->setSDTitleId(titleId);
                mpWorker->get_sd_save_banner_async(titleId, freeBanner->getData());
                mpActiveSavedataBox = cmd.savedataBox;
                mpActiveBanner = freeBanner;
                mState = STATE_GET_WIIBANNER;
            }
        }

        // clang-format off
        COMMAND_FN(cmdTerminate(),                           CMD_TERMINATE,           NULL, NULL, 0, 0);
        COMMAND_FN(cmdSDMount(),                             CMD_MOUNT_SD,            NULL, NULL, 0, 0);
        COMMAND_FN(cmdSDFormat(),                            CMD_FORMAT_SD,           NULL, NULL, 0, 0);
        COMMAND_FN(cmdGetNandFree(),                         CMD_GET_NAND_FREE,       NULL, NULL, 0, 0);
        COMMAND_FN(cmdGetSDFree(),                           CMD_GET_SD_FREE,         NULL, NULL, 0, 0);
        COMMAND_FN(cmdCopySaveNandToSD(ESTitleId titleId),   CMD_COPY_NANDSAVE_TO_SD, NULL, NULL, titleId, 0);
        COMMAND_FN(cmdCopySaveSDToNand(ESTitleId32 titleId), CMD_COPY_SDSAVE_TO_NAND, NULL, NULL, 0, titleId);
        COMMAND_FN(cmdCopyAppNandToSD(ESTitleId titleId),    CMD_COPY_NANDAPP_TO_SD,  NULL, NULL, titleId, 0);
        COMMAND_FN(cmdCopyAppSDToNand(ESTitleId32 titleId),  CMD_COPY_SDAPP_TO_NAND,  NULL, NULL, 0, titleId);
        COMMAND_FN(cmdDelNandApp(ChanAppBox* box),           CMD_DEL_NANDAPP,          box, NULL, box->getThumbnail()->getWiiTitleId(), 0);
        COMMAND_FN(cmdDelSDApp(ChanAppBox* box),             CMD_DEL_SDAPP,            box, NULL, 0, box->getThumbnail()->getSDTitleId());
        COMMAND_FN(cmdDelNandSave(SavedataBox* box),         CMD_DEL_NANDSAVE,        NULL,  box, box->getBanner()->getWiiTitleId(), 0);
        COMMAND_FN(cmdDelSDSave(SavedataBox* box),           CMD_DEL_SDSAVE,          NULL,  box, 0, box->getBanner()->getSDTitleId());
        COMMAND_FN(cmdCleanQueue(),                          CMD_CLEAN_QUEUE,         NULL, NULL, 0, 0);
        COMMAND_FN(cmdListNand(),                            CMD_LIST_NAND,           NULL, NULL, 0, 0);
        COMMAND_FN(cmdListSD(),                              CMD_LIST_SD,             NULL, NULL, 0, 0);
        COMMAND_FN(cmdExistNandApp(ESTitleId32 titleId),     CMD_NAND_APP_EXIST,      NULL, NULL, 0, titleId);
        COMMAND_FN(cmdExistNandSave(ESTitleId32 titleId),    CMD_NAND_SAVE_EXIST,     NULL, NULL, 0, titleId);
        COMMAND_FN(cmdExistSDApp(ESTitleId32 titleId),       CMD_SD_APP_EXIST,        NULL, NULL, 0, titleId);
        COMMAND_FN(cmdExistSDSave(ESTitleId32 titleId),      CMD_SD_SAVE_EXIST,       NULL, NULL, 0, titleId);
        COMMAND_FN(cmdMoveAppNandToSD(ChanAppBox* box),      CMD_MOVE_NANDAPP_TO_SD,              box, NULL, box->getThumbnail()->getWiiTitleId(), 0);
        COMMAND_FN(cmdMoveAppSDToNand(ChanAppBox* box),      CMD_MOVE_SDAPP_TO_NAND,              box, NULL, 0, box->getThumbnail()->getSDTitleId());
        COMMAND_FN(cmdMoveSaveNandToSD(SavedataBox* box),    CMD_MOVE_NANDSAVE_TO_SD, NULL,  box, box->getBanner()->getWiiTitleId(), 0);
        COMMAND_FN(cmdMoveSaveSDToNand(SavedataBox* box),    CMD_MOVE_SDSAVE_TO_NAND, NULL,  box, 0, box->getBanner()->getSDTitleId());
        // clang-format on

        Thumbnail* NandSDCardManager::get_free_thumbnail() {
            for (int i = 0; i < 15; i++) {
                if (mThumbnails[i].getWiiTitleId() == 0) {
                    if (mThumbnails[i].getSDTitleId() == 0) {
                        return &mThumbnails[i];
                    }
                }
            }
            return NULL;
        }

        WiiBannerFileInfo* NandSDCardManager::get_free_banner() {
            for (int i = 0; i < 15; i++) {
                if (mBanners[i].getWiiTitleId() == 0) {
                    if (mBanners[i].getSDTitleId() == 0) {
                        return &mBanners[i];
                    }
                }
            }
            return NULL;
        }
    }  // namespace scene
}  // namespace ipl
