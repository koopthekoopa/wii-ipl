#ifndef PRIVATE_NAND_PRIVATE_H
#define PRIVATE_NAND_PRIVATE_H

#include <revolution/types.h>
#include <revolution/nand.h>
#include <private/fs.h>

#ifdef __cplusplus
extern "C" {
#endif

s32 NANDPrivateCreate(const char* path, u8 perm, u8 attr);
s32 NANDPrivateCreateAsync(const char* path, u8 perm, u8 attr, NANDCallback callback, NANDCommandBlock* block);

s32 NANDPrivateOpen(const char* path, NANDFileInfo* info, u8 accType);
s32 NANDPrivateOpenAsync(const char* path, NANDFileInfo* info, u8 accType, NANDCallback callback, NANDCommandBlock* block);

s32 NANDPrivateSafeOpen(const char* path, NANDFileInfo* info, u8 accType, void* buffer, u32 length);
s32 NANDPrivateSafeOpenAsync(const char* path, NANDFileInfo* info, u8 accType, void* buffer, u32 length, NANDCallback callback, NANDCommandBlock* block);

s32 NANDPrivateGetTypeAsync(const char* path, u8* type, NANDCallback callback, NANDCommandBlock* block);

s32 NANDPrivateMove(const char* path, const char* destDir);

s32 NANDPrivateGetStatus(const char* path, NANDStatus *status);
s32 NANDPrivateGetStatusAsync(const char* path, NANDStatus* status, NANDCallback callback, NANDCommandBlock* block);

s32 NANDPrivateSetStatus(const char* path, NANDStatus* status);

s32 NANDPrivateGetType(const char* path, u8* type);
s32 NANDPrivateGetTypeAsync(const char* path, u8* type, NANDCallback callback, NANDCommandBlock* block);

s32 NANDPrivateDelete(const char* path);
s32 NANDPrivateDeleteAsync(const char* path, NANDCallback callback, NANDCommandBlock* block);

s32 NANDPrivateCreateDir(const char* path, u8 perm, u8 attr);

s32 NANDPrivateCreateDirAsync(const char* path, u8 perm, u8 attr, NANDCallback callback, NANDCommandBlock* block);

s32 NANDPrivateReadDir(const char* path, char* nameList, u32* num);

#ifdef __cplusplus
}
#endif

#endif // PRIVATE_NAND_PRIVATE_H
