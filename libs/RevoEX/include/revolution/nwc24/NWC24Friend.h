#ifndef REVOLUTION_NWC24_FRIEND_H
#define REVOLUTION_NWC24_FRIEND_H

#include <revolution/types.h>

#include <revolution/nwc24/NWC24Err.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef union NWC24FriendAddr {
    u64     wiiId;
    char    mailAddr[256];
} NWC24FriendAddr;

typedef struct NWC24FriendAttr {
    u32 type;           // 0x00
    u32 status;         // 0x04
    u16 name[12];       // 0x08
    u64 fdId;           // 0x20
    u32 reserved[6];    // 0x28
} NWC24FriendAttr;

typedef struct NWC24FriendInfo {
    NWC24FriendAttr attr;   // 0x00
    NWC24FriendAddr addr;   // 0x40
} NWC24FriendInfo;

#ifdef __cplusplus
}
#endif

#endif  // REVOLUTION_NWC24_FRIEND_H
