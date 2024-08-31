#ifndef REVOLUTION_NAND_SECRET_H
#define REVOLUTION_NAND_SECRET_H

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

s32 NANDSecretGetUsage(const char* path, u32* fsBlocks, u32* iNode);
s32 NANDSecretGetUserUsage(u32* fsBlocks, u32* iNode);
s32 NANDSecretGetSystemAvailableArea(const NANDFileSystemStatus *pStatus, u32 usedFsBlocks, u32 usedINode, u32 *freeFsBlocks, u32 *freeINode);
s32 NANDSecretGetFileSystemStatus(NANDFileSystemStatus *pStatus);

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_NAND_SECRET_H


