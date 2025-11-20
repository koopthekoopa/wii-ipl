#ifndef RFL_MIDDLE_DATABASE_H
#define RFL_MIDDLE_DATABASE_H

#include <RFL_Types.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef enum {
    RFLMiddleDBType_HiddenRandom = 0,
    RFLMiddleDBType_HiddenNewer,
    RFLMiddleDBType_HiddenOlder,
    RFLMiddleDBType_Random,
    RFLMiddleDBType_UserSet,
    RFLMiddleDBType_Reserved1,
} RFLMiddleDBType;

typedef struct {
    u8 data[24]; // 0x00
} RFLMiddleDatabase;

u32             RFLGetMiddleDBBufferSize(u16 size);

void            RFLInitMiddleDB(RFLMiddleDatabase* db, RFLMiddleDBType type, void* buffer, u16 size);
RFLErrcode      RFLUpdateMiddleDBAsync(RFLMiddleDatabase* db);

RFLMiddleDBType RFLGetMiddleDBType(const RFLMiddleDatabase* db);
u16             RFLGetMiddleDBSize(const RFLMiddleDatabase* db);
u16             RFLGetMiddleDBStoredSize(const RFLMiddleDatabase* db);

void            RFLSetMiddleDBRandomMask(RFLMiddleDatabase* db, RFLSex sex, RFLAge age, RFLRace race);
void            RFLSetMiddleDBHiddenMask(RFLMiddleDatabase* db, RFLSex sex);

RFLErrcode      RFLAddMiddleDBStoreData(RFLMiddleDatabase* db, const RFLStoreData* data);

#ifdef __cplusplus
}
#endif

#endif // RFL_MIDDLE_DATABASE_H
