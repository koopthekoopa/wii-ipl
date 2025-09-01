#include "system/iplBS2Manager.h"

#include "iplSystem.h"

#include "iplSound.h"

#include <revolution/os/OSBootInfo.h>
#include <private/os.h>

#include <revolution/wpad.h>

#define MAX_ENTRIES 34

namespace ipl {
    namespace bs2 {
        Manager::Manager(EGG::Heap* heap) :
        mIPLState(IPL_STATE_NO_DISK),
        mState(BS2_STT_NO_DISK),
        unk_0x0C(true),
        unk_0x0D(false),
        unk_0x0E(false),
        unk_0x0F(false),
        mbIsDiagDisc(false),
        unk_0x11(false),
        mbHasBanner(FALSE),
        mUnlockedState(BS2_STT_NO_DISK),
        mbStartUpdate(false),
        mEntries(NULL),
        mEntrySize(1),
        mEntryOffset(0) {
            mpBannerBuffer = new(heap, DEFAULT_ALIGN) u8[BS2_DEFAULT_BANNER_SIZE];
            BS2SetBannerBuffer(mpBannerBuffer, BS2_DEFAULT_BANNER_SIZE);
        }

        Manager::~Manager() {
            delete[] mpBannerBuffer;
        }

        int Manager::update() {
            if (mIPLState == IPL_STATE_UPDATE_FAIL || mIPLState == IPL_STATE_FATAL) {
                return mIPLState;
            }

            if (unk_0x0F && !System::isNandFull()) {
                BS2RestartStateMachine();

                unk_0x0C = true;
                mIPLState = IPL_STATE_NO_DISK;
                unk_0x0F = false;
            }
            else if (unk_0x0C) {
                BOOL old = OSDisableInterrupts();

                mState = BS2Tick();
                unk_0x11 = BS2Update_813801D4();

                splashTick(mState);
                execTick(mState);

                OSRestoreInterrupts(old);

                updateTick();

                if (mbIsDiagDisc && System::isRsrcLoaded()) {
                    __WPADReconnect(TRUE);
                    unk_0x0C = false;
                    bootNewSystem();
                }
            }

            return mIPLState;
        }

        u32 Manager::getDiskBannerBuffer(void** pBuffer) {
            *pBuffer = BS2GetBannerBufferAddr();
            return BS2GetBannerBufferLength();
        }

        void Manager::startUpdate() {
            unk_0x0D = true;
            mbStartUpdate = true;
            mPrevEntry = 0;
            mPrevFound = 0;

            // Get the update entries
            mEntries = BS2GetUpdateEntry();
            if (mEntries != NULL) {
                mEntrySize = 0;
                mEntryOffset = 0;

                // Add up each entry size
                u32 entryMax = BS2GetUpdateEntryNum();
                for (int i = 0; i < entryMax; i++) {
                    mEntrySize += mEntries[i].size;
                }
            }
            else {
                mEntrySize = 1;
                mEntryOffset = 0;
            }
        }

        void Manager::reserveRVLGame() {
            unk_0x0C = false;
        }

        void Manager::reserveGCGame() {
            unk_0x0C = false;
        }

        void Manager::startRVLGame()    { bootNewSystem(); }
        void Manager::startGCGame()     { bootNewSystem(); }

        void Manager::abort() {
            unk_0x0E = true;
            unk_0x0F = false;
        }

        void Manager::restart() {
            unk_0x0E = false;
            unk_0x0F = true;

            System::checkNandOverFlowFlagAsync();
        }

        bool Manager::checkParentalControl() {
            return BS2CheckParentalControl();
        }

        void Manager::getDiskInfo(char** diskID, char** diskMaker) {
            // Disc info is from BI read by BS2
            OSBootInfo* bi = (OSBootInfo*)OSPhysicalToCached(OS_ADDR_BOOT_INFO);

            if (diskID)     *diskID     = (char*)bi->DVDDiskID.gameName;
            if (diskMaker)  *diskMaker  = (char*)bi->DVDDiskID.company;
        }

        BOOL Manager::isTitleAvailable(ESTitleId titleId) const {
            u32 count = 0;

            BS2GetLockedTitles(NULL, &count);
            if (count != 0 && BS2IsTitleAvailable(titleId)) {
                return TRUE;
            }
            else {
                return FALSE;
            }
        }

        s32 Manager::getTicketFromNand(ESTitleId titleId, ESTicketView* pTicketView) const {
            return BS2GetTicketFromNand(titleId, pTicketView);
        }

        void Manager::loadLockedTitleAsync(ESTitleId titleId, ESTicketView& ticketView) {
            if (BS2StartLoadingTitle(titleId, &ticketView)) {
                mUnlockedState = BS2_STT_LOCKED_DISK;
            }
        }

        void Manager::splashTick(BS2State state) {
            switch (state) {
                case BS2_STT_NO_DISK:
                case BS2_STT_COVER_OPEN: {
                    mUnlockedState = BS2_STT_NO_DISK;
                    mIPLState = IPL_STATE_NO_DISK;
                    break;
                }
                case BS2_STT_START_GAME: {
                    mbHasBanner = BS2IsBannerAvailable();
                    mIPLState = IPL_STATE_RUN_RVL_GAME;
                    if (BS2IsDiagDisc()) {
                        mbIsDiagDisc = true;
                    }
                    break;
                }
                case BS2_STT_START_GC_GAME: {
                    mIPLState = IPL_STATE_RUN_GC_GAME;
                    break;
                }
                case BS2_STT_DATA_DISK: {
                    mbHasBanner = BS2IsBannerAvailable();
                    mUnlockedState = BS2_STT_DATA_DISK;
                    mIPLState = IPL_STATE_RUN_RVL_GAME;
                    break;
                }
                case BS2_STT_START_LOCKED_DISK: {
                    mUnlockedState = BS2_STT_START_LOCKED_DISK;
                    break;
                }
                case BS2_STT_WRONG_DISK:
                case BS2_STT_DIRTY_DISK:
                case BS2_STT_68: {
                    mUnlockedState = BS2_STT_NO_DISK;
                    mIPLState = IPL_STATE_BAD_DISK;
                    break;
                }
                case BS2_STT_RUN_UPDATE: {
                    mIPLState = IPL_STATE_START_UPDATE;
                    break;
                }
                case BS2_STT_RESET_SYSTEM: {
                    mIPLState = IPL_STATE_RESTART_IPL;
                    break;
                }
                case BS2_STT_64: {
                    unk_0x0C = false;
                    mIPLState = IPL_STATE_8;
                    break;
                }
                case BS2_STT_UPDATE_FAILED: {
                    mIPLState = IPL_STATE_UPDATE_FAIL;
                    break;
                }
                case BS2_STT_FATAL_ERROR: {
                    mUnlockedState = BS2_STT_NO_DISK;
                    mIPLState = IPL_STATE_FATAL;
                    break;
                }
                default: {
                    mIPLState = IPL_STATE_BUSY;
                    break;
                }
            }
        }

        void Manager::execTick(BS2State state) {
            if (unk_0x0D) {
                if (state == BS2_STT_RUN_UPDATE) {
                    BS2StartUpdate();
                }
                else {
                    mbStartUpdate = false;
                }
            }
            else if (unk_0x0E) {
                if (state == BS2_STT_NO_DISK
                 || state == BS2_STT_COVER_OPEN
                 || state == BS2_STT_55
                 || state == BS2_STT_WRONG_DISK
                 || state == BS2_STT_66
                 || state == BS2_STT_67
                 || state == BS2_STT_68
                 || state == BS2_STT_FATAL_ERROR
                 || state == BS2_STT_UPDATE_FAILED
                 || state == BS2_STT_DIRTY_DISK) {
                    unk_0x0C = false;
                    mIPLState = IPL_STATE_8;
                }
                else {
                    BS2AbortStateMachine();
                }
            }
            
            unk_0x0D = false;
            unk_0x0E = false;
        }

        void Manager::updateTick() {
            if (mbStartUpdate && BS2UpdateState() == 2) {
                int i;
                mEntryOffset = 0;

                // Find the current entry
                for (i = 0; i < BS2GetUpdateEntryNum(); i++) {
                    if (BS2GetCurrentEntry() != NULL) {
                        if (mEntries[i].titleId == BS2GetCurrentEntry()->titleId &&
                            mEntries[i].titleVersion == BS2GetCurrentEntry()->titleVersion) {
                            break;
                        }
                    }
                    mEntryOffset += mEntries[i].size;
                }

                int entry = i;

                // If the entry cannot be found then cancel update
                if (entry == BS2GetUpdateEntryNum()) {
                    mEntryOffset = mEntrySize;
                    mbStartUpdate = false;
                }
                // If the entry was the previous one then skip of
                else if (entry == mPrevEntry) {
                    mPrevFound++;

                    u32 skip = mEntries[entry].size;

                    u32 limit = (sizeof(BS2UpdateEntry) * MAX_ENTRIES) * mPrevFound;
                    if (limit <= skip) {
                        skip = limit;
                    }

                    mEntryOffset += skip;
                }
                // If the entry was found then use it
                else {
                    mPrevEntry = entry;
                    mPrevFound = 0;
                }
            }
        }

        void Manager::bootNewSystem() {
            while (WPADGetStatus() != WPAD_ERR_OK) {
                VIWaitForRetrace();
            }

            // Mute all sound
            if (System::isRsrcLoaded()) {
                snd::getSystem()->stopAllSound();
                snd::getSystem()->stopBannerSound();
                snd::getSystem()->calc();
            }

            // Close all content
            System::getNandManager()->closeContentsAll();

            // Turn off video
            VISetBlack(TRUE);
            VIFlush();
            VIWaitForRetrace();

            while (!__OSSyncSram()) {}
            
            // Run app!
            if (mState == BS2_STT_START_GAME) {
                BS2StartGame();
            }
            else if (mState == BS2_STT_START_GC_GAME) {
                BS2StartGCGame();
            }
            else if (mState == BS2_STT_RESET_SYSTEM) {
                OSReturnToMenu();
            }
            else if (mState == BS2_STT_START_LOCKED_DISK) {
                BS2StartGame();
            }
        }
    }
}
