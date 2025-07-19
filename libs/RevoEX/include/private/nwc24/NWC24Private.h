#ifndef PRIVATE_NWC24_PRIVATE_H
#define PRIVATE_NWC24_PRIVATE_H

#include <revolution/types.h>

#include <revolution/nwc24/NWC24Err.h>

typedef struct NWC24Data {
    const void* ptr;    // 0x00
    u32         size;   // 0x04
} NWC24Data;

#endif  // PRIVATE_NWC24_PRIVATE_H
