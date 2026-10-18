#ifndef PRIVATE_ES_TYPES_H
#define PRIVATE_ES_TYPES_H

#include <revolution/types.h>

#include <private/ios/types.h>

#ifdef __cplusplus
extern "C" {
#endif

/**
 * References:
 * https://github.com/iversonjimmy/acer_cloud_wifi_copy/blob/master/sw_x/es_core/esc/core/base/include
 * https://wiibrew.org/wiki//dev/es
 * https://wiibrew.org/wiki/Ticket
 * https://wiibrew.org/wiki/Title_metadata
 * https://github.com/devkitPro/libogc/blob/master/gc/ogc/es.h
 */

typedef s32 ESError;
typedef s32 ESFd;

typedef u32 ESDeviceId;
typedef u32 ESContentId;

typedef u32 ESTitleId32;
typedef u32 ESTitleType;
typedef u32 ESTitleCode;
typedef u64 ESTitleId;

typedef u64 ESTicketId;

typedef u8 ESVersion;

typedef struct {
    u8 data[0x40];
} ESCidxMask;

typedef u8 ESSignature[60];

typedef u8 ESHash[20];

#define ES_TITLE_TYPE(t64) ((((ESTitleId)t64 & 0xFFFFFFFF00000000) >> 32))
#define ES_TITLE_CODE(t64) (((ESTitleId)t64 & 0x00000000FFFFFFFF))

#define ES_TITLE_TYPE_NOMASK(t64) ((((ESTitleId)t64) >> 32))
#define ES_TITLE_CODE_NOMASK(t64) (((ESTitleId)t64))

#define ES_TITLE_ID(type, code) ((ESTitleId)((ESTitleId)type << 32 | code))

#define ES_MAX_CONTENT 512

#define ES_LIMIT_MAX 8

enum {
    ES_REGION_JPN = 0,
    ES_REGION_USA,
    ES_REGION_PAL,
    ES_REGION_ALL,
    ES_REGION_KOR
};

enum {
    ES_CK_NORMAL = 0,  // Normal common key
    ES_CK_KOREAN,      // Korean common key
    ES_CK_CAFEWII      // Wii U's Wii Mode common key
};

enum {
    ES_DEV_RETAIL = 0,  // Normal unit
    ES_DEV_1,           // Korean/Dev unit??
    ES_DEV_CAFE         // Wii U
};

enum {
    ES_SEEK_BEG = 0,
    ES_SEEK_CUR,
    ES_SEEK_END
};

#define ES_TICKET_VIEW_PROPERTY_MASK(ticketView) ((u16*)((u8*)(&(&ticketView)->customData) + 0x01)) /* UUGH */
#pragma pack(push, 1)
typedef struct ESTicketCustomData {
    u8 keyId;  // 0x00
    u8 unk_0x01[47];
} ESTicketCustomData;
#pragma pack(pop)

#pragma pack(push, 1)
typedef struct ESTmdCustomData {
    u32 region;      // 0x00
    u8 ratings[16];  // 0x04
    u8 unk_0x14[4];
    u8 driveSpin;  // 0x18
    u8 unk_0x19[7];
    u8 ipcMask[12];   // 0x20
    u8 unk_0x2C[18];  // 0x2C
} ESTmdCustomData;
#pragma pack(pop)

typedef enum ESCertSigType {
    ES_SIG_RSA4096 = 0x00010000,
    ES_SIG_RSA2048,
    ES_SIG_ECC,
} ESCertSigType;

typedef struct ESCertSignature {
    ESCertSigType sigType;  // 0x00
    u8 sig[256];            // 0x04
    u8 reserved[60];        // 0x104
    u8 issuer[64];          // 0x140
} ESCertSignature;

#pragma pack(push, 4)

/* Ticket */

typedef struct ESLpEntry {
    u32 code;   // 0x00
    u32 limit;  // 0x04
} ESLpEntry;
typedef struct {
    ESLpEntry data[ES_LIMIT_MAX];
} ESLpEntryLimits;

typedef struct ESTicketView {
    ESVersion version;  // 0x00

    ESTicketId ticketId;  // 0x04
    ESDeviceId deviceId;  // 0x0C
    ESTitleId titleId;    // 0x10

    u8 sysAccessMask[2];  // 0x18

    u16 ticketVersion;  // 0x1A

    u32 accessTitleId;    // 0x1C
    u32 accessTitleMask;  // 0x20

    u8 licenseType;                 // 0x24
    ESTicketCustomData customData;  // 0x25

    u8 audit;  // 0x55

    ESCidxMask cidxMask;     // 0x56
    ESLpEntryLimits limits;  // 0x98
} ESTicketView;

typedef struct ESTicket {
    ESCertSignature sig;  // 0x00

    u8 serverPubKey[60];  // 0x180

    ESVersion version;           // 0x1BC
    ESVersion caCrlVersion;      // 0x1BD
    ESVersion signerCrlVersion;  // 0x1BE

    u8 titleKey[16];  // 0x1BF

    ESTicketId ticketId;  // 0x1D0
    ESDeviceId deviceId;  // 0x1D8
    ESTitleId titleId;    // 0x1DC

    u8 sysAccessMask[2];  // 0x1E4

    u16 ticketVersion;  // 0x1E6

    u32 accessTitleId;    // 0x1E8
    u32 accessTitleMask;  // 0x1EC

    u8 licenseType;  // 0x1F0

    ESTicketCustomData customData;  // 0x1F1

    u8 audit;                        // 0x221
    ESCidxMask cidxMask;             // 0x222
    ESLpEntry limits[ES_LIMIT_MAX];  // 0x264
} ESTicket;

/* TMD */

typedef struct ESTmdViewHeader {
    ESVersion version;           // 0x00
    ESVersion caCrlVersion;      // 0x01
    ESVersion signerCrlVersion;  // 0x02
    ESTitleId sysVersion;        // 0x04

    ESTitleId titleId;  // 0x0C
    u32 titleType;      // 0x14

    u16 groupId;  // 0x18

    ESTmdCustomData customData;  // 0x1A

    u16 titleVersion;  // 0x58

    u16 numContents;  // 0x5A
} ESTmdViewHeader;

typedef struct ESContentInfo {
    ESContentId cid;  // 0x00

    u16 index;  // 0x04
    u16 type;   // 0x06
    u64 size;   // 0x08
} ESContentInfo;

typedef struct ESTmdView {
    ESTmdViewHeader head;                    // 0x00
    ESContentInfo contents[ES_MAX_CONTENT];  // 0x5C
} ESTmdView;

typedef struct ESContentMeta {
    ESContentId cid;  // 0x00

    u16 index;  // 0x04
    u16 type;   // 0x06

    u64 size;  // 0x08

    ESHash hash;  // 0x10
} ESContentMeta;

typedef struct ESTitleMetaHeader {
    ESVersion version;           // 0x00
    ESVersion caCrlVersion;      // 0x01
    ESVersion signerCrlVersion;  // 0x02
    ESTitleId sysVersion;        // 0x04

    ESTitleId titleId;  // 0x0C
    u32 type;           // 0x14
    u16 groupId;        // 0x18

    ESTmdCustomData customData;  // 0x1A

    u32 accessRights;  // 0x58

    u16 titleVersion;  // 0x5C

    u16 numContents;  // 0x5E

    u16 bootIndex;  // 0x60
} ESTitleMetaHeader;

typedef struct ESTitleMeta {
    ESCertSignature sig;          // 0x00
    ESTitleMetaHeader head;       // 0x180
    ESContentMeta contents[512];  // 0x1E4
} ESTitleMeta;

#pragma pack(pop)

/*enum {
    ES_ERR_OK = 0,

    ES_ERR_DONT_EXISTS = -106,

    ES_ERR_INVALID_PUB_KEY_TYPE = -1005,
    ES_ERR_FILE_READ_FAILED = -1009,
    ES_ERR_FILE_WRITE_FAILED = -1010,
    ES_ERR_INVALID_SIGNATURE = -1012,
    ES_ERR_TMD_MAXFD = -1016,
    ES_ERR_INVALID = -1017,
    ES_ERR_INVALID_UNKNOWN = -1019,
    ES_ERR_INVALID_DEVICE_ID = -1020,
    ES_ERR_INVALID_CONTENT_HASH = -1022,
    ES_ERR_MEMORY_ERROR = -1024,
    ES_ERR_NO_TMD_FILE_FOUND = -1025,
    ES_ERR_TMD_INVALID_RIGHT = -1026,
    ES_ERR_ISSUER_NOT_FOUND = -1027,
    ES_ERR_TICKET_NOT_FOUND = -1028,
    ES_ERR_INVALID_TICKET = -1029,
    ES_ERR_INVALID_BOOT2 = -1031,
    ES_ERR_UNKNOWN_FATAL = -1032,
    ES_ERR_TICKET_EXPIRED = -1033,
    ES_ERR_INVALID_TITLE_VER = -1035,
    ES_ERR_BAD_SYSMENU_TICKET = -1036,
    ES_ERR_BAD_SYSMENU_CONTENTS = -1037,

    ES_ERR_NO_DISC_NAND_TMD = -1039,
};*/

#define ES_ERR_OK 0
#define ES_ERR_DONT_EXISTS -106
#define ES_ERR_1001 -1001
#define ES_ERR_1002 -1002
#define ES_ERR_1003 -1003
#define ES_ERR_1004 -1004
#define ES_ERR_INVALID_PUB_KEY_TYPE -1005
#define ES_ERR_1006 -1006
#define ES_ERR_1007 -1007
#define ES_ERR_1008 -1008
#define ES_ERR_FILE_READ_FAILED -1009
#define ES_ERR_FILE_WRITE_FAILED -1010
#define ES_ERR_1011 -1011
#define ES_ERR_INVALID_SIGNATURE -1012
#define ES_ERR_1013 -1013
#define ES_ERR_1014 -1014
#define ES_ERR_1015 -1015
#define ES_ERR_TMD_MAXFD -1016
#define ES_ERR_INVALID -1017
#define ES_ERR_1018 -1018
#define ES_ERR_INVALID_UNKNOWN -1019
#define ES_ERR_INVALID_DEVICE_ID -1020
#define ES_ERR_1021 -1021
#define ES_ERR_INVALID_CONTENT_HASH -1022
#define ES_ERR_1023 -1023
#define ES_ERR_NO_MEMORY -1024
#define ES_ERR_NO_TMD_FILE -1025
#define ES_ERR_NO_RIGHT -1026
#define ES_ERR_ISSUER_NOT_FOUND -1027
#define ES_ERR_TICKET_NOT_FOUND -1028
#define ES_ERR_INVALID_TICKET -1029
#define ES_ERR_1030 -1030
#define ES_ERR_INVALID_BOOT2 -1031
#define ES_ERR_UNKNOWN_FATAL -1032
#define ES_ERR_TICKET_EXPIRED -1033
#define ES_ERR_NO_NEW_COMMON_KEY -1034
#define ES_ERR_INVALID_TITLE_VER -1035
#define ES_ERR_BAD_SYSMENU_TICKET -1036
#define ES_ERR_BAD_SYSMENU_CONTENTS -1037
#define ES_ERR_1038 -1038
#define ES_ERR_NO_DISC_NAND_TMD -1039

#ifdef __cplusplus
}
#endif

#endif  // PRIVATE_ES_TYPES_H
