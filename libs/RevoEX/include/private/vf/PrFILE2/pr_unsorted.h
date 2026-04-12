#ifndef PRFILE2_VFMOD_PR_UNSORTED_STUFF_H
#define PRFILE2_VFMOD_PR_UNSORTED_STUFF_H

#include <private/vf/PrFILE2/pf_types.h>

typedef struct PR_BINHEADER {
    pf_s8 signature[4];     // 0x00
    pf_u16 byteOrder;       // 0x04
    pf_u8 version[2];       // 0x06
    pf_u8 fileSize[4];      // 0x08
    pf_u16 headerSize;      // 0x0C
    pf_u16 dataBlocks;      // 0x0E
    pf_u8 volatile_memory;  // 0x10
    pf_u8 pad[15];          // 0x11
} PR_BINHEADER;

#endif  // PRFILE2_VFMOD_PR_UNSORTED_STUFF_H
