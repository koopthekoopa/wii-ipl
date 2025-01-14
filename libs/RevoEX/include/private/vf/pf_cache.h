#ifndef PRIVATE_PF_CACHE_H
#define PRIVATE_PF_CACHE_H

#include <revolution/types.h>

typedef struct PF_CACHE_PAGE PF_CACHE_PAGE;

struct PF_CACHE_PAGE {
    u16             stat;       // 0x00
    u16             option;     // 0x02

    u8*             buffer;     // 0x04
    u8*             p_buf;      // 0x08
    u8*             p_mod_sbuf; // 0x0C
    u8*             p_mod_ebuf; // 0x10

    u32             size;       // 0x14
    u32             sector;     // 0x18
    void*           signature;  // 0x1C

    PF_CACHE_PAGE*  p_next;     // 0x20
    PF_CACHE_PAGE*  p_prev;     // 0x24
};

typedef struct PF_SECTOR_CACHE {
    u32             mode;               // 0x00

    u16             num_fat_pages;      // 0x04
    u16             num_data_pages;     // 0x06

    PF_CACHE_PAGE*  pages;              // 0x08
    PF_CACHE_PAGE*  p_current_fat;      // 0x0C
    PF_CACHE_PAGE*  p_current_data;     // 0x10

    u8              (*buffers)[512];    // 0x14

    u32             fat_buff_size;      // 0x18
    u32             data_buff_size;     // 0x1C

    void*           signature;          // 0x20
} PF_SECTOR_CACHE;

#endif // PRIVATE_PF_CACHE_H
