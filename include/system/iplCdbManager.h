#ifndef IPL_CDB_MANAGER_H
#define IPL_CDB_MANAGER_H

#include <revolution/cdb.h>
#include <revolution/nwc24.h>
#include <revolution/os.h>

#include "system/iplSDVFWorker.h"
#include "system/RIPL_BoardRecord.h"

#include "iplMath.h"

#include <egg/core.h>

namespace ipl {
    namespace cdb {
        class Manager {
            public:
                static const int UNKNOWN_VALUE;

                Manager(EGG::Heap* heap);

                void        closeDatabase();

                BOOL        createNewRecord(const char* recordName, const char* recordFileType, const OSCalendarTime* dateTime, u32* gameCode, u16* makerCode, 
                                            const math::VEC2& recordPos, u32 recordFlags, const NWC24FriendAddr& friendAddr, u16 friendType, u16 replyFlag, 
                                            const wchar_t* titleText, const wchar_t* bodyText, const void* faceData, 
                                            const void** attachData, u32* attachSize, RBRAttachmentType* attachType);

                u8*         makeBuffer(const math::VEC2& recordPos, u32 recordFlags, const NWC24FriendAddr& friendAddr, u16 friendType, u16 replyFlag,
                                        const wchar_t* titleText, const wchar_t* bodyText, const void* faceData,
                                        const void** attachData, u32* attachSize, RBRAttachmentType* attachType,
                                        u32* bufferSize);

                BOOL        writeRecord(CDBRecord* record, const math::VEC2& recordPos, u32 recordFlags, const NWC24FriendAddr& friendAddr, u16 friendType, u16 replyFlag,
                                        const wchar_t* titleText, const wchar_t* bodyText, const void* faceData,
                                        const void** attachData, u32* attachSize, RBRAttachmentType* attachType);

                BOOL        createAtOnce(CDBRecord* record, const char* recordName, const char* recordFileType, 
                                        u32* gameCode, u16* makerCode, const OSCalendarTime* dateTime, u8* buffer, u32 bufferSize);

                BOOL        deleteRecord(CDBRecordKey* recordKey);

                BOOL        isValidHeader(const RBRHeader* header);
                BOOL        isValidType(const char* text);
                BOOL        isTxtValidType(const char* text);

                u32         calcCRC(const RBRHeader* header);

                BOOL        isOverFlow() const;
                BOOL        isUnderFlow() const;

                BOOL        findByKey(CDBRecord* record, CDBRecordKey* recordKey);
                BOOL        search(const CDBDate& begin, const CDBDate& end,
                                    CDBSearchDirection searchDirection, CDBRecordLocation recordLocation, int unk2,
                                    CDBSearchRecordCB searchRecordCB, void* searchRecordWork);

                BOOL        getDataSize(CDBRecord* record, u32* recordDataSize);
                BOOL        getCDBId(CDBRecord* record, CDBId* recordCDBId);

                BOOL        open(CDBRecord* record);
                BOOL        read(CDBRecord* record, void* buffer, u32 readSize);
                BOOL        write(CDBRecord* record, void* buffer, u32 writeSize);
                BOOL        seek(CDBRecord* record, s32 offset, CDBSeek seekOrigin);
                BOOL        close(CDBRecord* record);

                BOOL        remove(CDBRecord* record);

                void        startSDProc();
                void        terminateSDProc();

                BOOL        mountSD();
                BOOL        unmountSD();

                void mountSD_safe() {
                    if (!mbSDMounted) {
                        mountSD();
                    }
                }

                void unmountSD_safe() {
                    if (mbSDMounted) {
                        unmountSD();
                    }
                }

                bool        isSDMounted()   { return mbSDMounted; }

                BOOL        backupToSD(CDBRecord* record);

                BOOL        cleanUpEmptyDirectories(CDBRecordLocation recordLocation);

                CDBErr      getCDBResult()  { return mCDBResult; }

                void        getFreeSize(u32* freeSize = NULL);

                SDVFWorker* getSDWorker()   { return &mSDVFWorker; }

            private:
                BOOL    error_handling(CDBErr err, int line);

                int         mCDBFreeSize;   // 0x00
                CDBErr      mCDBResult;     // 0x04
                CDBDatabase mDatabase;      // 0x08

                bool        mbSDMounted;    // 0x14

                SDVFWorker  mSDVFWorker;    // 0x18
                u8*         mpSDVFWork;     // 0x1C
                OSMutex     mMutex;         // 0x20

                u8          unk_0x38;
                u8          unk_0x39;
        };
    }
}

#endif // IPL_CDB_MANAGER_H
