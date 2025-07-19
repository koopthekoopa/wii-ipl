#ifndef REVOLUTION_CDB_RECORD_H
#define REVOLUTION_CDB_RECORD_H

#include <revolution/types.h>

#include <revolution/cdb/CDBTypes.h>

#include <string.h>
#include <stddef.h>

#ifdef __cplusplus
extern "C" {
#endif // __cplusplus

#define CDB_RECORD_KEY_STRING_LEN       32
#define CDB_RECORD_KEY_STRLEN_LEN       23

#define CDB_KEYSTR_EPOCH_SIZE           10
#define CDB_KEYSTR_CODE_SIZE            7
#define CDB_KEYSTR_GAME_CODE_SIZE       4
#define CDB_KEYSTR_MAKER_CODE_SIZE      2
#define CDB_KEYSTR_SERIAL_NUMBER_SIZE   3
#define CDB_KEYSTR_TYPE_EXT_SIZE        4
#define CDB_KEYSTR_TYPE_SIZE            3

typedef enum CDBRecordLocation {
    CDB_RECORD_LOCATION_VF = 1,
    CDB_RECORD_LOCATION_SD,
} CDBRecordLocation;

/* The way the "serial number" is handled is some sort of count from 0 - 1000 */

typedef struct _CDBRecordKey {
    union {
        char    keyString[CDB_RECORD_KEY_STRING_LEN];   // 0x00
        struct {
            char    epoch[CDB_KEYSTR_EPOCH_SIZE];               // 0x00
            char    pad0;                                       // 0x0A (10)
            union {
                char    code[CDB_KEYSTR_CODE_SIZE];
                struct {
                    char    gameCode[CDB_KEYSTR_GAME_CODE_SIZE];
                    char    pad1;
                    char    makerCode[CDB_KEYSTR_MAKER_CODE_SIZE];
                };
            };                                                  // 0x0B (11)
            char    pad2;                                       // 0x12 (18)
            char    serialNum[CDB_KEYSTR_SERIAL_NUMBER_SIZE];   // 0x13 (19)
            union {
                char    typeExt[CDB_KEYSTR_TYPE_EXT_SIZE];
                struct {
                    char    pad3;
                    char    type[CDB_KEYSTR_TYPE_SIZE];
                };
            };                                                  // 0x16 (22)
        } keyStrStruct;
    };
    u64         wiiId;                                  // 0x20
    CDBLocation location;                               // 0x28
    int         unk_0x2C;
} CDBRecordKey;

typedef struct _CDBRecord {
    u32             unk_0x00;
    void*           cryptBuf;   // 0x04
    CDBRecordKey    key;        // 0x08
    void*           file;       // 0x38
    u32             unk_0x3C;
} CDBRecord;

#define CDBKeyStrEpoch(keyString)           ((char*)&keyString[offsetof(CDBRecordKey, keyStrStruct.epoch)])
#define CDBKeyStrCode(keyString)            ((char*)&keyString[offsetof(CDBRecordKey, keyStrStruct.code)])
#define CDBKeyStrGameCode(keyString)        ((char*)&keyString[offsetof(CDBRecordKey, keyStrStruct.gameCode)])
#define CDBKeyStrMakerCode(keyString)       ((char*)&keyString[offsetof(CDBRecordKey, keyStrStruct.makerCode)])
#define CDBKeyStrSerialNumber(keyString)    ((char*)&keyString[offsetof(CDBRecordKey, keyStrStruct.serialNum)])
#define CDBKeyStrTypeExt(keyString)         ((char*)&keyString[offsetof(CDBRecordKey, keyStrStruct.typeExt)])
#define CDBKeyStrType(keyString)            ((char*)&keyString[offsetof(CDBRecordKey, keyStrStruct.type)])

CDBErr  CDBRecordOpen(CDBRecord* record);
CDBErr  CDBRecordRead(CDBRecord* record, void* buffer, u32 length, u32* readSize);
CDBErr  CDBRecordWrite(CDBRecord* record, void* buffer, u32 length);
CDBErr  CDBRecordSeek(CDBRecord* record, s32 offset, CDBSeek seekOrigin);
CDBErr  CDBRecordClose(CDBRecord* record);

CDBErr  CDBRecordGetDataSize(CDBRecord* record, u32* recordSize);
CDBErr  CDBRecordGetId(CDBRecord* record, CDBId* id);

CDBErr  CDBRecordGetTypeForce(CDBRecord* record, char* type);

CDBErr  CDBRecordRemove(CDBRecord* record);

CDBErr  CDBRecordBackupToSD(CDBRecord* record);

#ifdef __cplusplus
}
#endif // __cplusplus

#endif // REVOLUTION_CDB_RECORD_H
