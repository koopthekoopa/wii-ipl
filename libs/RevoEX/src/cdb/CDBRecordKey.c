#include <revolution/cdb.h>
#include <private/cdb.h>

#include <stdio.h>

BOOL CDBRecordKeyIsValid(CDBRecordKey* recordKey) {
    u32 keyLength;
    if (recordKey == NULL) {
        return FALSE;
    }

    keyLength = strlen(recordKey->keyString);
    if (keyLength >= CDB_RECORD_KEY_STRLEN_LEN) {
        if (recordKey->keyStrStruct.pad0 == '_' && recordKey->keyStrStruct.pad1 == '_' && recordKey->keyStrStruct.pad2 == '_' && recordKey->keyStrStruct.pad3 == '.') {
            if (recordKey->location >= CDB_FS_LOCATION_VF && recordKey->location <= CDB_FS_LOCATION_4) {
                return TRUE;
            }
        }
    }
    return FALSE;
}

void CDBRecordKeyInit(CDBRecordKey* recordKey, CDBDate epoch, int gameCode, u16 makerCode, int serialNumber, char* fileType, int unk) {
    char typeStr[8];
    char gcStr[8];
    char mcStr[8];

    u32 typeLength;

    CDBConvMCValueToMCStr(makerCode, mcStr);
    CDBConvGCValueToGCStr(gameCode, gcStr);

    recordKey->wiiId = CDBGetWiiId();
    recordKey->location = unk;

    typeLength = strlen(typeStr);
    strcpy(typeStr, fileType);
    CDBToLower(typeStr, typeLength);

    sprintf(recordKey->keyString, "%010u_%s_%s_%03d.%s", epoch, gcStr, mcStr, serialNumber, typeStr);
}

void CDBRecordKeySetSerialNumber(CDBRecordKey* recordKey, int serialNum) {
    char serialNumStr[16];
    sprintf(serialNumStr, "%03d", serialNum);
    memcpy(CDBKeyStrSerialNumber(recordKey->keyString), serialNumStr, CDB_KEYSTR_SERIAL_NUMBER_SIZE);
}

void CDBRecordKeyInitByOnlyDate(CDBRecordKey* recordKey, CDBDate epoch) {
    sprintf(recordKey->keyString, "%010u", epoch);
}

void CDBRecordKeyInitFromFileName2(CDBRecordKey* recordKey, char* keyString, char* gameCode, char* fileType) {
    int serialNum;
    CDBDate epoch;

    // TODO
    sscanf(keyString, "%X", &epoch);
    sscanf(&keyString[9], "%d", &serialNum);

    sprintf(recordKey->keyString, "%010u_%s_%03d.%s", epoch, gameCode, serialNum, fileType);

    recordKey->wiiId = CDBGetWiiId();
    recordKey->location = CDB_FS_LOCATION_SD;
}

void CDBRecordKeyCopy(CDBRecordKey* recordKey, CDBRecordKey* newRecordKey) {
    strcpy(recordKey->keyString, newRecordKey->keyString);

    recordKey->wiiId = newRecordKey->wiiId;
    recordKey->location = newRecordKey->location;
}

BOOL CDBRecordKeyCompare(CDBRecordKey* recordKey1, CDBRecordKey* recordKey2) {
    int result = strcmp(recordKey1->keyString, recordKey2->keyString);
    if (result != 0) {
        return result;
    }

    if (recordKey1->location == recordKey2->location) {
        return 0;
    }

    return recordKey1->location < recordKey2->location ? 1 : -1;
}

int CDBRecordKeyCompareByDate(CDBRecordKey* recordKey1, CDBRecordKey* recordKey2) {
    char keyString1[32];
    char keyString2[32];

    CDBConvKeyStrToEpochStr(recordKey1->keyString, keyString1);
    CDBConvKeyStrToEpochStr(recordKey2->keyString, keyString2);
    return strcmp(keyString2, keyString1);
}

void CDBRecordKeyGetKeyStr(CDBRecordKey* recordKey, char* keyString) {
    strcpy(keyString, recordKey->keyString);
}
