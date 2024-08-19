#ifndef IPL_NAND_WALL_H
#define IPL_NAND_WALL_H

#include <decomp.h>

#include <revolution.h>
#include <revolution/nand.h>

namespace ipl {
    namespace nandwall {
        /** @brief Checks if the NAND if full. */
        void throwNandCheckCommand(void* unusedBuffer);
        /** @brief Checks if the NAND has enough capacity. */
        BOOL isNandCapacity();
        /** 
         * @brief Gets the amount of free blocks and free i-nodes(?)
         * 
         * @param freeBlocks The free blocks returned.
         * @param freeBlocks The free i-nodes returned.
         * @param pStatus The status used.
         */
        void calcGlobalUsage_(u32* freeBlocks, u32* freeINodes, NANDFileSystemStatus* pStatus);
        /** @brief Checks if the NAND has enough capacity to run a title. */
        BOOL checkNandCapacityAppBootable();
    }
}

#endif // IPL_NAND_WALL_H

