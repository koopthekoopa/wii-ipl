#include "system/iplNandWall.h"

#include "iplSystem.h"
#include "system/iplNandWrapper.h"

#include <cstring>

#define MINIMUM_GLOBAL_NAND_BLOCKS  3592 /* 449 data management blocks */
#define MINIMUM_GLOBAL_NAND_INODES  128

#define REQUIRED_BOOT_NAND_BLOCKS   3584 /* 448 data management blocks */
#define REQUIRED_BOOT_NAND_INODES   96

namespace ipl {
    namespace nandwall {
        using namespace nand::wrapper;

        // Blocks used for the user area of the NAND (272 MB)
        u32 user_used_fsblocks, user_used_inodes;
        // Blocks used for the entire area of the NAND (512 MB)
        u32 global_free_inode, global_free_fsblock;

        void calcGlobalUsage_(u32* freeBlocks, u32* freeINodes, NANDFileSystemStatus* status);
        BOOL isNandCapacity();

        void throwNandCheckCommand(void* work) {
            NANDFileSystemStatus status;

            SecretGetUserUsage(&user_used_fsblocks, &user_used_inodes);

            memset(&status, 0, sizeof(status));
            SecretGetFileSystemStatus(&status);

            calcGlobalUsage_(&global_free_fsblock, &global_free_inode, &status);

            // Display usage
            OSReport("**********************************************\n");
            OSReport(" NAND USAGE : [fsblock: free   / user_used] \n");
            OSReport(" NAND USAGE : [fsblock: %6d / %6d   ] \n", global_free_fsblock, user_used_fsblocks);
            OSReport(" NAND USAGE : [i-nodes: %6d / %6d   ] \n", global_free_inode, user_used_inodes);
            OSReport("**********************************************\n");

            // Check if NAND is full
            if (!isNandCapacity()){
                System::setNandFull(true);
            }
            else {
                System::setNandFull(false);
            }
        }

        BOOL isNandCapacity() {
            if (user_used_fsblocks <= NAND_MAX_USER_BLOCKS && user_used_inodes <= NAND_MAX_USER_INODES &&
                global_free_fsblock >= MINIMUM_GLOBAL_NAND_BLOCKS && global_free_inode >= MINIMUM_GLOBAL_NAND_INODES) {
                return TRUE;  // We have enough free space!
            }
            else {
                return FALSE; // We do not have enough free space!
            }
        }

        void calcGlobalUsage_(u32* freeBlocks, u32* freeINodes, NANDFileSystemStatus* status) {
            u32 bad = status->badBlocks;
            u32 reserved = status->reservedBlocks;
            u32 used = status->usedBlocks;
            u32 exclude = bad + reserved + NAND_CRITICAL_BLOCKS;

            *freeINodes = (NAND_MAX_INODES) - status->usedInodes;
            *freeBlocks = (NAND_MAX_BLOCKS - exclude) - status->usedBlocks;
        }

        BOOL checkNandCapacityAppBootable() {
            u32 excludedBlocks = 0;
            u32 excludedINodes = 0;

            SecretGetUsage("/tmp", &excludedBlocks, &excludedINodes);

            NANDFileSystemStatus status;
            memset(&status, 0, sizeof(status));
            SecretGetFileSystemStatus(&status);

            u32 freeBlocks = 0;
            u32 freeINodes = 0;
            calcGlobalUsage_(&freeBlocks, &freeINodes, &status);

            // Exclude the amount of blocks used in the "tmp" folder
            freeBlocks += excludedBlocks;
            freeINodes += excludedINodes - 1;
            
            // Check if we have enough to boot an application
            if (freeBlocks >= REQUIRED_BOOT_NAND_BLOCKS && freeINodes >= REQUIRED_BOOT_NAND_INODES) {
                return TRUE;
            }
            else {
                return FALSE;
            }
        }
    }
}
