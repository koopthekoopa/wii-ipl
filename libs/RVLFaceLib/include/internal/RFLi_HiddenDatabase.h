#ifndef RFLi_HIDDEN_DATABASE_H
#define RFLi_HIDDEN_DATABASE_H

#include <revolution/types.h>

#include <RFL_Types.h>
#include <internal/RFLi_Types.h>

#include <internal/RFLi_Controller.h>
#include <RFL_Database.h>

#include <internal/RFLi_Format.h>

#ifdef __cplusplus
extern "C" {
#endif

#define RFLi_HIDDEN_DB_IDENTIFIER   'RNHD'

#define RFL_MAX_HIDDEN_DB   (10000)

typedef struct {
    u32             identifier;                 // 0x00

    s16             head;                       // 0x04
    s16             tail;                       // 0x06

    RFLiFormatTable data[RFL_MAX_HIDDEN_DB];    // 0x08
    u8              padding[22];                // 0x1D4C8

    u16             crc;                        // 0x1D4DE
} RFLiHiddenDatabase;

typedef struct {
    RFLiHiddenCharData data[RFL_MAX_DATABASE];  // 0x00
    u8 num;                                     // 0x1900
    u8 current;                                 // 0x1901
} RFLiHiddenDBList;

typedef struct {
    BOOL                loaded;         // 0x00
    BOOL                readError;      // 0x04

    void*               writeTmp;       // 0x08
    s16                 writeIndex;     // 0x0C
    RFLSimpleCB         writeCallback;  // 0x10

    void*               formatTmp;      // 0x14
    RFLSimpleCB         formatCallback; // 0x18
    s16                 formatIndex;    // 0x1C

    RFLiHiddenCharData* loadDst;        // 0x20
    void*               loadTmp;        // 0x24
    u32                 loadArg;        // 0x28
    RFLSimpleCBArg      loadCallback;   // 0x2C
    u16                 loadIndex;      // 0x30

    RFLiHiddenCharData* cachedDB;       // 0x34
    BOOL                cached;         // 0x38

    RFLiHiddenDBList    list;           // 0x3C
} RFLiHiddenDBManager;

void        RFLiInitHiddenDatabase();

RFLErrcode  RFLiLoadHiddenDataAsync(RFLiHiddenCharData* data, u16 index, RFLSimpleCBArg cb, u32 arg);
RFLErrcode  RFLiLoadCachedHiddenData(RFLiHiddenCharData* data, u16 index);

RFLErrcode  RFLiSaveHiddenHeaderAsync(RFLSimpleCB cb);

RFLErrcode  RFLiDeleteHiddenData(u16 index);
RFLErrcode  RFLiDeleteHiddenDataID(const RFLCreateID* id);
RFLErrcode  RFLiDeleteHiddenDataAsync(u16 index);
RFLErrcode  RFLiDeleteHiddenDataIDAsync(const RFLCreateID* id);

BOOL        RFLiUpdateOfficial2DeleteHidden(const RFLCreateID* id);

RFLErrcode  RFLiWriteCtrlToHiddenDB(const RFLiCtrlBuffer* buffer, BOOL isChMode);

RFLErrcode  RFLiOneDataToHiddenDB(const RFLiHiddenCharData* data);

RFLErrcode  RFLiDeleteSaveHiddenDataAsync(const RFLiCharData* data);

s16         RFLiSearchHiddenData(const RFLCreateID* id);
u16         RFLiCountupHiddenDataNum(RFLSex sex);

s16         RFLiGetHiddenNext(u16 index);
s16         RFLiGetHiddenPrev(u16 index);

BOOL        RFLiIsValidHiddenData(u16 index, RFLSex sex);

u32         RFLiGetCacheHDBBufferSize();
void        RFLiClearCacheHDB(void* cache);
RFLErrcode  RFLiCacheHDBAsync(void* buffer);
RFLErrcode  RFLiCacheHDB(void* buffer);
RFLErrcode  RFLiFreeCacheHDB();
BOOL        RFLiIsCachedHDB();

#ifdef __cplusplus
}
#endif

#endif // RFLi_HIDDEN_DATABASE_H
