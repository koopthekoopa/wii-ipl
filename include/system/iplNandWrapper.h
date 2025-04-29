#ifndef IPL_NAND_WRAPPER_H
#define IPL_NAND_WRAPPER_H

#include <decomp.h>

#include <revolution/nand.h>
#include <private/nand.h>

namespace ipl {
    namespace nand {
        namespace wrapper {
            s32 Create(const char* path, u8 perm, u8 attr);
            s32 Open(const char* path, NANDFileInfo* info, u8 accType);
            s32 Close(NANDFileInfo* info);
            s32 Read(NANDFileInfo* info, void* buffer, u32 length);
            s32 Write(NANDFileInfo* info, const void* buffer, u32 length);
            s32 Seek(NANDFileInfo* info, s32 offset, s32 whence);
            s32 GetLength(NANDFileInfo* info, u32* length);
            s32 SafeClose(NANDFileInfo* info);
            s32 ReadDir(const char* path, char* nameList, u32* num);
            s32 CreateDir(const char* path, u8 perm, u8 attr);
            s32 ChangeDir(const char* path);
            s32 Delete(const char* path);
            s32 GetStatus(const char* path, NANDStatus* status);
            s32 GetType(const char* path, u8* type);

            s32 PrivateCreate(const char* path, u8 perm, u8 attr);
            s32 PrivateOpen(const char* path, NANDFileInfo* info, u8 accType);
            s32 PrivateSafeOpen(const char* path, NANDFileInfo* info, u8 accType, void* buffer, u32 length);
            s32 PrivateReadDir(const char* path, char* nameList, u32* num);
            s32 PrivateCreateDir(const char* path, u8 perm, u8 attr);
            s32 PrivateDelete(const char* path);
            s32 PrivateMove(const char* path, const char* destDir);
            s32 PrivateGetType(const char* path, u8* type);

            s32 SecretGetUsage(const char* path, u32* usedBlocks, u32* usedINodes);
            s32 SecretGetUserUsage(u32* usedUserBlocks, u32* usedUserINodes);
            s32 SecretGetSystemAvailableArea(const NANDFileSystemStatus *status, u32 usedSystemBlocks, u32 usedSystemINode, u32 *freeSystemBlocks, u32 *freeSystemINode);
            s32 SecretGetFileSystemStatus(NANDFileSystemStatus *status);
        }
    }
}

#endif // IPL_NAND_WRAPPER_H
