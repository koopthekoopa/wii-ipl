#include "system/iplNandWall.h"

#include "system/iplSystem.h"
#include "system/iplNandWrapper.h"

#include <cstring>

#define INODE_MAX   0x1800
#define BLOCKS_MAX  0x8000

namespace ipl {
    namespace nandwall {
        using namespace nand::wrapper;

        u32 user_used_fsblocks;
        u32 user_used_inodes;
        u32 global_free_fsblock;
        u32 global_free_inode;

        /**
         * @note Address: 0x8133DC0C (4.3U)
         * @note Size: 0xDC
         */
        void throwNandCheckCommand(void* unusedBuffer) {
            NANDFileSystemStatus status;

            SecretGetUserUsage(&user_used_fsblocks, &user_used_inodes);

            memset(&status, 0, sizeof(status));
            SecretGetFileSystemStatus(&status);

            calcGlobalUsage_(&global_free_fsblock, &global_free_inode, &status);

            OSReport("**********************************************\n");
            OSReport(" NAND USAGE : [fsblock: free   / user_used] \n");
            OSReport(" NAND USAGE : [fsblock: %6d / %6d   ] \n", global_free_fsblock, user_used_fsblocks);
            OSReport(" NAND USAGE : [i-nodes: %6d / %6d   ] \n", global_free_inode, user_used_inodes);
            OSReport("**********************************************\n");

            if (!isNandCapacity()){
                System::setNandFull(true);
            }
            else {
                System::setNandFull(false);
            }
        }

        /**
         * @note Address: 0x8133DCE8 (4.3U)
         * @note Size: 0x40
         */
        BOOL isNandCapacity() {
            if (user_used_fsblocks <= 17408 && user_used_inodes <= 4000 && global_free_fsblock >= 3592 && global_free_inode >= 128) {
                return TRUE;
            }
            else {
                return FALSE;
            }
        }

        /**
         * @note Address: 0x8133DD28 (4.3U)
         * @note Size: 0x38
         */
        void calcGlobalUsage_(u32* freeBlocks, u32* freeINodes, NANDFileSystemStatus* pStatus) {
            u32 bad = pStatus->badBlocks;
            u32 reserved = pStatus->reservedBlocks;
            u32 used = pStatus->usedBlocks;
            u32 size = bad + reserved + 0x140;

            *freeINodes = (INODE_MAX - 1) - pStatus->usedInodes;
            *freeBlocks = (BLOCKS_MAX - size) - pStatus->usedBlocks;
        }

        /**
         * @note Address: 0x8133DD60 (4.3U)
         * @note Size: 0xA8
         */
        BOOL checkNandCapacityAppBootable() {
            u32 usedDirBlocks = 0;
            u32 usedDirINodes = 0;

            SecretGetUsage("/tmp", &usedDirBlocks, &usedDirINodes);

            NANDFileSystemStatus status;
            memset(&status, 0, sizeof(status));
            SecretGetFileSystemStatus(&status);

            u32 freeBlocks = 0;
            u32 freeINodes = 0;
            calcGlobalUsage_(&freeBlocks, &freeINodes, &status);

            freeBlocks += usedDirBlocks;
            freeINodes += usedDirINodes - 1;
            if (freeBlocks >= 3584 && freeINodes >= 96) {
                return TRUE;
            }
            else {
                return FALSE;
            }
        }
    }
}
