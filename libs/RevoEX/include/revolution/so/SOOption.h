#ifndef REVOLUTION_SO_OPTION_H
#define REVOLUTION_SO_OPTION_H

#include <revolution/types.h>

typedef struct IPAddrEntry {
    u8  addr[4];        // 0x00
    u8  netMask[4];     // 0x04
    u8  bcastAddr[4];   // 0x08
} IPAddrEntry;

int SOGetInterfaceOpt(void* unk, int level, int optname, void* optval, int* optlen);

#endif  // REVOLUTION_SO_OPTION_H
