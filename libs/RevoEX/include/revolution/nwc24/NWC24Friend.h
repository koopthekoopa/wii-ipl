#ifndef REVOLUTION_NWC24_FRIEND_H
#define REVOLUTION_NWC24_FRIEND_H

#include <revolution/types.h>

#include <revolution/nwc24/NWC24Err.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef enum NWC24FriendType {
    NWC24_FRIENDTYPE_NONE = 0,
    NWC24_FRIENDTYPE_WII,
    NWC24_FRIENDTYPE_EMAIL,
} NWC24FriendType;

typedef enum NWC24FriendStatus {
    NWC24_FRIENDSTATUS_NONE = 0,
    NWC24_FRIENDSTATUS_PENDING,
    NWC24_FRIENDSTATUS_CONFIRMED,
    NWC24_FRIENDSTATUS_DECLINED,
} NWC24FriendStatus;

typedef u64     NWC24UserId;
typedef char    NWC24UserMailAddr[256];

#define NWC24_FRIEND_NAME_LENGTH    12

typedef union NWC24FriendAddr {
    NWC24UserId         wiiId;      // Wii Friend Code
    NWC24UserMailAddr   mailAddr;   // Email Address
} NWC24FriendAddr;

typedef struct NWC24FriendAttr {
    u32         type;                           // 0x00
    u32         status;                         // 0x04
    u16         name[NWC24_FRIEND_NAME_LENGTH]; // 0x08
    NWC24UserId fdId;                           // 0x20
    u32         reserved[6];                    // 0x28
} NWC24FriendAttr;

typedef struct NWC24FriendInfo {
    NWC24FriendAttr attr;   // 0x00
    NWC24FriendAddr addr;   // 0x40
} NWC24FriendInfo;

#ifdef __cplusplus
}
#endif

#endif  // REVOLUTION_NWC24_FRIEND_H
