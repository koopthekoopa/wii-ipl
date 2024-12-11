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

        void calcGlobalUsage_(u32* freeBlocks, u32* freeINodes, NANDFileSystemStatus* pStatus);
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

            // Check is NAND is full
            if (!isNandCapacity()){
                System::setNandFull(true);
            }
            else {
                System::setNandFull(false);
            }
        }

        BOOL isNandCapacity() {
            if (user_used_fsblocks <= 17408 && user_used_inodes <= 4000 &&
                global_free_fsblock >= 3592 && global_free_inode >= 128) {
                return TRUE;  // We have enough free space
            }
            else {
                return FALSE; // We do not have enough free space
            }
        }

        void calcGlobalUsage_(u32* freeBlocks, u32* freeINodes, NANDFileSystemStatus* pStatus) {
            u32 bad = pStatus->badBlocks;
            u32 reserved = pStatus->reservedBlocks;
            u32 used = pStatus->usedBlocks;
            u32 size = bad + reserved + 0x140;

            *freeINodes = (INODE_MAX - 1) - pStatus->usedInodes;
            *freeBlocks = (BLOCKS_MAX - size) - pStatus->usedBlocks;
        }

        BOOL checkNandCapacityAppBootable() {
            u32 usedTmpBlocks = 0;
            u32 usedTmpINodes = 0;

            SecretGetUsage("/tmp", &usedTmpBlocks, &usedTmpINodes);

            NANDFileSystemStatus status;
            memset(&status, 0, sizeof(status));
            SecretGetFileSystemStatus(&status);

            u32 freeBlocks = 0;
            u32 freeINodes = 0;
            calcGlobalUsage_(&freeBlocks, &freeINodes, &status);

            // Exclude the amount of blocks used in the "tmp" folder
            freeBlocks += usedTmpBlocks;
            freeINodes += usedTmpINodes - 1;
            
            // Check if we have enough to boot an application
            if (freeBlocks >= 3584 && freeINodes >= 96) {
                return TRUE;
            }
            else {
                return FALSE;
            }
        }
    }
}
