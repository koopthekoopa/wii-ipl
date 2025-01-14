#ifndef PRIVATE_PF_ENTRY_H
#define PRIVATE_PF_ENTRY_H

#include <revolution/types.h>

typedef struct PF_VOLUME PF_VOLUME;

typedef struct PF_DIR_TAIL {
    u32     tracker_size;       // 0x00
    u32     tracker_buff[1];    // 0x04
    u32*    tracker_bits;       // 0x08
} PF_DIR_TAIL;

typedef struct PF_DIR_ENT {
    u16         long_name[261];     // 0x00

    u8          num_entry_LFNs;     // 0x20A

    u8          ordinal;            // 0x20B

    u8          check_sum;          // 0x20C

    u8          align_pad[1];       // 0x20D

    s8          short_name[13];     // 0x20E
    u8          small_letter_flag;  // 0x21B

    u8          attr;               // 0x21C

    u8          create_time_ms;     // 0x21D
    u16         create_time;        // 0x21E
    u16         create_date;        // 0x220
    u16         access_date;        // 0x222
    u16         modify_time;        // 0x224
    u16         modify_date;        // 0x226

    u32         file_size;          // 0x228
    PF_VOLUME*  p_vol;              // 0x22C
    u32         path_len;           // 0x230

    u32         start_cluster;      // 0x234
    u32         entry_sector;       // 0x238
    u16         entry_offset;       // 0x23C
} PF_DIR_ENT;

#endif // PRIVATE_PF_ENTRY_H
