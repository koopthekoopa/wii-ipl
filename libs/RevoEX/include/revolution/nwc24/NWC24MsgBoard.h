#ifndef REVOLUTION_NWC24_MSG_BOARD_H
#define REVOLUTION_NWC24_MSG_BOARD_H

#include <decomp.h>

#include <revolution/types.h>

#include <revolution/nwc24/NWC24Err.h>

typedef struct NWC24MsgObj {
    u32 data[64]; // 0x00
} NWC24MsgObj;

/* NWC24 Channel Jump */

#define NWC24_MAX_CHJP_BLOCKS   8
#define NWC24_MAX_CHJP_SIZE     (NWC24_MAX_CHJP_BLOCKS * 64) + (NWC24_MAX_CHJP_BLOCKS * 8)

typedef struct NWC224CHJumpHeader {
    u32 magic;      // 0x00
    u32 totalSize;  // 0x04
    u32 numBlocks;  // 0x08
    u32 option;     // 0x10
    u64 titleId;    // 0x14
} NWC24CHJumpHeader;

#define NWC24_MAX_CHJP_SIZE     (NWC24_MAX_CHJP_BLOCKS * 64) + (NWC24_MAX_CHJP_BLOCKS * 8)

typedef struct NWC24CHJumpObj {
    NWC24CHJumpHeader   header;                     // 0x00
    char                data[NWC24_MAX_CHJP_SIZE];  // 0x18
} NWC24CHJumpObj;

NWC24Err    NWC24CheckCHJumpObj(const NWC24CHJumpObj* chjp, u32 dataSize);
NWC24Err    NWC24GetCHJumpTitleId(const NWC24CHJumpObj* chjp, u64* titleId);
NWC24Err    NWC24GetCHJumpBlockSize(const NWC24CHJumpObj* chjp, u32* size, u32 index);
NWC24Err    NWC24GetCHJumpBlockData(const NWC24CHJumpObj* chjp, char* data, u32 size, u32 index);

#endif  // REVOLUTION_NWC24_MSG_BOARD_H
