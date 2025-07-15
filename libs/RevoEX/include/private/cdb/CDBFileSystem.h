#ifndef PRIVATE_CDB_FILE_SYSTEM_H
#define PRIVATE_CDB_FILE_SYSTEM_H

#include <revolution/cdb/CDBTypes.h>

#include <revolution/vf/types.h>
#include <revolution/nand.h>

#ifdef __cplusplus
extern "C" {
#endif // __cplusplus

typedef struct _CDBFindDataVF {
    VFDta   dta;        // 0x00
    BOOL    isEnd;      // 0x444
} CDBFindDataVF;

typedef struct _CDBFindDataSD {
    VFDta   dta;    // 0x00
    BOOL    isEnd;  // 0x444
} CDBFindDataSD;

typedef struct _CDBFindData {
    CDBLocation     loc;    // 0x00
    CDBFindDataVF   vf;     // 0x04
    CDBFindDataSD   sd;     // 0x44C
} CDBFindData;

/* ===   UTILS  === */

void    CDBFSConcatenatePath(char* path, const char* concatPath);

BOOL    CDBFSIsYearDirName(char* dirName);
BOOL    CDBFSIsMonthDirName(char* dirName);
BOOL    CDBFSIsDayDirName(char* dirName);
BOOL    CDBFSIsHourDirName(char* dirName);
BOOL    CDBFSIsMinuteDirName(char* dirName);
BOOL    CDBFSIsCodeDirName(char* dirName);
BOOL    CDBFSIsTypeDirName(char* dirName);

BOOL    CDBFSIsCDBFileOnSD(char* fileName);
BOOL    CDBFSIsMCGCDirNameOnSD(char* dirName);
BOOL    CDBFSIsTypeDirNameOnSD(char* dirName); // Duplicate of CDBFSIsTypeDirNameOn

/* ===  VF API  === */

char*   CDBFindDataGetNameVF(CDBFindDataVF* findData);
int     CDBFindDataIsDirectoryVF(CDBFindDataVF* findData);
BOOL    CDBFindDataIsEndVF(CDBFindDataVF* findData);

BOOL    CDBFSIsExistFileVF(const char* fileName);

void    CDBFSFindFirstVF(CDBFindDataVF* findData, const char* fileName);
void    CDBFSFindNextVF(CDBFindDataVF* findData);
void    CDBFSFindCloseVF(CDBFindDataVF* findData);

BOOL    CDBFSIsDirNameVF(char* path);

CDBErr  CDBFSCreateDirForceVF(const char* dirName);
CDBErr  CDBFSDeleteDirVF(const char* dirName);

/* ===  SD API  === */

void    CDBFSSDInit();

CDBErr  CDBFSSDMount();
CDBErr  CDBFSSDUnmount();

BOOL    CDBFSSDIsMounted();
BOOL    CDBFSSDIsEjected();
BOOL    CDBFSSDIsInserted();

char*   CDBFindDataGetNameSD(CDBFindDataSD* findData);
int     CDBFindDataIsDirectorySD(CDBFindDataSD* findData);
BOOL    CDBFindDataIsEndSD(CDBFindDataSD* findData);

BOOL    CDBFSIsExistFileSD(const char* fileName);

void    CDBFSFindFirstSD(CDBFindDataSD* findData, const char* fileName);
void    CDBFSFindNextSD(CDBFindDataSD* findData);
void    CDBFSFindCloseSD(CDBFindDataSD* findData);

BOOL    CDBFSIsDirNameSD(char* path);

CDBErr  CDBFSCreateDirForceSD(const char* dirName);
CDBErr  CDBFSDeleteDirSD(const char* dirName);

extern char CDB_SD_VFF_FILE_NAME[72];

extern char CDB_SD_ROOT_PATH_LS[32];
extern char CDB_SD_ROOT_PATH_CD[32];

extern char CDB_SD_VF_DRIVE_LETTER[4];

/* === MAIN API === */

CDBErr  CDBFSInit(void* cacheBuffer, u32 cacheSize);
CDBErr  CDBFSUninit();

void    CDBFSFindFirst(CDBFindData* findData, const char* fileName, CDBLocation location);

void    CDBFSFindFirstRootEx(CDBFindData *findData, CDBLocation location, u64* wiiId);

extern char CDB_WIIID_DAT_PATH[NAND_MAX_PATH];
#define     CDB_WIIID_DAT_SIZE          40

extern char CDB_VFF_FILE_NAME[NAND_MAX_PATH];
extern u32  CDB_VFF_FILE_SIZE;

#ifdef __cplusplus
}
#endif // __cplusplus

#endif // PRIVATE_CDB_FILE_SYSTEM_H
