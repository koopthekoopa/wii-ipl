#include <revolution/os.h>
#include <private/os.h>

#include <revolution/nand.h>

#include <string.h>

static OSPlayRecord     PlayRecord ALIGN32;
static NANDFileInfo     FileInfo;
static NANDCommandBlock Block;
static OSAlarm          PlayRecordAlarm;

DECOMP_FORCE_ACTIVE(OSPlayRecord_c, PlayRecord);

static BOOL             PlayRecordGet = FALSE;
static s32              PlayRecordState = OS_RECORD_STATE_STOPPED;
static BOOL             PlayRecordError = FALSE;

static vBOOL            PlayRecordTerminate = FALSE;
static vBOOL            PlayRecordTerminated = FALSE;

static BOOL             PlayRecordRetry = FALSE;

static OSTime           PlayRecordLastCloseTime;
static s32              PlayRecordLastError = NAND_RESULT_OK;

// bullcrap
#define PLAY_RECORD_TICK(x) ((OSTime)(x)*(OSTime)OSSecondsToTicks(1))

static u32 RecordCheckSum(OSPlayRecord* record) {
    u32* ptr = (u32*)record->titleName;
    u32 sum = 0;

    u32 i;
    for (i = 0; i < OS_RECORD_CHECKSUM_SIZE / sizeof(u32); i++) {
        sum = sum + *ptr;
        ptr++;
    }

    return sum;
}

void __OSCreatePlayRecord(wchar_t* titleName, char* gameCode, char* companyCode) {
    NANDFileInfo recFile;
    s32 ret;

    memcpy(PlayRecord.titleName, titleName, sizeof(PlayRecord.titleName));
    memcpy(PlayRecord.gameCode, gameCode, sizeof(PlayRecord.gameCode));
    memcpy(PlayRecord.companyCode, companyCode, sizeof(PlayRecord.companyCode));

    PlayRecord.playStartTime = OSGetTime();
    PlayRecord.playTime = PlayRecord.playStartTime;
    
    memset(PlayRecord.padding, 0, sizeof(PlayRecord.padding));

    PlayRecord.checkSum = RecordCheckSum(&PlayRecord);

    ret = NANDCreate(OS_RECORD_NAND_PATH, NAND_PERM_ALL_RW, 0);

    if (ret == NAND_RESULT_OK || ret == NAND_RESULT_EXISTS) {
        ret = NANDOpen(OS_RECORD_NAND_PATH, &recFile, NAND_ACCESS_WRITE);
        
        if (ret == NAND_RESULT_OK) {
            NANDWrite(&recFile, &PlayRecord, sizeof(PlayRecord));
            NANDClose(&recFile);
        }
    }
}

BOOL __OSReadPlayRecord(OSPlayRecord *record) {
    NANDFileInfo fileInfo;
    s32 result;

    result = NANDOpen(OS_RECORD_NAND_PATH, &fileInfo, NAND_ACCESS_READ);
    if (result == NAND_RESULT_OK) {
        result = NANDRead(&fileInfo, &PlayRecord, sizeof(OSPlayRecord));
        NANDClose(&fileInfo);
        if (result != sizeof(OSPlayRecord)) {
            return FALSE;
        }
    }
    else {
        return FALSE;
    }

    if (RecordCheckSum(&PlayRecord) != PlayRecord.checkSum) {
        return FALSE;
    }

    memcpy(record, &PlayRecord, sizeof(OSPlayRecord));

    return TRUE;
}

static void PlayRecordCallback(s32 result, NANDCommandBlock* block);

void PlayRecordAlarmCallback(OSAlarm* alarm, OSContext* context) {
    PlayRecordCallback(NAND_RESULT_OK, NULL);
}

static void PlayRecordCallback(s32 result, NANDCommandBlock* block) {
    s32 ret = NAND_RESULT_OK;
    PlayRecordLastError = result;

    if (PlayRecordTerminate) {
        PlayRecordTerminated = TRUE;
        return;
    }

    if (!PlayRecordRetry) {
        // Check results
        switch (PlayRecordState) {
            case OS_RECORD_STATE_STARTED: {
                PlayRecordState = OS_RECORD_STATE_OPEN;
                break;
            }
            case OS_RECORD_STATE_OPEN: {
                if (result == NAND_RESULT_MAXFD) {
                    PlayRecordRetry = TRUE;
                    OSCreateAlarm(&PlayRecordAlarm);
                    OSSetAlarm(&PlayRecordAlarm, PLAY_RECORD_TICK(1), PlayRecordAlarmCallback);
                    return;
                }
                else if (result == NAND_RESULT_OK) {
                    if (!PlayRecordGet) {
                        PlayRecordState = OS_RECORD_STATE_READ;
                    }
                    else {
                        PlayRecordState = OS_RECORD_STATE_SET_ALARM;
                    }
                    break;
                }
                else {
                    PlayRecordError = TRUE;
                    PlayRecordState = OS_RECORD_STATE_CLOSED;
                    return;
                }
            }
            case OS_RECORD_STATE_READ: {
                if (result == sizeof(OSPlayRecord)) {
                    PlayRecordGet = TRUE;
                    PlayRecordLastCloseTime = PlayRecord.playTime;
                    PlayRecordState = OS_RECORD_STATE_SEEK;
                }
                else {
                    PlayRecordError = TRUE;
                    PlayRecordState = OS_RECORD_STATE_CLOSE;
                }
                break;
            }
            case OS_RECORD_STATE_SEEK: {
                if (result == NAND_RESULT_OK) {
                    PlayRecordState = OS_RECORD_STATE_SET_ALARM;
                }
                else {
                    PlayRecordError = TRUE;
                    PlayRecordState = OS_RECORD_STATE_CLOSE;
                }
                break;
            }
            case OS_RECORD_STATE_SET_ALARM: {
                PlayRecordState = OS_RECORD_STATE_WRITE;
                break;
            }
            case OS_RECORD_STATE_WRITE: {
                if (result == sizeof(OSPlayRecord)) {
                    if (OSGetTime() - PlayRecordLastCloseTime > PLAY_RECORD_TICK(300)) {
                        PlayRecordState = OS_RECORD_STATE_CLOSE;
                    }
                    else {
                        PlayRecordState = OS_RECORD_STATE_SEEK;
                    }
                }
                else {
                    PlayRecordError = TRUE;
                    PlayRecordState = OS_RECORD_STATE_CLOSE;
                }
                break;
            }
            case OS_RECORD_STATE_CLOSE: {
                if (PlayRecordError) {
                    PlayRecordState = OS_RECORD_STATE_CLOSED;
                    return;
                }
                else {
                    if (result == NAND_RESULT_OK) {
                        PlayRecordLastCloseTime = PlayRecord.playTime;
                        PlayRecordState = OS_RECORD_STATE_OPEN;
                        break;
                    }
                    else {
                        PlayRecordState = OS_RECORD_STATE_CLOSED;
                        PlayRecordError = TRUE;
                        return;
                    }
                }
            }
            default: {
                PlayRecordState = OS_RECORD_STATE_CLOSED;
                PlayRecordError = TRUE;
                return;
            }
        }
    }

    PlayRecordRetry = FALSE;

    switch (PlayRecordState) {
        case OS_RECORD_STATE_OPEN: {
            ret = NANDOpenAsync(OS_RECORD_NAND_PATH, &FileInfo, NAND_ACCESS_RW, PlayRecordCallback, &Block);
            break;
        }
        case OS_RECORD_STATE_READ: {
            ret = NANDReadAsync(&FileInfo, &PlayRecord, sizeof(OSPlayRecord), PlayRecordCallback, &Block);
            break;
        }
        case OS_RECORD_STATE_SEEK: {
            ret = NANDSeekAsync(&FileInfo, 0, 0, PlayRecordCallback, &Block);
            break;
        }
        case OS_RECORD_STATE_SET_ALARM: {
            OSCreateAlarm(&PlayRecordAlarm);
            OSSetAlarm(&PlayRecordAlarm, PLAY_RECORD_TICK(60), PlayRecordAlarmCallback);
            break;
        }
        case OS_RECORD_STATE_WRITE: {
            PlayRecord.playTime = OSGetTime();
            PlayRecord.checkSum = RecordCheckSum(&PlayRecord);
            ret = NANDWriteAsync(&FileInfo, &PlayRecord, sizeof(OSPlayRecord), PlayRecordCallback, &Block);
            break;
        }
        case OS_RECORD_STATE_CLOSE: {
            ret = NANDCloseAsync(&FileInfo, PlayRecordCallback, &Block);
            break;
        }
    }

    if (ret != NAND_RESULT_OK) {
        if (ret == NAND_RESULT_BUSY) {
            OSCreateAlarm(&PlayRecordAlarm);
            OSSetAlarm(&PlayRecordAlarm, PLAY_RECORD_TICK(1), PlayRecordAlarmCallback);
            PlayRecordRetry = TRUE;
        }
        else {
            PlayRecordError = TRUE;
            switch (PlayRecordState) {
                case OS_RECORD_STATE_READ:
                case OS_RECORD_STATE_SEEK:
                case OS_RECORD_STATE_WRITE: {
                    PlayRecordState = OS_RECORD_STATE_CLOSE;
                    ret = NANDCloseAsync(&FileInfo, PlayRecordCallback, &Block);

                    if (ret == NAND_RESULT_BUSY) {
                        PlayRecordRetry = TRUE;
                        OSCreateAlarm(&PlayRecordAlarm);
                        OSSetAlarm(&PlayRecordAlarm, PLAY_RECORD_TICK(1), PlayRecordAlarmCallback);
                    }
                    break;
                }
                default: {
                    PlayRecordState = OS_RECORD_STATE_CLOSED;
                }
            }
        }
    }

    PlayRecordLastError = ret;
}

void __OSStartPlayRecord() { 
    if (NANDInit() == NAND_RESULT_OK) {
        PlayRecordGet = FALSE;
        PlayRecordState = OS_RECORD_STATE_STARTED;
        PlayRecordError = FALSE;
        PlayRecordRetry = FALSE;
        PlayRecordTerminate = FALSE;
        PlayRecordTerminated = FALSE;
        PlayRecordLastError = NAND_RESULT_OK;
        PlayRecordCallback(NAND_RESULT_OK, NULL);
    }
}

void __OSStopPlayRecord() {
    OSTime start;
    BOOL enabled = OSDisableInterrupts();

    PlayRecordTerminate = TRUE;
    
    if (PlayRecordState == OS_RECORD_STATE_CLOSED
        || PlayRecordState == OS_RECORD_STATE_STARTED
        || PlayRecordState == OS_RECORD_STATE_STOPPED
        || PlayRecordState == OS_RECORD_STATE_TIMEOUT) {
        OSRestoreInterrupts(enabled);
    }
    else if (PlayRecordState == OS_RECORD_STATE_SET_ALARM) {
        OSCancelAlarm(&PlayRecordAlarm);
        OSRestoreInterrupts(enabled);
        PlayRecord.playTime = OSGetTime();
        PlayRecord.checkSum = RecordCheckSum(&PlayRecord);
        NANDWrite(&FileInfo, &PlayRecord, sizeof(PlayRecord));
        NANDClose(&FileInfo);
    }
    else {
        if (PlayRecordRetry) {
            OSCancelAlarm(&PlayRecordAlarm);
            OSRestoreInterrupts(enabled);
        }
        else {
            OSRestoreInterrupts(enabled);
            start = OSGetTime();
            while (TRUE) {
                if (PlayRecordTerminated) {
                    break;
                }
                if ((OSGetTime() - start) > OSMillisecondsToTicks(500)) {
                    PlayRecordState = OS_RECORD_STATE_TIMEOUT;
                    return;
                }
            }
        }
        switch (PlayRecordState) {
            case OS_RECORD_STATE_READ:
            case OS_RECORD_STATE_SEEK:
            case OS_RECORD_STATE_WRITE: {
                NANDClose(&FileInfo);
                break;
            }
            case OS_RECORD_STATE_OPEN: {
                if (PlayRecordLastError == NAND_RESULT_OK && !PlayRecordRetry) {
                    NANDClose(&FileInfo);
                }
                break;
            }
            case OS_RECORD_STATE_CLOSE: {
                if (PlayRecordRetry) {
                    NANDClose(&FileInfo);
                }
                break;
            }
        }
    }
    
    PlayRecordState = OS_RECORD_STATE_STOPPED;
}
