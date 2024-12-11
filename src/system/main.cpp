#include <revolution.h>

#include "system/iplSystem.h"

extern "C" void mainmenu();

void mainmenu() {
    ipl::System::init(NULL, NULL);
    ipl::System::run();
}

// Override NANDCheck because the IPL has it's own way of doing it!
s32 NANDCheck(u32 fsblock, u32 inode, u32 *answer) {
    *answer = 0;
    return NAND_RESULT_OK;
}


