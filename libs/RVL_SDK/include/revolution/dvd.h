#ifndef REVOLUTION_DVD_H
#define REVOLUTION_DVD_H

#include <revolution/types.h>

#include <revolution/os/OSAlarm.h>

#include <revolution/os.h>

#include <stdbool.h>

#ifdef __cplusplus
extern "C" {
#endif

enum {
    DVD_COMMAND_STATE_IDLE = 0
};

typedef struct DVDDiskID {
    char    gameName[4];        // 0x00
    char    company[2];         // 0x04
    u8      diskNumber;         // 0x06
    u8      gameVersion;        // 0x07

    u8      streaming;          // 0x08
    u8      streamingBufSize;   // 0x09

    u8      padding_0xA[14];

    u32     rvlMagic;           // 0x18
    u32     gcMagic;            // 0x1C
} DVDDiskID;

typedef struct DVDCommandBlock DVDCommandBlock;
typedef void (*DVDCommandCallback)(s32, DVDCommandBlock*);

struct DVDCommandBlock {
    DVDCommandBlock*    next;               // 0x00
    DVDCommandBlock*    prev;               // 0x04

    u32                 command;            // 0x08
    s32                 state;              // 0x0C

    u32                 offset;             // 0x10
    u32                 length;             // 0x14
    void*               addr;               // 0x18

    u32                 currTransferSize;   // 0x1C
    u32                 transferredSize;    // 0x20

    DVDDiskID*          id;                 // 0x24

    DVDCommandCallback  callback;           // 0x28
    void*               userData;           // 0x2C
};

typedef struct DVDDriveInfo {
    u16 revisionLevel;  // 0x00
    u16 deviceCode;     // 0x02
    u32 releaseDate;    // 0x04

    u8  padding_0x8[24];
} DVDDriveInfo;

void        DVDInit();

BOOL        DVDReadDiskID(DVDCommandBlock* block, DVDDiskID* diskID, DVDCommandCallback callback);

BOOL        DVDInquiryAsync(DVDCommandBlock* block, DVDDriveInfo* info, DVDCommandCallback callback);
BOOL        DVDResetAsync(DVDCommandBlock* block, DVDCommandCallback callback);

BOOL        DVDResetRequired();

s32         DVDGetCommandBlockStatus(const DVDCommandBlock* block);

s32         DVDGetDriveStatus();

void        DVDPause();
void        DVDResume();

s32         DVDCancel(DVDCommandBlock* block);
BOOL        DVDCancelAsync(DVDCommandBlock* block, DVDCommandCallback callback);
BOOL        DVDCancelAllAsync(DVDCommandCallback callback);

DVDDiskID*  DVDGetCurrentDiskID();

enum {
    DVD_COVER_BUSY = 0,
    DVD_COVER_OPENED,
    DVD_COVER_CLOSED,
};

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_DVD_H
