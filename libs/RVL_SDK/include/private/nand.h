#ifndef PRIVATE_NAND_H
#define PRIVATE_NAND_H

#include <private/fs.h>

#include <revolution/nand.h>

#ifdef __cplusplus
extern "C" {
#endif

/* Private */

s32 NANDPrivateCreate(const char* path, u8 perm, u8 attr);
s32 NANDPrivateCreateAsync(const char* path, u8 perm, u8 attr, NANDCallback callback, NANDCommandBlock* block);

s32 NANDPrivateOpen(const char* path, NANDFileInfo* info, u8 accType);
s32 NANDPrivateOpenAsync(const char* path, NANDFileInfo* info, u8 accType, NANDCallback callback, NANDCommandBlock* block);
s32 NANDPrivateSafeOpen(const char* path, NANDFileInfo* info, u8 accType, void* buffer, u32 length);
s32 NANDPrivateSafeOpenAsync(const char* path, NANDFileInfo* info, u8 accType, void* buffer, u32 length, NANDCallback callback,
                             NANDCommandBlock* block);

s32 NANDPrivateGetTypeAsync(const char* path, u8* type, NANDCallback callback, NANDCommandBlock* block);

s32 NANDPrivateMove(const char* path, const char* destDir);

s32 NANDPrivateGetStatus(const char* path, NANDStatus* status);
s32 NANDPrivateGetStatusAsync(const char* path, NANDStatus* status, NANDCallback callback, NANDCommandBlock* block);

s32 NANDPrivateSetStatus(const char* path, NANDStatus* status);

s32 NANDPrivateGetType(const char* path, u8* type);
s32 NANDPrivateGetTypeAsync(const char* path, u8* type, NANDCallback callback, NANDCommandBlock* block);

s32 NANDPrivateDelete(const char* path);
s32 NANDPrivateDeleteAsync(const char* path, NANDCallback callback, NANDCommandBlock* block);

s32 NANDPrivateCreateDir(const char* path, u8 perm, u8 attr);

s32 NANDPrivateCreateDirAsync(const char* path, u8 perm, u8 attr, NANDCallback callback, NANDCommandBlock* block);

s32 NANDPrivateReadDir(const char* path, char* nameList, u32* num);

/* Secret */

typedef struct NANDFileSystemStatus {
    u32 blockSize;  // 0x00

    u32 freeBlocks;  // 0x04
    u32 usedBlocks;  // 0x08

    u32 badBlocks;       // 0x0C
    u32 reservedBlocks;  // 0x10

    u32 freeInodes;  // 0x14
    u32 usedInodes;  // 0x18
} NANDFileSystemStatus;

s32 NANDSecretGetUsage(const char* path, u32* usedBlocks, u32* usedINodes);

s32 NANDSecretGetFileSystemStatus(NANDFileSystemStatus* status);

s32 NANDSecretGetSystemAvailableArea(const NANDFileSystemStatus* status, u32 usedSystemBlocks, u32 usedSystemINodes, u32* freeSystemBlocks,
                                     u32* freeSystemINode);

s32 NANDSecretGetUserAvailableArea(u32* freeUserBlocks, u32* freeUserINodes);

s32 NANDSecretGetUserUsage(u32* usedUserBlocks, u32* usedUserINodes);

/* Logging */

typedef void (*NANDLoggingCallback)(BOOL);

BOOL NANDLoggingPrepareFile(u8* workBuf);
BOOL NANDLoggingAddMessageAsync(NANDLoggingCallback callback, const char* format, ...);

/* !! Only for use by the NAND library !! */

BOOL nandIsInitialized();

void nandCallback(ISFSError result, void* arg);

void nandRemoveTailToken(char* newPath, const char* oldPath);
void nandGetHeadToken(char* token, char* newPath, const char* oldPath);

void nandGetRelativeName(char* name, const char* path);

void nandConvertPath(char* absPath, const char* wd, const char* relPath);

BOOL nandIsPrivatePath(const char* path);
BOOL nandIsUnderPrivatePath(const char* path);

void nandReportErrorCode(ISFSError result) NO_INLINE;
s32 nandConvertErrorCode(ISFSError result);

void nandGenerateAbsPath(char* absPath, const char* path);

void nandGetParentDirectory(char* parentDir, const char* absPath);

const char* nandGetHomeDir();

#ifdef __cplusplus
}
#endif

#endif  // PRIVATE_NAND_H
