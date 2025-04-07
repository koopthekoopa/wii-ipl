#include "system/iplSaveDataManager.h"

#include "system/iplChannelManager.h"
#include "system/iplSystem.h"

#include "utility/iplESMisc.h"

#include <revolution.h>
#include <revolution/sc.h>

#include <cstring>

#include "titledb.h"

#include "config.h"

#define CHECK_MAGIC4_NOT(b, c0, c1, c2, c3) (b[0] != c0 || b[1] != c1 || b[2] != c2 || b[3] != c3)

namespace ipl {
    #define DISK_CHANNEL        CHANNEL_INFO(channel::PRIMARY_TYPE_DISK,    channel::SECONARY_TYPE_SYSTEM, 0x0000000F, 0)
    #define NIGAOE_CHANNEL      CHANNEL_INFO(channel::PRIMARY_TYPE_CHANNEL, channel::SECONARY_TYPE_SYSTEM, 0x0000000E, TITLE_NIGAOE_ALL)
    #define PHOTO_CHANNEL       CHANNEL_INFO(channel::PRIMARY_TYPE_CHANNEL, channel::SECONARY_TYPE_SYSTEM, 0x0000000E, TITLE_PHOTO_ALL)
    #define SHOPPING_CHANNEL    CHANNEL_INFO(channel::PRIMARY_TYPE_CHANNEL, channel::SECONARY_TYPE_SYSTEM, 0x0000000E, TITLE_SHOPPING_ALL)
    #define WEATHER_CHANNEL     CHANNEL_INFO(channel::PRIMARY_TYPE_CHANNEL, channel::SECONARY_TYPE_SYSTEM, 0x0000000E, TITLE_WEATHER_ALL)
    #define NEWS_CHANNEL        CHANNEL_INFO(channel::PRIMARY_TYPE_CHANNEL, channel::SECONARY_TYPE_SYSTEM, 0x0000000E, TITLE_NEWS_ALL)
    #define NO_CHANNEL          CHANNEL_INFO_NULL

    #define DEFAULT_CHANNEL_COUNT   6
    static const channel::SInfo cDefaultChanList/*[MAX_CHANNEL_PAGE][MAX_CHANNEL_INDEX]*/[MAX_CHANNEL_TOTAL] = {
        // Page 1
        //{
            /* =============================================================*/
            DISK_CHANNEL,   NIGAOE_CHANNEL, PHOTO_CHANNEL, SHOPPING_CHANNEL,
            /* =============================================================*/
            WEATHER_CHANNEL, NEWS_CHANNEL,   NO_CHANNEL,    NO_CHANNEL,
            /* =============================================================*/
            NO_CHANNEL,      NO_CHANNEL,     NO_CHANNEL,    NO_CHANNEL,
            /* =============================================================*/
        //},
        // Page 2
        //{
            /* =============================================================*/
            NO_CHANNEL,      NO_CHANNEL,     NO_CHANNEL,    NO_CHANNEL,
            /* =============================================================*/
            NO_CHANNEL,      NO_CHANNEL,     NO_CHANNEL,    NO_CHANNEL,
            /* =============================================================*/
            NO_CHANNEL,      NO_CHANNEL,     NO_CHANNEL,    NO_CHANNEL,
            /* =============================================================*/
        //},
        // Page 3
        //{
            /* =============================================================*/
            NO_CHANNEL,      NO_CHANNEL,     NO_CHANNEL,    NO_CHANNEL,
            /* =============================================================*/
            NO_CHANNEL,      NO_CHANNEL,     NO_CHANNEL,    NO_CHANNEL,
            /* =============================================================*/
            NO_CHANNEL,      NO_CHANNEL,     NO_CHANNEL,    NO_CHANNEL,
            /* =============================================================*/
        //},
        // Page 4
        //{
            /* =============================================================*/
            NO_CHANNEL,      NO_CHANNEL,     NO_CHANNEL,    NO_CHANNEL,
            /* =============================================================*/
            NO_CHANNEL,      NO_CHANNEL,     NO_CHANNEL,    NO_CHANNEL,
            /* =============================================================*/
            NO_CHANNEL,      NO_CHANNEL,     NO_CHANNEL,    NO_CHANNEL,
            /* =============================================================*/
        //},
    };

    static const char* csSavePath = "/title/00000001/00000002/data/iplsave.bin";

    namespace savedata {
        Manager::Manager(EGG::Heap* heap) {
            mpHeap = heap;
            mLastPrevPage = 0;
            mLastSDPrevPage = 0;
            mbBadSDPrevPage = true;

            mpFile = NULL;

            mpUpdatedFile = NULL;

            mbInit = false;

            mLastError = 0;
        }
        
        Manager::~Manager() {
            if (mpUpdatedFile) {
                delete mpUpdatedFile;
            }
        }

        void Manager::initManager() {
            mbInit = false;
            System::getNandTask()->request(initManagerTask, this, NULL);
        }

        void Manager::setPrevPage(int prevPage) {
            mData.prevPage = prevPage;
        }

        void Manager::setChanInfo(int page, int index, const channel::SInfo& chanInfo) {
            mData.chanInfo[page][index] = chanInfo;
        }

        void Manager::setMemoSetting(const textinput::extend::savedata::MemoSetting& memoSetting) {
            mData.memoSetting = memoSetting;
        }

        nand::File* Manager::flushAsync(EGG::Heap* flushHeap) {
            int old = OSDisableInterrupts();

            NETMD5Sum md5;
            NETCalcMD5(md5, &mData, sizeof(mData) - NET_MD5_DIGEST_SIZE);
            memcpy(mData.MD5Sum, md5, NET_MD5_DIGEST_SIZE);

            nand::File* result = System::getNandManager()->writeAsync(flushHeap, csSavePath, &mData, sizeof(mData), NAND_PERM_USER);
            mpFile = result;

            OSRestoreInterrupts(old);

            return result;
        }

        BOOL Manager::isFinished(nand::File* file) {
            if (file->isFinished() || file->isFatalError()) {
                mpFile = NULL;
            }
            return file->isFinished();
        }

        ESTitleId Manager::hasChannel(ESTitleId titleId, int* outIndex, int* outPage) const {
            u32 mask;
            if (titleId & ~0) {
                mask = ~0;
            }
            else {
                mask = 0;
            }
            
            for (int page = 0; page < MAX_CHANNEL_PAGE; page++) {
                for (int i = 0; i < MAX_CHANNEL_INDEX; i++) {
                    if (mData.chanInfo[page][i].primaryType != channel::PRIMARY_TYPE_CHANNEL) {
                        ESTitleId tId = TITLE_ESTITLE(mData.chanInfo[page][i].titleType, mData.chanInfo[page][i].titleCode) & mask;
                        if (titleId == tId
                        || TITLE_NO_REGION(titleId) == TITLE_NO_REGION(tId)
                        || TITLE_REGION(titleId) == TITLE_REGION_ALL) {
                            if (outIndex) {
                                *outIndex = i;
                            }
                            if (outPage) {
                                *outPage = page;
                            }
                            return tId;
                        }
                    }
                }
            }
            return 0;
        }

        int Manager::getNumValidChannel() const {
            int count = 0;
            int i, page;
            for (page = 0; page < MAX_CHANNEL_PAGE; page++) {
                for (i = 0; i < MAX_CHANNEL_INDEX; i++) {
                    if (mData.chanInfo[page][i].primaryType != channel::PRIMARY_TYPE_NONE && mData.chanInfo[page][i].flags != 0) {
                        count++;
                    }
                }
            }
            return count;
        }
        
        BOOL Manager::isResetAcceptable() {
            if (mpFile == NULL || mpFile->isFinished() || mpFile->isFatalError()) {
                return TRUE;
            }
            else {
                return FALSE;
            }
        }

        void Manager::initManagerTask(void* work) {
            Manager* manager = static_cast<Manager*>(work);
            s32 ret;

            u32 fileLen = sizeof(Data);
            BOOL bCreateNew = FALSE;
            BOOL bNeedFlush = FALSE;

            ES_SetUid(SYSMENU_TITLE_ID);

            if (manager->mpUpdatedFile == NULL) {
                NANDFileInfo fileInfo;
                ret = nand::wrapper::Open(csSavePath, &fileInfo, NAND_ACCESS_RW);

                if (manager->nand_error_handling(ret)) {
                    u32 fileLenCheck;
                    ret = nand::wrapper::GetLength(&fileInfo, &fileLenCheck);
                    manager->nand_error_handling(ret);

                    if (fileLenCheck == 0) {
                        // Create a new file if blank
                        bCreateNew = TRUE;
                    }
                    else {
                        // Read header
                        ret = nand::wrapper::Read(&fileInfo, &manager->mData, 0x20);
                        manager->nand_error_handling(ret);

                        if (manager->mLastError == NAND_RESULT_AUTHENTICATION
                        || manager->mLastError == NAND_RESULT_ECC_CRIT) {
                            // Access to file is broken, create new
                            ret = nand::wrapper::Delete(csSavePath);
                            manager->nand_error_handling(ret);
                            bCreateNew = TRUE;
                        }
                        else {
                            if (manager->mData.version > SAVEDATA_VERSION) {
                                // Save data too high, create new
                                bCreateNew = TRUE;
                            }
                            else {
                                if (CHECK_MAGIC4_NOT(manager->mData.sig, 'R','I','P','L')) {
                                    // Signature incorrect, create new
                                    bCreateNew = TRUE;
                                }
                                else {
                                    ret = nand::wrapper::GetLength(&fileInfo, &fileLen);
                                    if (ret != NAND_RESULT_OK
                                    || manager->mData.fileSize < 0x20 || manager->mData.fileSize > fileLen) {
                                        // Invalid filesize, create new
                                        bCreateNew = TRUE;
                                    }
                                    else {
                                        fileLen = manager->mData.fileSize;

                                        ret = nand::wrapper::Seek(&fileInfo, 0, NAND_SEEK_BEG);
                                        manager->nand_error_handling(ret);
                                        ret = nand::wrapper::Read(&fileInfo, &manager->mData, fileLen);
                                        manager->nand_error_handling(ret);

                                        if (manager->mLastError == NAND_RESULT_AUTHENTICATION
                                        || manager->mLastError == NAND_RESULT_ECC_CRIT) {
                                            // Access to file is broken, create new
                                            ret = nand::wrapper::Delete(csSavePath);
                                            manager->nand_error_handling(ret);
                                            bCreateNew = TRUE;
                                        }
                                        else {
                                            NETMD5Sum md5;
                                            NETCalcMD5(md5, &manager->mData, fileLen - NET_MD5_DIGEST_SIZE);

                                            for (int i = 0; i < NET_MD5_DIGEST_SIZE; i++) {
                                                if (md5[i] != manager->mData.MD5Sum[i]) {
                                                    // Invalid MD5 sum, create new
                                                    bCreateNew = TRUE;
                                                    break;
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    ret = nand::wrapper::Close(&fileInfo);
                    manager->nand_error_handling(ret);
                }
                else {
                    if (manager->mLastError == NAND_RESULT_NOEXISTS) {
                        // Create a new file if it does not exist
                        bCreateNew = TRUE;
                    }
                    else {
                        // Otherwise something is wrong
                        System::err_log("NAND", manager->mLastError, 450);
                        System::err_display(MESG_ERR_FILE);
                    }
                }

                if (bCreateNew) {
                    manager->setDefaultSaveData();
                    bNeedFlush = TRUE;
                }
                else {
                    u32 oldVersion = manager->mData.version;
                    if (oldVersion < SAVEDATA_VERSION) {
                        manager->updateVersion(SAVEDATA_VERSION, oldVersion);
                        bNeedFlush = TRUE;
                    }
                }

                // Previous page on ChannelSelect
                if (manager->mData.prevPage != 0) {
                    manager->mLastPrevPage = manager->mData.prevPage;
                    bNeedFlush = TRUE;
                    manager->mData.prevPage = 0;
                }

                // Prevous page on SDChannelSelect
                if (manager->mData.prevSDPage >= 0 && manager->mData.prevSDPage < 20) {
                    if (manager->mbBadSDPrevPage) {
                        manager->mLastSDPrevPage = manager->mData.prevSDPage;
                        manager->mbBadSDPrevPage = false;
                    }
                }
            }

            if (bNeedFlush | manager->updateChanInfos()) {
                if (manager->mpUpdatedFile) {
                    delete manager->mpUpdatedFile;
                }

                manager->mpUpdatedFile = manager->flushAsync(manager->mpHeap);
                manager->mpFile = NULL;
            }

            manager->mbInit = true;
        }

        void Manager::setDefaultSaveData() {
            setDefaultHeader();
            memcpy(mData.chanInfo, cDefaultChanList, MAX_CHANNEL_INFO_SIZE);
            setDefaultKeyboard();
            setDefaultTVRC();
            setDefaultTitleCache();

            for (int i = 0; i < 0x0C; i++) {
                mData.padding[i] = 0;
            }
        }

        void Manager::setDefaultHeader() {
            mData.sig[0] = 'R';
            mData.sig[1] = 'I';
            mData.sig[2] = 'P';
            mData.sig[3] = 'L';
            mData.fileSize = sizeof(mData);
            mData.version = SAVEDATA_VERSION;
            mData.prevPage = 0;
        }

        void Manager::setDefaultKeyboard() {
            mData.memoSetting.uRevisionAndType      = 0x11;

            mData.memoSetting.uDictionary           = 0xFA;
            mData.memoSetting.uPredictOnOff         = 0x00;
            mData.memoSetting.uSignPage             = 0x00;

            mData.memoSetting.uKeitaiUpperCaseJP    = TRUE;
            mData.memoSetting.uKeitaiInputMode      = 0x02;

            mData.memoSetting.uQwertyABC            = FALSE;

            mData.memoSetting.uABCInputMode         = 0x01;
            mData.memoSetting.uAIUInputMode         = 0x00;

            mData.memoSetting.uNumLockOff           = FALSE;

            mData.memoSetting.uReserve2             = 0x00;
            mData.memoSetting.uReserve3             = 0x00;
            mData.memoSetting.uReserve4             = 0x00;
        }

        void Manager::setDefaultTVRC() {
            mData.tvrcData[0] = 0;
            mData.tvrcData[1] = 0;
            mData.tvrcData[2] = 0;
            mData.tvrcData[3] = 0;
        }

        BOOL Manager::updateChanInfos() {
            u32 titleCount;
            ES_ListTitlesOnCard(NULL, &titleCount);

            u64* titleIds = new(mpHeap, -BUFFER_HEAP) u64[titleCount];

            s32 ret = ES_ListTitlesOnCard(titleIds, &titleCount);
            if (ret != ES_ERR_OK) {
                System::err_log("ES", ret, 637);
                System::err_display(MESG_ERR_FILE);
            }

            mbPhoto2 = false;
            mbPhoto2Check = false;
            mbPhotoMP3 = false;

            mPhotoId = TITLE_PHOTO;

            deleteInvalidTitle(titleIds, titleCount);
            checkSpecialTitles(titleIds, titleCount);
            checkTmpTitle(titleIds, titleCount);

            ESTitleId unk[MAX_CHANNEL_TOTAL] = { 0 };

            makePriorTitleIDList(unk, titleIds, titleCount);
            integrateTitleIDList(unk, titleIds, titleCount);

            delete[] titleIds;

            return doUpdateChanInfos(unk);
        }

        void Manager::deleteInvalidTitle(ESTitleId* titleIds, u32 titleCount) {
            for (int i = 0; i < titleCount; i++) {
                s32 ret;
                if (ES_CHANNEL_ID(titleIds[i]) != TITLE_TYPE_CHANNEL
                && ES_CHANNEL_ID(titleIds[i]) != TITLE_TYPE_SYSTEM_CHANNEL
                && ES_CHANNEL_ID(titleIds[i]) != TITLE_TYPE_DISC
                && ES_CHANNEL_ID(titleIds[i]) != TITLE_TYPE_DISC_CHANNEL
                && ES_CHANNEL_ID(titleIds[i]) != TITLE_TYPE_UNK6
                && ES_CHANNEL_ID(titleIds[i]) != TITLE_TYPE_UNK3) {
                    titleIds[i] = TITLE_NULL;
                }
                else {
                    ESTmdView* tmd = NULL;
                    ret = utility::ESMisc::GetTmdView(mpHeap, titleIds[i], &tmd);
                    if (ret == ES_ERR_OK) {
                        if (tmd->contents[0].size == 0x40 && TITLE_NO_REGION(titleIds[i]) != TITLE_PHOTO) {
                            titleIds[i] = TITLE_NULL;
                        }
                    }
                    if (tmd) {
                        mpHeap->free(tmd);
                    }

                    if (TITLE_NO_REGION(titleIds[i]) == TITLE_PHOTO) {
                        ESTmdView* tmd = NULL;
                        ret = utility::ESMisc::GetTmdView(mpHeap, titleIds[i], &tmd);
                        if (ret == ES_ERR_OK && tmd->head.titleVerson == 65280) {
                            mbPhotoMP3 = true;
                        }
                        if (tmd) {
                            mpHeap->free(tmd);
                        }
                    }
                    else if (TITLE_NO_REGION(titleIds[i]) == TITLE_PHOTO_2) {
                        if (checkValidApp(titleIds[i])) {
                            mbPhoto2 = true;
                        }
                    }
                    else if (TITLE_NO_REGION(titleIds[i]) == TITLE_PHOTO_2_CHECK) {
                        if (checkValidApp(titleIds[i])) {
                            mbPhoto2Check = true;
                        }
                    }
                }
            }
        }

        void Manager::checkSpecialTitles(ESTitleId* titleIds, u32 titleCount) {
            if (mbPhoto2 || mbPhoto2Check) {
                for (int i = 0; i < titleCount; i++) {
                    if (titleIds[i]) {
                        ESTitleId titleIdNoRegion = TITLE_NO_REGION(titleIds[i]);
                        if (mbPhoto2 && mbPhoto2Check) {
                            if (titleIdNoRegion == TITLE_PHOTO) {
                                titleIds[i] = 0;
                            }
                            else if (titleIdNoRegion == TITLE_PHOTO_2_CHECK) {
                                titleIds[i] = 0;
                            }
                        }
                        else if (!mbPhoto2 && mbPhoto2Check) {
                            if (titleIdNoRegion == TITLE_PHOTO) {
                                titleIds[i] = 0;
                            }
                        }
                        else if (mbPhoto2 && !mbPhoto2Check && mbPhotoMP3) {
                            if (titleIdNoRegion == TITLE_PHOTO) {
                                titleIds[i] = 0;
                            }
                        }
                        else if (mbPhoto2 && !mbPhoto2Check && !mbPhotoMP3) {
                            if (titleIdNoRegion == TITLE_PHOTO_2) {
                                titleIds[i] = 0;
                            }
                        }
                    }
                }

                if (mbPhoto2 && mbPhoto2Check) {
                    mPhotoId = TITLE_PHOTO_2;
                }
                else if (!mbPhoto2 && mbPhoto2Check) {
                    mPhotoId = TITLE_PHOTO_2_CHECK;
                }
                else if (mbPhoto2 && !mbPhoto2Check && mbPhotoMP3) {
                    mPhotoId = TITLE_PHOTO_2;
                }
                else if (mbPhoto2 && !mbPhoto2Check && !mbPhotoMP3) {
                    mPhotoId = TITLE_PHOTO;
                }
            }
        }
        
        void Manager::checkTmpTitle(ESTitleId* titleIds, u32 titleCount) {
            bool foundTmp = false;

            ESTitleId tmpId = SCGetTmpTitleID();
            if (tmpId) {
                for (int i = 0; i < titleCount; i++) {
                    if (titleIds[i] == tmpId) {
                        titleIds[i] = 0;
                        foundTmp = true;
                    }
                }

                if (foundTmp) {
                    if (!checkValidApp(tmpId)) {
                        SCSetTmpTitleID(TITLE_NULL);
                        SCFlush();
                    }
                }
                else {
                    SCSetTmpTitleID(TITLE_NULL);
                    SCFlush();
                }
            }
        }

        BOOL Manager::checkValidApp(ESTitleId titleId) {
            BOOL result = TRUE;

            u32 tikCount = 0;
            s32 ret = ES_GetTicketViews(titleId, NULL, &tikCount);
            if (ret < ES_ERR_OK && tikCount == 0) {
                result = FALSE;
            }
            else {
                if (!utility::ESMisc::PrivateContentsExist(titleId)) {
                    result = FALSE;
                }
                else {
                    ESTmdView* tmd = NULL;
                    ret = utility::ESMisc::GetTmdView(mpHeap, titleId, &tmd);
                    if (ret != ES_ERR_OK && ret != ES_ERR_NO_TMD_FILE_FOUND) {
                        System::err_log("ES", ret, 1138);
                        System::err_display(MESG_ERR_FILE);
                    }

                    if (ret == ES_ERR_NO_TMD_FILE_FOUND || utility::ESMisc::checkContentsNum(titleId, tmd)) {
                        if (ret != ES_ERR_OK && ret != ES_ERR_NO_TMD_FILE_FOUND) {
                            System::err_log("ES", ret, 1149);
                            System::err_display(MESG_ERR_FILE);
                        }
                        result = FALSE;
                    }

                    if (tmd) {
                        mpHeap->free(tmd);
                    }
                }
            }

            return result;
        }

        int Manager::getAvailableNumInList(const ESTitleId* titleIds, u32 titleCount) {
            int count = 0;
            for (int i = 0; i < titleCount; i++) {
                if (titleIds[i]) {
                    count++;
                }
            }
            return count - 1;
        }

        int Manager::getAvailableInList(const ESTitleId* titleIds, u32 titleCount) {
            int count = 0;
            for (int i = 0; i < titleCount; i++) {
                if (titleIds[i]) {
                    if (mData.chanInfo[count / MAX_CHANNEL_INDEX][count % MAX_CHANNEL_INDEX].primaryType != channel::PRIMARY_TYPE_CHANNEL) {
                        return count;
                    }
                    count++;
                }
            }
            return -1;
        }

        int Manager::isEqualChannel(ESTitleId titleId0, ESTitleId titleId1) {
            if (titleId0 == titleId1) {
                return -2;
            }
            else if (TITLE_NO_REGION(titleId0) == TITLE_NO_REGION(titleId1)) {
                return -1;
            }
            else if (TITLE_REGION(titleId0) != TITLE_REGION_ALL && TITLE_REGION(titleId1) == TITLE_REGION_ALL) {
                return 0;
            }
            else if (TITLE_REGION(titleId0) != TITLE_REGION_ALL || TITLE_REGION(titleId1) == TITLE_REGION_ALL) {
                return 1;
            }
            else {
                return -1;
            }
        }

        int Manager::isDefaultChannel(ESTitleId32 titleType, ESTitleId32 titleCode) {
            for (int i = 0; i < DEFAULT_CHANNEL_COUNT; i++) {
                if (cDefaultChanList[i].titleType == titleType && (cDefaultChanList[i].titleCode & 0xFFFFFF00) == (titleCode & 0xFFFFFF00)) {
                    return i;
                }
            }
            return -1;
        }

        void Manager::updateVersion(u32 newVersion, u32 oldVersion) {
            if ((newVersion & 0xFFFF0000) != (oldVersion & 0xFFFF0000)) {
                OSReport("[SaveDataManager] Invalid major version change %d -> %d\n", oldVersion >> 16, newVersion >> 16);
                OSHalt("", 1344);
            }
            mData.fileSize = sizeof(Data);
            mData.version = newVersion;

            switch (newVersion) {
                case 2: {
                    setDefaultKeyboard();
                    break;
                }
                case 3: {
                    // what even
                    if ((s16)oldVersion != 2 && (s16)oldVersion < 2) {
                        if ((s16)oldVersion < 0) {
                            break;
                        }
                        else {
                            setDefaultKeyboard();
                        }
                    }
                    setDefaultTitleCache();
                    break;
                }
            }
        }

        void Manager::setDefaultTitleCache() {
            mData.didntGotoSDMenu = TRUE;
            memset(mData.titleCache, 0, sizeof(mData.titleCache));
            mData.prevSDPage = 0;
        }

        BOOL Manager::nand_error_handling(int code) {
            BOOL result = FALSE;

            mLastError = code;
            if (code >= NAND_RESULT_OK) {
                return TRUE;
            }
            else {
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
                        System::err_display(MESG_ERR_NAND);
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
                        System::err_log("NAND", code, 1503);
                        System::err_display(MESG_ERR_FILE);
                        break;
                    }
                }
            }

            return result;
        }
    }
}
