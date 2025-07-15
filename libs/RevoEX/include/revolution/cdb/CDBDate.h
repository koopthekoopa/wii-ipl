#ifndef REVOLUTION_CDB_DATE_H
#define REVOLUTION_CDB_DATE_H

#include <revolution/types.h>

#include <revolution/cdb/CDBTypes.h>

#ifdef __cplusplus
extern "C" {
#endif // __cplusplus

void    CDBClampCDBDate(CDBDate* cdbDate);

CDBDate CDBMakeCDBDate(int year, int month, int day, int hour, int min, int sec);

CDBDate CDBMakeCDBDateDayBegin(int year, int month, int day, int hour, int min, int sec);
CDBDate CDBMakeCDBDateDayEnd(int year, int month, int day, int hour, int min, int sec);
CDBDate CDBMakeCDBDateMonthBegin(int year, int month, int day, int hour, int min, int sec);
CDBDate CDBMakeCDBDateMonthEnd(int year, int month, int day, int hour, int min, int sec);
CDBDate CDBMakeCDBDateYearBegin(int year, int month, int day, int hour, int min, int sec);
CDBDate CDBMakeCDBDateYearEnd(int year, int month, int day, int hour, int min, int sec);

#ifdef __cplusplus
}
#endif // __cplusplus

#endif // REVOLUTION_CDB_DATE_H
