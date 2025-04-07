#ifndef PRIVATE_OS_STATE_FLAGS_H
#define PRIVATE_OS_STATE_FLAGS_H

#include <revolution/types.h>

typedef struct OSStateFlags {
    u32 checkSum;
    u8  lastBootApp;
    u8  lastShutdown;
    u8  lastDiscState;
    u8  menuMode;
    u8  padding[24];
} OSStateFlags;

#define OS_STATE_FLAGS_NAND_PATH        "/title/00000001/00000002/data/state.dat"

#define OS_STATE_FLAGS_CHECKSUM_SIZE    (sizeof(OSStateFlags) - 4)

BOOL    __OSCreateStateFlags();
BOOL    __OSWriteStateFlags(OSStateFlags* flags);
BOOL    __OSReadStateFlags(OSStateFlags* flags);

#endif // PRIVATE_OS_STATE_FLAGS_H
