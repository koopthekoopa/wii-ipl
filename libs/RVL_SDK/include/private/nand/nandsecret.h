#ifndef PRIVATE_NAND_SECRET_H
#define PRIVATE_NAND_SECRET_H

#include <revolution/types.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef struct NANDFileSystemStatus {
    u32 blockSize;                  // 0x00

    u32 freeBlocks;                 // 0x04
    u32 usedBlocks;                 // 0x08

    u32 badBlocks;                  // 0x0C
    u32 reservedBlocks;             // 0x10

    u32 freeInodes;                 // 0x14
    u32 usedInodes;                 // 0x18
} NANDFileSystemStatus;

s32 NANDSecretGetUsage(const char* path, u32* usedBlocks, u32* usedINodes);

s32 NANDSecretGetFileSystemStatus(NANDFileSystemStatus* status);

s32 NANDSecretGetSystemAvailableArea(const NANDFileSystemStatus* status, u32 usedSystemBlocks, u32 usedSystemINodes, u32* freeSystemBlocks, u32* freeSystemINode);

s32 NANDSecretGetUserAvailableArea(u32* freeUserBlocks, u32* freeUserINodes);

s32 NANDSecretGetUserUsage(u32* usedUserBlocks, u32* usedUserINodes);

#ifdef __cplusplus
}
#endif

#endif // PRIVATE_NAND_SECRET_H
