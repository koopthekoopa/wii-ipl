#include "system/iplChannelManager.h"
#include "system/iplController.h"

#include "utility/iplESMisc.h"

#include "iplSystem.h"

#include "titledb.h"

#include "config.h"

#include <revolution/sc.h>
#include <revolution/cx.h>

#include <cstdio>
#include <cstring>
#include <cwchar>

namespace ipl {
    namespace channel {
        u32     Manager::mNumFinished;
        int     Manager::mNumValidChannel;
        bool    Manager::mDiskChannelFixed;

        int     Manager::msCurPage;
        int     Manager::msCurIndex;

        static const u32 scLangLookup[SC_PRODUCT_AREA_MAX][16] = {
            // Japan
            {
                SC_LANG_JAPANESE, -1,
                0, 0, 0, 0,
                0, 0, 0, 0,
                0, 0, 0, 0,
                0, 0
            },
            // USA
            {
                SC_LANG_ENGLISH, SC_LANG_FRENCH, SC_LANG_SPANISH, -1,
                0, 0, 0, 0,
                0, 0, 0, 0,
                0, 0, 0, 0
            },
            // Europe
            {
                SC_LANG_ENGLISH, SC_LANG_FRENCH, SC_LANG_GERMAN, SC_LANG_SPANISH,
                SC_LANG_ITALIAN, SC_LANG_DUTCH, -1,
                0, 0, 0, 0,
                0, 0, 0, 0,
                0
            },
            {
                -1, 0, 0, 0,
                 0, 0, 0, 0,
                 0, 0, 0, 0,
                 0, 0, 0, 0
            },
            {
                -1, 0, 0, 0,
                 0, 0, 0, 0,
                 0, 0, 0, 0,
                 0, 0, 0, 0
            },
            {
                -1, 0, 0, 0,
                 0, 0, 0, 0,
                 0, 0, 0, 0,
                 0, 0, 0, 0
            },
            // Korean
            {
                SC_LANG_KOREAN, -1,
                0, 0, 0, 0,
                0, 0, 0, 0,
                0, 0, 0, 0,
                0, 0
            },
            {
                -1, 0, 0, 0,
                 0, 0, 0, 0,
                 0, 0, 0, 0,
                 0, 0, 0, 0
            },
            {
                -1, 0, 0, 0,
                 0, 0, 0, 0,
                 0, 0, 0, 0,
                 0, 0, 0, 0
            },
            {
                -1, 0, 0, 0,
                 0, 0, 0, 0,
                 0, 0, 0, 0,
                 0, 0, 0, 0
            },
            {
                -1, 0, 0, 0,
                 0, 0, 0, 0,
                 0, 0, 0, 0,
                 0, 0, 0, 0
            },
            // China
            {
                SC_PRODUCT_AREA_HKG, -1,
                0, 0, 0, 0,
                0, 0, 0, 0,
                0, 0, 0, 0,
                0, 0
            },
        };

        Manager::Manager(EGG::Heap* heap) :
        mpHeap(heap),
        mState(INIT),
        mbCanRefresh(0),
        unk_0x1B81(false),
        mbSetDiskBannerInfo(false),
        mPrevNandResult(NAND_RESULT_OK),
        mbLoadedChJump(false) { 
            mpLockedMsgFile = NULL;

            memset(mChannels, 0, sizeof(mChannels));

            // Setup buffers
            mpDiskIconBuf = new(mpHeap, DEFAULT_ALIGN) u8[0x19000];
            mpDiskBannerBuf = new(mpHeap, DEFAULT_ALIGN) u8[0x80000];
            mpDiskSoundBuf = new(mpHeap, DEFAULT_ALIGN) u8[0x80000];

            // Reset banner data
            for (int page = 0; page < MAX_CHANNEL_PAGE; page++) {
                for (int index = 0; index < MAX_CHANNEL_INDEX; index++) {
                    mChannels[page][index].metaHdr = NULL;
                    mChannels[page][index].arcData = NULL;
                    mChannels[page][index].bnrFile = NULL;
                }
            }

            // Reset banner data for temp channel
            memset(&mTmpChannel, 0, sizeof(mTmpChannel));
            mTmpChannel.metaHdr = NULL;
            mTmpChannel.arcData = NULL;
            mTmpChannel.bnrFile = NULL;

            // Reset disk banner data
            memset(&mDiskChanMetaHdr, 0, sizeof(mDiskChanMetaHdr));
            mDiskChanMetaHdr.blockHdr.unk_00 = TRUE;

            // Reset channel jump data
            memset(&mChJumpData, 0, sizeof(mChJumpData));

            mBS2State = System::getBS2Manager()->getIPLState();
        }

        Manager::~Manager() {
            int diskPage, diskIndex;
            getDiskChannelLocation(&diskPage, &diskIndex);

            // Goodbye disk banner data!
            delete[] mpDiskIconBuf;
            delete[] mpDiskBannerBuf;
            delete[] mpDiskSoundBuf;

            // Goodbye disk banner!
            for (int page = 0; page < MAX_CHANNEL_PAGE; page++) {
                for (int index = 0; index < MAX_CHANNEL_INDEX; index++) {
                    if (page != diskPage && index != diskIndex) {
                        delete mChannels[page][index].bnrFile;
                    }
                }
            }
        }

        void Manager::initManager() {
            System::getTask3()->request(initManagerTask, this, NULL);
        }

        void Manager::update() {
            if (mDiskChannelFixed) {
                updateDiskState();
            }

            switch (mState) {
                case INIT: {
                    mState = updateInitState();
                    break;
                }
                case SC_FLUSH: {
                    mState = updateWaitSCFlush();
                    break;
                }
                // case FINISH:
                default: {
                    break;
                }
            }
        }

        void Manager::reserveRefresh() {
            if (mNumFinished == MAX_CHANNEL_TOTAL) {
                mbCanRefresh = true;
            }
        }

        void Manager::refreshAsync() {
            if (mbCanRefresh) {
                mNumFinished = 0;
                mNumValidChannel = 0;
                mDiskChannelFixed = false;

                mState = INIT;

                for (int page = 0; page < MAX_CHANNEL_PAGE; page++) {
                    for (int index = 0; index < MAX_CHANNEL_INDEX; index++) {
                        mChannels[page][index].state = CHAN_STATE_UNLOADED;
                    }
                }

                System::getSaveData()->initManager();
                initManager();

                mbCanRefresh = false;
            }
        }

        BOOL Manager::isInitialized() const {
            return isLoadedPage(System::getSaveData()->getPrevPage());
        }

        BOOL Manager::isLoadedPage(int page) const {
            for (int column = 0; column < MAX_CHANNEL_INDEX; column++) {
                if (mChannels[page][column].state != CHAN_STATE_LOADED) {
                    return FALSE;
                }
            }

            if (page-1 >= 0) {
                int lastInRow[MAX_CHANNEL_COLUMN] = { 3, 7, 11 };
                for (int column = 0; column < MAX_CHANNEL_COLUMN; column++) {
                    if (mChannels[page-1][lastInRow[column]].state != CHAN_STATE_LOADED) {
                        return FALSE;
                    }
                }
            }

            if (page+1 < MAX_CHANNEL_PAGE) {
                int firstInRow[MAX_CHANNEL_COLUMN] = { 0, 4, 8 };
                for (int column = 0; column < MAX_CHANNEL_COLUMN; column++) {
                    if (mChannels[page+1][firstInRow[column]].state != CHAN_STATE_LOADED) {
                        return FALSE;
                    }
                }
            }

            return TRUE;
        }

        BOOL Manager::isLoaded(int page, int index) const {
            return mChannels[page][index].state == CHAN_STATE_LOADED;
        }

        BOOL Manager::isLoadedTmp() const {
            return mTmpChannel.state == CHAN_STATE_LOADED;
        }

        ESTitleId Manager::hasChannel(ESTitleId titleId, int* outPage, int* outIndex) const {
            u64 typeMask;
            if (ES_TITLE_TYPE(titleId) != 0) {
                typeMask = 0xFFFFFFFFFFFFFFFF;
            }
            else {
                typeMask = 0x00000000FFFFFFFF;
            }

            for (int page = 0; page < MAX_CHANNEL_PAGE; page++) {
                for (int index = 0; index < MAX_CHANNEL_INDEX; index++) {
                    if (mChannels[page][index].loadedBnr) {
                        if (mChannels[page][index].info.primaryType == channel::PRIMARY_TYPE_CHANNEL) {
                            ESTitleId tId = ES_TITLE_ID(mChannels[page][index].info.titleType, mChannels[page][index].info.titleCode);
                            if (titleId == (tId & typeMask) || TITLE_NO_REGION(tId & typeMask) == TITLE_NO_REGION(titleId & typeMask) && TITLE_REGION(titleId) == TITLE_REGION_ALL) {
                                if (outPage) {
                                    *outPage = page;
                                }
                                if (outIndex) {
                                    *outIndex = index;
                                }
                                return tId;
                            }
                        }
                    }
                }
            }
            return 0;
        }

        BOOL Manager::isEnableUrlJump() {
            ESTitleId operaTitle = hasChannel(ES_TITLE_CODE(TITLE_OPERA_ALL));
            if (operaTitle == TITLE_NULL) {
                return FALSE;
            }

            int page, index;
            titleIDtoPageIndex(ES_TITLE_ID(TITLE_TYPE_CHANNEL, operaTitle), &page, &index);

            return mChannels[page][index].tmdVersion >= 4;
        }

        BOOL Manager::setupUrlJump(const char* url) {
            if (isEnableUrlJump()) {
                return setupChannelJump(ES_TITLE_CODE(TITLE_OPERA_ALL), url);
            }
            return FALSE;
        }

        BOOL Manager::setupChannelJump(ESTitleId titleId, const char* data) {
            int page, index;

            ESTitleId title = hasChannel(titleId, &page, &index);
            if (title == 0) {
                return FALSE;
            }

            mChJumpPage = page;
            mChJumpIndex = index;

            // Save last channel page when returning to IPL
            System::getSaveData()->setLastPrevPage(mChJumpPage);

            if (data != NULL) {
                strncpy(mChJumpData, data, NWC24_MAX_CHJP_SIZE);
                mChJumpData[NWC24_MAX_CHJP_SIZE-1] = 0;
                mbLoadedChJump = true;
            }
            else {
                mbLoadedChJump = false;
            }

            return TRUE;
        }

        void* Manager::getDiskThumbnail(bool unk) {
            return getDiskBannerData(DISK_BANNERDATA_ICON, unk);
        }

        void* Manager::getDiskBanner(bool unk) {
            return getDiskBannerData(DISK_BANNERDATA_BANNER, unk);
        }

        void* Manager::getDiskSound(bool unk) {
            int diskPage, diskIndex;
            getDiskChannelLocation(&diskPage, &diskIndex);
            
            if (mChannels[diskPage][diskIndex].metaHdr->blockHdr.soundSize == 0) {
                return NULL;
            }
            else {
                return getDiskBannerData(DISK_BANNERDATA_SOUND, unk);
            }
        }

        nand::MetaFile* Manager::loadThumbnailAsync(EGG::Heap* heap, int page, int index) {
            if (!mChannels[page][index].loadedBnr || mChannels[page][index].info.primaryType == channel::PRIMARY_TYPE_DISK) {
                return NULL;
            }
            else {
                return System::getNandManager()->readMetaBodyAsync(heap, "/meta/icon.bin", &mChannels[page][index].arc, getTitleID(page, index),
                       mChannels[page][index].headerSize + mChannels[page][index].headerOffset, 0,
                       NULL, NULL, mChannels[page][index].ticketIdx);
            }
        }

        ESTitleId Manager::getTitleID(int page, int index) const {
            if (mChannels[page][index].loadedBnr) {
                return ES_TITLE_ID(mChannels[page][index].info.titleType, mChannels[page][index].info.titleCode);
            }
            else {
                return 0;
            }
        }

        nand::MetaFile* Manager::loadBannerAsync(EGG::Heap* heap, int page, int index) {
            if (!mChannels[page][index].loadedBnr || mChannels[page][index].info.primaryType == channel::PRIMARY_TYPE_DISK) {
                return NULL;
            }
            else {
                return System::getNandManager()->readMetaBodyAsync(heap, "/meta/banner.bin", &mChannels[page][index].arc, getTitleID(page, index),
                       mChannels[page][index].headerSize + mChannels[page][index].headerOffset, 0,
                       NULL, NULL, mChannels[page][index].ticketIdx);
            }
        }

        nand::MetaFile* Manager::loadSoundAsync(EGG::Heap* heap, int page, int index) {
            if (!mChannels[page][index].loadedBnr || mChannels[page][index].info.primaryType == channel::PRIMARY_TYPE_DISK
            || mChannels[page][index].metaHdr->blockHdr.soundSize == 0) {
                return NULL;
            }
            else {
                return System::getNandManager()->readMetaBodyAsync(heap, "/meta/sound.bin", &mChannels[page][index].arc, getTitleID(page, index),
                       mChannels[page][index].headerSize + mChannels[page][index].headerOffset, 0,
                       NULL, NULL, mChannels[page][index].ticketIdx);
            }
        }

        nand::SharedFile* Manager::loadThumbnailRsoAsync(EGG::Heap* heap, int page, int index) {
            if (!mChannels[page][index].loadedBnr || mChannels[page][index].info.primaryType == channel::PRIMARY_TYPE_DISK) {
                return NULL;
            }
            else {
                u32 rsoIndex = getChannel(page, index).loadedBnr ? mChannels[page][index].metaHdr->blockHdr.iconRSOIdx : 0;

                if (rsoIndex == 0) {
                    return NULL;
                }
                else {
                    return System::getNandManager()->readSharedAsync(heap, "/arc/icon.rso.lz7", rsoIndex, 0, 0, getTitleID(page, index),
                           mChannels[page][index].ticketIdx);
                }
            }
        }

        nand::SharedFile* Manager::loadBannerRsoAsync(EGG::Heap* heap, int page, int index) {
            if (!mChannels[page][index].loadedBnr || mChannels[page][index].info.primaryType == channel::PRIMARY_TYPE_DISK) {
                return NULL;
            }
            else {
                u32 rsoIndex = mChannels[page][index].loadedBnr ? mChannels[page][index].metaHdr->blockHdr.bannerRSOIdx : 0;

                if (rsoIndex == 0) {
                    return NULL;
                }
                else {
                    return System::getNandManager()->readSharedAsync(heap, "/arc/banner.rso.lz7", rsoIndex, 0, 0, getTitleID(page, index),
                           mChannels[page][index].ticketIdx);
                }
            }
        }

        nand::SharedFile* Manager::loadThumbnailCSAsync(EGG::Heap* heap, int page, int index) {
            if (!mChannels[page][index].loadedBnr || mChannels[page][index].info.primaryType == channel::PRIMARY_TYPE_DISK) {
                return NULL;
            }
            else {
                u32 rsoIndex = mChannels[page][index].loadedBnr ? mChannels[page][index].metaHdr->blockHdr.iconCSIdx : 0;

                if (rsoIndex == 0) {
                    return NULL;
                }
                else {
                    return System::getNandManager()->readSharedAsync(heap, "/arc/icon.cs.lz7", rsoIndex, 0, 0, getTitleID(page, index),
                           mChannels[page][index].ticketIdx);
                }
            }
        }

        nand::SharedFile* Manager::loadBannerCSAsync(EGG::Heap* heap, int page, int index) {
            if (!mChannels[page][index].loadedBnr || mChannels[page][index].info.primaryType == channel::PRIMARY_TYPE_DISK) {
                return NULL;
            }
            else {
                u32 rsoIndex = mChannels[page][index].loadedBnr ? mChannels[page][index].metaHdr->blockHdr.bannerCSIdx : 0;

                if (rsoIndex == 0) {
                    return NULL;
                }
                else {
                    return System::getNandManager()->readSharedAsync(heap, "/arc/banner.cs.lz7", rsoIndex, 0, 0, getTitleID(page, index),
                           mChannels[page][index].ticketIdx);
                }
            }
        }

        void Manager::loadLockedMsgAsync(int page, int index) {
            if (getUnlockChannelState(page, index) != UNLOCK_STATE_INVALID) {
                if (mpLockedMsgFile != NULL) {
                    delete mpLockedMsgFile;
                }

                mpLockedMsgFile = System::getNandManager()->readMetaBodyAsync(mpHeap, "/meta/diskInMsg.bin", &mChannels[page][index].arc, getTitleID(page, index),
                        mChannels[page][index].headerSize + mChannels[page][index].headerOffset, 0,
                        NULL, NULL, mChannels[page][index].ticketIdx);
            }
        }

        BOOL Manager::isLoadedLockedMsg() {
            if (mpLockedMsgFile == NULL) {
                return TRUE;
            }
            return mpLockedMsgFile->isFinished();
        }

        u16* Manager::getLockedMsg() {
            if (mpLockedMsgFile->checkData() != nand::RESULT_SUCCESS) {
                return NULL;
            }
            return getLockedMsgFromBuf((SDiskInMessages*)mpLockedMsgFile->getBuffer());
        }

        void Manager::moveChannelInfo(int page1, int index1, int page2, int index2) {
            SInfo blankInfo;
            blankInfo.clear();

            // Store channel to new position
            mChannels[page2][index2] = mChannels[page1][index1];

            // Clear channel in old position
            memset(&mChannels[page1][index1], 0, sizeof(SEntry));

            mChannels[page1][index1].state = CHAN_STATE_LOADED;

            // Save changes to iplsave.bin
            System::getSaveData()->setChanInfo(page2, index2, mChannels[page2][index2].info);
            System::getSaveData()->setChanInfo(page1, index1, blankInfo);
        }

        u16* Manager::getTitleName(int page, int index, int nameIndex) const {
            if (!mChannels[page][index].loadedBnr) {
                return NULL;
            }

            // Get title name via language
            if (mChannels[page][index].metaHdr->names[System::getLanguage()][nameIndex][0] != 0) {
                return mChannels[page][index].metaHdr->names[System::getLanguage()][nameIndex];
            }

            // If that failed? Load any available title name

            u32* lookup = (u32*)scLangLookup[System::getRegion()];

            for (int i = 0; i < ARRSIZE(scLangLookup[0]); i++) {
                u32 lang = lookup[i];
                if (mChannels[page][index].metaHdr->names[lang][nameIndex][0] != 0) {
                    return mChannels[page][index].metaHdr->names[lang][nameIndex];
                }

                if (lang == -1) {
                    break;
                }
            }

            // If that also failed? Force to load japanese name.
            return mChannels[page][index].metaHdr->names[lookup[SC_LANG_JAPANESE]][nameIndex];
        }

        BOOL Manager::checkNeedUpdate(int page, int index) const {
            if (mChannels[page][index].loadedBnr && mChannels[page][index].info.primaryType == PRIMARY_TYPE_CHANNEL
            && mChannels[page][index].info.titleType == TITLE_TYPE_SYSTEM_CHANNEL) {

                // If the news/forecast channel is below version 5
                // Or, if the shop channel is below version 2
                u32 code = mChannels[page][index].info.titleCode & 0xFFFFFF00;
                if ((code == ES_TITLE_CODE(TITLE_NEWS) || code == ES_TITLE_CODE(TITLE_WEATHER)) && mChannels[page][index].tmdVersion <= 5
                || code == ES_TITLE_CODE(TITLE_SHOPPING) && mChannels[page][index].tmdVersion <= 2) {
                    return TRUE;
                }
            }
            return FALSE;
        }

        BOOL Manager::isParentalRestricted(int page, int index) const {
            if (mChannels[page][index].loadedBnr && mChannels[page][index].info.primaryType == PRIMARY_TYPE_CHANNEL
            && mChannels[page][index].info.titleType == TITLE_TYPE_SYSTEM_CHANNEL) {

                // If news channel is verson 6 or above
                u32 code = mChannels[page][index].info.titleCode & 0xFFFFFF00;
                if (code == ES_TITLE_CODE(TITLE_NEWS) && mChannels[page][index].tmdVersion >= 6) {
                    return TRUE;
                }
            }
            return FALSE;
        }

        BOOL Manager::isInternetChannel(int page, int index) const {
            if (mChannels[page][index].loadedBnr && mChannels[page][index].info.primaryType == PRIMARY_TYPE_CHANNEL) {

                u32 code = mChannels[page][index].info.titleCode & 0xFFFFFF00;
                if (code == ES_TITLE_CODE(TITLE_OPERA)) {
                    return TRUE;
                }
            }
            return FALSE;
        }

        void Manager::setDiskChannelName() {
            int diskPage, diskIndex;
            getDiskChannelLocation(&diskPage, &diskIndex); // unused

            for (u32 i = 0; i <= SC_LANG_MAX-1; i++) {
                wcsncpy((wchar_t*)mDiskChanMetaHdr.names[i][NAME_INDEX_TITLE], System::getMessage(MESG_DISK_CHANNEL_NAME), META_CHANNEL_NAME_LENGTH);
                mDiskChanMetaHdr.names[i][NAME_INDEX_TITLE][META_CHANNEL_NAME_LENGTH] = 0;
            }
        }

        void Manager::getDiskChannelLocation(int* page, int* index) {
            *page = *index = 0;
            for (int i = 0; i < MAX_CHANNEL_PAGE; i++) {
                for (int j = 0; j < MAX_CHANNEL_INDEX; j++) {
                    if (mChannels[i][j].info.flags == 0x0F) {
                        *page = i;
                        *index = j;
                        return;
                    }
                }
            }
        }

        int Manager::getUnlockChannelState(int page, int index) const {
            if (!mChannels[page][index].loadedBnr || mChannels[page][index].info.primaryType == PRIMARY_TYPE_DISK) {
                return UNLOCK_STATE_INVALID;
            }

            ESTitleId title = getTitleID(page, index);
            if (title == 0) {
                return UNLOCK_STATE_INVALID;
            }

            if (ES_TITLE_TYPE(title) == TITLE_TYPE_DISC) {
                if (System::getBS2Manager()->getUnlockedState() == BS2_STT_START_LOCKED_DISK) {
                    return UNLOCK_STATE_4;
                }
                if (System::getBS2Manager()->getUnlockedState() == BS2_STT_LOCKED_DISK) {
                    return UNLOCK_STATE_3;
                }
                return (System::getBS2Manager()->isTitleAvailable(title) != FALSE) + 1;
            }
            else {
                return UNLOCK_STATE_INVALID;
            }
        }

        int Manager::getUnlockTicket(int page, int index, ESTicketView* ticket) const {
            return System::getBS2Manager()->getTicketFromNand(getTitleID(page, index), ticket);
        }

        void Manager::loadLockedTitleAsync(int page, int index, ESTicketView& ticket) const {
            System::getBS2Manager()->loadLockedTitleAsync(getTitleID(page, index), ticket);
        }

        void Manager::clearRsoExBuf(int page, int index) {
            memset(mChannels[page][index].rsoExBuf, 0, sizeof(mChannels[page][index].rsoExBuf));
        }

        void Manager::initManagerTask(void* work) {
            channel::Manager* mgr = static_cast<channel::Manager*>(work);

            int list[4];

            // Turn channel layout to order list
            mgr->makeLoadOrderList(list);

            // Load all meta headers
            for (int i = 0; i < 4; i++) {
                int page = list[i];

                for (int column = 0; column < MAX_CHANNEL_INDEX; column++) {
                    mgr->loadMetaHeaderAsync(page, column);
                }

                if (page-1 >= 0) {
                    int lastInRow[MAX_CHANNEL_COLUMN] = { 3, 7, 11 };
                    for (int column = 0; column < MAX_CHANNEL_COLUMN; column++) {
                        mgr->loadMetaHeaderAsync(page-1, lastInRow[column]);
                    }
                }

                if (page+1 < MAX_CHANNEL_PAGE) {
                    int firstInRow[MAX_CHANNEL_COLUMN] = { 0, 4, 8 };
                    for (int column = 0; column < MAX_CHANNEL_COLUMN; column++) {
                        mgr->loadMetaHeaderAsync(page+1, firstInRow[column]);
                    }
                }
            }

            // Load temporary title meta header
            u64 tmpTitle = SCGetTmpTitleID();
            if (tmpTitle != 0) {
                mgr->mTmpChannel.info.titleType = ES_TITLE_TYPE_NOMASK(tmpTitle);
                mgr->mTmpChannel.info.titleCode = ES_TITLE_CODE_NOMASK(tmpTitle);

                mgr->loadTmpMetaHeaderAsync(tmpTitle);
            }
            else {
                if (mgr->mTmpChannel.bnrFile != NULL) {
                    delete mgr->mTmpChannel.bnrFile;
                }
                memset(&mgr->mTmpChannel, 0, sizeof(mgr->mTmpChannel));
            }
        }

        void Manager::loadTmpMetaHeader(ESTitleId titleId) {
            mTmpChannel.info.titleCode = ES_TITLE_CODE_NOMASK(titleId);
            mTmpChannel.info.titleType = ES_TITLE_TYPE_NOMASK(titleId);

            mTmpChannel.state = CHAN_STATE_UNLOADED;
            System::getTask3()->request(cbLoadTmpMetaHeader, this, NULL);
        }

        void Manager::cbLoadTmpMetaHeader(void* work) {
            channel::Manager* mgr = static_cast<channel::Manager*>(work);
            mgr->loadTmpMetaHeaderAsync(ES_TITLE_ID(mgr->mTmpChannel.info.titleType, mgr->mTmpChannel.info.titleCode));
        }

        void Manager::loadTmpMetaHeaderAsync(ESTitleId titleId) {
            if (mTmpChannel.state != CHAN_STATE_UNLOADED) {
                return;
            }

            // It is a normal channel
            mTmpChannel.info.primaryType = PRIMARY_TYPE_CHANNEL;
            mTmpChannel.info.flags = 0x0E;

            s32 ret = utility::ESMisc::GetValidTicketIndex(System::getMem2Sys(), titleId);
            if (ret == -1) {
                ret = 0;
                mTmpChannel.missingTicket = TRUE;
            }

            mTmpChannel.ticketIdx = ret;

            ESTmdView* tmdView = NULL;

            // Read TMD
            ret = utility::ESMisc::GetTmdView(System::getMem2Sys(), titleId, &tmdView);
            if (ret != ES_ERR_OK) {
                IPLErrorLogAndDisplay(MESG_ERR_FILE, "ES", ret, 1307);
            }

            // Save version
            mTmpChannel.tmdVersion = tmdView->head.titleVersion;

            if (tmdView != NULL) {
                System::getMem2Sys()->free(tmdView);
            }

            // Read meta header
            if (mTmpChannel.bnrFile != NULL) {
                delete mTmpChannel.bnrFile;
            }
            mTmpChannel.bnrFile = System::getNandManager()->readMetaHeaderAsync(mpHeap, titleId, 0, sizeof(SChanMgrMetaHeader)+0x100,
                                                                                cbReadTmpMetaHeader, &mTmpChannel, mTmpChannel.ticketIdx);
            mTmpChannel.state = CHAN_STATE_LOADED_META;
        }

        void Manager::cbReadTmpMetaHeader(void* work) {
            SEntry* channel = (SEntry*)work;
            nand::MetaFile* bnrFile = channel->bnrFile;

            // Check is file was read correctly
            if (bnrFile->inNand() && (bnrFile->checkData() == nand::RESULT_VERIFY_ERROR || channel->bnrFile->checkData() == nand::RESULT_OPEN_ERROR)) {
                memset(channel, 0, sizeof(SEntry));
                delete channel->bnrFile;
                channel->bnrFile = NULL;
            }
            else {
                // Search for meta header
                channel->headerOffset = System::getChannelManager()->searchMetaHeader(channel->bnrFile->getBuffer() + META_PAD);
                if (channel->headerOffset < 0 || !System::getChannelManager()->checkHeaderBase((u8*)(channel->headerOffset + channel->bnrFile->getBuffer() + META_PAD), &channel->headerSize)) {
                    memset(channel, 0, sizeof(SEntry));
                    delete channel->bnrFile;
                    channel->bnrFile = NULL;
                }
                else {
                    bnrFile = channel->bnrFile;
                    channel->metaHdr = (SChanMgrMetaHeader*)(bnrFile->getBuffer() + channel->headerOffset);

                    // Verify file
                    if ((bnrFile->inNand() && bnrFile->checkData() == nand::RESULT_VERIFY_ERROR) || !System::getChannelManager()->checkHeaderMD5((u8*)channel->metaHdr)) {
                        memset(channel, 0, sizeof(SEntry));
                    }
                    else {
                        // Alright, prepare the ARC!
                        channel->arcData = (u8*)(channel->bnrFile->getBuffer() + channel->headerSize + channel->headerOffset);
                        ARCInitHandle(channel->arcData, &channel->arc);
                        channel->loadedBnr = true;
                    }
                }
            }

            channel->state = CHAN_STATE_LOADED;
        }

        void Manager::loadMetaHeaderAsync(int page, int index) {
            if (mTmpChannel.state != CHAN_STATE_UNLOADED) {
                return;
            }

            SInfo info = System::getSaveData()->getChanInfo(page, index);
            mChannels[page][index].info = info;

            if (info.primaryType == channel::PRIMARY_TYPE_NONE) {
                // Invalid!!!!
                memset(&mChannels[page][index], 0, sizeof(SEntry));
                mNumFinished++;
                mChannels[page][index].state = CHAN_STATE_LOADED;
            }
            else if (info.primaryType == channel::PRIMARY_TYPE_DISK) {
                // Load disk banner
                mChannels[page][index].loadedBnr = true;
                if (mChannels[page][index].info.flags == 0x0F) {
                    if (mChannels[page][index].metaHdr == NULL) {
                        mChannels[page][index].metaHdr = &mDiskChanMetaHdr;
                    }
                    mDiskChannelFixed = true;
                }
                mNumFinished++;
                mNumValidChannel++;
                mChannels[page][index].state = CHAN_STATE_LOADED;
            }
            else {
                // Load channel banner
                ESTitleId titleId = ES_TITLE_ID(mChannels[page][index].info.titleType, mChannels[page][index].info.titleCode);
                s32 ret = utility::ESMisc::GetValidTicketIndex(System::getMem2Sys(), titleId);
                if (ret == -1) {
                    ret = 0;
                    mChannels[page][index].missingTicket = TRUE;
                }

                mChannels[page][index].ticketIdx = ret;

                // Get tmd
                ESTmdView* tmdView = NULL;
                ret = utility::ESMisc::GetTmdView(System::getMem2Sys(), titleId, &tmdView);
                if (ret != ES_ERR_OK) {
                    IPLErrorLogAndDisplay(MESG_ERR_FILE, "ES", ret, 1468);
                }

                // Save tmd version
                mChannels[page][index].tmdVersion = tmdView->head.titleVersion;
                if (tmdView != NULL) {
                    System::getMem2Sys()->free(tmdView);
                }

                // Load meta header
                if (mChannels[page][index].bnrFile != NULL) {
                    delete mChannels[page][index].bnrFile;
                }
                mChannels[page][index].bnrFile = System::getNandManager()->readMetaHeaderAsync(mpHeap, titleId, 0, sizeof(SChanMgrMetaHeader)+0x100,
                                                                                            cbReadMetaHeader, &mChannels[page][index], mChannels[page][index].ticketIdx);
                
                mChannels[page][index].state = CHAN_STATE_LOADED_META;
            }
        }

        void Manager::cbReadMetaHeader(void* work) {
            SEntry* channel = (SEntry*)work;
            nand::MetaFile* bnrFile = channel->bnrFile;

            // Check is file was read correctly
            if (bnrFile->inNand() && (bnrFile->checkData() == nand::RESULT_VERIFY_ERROR || channel->bnrFile->checkData() == nand::RESULT_OPEN_ERROR)) {
                memset(channel, 0, sizeof(SEntry));
                delete channel->bnrFile;
                channel->bnrFile = NULL;
            }
            else {
                // Search for meta header
                channel->headerOffset = System::getChannelManager()->searchMetaHeader(channel->bnrFile->getBuffer() + META_PAD);
                if (channel->headerOffset < 0 || !System::getChannelManager()->checkHeaderBase((u8*)(channel->headerOffset + channel->bnrFile->getBuffer() + META_PAD), &channel->headerSize)) {
                    memset(channel, 0, sizeof(SEntry));
                    delete channel->bnrFile;
                    channel->bnrFile = NULL;
                }
                else {
                    bnrFile = channel->bnrFile;
                    channel->metaHdr = (SChanMgrMetaHeader*)(bnrFile->getBuffer() + channel->headerOffset);

                    // Verify file
                    if ((bnrFile->inNand() && bnrFile->checkData() == nand::RESULT_VERIFY_ERROR) || !System::getChannelManager()->checkHeaderMD5((u8*)channel->metaHdr)) {
                        memset(channel, 0, sizeof(SEntry));
                    }
                    else {
                        // Alright, prepare the ARC!
                        channel->arcData = (u8*)(channel->bnrFile->getBuffer() + channel->headerSize + channel->headerOffset);
                        ARCInitHandle(channel->arcData, &channel->arc);
                        channel->loadedBnr = true;

                        // Got a valid channel here!
                        mNumValidChannel++;
                    }
                }
            }

            mNumFinished++;
            channel->state = CHAN_STATE_LOADED;
        }

        void Manager::makeLoadOrderList(int* list) const {
            int prevPage = System::getSaveData()->getPrevPage();
            *list = prevPage;
            int var1 = prevPage+1;

            int i = 1;
            do {
                int var2 = var1 - prevPage;
                if (var2 >= 0) {
                    if (var1 < 4) {
                        list[i++] = var1;
                    }
                    var1 = prevPage - var2;
                }
                else {
                    if (var1 >= 0) {
                        list[i++] = var1;
                    }
                    var1 = (prevPage - var2) + 1;
                }
            } while (i != MAX_CHANNEL_PAGE);
        }

        int Manager::updateInitState() {
            int result = 0;

            // Update SC
            if (mNumFinished == MAX_CHANNEL_TOTAL) {
                u32 installedCount = 0;
                SCGetInstalledChannelAppCount(&installedCount);

                if (mNumValidChannel != installedCount) {
                    SCSetInstalledChannelAppCount(mNumValidChannel);
                    SCSetFreeChannelAppCount(MAX_CHANNEL_TOTAL - mNumValidChannel);
                    result = SC_FLUSH;
                }
                else {
                    result = FINISH;
                }
            }

            return result;
        }

        int Manager::updateWaitSCFlush() {
            int result = SC_FLUSH;

            // Flush SC changes
            BOOL enabled = OSDisableInterrupts();
            if (SCCheckStatus() != SC_STATUS_BUSY) {
                SCFlushAsync(NULL);
                result = FINISH;
            }
            OSRestoreInterrupts(enabled);

            return result;
        }

        void Manager::updateDiskState() {
            int state = System::getBS2Manager()->getIPLState();
            if (state == bs2::IPL_STATE_RUN_RVL_GAME && mBS2State != bs2::IPL_STATE_RUN_RVL_GAME) {
                mbSetDiskBannerInfo = setDiskBannerInfo(false);
                unk_0x1B81 = true;
            }
            else if (state != bs2::IPL_STATE_RUN_RVL_GAME && state != mBS2State) {
                setDiskBannerInfo(true);
            }

            mBS2State = state;
        }

        int Manager::searchMetaHeader(const u8* buffer) {
            const char* magic = "IMET";
            int next = 0;

            for (int i = 0; i < ((META_PAD * 2) + 0x20); i++, buffer++) {
                // Found one character?
                if (*buffer == magic[next]) {
                    // Look for the next one
                    next++;

                    // Found them all? Well theres the offset!
                    if (next == 4) {
                        return i - 3;
                    }
                }
                else {
                    // Otherwise, try again!!
                    next = 0;
                }
            }
            return -1;
        }

        BOOL Manager::checkHeaderBase(const u8* buffer, u32* headerSize) {
            SMetaBlockHeader* header = (SMetaBlockHeader*)buffer;

            int myHdrSize = header->headerSize;
            if (headerSize != NULL) {
                *headerSize = header->headerSize;
            }

            // Verify magic and file size
            if (!NAND_CHECK_MAGIC4(header->magic, 'I','M','E','T') || myHdrSize < sizeof(SMetaBlockHeader) || myHdrSize > sizeof(SChanMgrMetaHeader)) {
                return 0;
            }

            // Verify version
            return header->version == META_CURRENT_VERSION;
        }

        BOOL Manager::checkHeaderMD5(u8* buffer) {
            SChanMgrMetaHeader* header = (SChanMgrMetaHeader*)buffer;
            u32 size = header->blockHdr.headerSize;

            NETMD5Sum md5sum;

            // Copy sum
            for (int i = 0; i < NET_MD5_DIGEST_SIZE; i++) {
                md5sum[i] = buffer[(size - NET_MD5_DIGEST_SIZE)+i];
            }

            // Reset padding
            memset(buffer, 0, META_PAD);
            // Do not include sum in buffer
            memset(buffer + (size - NET_MD5_DIGEST_SIZE), 0, NET_MD5_DIGEST_SIZE);

            // Verify MD5
            return calcMD5(md5sum, buffer, size);
        }

        BOOL Manager::calcMD5(const u8* sum, const u8* buffer, u32 length) const {
            NETMD5Sum md5;
            NETCalcMD5(md5, buffer, length);

            for (int i = 0; i < NET_MD5_DIGEST_SIZE; i++) {
                if (md5[i] != sum[i]) {
                    return FALSE;
                }
            }

            return TRUE;
        }

        bool Manager::setDiskBannerInfo(bool useDiskChan) {
            int diskPage, diskIndex;
            getDiskChannelLocation(&diskPage, &diskIndex);

            if (useDiskChan) {
                mChannels[diskPage][diskIndex].metaHdr = &mDiskChanMetaHdr;
                for (int i = 0; i < DISK_BANNERDATA_MAX; i++) {
                    mChannels[diskPage][diskIndex].loadedBnrData[i] = false;
                }
                return true;
            }
            else {
                if (!System::getBS2Manager()->diskHasBanner()) {
                    return false;
                }

                SChanMgrMetaHeader* metaBnr;
                System::getBS2Manager()->getDiskBannerBuffer((void**)&metaBnr);

                if (!checkHeaderBase((const u8*)&metaBnr->blockHdr)) {
                    return false;
                }

                if (!checkHeaderMD5((u8*)metaBnr)) {
                    return false;
                }

                metaBnr->blockHdr.unk_00 = 1;

                mChannels[diskPage][diskIndex].headerSize = metaBnr->blockHdr.headerSize;
                mChannels[diskPage][diskIndex].metaHdr = metaBnr;
                mChannels[diskPage][diskIndex].arcData = (u8*)(metaBnr) + mChannels[diskPage][diskIndex].headerSize;

                ARCInitHandle(mChannels[diskPage][diskIndex].arcData, &mChannels[diskPage][diskIndex].arc);
            
                return true;
            }
        }

        void* Manager::getDiskBannerData(int index, bool unk) {
            u8** destData;
            u32 readSize;
            ARCFileInfo readFile;

            if (unk) {
                unk_0x1B81 = false;
            }

            int diskPage, diskIndex;
            getDiskChannelLocation(&diskPage, &diskIndex);

            if (mChannels[diskPage][diskIndex].arcData == NULL || !mbSetDiskBannerInfo) {
                return NULL;
            }

            // Open file
            if (index == DISK_BANNERDATA_ICON) {
                ARCOpen(&mChannels[diskPage][diskIndex].arc, "/meta/icon.bin", &readFile);
                destData = &mpDiskIconBuf;
                readSize = mChannels[diskPage][diskIndex].metaHdr->blockHdr.iconSize;
            }
            else if (index == DISK_BANNERDATA_BANNER) {
                ARCOpen(&mChannels[diskPage][diskIndex].arc, "/meta/banner.bin", &readFile);
                destData = &mpDiskBannerBuf;
                readSize = mChannels[diskPage][diskIndex].metaHdr->blockHdr.bannerSize;
            }
            else if (index == DISK_BANNERDATA_SOUND) {
                ARCOpen(&mChannels[diskPage][diskIndex].arc, "/meta/sound.bin", &readFile);
                destData = &mpDiskSoundBuf;
                readSize = mChannels[diskPage][diskIndex].metaHdr->blockHdr.soundSize;
            }

            u8* srcData = (u8*)mChannels[diskPage][diskIndex].arcData + ARCGetStartOffset(&readFile);
            MD5Head* md5Block = (MD5Head*)srcData;

            u32 fileLen = 0;
            NETMD5Sum md5sum;

            // Verify MD5 magic
            if (NAND_CHECK_MAGIC4(md5Block->magic, 'I','M','D','5')) {
                fileLen = md5Block->length;
                memcpy(md5sum, md5Block->md5, NET_MD5_DIGEST_SIZE);
            }
            else {
                return NULL;
            }

            // (Fakematch??) Using both 0x20 and sizeof(MD5Head) otherwise it does not match
            if (NAND_CHECK_MAGIC4((u8*)srcData + 0x20, 'L','Z','7','7')) {
                if (!mChannels[diskPage][diskIndex].loadedBnrData[index]) {
                    // Uncompress data
                    CXGetUncompressedSize((u8*)srcData + sizeof(MD5Head) + 4);
                    CXUncompressLZ((u8*)srcData + 0x20 + 4, *destData);

                    mChannels[diskPage][diskIndex].loadedBnrData[index] = true;

                    // Verify MD5
                    if (!calcMD5(md5sum, (u8*)srcData + sizeof(MD5Head), fileLen)) {
                        return NULL;
                    }
                }
            }
            else {
                if (!mChannels[diskPage][diskIndex].loadedBnrData[index]) {
                    memcpy(*destData, (u8*)srcData + sizeof(MD5Head), readSize);
                    
                    mChannels[diskPage][diskIndex].loadedBnrData[index] = true;

                    // Verify MD5
                    if (!calcMD5(md5sum, *destData, fileLen)) {
                        return NULL;
                    }
                }
            }

            DCStoreRange(*destData, readSize);
            return *destData;
        }

        void Manager::titleIDtoPageIndex(ESTitleId titleId, int* outPage, int* outIndex) const {
            for (int page = 0; page < MAX_CHANNEL_PAGE; page++) {
                for (int index = 0; index < MAX_CHANNEL_INDEX; index++) {
                    if (mChannels[page][index].loadedBnr) {
                        if (mChannels[page][index].info.primaryType == PRIMARY_TYPE_CHANNEL) {
                            if (ES_TITLE_ID(mChannels[page][index].info.titleType, mChannels[page][index].info.titleCode) == titleId) {
                                *outPage = page;
                                *outIndex = index;
                                return;
                            }
                        }
                    }
                }
            }

            *outPage = -1;
            *outIndex = -1;
        }

        u16* Manager::getLockedMsgFromBuf(const SDiskInMessages* diskInMsgs) const {
            // Get message via language
            if (diskInMsgs->messages[System::getLanguage()][0] != 0) {
                return (u16*)diskInMsgs->messages[System::getLanguage()];
            }

            // If that failed? Load any available message

            u32* lookup = (u32*)scLangLookup[System::getRegion()];

            for (int i = 0; i < ARRSIZE(scLangLookup[0]); i++) {
                u32 lang = lookup[i];
                if (diskInMsgs->messages[lang][0] != 0) {
                    return (u16*)diskInMsgs->messages[lang];
                }

                if (lookup[i] == -1) {
                    break;
                }
            }

            // If that also failed? Force to load japanese message.
            return (u16*)diskInMsgs->messages[lookup[SC_LANG_JAPANESE]];
        }

        // Unused?!!! force.
        #pragma push
        #pragma force_active on

        BOOL Manager::nand_error_handling(int code) {
            BOOL result = FALSE;

            mPrevNandResult = code;

            if (code >= NAND_RESULT_OK) {
                return TRUE;
            }

            switch (code) {
                case NAND_RESULT_AUTHENTICATION:
                case NAND_RESULT_NOEXISTS:
                case NAND_RESULT_ECC_CRIT: {
                    break;
                }
                case NAND_RESULT_EXISTS: {
                    result = TRUE;
                    break;
                }
                case NAND_RESULT_CORRUPT: {
                    IPLErrorDisplay(MESG_ERR_NAND);
                    break;
                }
                case NAND_RESULT_OPENFD:
                case NAND_RESULT_NOTEMPTY:
                case NAND_RESULT_MAXFILES:
                case NAND_RESULT_MAXFD:
                case NAND_RESULT_MAXBLOCKS:
                case NAND_RESULT_INVALID:
                case NAND_RESULT_INIT_FAIL:
                default: {
                    IPLErrorLogAndDisplay(MESG_ERR_FILE, "NAND", code, 2304);
                    break;
                }
            }

            return result;
        }

        #pragma pop

        SEntry* Manager::fn_8133A4E0(ESTitleId titleId) {
            for (int page = 0; page < MAX_CHANNEL_PAGE; page++) {
                for (int index = 0; index < MAX_CHANNEL_INDEX; index++) {
                    if (mChannels[page][index].loadedBnr) {
                        if (ES_TITLE_ID(mChannels[page][index].info.titleType, mChannels[page][index].info.titleCode) == titleId) {
                            return &mChannels[page][index];
                        }
                    }
                }
            }

            if (mTmpChannel.loadedBnr) {
                if (ES_TITLE_ID(mTmpChannel.info.titleType, mTmpChannel.info.titleCode) == titleId) {
                    return &mTmpChannel;
                }
            }

            return NULL;
        }

        u32 Manager::fn_8133A57C(ESTitleId titleId) {
            SEntry* channel = fn_8133A4E0(titleId);
            if (channel != NULL) {
                return channel->metaHdr->blockHdr.bannerCSIdx;
            }
            else {
                return 0;
            }
        }

        u32 Manager::fn_8133A5B8(ESTitleId titleId) {
            SEntry* channel = fn_8133A4E0(titleId);
            if (channel != NULL) {
                return channel->metaHdr->blockHdr.soundSize;
            }
            else {
                return 0;
            }
        }

        BOOL Manager::fn_8133A5F0(ESTitleId titleId) {
            SEntry* channel = fn_8133A4E0(titleId);
            if (channel != NULL && (channel->metaHdr->blockHdr.unk_08 << 8)) {
                return TRUE;
            }
            else {
                return FALSE;
            }
        }

        BOOL Manager::fn_8133A634(ESTitleId titleId) {
            SEntry* channel = fn_8133A4E0(titleId);
            if (channel != NULL && (channel->metaHdr->blockHdr.unk_14 << 14)) {
                return TRUE;
            }
            else {
                return FALSE;
            }
        }

        BOOL Manager::fn_8133A678(ESTitleId titleId) {
            SEntry* channel = fn_8133A4E0(titleId);
            if (channel != NULL && channel->missingTicket != FALSE) {
                return TRUE;
            }
            else {
                return FALSE;
            }
        }

        BOOL Manager::fn_8133A6B8(ESTitleId titleId) {
            SEntry* channel = fn_8133A4E0(titleId);
            if (channel == NULL) {
                return FALSE;
            }

            if (channel->loadedBnr && channel->info.primaryType == channel::PRIMARY_TYPE_CHANNEL
            && channel->info.titleType == ES_TITLE_TYPE(TITLE_NEWS) && (channel->info.titleCode & 0xFFFFFF00) == ES_TITLE_CODE(TITLE_NEWS)
            && channel->tmdVersion >= 6) {
                return TRUE;
            }
            else {
                return FALSE;
            }
        }

        BOOL Manager::fn_8133A73C(ESTitleId titleId) {
            SEntry* channel = fn_8133A4E0(titleId);
            if (channel == NULL) {
                return FALSE;
            }

            if (channel->loadedBnr && channel->info.primaryType == channel::PRIMARY_TYPE_CHANNEL
            && (channel->info.titleCode & 0xFFFFFF00) == ES_TITLE_CODE(TITLE_OPERA)) {
                return TRUE;
            }
            else {
                return FALSE;
            }
        }

        nand::MetaFile* Manager::fn_8133A7A4(EGG::Heap* heap, ESTitleId titleId) {
            SEntry* channel = fn_8133A4E0(titleId);
            if (channel == NULL) {
                return NULL;
            }

            if (!channel->loadedBnr || channel->info.primaryType == channel::PRIMARY_TYPE_DISK) {
                return NULL;
            }
            else {
                return System::getNandManager()->readMetaBodyAsync(heap, "/meta/banner.bin", &channel->arc, titleId,
                                                                    channel->headerSize + channel->headerOffset, 0,
                                                                    NULL, NULL, channel->ticketIdx);
            }
        }

        nand::MetaFile* Manager::fn_8133A85C(EGG::Heap* heap, ESTitleId titleId) {
            SEntry* channel = fn_8133A4E0(titleId);
            if (channel == NULL) {
                return NULL;
            }

            if (!channel->loadedBnr || channel->info.primaryType == channel::PRIMARY_TYPE_DISK
            || channel->metaHdr->blockHdr.soundSize == 0) {
                return NULL;
            }
            else {
                return System::getNandManager()->readMetaBodyAsync(heap, "/meta/sound.bin", &channel->arc, titleId,
                                                                    channel->headerSize + channel->headerOffset, 0,
                                                                    NULL, NULL, channel->ticketIdx);
            }
        }

        nand::SharedFile* Manager::fn_8133A924(EGG::Heap* heap, ESTitleId titleId) {
            SEntry* channel = fn_8133A4E0(titleId);
            if (channel == NULL) {
                return NULL;
            }

            if (!channel->loadedBnr || channel->info.primaryType == channel::PRIMARY_TYPE_DISK) {
                return NULL;
            }
            else {
                u32 index = fn_8133A57C(titleId);
                if (index == 0) {
                    return NULL;
                }

                return System::getNandManager()->readSharedAsync(heap, "/arc/banner.cs.lz7", index, 0, 0, titleId, channel->ticketIdx);
            }
        }

        void Manager::fn_8133A9F0() {
            if (mTmpChannel.bnrFile != NULL) {
                delete mTmpChannel.bnrFile;
            }
            memset(&mTmpChannel, 0, sizeof(mTmpChannel));
        }

        void Manager::fn_8133AA50(ESTitleId titleId) {
            SEntry* channel = fn_8133A4E0(titleId);
            if (channel != NULL) {
                channel->loadedBnr = false;
            }
        }
    }
}
