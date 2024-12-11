#ifndef REVOLUTION_ES_TYPES_H
#define REVOLUTION_ES_TYPES_H

#include <revolution/types.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef s32         ESError;

typedef u32         ESId;
typedef u32         ESContentId;
typedef u64         ESTitleId;
typedef u64         ESTicketId;

typedef u8          ESVersion;
typedef u16         ESTitleVersion;
typedef ESTitleId   ESSysVersion;

typedef u32         ESTitleType;
typedef u16         ESContentType;

typedef u8          ESTmdReserved[62];
typedef u8          ESTicketReserved[48];

typedef u8          ESSysAccessMask[2];
typedef u8          ESCidxMask[64];

typedef struct {
    u32 code;

    u32 limit;
} ESLpEntry;

typedef struct ESTicketView {
    ESVersion           version;        // 0x00

    ESTicketId          ticketID;       // 0x01
    ESId                devID;          // 0x09
    ESTitleId           titleID;        // 0x0D

    ESSysAccessMask     sysAccessMask;  // 0x15

    u16                 ticketVer;      // 0x17

    u32                 accTitleID;     // 0x19
    u32                 accTitleMask;   // 0x1D

    u8                  license;        // 0x21
    ESTicketReserved    reserved;       // 0x22
    u8                  audit;          // 0x52

    ESCidxMask          cidxMask;       // 0x54
    ESLpEntry           limits[8];      // 0x94
} ESTicketView;

#define ES_ERR_OK                   0

#define ES_ERR_DONT_EXISTS          -106

// Reference: https://wiibrew.org/wiki//dev/es
#define ES_ERR_INVALID_PUB_KEY_TYPE -1005
#define ES_ERR_FILE_READ_FAILED     -1009
#define ES_ERR_FILE_WRITE_FAILED    -1010
#define ES_ERR_INVALID_SIGNATURE    -1012
#define ES_ERR_TMD_FD_OVERFLOW      -1016
#define ES_ERR_INVALID_ARGUMENTS    -1017
#define ES_ERR_INVALID_DEVICE_ID    -1020
#define ES_ERR_INVALID_CONTENT_HASH -1022
#define ES_ERR_MEMORY_ERROR         -1024
#define ES_ERR_TMD_INVALID_RIGHT    -1026
#define ES_ERR_ISSUER_NOT_FOUND     -1027
#define ES_ERR_TICKET_NOT_FOUND     -1028
#define ES_ERR_INVALID_TICKET       -1029
#define ES_ERR_INVALID_BOOT2        -1031
#define ES_ERR_UNKNOWN_FATAL        -1032
#define ES_ERR_TICKET_EXPIRED       -1033
#define ES_ERR_INVALID_TITLE_VER    -1035
#define ES_ERR_BAD_SYSMENU_TICKET   -1036
#define ES_ERR_BAD_SYSMENU_CONTENTS -1037

#define ES_ERR_NO_DISC_NAND_TMD     -1039

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_ES_TYPES_H


