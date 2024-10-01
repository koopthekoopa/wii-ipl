#include <revolution.h>

#include "system/iplSystem.h"

extern "C" void mainmenu();

/**
 * @note Address: 0x81360764 (4.3U)
 * @note Size: 0x2C
 */
void mainmenu() {
    ipl::System::init(NULL, NULL);
    ipl::System::run();
}

/**
 * @note Address: 0x81360790 (4.3U)
 * @note Size: 0x10
 */
s32 NANDCheck(u32 fsBlock, u32 iNode, u32 *answer) {
    *answer = 0;
    return NAND_RESULT_OK;
}


