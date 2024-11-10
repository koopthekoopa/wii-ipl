#include "system/iplBS2Manager.h"

#include <revolution/os/OSBootInfo.h>
#include <revolution/wpad.h>

#include "system/iplSystem.h"

#include "sound/iplSound.h"

#define MAX_ENTRIES 34

namespace ipl {
    namespace bs2 {
        /**
         * @note Address: 0x813607A0
         * @note Size: 0x94
         */
        Manager::Manager(EGG::Heap* pHeap) :
        unk_0x04(1),
        mState(BS2_STATE_52),
        unk_0x0C(true),
        unk_0x0D(false),
        unk_0x0E(false),
        unk_0x0F(false),
        mbIsDiagDisc(false),
        unk_0x11(false),
        mbHasBanner(FALSE),
        unk_0x1C(BS2_STATE_52),
        mbStartUpdate(false),
        mEntries(NULL),
        mEntrySize(1),
        mEntryOffset(0) {

            mpBannerBuffer = new(pHeap, BUFFER_HEAP) u8[BS2_DEFAULT_BANNER_SIZE];
            BS2SetBannerBuffer(mpBannerBuffer, BS2_DEFAULT_BANNER_SIZE);
        }

        /**
         * @note Address: 0x81360834
         * @note Size: 0x64
         */
        Manager::~Manager() {
            delete[] mpBannerBuffer;
        }

        /**
         * @note Address: 0x81360898
         * @note Size: 0x10C
         */
        int Manager::update() {
            if ((unk_0x04 - 9) <= 1) {
                return unk_0x04;
            }

            if (unk_0x0F && !System::isNandFull()) {
                BS2RestartStateMachine();

                unk_0x0C = true;
                unk_0x04 = 1;
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

            return unk_0x04;
        }

        /**
         * @note Address: 0x813609E8
         * @note Size: 0x34
         */
        u32 Manager::getDiskBannerBuffer(void** pBuffer) {
            *pBuffer = BS2GetBannerBufferAddr();
            return BS2GetBannerBufferLength();
        }

        /**
         * @note Address: 0x81360A1C
         * @note Size: 0x9C
         */
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

        /**
         * @note Address: 0x81360AB8
         * @note Size: 0xC
         */
        void Manager::reserveRVLGame() {
            unk_0x0C = false;
        }

        /**
         * @note Address: 0x81360AC4
         * @note Size: 0xC
         */
        void Manager::reserveGCGame() {
            unk_0x0C = false;
        }

        /**
         * @note Address: 0x81360AD0
         * @note Size: 0x4
         */
        void Manager::startRVLGame() { bootNewSystem(); }

        /**
         * @note Address: 0x81360AD4
         * @note Size: 0x4
         */
        void Manager::startGCGame() { bootNewSystem(); }

        /**
         * @note Address: 0x81360AD8
         * @note Size: 0x14
         */
        void Manager::abort() {
            unk_0x0E = true;
            unk_0x0F = false;
        }

        /**
         * @note Address: 0x81360AEC
         * @note Size: 0x14
         */
        void Manager::restart() {
            unk_0x0E = false;
            unk_0x0F = true;

            System::checkNandOverFlowFlagAsync();
        }

        /**
         * @note Address: 0x81360B00
         * @note Size: 0x28
         */
        bool Manager::checkParentalControl() {
            return BS2CheckParentalControl();
        }

        /**
         * @note Address: 0x81360B28
         * @note Size: 0x28
         */
        void Manager::getDiskInfo(char** diskID, char** diskMaker) {
            OSBootInfo* bi = (OSBootInfo*)OSPhysicalToCached(BS2_BOOTINFO_ADDR);

            if (diskID)     *diskID     = (char*)bi->DVDDiskID.gameName;
            if (diskMaker)  *diskMaker  = (char*)bi->DVDDiskID.company;
        }

        /**
         * @note Address: 0x81360B50
         * @note Size: 0x74
         */
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

        /**
         * @note Address: 0x81360BC4
         * @note Size: 0x10
         */
        s32 Manager::getTicketFromNand(ESTitleId titleId, ESTicketView* pTicketView) const {
            return BS2GetTicketFromNand(titleId, pTicketView);
        }

        /**
         * @note Address: 0x81360BD4
         * @note Size: 0x48
         */
        void Manager::loadLockedTitleAsync(ESTitleId titleId, ESTicketView& ticketView) {
            if (BS2StartLoadingTitle(titleId, &ticketView)) {
                unk_0x1C = BS2_STATE_70;
            }
        }

        /**
         * @note Address: 0x81360C1C
         * @note Size: 0x124
         */
        void Manager::splashTick(BS2State state) {
            switch(state) {
                case BS2_STATE_52:
                case BS2_STATE_53: { 
                    unk_0x1C = BS2_STATE_52;
                    unk_0x04 = 1;
                    break;
                }
                case BS2_RUN_APP: {
                    mbHasBanner = BS2IsBannerAvailable();
                    unk_0x04 = 5;
                    if (BS2IsDiagDisc()) {
                        mbIsDiagDisc = true;
                    }
                    break;
                }
                case BS2_RUN_GC_APP: {
                    unk_0x04 = 6;
                    break;
                }
                case BS2_STATE_69: {
                    mbHasBanner = BS2IsBannerAvailable();
                    unk_0x1C = BS2_STATE_69;
                    unk_0x04 = 5;
                    break;
                }
                case BS2_RUN_LOCKED_APP: {
                    unk_0x1C = BS2_RUN_LOCKED_APP;
                    break;
                }
                case BS2_STATE_56:
                case BS2_STATE_59:
                case BS2_STATE_71: {
                    unk_0x1C = BS2_STATE_52;
                    unk_0x04 = 7;
                    break;
                }
                case BS2_RUN_UPDATE: {
                    unk_0x04 = 3;
                    break;
                }
                case BS2_RESTART: {
                    unk_0x04 = 4;
                    break;
                }
                case BS2_STATE_64: {
                    unk_0x0C = false;
                    unk_0x04 = 8;
                    break;
                }
                case BS2_STATE_58: {
                    unk_0x04 = 9;
                    break;
                }
                case BS2_STATE_57: {
                    unk_0x1C = BS2_STATE_52;
                    unk_0x04 = 10;
                    break;
                }
                default: {
                    unk_0x04 = 2;
                    break;
                }
            }
        }

        /**
         * @note Address: 0x81360D40
         * @note Size: 0xC4
         */
        void Manager::execTick(BS2State state) {
            if (unk_0x0D) {
                if (state == BS2_RUN_UPDATE) {
                    BS2StartUpdate();
                }
                else {
                    mbStartUpdate = false;
                }
            }
            else if (unk_0x0E) {
                if (state == BS2_STATE_52
                || state == BS2_STATE_53
                || state == BS2_STATE_55
                || state == BS2_STATE_56
                || state == BS2_STATE_66
                || state == BS2_STATE_67
                || state == BS2_STATE_68
                || (u32)(state - BS2_STATE_57) <= BS2_STATE_2) {
                    unk_0x0C = false;
                    unk_0x04 = 8;
                }
                else {
                    BS2AbortStateMachine();
                }
            }
            
            unk_0x0D = 0;
            unk_0x0E = false;
        }

        /**
         * @note Address: 0x81360E04
         * @note Size: 0x14C
         */
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

        /**
         * @note Address: 0x81360F50
         * @note Size: 0xF8
         */
        void Manager::bootNewSystem() {
            while (WPADGetStatus() != WPAD_ERR_OK) {
                VIWaitForRetrace();
            }

            if (System::isRsrcLoaded()) {
                snd::getSystem()->stopAllSound();
                snd::getSystem()->stopBannerSound();
                snd::getSystem()->calc();
            }

            System::getNandManager()->closeContentsAll();

            VISetBlack(TRUE);
            VIFlush();
            VIWaitForRetrace();

            while (!__OSSyncSram()) {}

            if (mState == BS2_RUN_APP) {
                BS2StartGame();
            }
            else if (mState == BS2_RUN_GC_APP) {
                BS2StartGCGame();
            }
            else if (mState == BS2_RESTART) {
                OSReturnToMenu();
            }
            else if (mState == BS2_RUN_LOCKED_APP) {
                BS2StartGame();
            }
        }
    }
}


