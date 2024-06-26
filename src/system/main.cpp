#include "ipl.h"

#ifdef __cplusplus
extern "C" {
#endif // __cplusplus

extern void mainmenu();
extern s32 NANDCheck(u32 fsBlock, u32 inode, u32 *answer);

#ifdef __cplusplus
}
#endif // __cplusplus

/*
    @note Address: 0x81360764
    @note Size: 0x2C
    @description The entry point
*/
void mainmenu() {
    ipl::System::init(NULL, NULL);
    ipl::System::run();
}

/*
    @note Address: 0x81360764
    @note Size: 0x2C
*/
s32 NANDCheck(u32 fsBlock, u32 inode, u32 *answer) {
    *answer = 0;
    return 0;
}


