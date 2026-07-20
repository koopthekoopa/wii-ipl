#include "system/TVRC.h"

#include <decomp.h>

#include <revolution/arc.h>
#include <revolution/wpad.h>

#include <cstdio>
#include <cstring>

#pragma sym on

namespace LibTVRC {
    const char* TVRC_FILE_HEADER = "TVR0";
    u32 __tienHoseiNsec = 1100;
    u32 _limitMilli = 400;

    ARCHandle _database ALIGN32;
    OSAlarm _alarm;

    BOOL _isRepeatActive;
    BOOL _isUseRepeatCode;

    u32 _lastError;
    typedef struct {
        u8 magic[4];  // 0x00
        u32 fileSize;
        char unk_0x08[4];
        f32 unk_0x0C;
        f32 unk_0x10;
        u32 unk_0x14;
        struct {
            u32 offset;
            u32 unk_0x04;
        } unk_0x18[TVRC_COMMAND_MAP_MAX - 1 /*?*/];
    } _FileData;
    _FileData* _tvrcFile;
    undefined4 _Hz;
    undefined4 _onTimeRatio;

    int _makerID;
    int _typeNo;

    BOOL _isUseCustomParams;
    BOOL _isInitialized;
    BOOL _isActive;
    BOOL _isReserveDeactive;

    OSTime _unitStartTime;
    OSTime _unitLastTime;
    OSTime _totalStartTime;

    BOOL _isOnOff;
    BOOL _isLastOnOff;

    int _ctCombo;

    int _func0state;
    int _loop0count;

    int _func1state;

    u32 _bitLength;
    u32 _bitArray;
    u32 _repeatBitLength;
    u32 _repeatBitArray;

    OSTime _tickT;
    OSTime _tickWait[2];

    void __FTVRCLoop0Handler(OSAlarm *alarm, OSContext *ctx) {
        return;
    }

    void __FTVRCLoop1Handler(OSAlarm *alarm, OSContext *ctx) {
        if (_ctCombo != 0 && _isActive != 0) {
            if (_func1state == -1) {
                _unitStartTime = OSGetTime();
                _func1state = 0;
            }

            if (_isLastOnOff != 0) {
                _unitLastTime = OSGetTime();

                if (_func1state == 0) {
                    WPADSetSensorBarPower(TRUE);
                    _func1state = 1;
                    OSSetAlarm(&_alarm, _tickWait[1], __FTVRCLoop1Handler);
                    return;
                }

                BOOL active = (int)(_unitLastTime - _unitStartTime) < (int)(*(u32*)&_tickT * _ctCombo);
                WPADSetSensorBarPower(FALSE);
                _func1state = 0;
                if (active) {
                    OSSetAlarm(&_alarm, _tickWait[0], __FTVRCLoop1Handler);
                } else {
                    OSSetAlarm(&_alarm, _tickWait[0], __FTVRCLoop0Handler);
                }
            } else {
                WPADSetSensorBarPower(FALSE);
                OSSetAlarm(&_alarm, *(u32*)&_tickT * _ctCombo, __FTVRCLoop0Handler);
            }
        }
    }
}  // namespace LibTVRC

using namespace LibTVRC;

BOOL TVRCInit(void* pRsrc) {
    if (_isInitialized) {
        _lastError = 0;
        return FALSE;
    }

    if (ARCInitHandle(pRsrc, &_database) == FALSE) {
        _lastError = 4;
        return FALSE;
    }

    _makerID = -1;
    _typeNo = 0;

    OSCreateAlarm(&_alarm);

    _isInitialized = TRUE;

    WPADSetSensorBarPower(TRUE);

    return FALSE;
}

BOOL TVRCSetModelType(int makerID, int typeNo, void* pFileData, int length) {
    ARCDir dir;
    ARCDirEntry dirEntry;
    char dirName[16];

    ARCFileInfo file;

    if (_isInitialized == FALSE || _database.archiveStartAddr == NULL) {
        return FALSE;
    }
    if (((ARCHeader*)_database.archiveStartAddr)->magic != ARC_MAGIC) {
        return FALSE;
    }
    if (makerID == _makerID && typeNo == _typeNo) {
        return TRUE;
    }

    sprintf(dirName, "/%04d", makerID);
    if (!ARCOpenDir(&_database, dirName, &dir)) {
        _lastError = 6;
        return FALSE;
    }
    int curType = typeNo;
    while (ARCReadDir(&dir, &dirEntry)) {
        if (--curType < 0) {
            break;
        }
    }
    ARCCloseDir(&dir);

    if (ARCFastOpen(&_database, dirEntry.entryNum, &file) == FALSE) {
        _lastError = 6;
        return FALSE;
    }
    int fileLen = ARCGetLength(&file);
    if (fileLen > length) {
        _lastError = 7;
        return FALSE;
    }
    memcpy(pFileData, ARCGetStartAddrInMem(&file), fileLen);

    _tvrcFile = (_FileData*)pFileData;
    _makerID = makerID;
    _typeNo = typeNo;
    _database.archiveStartAddr = NULL;

    return TRUE;
}

void TVRCSetRepeatTimeout(u32 value) {
    _limitMilli = value;
}

BOOL TVRCSendStopAsync() {
    if (!_isInitialized || !_isActive) {
        return FALSE;
    } else {
        _isReserveDeactive = TRUE;
        return TRUE;
    }
}

BOOL TVRCIsActive() {
    return _isActive;
}

BOOL TVRCIsValidCommand(int cmd) {
    BOOL result = FALSE;
    if (cmd >= 0 && _isInitialized && _tvrcFile != NULL && _tvrcFile->unk_0x18[cmd].offset != 0) {
        result = TRUE;
    }
    return result;
}
