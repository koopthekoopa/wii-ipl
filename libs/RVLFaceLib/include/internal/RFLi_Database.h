#ifndef RFLi_DATABASE_H
#define RFLi_DATABASE_H

#include <RFL_Types.h>
#include <internal/RFLi_Types.h>

#include <RFL_Database.h>

#include <internal/RFLi_HiddenDatabase.h>

#include <revolution/os/OSAlarm.h>
#include <revolution/mem.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef struct {
    void*           head;       // 0x00
    u32             size;       // 0x04
    u8*             current;    // 0x08
    u32             count;      // 0x0C
    u16             crc;        // 0x10

    OSAlarm         alarm;      // 0x18
    RFLSimpleCBArg  callback;   // 0x48
} RFLiDatabaseCRCInfo;

typedef struct {
    u32                 identifier;                 // 0x00
    RFLiCharData        rawdata[RFL_MAX_DATABASE];  // 0x04
    u32                 isolation : 1;              // 0x1CEC
    u32                 padding1 : 31;              // 0x1CEC

    u8                  specialInvite[13];          // 0x1CF0
    u8                  month_nwc24;                // 0x1CFD
    u8                  day_nwc24;                  // 0x1CFE
    u8                  padding2;                   // 0x1CFF

    RFLiHiddenDatabase  hidden;                     // 0x1D00
} RFLiDatabase;

typedef struct {
    RFLiDatabase*       mDatabase;          // 0x00
    RFLSimpleCB         saveCallback;       // 0x04
    RFLSimpleCB         formatCallback;     // 0x08
    RFLSimpleCB         bootloadCallback;   // 0x0C
    RFLiOpenType        saveType;           // 0x10
    union {
        RFLiCharData    mDeleteTrg; // 0x14
        RFLiCharData    mSetTrg;    // 0x14
    };
    RFLiDatabaseCRCInfo crcInfo;            // 0x60
} RFLiDatabaseManager;

void                RFLiInitDatabase(MEMiHeapHead* sysHeap);

RFLErrcode          RFLiBootLoadDatabaseAsync(RFLSimpleCB cb);
RFLErrcode          RFLiSaveDatabaseAsync(RFLSimpleCB cb);
RFLErrcode          RFLiSaveOpenedDatabaseAsync(RFLSimpleCB cb);
RFLErrcode          RFLiSaveDatabase();

RFLiCharData*       RFLiGetCharData(u16 index);
BOOL                RFLiClrCharInfo(u16 index, RFLiCharData* deleted);

void                RFLiConvertRaw2Info(const RFLiCharData* data, RFLiCharInfo* info);
void                RFLiConvertHRaw2Info(const RFLiHiddenCharData* data, RFLiCharInfo* info);
void                RFLiConvertInfo2Raw(const RFLiCharInfo* info, RFLiCharData* data);
void                RFLiConvertInfo2HRaw(const RFLiCharInfo* info, RFLiHiddenCharData* data);
void                RFLiConvertHRaw2Raw(const RFLiHiddenCharData* hdata, RFLiCharData* data);
void                RFLiConvertRaw2HRaw(const RFLiCharData* data, RFLiHiddenCharData* hdata);
RFLErrcode          RFLiGetCharRawData(RFLiCharData* data, u16 index);

RFLErrcode          RFLiGetCharInfo(RFLiCharInfo* info, u16 index);
BOOL                RFLiSetCharInfo(const RFLiCharInfo* info, u16 index);

BOOL                RFLiSetAndSaveCharInfoAsync(const RFLiCharInfo* info, u16 index);
BOOL                RFLiDeleteCharForCtrlMode(u16 index);
BOOL                RFLiDeleteAndSaveCharInfoAsync(u16 index);

s32                 RFLiGetMinimumBlankIndex();

void                RFLiSetCreateID(RFLiCharInfo* info, BOOL isSpecialData);
void                RFLiSetTemporaryID(RFLiCharInfo* info);

BOOL                RFLiIsSameID(const RFLCreateID* lhv, const RFLCreateID* rhv);
BOOL                RFLiIsMyHomeID(const RFLCreateID* id);
BOOL                RFLiIsValidID(const RFLCreateID* id);
BOOL                RFLiIsSpecialID(const RFLCreateID* id);
BOOL                RFLiIsDSID(const RFLCreateID* id);
BOOL                RFLiIsTemporaryID(const RFLCreateID* id);

BOOL                RFLiIsValidName(const RFLiCharData* data);
BOOL                RFLiIsValidName2(const RFLiCharInfo* data);

BOOL                RFLiGetIsolation();
void                RFLiSetIsolation(BOOL isolation);

RFLiHiddenDatabase* RFLiGetHiddenHeader();

BOOL                RFLiDBIsLoaded();

u16                 RFLiCalculateCRC(void* head, u32 size);

void                RFLiCreateHeaderCRC();
void                RFLiCreateHeaderCRCAsync(RFLSimpleCB cb);

BOOL                RFLiCheckHeaderCRC();
void                RFLiCheckHeaderCRCAsync(RFLSimpleCBArg cb);

#ifdef __cplusplus
}
#endif

#endif // RFLi_DATABASE_H
