#ifndef REVOLUTION_DVD_H
#define REVOLUTION_DVD_H

#include <revolution/types.h>

#include <revolution/os/OSAlarm.h>

#include <revolution/os.h>
#include <revolution/esp.h>

#include <stdbool.h>

#ifdef __cplusplus
extern "C" {
#endif

enum {
    DVD_COMMAND_STATE_IDLE = 0
};


enum {
    DVD_RESULT_COVER_CLOSED = -4,
    DVD_RESULT_CANCELED,
    DVD_RESULT_M2,
    DVD_RESULT_FATAL,
    DVD_RESULT_OK,
};

enum {
    DVD_STATE_FATAL = -1,
    DVD_STATE_IDLE,
    DVD_STATE_BUSY,
    DVD_STATE_WAITING,
    DVD_STATE_COVER_CLOSED,
    DVD_STATE_NO_DISK,
    DVD_STATE_COVER_OPENED,
    DVD_STATE_WRONG_DISK_ID,
    DVD_STATE_7,
    DVD_STATE_PAUSED,
    DVD_STATE_9,
    DVD_STATE_CANCELED,
    DVD_STATE_DISK_ERROR,
    DVD_STATE_MOTOR_STOPPED,
};

enum {
    DVD_COVER_BUSY = 0,
    DVD_COVER_OPENED,
    DVD_COVER_CLOSED,
};

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

typedef struct DVDCommandBlock DVDCommandBlock;
typedef void (*DVDCommandCallback)(s32 result, DVDCommandBlock* block);

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

typedef struct DVDFileInfo DVDFileInfo;
typedef void (*DVDCallback)(s32 result, DVDFileInfo* fileInfo);
typedef void (*DVDLowCallback)(u32 intType);
typedef void (*DVDOptionalCommandChecker)(DVDCommandBlock* block, void (*cb)(u32));

struct DVDFileInfo {
    DVDCommandBlock cb;         // 0x00
    u32             startAddr;  // 0x30
    u32             length;     // 0x34
    DVDCallback     callback;   // 0x38
};

typedef struct DVDDir {
    u32 entryNum;   // 0x00
    u32 location;   // 0x04
    u32 next;       // 0x08
} DVDDir;

typedef struct DVDDirEntry {
    u32     entryNum;   // 0x00
    BOOL    isDir;      // 0x04
    char*   name;       // 0x08
} DVDDirEntry;

typedef struct DVDDriveInfo {
    u16 revisionLevel;  // 0x00
    u16 deviceCode;     // 0x04
    u32 releaseDate;    // 0x08
    u8  pad[24];        // 0x0C
} DVDDriveInfo;

typedef struct DVDCommandInfo {
    u32 command;    // 0x00

    u32 offset;     // 0x04
    u32 length;     // 0x08

    u32 intType;    // 0x0C
    u32 tick;       // 0x10
} DVDCommandInfo;

#define DVD_ERROR_CMD_MAX 5

typedef struct DVDErrorInfo {
    char            gameName[4];                    // 0x00
    u8              diskNumber;                     // 0x04
    u8              gameVersion;                    // 0x05

    u8              reserved0[2];                   // 0x06

    u32             error;                          // 0x08
    u32             dateTime;                       // 0x0C
    u32             status;                         // 0x10

    u8              reserved1[4];                   // 0x14

    u32             nextOffset;                     // 0x18
    DVDCommandInfo  lastCommand[DVD_ERROR_CMD_MAX]; // 0x1C
} DVDErrorInfo;

void        DVDInit();

BOOL        DVDReadAbsAsyncPrio(DVDCommandBlock* block, void* addr, s32 length, u32 offset, DVDCommandCallback callback, s32 prio);
BOOL        DVDReadAbsAsyncForBS(DVDCommandBlock* block, void* addr, s32 length, u32 offset, DVDCommandCallback callback, s32 prio);

BOOL        DVDReadDiskID(DVDCommandBlock* block, DVDDiskID* diskID, DVDCommandCallback callback);
BOOL        DVDCompareDiskID(const DVDDiskID* id1, const DVDDiskID* id2);

BOOL        DVDChangeDiskAsyncForBS(DVDCommandBlock* block, DVDCommandCallback callback);

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

/* Filesystem stuff */

s32     DVDConvertPathToEntrynum(const char* pathPtr);
BOOL    DVDEntrynumIsDir(s32 entry);

BOOL    DVDFastOpen(s32 entry, DVDFileInfo* fileInfo);
BOOL    DVDOpen(const char* fileName, DVDFileInfo* fileInfo);
BOOL    DVDReadAsyncPrio(DVDFileInfo* fileInfo, void* addr, s32 length, s32 offset, DVDCallback callback, s32 prio);
s32     DVDReadPrio(DVDFileInfo* fileInfo, void* addr, s32 length, s32 offset, s32 prio);
BOOL    DVDClose(DVDFileInfo* fileInfo);

BOOL    DVDOpenDir(const char* dirName, DVDDir* dir);
BOOL    DVDReadDir(DVDDir* dir, DVDDirEntry* dirent);
BOOL    DVDCloseDir(DVDDir* dir);

void*   DVDGetFSTLocation();

/* Fatal stuff*/

BOOL        DVDSetAutoFatalMessaging(BOOL enable);

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_DVD_H
