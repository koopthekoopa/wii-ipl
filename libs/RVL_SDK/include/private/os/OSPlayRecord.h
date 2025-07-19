#ifndef PRIVATE_OS_PLAY_RECORD_H
#define PRIVATE_OS_PLAY_RECORD_H

#include <revolution/types.h>
#include <revolution/os/OSTime.h>

#include <wchar.h>

#ifdef __cplusplus
extern "C" {
#endif

#define OS_RECORD_NAND_PATH         "/title/00000001/00000002/data/play_rec.dat"

#define OS_RECORD_CHECKSUM_SIZE     (sizeof(OSPlayRecord) - 4)

#define OS_RECORD_TITLE_LENGTH      21

typedef struct OSPlayRecord {
    u32     checkSum;                               // 0x00
    wchar_t titleName[2][OS_RECORD_TITLE_LENGTH];   // 0x04

    OSTime  playStartTime;                          // 0x58
    OSTime  playTime;                               // 0x60

    char    gameCode[4];                            // 0x68
    char    makerCode[2];                           // 0x6C
    u8      padding[0x12];                          // 0x6E
} OSPlayRecord;

enum {
    OS_RECORD_STATE_STARTED = 0,
    OS_RECORD_STATE_OPEN,
    OS_RECORD_STATE_READ,
    OS_RECORD_STATE_SEEK,
    OS_RECORD_STATE_SET_ALARM,
    OS_RECORD_STATE_WRITE,
    OS_RECORD_STATE_CLOSE,
    OS_RECORD_STATE_CLOSED,
    OS_RECORD_STATE_TIMEOUT,
    OS_RECORD_STATE_STOPPED 
};

void    __OSCreatePlayRecord(wchar_t* titleName, char* gameCode, char* makerCode);
BOOL    __OSReadPlayRecord(OSPlayRecord *record);

void    __OSStartPlayRecord();
void    __OSStopPlayRecord();

#ifdef __cplusplus
}
#endif

#endif // PRIVATE_OS_PLAY_RECORD_H
