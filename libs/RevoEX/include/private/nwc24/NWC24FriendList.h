#ifndef PRIVATE_NWC24_FRIEND_LIST_H
#define PRIVATE_NWC24_FRIEND_LIST_H

#include <revolution/nwc24/NWC24Err.h>
#include <revolution/nwc24/NWC24Types.h>

#include <revolution/nwc24/NWC24Friend.h>

#ifdef __cplusplus
extern "C" {
#endif

/* Friend List */

typedef struct NWC24FLHeader {
    u32         magic;                              // 0x00
    u32         version;                            // 0x04
    u32         infoCount;                          // 0x08
    u32         registeredCount;                    // 0x0C
    u32         unk_0x10[4];
    u32         unk_0x20[7];
    u32         unk_0x3C;
    NWC24UserId friendIds[NWC24_FRIEND_INFO_MAX];   // 0x40
} NWC24FLHeader;

NWC24Err    NWC24iInitFriendList(BOOL force);
NWC24Err    NWC24iCreateFriendList();

NWC24Err    NWC24iOpenFriendList();
NWC24Err    NWC24iReadFriendInfoRaw(NWC24FriendInfo* info, u32 index);

/* Secret Friend List */

typedef struct NWC24SecretFLHeader {
    u32 magic;              // 0x00
    u32 version;            // 0x04
    u32 infoCount;          // 0x08
    u32 unk_0x0C;
    u8  unk_0x10[0x7F0];
} NWC24SecretFLHeader;

NWC24Err    NWC24iInitSecretFriendList(BOOL force);

NWC24Err    NWC24iCreateSecretFriendList();
NWC24Err    NWC24iOpenSecretFriendList();

#ifdef __cplusplus
}
#endif

#endif  // PRIVATE_NWC24_FRIEND_LIST_H
