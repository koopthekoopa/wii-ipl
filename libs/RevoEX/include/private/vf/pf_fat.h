#ifndef PRIVATE_PF_FAT_H
#define PRIVATE_PF_FAT_H

#include <revolution/types.h>

typedef struct PF_VOLUME PF_VOLUME;

typedef enum PF_FAT_TYPE {
    FAT_ERR = -1,

    FAT_12,
    FAT_16,
    FAT_32,
} PF_FAT_TYPE;

typedef struct PF_LAST_CLUSTER {
    u32 num_last_cluster;   // 0x00
    u32 max_chain_index;    // 0x04
} PF_LAST_CLUSTER;

typedef struct PF_FAT_HINT {
    u32 chain_index;  // 0x00
    u32 cluster;      // 0x04
} PF_FAT_HINT;

typedef struct PF_CLUSTER_LINK {
    u32*    buffer;             // 0x00

    u16     interval;           // 0x04
    u16     interval_offset;    // 0x06

    u32     position;           // 0x08

    u32     max_count;          // 0x0C

    u32     save_index;         // 0x10
} PF_CLUSTER_LINK;

typedef struct PF_CLUSTER_LINK_VOL {
    u16 flag;       // 0x00
    u16 interval;   // 0x02

    u32* buffer;    // 0x04
    u32 link_max;   // 0x08
} PF_CLUSTER_LINK_VOL;

typedef struct PF_FFD {
    u32             start_cluster;      // 0x00
    u32*            p_start_cluster;    // 0x04

    PF_LAST_CLUSTER last_cluster;       // 0x08
    PF_FAT_HINT     last_access;        // 0x10

    PF_CLUSTER_LINK cluster_link;       // 0x18

    PF_FAT_HINT*    p_hint;             // 0x2C
    PF_VOLUME*      p_vol;              // 0x30
} PF_FFD;

#endif // PRIVATE_PF_FAT_H
