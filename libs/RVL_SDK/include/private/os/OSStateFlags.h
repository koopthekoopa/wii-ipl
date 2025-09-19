#ifndef PRIVATE_OS_STATE_FLAGS_H
#define PRIVATE_OS_STATE_FLAGS_H

#include <revolution/types.h>

typedef struct OSStateFlags {
    u32 checkSum;       // 0x00

    u8  lastAppType;    // 0x04
    u8  shutdownType;   // 0x05
    u8  discState;      // 0x06

    u8  menuMode;       // 0x07

    u8  padding_0x08[24];
} OSStateFlags;

#define OS_STATE_FLAGS_NAND_PATH        "/title/00000001/00000002/data/state.dat"

#define OS_STATE_FLAGS_CHECKSUM_SIZE    (sizeof(OSStateFlags) - 4)

enum {
    OS_STATE_FLAGS_SHUTDOWN_NONE = 0,
    OS_STATE_FLAGS_SHUTDOWN_POWER_OFF,
    OS_STATE_FLAGS_SHUTDOWN_RESTART,
    OS_STATE_FLAGS_SHUTDOWN_RETURN_MENU,
    OS_STATE_FLAGS_SHUTDOWN_LAUNCH_TITLE,
    OS_STATE_FLAGS_SHUTDOWN_IDLE,

    OS_STATE_FLAGS_SHUTDOWN_BAD = 0xFF
};

enum {
    OS_STATE_FLAGS_MENUMODE_MENU = 0,
    OS_STATE_FLAGS_MENUMODE_DATA_MANAGER,
    OS_STATE_FLAGS_MENUMODE_ARGS
};

enum {
    OS_STATE_FLAGS_DISC_IN = 1,
    OS_STATE_FLAGS_DISC_CHANGED,
    OS_STATE_FLAGS_DISC_NONE
};

BOOL    __OSCreateStateFlags();
BOOL    __OSWriteStateFlags(OSStateFlags* flags);
BOOL    __OSReadStateFlags(OSStateFlags* flags);

#endif // PRIVATE_OS_STATE_FLAGS_H
