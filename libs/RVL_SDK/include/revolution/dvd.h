#ifndef REVOLUTION_DVD_H
#define REVOLUTION_DVD_H

#include <revolution/types.h>
#include <revolution/os/OSAlarm.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef struct DVDDiskID {
    char    gameName[4];        // 0x00
    char    company[2];         // 0x04
    
    u8      diskNumber;         // 0x06
    u8      gameVersion;        // 0x07
    
    u8      streaming;          // 0x08
    u8      streamingBufSize;   // 0x09
    
    u8      padding[14];        // 0x0A
    
    u32     rvlMagic;           // 0x18
    u32     gcMagic;            // 0x1C
} DVDDiskID;

DVDDiskID*  DVDGetCurrentDiskID();

typedef struct DVDDriveInfo {
    u16 revisionLevel;
    u16 deviceCode;
    u32 releaseDate;

    u8 pad[24];
} DVDDriveInfo;

typedef struct DVDCommandBlock DVDCommandBlock;
typedef void (*DVDCommandCallback)(s32 result, DVDCommandBlock* block);

enum {
    DVD_COMMAND_STATE_IDLE = 0
};

struct DVDCommandBlock {
    DVDCommandBlock*    next;               // 0x00
    DVDCommandBlock*    prev;               // 0x04

    u32                 command;            // 0x08

    long                state;              // 0x0C

    u32                 offset;             // 0x10
    u32                 length;             // 0x14
    void*               addr;               // 0x18

    u32                 currTransferSize;   // 0x1C
    u32                 transferredSize;    // 0x20

    DVDDiskID*          id;                 // 0x24
    DVDCommandCallback  callback;           // 0x28

    void*               userData;           // 0x2C
};

typedef struct DVDFileInfo DVDFileInfo;
typedef void (*DVDFileCallback)(s32 result, DVDFileInfo* block);

struct DVDFileInfo {
    DVDCommandBlock cb;         // 0x00

    u32             startAddr;  // 0x30
    u32             length;     // 0x34

    DVDFileCallback callback;   // 0x38
};

typedef void (*DVDCBCallback)(s32 result, DVDCommandBlock* block);

void    DVDInit();

BOOL    DVDInquiryAsync(DVDCommandBlock* block, DVDDriveInfo* info, DVDCBCallback callback);

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_DVD_H
