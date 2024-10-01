#ifndef IPL_NAND_WRAPPER_H
#define IPL_NAND_WRAPPER_H

#include <decomp.h>

#include <revolution.h>

namespace ipl {
    namespace nand {
        namespace wrapper {
            s32 Create(const char* path, u8 perm, u8 attr);
            s32 Open(const char* path, NANDFileInfo* pInfo, u8 attr);
            s32 Close(NANDFileInfo* pInfo);
            s32 Read(NANDFileInfo* pInfo, void* pBuf, u32 len);
            s32 Write(NANDFileInfo* pInfo, const void* pBuf, u32 len);
            s32 Seek(NANDFileInfo* pInfo, s32 offset, s32 whence);
            s32 GetLength(NANDFileInfo* pInfo, u32* len);
            s32 SafeClose(NANDFileInfo* pInfo);
            s32 Delete(const char* path);
            s32 GetStatus(const char* path, NANDStatus* status);
            s32 GetType(const char* path, u8* type);

            s32 ReadDir(const char* path, char* fsList, u32* fsCount);
            s32 ChangeDir(const char* path);


            s32 PrivateCreate(const char* path, u8 perm, u8 attr);
            s32 PrivateOpen(const char* path, NANDFileInfo* pInfo, u8 attr);
            s32 PrivateSafeOpen(const char* path, NANDFileInfo* pInfo, u8 attr, void* pBuf, u32 len);
            s32 PrivateDelete(const char* path);
            s32 PrivateMove(const char* path, const char* newPath);
            s32 PrivateGetType(const char* path, u8* type);

            s32 PrivateReadDir(const char* path, char* fsList, u32* fsCount);
            s32 PrivateCreateDir(const char* path, u8 perm, u8 attr);


            s32 SecretGetUsage(const char* path, u32* fsBlocks, u32* iNode);
            s32 SecretGetUserUsage(u32* fsBlocks, u32* iNode);
            s32 SecretGetSystemAvailableArea(const NANDFileSystemStatus *pStatus, u32 usedFsBlocks, u32 usedINode, u32 *freeFsBlocks, u32 *freeINode);
            s32 SecretGetFileSystemStatus(NANDFileSystemStatus* pStatus);

            BOOL _condition(int result, int tries);
        }
    }
}

#endif // IPL_NAND_WRAPPER_H

