#ifndef REVOLUTION_OS_NANDBOOT_INFO_H
#define REVOLUTION_OS_NANDBOOT_INFO_H

#include <revolution/types.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef struct OSNandbootInfo {
    u32 checksum;       // 0x00
    u32 argsoff;        // 0x04

    u8  padding0[2];    // 0x08

    u8  apptype;        // 0x0A
    u8  titletype;      // 0x0B

    u32 launchcode;     // 0x0C
    u8  padding1[8];    // 0x10
    u64 launcher;       // 0x18

    u8  argBuf[0x1000]; // 0x20
} OSNandbootInfo;

#ifdef __cplusplus
}
#endif

#endif  // REVOLUTION_OS_NANDBOOT_INFO_H


