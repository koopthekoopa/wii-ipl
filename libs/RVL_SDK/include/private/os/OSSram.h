#ifndef PRIVATE_OS_SRAM_H
#define PRIVATE_OS_SRAM_H

#include <revolution/types.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef struct SramControl {
    u8      sram[64];
    u32     offset;
    BOOL    enabled;
    BOOL    locked;
    int     sync;
    void    (*callback)();
} SramControl;

typedef struct OSSram {
    u16 checkSum;
    u16 checkSumInv;
    u32 ead0;
    u32 ead1;
    u32 counterBias;
    s8  displayOffsetH;
    u8  ntd;
    u8  language;
    u8  flags;
} OSSram;

typedef struct OSSramEx {
    u8  flashID[2][12];
    u32 wirelessKeyboardID;
    u16 wirelessPadID[4];
    u8  dvdErrorCode;
    u8  reserved;
    u8  flashIDCheckSum[2];
    u16 gbs;
    u8 _pad1[2];
} OSSramEx;

void        __OSInitSram();

OSSram*     __OSLockSram();
OSSramEx*   __OSLockSramEx();

BOOL        __OSUnlockSram(int commit);
BOOL        __OSUnlockSramEx(int commit);

BOOL        __OSSyncSram();

BOOL        __OSCheckSram();

BOOL        __OSReadROM(void * buffer, s32 length, s32 offset);

#ifdef __cplusplus
}
#endif

#endif // PRIVATE_OS_SRAM_H
