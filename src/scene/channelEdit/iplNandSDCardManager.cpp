#include "scene/channelEdit/iplNandSDCardManager.h"

// actually needed to match.
#pragma sym on

namespace ipl {
    namespace scene {
#define COMMAND_FN(FUNCTION_HEADER, TAG, APP_BOX, SAVE_BOX, WII_TITLE_ID, SD_TITLE_ID)                                                               \
    void NandSDCardManager::FUNCTION_HEADER {                                                                                                        \
        Command cmd;                                                                                                                                 \
        cmd.mTag = TAG;                                                                                                                              \
        cmd.pChanAppBox = APP_BOX;                                                                                                                   \
        cmd.pSavedataBox = SAVE_BOX;                                                                                                                 \
        cmd.mWiiTitleId = WII_TITLE_ID;                                                                                                              \
        cmd.mSDTitleId = SD_TITLE_ID;                                                                                                                \
        mCmdQueue.push(cmd);                                                                                                                         \
    }

#define GATED_STATE(FN_NAME, COND, THEN)                                                                                                             \
    void FN_NAME() {                                                                                                                                 \
        if (!(COND))                                                                                                                                 \
            return;                                                                                                                                  \
        THEN;                                                                                                                                        \
    }

        NandSDCardManager::NandSDCardManager(Mode mode)
            : mState(MANAGER_STATE_INIT), mMode(mode), pWorker(NULL), pWorkerWorkBuf(NULL), pWorkerDataBuf(NULL), pNandTitleIds(NULL),
              pSDTitleIds(NULL), mThumbnailArr(), mBannerArr(), pActiveChanAppBox(NULL), pActiveThumbnail(NULL), pActiveSavedataBox(NULL),
              pActiveBanner(NULL), mNandBlocksFree(-1), mSDBlocksFree(-1), mDisableThumbnailFetching(false), mTmpTitleId(0), unk_0xe87a0(false) {
            pWorker = new (System::getMem2App()) NandSDWorker();
            pWorkerWorkBuf = System::getMem2App()->alloc(0x3ea60, 0x40);

            if (mMode == NAND_MANAGER_MODE_APPS) {
                int heapSize = MEMCalcHeapSizeForUnitHeap(0x19620, 0x60, 0x20);
                pWorkerDataBuf = System::getMem2App()->alloc(heapSize + 0x40000, 0x40);
            } else {
                int heapSize = MEMCalcHeapSizeForUnitHeap(0xf0c0, 0x5a, 0x20);
                pWorkerDataBuf = System::getMem2App()->alloc(heapSize + 0x40000, 0x40);
            }

            nw4r::ut::List_Init(&mNandListingList, 0xc);
            nw4r::ut::List_Init(&mSDListingList, 0xc);

            for (int i = 0; i < 15; i++) {
                mThumbnailArr[i].init();
                mBannerArr[i].init();
            }
        }

        NandSDCardManager::~NandSDCardManager() {
            System::getMem2App()->free(pWorkerWorkBuf);
            System::getMem2App()->free(pWorkerDataBuf);
            delete pWorker;

            TitleListing* listing;

            listing = NULL;
            while (listing = (TitleListing*)nw4r::ut::List_GetNext(&mNandListingList, listing), listing != NULL) {
                if (listing == NULL)
                    break;
                nw4r::ut::List_Remove(&mNandListingList, listing);
                delete listing;
                listing = NULL;
            }

            listing = NULL;
            while (listing = (TitleListing*)nw4r::ut::List_GetNext(&mSDListingList, listing), listing != NULL) {
                if (listing == NULL)
                    break;
                nw4r::ut::List_Remove(&mSDListingList, listing);
                delete listing;
                listing = NULL;
            }
        }

        void NandSDCardManager::calc() {
            switch (mState) {
                case MANAGER_STATE_INIT:
                    on_init();
                    break;
                case MANAGER_STATE_CHECK_EXIST:
                    on_check_exist();
                    break;
                case MANAGER_STATE_STARTUP:
                    on_startup();
                    break;
                case MANAGER_STATE_MOUNT_SD:
                    on_mount_sd();
                    break;
                case MANAGER_STATE_LIST_NANDAPP:
                    on_list_nandapp();
                    break;
                case MANAGER_STATE_LIST_SDAPP:
                    on_list_sdapp();
                    break;
                case MANAGER_STATE_GET_NAND_FREE:
                    on_get_nand_free();
                    break;
                case MANAGER_STATE_GET_SD_FREE:
                    on_get_sd_free();
                    break;
                case MANAGER_STATE_NORMAL:
                    on_normal();
                    break;
                case MANAGER_STATE_TERMINATE:
                    on_terminate();
                    break;
                case MANAGER_STATE_COPY_NANDSAVE_TO_SD:
                    on_copy_nandsave_to_sd();
                    break;
                case MANAGER_STATE_COPY_SDSAVE_TO_NAND:
                    on_copy_sdsave_to_nand();
                    break;
                case MANAGER_STATE_COPY_NANDAPP_TO_SD:
                    on_copy_nandapp_to_sd();
                    break;
                case MANAGER_STATE_COPY_SDAPP_TO_NAND:
                    on_copy_sdapp_to_nand();
                    break;
                case MANAGER_STATE_DEL_NANDAPP:
                    on_del_nandapp();
                    break;
                case MANAGER_STATE_DEL_NANDSAVE:
                    on_del_nandsave();
                    break;
                case MANAGER_STATE_DEL_SDSAVE:
                    on_del_sdsave();
                    break;
                case MANAGER_STATE_DEL_SDAPP:
                    on_del_sdapp();
                    break;
                case MANAGER_STATE_GET_THUMBNAIL:
                    on_get_thumbnail();
                    break;
                case MANAGER_STATE_GET_THUMBNAIL_SIZE:
                    on_get_thumbnail_size();
                    break;
                case MANAGER_STATE_GET_WIIBANNER:
                    on_get_wiibanner();
                    break;
                case MANAGER_STATE_GET_WIIBANNER_SIZE:
                    on_get_wiibanner_size();
                    break;
                case MANAGER_STATE_GET_WIIBANNER_PERMS:
                    on_get_wiibanner_perms();
                    break;
                case MANAGER_STATE_SC_FLUSH:
                    on_sc_flush();
                    break;
                case MANAGER_STATE_CHANGE_NAND_APP_COUNT:
                    on_change_nand_app_count();
                    break;
                case MANAGER_STATE_MOVE_NANDAPP_TO_SD:
                    on_move_nandapp_to_sd();
                    break;
                case MANAGER_STATE_MOVE_SDAPP_TO_NAND:
                    on_move_sdapp_to_nand();
                    break;
                case MANAGER_STATE_MOVE_NANDSAVE_TO_SD:
                    on_move_nandsave_to_sd();
                    break;
                case MANAGER_STATE_MOVE_SDSAVE_TO_NAND:
                    on_move_sdsave_to_nand();
                    break;
                case MANAGER_STATE_CHECK_SD_TITLE_RESTORABLE:
                    on_check_sd_title_restorable();
                    break;

                default:
                    break;
            }
        }

        void NandSDCardManager::cmdGetThumbnail(ChanAppBox* box, int idx, bool isWiiNotSD) {
            GetThumbnailCmd thumbnailCmd;
            thumbnailCmd.pChannelBox = box;
            thumbnailCmd.pSavedataBox = NULL;
            thumbnailCmd.mIdx = idx;
            thumbnailCmd.mIsWiiNotSD = isWiiNotSD;

            mThumbCmdQueue.push(thumbnailCmd);
        }
        void NandSDCardManager::cmdGetWiiBanner(SavedataBox* box, int idx, bool isWiiNotSD) {
            GetThumbnailCmd thumbnailCmd;
            thumbnailCmd.pChannelBox = NULL;
            thumbnailCmd.pSavedataBox = box;
            thumbnailCmd.mIdx = idx;
            thumbnailCmd.mIsWiiNotSD = isWiiNotSD;

            mThumbCmdQueue.push(thumbnailCmd);
        }

        GATED_STATE(NandSDCardManager::on_init, System::isReceiveScheduleStopped(), {
            if (mMode == NAND_MANAGER_MODE_APPS) {
                pWorker->create(pWorkerWorkBuf, NULL, pWorkerDataBuf, 18);
            } else {
                pWorker->create(pWorkerWorkBuf, pWorkerDataBuf, NULL, 18);
            }
            pWorker->startup_async();
            mState = MANAGER_STATE_STARTUP;
        })
        GATED_STATE(NandSDCardManager::on_startup, !pWorker->is_working(), {
            if (mMode == NAND_MANAGER_MODE_APPS) {
                pNandTitleIds = new (System::getMem2App(), 4) ESTitleId[pWorker->get_nand_app_num()];
                pWorker->list_nand_app_async(pNandTitleIds);
            } else {
                pNandTitleIds = new (System::getMem2App(), 4) ESTitleId[pWorker->get_nand_save_num()];
                pWorker->list_nand_save_async(pNandTitleIds);
            }
            mState = MANAGER_STATE_LIST_NANDAPP;
        })
        GATED_STATE(NandSDCardManager::on_check_exist, !pWorker->is_working(), mState = MANAGER_STATE_NORMAL)
        GATED_STATE(NandSDCardManager::on_mount_sd, !pWorker->is_working(), mState = MANAGER_STATE_NORMAL)
        GATED_STATE(NandSDCardManager::on_list_nandapp, !pWorker->is_working(), {
            TitleListing* listing = NULL;
            while (listing = (TitleListing*)nw4r::ut::List_GetNext(&mNandListingList, listing), listing != NULL) {
                nw4r::ut::List_Remove(&mNandListingList, listing);
                delete listing;
                listing = NULL;
            }

            mTmpTitleId = SCGetTmpTitleID();
            if (mMode == NAND_MANAGER_MODE_APPS) {
                for (int i = 0; i < pWorker->get_nand_app_num(); i++) {
                    if (mTmpTitleId != 0 && pNandTitleIds[i] == mTmpTitleId) {
                        nw4r::ut::List_Prepend(&mNandListingList, new (System::getMem2App(), 4) TitleListing(pNandTitleIds[i]));
                    } else {
                        nw4r::ut::List_Append(&mNandListingList, new (System::getMem2App(), 4) TitleListing(pNandTitleIds[i]));
                    }
                }
            } else {
                for (int i = 0; i < pWorker->get_nand_save_num(); i++) {
                    nw4r::ut::List_Append(&mNandListingList, new (System::getMem2App(), 4) TitleListing(pNandTitleIds[i]));
                }
            }
            delete[] pNandTitleIds;
            pWorker->get_nand_user_free_area_async();
            mState = MANAGER_STATE_GET_NAND_FREE;
        })
        GATED_STATE(NandSDCardManager::on_get_nand_free, !pWorker->is_working(), {
            mNandBlocksFree = (f32)floor((f32)getAsyncResult() / 128 / 1024);
            mState = MANAGER_STATE_NORMAL;
        })
        GATED_STATE(NandSDCardManager::on_get_sd_free, !pWorker->is_working(), {
            mSDBlocksFree = (f32)floor((f32)mSDBytesFree / 128 / 1024);
            mState = MANAGER_STATE_NORMAL;
        })
        GATED_STATE(NandSDCardManager::on_list_sdapp, !pWorker->is_working(), {
            u8* buf = NULL;
            while (buf = (u8*)nw4r::ut::List_GetNext(&mSDListingList, buf), buf != NULL) {
                nw4r::ut::List_Remove(&mSDListingList, buf);
                delete buf;
                buf = NULL;
            }

            if (mMode == NAND_MANAGER_MODE_APPS) {
                for (int i = 0; i < pWorker->get_sd_app_num(); i++) {
                    nw4r::ut::List_Append(&mSDListingList, new (System::getMem2App(), 4) TitleListing(pSDTitleIds[i]));
                }
            } else {
                for (int i = 0; i < pWorker->get_sd_save_num(); i++) {
                    nw4r::ut::List_Append(&mSDListingList, new (System::getMem2App(), 4) TitleListing(pSDTitleIds[i]));
                }
            }
            delete[] pSDTitleIds;

            if (pWorker->get_sd_state() == 6) {
                pWorker->get_sd_free_area_async(&mSDBytesFree);
                mState = MANAGER_STATE_GET_SD_FREE;

            } else {
                mState = MANAGER_STATE_NORMAL;
            }
        })
        GATED_STATE(NandSDCardManager::on_normal, true, {
            if (mCmdQueue.current != 0) {
                Command cmd = mCmdQueue.get_popped_item();

                switch (cmd.mTag) {
                    case CMD_NUL:
                        break;
                    case CMD_TERMINATE:
                        pWorker->terminate_async();
                        mState = MANAGER_STATE_TERMINATE;
                        break;
                    case CMD_MOUNT_SD:
                        pWorker->mount_sd_async();
                        mState = MANAGER_STATE_MOUNT_SD;
                        break;
                    case CMD_FORMAT_SD:
                        pWorker->format_sd_async();
                        mState = MANAGER_STATE_CHECK_EXIST;
                        break;
                    case CMD_GET_NAND_FREE:
                        pWorker->get_nand_user_free_area_async();
                        mState = MANAGER_STATE_GET_NAND_FREE;
                        break;
                    case CMD_GET_SD_FREE:
                        pWorker->get_sd_free_area_async(&mSDBytesFree);
                        mState = MANAGER_STATE_GET_SD_FREE;
                        break;
                    case CMD_COPY_NANDSAVE_TO_SD:
                        pWorker->copy_nand_save_to_sd_async(cmd.mWiiTitleId);
                        mState = MANAGER_STATE_COPY_NANDSAVE_TO_SD;
                        break;
                    case CMD_COPY_SDSAVE_TO_NAND:
                        pWorker->copy_sd_save_to_nand_async(cmd.mSDTitleId);
                        mState = MANAGER_STATE_COPY_SDSAVE_TO_NAND;
                        break;
                    case CMD_COPY_NANDAPP_TO_SD:
                        pWorker->copy_nand_app_to_sd_async(cmd.mWiiTitleId);
                        mState = MANAGER_STATE_COPY_NANDAPP_TO_SD;
                        break;
                    case CMD_COPY_SDAPP_TO_NAND:
                        if (cmd.mSDTitleId == (ESTitleId32)mTmpTitleId) {
                            unk_0xe87a0 = false;
                            pWorker->check_sd_title_restorable_async(cmd.mSDTitleId);
                            mState = MANAGER_STATE_CHECK_SD_TITLE_RESTORABLE;
                        } else {
                            pWorker->copy_sd_app_to_nand_async(cmd.mSDTitleId, 0);
                            mState = MANAGER_STATE_COPY_SDAPP_TO_NAND;
                        }
                        break;
                    case CMD_DEL_NANDAPP:
                        // 0x00010000-HAZA is the "Photo Channel 1.1 dummy"
                        if ((cmd.mWiiTitleId & ~0xFF) == ES_TITLE_ID(0x00010000, 'HAZ\0') || cmd.mWiiTitleId == mTmpTitleId) {
                            pActiveChanAppBox = cmd.pChanAppBox;
                            pWorker->delete_nand_app_async(cmd.mWiiTitleId, true);
                            mState = MANAGER_STATE_DEL_NANDAPP;
                        } else {
                            pActiveChanAppBox = cmd.pChanAppBox;
                            pWorker->delete_nand_app_async(cmd.mWiiTitleId, false);
                            mState = MANAGER_STATE_DEL_NANDAPP;
                        }
                        break;
                    case CMD_DEL_SDAPP:
                        pActiveChanAppBox = cmd.pChanAppBox;
                        pWorker->delete_sd_app_async(cmd.mSDTitleId);
                        mState = MANAGER_STATE_DEL_SDAPP;
                        break;
                    case CMD_DEL_NANDSAVE:
                        pActiveSavedataBox = cmd.pSavedataBox;
                        pWorker->delete_nand_save_async(cmd.mWiiTitleId);
                        mState = MANAGER_STATE_DEL_NANDSAVE;
                        break;
                    case CMD_DEL_SDSAVE:
                        pActiveSavedataBox = cmd.pSavedataBox;
                        pWorker->delete_sd_save_async(cmd.mSDTitleId);
                        mState = MANAGER_STATE_DEL_SDSAVE;
                        break;
                    case CMD_CLEAN_QUEUE:
                        clean_command_queue();
                        break;
                    case CMD_LIST_NAND:
                        if (mMode == NAND_MANAGER_MODE_APPS) {
                            pNandTitleIds = new (System::getMem2App(), -32) ESTitleId[pWorker->get_nand_app_num()];
                            pWorker->list_nand_app_async(pNandTitleIds);
                            mState = MANAGER_STATE_LIST_NANDAPP;
                        } else {
                            pNandTitleIds = new (System::getMem2App(), -32) ESTitleId[pWorker->get_nand_save_num()];
                            pWorker->list_nand_save_async(pNandTitleIds);
                            mState = MANAGER_STATE_LIST_NANDAPP;
                        }
                        break;
                    case CMD_LIST_SD:
                        if (pWorker->get_sd_state() == NandSDWorker::SD_STATE_READY) {
                            if (mMode == NAND_MANAGER_MODE_APPS) {
                                pSDTitleIds = new (System::getMem2App(), -32) ESTitleId32[pWorker->get_sd_app_num()];
                                pWorker->list_sd_app_async(pSDTitleIds);
                                mState = MANAGER_STATE_LIST_SDAPP;
                            } else {
                                pSDTitleIds = new (System::getMem2App(), -32) ESTitleId32[pWorker->get_sd_save_num()];
                                pWorker->list_sd_save_async(pSDTitleIds);
                                mState = MANAGER_STATE_LIST_SDAPP;
                            }
                        } else {
                            mState = MANAGER_STATE_NORMAL;
                        }
                        break;
                    case CMD_NAND_APP_EXIST:
                        pWorker->both_app_exist_async(cmd.mSDTitleId);
                        mState = MANAGER_STATE_CHECK_EXIST;
                        break;
                    case CMD_NAND_SAVE_EXIST:
                        pWorker->nand_save_exist_lo_async(cmd.mSDTitleId);
                        mState = MANAGER_STATE_CHECK_EXIST;
                        break;
                    case CMD_SD_APP_EXIST:
                        pWorker->sd_app_exist_async(cmd.mSDTitleId);
                        mState = MANAGER_STATE_CHECK_EXIST;
                        break;
                    case CMD_SD_SAVE_EXIST:
                        pWorker->sd_save_exist_async(cmd.mSDTitleId);
                        mState = MANAGER_STATE_CHECK_EXIST;
                        break;
                    case CMD_MOVE_NANDAPP_TO_SD:
                        pActiveChanAppBox = cmd.pChanAppBox;
                        pWorker->move_nand_app_to_sd_async(cmd.mWiiTitleId);
                        mState = MANAGER_STATE_MOVE_NANDAPP_TO_SD;
                        break;
                    case CMD_MOVE_SDAPP_TO_NAND:
                        if (cmd.mSDTitleId == (ESTitleId32)mTmpTitleId) {
                            pActiveChanAppBox = cmd.pChanAppBox;
                            unk_0xe87a0 = true;
                            pWorker->check_sd_title_restorable_async(cmd.mSDTitleId);
                            mState = MANAGER_STATE_CHECK_SD_TITLE_RESTORABLE;
                        } else {
                            pActiveChanAppBox = cmd.pChanAppBox;
                            pWorker->move_sd_app_to_nand_async(cmd.mSDTitleId);
                            mState = MANAGER_STATE_MOVE_SDAPP_TO_NAND;
                        }
                        break;
                    case CMD_MOVE_NANDSAVE_TO_SD:
                        pActiveSavedataBox = cmd.pSavedataBox;
                        pWorker->move_nand_save_to_sd_async(cmd.mWiiTitleId);
                        mState = MANAGER_STATE_MOVE_NANDSAVE_TO_SD;
                        break;
                    case CMD_MOVE_SDSAVE_TO_NAND:
                        pActiveSavedataBox = cmd.pSavedataBox;
                        pWorker->move_sd_save_to_nand_async(cmd.mSDTitleId);
                        mState = MANAGER_STATE_MOVE_SDSAVE_TO_NAND;
                        break;
                }

                mCmdQueue.pop();
            } else if (mThumbCmdQueue.current != 0) {
                if (pWorker->is_working())
                    return;

                if (mDisableThumbnailFetching)
                    return;

                GetThumbnailCmd thumbnailCmd = mThumbCmdQueue.get_popped_item();
                if (mMode == NAND_MANAGER_MODE_APPS) {
                    get_thumbnail(thumbnailCmd);
                } else {
                    get_wiibanner(thumbnailCmd);
                }
                mThumbCmdQueue.pop();
            }
        })
        GATED_STATE(NandSDCardManager::on_terminate, pWorker->is_terminated(), mState = MANAGER_STATE_STOPPED)
        GATED_STATE(NandSDCardManager::on_copy_nandsave_to_sd, !pWorker->is_working(), mState = MANAGER_STATE_NORMAL)
        GATED_STATE(NandSDCardManager::on_copy_sdsave_to_nand, !pWorker->is_working(), mState = MANAGER_STATE_NORMAL)
        GATED_STATE(NandSDCardManager::on_copy_nandapp_to_sd, !pWorker->is_working(), mState = MANAGER_STATE_NORMAL)
        GATED_STATE(NandSDCardManager::on_copy_sdapp_to_nand, !pWorker->is_working(), mState = MANAGER_STATE_NORMAL)
        GATED_STATE(NandSDCardManager::on_del_nandapp, !pWorker->is_working(), {
            TitleListing* listing = NULL;
            while (listing = (TitleListing*)nw4r::ut::List_GetNext(&mNandListingList, listing), listing != NULL) {
                ESTitleId titleId = pActiveChanAppBox->getThumbnail()->getWiiTitleId();
                if (titleId == listing->mWiiTitleId) {
                    nw4r::ut::List_Remove(&mNandListingList, listing);
                    delete listing;
                    break;
                }
            }
            if (pActiveChanAppBox->getThumbnail()->getMatchesTmpTitle()) {
                SCSetTmpTitleID(0);
                SCFlushAsync(NULL);
                mState = MANAGER_STATE_SC_FLUSH;
            } else {
                mState = MANAGER_STATE_NORMAL;
            }
        })
        GATED_STATE(NandSDCardManager::on_del_nandsave, !pWorker->is_working(), {
            TitleListing* listing = NULL;
            while (listing = (TitleListing*)nw4r::ut::List_GetNext(&mNandListingList, listing), listing != NULL) {
                ESTitleId titleId = pActiveSavedataBox->getBanner()->getWiiTitleId();
                if (titleId == listing->mWiiTitleId) {
                    nw4r::ut::List_Remove(&mNandListingList, listing);
                    delete listing;
                    break;
                }
            }
            mState = MANAGER_STATE_NORMAL;
        })
        GATED_STATE(NandSDCardManager::on_del_sdsave, !pWorker->is_working(), {
            TitleListing* listing = NULL;
            while (listing = (TitleListing*)nw4r::ut::List_GetNext(&mSDListingList, listing), listing != NULL) {
                u32 titleId = pActiveSavedataBox->getBanner()->getSDTitleId();
                if (titleId == listing->mSDTitleId) {
                    nw4r::ut::List_Remove(&mSDListingList, listing);
                    delete listing;
                    break;
                }
            }
            mState = MANAGER_STATE_NORMAL;
        })
        GATED_STATE(NandSDCardManager::on_del_sdapp, !pWorker->is_working(), {
            TitleListing* listing = NULL;
            while (listing = (TitleListing*)nw4r::ut::List_GetNext(&mSDListingList, listing), listing != NULL) {
                u32 titleId = pActiveChanAppBox->getThumbnail()->getSDTitleId();
                if (titleId == listing->mSDTitleId) {
                    nw4r::ut::List_Remove(&mSDListingList, listing);
                    delete listing;
                    break;
                }
            }
            mState = MANAGER_STATE_NORMAL;
        })
        GATED_STATE(NandSDCardManager::on_get_thumbnail, !pWorker->is_working(), {
            if (getAsyncResult() > NandSDWorker::WORKER_RESULT_OK || getAsyncResult() == NandSDWorker::WORKER_RESULT_BAD_FILE) {
                if (getAsyncResult() == NandSDWorker::WORKER_RESULT_BAD_FILE) {
                    pActiveThumbnail->setIsCorrupt(true);
                    ChannelEdit* channelEdit = pActiveChanAppBox->get_channel_edit();
                    void* something = *(void**)((int)channelEdit + 0x60);
                    OSReport("[SSK] HatenaLayout - %p\n", something);
                    memcpy(pActiveThumbnail->getLytHeapBufRef(), *(void**)((int)something + 0xa0), *(u32*)((int)something + 0x98));
                }

                if (pActiveThumbnail->getWiiTitleId() != 0) {
                    ESTitleId titleId = pActiveThumbnail->getWiiTitleId();
                    ESTitleId tmpId = mTmpTitleId;
                    if (titleId == tmpId) {
                        pActiveThumbnail->setMatchesTmpTitle(true);
                        ChannelEdit* channelEdit = pActiveChanAppBox->get_channel_edit();
                        void* something = *(void**)((int)channelEdit + 0x64);
                        OSReport("NandSDCardManager: %016llx is tmp title.\n", pActiveThumbnail->getWiiTitleId());
                        memcpy(pActiveThumbnail->getLytHeapBufRef(), *(void**)((int)something + 0xa0), *(u32*)((int)something + 0x98));
                    }
                }

                if (pActiveThumbnail->getWiiTitleId() != 0)
                    pWorker->get_nand_app_size_async(pActiveThumbnail->getWiiTitleId());
                else
                    pWorker->get_sd_app_size_async(pActiveThumbnail->getSDTitleId());

                mState = MANAGER_STATE_GET_THUMBNAIL_SIZE;
            } else {
                OSReport("サムネイルの取得に失敗 %d\n", getAsyncResult());
                mState = MANAGER_STATE_NORMAL;
            }
        })
        GATED_STATE(NandSDCardManager::on_get_thumbnail_size, !pWorker->is_working(), {
            pActiveThumbnail->create(NULL);
            pActiveThumbnail->setBlockCount((f32)ceil((f32)getAsyncResult() / 128 / 1024));

            pActiveChanAppBox->setThumbnail(pActiveThumbnail);

            mState = MANAGER_STATE_NORMAL;
        })
        GATED_STATE(NandSDCardManager::on_get_wiibanner, !pWorker->is_working(), {
            if (getAsyncResult() == NandSDWorker::WORKER_RESULT_OK) {
                if (pActiveBanner->getWiiTitleId() != 0) {
                    pWorker->get_nand_save_size_async(pActiveBanner->getWiiTitleId());
                } else {
                    pWorker->get_sd_save_size_async(pActiveBanner->getSDTitleId());
                }
                pActiveBanner->setCorrupt(false);
                mState = MANAGER_STATE_GET_WIIBANNER_SIZE;
            } else if (getAsyncResult() == NandSDWorker::WORKER_RESULT_BAD_FILE) {
                if (pActiveBanner->getWiiTitleId() != 0) {
                    pWorker->get_nand_save_size_async(pActiveBanner->getWiiTitleId());
                } else {
                    pWorker->get_sd_save_size_async(pActiveBanner->getSDTitleId());
                }
                pActiveBanner->setCorrupt(true);
                mState = MANAGER_STATE_GET_WIIBANNER_SIZE;
            } else {
                mState = MANAGER_STATE_NORMAL;
            }
        })
        GATED_STATE(NandSDCardManager::on_get_wiibanner_size, !pWorker->is_working(), {
            pActiveBanner->create();
            pActiveBanner->setBlockCount((f32)ceil((f32)getAsyncResult() / 128 / 1024));

            if (pActiveBanner->getWiiTitleId() != 0) {
                pWorker->get_nand_save_perms_async(pActiveBanner->getWiiTitleId());
            } else {
                pWorker->get_sd_save_perms_async(pActiveBanner->getSDTitleId());
            }
            mState = MANAGER_STATE_GET_WIIBANNER_PERMS;
        })
        GATED_STATE(NandSDCardManager::on_get_wiibanner_perms, !pWorker->is_working(), {
            pActiveBanner->setFilePerms(getAsyncResult());
            pActiveSavedataBox->setBannerFileInfo(pActiveBanner);
            mState = MANAGER_STATE_NORMAL;
        })
        GATED_STATE(NandSDCardManager::on_sc_flush, SCCheckStatus() != SC_STATUS_BUSY, {
            mTmpTitleId = 0;
            System::getChannelManager()->reserveRefresh();
            if (unk_0xe87a0) {
                pWorker->delete_sd_app_async(pActiveChanAppBox->getThumbnail()->getSDTitleId());
                mState = MANAGER_STATE_DEL_SDAPP;
            } else {
                mState = MANAGER_STATE_NORMAL;
            }
        })
        GATED_STATE(NandSDCardManager::on_change_nand_app_count, !pWorker->is_working(), {
            SCSetTmpTitleID(0);
            SCFlushAsync(NULL);
            mState = MANAGER_STATE_SC_FLUSH;
        })
        GATED_STATE(NandSDCardManager::on_check_sd_title_restorable, !pWorker->is_working(), {
            if (getAsyncResult() == NandSDWorker::WORKER_RESULT_OK) {
                pWorker->change_nand_app_count_async(1);
                mState = MANAGER_STATE_CHANGE_NAND_APP_COUNT;
            } else {
                mState = MANAGER_STATE_NORMAL;
            }
        })
        GATED_STATE(NandSDCardManager::on_move_nandapp_to_sd, !pWorker->is_working(), {
            if (getAsyncResult() == NandSDWorker::WORKER_RESULT_OK) {
                TitleListing* listing = NULL;
                while (listing = (TitleListing*)nw4r::ut::List_GetNext(&mNandListingList, listing), listing != NULL) {
                    ESTitleId titleId = pActiveChanAppBox->getThumbnail()->getWiiTitleId();
                    if (titleId == listing->mWiiTitleId) {
                        nw4r::ut::List_Remove(&mNandListingList, listing);
                        delete listing;
                        break;
                    }
                }
            }
            mState = MANAGER_STATE_NORMAL;
        })
        GATED_STATE(NandSDCardManager::on_move_sdapp_to_nand, !pWorker->is_working(), {
            if (getAsyncResult() == NandSDWorker::WORKER_RESULT_OK) {
                TitleListing* listing = NULL;
                while (listing = (TitleListing*)nw4r::ut::List_GetNext(&mSDListingList, listing), listing != NULL) {
                    u32 titleId = pActiveChanAppBox->getThumbnail()->getSDTitleId();
                    if (titleId == listing->mSDTitleId) {
                        nw4r::ut::List_Remove(&mSDListingList, listing);
                        delete listing;
                        break;
                    }
                }
            }
            mState = MANAGER_STATE_NORMAL;
        })
        GATED_STATE(NandSDCardManager::on_move_nandsave_to_sd, !pWorker->is_working(), {
            if (getAsyncResult() == NandSDWorker::WORKER_RESULT_OK) {
                TitleListing* listing = NULL;
                while (listing = (TitleListing*)nw4r::ut::List_GetNext(&mNandListingList, listing), listing != NULL) {
                    ESTitleId titleId = pActiveSavedataBox->getBanner()->getWiiTitleId();
                    if (titleId == listing->mWiiTitleId) {
                        nw4r::ut::List_Remove(&mNandListingList, listing);
                        delete listing;
                        break;
                    }
                }
            }
            mState = MANAGER_STATE_NORMAL;
        })
        GATED_STATE(NandSDCardManager::on_move_sdsave_to_nand, !pWorker->is_working(), {
            if (getAsyncResult() == NandSDWorker::WORKER_RESULT_OK) {
                TitleListing* listing = NULL;
                while (listing = (TitleListing*)nw4r::ut::List_GetNext(&mSDListingList, listing), listing != NULL) {
                    u32 titleId = pActiveSavedataBox->getBanner()->getSDTitleId();
                    if (titleId == listing->mSDTitleId) {
                        nw4r::ut::List_Remove(&mSDListingList, listing);
                        delete listing;
                        break;
                    }
                }
            }
            mState = MANAGER_STATE_NORMAL;
        })

        void NandSDCardManager::clean_command_queue() {
            OSReport("NandSDCardManager: Clear command que\n");
            while (mThumbCmdQueue.current > 0)
                mThumbCmdQueue.pop();

            pActiveChanAppBox = NULL;
            pActiveThumbnail = NULL;
            pActiveSavedataBox = NULL;
            pActiveBanner = NULL;
            for (int i = 0; i < 15; i++) {
                mThumbnailArr[i].init();
                mBannerArr[i].init();
            }
        }

        int NandSDCardManager::getAsyncResult() {
            int result = pWorker->get_async_result();
            if (result == NandSDWorker::WORKER_RESULT_SYSFILES_CORRUPT) {
                System::getErrorHandler()->log("NandSDWorker", NandSDWorker::WORKER_RESULT_SYSFILES_CORRUPT, "iplNandSDCardManager.cpp", 0x4b9);
                System::getErrorHandler()->set(ErrorHandler::DEFAULT, MESG_ERR_FILE);
            } else if (result == NandSDWorker::WORKER_RESULT_NAND_CORRUPT) {
                System::getErrorHandler()->set(ErrorHandler::DEFAULT, MESG_ERR_NAND);
            }
            return result;
        }

        void NandSDCardManager::get_thumbnail(GetThumbnailCmd cmd) {
            if (cmd.mIsWiiNotSD) {
                if (cmd.mIdx >= pWorker->get_nand_app_num()) {
                    cmd.pChannelBox->setThumbnail(NULL);
                    return;
                }
                Thumbnail* freeThumbnail = get_free_thumbnail();
                TitleListing* listing = (TitleListing*)nw4r::ut::List_GetNth(&mNandListingList, cmd.mIdx);
                if (listing == NULL) {
                    cmd.pChannelBox->setThumbnail(NULL);
                    return;
                }

                ESTitleId titleId = listing->mWiiTitleId;
                freeThumbnail->setWiiTitleId(titleId);
                freeThumbnail->setSDTitleId(0);
                pWorker->get_nand_app_thumbnail_async(titleId, freeThumbnail->getLytHeapBufRef(), freeThumbnail->getChanMetaRef());
                pActiveChanAppBox = cmd.pChannelBox;
                pActiveThumbnail = freeThumbnail;
                mState = MANAGER_STATE_GET_THUMBNAIL;
            } else {
                if (cmd.mIdx >= pWorker->get_sd_app_num()) {
                    cmd.pChannelBox->setThumbnail(NULL);
                    return;
                }
                Thumbnail* freeThumbnail = get_free_thumbnail();
                TitleListing* listing = (TitleListing*)nw4r::ut::List_GetNth(&mSDListingList, cmd.mIdx);
                if (listing == NULL) {
                    cmd.pChannelBox->setThumbnail(NULL);
                    return;
                }

                freeThumbnail->setWiiTitleId(0);
                ESTitleId32 titleId = listing->mSDTitleId;
                freeThumbnail->setSDTitleId(titleId);
                pWorker->get_sd_app_thumbnail_async(titleId, freeThumbnail->getLytHeapBufRef(), freeThumbnail->getChanMetaRef());
                pActiveChanAppBox = cmd.pChannelBox;
                pActiveThumbnail = freeThumbnail;
                mState = MANAGER_STATE_GET_THUMBNAIL;
            }
        }
        void NandSDCardManager::get_wiibanner(GetThumbnailCmd cmd) {
            if (cmd.mIsWiiNotSD) {
                if (cmd.mIdx >= pWorker->get_nand_save_num()) {
                    cmd.pSavedataBox->setBannerFileInfo(NULL);
                    return;
                }
                WiiBannerFileInfo* freeBanner = get_free_banner();
                TitleListing* listing = (TitleListing*)nw4r::ut::List_GetNth(&mNandListingList, cmd.mIdx);
                if (listing == NULL) {
                    cmd.pSavedataBox->setBannerFileInfo(NULL);
                    return;
                }

                ESTitleId titleId = listing->mWiiTitleId;
                freeBanner->setWiiTitleId(titleId);
                freeBanner->setSDTitleId(0);
                pWorker->get_nand_save_banner_async(titleId, freeBanner->getDataRef());
                pActiveSavedataBox = cmd.pSavedataBox;
                pActiveBanner = freeBanner;
                mState = MANAGER_STATE_GET_WIIBANNER;
            } else {
                if (cmd.mIdx >= pWorker->get_sd_save_num()) {
                    cmd.pSavedataBox->setBannerFileInfo(NULL);
                    return;
                }
                WiiBannerFileInfo* freeBanner = get_free_banner();
                TitleListing* listing = (TitleListing*)nw4r::ut::List_GetNth(&mSDListingList, cmd.mIdx);
                if (listing == NULL) {
                    cmd.pSavedataBox->setBannerFileInfo(NULL);
                    return;
                }
                freeBanner->setWiiTitleId(0);
                ESTitleId32 titleId = listing->mSDTitleId;
                freeBanner->setSDTitleId(titleId);
                pWorker->get_sd_save_banner_async(titleId, freeBanner->getDataRef());
                pActiveSavedataBox = cmd.pSavedataBox;
                pActiveBanner = freeBanner;
                mState = MANAGER_STATE_GET_WIIBANNER;
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
        COMMAND_FN(cmdMoveAppNandToSD(ChanAppBox* box),          CMD_MOVE_NANDAPP_TO_SD,              box, NULL, box->getThumbnail()->getWiiTitleId(), 0);
        COMMAND_FN(cmdMoveAppSDToNand(ChanAppBox* box),          CMD_MOVE_SDAPP_TO_NAND,              box, NULL, 0, box->getThumbnail()->getSDTitleId());
        COMMAND_FN(cmdMoveSaveNandToSD(SavedataBox* box),    CMD_MOVE_NANDSAVE_TO_SD, NULL,  box, box->getBanner()->getWiiTitleId(), 0);
        COMMAND_FN(cmdMoveSaveSDToNand(SavedataBox* box),    CMD_MOVE_SDSAVE_TO_NAND, NULL,  box, 0, box->getBanner()->getSDTitleId());
        // clang-format on

        Thumbnail* NandSDCardManager::get_free_thumbnail() {
            for (int i = 0; i < 15; i++) {
                if (mThumbnailArr[i].getWiiTitleId() == 0) {
                    if (mThumbnailArr[i].getSDTitleId() == 0) {
                        return &mThumbnailArr[i];
                    }
                }
            }
            return NULL;
        }
        WiiBannerFileInfo* NandSDCardManager::get_free_banner() {
            for (int i = 0; i < 15; i++) {
                if (mBannerArr[i].getWiiTitleId() == 0) {
                    if (mBannerArr[i].getSDTitleId() == 0) {
                        return &mBannerArr[i];
                    }
                }
            }
            return NULL;
        }
    }  // namespace scene
}  // namespace ipl
