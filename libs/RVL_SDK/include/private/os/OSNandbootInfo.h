#ifndef PRIVATE_OS_NANDBOOT_INFO_H
#define PRIVATE_OS_NANDBOOT_INFO_H

#include <revolution/types.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef struct OSNandbootInfo {
    u32 checkSum;       // 0x00
    u32 argsOff;        // 0x04

    u8  padding_0x08[2];

    u8  prevAppType;    // 0x0A
    u8  returnValue;    // 0x0B

    u32 argValue;       // 0x0C

    u8  padding_0x10[8];

    u64 prevTitleId;    // 0x18

    u8  args[0x1000];   // 0x20
} OSNandbootInfo;

enum {
    OS_NANDBOOT_RETURN_GAME = 2,
    OS_NANDBOOT_RETURN_MENU = 4,
    OS_NANDBOOT_8 = 8,
};

#define OS_NANDBOOT_CHECKSUM_SIZE   (sizeof(OSNandbootInfo) - 4)

BOOL    __OSCreateNandbootInfo();
BOOL    __OSWriteNandbootInfo(OSNandbootInfo* info);
BOOL    __OSReadNandbootInfo(OSNandbootInfo *info);

#ifdef __cplusplus
}
#endif

#endif  // PRIVATE_OS_NANDBOOT_INFO_H
