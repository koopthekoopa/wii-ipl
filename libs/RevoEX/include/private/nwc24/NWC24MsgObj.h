#ifndef PRIVATE_NWC24_MSG_BOARD_H
#define PRIVATE_NWC24_MSG_BOARD_H

#include <revolution/types.h>

#include <revolution/nwc24/NWC24Err.h>
#include <revolution/nwc24/NWC24Types.h>
#include <revolution/nwc24/NWC24Friend.h>

#include <private/nwc24/NWC24Private.h>

#ifdef __cplusplus
extern "C" {
#endif

#define NWC24_MSG_RECIPIENT_MAX     8
#define NWC24_MSG_ATTACHMENT_MAX    2

typedef struct NWC24MsgObjPrivate {
    u32             msgId;                                  // 0x00
    u32             type;                                   // 0x04
    u32             length;                                 // 0x08
    u32             appId;                                  // 0x0C
    u8              unk_0x10[0x4];
    u32             tag;                                    // 0x14
    u32             ledPattern;                             // 0x18
    NWC24UserId     fromId;                                 // 0x20
    u32             unk_0x28;
    u32             unk_0x2C;
    NWC24Data       unk_0x30;
    NWC24Data       unk_0x38;
    NWC24Data       subject;                                // 0x40
    NWC24Data       text;                                   // 0x48
    NWC24Data       unk_0x50;
    NWC24Data       unk_0x58;
    NWC24Charset    charset;                                // 0x60
    NWC24Encoding   encoding;                               // 0x64
    NWC24Data       attached[NWC24_MSG_ATTACHMENT_MAX];     // 0x68
    u32             attachedSize[NWC24_MSG_ATTACHMENT_MAX]; // 0x78
    NWC24MIMEType   attachedType[NWC24_MSG_ATTACHMENT_MAX]; // 0x80
    union {
        NWC24UserId toIds[NWC24_MSG_RECIPIENT_MAX];
        NWC24Data   toAddrs[NWC24_MSG_RECIPIENT_MAX];
    };                                                      // 0x88
    u8              numTo;                                  // 0xC8
    u8              numAttached;                            // 0xC9
    u16             groupId;                                // 0xCA
    union {
        struct {
            u32 noreply : 1;
            u32 unknown : 7;
            u32 delay   : 8;
            u32 regdate : 16;
        };
        u32 raw;
    } msgBoardFlags;                                        // 0xCC
    NWC24Data       unk_0xD0;
    NWC24Data       faceData;                               // 0xD8
    NWC24Data       altName;                                // 0xE0
    u32             textSize;                               // 0xE4
    u32             dwcId;                                  // 0xEC
    u32             iconNew;                                // 0xF0
    u32             unk_0xF4;
    u32             unk_0xF8;
    u32             unk_0xFC;
} NWC24MsgObjPrivate;

#ifdef __cplusplus
}
#endif

#endif  // PRIVATE_NWC24_MSG_BOARD_H
