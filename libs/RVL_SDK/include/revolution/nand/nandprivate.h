#ifndef REVOLUTION_NAND_PRIVATE_H
#define REVOLUTION_NAND_PRIVATE_H

#include <revolution/types.h>

#ifdef __cplusplus
extern "C" {
#endif

s32 NANDPrivateCreate(const char* path, u8 perm, u8 attr);
s32 NANDPrivateOpen(const char* path, NANDFileInfo* pInfo, u8 attr);
s32 NANDPrivateSafeOpen(const char* path, NANDFileInfo* pInfo, u8 attr, void* pBuf, u32 len);
s32 NANDPrivateDelete(const char* path);
s32 NANDPrivateMove(const char* path, const char* newPath);
s32 NANDPrivateGetType(const char* path, u8* type);

s32 NANDPrivateCreateDir(const char* path, u8 perm, u8 attr);
s32 NANDPrivateReadDir(const char* path, char* fsList, u32* fsCount);

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_NAND_PRIVATE_H


