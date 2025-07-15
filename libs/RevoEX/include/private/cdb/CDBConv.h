#ifndef PRIVATE_CDB_CONV_H
#define PRIVATE_CDB_CONV_H

#include <private/cdb/CDBFileSystem.h>
#include <revolution/cdb/CDBRecord.h>

#ifdef __cplusplus
extern "C" {
#endif // __cplusplus

BOOL    CDBIsMakerCodeStr(const char* makerCode);
BOOL    CDBIsGameCodeStr(const char* gameCode);

int     CDBCompareTypeStr(char* str1, char* str2);

void    CDBConvYearValueToYearStr(char* yearStr, int year);
void    CDBConvMonthValueToMonthStr(char* monthStr, int month);
void    CDBConvDayValueToDayStr(char* dayStr, int day);
void    CDBConvHourValueToHourStr(char* hourStr, int hour);
void    CDBConvMinuteValueToMinuteStr(char* minuteStr, int minute);

void    CDBGenRootPath(char* rootPath, CDBLocation location, u64* wiiId);

void    CDBConvYearStrToFullPath(char* fullPath, char* yearStr, CDBLocation location, u64* wiiId);
void    CDBConvMonthStrToFullPath(char* fullPath, char* yearStr, char* monthStr, CDBLocation location, u64* wiiId);
void    CDBConvDayStrToFullPath(char* fullPath, char* yearStr, char* monthStr, char* dayStr, CDBLocation location, u64* wiiId);
void    CDBConvHourStrToFullPath(char* fullPath, char* yearStr, char* monthStr, char* dayStr, char* hourStr, CDBLocation location, u64* wiiId);
void    CDBConvMinuteStrToFullPath(char* fullPath, char* yearStr, char* monthStr, char* dayStr, char* hourStr, char* minuteStr, CDBLocation location, u64* wiiId);
void    CDBConvCodeStrToFullPath(char* fullPath, char* yearStr, char* monthStr, char* dayStr, char* hourStr, char* minuteStr, char* codeStr, CDBLocation location, u64* wiiId);
void    CDBConvTypeStrToFullPath(char* fullPath, char* yearStr, char* monthStr, char* dayStr, char* hourStr, char* minuteStr, char* codeStr, char* typeStr, CDBLocation location, u64* wiiId);
void    CDBConvFileNameStrToFullPath(char* fullPath, char* yearStr, char* monthStr, char* dayStr, char* hourStr, char* minuteStr, char* codeStr, char* typeStr, char* fileStr, CDBLocation location, u64* wiiId);

CDBDate CDBConvDirStrToCDBDate(char* yearStr, char* monthStr, char* dayStr, char* hourStr, char* minuteStr, CDBLocation location, u64* wiiId);

void    CDBConvGCStrToGCValue(char* gcStr, u32* gcValue);
void    CDBConvGCValueToGCStr(u32 gcValue, char* gcStr);

void    CDBConvMCValueToMCStr(u16 mcValue, char* mcStr);
void    CDBConvMCStrToMCValue(char* mcStr, u16* mcValue);

void    CDBConvKeyStrToEpochValue(char* keyString, CDBDate* epochVal);
void    CDBConvKeyStrToEpochStr(char* keyString, char* epochVal);

void    CDBConvEpochStrToEpochValue(char* epochStr, CDBDate* epochVal);
void    CDBConvEpochValueToDate(CDBDate epoch, int* year, int* month, int* day, int* hour, int* min, int* sec) NO_INLINE;

CDBErr  CDBConvKeyToFullPath(CDBRecordKey* recordKey, char* fullPath);

void    CDBConvKeyStrToCode(char* keyString, char* code);
void    CDBConvKeyStrToSerialNumber(char* keyString, char* serialNum);
void    CDBConvKeyStrToFileName(char* keyString, char* fileName);
void    CDBConvKeyStrToGameCode(char* keyString, u32* gameCode);
void    CDBConvKeyStrToMakerCode(char* keyString, u32* makerCode);
void    CDBConvKeyStrToType(char* keyString, char* type);

void    CDBConvertCDBDateToCalendarTime(CDBDate date, int* year, int* month, int* day, int* hour, int* min, int* sec) NO_INLINE;

#ifdef __cplusplus
}
#endif // __cplusplus

#endif // PRIVATE_CDB_CONV_H
