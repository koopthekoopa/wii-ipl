#include <revolution.h>

#include "system/iplSystem.h"

#ifdef __cplusplus
extern "C" {
#endif // __cplusplus

extern void mainmenu();
extern s32 NANDCheck(u32 fsBlock, u32 inode, u32 *pAnswer);

#ifdef __cplusplus
}
#endif // __cplusplus

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
s32 NANDCheck(u32 fsBlock, u32 inode, u32 *pAnswer) {
    *pAnswer = NULL;
    return 0;
}


