#include <revolution/cdb.h>
#include <private/cdb.h>

#include <revolution/os.h>

#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>

BOOL CDBIsMakerCodeStr(const char* makerCode) {
    return CDBSafeStrLen(makerCode, 2+1) == 2;
}

BOOL CDBIsGameCodeStr(const char* gameCode) {
    return CDBSafeStrLen(gameCode, 4+1) == 4;
}

int CDBCompareTypeStr(char* str1, char* str2) {
    if (CDBSafeStrLen(str1, 5+1) < 0) {
        return -1;
    }
    if (CDBSafeStrLen(str2, 5+1) < 0) {
        return 1;
    }
    return strcmpi(str1, str2);
}

void CDBClampCDBDate(CDBDate* cdbDate) {
    int year;
    int month;
    int day;
    int hour;
    int min;
    int sec;

    if (cdbDate != NULL) {
        CDBConvertCDBDateToCalendarTime(*cdbDate, &year, &month, &day, &hour, &min, &sec);
        if (year > 2035) {
            *cdbDate = CDBMakeCDBDate(2035, 11, 31, hour, min, sec);
        }
    }
}

CDBDate CDBMakeCDBDate(int year, int month, int day, int hour, int min, int sec) {
    OSCalendarTime calendar;

    calendar.year = year;
    calendar.mon = month;
    calendar.mday = day;

    calendar.hour = hour;
    calendar.min = min;
    calendar.sec = sec;

    calendar.usec = 0;
    calendar.msec = 0;
    return OSTicksToSeconds(OSCalendarTimeToTicks(&calendar));
}

CDBDate CDBMakeCDBDateDayBegin(int year, int month, int day, int hour, int min, int sec) {
    return CDBMakeCDBDate(year, month, day, 0, 0, 0);
}

CDBDate CDBMakeCDBDateDayEnd(int year, int month, int day, int hour, int min, int sec) {
    return CDBMakeCDBDate(year, month, day, 23, 59, 59);
}

CDBDate CDBMakeCDBDateMonthBegin(int year, int month, int day, int hour, int min, int sec) {
    return CDBMakeCDBDate(year, month, 1, 0, 0, 0);
}

CDBDate CDBMakeCDBDateMonthEnd(int year, int month, int day, int hour, int min, int sec) {
    switch (month) {
        case 1: {
            day = 28;
            break;
        }
        case 0:
        case 2:
        case 4:
        case 6:
        case 7:
        case 9:
        case 11: {
            day = 31;
            break;
        }
        default: {
            day = 30;
            break;
        }
    }

    if (month == 1) {
        if (((year % 4) == 0 && (year % 100) != 0) || (year % 400) == 0) {
            day = 29;
        }
    }

    return CDBMakeCDBDate(year, month, day, 23, 59, 59);
}

CDBDate CDBMakeCDBDateYearBegin(int year, int month, int day, int hour, int min, int sec) {
    return CDBMakeCDBDate(year, 0, 1, 0, 0, 0);
}

CDBDate CDBMakeCDBDateYearEnd(int year, int month, int day, int hour, int min, int sec) {
    return CDBMakeCDBDate(year, 11, 31, 23, 59, 59);
}

void CDBConvYearValueToYearStr(char* yearStr, int year) {
    sprintf(yearStr, "%04d", year);
}

void CDBConvMonthValueToMonthStr(char* monthStr, int month) {
    sprintf(monthStr, "%02d", month);
}

void CDBConvDayValueToDayStr(char* dayStr, int day) {
    sprintf(dayStr, "%02d", day);
}

void CDBConvHourValueToHourStr(char* hourStr, int hour) {
    sprintf(hourStr, "%02d", hour);
}

void CDBConvMinuteValueToMinuteStr(char* minuteStr, int minute) {
    sprintf(minuteStr, "%02d", minute);
}

DECOMP_FORCE_ACTIVE(CDBConv_c, "%08X");

void CDBGenRootPath(char* rootPath, CDBLocation location, u64* wiiId) {
    u32     wiiIdHi, wiiIdLo;
    char    wiiIdHiPath[16];
    char    wiiIdLoPath[16];

    if (location == CDB_FS_LOCATION_VF) {
        strcpy(rootPath, CDB_CFG_VF_DRIVE_ROOT);
        return;
    }

    if (wiiId == NULL || *wiiId == 0) {
        wiiIdHi = CDBGetWiiHighId();
        wiiIdLo = CDBGetWiiLowId();
    }
    else {
        wiiIdHi = CDBGetWiiHighIdEx(*wiiId);
        wiiIdLo = CDBGetWiiLowIdEx(*wiiId);
    }

    strcpy(rootPath, CDB_SD_ROOT_PATH_LS);

    sprintf(wiiIdHiPath, "%08X", wiiIdHi);
    sprintf(wiiIdLoPath, "%08X", wiiIdLo);

    CDBFSConcatenatePath(rootPath, wiiIdHiPath);
    CDBFSConcatenatePath(rootPath, wiiIdLoPath);
}

void CDBConvYearStrToFullPath(char* fullPath, char* yearStr, CDBLocation location, u64* wiiId) {
    CDBGenRootPath(fullPath, location, wiiId);
    CDBFSConcatenatePath(fullPath, yearStr);
}

void CDBConvMonthStrToFullPath(char* fullPath, char* yearStr, char* monthStr, CDBLocation location, u64* wiiId) {
    CDBGenRootPath(fullPath, location, wiiId);
    CDBFSConcatenatePath(fullPath, yearStr);
    CDBFSConcatenatePath(fullPath, monthStr);
}

void CDBConvDayStrToFullPath(char* fullPath, char* yearStr, char* monthStr, char* dayStr, CDBLocation location, u64* wiiId) {
    CDBGenRootPath(fullPath, location, wiiId);
    CDBFSConcatenatePath(fullPath, yearStr);
    CDBFSConcatenatePath(fullPath, monthStr);
    CDBFSConcatenatePath(fullPath, dayStr);
}

void CDBConvHourStrToFullPath(char* fullPath, char* yearStr, char* monthStr, char* dayStr, char* hourStr, CDBLocation location, u64* wiiId) {
    CDBGenRootPath(fullPath, location, wiiId);
    CDBFSConcatenatePath(fullPath, yearStr);
    CDBFSConcatenatePath(fullPath, monthStr);
    CDBFSConcatenatePath(fullPath, dayStr);
    CDBFSConcatenatePath(fullPath, hourStr);
}

void CDBConvMinuteStrToFullPath(char* fullPath, char* yearStr, char* monthStr, char* dayStr, char* hourStr, char* minuteStr, CDBLocation location, u64* wiiId) {
    CDBGenRootPath(fullPath, location, wiiId);
    CDBFSConcatenatePath(fullPath, yearStr);
    CDBFSConcatenatePath(fullPath, monthStr);
    CDBFSConcatenatePath(fullPath, dayStr);
    CDBFSConcatenatePath(fullPath, hourStr);
    CDBFSConcatenatePath(fullPath, minuteStr);
}

void CDBConvCodeStrToFullPath(char* fullPath, char* yearStr, char* monthStr, char* dayStr, char* hourStr, char* minuteStr, char* codeStr, CDBLocation location, u64* wiiId) {
    CDBGenRootPath(fullPath, location, wiiId);
    CDBFSConcatenatePath(fullPath, yearStr);
    CDBFSConcatenatePath(fullPath, monthStr);
    CDBFSConcatenatePath(fullPath, dayStr);
    CDBFSConcatenatePath(fullPath, hourStr);
    CDBFSConcatenatePath(fullPath, minuteStr);
    CDBFSConcatenatePath(fullPath, codeStr);
}

// I cannot take it anymore
void CDBConvTypeStrToFullPath(char* fullPath, char* yearStr, char* monthStr, char* dayStr, char* hourStr, char* minuteStr, char* codeStr, char* typeStr, CDBLocation location, u64* wiiId) {
    CDBGenRootPath(fullPath, location, wiiId);
    CDBFSConcatenatePath(fullPath, yearStr);
    CDBFSConcatenatePath(fullPath, monthStr);
    CDBFSConcatenatePath(fullPath, dayStr);
    CDBFSConcatenatePath(fullPath, hourStr);
    CDBFSConcatenatePath(fullPath, minuteStr);
    CDBFSConcatenatePath(fullPath, codeStr);
    CDBFSConcatenatePath(fullPath, typeStr);
}

void CDBConvFileNameStrToFullPath(char* fullPath, char* yearStr, char* monthStr, char* dayStr, char* hourStr, char* minuteStr, char* codeStr, char* typeStr, char* fileNameStr, CDBLocation location, u64* wiiId) {
    CDBGenRootPath(fullPath, location, wiiId);
    CDBFSConcatenatePath(fullPath, yearStr);
    CDBFSConcatenatePath(fullPath, monthStr);
    CDBFSConcatenatePath(fullPath, dayStr);
    CDBFSConcatenatePath(fullPath, hourStr);
    CDBFSConcatenatePath(fullPath, minuteStr);
    CDBFSConcatenatePath(fullPath, codeStr);
    CDBFSConcatenatePath(fullPath, typeStr);
    CDBFSConcatenatePath(fullPath, fileNameStr);
}

CDBDate CDBConvDirStrToCDBDate(char* yearStr, char* monthStr, char* dayStr, char* hourStr, char* minuteStr, CDBLocation location, u64* wiiId) {
    return CDBMakeCDBDate(atoi(yearStr), atoi(monthStr), atoi(dayStr), atoi(hourStr), atoi(minuteStr), 0);
}

void CDBConvGCStrToGCValue(char* gcStr, u32* gcValue) {
    if (gcStr == NULL) {
        *gcValue = -1;
    }
    else {
        memcpy(gcValue, gcStr, sizeof(u32));
    }
}

void CDBConvGCValueToGCStr(u32 gcValue, char* gcStr) {
    memcpy(gcStr, &gcValue, sizeof(u32));
    gcStr[4] = 0; // Null termination
    strcmp(gcStr, "JXXN"); // ?
}

void CDBConvMCValueToMCStr(u16 mcValue, char* mcStr) {
    memcpy(mcStr, &mcValue, sizeof(u16));
    mcStr[2] = 0; // Null termination
    CDBCheckMakerCodeStr(mcStr);
}

void CDBConvMCStrToMCValue(char* mcStr, u16* mcValue) {
    if (mcStr == NULL) {
        *mcValue = -1;
    }
    else {
        memcpy(mcValue, mcStr, sizeof(u16));
    }
}

void CDBConvKeyStrToEpochValue(char* keyString, CDBDate* epochVal) {
    char epochStr[32];
    
    strncpy(epochStr, CDBKeyStrEpoch(keyString), CDB_KEYSTR_EPOCH_SIZE);
    epochStr[CDB_KEYSTR_EPOCH_SIZE] = 0;

    CDBConvEpochStrToEpochValue(epochStr, epochVal);
}

void CDBConvKeyStrToEpochStr(char* keyString, char* epochVal) {
    char epochStr[16];
    
    strncpy(epochVal, CDBKeyStrEpoch(keyString), CDB_KEYSTR_EPOCH_SIZE);
    epochVal[CDB_KEYSTR_EPOCH_SIZE] = 0;
}

void CDBConvEpochStrToEpochValue(char* epochStr, CDBDate* epochVal) {
    sscanf(epochStr, "%ul", epochVal);
}

void CDBConvEpochValueToDate(CDBDate epoch, int* year, int* month, int* day, int* hour, int* min, int* sec) {
    OSCalendarTime calendar;
    
    OSTicksToCalendarTime(OSSecondsToTicks((OSTime)epoch), &calendar);

    if (year != NULL) {
        *year = calendar.year;
    }
    if (month != NULL) {
        *month = calendar.mon;
    }
    if (day != NULL) {
        *day = calendar.mday;
    }
    if (hour != NULL) {
        *hour = calendar.hour;
    }
    if (min != NULL) {
        *min = calendar.min;
    }
    if (sec != NULL) {
        *sec = calendar.sec;
    }
}

void CDBConvKeyStrToFullPath_(char* keyString, char* fullPath, CDBLocation location, u64* wiiId);

DECOMP_FORCE_ACTIVE(CDBConv_c, "%04d%02d%02d");

CDBErr CDBConvKeyToFullPath(CDBRecordKey* recordKey, char* fullPath) {
    BOOL ret = CDBRecordKeyIsValid(recordKey);
    if (ret == FALSE) {
        CDBReportError("invalid CDBRecordKey");
        return CDB_ERROR_5;
    }

    CDBConvKeyStrToFullPath_(recordKey->keyString, fullPath, recordKey->location, NULL);
    return CDB_ERROR_OK;
}

void CDBConvKeyStrToFullPath_(char* keyString, char* fullPath, CDBLocation location, u64* wiiId) {
    char    yearStr[8];
    char    monthStr[8];
    char    dayStr[8];
    char    hourStr[8];
    char    minStr[8];

    char    codeStr[8];
    char    typeStr[8];
    char    serialNumStr[8];
    char    fileNameStr[8];
    
    CDBDate epoch;
    int     year;
    int     month;
    int     day;
    int     hour;
    int     min;

    CDBConvKeyStrToEpochValue(keyString, &epoch);
    CDBConvEpochValueToDate(epoch, &year, &month, &day, &hour, &min, NULL);

    CDBConvYearValueToYearStr(yearStr, year);
    CDBConvMonthValueToMonthStr(monthStr, month);
    CDBConvDayValueToDayStr(dayStr, day);
    CDBConvHourValueToHourStr(hourStr, hour);
    CDBConvMinuteValueToMinuteStr(minStr, min);

    CDBConvKeyStrToCode(keyString, codeStr);
    CDBConvKeyStrToSerialNumber(keyString, serialNumStr);
    CDBConvKeyStrToType(keyString, typeStr);
    CDBConvKeyStrToFileName(keyString, fileNameStr);

    if (location == CDB_FS_LOCATION_VF || location == CDB_FS_LOCATION_SD) {
        CDBConvFileNameStrToFullPath(fullPath, yearStr, monthStr, dayStr, hourStr, minStr, codeStr, typeStr, fileNameStr, location, wiiId);
    }
    else {
        CDBReportFatal("CDBConvKeyStrToFullPath unknown location=%d\n", location);
        OSHalt("CDBConvKeyStrToFullPath", 733);
    }
}

void CDBConvKeyStrToCode(char* keyString, char* code) {
    strncpy(code, CDBKeyStrCode(keyString), CDB_KEYSTR_CODE_SIZE);
    code[CDB_KEYSTR_CODE_SIZE] = 0;
}

void CDBConvKeyStrToSerialNumber(char* keyString, char* serialNum) {
    strncpy(serialNum, CDBKeyStrSerialNumber(keyString), CDB_KEYSTR_SERIAL_NUMBER_SIZE);
    serialNum[CDB_KEYSTR_SERIAL_NUMBER_SIZE] = 0;
}

void CDBConvKeyStrToFileName(char* keyString, char* fileName) {
    CDBDate epoch;
    char serialNum[CDB_KEYSTR_SERIAL_NUMBER_SIZE+1];
    
    CDBConvKeyStrToEpochValue(keyString, &epoch);
    CDBConvKeyStrToSerialNumber(keyString, serialNum);
    sprintf(fileName, "%08X.%s", epoch, serialNum);
}

void CDBConvKeyStrToGameCode(char* keyString, u32* gameCode) {
    char gcStr[CDB_KEYSTR_GAME_CODE_SIZE+1];
    memcpy(gcStr, CDBKeyStrGameCode(keyString), CDB_KEYSTR_GAME_CODE_SIZE);
    gcStr[CDB_KEYSTR_GAME_CODE_SIZE] = 0;

    memcpy(gameCode, gcStr, 4);
}

void CDBConvKeyStrToMakerCode(char* keyString, u32* makerCode) {
    char mcStr[CDB_KEYSTR_MAKER_CODE_SIZE+1];
    memcpy(mcStr, CDBKeyStrMakerCode(keyString), CDB_KEYSTR_MAKER_CODE_SIZE);
    mcStr[2] = 0;

    memcpy(makerCode, mcStr, CDB_KEYSTR_MAKER_CODE_SIZE);
}

void CDBConvKeyStrToType(char* keyString, char* type) {
    int strLen = CDBSafeStrLen(keyString, CDB_RECORD_KEY_STRING_LEN);
    if (strLen >= 0) {
        int length = strLen - offsetof(CDBRecordKey, keyStrStruct.type);

        strncpy(type, CDBKeyStrType(keyString), length);
        type[length] = 0;

        CDBToLower(type, length);
    }
}

void CDBConvertCDBDateToCalendarTime(CDBDate date, int* year, int* month, int* day, int* hour, int* min, int* sec) {
    OSCalendarTime calendar;
    
    OSTicksToCalendarTime(OSSecondsToTicks((OSTime)date), &calendar);

    if (year != NULL) {
        *year = calendar.year;
    }
    if (month != NULL) {
        *month = calendar.mon;
    }
    if (day != NULL) {
        *day = calendar.mday;
    }
    if (hour != NULL) {
        *hour = calendar.hour;
    }
    if (min != NULL) {
        *min = calendar.min;
    }
    if (sec != NULL) {
        *sec = calendar.sec;
    }
}
