#ifndef RFLi_MIDDLE_DATABASE_H
#define RFLi_MIDDLE_DATABASE_H

#include <internal/RFLi_Types.h>
#include <RFL_Types.h>

#include <RFL_MiddleDatabase.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef struct {
    RFLMiddleDBType     type; // 0x00
    RFLSimpleCB         callback; // 0x04

    RFLiHiddenCharData* data; // 0x08
    u16                 size; // 0x0C
    u16                 storedSize; // 0x0E

    u32                 userdata1; // 0x10
    u32                 userdata2; // 0x14
} RFLiMiddleDB;

RFLErrcode  RFLiUpdateMiddleDB(RFLMiddleDatabase* db);
RFLErrcode  RFLiUpdateMiddleDBAsync(RFLMiddleDatabase* db, RFLSimpleCB cb, BOOL use_cache);

BOOL        RFLiGetCharInfoMiddleDB(RFLiCharInfo* info, const RFLMiddleDatabase* db, u16 index);

void        RFLiDeleteMiddleDB(RFLMiddleDatabase* db, u16 index);
BOOL        RFLiPassMiddleDB(RFLMiddleDatabase* db, u16 passNum);

RFLErrcode  RFLiAddMiddleDBUserData(RFLMiddleDatabase* db, const RFLCharData* data);

#ifdef __cplusplus
}
#endif

#endif // RFLi_MIDDLE_DATABASE_H
