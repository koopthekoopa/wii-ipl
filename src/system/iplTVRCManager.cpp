#include "system/iplTVRCManager.h"

#include "iplSound.h"
#include "iplSystem.h"

#include <cstdio>

#include "config.h"
#include "titledb.h"

#if defined(SYSMENU_REGION_USA)
#define TVRC_TITLE_ID TITLE_TVRC_USA
#elif defined(SYSMENU_REGION_EUR)
#define TVRC_TITLE_ID TITLE_TVRC_EUR
#elif defined(SYSMENU_REGION_JPN)
#define TVRC_TITLE_ID TITLE_TVRC_JPN
#elif defined(SYSMENU_REGION_KOR)
#define TVRC_TITLE_ID TITLE_TVRC_KOR
#endif

namespace ipl {
    TVRCManager* TVRCManager::m_handle;

    int lbl_8169877C = 0;

    TVRCManager::TVRCManager(EGG::Heap* heap) : mbInitialized(FALSE), mpDBFile(NULL), mbResetting(FALSE), mbPrepTVRC(FALSE), mState(STATE_0) {
        /* TV model for testing at EAD? */
        mModelMakerID = TVRC_MAKER_SHARP;
        mModelType = 2;

        unk_0x30 = OSGetTime();
        unk_0x40 = OSGetTime();
        unk_0x48 = 0;
        unk_0x04 = 0;

        m_handle = this;

        mCurrentCommand = TVRC_COMMAND_MAP_NONE;
        mpDatabaseArc = heap->alloc(TVRC_DATABASE_LENGTH, 4);

        for (int i = 0; i < TVRC_COMMAND_MAP_MAX; i++) {
            mCmdMaps[i] = -1;
        }

        loadResources_(heap);

        mbDisabled = FALSE;
        unk_0x7C = FALSE;

        TVRCSetRepeatTimeout(3000);
    }

    TVRCManager::~TVRCManager() {
        EGG::Heap::free(mpDatabaseArc, NULL);
    }

    BOOL TVRCManager::loadResources_(EGG::Heap* heap) {
        TVRCSettings* settings = NULL;
        u32 fileSize = 0;
        s32 result = NAND_RESULT_OK;
        char fileName[NAND_MAX_PATH];
        NANDFileInfo fileInfo;

        sprintf(fileName, "/title/%08x/%08x/data/settings.sav", (u32)ES_TITLE_TYPE(TVRC_TITLE_ID), (u32)ES_TITLE_CODE(TVRC_TITLE_ID));

        if (nand::wrapper::Open(fileName, &fileInfo, NAND_ACCESS_READ) != NAND_RESULT_OK) {
            goto open_err;
        }

        if (nand::wrapper::GetLength(&fileInfo, &fileSize) == NAND_RESULT_OK) {
            if (fileSize != 0 && fileSize < TVRC_DATABASE_LENGTH) {
                settings = (TVRCSettings*)heap->alloc(OSRoundUp32B(fileSize), DEFAULT_ALIGN);

                result = nand::wrapper::Read(&fileInfo, settings, fileSize);
            }
        }

        nand::wrapper::Close(&fileInfo);

        // why
        if (result <= 0) {
            goto fail;
        open_err:
            return FALSE;
        }

        if (result > 0 && settings != NULL && fileSize != 0) {
            BOOL checkFile = settings->magic != TVRC_SETTINGS_MAGIC || settings->unk_0x04 < 1;
            if (checkFile || settings->unk_0x08 == 0) {
                goto fail;
            }

            mModelMakerID = settings->modelMakerID;
            mModelType = settings->modelType;

            for (int i = 0; i < TVRC_COMMAND_MAP_MAX; i++) {
                s32 cmd = settings->commandMap[i] != (u8)TVRC_COMMAND_MAP_NONE ? settings->commandMap[i] : TVRC_COMMAND_MAP_NONE;
                mCmdMaps[i] = cmd;
            }
        }

        if (settings != NULL) {
            heap->free(settings);
        }

        mpDBFile = new (heap, 4) nand::SharedFile(heap, "tvrc_DB.arc", 2, 0, 0, TVRC_TITLE_ID, -1);

        return mbPrepTVRC;

    fail:
        if (settings != NULL) {
            heap->free(settings);
        }
        return FALSE;
    }

    void TVRCManager::initManagerTask(void* work) {
        TVRCManager* tvrcManager = ((TVRCManager*)work);

        BOOL hasTVRC = System::getSaveData()->hasChannel(TVRC_TITLE_ID) == TVRC_TITLE_ID ? TRUE : FALSE;
        if (hasTVRC) {
            if (tvrcManager->mpDBFile != NULL) {
                tvrcManager->mpDBFile->read();
                TVRCInit(tvrcManager->mpDBFile->getBuffer());

                if (TVRCSetModelType(tvrcManager->mModelMakerID, tvrcManager->mModelType, tvrcManager->mpDatabaseArc, TVRC_DATABASE_LENGTH)) {
                    tvrcManager->mbPrepTVRC = TRUE;
                }

                delete tvrcManager->mpDBFile;
                tvrcManager->mpDBFile = NULL;
            }
            tvrcManager->mbInitialized = TRUE;
            return;
        }

        if (tvrcManager->mpDBFile != NULL) {
            delete tvrcManager->mpDBFile;
            tvrcManager->mpDBFile = NULL;
        }
    }

    void TVRCManager::loadDatabase() {
        System::getTask3()->request(initManagerTask, this, NULL);
    }

    void TVRCManager::setEnable(BOOL flag) {
        mbDisabled = !flag;
    }

    s32 TVRCManager::getTrigger() {
        s32 trigger = TVRC_COMMAND_MAP_NONE;
        controller::Interface* con = System::getMasterController();
        BOOL press1 = con->downTrg(controller::REVO_BTN_1);
        BOOL press2 = con->downTrg(controller::REVO_BTN_2);
        BOOL hold1 = con->down(controller::REVO_BTN_1);
        BOOL hold2 = con->down(controller::REVO_BTN_2);
        BOOL pressUp = con->downTrg(controller::REVO_BTN_UP);
        BOOL pressDown = con->downTrg(controller::REVO_BTN_DOWN);
        BOOL holdUp = con->down(controller::REVO_BTN_UP);
        BOOL holdDown = con->down(controller::REVO_BTN_DOWN);
        BOOL pressRight = con->downTrg(controller::REVO_BTN_RIGHT);
        BOOL pressLeft = con->downTrg(controller::REVO_BTN_LEFT);
        BOOL holdRight = con->down(controller::REVO_BTN_RIGHT);
        BOOL holdLeft = con->down(controller::REVO_BTN_LEFT);
        if (press1 || press2 || pressUp || pressDown || pressRight || pressLeft) {
            if (press1) {
                trigger = TVRC_COMMAND_MAP_POWER_OFF;
            } else if (press2) {
                trigger = TVRC_COMMAND_MAP_CHANGE_INPUT;
            } else if (pressUp) {
                trigger = TVRC_COMMAND_MAP_UP;
            } else if (pressDown) {
                trigger = TVRC_COMMAND_MAP_DOWN;
            } else if (pressRight) {
                trigger = TVRC_COMMAND_MAP_RIGHT;
            } else if (pressLeft) {
                trigger = TVRC_COMMAND_MAP_LEFT;
            }
            unk_0x1C = 0;
        } else if (hold1 && mCurrentCommand == TVRC_COMMAND_MAP_POWER_OFF) {
            trigger = mCurrentCommand;
        } else if (hold2 && mCurrentCommand == TVRC_COMMAND_MAP_CHANGE_INPUT) {
            trigger = mCurrentCommand;
        } else if (holdUp && mCurrentCommand == TVRC_COMMAND_MAP_UP) {
            trigger = mCurrentCommand;
        } else if (holdDown && mCurrentCommand == TVRC_COMMAND_MAP_DOWN) {
            trigger = mCurrentCommand;
        } else if (holdRight && mCurrentCommand == TVRC_COMMAND_MAP_RIGHT) {
            trigger = mCurrentCommand;
        } else if (holdLeft && mCurrentCommand == TVRC_COMMAND_MAP_LEFT) {
            trigger = mCurrentCommand;
        } else {
            unk_0x1C = 0;
        }
        return trigger;
    }

    BOOL TVRCManager::snd_shutup(BOOL stopDma) {
        if (stopDma) {
            snd::getSystem()->shutup(TRUE);
            unk_0x40 = OSGetTime();
            return TRUE;
        } else {
            OSTick ticks = OSTicksToMilliseconds(OSDiffTick(OSGetTime(), unk_0x40));
            BOOL result = ticks >= 3;
            if (result) {
                snd::getSystem()->shutup(FALSE);
            }
            return result;
        }
    }

    s32 TVRCManager::trans_cmd(s32 command) {
        if (command == TVRC_COMMAND_MAP_NONE) {
            return command;
        } else {
            s32 i = mCmdMaps[command];
            if (i >= 0 && !TVRCIsValidCommand(i)) {
                i = TVRC_COMMAND_MAP_NONE;
            }
            return i;
        }
    }

    /* idk*/
#define IS_DISABLED (mbInitialized && mbPrepTVRC && mbDisabled && !mbResetting)
#define IS_ENABLED (mbInitialized && mbPrepTVRC && !mbDisabled && !mbResetting)

#define HBM_DISABLED (System::getHomeButtonMenu() == NULL || System::getHomeButtonMenu()->disable_byTVRC())

    void TVRCManager::update() {
        if (!mbInitialized) {
            return;
        }

        s32 trigger = getTrigger();

        if (IS_DISABLED && trans_cmd(trigger) != TVRC_COMMAND_MAP_NONE && !unk_0x7C) {
            if (unk_0x04 && HBM_DISABLED) {
                unk_0x7C = TRUE;
                unk_0x80 = 0;
                unk_0x74 = OSGetTick();
            }
            goto ret;
        }
        switch (mState) {
            case STATE_0: {
                if (!IS_ENABLED) {
                    break;
                }
                mState = STATE_1;
            }
            case STATE_1: {
                if (!IS_ENABLED) {
                    mState = STATE_0;
                    break;
                }
                if (trans_cmd(trigger) != TVRC_COMMAND_MAP_NONE && !TVRCIsActive() && HBM_DISABLED) {
                    mCurrentCommand = trigger;
                    unk_0x18 = 0;
                    unk_0x1C = 1;
                    mState = STATE_2;
                    unk_0x48 = OSGetTime();
                    goto fallthrough;
                }
                if (unk_0x48 != 0 && OSTicksToMilliseconds(OSDiffTick(OSGetTime(), unk_0x48)) >= 5000) {
                    unk_0x48 = 0;
                }
                break;
            }
            case STATE_2: {
            fallthrough:
                snd::getSystem()->muteOnBGM(10);
                System::getMasterController()->setForceInvalid(TRUE);
                unk_0x38 = OSGetTime();
                mState = STATE_3;
                break;
            }
            case STATE_3: {
                if (!snd::getSystem()->isSEActive(HOMESE_GOTO_MENU)) {
                    snd::getSystem()->pauseOnBGM();
                    lbl_8169877C = 5;
                    mState = STATE_4;
                }
                break;
            }
            case STATE_4: {
                if (mbResetting) {
                    lbl_8169877C = 0;
                }

                if (--lbl_8169877C <= 0 && !snd::getSystem()->isSEActive(HOMESE_GOTO_MENU)) {
                    snd_shutup(TRUE);
                    if (IS_ENABLED && !TVRCIsActive()) {
                        TVRCSendStartAsync(trans_cmd(mCurrentCommand));
                    }
                    unk_0x30 = OSGetTime();
                    mState = STATE_5;
                }
                break;
            }
            case STATE_5: {
                if (mbResetting || !TVRCIsActive() || OSTicksToMilliseconds(OSDiffTick(OSGetTime(), unk_0x30)) >= 30) {
                    if (!mbResetting && unk_0x1C) {
                        mState = STATE_4;
                        unk_0x18++;
                    } else {
                        TVRCSendStopAsync();
                        unk_0x30 = OSGetTime();
                        mState = STATE_12;
                    }
                }
                break;
            }
            case STATE_12: {
                if (!mbResetting && trans_cmd(trigger) != TVRC_COMMAND_MAP_NONE && !TVRCIsActive()) {
                    mCurrentCommand = trigger;
                    unk_0x18 = 0;
                    unk_0x1C = 1;
                    mState = STATE_2;
                    snd_shutup(FALSE);
                } else if (OSTicksToMilliseconds(OSDiffTick(OSGetTime(), unk_0x30)) >= 1000) {
                    snd::getSystem()->pauseOffBGM();
                    snd::getSystem()->muteOffBGM(180);
                    snd_shutup(FALSE);
                    if (System::getHomeButtonMenu() != NULL) {
                        System::getHomeButtonMenu()->enable_byTVRC();
                    }
                    mState = STATE_1;
                    System::getMasterController()->setForceInvalid(FALSE);
                }
                break;
            }
        }

    ret:
        return;
    }

    void TVRCManager::resetProcessAsync(BOOL flag) {
        mbResetting = flag;
    }

    BOOL TVRCManager::waitResetProcessCompleted() {
        return mState == 0;
    }

    BOOL TVRCManager::isTVRCChannel(u32 titleCode) {
        return titleCode == ES_TITLE_CODE(TVRC_TITLE_ID);
    }
}  // namespace ipl
