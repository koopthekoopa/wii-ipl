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

#define ES_ERR_OK   0

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_ES_TYPES_H


