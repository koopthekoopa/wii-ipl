#ifndef PRIVATE_ES_TYPES_H
#define PRIVATE_ES_TYPES_H

#include <revolution/types.h>

#ifdef __cplusplus
extern "C" {
#endif

// Reference: https://wiibrew.org/wiki//dev/es
//            https://github.com/devkitPro/libogc/blob/master/gc/ogc/es.h

typedef s32         ESError;

typedef u32         ESDeviceId;
typedef u32         ESContentId;

typedef u32         ESTitleId32;
typedef u64         ESTitleId;

typedef u64         ESTicketId;

typedef u8          ESVersion;
typedef u16         ESTitleVersion;
typedef u64         ESSysVersion;

typedef u32         ESTitleType;
typedef u16         ESContentType;

typedef u8          ESSysAccessMask[2];

#define             ES_CHANNEL_ID(t64)  ((ESTitleId32)(((ESTitleId)t64 & 0xFFFFFFFF00000000) >> 32))
#define             ES_TITLE_ID(t64)    ((ESTitleId32)((ESTitleId)t64 & 0x00000000FFFFFFFF))

#define             ES_MAX_CONTENT  512

#define             ES_REGION_JPN   0
#define             ES_REGION_USA   1
#define             ES_REGION_PAL   2
#define             ES_REGION_ALL   3
#define             ES_REGION_KOR   4

#pragma pack(push, 1)

typedef struct ESTmdReserved {
    u32                 region;                     // 0x00
    u8                  ratings[16];                // 0x04
    u8                  empty_0x14[4];

    u8                  driveSpin;                  // 0x18
    u8                  empty_0x19[7];

    u8                  ipcMask[12];                // 0x20
    u8                  empty_0x2C[18];             // 0x2C
} ESTmdReserved;

#pragma pack(pop)
#pragma pack(push, 4)

typedef struct {
    u32                 code;                       // 0x00
    u32                 limit;                      // 0x04
} ESLpEntry;

typedef struct ESTicketView {
    ESVersion           version;                    // 0x00

    ESTicketId          ticketId;                   // 0x04
    ESDeviceId          deviceId;                   // 0x0C
    ESTitleId           titleId;                    // 0x10

    ESSysAccessMask     sysAccessMask;              // 0x18

    u16                 ticketVersion;              // 0x1A

    u32                 accessTitleID;              // 0x1C
    u32                 accessTitleMask;            // 0x20

    u8                  license;                    // 0x24
    u8                  reserved[0x30];             // 0x25
    u8                  audit;                      // 0x55

    u8                  cidxMask[0x40];             // 0x56
    ESLpEntry           limits[8];                  // 0x98
} ESTicketView;

/* TMD */

typedef struct ESTmdViewHeader {
    ESVersion           version;                    // 0x00
    ESSysVersion        sysVersion;                 // 0x04

    ESTitleId           titleId;                    // 0xC
    ESTitleType         titleType;                  // 0x14

    u16                 groupId;                    // 0x18

    ESTmdReserved       reserved;                   // 0x1A

    ESTitleVersion      titleVerson;                // 0x58

    u16                 numContents;                // 0x5A
} ESTmdViewHeader;

typedef struct ESCmdView {
    ESContentId         cid;                        // 0x00
    u16                 index;                      // 0x04
    ESContentType       type;                       // 0x06
    u64                 size;                       // 0x08
} ESCmdView;

typedef struct ESTmdView {
    ESTmdViewHeader     head;                       // 0x00
    ESCmdView           contents[ES_MAX_CONTENT];   // 0x5C
} ESTmdView;

#pragma pack(pop)

enum {
    ES_ERR_OK                    = 0,

    ES_ERR_DONT_EXISTS           = -106,

    ES_ERR_INVALID_PUB_KEY_TYPE  = -1005,
    ES_ERR_FILE_READ_FAILED      = -1009,
    ES_ERR_FILE_WRITE_FAILED     = -1010,
    ES_ERR_INVALID_SIGNATURE     = -1012,
    ES_ERR_TMD_FD_OVERFLOW       = -1016,
    ES_ERR_INVALID_ARGUMENTS     = -1017,
    ES_ERR_INVALID_DEVICE_ID     = -1020,
    ES_ERR_INVALID_CONTENT_HASH  = -1022,
    ES_ERR_MEMORY_ERROR          = -1024,
    ES_ERR_NO_TMD_FILE_FOUND     = -1025,
    ES_ERR_TMD_INVALID_RIGHT     = -1026,
    ES_ERR_ISSUER_NOT_FOUND      = -1027,
    ES_ERR_TICKET_NOT_FOUND      = -1028,
    ES_ERR_INVALID_TICKET        = -1029,
    ES_ERR_INVALID_BOOT2         = -1031,
    ES_ERR_UNKNOWN_FATAL         = -1032,
    ES_ERR_TICKET_EXPIRED        = -1033,
    ES_ERR_INVALID_TITLE_VER     = -1035,
    ES_ERR_BAD_SYSMENU_TICKET    = -1036,
    ES_ERR_BAD_SYSMENU_CONTENTS  = -1037,

    ES_ERR_NO_DISC_NAND_TMD      = -1039,
};

#ifdef __cplusplus
}
#endif

#endif // PRIVATE_ES_TYPES_H
