#include <revolution/os.h>

#include <revolution/dvd.h>
#include <private/dvd.h>

#include <revolution/nand.h>
#include <private/nand.h>

static BOOL                 ExistFlag = FALSE;

static NANDCommandBlock     NandCb;
static NANDFileInfo         NandInfo;

static DVDCommandCallback   Callback;
static u32                  NextOffset;

DVDErrorInfo                __ErrorInfo         ALIGN32;
DVDErrorInfo                __FirstErrorInfo    ALIGN32;

void cbForNandClose(s32 result, NANDCommandBlock* block) {
    if (Callback) {
        Callback((result == NAND_RESULT_OK) ? 1 : 2, NULL);
    }
}

void cbForNandWrite(s32 result, NANDCommandBlock* block) {
    if (NANDCloseAsync(&NandInfo, cbForNandClose, &NandCb) != NAND_RESULT_OK) {
        if (Callback) {
            Callback(2, NULL);
        }
    }
}

void cbForNandSeek(s32 result, NANDCommandBlock* block) {
    if (result == sizeof(DVDErrorInfo) * (1 + NextOffset)) {
        DCFlushRange((void*)&__ErrorInfo, sizeof(__ErrorInfo));

        if (NANDWriteAsync(&NandInfo, (void*)&__ErrorInfo, sizeof(__ErrorInfo), cbForNandWrite, &NandCb) != NAND_RESULT_OK) {
            cbForNandWrite(-1, NULL);
        }
    }
    else {
        if (Callback) {
            Callback(2, NULL);
        }
    }
}

void cbForNandWrite0(s32 result, NANDCommandBlock* block) {
    if (result == sizeof(__FirstErrorInfo)) {
        if (NANDSeekAsync(&NandInfo, (sizeof(DVDErrorInfo) * (1 + NextOffset)), NAND_SEEK_BEG, cbForNandSeek, &NandCb) != NAND_RESULT_OK) {
            cbForNandSeek(-1, NULL);
        }
    }
    else {
        if (Callback) {
            Callback(2, NULL);
        }
    }
}

void cbForNandSeek2(s32 result, NANDCommandBlock* block) {
    if (result == sizeof(DVDErrorInfo)) {
        __FirstErrorInfo.nextOffset = (__FirstErrorInfo.nextOffset + 1) % 7;

        if (NANDWriteAsync(&NandInfo, (void*)&__FirstErrorInfo, sizeof(__FirstErrorInfo), cbForNandWrite0, &NandCb) != NAND_RESULT_OK) {
            cbForNandWrite0(-1, NULL);
        }
    }
    else {
        if (Callback) {
            Callback(2, NULL);
        }
    }
}

void cbForNandRead(s32 result, NANDCommandBlock* block) {
    if (result == sizeof(DVDErrorInfo)) {
        NextOffset = __FirstErrorInfo.nextOffset;

        if (NANDSeekAsync(&NandInfo, sizeof(DVDErrorInfo), NAND_SEEK_BEG, cbForNandSeek2, &NandCb) != NAND_RESULT_OK) {
            cbForNandSeek2(-1, NULL);
        }
    }
    else {
        __ErrorInfo.nextOffset = 1;
        if (NANDWriteAsync(&NandInfo, (void*)&__ErrorInfo, sizeof(__ErrorInfo), cbForNandWrite, &NandCb) != NAND_RESULT_OK) {
            cbForNandWrite(-1, NULL);
        }
    }
}

void cbForNandSeek0(s32 result, NANDCommandBlock* block) {
    if (result == 0) {
        NextOffset = 0;
        __ErrorInfo.nextOffset = 1;

        if (NANDWriteAsync(&NandInfo, (void*)&__FirstErrorInfo, sizeof(__FirstErrorInfo), cbForNandWrite0, &NandCb) != NAND_RESULT_OK) {
            cbForNandWrite0(-1, NULL);
        }
    }
    else {
        if (Callback) {
            Callback(2, NULL);
        }
    }
}

void cbForNandSeek1(s32 result, NANDCommandBlock* block) {
    if (result == sizeof(DVDErrorInfo)) {
        if (NANDReadAsync(&NandInfo, (void*)&__FirstErrorInfo, sizeof(__FirstErrorInfo), cbForNandRead, &NandCb) != NAND_RESULT_OK) {
            cbForNandRead(-1, NULL);
        }
    }
    else {
        if (NANDSeekAsync(&NandInfo, 0, 0, cbForNandSeek0, &NandCb) != NAND_RESULT_OK) {
            cbForNandSeek0(-1, NULL);
        }
    }
}

void cbForNandOpen(s32 result, NANDCommandBlock* block) {
    if (result == 0) {
        if (ExistFlag) {
            if (NANDSeekAsync(&NandInfo, sizeof(DVDErrorInfo), NAND_SEEK_BEG, cbForNandSeek1, &NandCb) != NAND_RESULT_OK) {
                cbForNandSeek1(-1, NULL);
            }
        }
        else {
            NextOffset = 0;
            __ErrorInfo.nextOffset = 1;
            if (NANDWriteAsync(&NandInfo, (void*)&__FirstErrorInfo, sizeof(__FirstErrorInfo), cbForNandWrite0, &NandCb) != NAND_RESULT_OK) {
                cbForNandWrite0(-1, NULL);
            }
        }
    }
    else {
        if (Callback) {
            Callback(2, NULL);
        }
    }
}

void cbForNandCreate(s32 result, NANDCommandBlock* block) {
    if (result == NAND_RESULT_OK || result == NAND_RESULT_EXISTS) {
        if (result == NAND_RESULT_EXISTS) {
            ExistFlag = TRUE;
        }

        if (NANDPrivateOpenAsync("/shared2/test2/dvderror.dat", &NandInfo, NAND_ACCESS_RW, cbForNandOpen, &NandCb) != NAND_RESULT_OK) {
            if (Callback) {
               Callback(2, NULL);
            }
        }
    }
    else {
        if (Callback) {
            Callback(2, NULL);
        }
    }
}

void cbForNandCreateDir(s32 result, NANDCommandBlock* block) {
    if (result == NAND_RESULT_OK || result == NAND_RESULT_EXISTS) {
        if (NANDPrivateCreateAsync("/shared2/test2/dvderror.dat", NAND_PERM_ALL_RW, 0,  cbForNandCreate, &NandCb) != NAND_RESULT_OK) {
            if (Callback) {
                Callback(2, NULL);
            }
        }
    }
    else {
        if (Callback) {
            Callback(2, NULL);
        }
    }
}

void cbForPrepareStatusRegister(u32 intType) {
    if (intType == DVD_INTTYPE_TC) {
        __ErrorInfo.status = DVDLowGetStatusRegister();
    }
    else {
        __ErrorInfo.status = 0xFFFFFFFF;
    }

    if (NANDPrivateCreateDirAsync("/shared2/test2", NAND_PERM_ALL_RW, 0, cbForNandCreateDir, &NandCb) != NAND_RESULT_OK) {
        if (Callback) {
            Callback(2, NULL);
        }
    }
}

void __DVDStoreErrorCode(u32 error, DVDCommandCallback callback) {
    __ErrorInfo.error = error;
    __ErrorInfo.dateTime = OSTicksToSeconds(OSGetTime());
    Callback = callback;
    DVDLowPrepareStatusRegister(cbForPrepareStatusRegister);
}
