#include <internal/RFLi_LibConfig.h>

#include <RVLFaceLib.h>
#include <RVLFaceLibInternal.h>

#include <internal/RFLi_Debug.h>

#include <revolution/os.h>
#include <revolution/nand.h>
#include <private/nand.h>

#include <string.h>

#define RFLi_SAFE_BUFFER_SIZE   0x2000

static const char* scFileNames[RFLiFileType_Max] = {
    "/shared2/menu/FaceLib/RFL_DB.dat", // DATABASE
    "/shared2/menu/FaceLib/RFL_Res.dat" // RESOURCE
};
static const u8 scFilePermissions[RFLiFileType_Max] = {
    NAND_PERM_ALL_RW, // DATABASE
    NAND_PERM_ALL_READ // RESOURCE
};
static const u8 scFileAttributes[RFLiFileType_Max] = {
    0, // DATABASE
    0 // RESOURCE
};

static const char* scFirstDirectory = "/shared2/menu";
static const char* scSecondDirectory = "/shared2/menu/FaceLib";

void RFLiInitAccessInfo(MEMiHeapHead* heap) {
    u16 i;

    for (i = 0; i < RFLiFileType_Max; i++) {
        RFLiNANDAccessInfo* info = RFLiGetAccInfo(i);
        memset(info, 0, sizeof(RFLiNANDAccessInfo));

        info->safeBuffer = MEMAllocFromExpHeapEx(heap, RFLi_SAFE_BUFFER_SIZE, RFL_BUFFER_ALIGN);
        RFLi_ASSERTLINE_NULL(info->safeBuffer, 123);

        OSCreateAlarm(&info->alarm);
    }
}

void RFLiExitAccessInfo() {
    u16 i;

    for (i = 0; i < RFLiFileType_Max; i++) {
        RFLiNANDAccessInfo* info = RFLiGetAccInfo(i);

        OSCancelAlarm(&info->alarm);
    }
}

BOOL RFLiIsWorking() {
    RFLi_ASSERTLINE(RFLAvailable(), 151);
    return RFLiGetWorking();
}

void RFLiStartWorking() {
    BOOL b;
    RFLi_ASSERTLINE(RFLAvailable(), 170);
    
    b = OSDisableInterrupts();

    RFLiSetWorking(TRUE);
    RFLiGetManager()->mLastErrcode = RFLErrcode_Busy;

    OSRestoreInterrupts(b);
}

static void startWorkingClose_() {
    BOOL b;
    RFLi_ASSERTLINE(RFLAvailable(), 183);

    b = OSDisableInterrupts();

    RFLiSetWorking(TRUE);
    RFLiGetManager()->mBeforeCloseErr = RFLiGetManager()->mLastErrcode;
    RFLiGetManager()->mBeforeCloseReason = RFLiGetManager()->mLastReason;
    RFLiGetManager()->mLastErrcode = RFLErrcode_Busy;

    OSRestoreInterrupts(b);
}

static void endWorkingCloseReason_(RFLErrcode errcode, s32 reason) {
    BOOL b;
    RFLi_ASSERTLINE(RFLAvailable(), 201);

    b = OSDisableInterrupts();

    RFLiSetWorking(FALSE);
    if (errcode == RFLErrcode_Success) {
        RFLiGetManager()->mLastErrcode = RFLiGetManager()->mBeforeCloseErr;
        RFLiGetManager()->mLastReason = RFLiGetManager()->mBeforeCloseErr; // @BUG Should be mBeforeCloseReason
    }
    else {
        RFLiGetManager()->mLastErrcode = errcode;
        RFLiGetManager()->mLastReason = reason;
    }

    OSRestoreInterrupts(b);
}

static void endWorkingClose_(RFLErrcode errcode) {
    endWorkingCloseReason_(errcode, 0);
}

void RFLiEndWorkingReason(RFLErrcode errcode, s32 reason) {
    BOOL b;
    RFLi_ASSERTLINE(RFLAvailable(), 238);

    switch (RFLiGetManager()->mLastErrcode) {
        default: {
            (void)0; // match hack
            break;
        }
        case RFLErrcode_Busy:
        case RFLErrcode_Success: {
            b = OSDisableInterrupts();

            RFLiSetWorking(FALSE);
            RFLiGetManager()->mLastErrcode = errcode;
            RFLiGetManager()->mLastReason = reason;

            OSRestoreInterrupts(b);
            break;
        }
    }
}

void RFLiEndWorking(RFLErrcode errcode) {
    RFLiEndWorkingReason(errcode, 0);
}

NANDCommandBlock* RFLiSetCommandBlock(RFLiFileType type, RFLiAsyncTag tag) {
    NANDCommandBlock* block = &RFLiGetAccInfo(type)->commandBlock;
    RFLiCallbackTag* store = &RFLiGetAccInfo(type)->callbackTag;

    RFLi_ASSERTLINE_RANGE(type, RFLiFileType_Database, RFLiFileType_Max, 287);
    RFLi_ASSERTLINE_RANGE(tag, RFLiAsyncTag_WriteFile, RFLiAsyncTag_Max, 288);

    store->tag = tag;
    store->type = type;

    NANDSetUserData(block, store);
    return block;
}

RFLiAsyncTag RFLiGetTag(NANDCommandBlock* block) {
    RFLiCallbackTag* stored;

    RFLi_ASSERTLINE_NULL(block, 312);

    stored = NANDGetUserData(block);

    RFLi_ASSERTLINE_NULL(stored, 316);

    return stored->tag;
}

RFLiFileType RFLiGetType(NANDCommandBlock* block) {
    RFLiCallbackTag* stored;

    RFLi_ASSERTLINE_NULL(block, 335);

    stored = NANDGetUserData(block);

    RFLi_ASSERTLINE_NULL(stored, 339);

    return stored->type;
}

NANDFileInfo* RFLiGetWorkingFile(RFLiFileType type) {
    RFLi_ASSERTLINE_RANGE(type, RFLiFileType_Database, RFLiFileType_Max, 356);

    if (!RFLAvailable()) {
        return NULL;
    }

    return &RFLiGetAccInfo(type)->workingFile;
}

static void alarmCallback_(OSAlarm* alarm) {
    const RFLiFileType* target = OSGetAlarmUserData(alarm);

    if (RFLAvailable()) {
        RFLiGetAccInfo(*target)->retryCallback(*target);
    }
}

static void retry_(RFLiFileType type, RFLSimpleCBArg cb, u8 count) {
    if (count < 30) {
        RFLiNANDAccessInfo* info = RFLiGetAccInfo(type);
        info->retryCallback = cb;
        info->alarmdata = type;
        info->retryCount = count;

        OSCancelAlarm(&info->alarm);
        OSSetAlarmUserData(&info->alarm, &info->alarmdata);
        OSSetAlarm(&info->alarm, OSMillisecondsToTicks(50), (OSAlarmHandler)alarmCallback_);
    }
    else {
        RFLiEndWorkingReason(RFLErrcode_NANDCommandfail, NAND_RESULT_BUSY);
    }
}

static void createcallback_(s32 result, NANDCommandBlock* block);

static void opencallback_(s32 result, NANDCommandBlock* block) {
    BOOL callCB = TRUE;
    RFLiFileType type = RFLiGetType(block);
    RFLiNANDAccessInfo* info = RFLiGetAccInfo(type);

    switch (result) {
        case NAND_RESULT_OK: {
            info->opened = TRUE;
            RFLiEndWorking(RFLErrcode_Success);
            break;
        }
        case NAND_RESULT_MAXFILES:
        case NAND_RESULT_MAXFD:
        case NAND_RESULT_MAXBLOCKS:
        case NAND_RESULT_AUTHENTICATION:
        case NAND_RESULT_ECC_CRIT:
        case NAND_RESULT_CORRUPT:
        case NAND_RESULT_BUSY:
        case NAND_RESULT_ACCESS: {
            info->opened = FALSE;
            RFLiEndWorkingReason(RFLErrcode_NANDCommandfail, result);
            break;
        }
        case NAND_RESULT_NOEXISTS: {
            info->opened = FALSE;
            if (info->openinfo.openmode == NAND_ACCESS_READ) {
                RFLiEndWorkingReason(RFLErrcode_NANDCommandfail, result);
            }
            else {
                NANDCommandBlock* block = RFLiSetCommandBlock(type, RFLiAsyncTag_CreateAsync);
                s32 create = NANDPrivateCreateAsync(info->openinfo.filename, info->openinfo.permission, info->openinfo.attribute, createcallback_, block);
                switch (create) {
                    case NAND_RESULT_OK: {
                        callCB = FALSE;
                        break;
                    }
                    default: {
                        RFLiEndWorkingReason(RFLErrcode_NANDCommandfail, create);
                        break;
                    }
                }
            }
            break;
        }
        case NAND_RESULT_UNKNOWN:
        case NAND_RESULT_FATAL_ERROR:
        case NAND_RESULT_ALLOC_FAILED:
        case NAND_RESULT_INVALID:
        default: {
            info->opened = FALSE;
            RFLiEndWorkingReason(RFLErrcode_Fatal, result);
            break;
        }
    }

    if (callCB && info->callback) {
        info->callback();
    }
}

static void createcallback_(s32 result, NANDCommandBlock* block) {
    BOOL callCB = TRUE;
    RFLiFileType type = RFLiGetType(block);
    RFLiNANDAccessInfo* info = RFLiGetAccInfo(type);

    switch (result) {
        case NAND_RESULT_OK:
        case NAND_RESULT_EXISTS: {
            NANDCommandBlock* block2;
            s32 open;

            block2 = RFLiSetCommandBlock(type, RFLiAsyncTag_OpenAsync);
            memset(info->safeBuffer, 0, RFLi_SAFE_BUFFER_SIZE);

            open = NANDPrivateSafeOpenAsync(info->openinfo.filename, RFLiGetWorkingFile(type), info->openinfo.openmode, info->safeBuffer, RFLi_SAFE_BUFFER_SIZE, opencallback_, block2);
            switch (open) {
                case NAND_RESULT_OK: {
                    callCB = FALSE;
                    break;
                }
                case NAND_RESULT_NOEXISTS:
                case NAND_RESULT_MAXFD:
                case NAND_RESULT_BUSY:
                case NAND_RESULT_ALLOC_FAILED:
                case NAND_RESULT_ACCESS: {
                    RFLiEndWorkingReason(RFLErrcode_NANDCommandfail, open);
                    break;
                }
                case NAND_RESULT_UNKNOWN:
                case NAND_RESULT_FATAL_ERROR:
                case NAND_RESULT_INVALID:
                default: {
                    RFLiEndWorkingReason(RFLErrcode_Fatal, result);
                    break;
                }
            }
            (void)0; // Matching hack
            break;
        }
        case NAND_RESULT_MAXFILES:
        case NAND_RESULT_CORRUPT:
        case NAND_RESULT_BUSY:
        case NAND_RESULT_ALLOC_FAILED:
        case NAND_RESULT_ACCESS: {
            RFLiEndWorkingReason(RFLErrcode_NANDCommandfail, result);
            break;
        }
        case NAND_RESULT_UNKNOWN:
        case NAND_RESULT_FATAL_ERROR:
        case NAND_RESULT_INVALID:
        default: {
            RFLiEndWorkingReason(RFLErrcode_Fatal, result);
            break;
        }
    }

    if (callCB && info->callback) {
        info->callback();
    }
}

static void close2opencallback_(s32 result, NANDCommandBlock* block) {
    BOOL callCB = TRUE;
    RFLiFileType type = RFLiGetType(block);
    RFLiNANDAccessInfo* info = RFLiGetAccInfo(type);

    switch (result) {
        case NAND_RESULT_OK: {
            NANDCommandBlock* block2;
            s32 open;

            block2 = RFLiSetCommandBlock(type, RFLiAsyncTag_OpenAsync);
            memset(info->safeBuffer, 0, RFLi_SAFE_BUFFER_SIZE);

            open = NANDPrivateSafeOpenAsync(info->openinfo.filename, RFLiGetWorkingFile(type), info->openinfo.openmode, info->safeBuffer, RFLi_SAFE_BUFFER_SIZE, opencallback_, block2);
            switch (open) {
                case NAND_RESULT_OK: {
                    callCB = FALSE;
                    break;
                }
                case NAND_RESULT_NOEXISTS:
                case NAND_RESULT_MAXFD:
                case NAND_RESULT_BUSY:
                case NAND_RESULT_ALLOC_FAILED:
                case NAND_RESULT_ACCESS: {
                    RFLiEndWorkingReason(RFLErrcode_NANDCommandfail, open);
                    break;
                }
                case NAND_RESULT_UNKNOWN:
                case NAND_RESULT_FATAL_ERROR:
                case NAND_RESULT_INVALID:
                default: {
                    RFLiEndWorkingReason(RFLErrcode_Fatal, result);
                    break;
                }
            }
            (void)0; // Hack match
            break;
        }
        case NAND_RESULT_MAXFILES:
        case NAND_RESULT_CORRUPT:
        case NAND_RESULT_BUSY:
        case NAND_RESULT_ALLOC_FAILED:
        case NAND_RESULT_ACCESS: {
            RFLiEndWorkingReason(RFLErrcode_NANDCommandfail, result);
            break;
        }
        case NAND_RESULT_UNKNOWN:
        case NAND_RESULT_FATAL_ERROR:
        case NAND_RESULT_INVALID:
        default: {
            RFLiEndWorkingReason(RFLErrcode_Fatal, result);
            break;
        }
    }

    if (callCB && info->callback) {
        info->callback();
    }
}

RFLErrcode RFLiOpenAsync(RFLiFileType type, u8 openmode, RFLSimpleCB cb) {
    NANDFileInfo* fileinfo;
    RFLiNANDAccessInfo* info;
    const char* filename;
    NANDCommandBlock* block;
    
    RFLi_ASSERTLINE_RANGE(type, RFLiFileType_Database, RFLiFileType_Max, 706);

    fileinfo = RFLiGetWorkingFile(type);
    RFLiStartWorking();

    info = RFLiGetAccInfo(type);
    filename = scFileNames[type];

    info->callback = cb;

    strncpy(info->openinfo.filename, filename, NAND_MAX_PATH);
    info->openinfo.filename[NAND_MAX_PATH] = 0;

    info->openinfo.openmode = (u8)openmode;
    info->openinfo.permission = scFilePermissions[type];
    info->openinfo.attribute = scFileAttributes[type];

    block = RFLiSetCommandBlock(type, RFLiAsyncTag_OpenAsync);
    if (info->opened) {
        s32 close = NANDSafeCloseAsync(fileinfo, close2opencallback_, block);

        switch (close) {
            case NAND_RESULT_OK: {
                break;
            }
            case NAND_RESULT_UNKNOWN:
            case NAND_RESULT_FATAL_ERROR:
            case NAND_RESULT_INVALID:
            case NAND_RESULT_CORRUPT:
            case NAND_RESULT_ACCESS:
            default: {
                RFLiEndWorkingReason(RFLErrcode_NANDCommandfail, close);
                break;
            }
        }
    }
    else {
        s32 open;

        memset(info->safeBuffer, 0, RFLi_SAFE_BUFFER_SIZE);
        open = NANDPrivateSafeOpenAsync(filename, fileinfo, openmode, info->safeBuffer, RFLi_SAFE_BUFFER_SIZE, &opencallback_, block);
        switch (open) {
            case NAND_RESULT_OK: {
                break;
            }
            case NAND_RESULT_NOEXISTS: {
                if (openmode == NAND_ACCESS_READ) {
                    RFLiEndWorkingReason(RFLErrcode_NANDCommandfail, open);
                }
                else {
                    NANDCommandBlock* block;
                    s32 create;

                    block = RFLiSetCommandBlock(type, RFLiAsyncTag_CreateAsync);
                    create = NANDPrivateCreateAsync(filename, info->openinfo.permission, info->openinfo.attribute, createcallback_, block);
                    switch (create) {
                        default: {
                            RFLiEndWorkingReason(RFLErrcode_NANDCommandfail, create);
                            break;
                        }
                        case NAND_RESULT_OK: {
                            break;
                        }
                    }
                }
                break;
            }
            case NAND_RESULT_MAXFD:
            case NAND_RESULT_BUSY:
            case NAND_RESULT_ALLOC_FAILED:
            case NAND_RESULT_ACCESS: {
                RFLiEndWorkingReason(RFLErrcode_NANDCommandfail, open);
                break;
            }
            case NAND_RESULT_UNKNOWN:
            case NAND_RESULT_FATAL_ERROR:
            case NAND_RESULT_INVALID:
            default: {
                RFLiEndWorkingReason(RFLErrcode_Fatal, open);
                break;
            }
        }
    }

    return RFLGetAsyncStatus();
}

static void readcallback_(s32 result, NANDCommandBlock* block) {
    RFLiFileType type = RFLiGetType(block);
    RFLiNANDAccessInfo* info = RFLiGetAccInfo(type);
    BOOL clear = FALSE;

    if (result >= NAND_RESULT_OK) {
        if (result > info->readinfo.size) {
            RFLi_ASSERTLINE_MSG(FALSE, 863, "Read size OVER provided Buffer length.\n");

            // unreachable for debug
            clear = TRUE;
            RFLiEndWorking(RFLErrcode_Loadfail);
        }
        else if (result == info->readinfo.size) {
            RFLiEndWorking(RFLErrcode_Success);
        }
        else {
            clear = TRUE;
            RFLiEndWorking(RFLErrcode_Loadfail);
        }
    }
    else {
        clear = TRUE;
        switch (result) {
            case NAND_RESULT_ACCESS:
            case NAND_RESULT_ALLOC_FAILED:
            case NAND_RESULT_BUSY:
            case NAND_RESULT_CORRUPT:
            case NAND_RESULT_ECC_CRIT:
            case NAND_RESULT_AUTHENTICATION: {
                RFLiEndWorkingReason(RFLErrcode_NANDCommandfail, result);
                break;
            }
            case NAND_RESULT_UNKNOWN:
            case NAND_RESULT_FATAL_ERROR:
            case NAND_RESULT_INVALID:
            default: {
                RFLiEndWorkingReason(RFLErrcode_Fatal, result);
                break;
            }
        }
    }

    if (clear) {
        RFLi_REPORT(" RFL: Load database FAIL. Initialize database.\n");
        memset(info->readinfo.dst, 0, info->readinfo.size);
    }

    if (info->callback != NULL) {
        info->callback();
    }
}

static void readseekcallback_(s32 result, NANDCommandBlock* block) {
    RFLiFileType type = RFLiGetType(block);
    RFLiNANDAccessInfo* info = RFLiGetAccInfo(type);
    BOOL callCB = TRUE;

    if (result == info->readinfo.offset) {
        NANDCommandBlock * block;
        s32 read;

        block = RFLiSetCommandBlock(type, RFLiAsyncTag_ReadAsync);

        read = NANDReadAsync(RFLiGetWorkingFile(type), info->readinfo.dst, OSRoundUp32B(info->readinfo.size), readcallback_, block);
        switch (read) {
            case NAND_RESULT_OK: {
                callCB = FALSE;
                break;
            }
            case NAND_RESULT_ACCESS:
            case NAND_RESULT_ALLOC_FAILED:
            case NAND_RESULT_BUSY:
            case NAND_RESULT_CORRUPT:
            case NAND_RESULT_ECC_CRIT: {
                RFLiEndWorkingReason(RFLErrcode_NANDCommandfail, read);
                break;
            }
            case NAND_RESULT_UNKNOWN:
            case NAND_RESULT_FATAL_ERROR:
            case NAND_RESULT_INVALID:
            default: {
                RFLiEndWorkingReason(RFLErrcode_Fatal, read);
                break;
            }
        }
    }
    else if (result >= NAND_RESULT_OK) {
        RFLiEndWorking(RFLErrcode_Loadfail);
    }
    else {
        switch (result) {
            case NAND_RESULT_BUSY:
            case NAND_RESULT_ALLOC_FAILED:
            case NAND_RESULT_ACCESS: {
                RFLiEndWorkingReason(RFLErrcode_NANDCommandfail, result);
                break;
            }
            case NAND_RESULT_UNKNOWN:
            case NAND_RESULT_FATAL_ERROR:
            case NAND_RESULT_INVALID:
            default: {
                RFLiEndWorkingReason(RFLErrcode_Fatal, result);
                break;
            }
        }
    }

    if (callCB && info->callback != NULL) {
        info->callback();
    }
}

RFLErrcode RFLiReadAsync(RFLiFileType type, void* dst, u32 size, RFLSimpleCB cb, s32 seek_ofs) {
    NANDFileInfo* fileinfo = RFLiGetWorkingFile(type);
    RFLiNANDAccessInfo* info = RFLiGetAccInfo(type);

    RFLiStartWorking();

    info->callback = cb;
    info->readinfo.dst = dst;
    info->readinfo.size = size;
    info->readinfo.offset = seek_ofs;

    {
        NANDCommandBlock* block = RFLiSetCommandBlock(type, RFLiAsyncTag_SeekAsync);
        u32 seek = NANDSeekAsync(fileinfo, seek_ofs, NAND_SEEK_BEG, readseekcallback_, block);

        switch (seek) {
            case NAND_RESULT_OK: {
                break;
            }
            case NAND_RESULT_BUSY:
            case NAND_RESULT_ALLOC_FAILED:
            case NAND_RESULT_ACCESS: {
                RFLiEndWorkingReason(RFLErrcode_NANDCommandfail, seek);
                break;
            }
            case NAND_RESULT_UNKNOWN:
            case NAND_RESULT_FATAL_ERROR:
            case NAND_RESULT_INVALID:
            default: {
                RFLiEndWorkingReason(RFLErrcode_Fatal, seek);
                break;
            }
        }
    }
    return RFLGetAsyncStatus();
}

static void writecallback_(s32 result, NANDCommandBlock* block);

static void retryWrite_(u32 arg) {
    RFLiFileType type = (RFLiFileType)arg;
    RFLiNANDAccessInfo* info = RFLiGetAccInfo(type);

    {
        NANDCommandBlock* block = RFLiSetCommandBlock(type, RFLiAsyncTag_WriteAsync);
        s32 write = NANDWriteAsync(RFLiGetWorkingFile(type), info->writeinfo.src, info->writeinfo.size, writecallback_, block);

        switch (write) {
            case NAND_RESULT_OK: {
                break;
            }
            case NAND_RESULT_BUSY:
            case NAND_RESULT_ALLOC_FAILED: {
                retry_(type, retryWrite_, info->retryCount + 1);
                break;
            }
            case NAND_RESULT_MAXBLOCKS:
            case NAND_RESULT_CORRUPT:
            case NAND_RESULT_ACCESS: {
                RFLiEndWorkingReason(RFLErrcode_NANDCommandfail, write);
                break;
            }
            case NAND_RESULT_UNKNOWN:
            case NAND_RESULT_FATAL_ERROR:
            case NAND_RESULT_INVALID:
            default: {
                RFLiEndWorkingReason(RFLErrcode_Fatal, write);
                break;
            }
        }
    }

    if (!RFLiIsWorking() && info->callback != NULL) {
        info->callback();
    }
}

static void writecallback_(s32 result, NANDCommandBlock* block) {
    RFLiFileType type = RFLiGetType(block);
    RFLiNANDAccessInfo* info = RFLiGetAccInfo(type);

    if (result == info->writeinfo.size) {
        RFLiEndWorking(RFLErrcode_Success);
    }
    else if (result >= NAND_RESULT_OK) {
        RFLiEndWorking(RFLErrcode_Savefail);
    }
    else {
        switch (result) {
            case NAND_RESULT_MAXBLOCKS:
            case NAND_RESULT_CORRUPT:
            case NAND_RESULT_ACCESS: {
                RFLiEndWorkingReason(RFLErrcode_NANDCommandfail, result);
                break;
            }
            case NAND_RESULT_BUSY:
            case NAND_RESULT_ALLOC_FAILED: {
                retry_(type, retryWrite_, info->retryCount + 1);
                break;
            }
            case NAND_RESULT_UNKNOWN:
            case NAND_RESULT_FATAL_ERROR:
            case NAND_RESULT_INVALID:
            default: {
                RFLiEndWorkingReason(RFLErrcode_Fatal, result);
                break;
            }
        }
    }

    if (info->callback != NULL) {
        info->callback();
    }
}

static s32 writestart_(RFLiFileType type) {
    NANDCommandBlock* block = RFLiSetCommandBlock(type, RFLiAsyncTag_WriteAsync);
    RFLiNANDAccessInfo* info = RFLiGetAccInfo(type);
    s32 write = NANDWriteAsync(RFLiGetWorkingFile(type), info->writeinfo.src, info->writeinfo.size, writecallback_, block);

    switch (write) {
        case NAND_RESULT_OK: {
            break;
        }
        case NAND_RESULT_BUSY:
        case NAND_RESULT_ALLOC_FAILED: {
            retry_(type, retryWrite_, 0);
            break;
        }
        case NAND_RESULT_MAXBLOCKS:
        case NAND_RESULT_CORRUPT:
        case NAND_RESULT_ACCESS: {
            RFLiEndWorkingReason(RFLErrcode_NANDCommandfail, write);
            break;
        }
        case NAND_RESULT_UNKNOWN:
        case NAND_RESULT_FATAL_ERROR:
        case NAND_RESULT_INVALID:
        default: {
            RFLiEndWorkingReason(RFLErrcode_Fatal, write);
            break;
        }
    }

    return write;
}

static void writeseekcallback_(s32 result, NANDCommandBlock* block);

static void retryWriteSeek_(u32 arg) {
    RFLiFileType type = (RFLiFileType)arg;
    RFLiNANDAccessInfo* info = RFLiGetAccInfo(type);

    {
        NANDCommandBlock* block = RFLiSetCommandBlock(type, RFLiAsyncTag_SeekAsync);
        s32 seek = NANDSeekAsync(RFLiGetWorkingFile(type), info->writeinfo.offset, NAND_SEEK_BEG, writeseekcallback_, block);

        switch (seek) {
            case NAND_RESULT_OK: {
                break;
            }
            case NAND_RESULT_BUSY:
            case NAND_RESULT_ALLOC_FAILED: {
                retry_(type, retryWriteSeek_, info->retryCount + 1);
                break;
            }
            case NAND_RESULT_ACCESS: {
                RFLiEndWorkingReason(RFLErrcode_NANDCommandfail, seek);
                break;
            }
            case NAND_RESULT_UNKNOWN:
            case NAND_RESULT_FATAL_ERROR:
            case NAND_RESULT_INVALID:
            default: {
                RFLiEndWorkingReason(RFLErrcode_Fatal, seek);
                break;
            }
        }
    }
}

static void writeseekcallback_(s32 result, NANDCommandBlock* block) {
    RFLiFileType type = RFLiGetType(block);
    RFLiNANDAccessInfo* info = RFLiGetAccInfo(type);
    BOOL callCB = TRUE;

    if (result == info->writeinfo.offset) {
        writestart_(type);
        if (RFLiIsWorking()) {
            callCB = FALSE;
        }
    }
    else if (result >= NAND_RESULT_OK) {
        RFLiEndWorking(RFLErrcode_Savefail);
    }
    else {
        switch (result) {
            case NAND_RESULT_BUSY:
            case NAND_RESULT_ALLOC_FAILED: {
                retry_(type, retryWriteSeek_, 0);
                break;
            }
            case NAND_RESULT_ACCESS: {
                RFLiEndWorkingReason(RFLErrcode_NANDCommandfail, result);
                break;
            }
            case NAND_RESULT_UNKNOWN:
            case NAND_RESULT_FATAL_ERROR:
            case NAND_RESULT_INVALID:
            default: {
                RFLiEndWorkingReason(RFLErrcode_Fatal, result);
                break;
            }
        }
    }

    if (callCB && info->callback != NULL) {
        info->callback();
    }
}


RFLErrcode RFLiWriteAsync(RFLiFileType type, void* src, u32 size, RFLSimpleCB cb, s32 seek_ofs) {
    NANDFileInfo* fileinfo;
    RFLiNANDAccessInfo* info;

    RFLi_ASSERTLINE_ALIGN(src, RFL_BUFFER_ALIGN, 1347);
    RFLi_ASSERTLINE_ALIGN(size, RFL_BUFFER_ALIGN, 1348);
    RFLi_ASSERTLINE_RANGE(type, RFLiFileType_Database, RFLiFileType_Max, 1349);

    info = RFLiGetAccInfo(type);
    fileinfo = RFLiGetWorkingFile(type);

    RFLiStartWorking();

    info->callback = cb;
    info->writeinfo.src = src;
    info->writeinfo.size = size;
    info->writeinfo.offset = seek_ofs;

    {
        NANDCommandBlock* block = RFLiSetCommandBlock(type, RFLiAsyncTag_SeekAsync);
        s32 seek = NANDSeekAsync(fileinfo, seek_ofs, NAND_SEEK_BEG, writeseekcallback_, block);
    
        switch (seek) {
            case NAND_RESULT_OK: {
                break;
            }
            case NAND_RESULT_BUSY:
            case NAND_RESULT_ALLOC_FAILED: {
                retry_(type, retryWriteSeek_, 0);
                break;
            }
            case NAND_RESULT_ACCESS: {
                RFLiEndWorkingReason(RFLErrcode_NANDCommandfail, seek);
                break;
            }
            case NAND_RESULT_UNKNOWN:
            case NAND_RESULT_FATAL_ERROR:
            case NAND_RESULT_INVALID:
            default: {
                RFLiEndWorkingReason(RFLErrcode_Fatal, seek);
                break;
            }
        }
    }

    return RFLGetAsyncStatus();
}

static void closecallback_(s32 result, NANDCommandBlock* block);

static s32 closecore_(RFLiFileType type) {
    NANDCommandBlock* block = RFLiSetCommandBlock(type, RFLiAsyncTag_CloseAsync);
    return NANDSafeCloseAsync(RFLiGetWorkingFile(type), closecallback_, block);
}

static void closecallback_(s32 result, NANDCommandBlock* block) {
    RFLiFileType type = RFLiGetType(block);
    RFLiNANDAccessInfo* info = RFLiGetAccInfo(type);

    switch (result) {
        case NAND_RESULT_OK: {
            info->opened = FALSE;
            endWorkingClose_(RFLErrcode_Success);
            break;
        }
        case NAND_RESULT_CORRUPT:
        case NAND_RESULT_BUSY:
        case NAND_RESULT_ALLOC_FAILED: {
            RFLiEndWorkingReason(RFLErrcode_NANDCommandfail, result);
            break;
        }
        case NAND_RESULT_UNKNOWN:
        case NAND_RESULT_FATAL_ERROR:
        case NAND_RESULT_INVALID:
        case NAND_RESULT_ACCESS:
        default: {
            RFLiEndWorkingReason(RFLErrcode_Fatal, result);
            break;
        }
    }

    if (!RFLiIsWorking() && info->callback != NULL) {
        info->callback();
    }
}

RFLErrcode RFLiCloseAsync(RFLiFileType type, RFLSimpleCB cb) {
    RFLiNANDAccessInfo* info;

    RFLi_ASSERTLINE_RANGE(type, RFLiFileType_Database, RFLiFileType_Max, 1478);

    info = RFLiGetAccInfo(type);
    startWorkingClose_();

    info->callback = cb;

    {
        s32 close = closecore_(type);
        switch (close) {
            case NAND_RESULT_OK: {
                break;
            }
            case NAND_RESULT_CORRUPT:
            case NAND_RESULT_BUSY:
            case NAND_RESULT_ALLOC_FAILED: {
                RFLiEndWorkingReason(RFLErrcode_NANDCommandfail, close);
                break;
            }
            case NAND_RESULT_UNKNOWN:
            case NAND_RESULT_FATAL_ERROR:
            case NAND_RESULT_INVALID:
            case NAND_RESULT_ACCESS:
            default: {
                RFLiEndWorkingReason(RFLErrcode_Fatal, close);
                break;
            }
        }
    }
    
    return RFLGetAsyncStatus();
}

static void getlengthcallback_(s32 result, NANDCommandBlock* block) {
    RFLiFileType type = RFLiGetType(block);
    RFLiNANDAccessInfo* info = RFLiGetAccInfo(type);

    switch (result) {
        case NAND_RESULT_OK: {
            RFLiEndWorking(RFLErrcode_Success);
            break;
        }
        case NAND_RESULT_BUSY:
        case NAND_RESULT_ALLOC_FAILED:
        case NAND_RESULT_ACCESS: {
            RFLiEndWorkingReason(RFLErrcode_NANDCommandfail, result);
            break;
        }
        case NAND_RESULT_UNKNOWN:
        case NAND_RESULT_FATAL_ERROR:
        case NAND_RESULT_INVALID:
        default: {
            RFLiEndWorkingReason(RFLErrcode_Fatal, result);
            break;
        }
    }

    if (info->callback != NULL) {
        info->callback();
    }
}

RFLErrcode RFLiGetLengthAsync(RFLiFileType type, u32* dst, RFLSimpleCB cb) {
    RFLiNANDAccessInfo* info;
    
    RFLi_ASSERTLINE_RANGE(type, RFLiFileType_Database, RFLiFileType_Max, 1576);

    info = RFLiGetAccInfo(type);
    RFLiStartWorking();
    info->callback = cb;
    info->getlengthinfo.dst = dst;
    {
        NANDCommandBlock* block = RFLiSetCommandBlock(type, RFLiAsyncTag_GetlengthAsync);
        s32 getlength = NANDGetLengthAsync(RFLiGetWorkingFile(type), dst, getlengthcallback_, block);
    
        switch (getlength) {
            case NAND_RESULT_OK: {
                break;
            }
            case NAND_RESULT_BUSY:
            case NAND_RESULT_ALLOC_FAILED:
            case NAND_RESULT_ACCESS: {
                RFLiEndWorkingReason(RFLErrcode_NANDCommandfail, getlength);
                break;
            }
            case NAND_RESULT_UNKNOWN:
            case NAND_RESULT_FATAL_ERROR:
            case NAND_RESULT_INVALID:
            default: {
                RFLiEndWorkingReason(RFLErrcode_Fatal, getlength);
                break;
            }
        }
    }

    return RFLGetAsyncStatus();
}

static void deletecallback_(s32 result, NANDCommandBlock* block) {
    RFLiFileType type = RFLiGetType(block);
    RFLiNANDAccessInfo* info = RFLiGetAccInfo(type);

    switch (result) {
        case NAND_RESULT_OK:
        case NAND_RESULT_NOEXISTS: {
            RFLiEndWorking(RFLErrcode_Success);
            break;
        }
        case NAND_RESULT_OPENFD:
        case NAND_RESULT_CORRUPT:
        case NAND_RESULT_BUSY:
        case NAND_RESULT_ALLOC_FAILED:
        case NAND_RESULT_ACCESS: {
            RFLiEndWorkingReason(RFLErrcode_NANDCommandfail, result);
            break;
        }
        case NAND_RESULT_UNKNOWN:
        case NAND_RESULT_FATAL_ERROR:
        case NAND_RESULT_INVALID:
        default: {
            RFLiEndWorkingReason(RFLErrcode_Fatal, result);
            break;
        }
    }

    if (info->callback != NULL) {
        info->callback();
    }
}

RFLErrcode RFLiDeleteAsync(RFLiFileType type, RFLSimpleCB cb) {
    RFLiNANDAccessInfo* info;

    RFLi_ASSERTLINE_RANGE(type, RFLiFileType_Database, RFLiFileType_Max, 1681);

    info = RFLiGetAccInfo(type);
    RFLiStartWorking();
    
    info->callback = cb;

    {
        NANDCommandBlock* block = RFLiSetCommandBlock(type, RFLiAsyncTag_DeleteAsync);
        s32 del = NANDPrivateDeleteAsync(scFileNames[type], deletecallback_, block);

        switch (del) {
            case NAND_RESULT_OK: {
                break;
            }
            case NAND_RESULT_NOEXISTS: {
                RFLiEndWorking(RFLErrcode_Success);
                break;
            }
            case NAND_RESULT_OPENFD:
            case NAND_RESULT_CORRUPT:
            case NAND_RESULT_BUSY:
            case NAND_RESULT_ALLOC_FAILED:
            case NAND_RESULT_ACCESS: {
                RFLiEndWorkingReason(RFLErrcode_NANDCommandfail, del);
                break;
            }
            case NAND_RESULT_UNKNOWN:
            case NAND_RESULT_FATAL_ERROR:
            case NAND_RESULT_INVALID:
            default: {
                RFLiEndWorkingReason(RFLErrcode_Fatal, del);
                break;
            }
        }
    }

    return RFLGetAsyncStatus();
}

static void createDirCommon_(const char* dir, NANDCallback cb, const char* unused /*not in dwarf*/) {
    NANDCommandBlock* block = RFLiSetCommandBlock(RFLiFileType_Database, RFLiAsyncTag_CreateDirAsync);
    s32 create = NANDPrivateCreateDirAsync(dir, NAND_PERM_ALL_RW, 0, cb, block);

    switch (create) {
        case NAND_RESULT_OK: {
            break;
        }
        case NAND_RESULT_EXISTS: {
            cb(NAND_RESULT_EXISTS, block);
            break;
        }
        case NAND_RESULT_MAXFILES:
        case NAND_RESULT_CORRUPT:
        case NAND_RESULT_BUSY:
        case NAND_RESULT_ALLOC_FAILED: {
            RFLiEndWorkingReason(RFLErrcode_NANDCommandfail, create);
            break;
        }
        case NAND_RESULT_UNKNOWN:
        case NAND_RESULT_FATAL_ERROR:
        case NAND_RESULT_INVALID:
        case NAND_RESULT_ECC_CRIT:
        case NAND_RESULT_ACCESS:
        default: {
            RFLiEndWorkingReason(RFLErrcode_Fatal, create);
            break;
        }
    }
}

static void createdircallback2_(s32 result, NANDCommandBlock* block) {
    RFLiFileType type = RFLiGetType(block);
    RFLiNANDAccessInfo* info = RFLiGetAccInfo(type);

    switch (result) {
        case NAND_RESULT_OK:
        case NAND_RESULT_EXISTS: {
            RFLiEndWorking(RFLErrcode_Success);
            break;
        }
        case NAND_RESULT_MAXFILES:
        case NAND_RESULT_CORRUPT:
        case NAND_RESULT_BUSY:
        case NAND_RESULT_ALLOC_FAILED: {
            RFLiEndWorkingReason(RFLErrcode_NANDCommandfail, result);
            break;
        }
        case NAND_RESULT_UNKNOWN:
        case NAND_RESULT_FATAL_ERROR:
        case NAND_RESULT_INVALID:
        case NAND_RESULT_ECC_CRIT:
        case NAND_RESULT_ACCESS:
        default: {
            RFLiEndWorkingReason(RFLErrcode_Fatal, result);
            break;
        }
    }

    if (RFLGetAsyncStatus() != RFLErrcode_Busy && info->callback != NULL) {
        info->callback();
    }
}

static void createdircallback1_(s32 result, NANDCommandBlock* block) {
    RFLiFileType type = RFLiGetType(block);
    RFLiNANDAccessInfo* info = RFLiGetAccInfo(type);

    switch (result) {
        case NAND_RESULT_OK:
        case NAND_RESULT_EXISTS: {
            createDirCommon_(scSecondDirectory, createdircallback2_, "createDir2");
            break;
        }
        case NAND_RESULT_MAXFILES:
        case NAND_RESULT_CORRUPT:
        case NAND_RESULT_BUSY:
        case NAND_RESULT_ALLOC_FAILED: {
            RFLiEndWorkingReason(RFLErrcode_NANDCommandfail, result);
            break;
        }
        case NAND_RESULT_UNKNOWN:
        case NAND_RESULT_FATAL_ERROR:
        case NAND_RESULT_INVALID:
        case NAND_RESULT_ECC_CRIT:
        case NAND_RESULT_ACCESS:
        default: {
            RFLiEndWorkingReason(RFLErrcode_Fatal, result);
            break;
        }
    }

    if (RFLGetAsyncStatus() != RFLErrcode_Busy && info->callback != NULL) {
        info->callback();
    }
}

RFLErrcode RFLiCreateSaveDirAsync(RFLSimpleCB cb) {
    RFLiNANDAccessInfo* info = RFLiGetAccInfo(RFLiFileType_Database);
    RFLiStartWorking();

    info->callback = cb;

    createDirCommon_(scFirstDirectory, createdircallback1_, "createDir1");

    return RFLGetAsyncStatus();
}
