#include "system/iplCdbManager.h"
#include "iplSystem.h"

#include "utility/iplLock.h"

#include <revolution/net/NETDigest.h>

#include <private/cdb.h>

#include <nw4r/ut.h>

namespace ipl {
    namespace cdb {
        const u32 Manager::UNKNOWN_VALUE = 50;

        Manager::Manager(EGG::Heap* heap) : 
        mCDBResult(CDB_ERROR_OK), 
        mbSDMounted(false), 
        mSDVFWorker() {
            OSInitMutex(&mMutex);

            utility::autoMutexLock lock(mMutex);

            unk_0x39 = 0;
            unk_0x38 = 0;

            CDBErr err = CDBDatabaseInit(&mDatabase);
            error_handling(err, 52);

            err = CDBDatabaseOpen(&mDatabase);
            error_handling(err, 53);

            getFreeSize(NULL);

            mpSDVFWork = new(heap, 64) u8[SDVFWorker::WORK_SIZE];
        }

        void Manager::closeDatabase() {
            CDBErr err = CDBDatabaseClose(&mDatabase);
            error_handling(err, 77);
        }

        BOOL Manager::createNewRecord(const char* recordName, const char* recordFileType, const OSCalendarTime* dateTime, u32* gameCode, u16* makerCode, 
        const math::VEC2& recordPos, u32 recordFlags, const NWC24FriendAddr& friendAddr, u16 friendType, u16 replyFlag, 
        const wchar_t* titleText, const wchar_t* bodyText, const void* faceData, 
        const void** attachData, u32* attachSize, RBRAttachmentType* attachType) {
            BOOL result = FALSE;
            u32 bufferSize = 0;

            // Create RBR buffer
            u8* buffer = makeBuffer(recordPos, recordFlags, friendAddr, friendType, replyFlag, 
                                    titleText, bodyText, faceData, 
                                    attachData, attachSize, attachType, 
                                    &bufferSize);

            // Create record with RBR buffer
            if (buffer != NULL) {
                CDBRecord dummyRecord;
                result = createAtOnce(&dummyRecord, recordName, recordFileType, gameCode, makerCode, dateTime, buffer, bufferSize);
                delete[] buffer;
            }

            getFreeSize();

            return result;
        }

        BOOL Manager::writeRecord(CDBRecord* record, const math::VEC2& recordPos, u32 recordFlags, const NWC24FriendAddr& friendAddr, u16 friendType, u16 replyFlag,
        const wchar_t* titleText, const wchar_t* bodyText, const void* faceData,
        const void** attachData, u32* attachSize, RBRAttachmentType* attachType) {
            RBRHeader   rbrHeader;
            u32         rbrCurOffset;
            u32         rbrSize;

            u32         titleLength;
            u32         bodyLength;

            BOOL        result = FALSE;

            // Reset header
            memset(&rbrHeader, 0, sizeof(rbrHeader));

            // Set header
            rbrHeader.magic = RBR_MAGIC;
            rbrHeader.xPos = recordPos.x;
            rbrHeader.yPos = recordPos.y;
            rbrHeader.flags = recordFlags;
            rbrHeader.time = OSGetTime();
            rbrHeader.friendAddr = friendAddr;
            rbrHeader.friendType = friendType;
            rbrHeader.replyFlag = replyFlag;

            // Set offset after header
            rbrCurOffset = sizeof(RBRHeader);

            // Get text lengths
            titleLength = titleText == NULL || *titleText == 0 ? 0 : ((wcslen(titleText) + 4) * sizeof(wchar_t)) & ~(RBR_TITLE_LENGTH_LIMIT - 1);
            bodyLength  = bodyText == NULL  || *bodyText  == 0 ? 0 : ((wcslen(bodyText)  + 4) * sizeof(wchar_t)) & ~(RBR_BODY_LENGTH_LIMIT  - 1);

            // Get description offset
            if (titleLength != 0) {
                rbrHeader.titleOffset = rbrCurOffset;
                rbrCurOffset += titleLength;
            }

            // Get body offset
            if (bodyLength != 0) {
                rbrHeader.bodyOffset = rbrCurOffset;
                rbrCurOffset += bodyLength;
            }

            // Get face data offset
            if (faceData != NULL) {
                rbrHeader.faceOffset = rbrCurOffset;
                rbrCurOffset += nw4r::ut::RoundUp(NWC24_FACE_DATA_SIZE, 4);
            }

            // Round up size for Buffers
            rbrCurOffset = OSRoundUp32B(rbrCurOffset);

            // Get type, offset and size of attachments
            for (int i = 0; i < RBR_ATTACHMENT_MAX; i++) {
                if (attachData[i] != NULL) {
                    rbrHeader.attachments[i].type = attachType[i];
                    rbrHeader.attachments[i].offset = rbrCurOffset;
                    rbrHeader.attachments[i].size = attachSize[i];
                    rbrCurOffset += OSRoundUp32B(attachSize[i]);
                }
            }

            // Get CRC32
            rbrHeader.crc32 = calcCRC(&rbrHeader);

            // The current offset is the size of the board record
            rbrSize = rbrCurOffset;

            u8* buffer = new (System::getMailWorkHeap(), BUFFER_HEAP) u8[rbrSize];

            if (buffer != NULL) {
                u8* rbrBuffer = &buffer[0];

                // Copy header
                memcpy(rbrBuffer, &rbrHeader, sizeof(RBRHeader));

                // Copy description
                if (titleLength != 0) {
                    memcpy(&rbrBuffer[rbrHeader.titleOffset], titleText, titleLength);
                }
                // Copy body
                if (bodyLength != 0) {
                    memcpy(&rbrBuffer[rbrHeader.bodyOffset], bodyText, bodyLength);
                }
                // Copy face data
                if (faceData != NULL) {
                    memcpy(&rbrBuffer[rbrHeader.faceOffset], faceData, NWC24_FACE_DATA_SIZE);
                }
                // Copy attachments
                for (int i = 0; i < RBR_ATTACHMENT_MAX; i++) {
                    if (attachData[i] != NULL) {
                        memcpy(&rbrBuffer[rbrHeader.attachments[i].offset], attachData[i], attachSize[i]);
                    }
                }

                // Ok now write the buffer!
                result = write(record, buffer, rbrSize);

                // Delete the file if we ran out of storage
                if (mCDBResult == CDB_ERROR_OUT_OF_SPACE) {
                    if (close(record)) {
                        remove(record);
                    }
                }

                // Goodbye!
                delete[] buffer;
                getFreeSize();
            }

            return result;
        }

        u8* Manager::makeBuffer(const math::VEC2& recordPos, u32 recordFlags, const NWC24FriendAddr& friendAddr, u16 friendType, u16 replyFlag,
        const wchar_t* titleText, const wchar_t* bodyText, const void* faceData,
        const void** attachData, u32* attachSize, RBRAttachmentType* attachType,
        u32* bufferSize) {
            RBRHeader   rbrHeader;
            u32         rbrCurOffset;
            u32         rbrSize;

            u32         titleLength;
            u32         bodyLength;

            // Reset header
            memset(&rbrHeader, 0, sizeof(rbrHeader));

            // Set header
            rbrHeader.magic = RBR_MAGIC;
            rbrHeader.xPos = recordPos.x;
            rbrHeader.yPos = recordPos.y;
            rbrHeader.flags = recordFlags;
            rbrHeader.time = OSGetTime();
            rbrHeader.friendAddr = friendAddr;
            rbrHeader.friendType = friendType;
            rbrHeader.replyFlag = replyFlag;

            // Set offset after header
            rbrCurOffset = sizeof(RBRHeader);

            // Get text lengths
            titleLength = titleText == NULL || *titleText == 0 ? 0 : ((wcslen(titleText) + 4) * sizeof(wchar_t)) & ~(RBR_TITLE_LENGTH_LIMIT - 1);
            bodyLength  = bodyText == NULL  || *bodyText  == 0 ? 0 : ((wcslen(bodyText)  + 4) * sizeof(wchar_t)) & ~(RBR_BODY_LENGTH_LIMIT  - 1);

            // Get description offset
            if (titleLength != 0) {
                rbrHeader.titleOffset = rbrCurOffset;
                rbrCurOffset += titleLength;
            }

            // Get body offset
            if (bodyLength != 0) {
                rbrHeader.bodyOffset = rbrCurOffset;
                rbrCurOffset += bodyLength;
            }

            // Get face data offset
            if (faceData != NULL) {
                rbrHeader.faceOffset = rbrCurOffset;
                rbrCurOffset += nw4r::ut::RoundUp(NWC24_FACE_DATA_SIZE, 4);
            }

            // Round up size for Buffers
            rbrCurOffset = OSRoundUp32B(rbrCurOffset);

            // Get type, offset and size of attachments
            for (int i = 0; i < RBR_ATTACHMENT_MAX; i++) {
                if (attachData[i] != NULL) {
                    rbrHeader.attachments[i].type = attachType[i];
                    rbrHeader.attachments[i].offset = rbrCurOffset;
                    rbrHeader.attachments[i].size = attachSize[i];
                    rbrCurOffset += OSRoundUp32B(attachSize[i]);
                }
            }

            // Get CRC32
            rbrHeader.crc32 = calcCRC(&rbrHeader);

            // The current offset is the size of the board record
            rbrSize = rbrCurOffset;

            // Add up the board record size with the record attribute to add up the total buffer size
            *bufferSize = rbrSize + CDB_RECORD_BUFFER_SIZE;

            u8* buffer = new (System::getMailWorkHeap(), BUFFER_HEAP) u8[rbrSize + CDB_RECORD_BUFFER_SIZE];

            if (buffer == NULL) {
                return NULL;
            }
            else {
                memset(buffer, 0, rbrSize + CDB_RECORD_BUFFER_SIZE);

                u8* rbrBuffer = &buffer[CDB_RECORD_BUFFER_SIZE];

                // Copy header
                memcpy(rbrBuffer, &rbrHeader, sizeof(RBRHeader));

                // Copy description
                if (titleLength != 0) {
                    memcpy(&rbrBuffer[rbrHeader.titleOffset], titleText, titleLength);
                }
                // Copy body
                if (bodyLength != 0) {
                    memcpy(&rbrBuffer[rbrHeader.bodyOffset], bodyText, bodyLength);
                }
                // Copy face data
                if (faceData != NULL) {
                    memcpy(&rbrBuffer[rbrHeader.faceOffset], faceData, NWC24_FACE_DATA_SIZE);
                }
                // Copy attachments
                for (int i = 0; i < RBR_ATTACHMENT_MAX; i++) {
                    if (attachData[i] != NULL) {
                        memcpy(&rbrBuffer[rbrHeader.attachments[i].offset], attachData[i], attachSize[i]);
                    }
                }

                // Here is your buffer!
                return buffer;
            }
        }

        BOOL Manager::deleteRecord(CDBRecordKey* recordKey) {
            CDBRecord record;
            BOOL result = FALSE;

            utility::autoMutexLock lock(mMutex);

            if (findByKey(&record, recordKey)) {
                if (remove(&record)) {
                    result = TRUE;
                }
            }

            return result;
        }

        BOOL Manager::isValidHeader(const RBRHeader* header) {
            u32 crc32 = calcCRC(header);
            return crc32 == header->crc32;
        }

        BOOL Manager::isValidType(const char* type) {
            BOOL result = FALSE;

            if (RBRCompareFileType(type, RBRFileType_Txt) == 0
            || RBRCompareFileType(type, RBRFileType_Odh) == 0
            || RBRCompareFileType(type, RBRFileType_Dat) == 0
            || RBRCompareFileType(type, RBRFileType_Log) == 0) {
                result = TRUE;
            }

            return result;
        }

        BOOL Manager::isTxtValidType(const char* type) {
            BOOL result = FALSE;

            if (RBRCompareFileType(type, RBRFileType_Txt) == 0
            || RBRCompareFileType(type, RBRFileType_Odh) == 0
            || RBRCompareFileType(type, RBRFileType_Dat) == 0) {
                result = TRUE;
            }

            return result;
        }

        u32 Manager::calcCRC(const RBRHeader* header) {
            utility::autoMutexLock lock(mMutex);
            return NETCalcCRC32(header, RBR_HEADER_SIZE);
        }

        BOOL Manager::isOverFlow() const {
            return ((mCDBFreeSize * 100) / 0x1400000) < 10;
        }

        BOOL Manager::isUnderFlow() const {
            return ((mCDBFreeSize * 100) / 0x1400000) > 50;
        }

        BOOL Manager::createAtOnce(CDBRecord* record, const char* recordName, const char* recordFileType, 
        u32* gameCode, u16* makerCode, const OSCalendarTime* dateTime, u8* buffer, u32 bufferSize) {
            utility::autoMutexLock lock(mMutex);

            CDBErr err;

            char makerCodeStr[sizeof(u16)+1]="";
            char gameCodeStr[sizeof(u32)+1]="";

            if (makerCode != NULL) {
                char* pMCStr = (char*)makerCode;
                for (int i = 0; i < sizeof(u16); i++) {
                    makerCodeStr[i] = pMCStr[i];
                }
            }

            if (gameCode != NULL) {
                char* pGCStr = (char*)gameCode;
                for (int i = 0; i < sizeof(u32); i++) {
                    gameCodeStr[i] = pGCStr[i];
                }
            }

            if (dateTime == NULL) {
                if (gameCode != NULL && makerCode != NULL) {
                    err = CDBDatabasePrivateCreateRecordAtOnce(&mDatabase, record, recordName, recordFileType,
                                                            buffer, bufferSize, makerCodeStr, gameCodeStr);
                }
                else {
                    err = CDBDatabaseCreateRecordAtOnce(&mDatabase, record, recordName, recordFileType, buffer, bufferSize);
                }
            }
            else {
                if (gameCode != NULL && makerCode != NULL) {
                    err = CDBDatabasePrivateCreateRecordAtOnceEx(&mDatabase, record, recordName, recordFileType,
                                                                dateTime->year, dateTime->mon, dateTime->mday,
                                                                dateTime->hour, dateTime->min, dateTime->sec,
                                                                buffer, bufferSize, makerCodeStr, gameCodeStr);
                }
                else {
                    err = CDBDatabaseCreateRecordAtOnceEx(&mDatabase, record, recordName, recordFileType,
                                                            buffer, bufferSize,
                                                            dateTime->year, dateTime->mon, dateTime->mday,
                                                            dateTime->hour, dateTime->min, dateTime->sec);
                }
            }
            
            if (mCDBResult == CDB_ERROR_OUT_OF_SPACE) {
                if (close(record)) {
                    remove(record);
                }
            }

            return error_handling(err, 668);
        }

        BOOL Manager::findByKey(CDBRecord* record, CDBRecordKey* recordKey) {
            utility::autoMutexLock lock(mMutex);
            CDBErr err = CDBDatabaseFindByKey(&mDatabase, record, recordKey);
            return error_handling(err, 707);
        }

        BOOL Manager::search(const CDBDate& begin, const CDBDate& end,
        CDBSearchDirection searchDirection, CDBRecordLocation recordLocation,int unk2,
        CDBSearchRecordCB searchRecordCB, void* searchRecordWork) {
            utility::autoMutexLock lock(mMutex);
            CDBErr err = CDBDatabaseSearch(&mDatabase, begin, end, searchDirection, NULL, NULL, 0, recordLocation, unk2, searchRecordCB, searchRecordWork);
            return error_handling(err, 741);
        }

        BOOL Manager::getDataSize(CDBRecord* record, u32* recordDataSize) {
            utility::autoMutexLock lock(mMutex);
            CDBErr err = CDBRecordGetDataSize(record, recordDataSize);
            return error_handling(err, 806);
        }

        BOOL Manager::getCDBId(CDBRecord* record, CDBId* recordCDBId) {
            utility::autoMutexLock lock(mMutex);
            CDBErr err = CDBRecordGetId(record, recordCDBId);
            return error_handling(err, 871);
        }

        BOOL Manager::remove(CDBRecord* record) {
            utility::autoMutexLock lock(mMutex);
            CDBErr err = CDBRecordRemove(record);
            return error_handling(err, 883);
        }

        BOOL Manager::open(CDBRecord* record) {
            utility::autoMutexLock lock(mMutex);
            CDBErr err = CDBRecordOpen(record);
            return error_handling(err, 895);
        }

        BOOL Manager::read(CDBRecord* record, void* buffer, u32 readSize) {
            utility::autoMutexLock lock(mMutex);
            CDBErr err = CDBRecordRead(record, buffer, readSize, NULL);
            return error_handling(err, 909);
        }

        BOOL Manager::write(CDBRecord* record, void* buffer, u32 readSize) {
            utility::autoMutexLock lock(mMutex);
            CDBErr err = CDBRecordWrite(record, buffer, readSize);
            return error_handling(err, 923);
        }

        BOOL Manager::seek(CDBRecord* record, s32 offset, CDBSeek seekOrigin) {
            utility::autoMutexLock lock(mMutex);
            CDBErr err = CDBRecordSeek(record, offset, seekOrigin);
            return error_handling(err, 937);
        }

        BOOL Manager::close(CDBRecord* record) {
            utility::autoMutexLock lock(mMutex);
            CDBErr err = CDBRecordClose(record);
            return error_handling(err, 949);
        }

        void Manager::startSDProc() {
            mSDVFWorker.create(mpSDVFWork, 18);
        }

        void Manager::terminateSDProc() {
            mSDVFWorker.terminate_async();
        }

        BOOL Manager::mountSD() {
            utility::autoMutexLock lock(mMutex);
            CDBErr err = CDBMountSD();
            u32 result = error_handling(err, 977);
            if (result == TRUE) {
                mbSDMounted = true;
            }
            return result;
        }

        BOOL Manager::unmountSD() {
            utility::autoMutexLock lock(mMutex);
            CDBErr err = CDBUnmountSDForce();
            u32 result = error_handling(err, 992);
            if (result == TRUE) {
                mbSDMounted = false;
            }
            return result;
        }

        BOOL Manager::backupToSD(CDBRecord* record) {
            utility::autoMutexLock lock(mMutex);
            CDBErr err = CDBRecordBackupToSD(record);
            return error_handling(err, 1030);
        }

        BOOL Manager::cleanUpEmptyDirectories(CDBRecordLocation recordLocation) {
            utility::autoMutexLock lock(mMutex);
            CDBErr err = CDBDatabaseCleanUpEmptyDirectories(&mDatabase, recordLocation);
            return error_handling(err, 1042);
        }

        void Manager::getFreeSize(u32* freeSize) {
            utility::autoMutexLock lock(mMutex);
            
            mCDBFreeSize = CDBGetFreeSize();

            if (mCDBFreeSize < 0) {
                IPLErrorLog("CDB", CDBGetLastVFError(), 1058);

                error_handling(CDB_ERROR_FATAL_ERROR, 1059);
            }

            if (freeSize != NULL) {
                *freeSize = mCDBFreeSize;
            }
        }

        BOOL Manager::error_handling(CDBErr err, int line) {
            mCDBResult = err;

            BOOL result = FALSE;

            switch (err) {
                case CDB_ERROR_OK: {
                    result = TRUE;
                    break;
                }
                case CDB_ERROR_VF_ERROR: {
                    if (CDBGetFatalVFErrorFlag()) {
                        IPLErrorLogAndDisplay(MESG_ERR_FILE, "CDB", err, line);
                    }
                    break;
                }
                case CDB_ERROR_FATAL_ERROR: {
                    IPLErrorLogAndDisplay(MESG_ERR_FILE, "CDB", err, line);
                    break;
                }
                case CDB_ERROR_NAND_ERROR: {
                    switch (CDBGetLastNANDError()) {
                        case NAND_RESULT_CORRUPT: {
                            IPLErrorDisplay(MESG_ERR_NAND);
                            break;
                        }
                        case NAND_RESULT_ECC_CRIT:
                        case NAND_RESULT_AUTHENTICATION: {
                            IPLErrorLogAndDisplay(MESG_ERR_FILE, "cdb", err, line);
                            break;
                        }
                        default: {
                            break;
                        }
                    }
                    break;
                }
                // to generate jumptable
                case CDB_ERROR_1:
                case CDB_ERROR_2:
                case CDB_ERROR_3:
                case CDB_ERROR_4:
                case CDB_ERROR_5:
                case CDB_ERROR_7:
                case CDB_ERROR_9:
                default: {
                    break;
                }
            }
            return result;
        }
    }
}
