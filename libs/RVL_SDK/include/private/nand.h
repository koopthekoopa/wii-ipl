

#ifndef PRIVATE_NAND_H
#define PRIVATE_NAND_H

#include <revolution/nand.h>

#include <private/nand/nandprivate.h>
#include <private/nand/nandsecret.h>
#include <private/nand/NANDLog.h>

BOOL        nandIsInitialized();

void        nandCallback(ISFSError result, void* arg);

void        nandRemoveTailToken(char* newPath, const char* oldPath);
void        nandGetHeadToken(char* token, char* newPath, const char* oldPath);

void        nandGetRelativeName(char* name, const char* path);

void        nandConvertPath(char* absPath, const char* wd, const char* relPath);

BOOL        nandIsPrivatePath(const char* path);
BOOL        nandIsUnderPrivatePath(const char* path);

void        nandReportErrorCode(ISFSError result) NO_INLINE;
s32         nandConvertErrorCode(ISFSError result);

void        nandGenerateAbsPath(char* absPath, const char* path);

void        nandGetParentDirectory(char* parentDir, const char* absPath);

const char* nandGetHomeDir();

#endif // PRIVATE_NAND_H
