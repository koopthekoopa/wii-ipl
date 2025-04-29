#include <revolution/nand.h>
#include <private/nand.h>

#include <private/fs.h>

#include <private/ipc.h>

static const char *USER_DIR_LIST[] = {
    "/meta",
    "/ticket",
    "/title/00010000",
    "/title/00010001",
    "/title/00010003",
    "/title/00010004",
    "/title/00010005",
    "/title/00010006",
    "/title/00010007",
    "/shared2/title",
    NULL,
};

s32 nandCalcUsage(u32* usedBlocks, u32* usedINodes, const char** list) {
    ISFSError ret = ISFS_ERROR_UNKNOWN;
    *usedBlocks = 0;
    *usedINodes = 0;

    while (*list) {
        u32 block = 0;
        u32 node = 0;
        ret = ISFS_GetUsage(*list, &block, &node);

        if (ret == ISFS_ERROR_OK) {
            *usedBlocks += block;
            *usedINodes += node;
        }
        else if (ret == ISFS_ERROR_NOEXISTS) {
            ret = ISFS_ERROR_OK;
        }
        else {
            break;
        }

        ++list;
    }

    return ret;
}

ISFSError nandCalcUserUsage(u32* usedUserBlocks, u32* usedUserINodes) {
    return nandCalcUsage(usedUserBlocks, usedUserINodes, USER_DIR_LIST);
}

s32 NANDSecretGetUserAvailableArea(u32* freeUserBlocks, u32* freeUserINodes) {
    u32 usedUserBlocks = -1;
    u32 usedUserINodes = -1;

    ISFSError ret = nandCalcUserUsage(&usedUserBlocks, &usedUserINodes);
    if (ret != ISFS_ERROR_OK) {
        return nandConvertErrorCode(ret);
    }
    else {
        u32 blocksResult = NAND_MAX_USER_BLOCKS < usedUserBlocks ? 0 : NAND_MAX_USER_BLOCKS - usedUserBlocks;
        u32 blocksINodes = NAND_MAX_USER_INODES < usedUserINodes ? 0 : NAND_MAX_USER_INODES - usedUserINodes;
        *freeUserBlocks = blocksResult;
        *freeUserINodes = blocksINodes;

        return NAND_RESULT_OK;
    }
}

s32 NANDSecretGetUserUsage(u32* usedUserBlocks, u32* usedUserINodes) {
    if (!nandIsInitialized()) {
        return NAND_RESULT_FATAL_ERROR;
    }
    return nandConvertErrorCode(nandCalcUserUsage(usedUserBlocks, usedUserINodes));
}
