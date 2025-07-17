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
                static const u32    UNKNOWN_VALUE;

                Manager(EGG::Heap* heap);

                void    closeDatabase();

                BOOL    createNewRecord(const char* riplType, const char* rbrFileType, const OSCalendarTime* dateTime, u32* gameCode, u16* makerCode,
                                        const math::VEC2& rbrPos, u32 cdbType, const NWC24FriendAddr& friendAddr, u16 unk, u16 nwc24Type,
                                        const wchar_t* titleText, const wchar_t* bodyText, const void* faceData,
                                        const void** attachData, u32* attachSize, RBRAttachmentType* rbrAttach);

                u8*     makeBuffer(const math::VEC2& rbrPos, u32 cdbType, const NWC24FriendAddr& friendAttr, u16 unk, u16 nwc24Type,
                                const wchar_t* titleText, const wchar_t* bodyText, const void* faceData,
                                const void** attachData, u32* attachSize, RBRAttachmentType* rbrAttach,
                                u32* bufferSize);

                BOOL    writeRecord(CDBRecord* record, const math::VEC2& rbrPos, u32 cdbType, const NWC24FriendAddr& friendAttr, u16 unk, u16 nwc24Type,
                                    const wchar_t* titleText, const wchar_t* bodyText, const void* faceData,
                                    const void** attachData, u32* attachSize, RBRAttachmentType* rbrAttach);

                BOOL    createAtOnce(CDBRecord* record, const char* riplType, const char* rbrFileType,
                                    u32* gameCode, u16* makerCode, const OSCalendarTime* dateTime,
                                    u8* buffer, u32 bufferSize);

                BOOL    deleteRecord(CDBRecordKey* recordKey);

                BOOL    isValidHeader(const RBRHeader* header);
                BOOL    isValidType(const char* text);
                BOOL    isTxtValidType(const char* text);

                u32     calcCRC(const RBRHeader* header);

                BOOL    isOverFlow() const;
                BOOL    isUnderFlow() const;

                BOOL    findByKey(CDBRecord* record, CDBRecordKey* recordKey);
                BOOL    search(const u32& unk0, const u32& unk1, CDBSearchDirection searchDirection, CDBRecordLocation recordLocation, int unk2, CDBSearchRecordCB searchRecordCB, void* faceData);

                BOOL    getDataSize(CDBRecord* record, u32* recordDataSize);
                BOOL    getCDBId(CDBRecord* record, CDBId* recordCDBId);

                BOOL    open(CDBRecord* record);
                BOOL    read(CDBRecord* record, void* buffer, u32 readSize);
                BOOL    write(CDBRecord* record, void* buffer, u32 writeSize);
                BOOL    seek(CDBRecord* record, s32 offset, CDBSeek seekOrigin);
                BOOL    close(CDBRecord* record);

                BOOL    remove(CDBRecord* record);

                void    startSDProc();
                void    terminateSDProc();

                BOOL    mountSD();
                BOOL    unmountSD();

                void mountSD_if_unmounted() {
                    if (!mbSDMounted) {
                        mountSD();
                    }
                }

                void unmountSD2_if_mounted() {
                    if (mbSDMounted) {
                        unmountSD();
                    }
                }

                BOOL    backupToSD(CDBRecord* record);

                BOOL    cleanUpEmptyDirectories(CDBRecordLocation recordLocation);

                CDBErr  getCDBResult()  { return mCDBResult; }

                void    getFreeSize(u32* freeSize = NULL);

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
