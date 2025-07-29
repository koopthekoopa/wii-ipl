#include "system/TVRC.h"

#include <decomp.h>

#include <revolution/wpad.h>
#include <revolution/arc.h>

#include <cstdio>
#include <cstring>

namespace LibTVRC {
    const char*     TVRC_FILE_HEADER = "TVR0";
    u32             __tienHoseiNsec = 1100;
    u32             _limitMilli = 400;

    ARCHandle       _database ALIGN32;
    OSAlarm         _alarm;

    BOOL            _isRepeatActive;
    BOOL            _isUseRepeatCode;

    u32             _lastError;
    void*           _tvrcFile;
    undefined4      _Hz;
    undefined4      _onTimeRatio;

    int             _makerID;
    int             _typeNo;

    BOOL            _isUseCustomParams;
    BOOL            _isInitialized;
    BOOL            _isActive;
    BOOL            _isReserveDeactive;

    OSTime          _unitStartTime;
    OSTime          _unitLastTime;
    OSTime          _totalStartTime;

    BOOL            _isOnOff;
    BOOL            _isLastOnOff;

    int             _ctCombo;

    int             _func0state;
    int             _loop0count;

    int             _func1state;

    u32             _bitLength;
    u32             _bitArray;
    u32             _repeatBitLength;
    u32             _repeatBitArray;

    OSTime          _tickT;
    OSTime          _tickWait[2];
}

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
    ARCDir          dir;
    ARCDirEntry     dirEntry;
    char            dirName[16];

    ARCFileInfo     file;
    int             fileLen;

    if (_isInitialized == FALSE || _database.archiveStartAddr == NULL) {
        return FALSE;
    }
    if (*(u32*)_database.archiveStartAddr != ARC_MAGIC) {
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
    for (; typeNo != 0; typeNo--) {
        if (!ARCReadDir(&dir, &dirEntry)) {
            break;
        }
    }
    ARCCloseDir(&dir);

    if (ARCFastOpen(&_database, dirEntry.entryNum, &file) == FALSE) {
        _lastError = 6;
        return FALSE;
    }
    fileLen = ARCGetLength(&file);
    if (fileLen > length) {
        _lastError = 7;
        return FALSE;
    }
    memcpy(pFileData, ARCGetStartAddrInMem(&file), fileLen);

    _tvrcFile = pFileData;
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
        
    }
    else {
        _isReserveDeactive = TRUE;
        return TRUE;
    }
}

BOOL TVRCIsActive() {
    return _isActive;
}
