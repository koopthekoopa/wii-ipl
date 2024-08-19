#ifndef REVOLUTION_NAND_H
#define REVOLUTION_NAND_H

#include <revolution/types.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef struct NANDFileSystemStatus {
    u32 blockSize;      // 0x00
    u32 freeBlocks;     // 0x04
    u32 usedBlocks;     // 0x08
    u32 badBlocks;      // 0x0C
    u32 reservedBlocks; // 0x10
    u32 freeInodes;     // 0x14
    u32 usedInodes;     // 0x18
} NANDFileSystemStatus;



#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_NAND_H


