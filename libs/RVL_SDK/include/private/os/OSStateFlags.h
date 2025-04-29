#ifndef PRIVATE_OS_STATE_FLAGS_H
#define PRIVATE_OS_STATE_FLAGS_H

#include <revolution/types.h>

typedef struct OSStateFlags {
    u32 checkSum;       // 0x00

    u8  lastBootApp;    // 0x04
    u8  lastShutdown;   // 0x05
    u8  lastDiscState;  // 0x06

    u8  menuMode;       // 0x07

    u8  padding_0x08[24];
} OSStateFlags;

#define OS_STATE_FLAGS_NAND_PATH        "/title/00000001/00000002/data/state.dat"

#define OS_STATE_FLAGS_CHECKSUM_SIZE    (sizeof(OSStateFlags) - 4)

BOOL    __OSCreateStateFlags();
BOOL    __OSWriteStateFlags(OSStateFlags* flags);
BOOL    __OSReadStateFlags(OSStateFlags* flags);

#endif // PRIVATE_OS_STATE_FLAGS_H
