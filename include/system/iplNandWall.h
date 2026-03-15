#ifndef IPL_NAND_WALL_H
#define IPL_NAND_WALL_H

#include <revolution/types.h>

#include <private/nand.h>
#include <revolution/nand.h>

namespace ipl {
    namespace nandwall {
        /** @brief Check NAND Command. */
        void throwNandCheckCommand(void* work);
        /** @brief Checks if the NAND has enough capacity to run an application. */
        BOOL checkNandCapacityAppBootable();
    }  // namespace nandwall
}  // namespace ipl

#endif  // IPL_NAND_WALL_H
