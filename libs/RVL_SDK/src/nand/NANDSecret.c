#include <revolution/nand.h>
#include <private/nand.h>

#include <private/fs.h>

#include <private/ipc.h>

s32 NANDSecretGetUsage(const char* path, u32* usedBlocks, u32* usedINodes) {
    if (!nandIsInitialized()) {
        return NAND_RESULT_FATAL_ERROR;
    }
    else {
        char absPath[NAND_MAX_PATH] = "";
        nandGenerateAbsPath(absPath, path);
        return nandConvertErrorCode(ISFS_GetUsage(absPath, usedBlocks, usedINodes));
    }
}

s32 NANDSecretGetFileSystemStatus(NANDFileSystemStatus* status) {
    ISFSStats isfsStatus;
    ISFSError result = ISFS_ERROR_UNKNOWN;

    if (!nandIsInitialized()) {
        return NAND_RESULT_FATAL_ERROR;
    }

    result = ISFS_GetStats(&isfsStatus);
    if (result == ISFS_ERROR_OK) {
        status->blockSize       = isfsStatus.blockSize;
        status->freeBlocks      = isfsStatus.freeBlocks;
        status->usedBlocks      = isfsStatus.usedBlocks;
        status->badBlocks       = isfsStatus.badBlocks;
        status->reservedBlocks  = isfsStatus.reservedBlocks;
        status->freeInodes      = isfsStatus.freeInodes;
        status->usedInodes      = isfsStatus.usedInodes;
    }

    return nandConvertErrorCode(result);
}

s32 NANDSecretGetSystemAvailableArea(const NANDFileSystemStatus* status, u32 usedSystemBlocks, u32 usedSystemINodes, u32* freeSystemBlocks, u32* freeSystemINode) {
    if (usedSystemBlocks <= NAND_MAX_USER_BLOCKS && usedSystemINodes <= NAND_MAX_USER_INODES) {
        if (freeSystemBlocks != NULL) {
            *freeSystemBlocks = (NAND_MAX_SYSTEM_BLOCKS) - (status->badBlocks + status->reservedBlocks + NAND_CRITICAL_BLOCKS) - (status->usedBlocks - usedSystemBlocks);
        }
        if (freeSystemINode != NULL) {
            *freeSystemINode = (NAND_MAX_SYSTEM_INODES) - (status->usedInodes - usedSystemINodes);
        }
        return NAND_RESULT_OK;
    }
    return NAND_RESULT_INVALID;
}
