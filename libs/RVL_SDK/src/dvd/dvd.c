#include <revolution/os.h>
#include <private/os.h>

#include <revolution/esp.h>

#include <revolution/dvd.h>
#include <private/dvd.h>

#include <revolution/os/OSBootInfo.h>

#include <revolution/verdefs.h>

#include <string.h>

#define LIMIT_BLOCK_SIZE(a, b) (((a) > (b))? (b) : (a))

SDKDefineVersion(DVD, "Apr 20 2010", "11:19:08");

extern OSThreadQueue __DVDThreadQueue;

typedef void (*DVDStateProc)(DVDCommandBlock* block);

enum {
    NAND_ERROR_GENERIC = 0x01234567,
    NAND_ERROR_TIMEOUT = 0x01234568,
    NAND_ERROR_SECURITY = 0x01234569
};

enum {
    REQUEST_STATE_OK = (0 << 24),
    REQUEST_STATE_COVER_OPENED = (1 << 24),
    REQUEST_STATE_DISK_CHANGED = (2 << 24),
    REQUEST_STATE_NO_DISK = (3 << 24),
    REQUEST_STATE_MOTOR_STOPPED = (4 << 24),
    REQUEST_STATE_DISK_ERROR = (5 << 24)
};

enum {
    REQUEST_ERROR_OK = 0x000000,
    REQUEST_ERROR_MOTOR_STOPPED = 0x020400,
    REQUEST_ERROR_ID_NOT_READ = 0x020401,
    REQUEST_ERROR_COVER_OPENED = 0x023A00,
    REQUEST_ERROR_SEEK_FAIL = 0x030200,
    REQUEST_ERROR_READ_FAIL = 0x031100,
    REQUEST_ERROR_XFER_FAIL = 0x040800,
    REQUEST_ERROR_BAD_OPCODE = 0x052000,
    REQUEST_ERROR_BAD_AUDIO_BUF = 0x052001,
    REQUEST_ERROR_OUT_OF_RANGE = 0x052100,
    REQUEST_ERROR_BAD_FIELD = 0x052400,
    REQUEST_ERROR_BAD_AUDIO_CMD = 0x052401,
    REQUEST_ERROR_BAD_PERIOD = 0x052402,
    REQUEST_ERROR_053000h = 0x053000,
    REQUEST_ERROR_END_OF_USER = 0x056300,
    REQUEST_ERROR_MEDIUM_CHANGED = 0x062800,
    REQUEST_ERROR_MEDIUM_REMOVAL = 0x0B5A01
};

enum {
    ERROR_TYPE_OK = 0,
    ERROR_TYPE_ERROR,
    ERROR_TYPE_FATAL,
    ERROR_TYPE_UNKNOWN
};

enum {
    COMMAND_NONE = 0,
    COMMAND_READ,
    COMMAND_SEEK,
    COMMAND_CHANGE_DISK,
    COMMAND_BSREAD,
    COMMAND_READID,
    COMMAND_INITSTREAM,
    COMMAND_CANCELSTREAM,
    COMMAND_STOP_STREAM_AT_END,
    COMMAND_REQUEST_AUDIO_ERROR,
    COMMAND_REQUEST_PLAY_ADDR,
    COMMAND_REQUEST_START_ADDR,
    COMMAND_REQUEST_LENGTH,
    COMMAND_AUDIO_BUFFER_CONFIG,
    COMMAND_INQUIRY,
    COMMAND_BS_CHANGE_DISK,
    COMMAND_STOP_MOTOR,

    COMMAND_RESET = 32,
    COMMAND_READ_UNENCRYPTED,
    COMMAND_OPEN_PARTITION,
    COMMAND_CLOSE_PARTITION,
    COMMAND_GET_COVER_READY,
    COMMAND_SET_MAX_ROTATION,
    COMMAND_GET_COVER_STATUS,
    COMMAND_REQUEST_ERROR,
    COMMAND_GET_DISK_ID_VALID,
    COMMAND_GET_PARTITION_PARAMS,
    COMMAND_OPEN_PARTITION_WITH_TMD
};

enum {
    RESUME_POINT_NONE = 0,
    RESUME_POINT_WRONG_DISK_ID,
    RESUME_POINT_DISK_ERROR,
    RESUME_POINT_NO_DISK,
    RESUME_POINT_COVER_OPENED,
    RESUME_POINT_OK,
    RESUME_POINT_DISK_CHANGED,
    RESUME_POINT_7
};

enum {
    MOTOR_STATE_WORKING = 0,
    MOTOR_STATE_PENDING_STOP,
    MOTOR_STATE_STOPPED
};

enum {
    PART_TYPE_DATA = 0,
    PART_TYPE_UPDATE,
    PART_TYPE_CHANNEL
};

void defaultOptionalCommandChecker(DVDCommandBlock* block, DVDLowCallback callback);

extern DVDErrorInfo         __ErrorInfo;

static vu32                 CommandInfoCounter = 0;

static vBOOL                PauseFlag = FALSE;
static vBOOL                PausingFlag = FALSE;

static BOOL                 FatalErrorFlag = FALSE;

static vBOOL                Canceling = FALSE;

static vu32                 ResumeFromHere = 0;

static vs32                 NumInternalRetry = 0;
static BOOL                 FirstTimeInBootrom = FALSE;
static BOOL                 Breaking = FALSE;

static vBOOL                WaitingForCoverOpen = FALSE;
static vBOOL                WaitingForCoverClose = FALSE;

static BOOL                 MotorStopped = FALSE;
static BOOL                 ChangedDisc = FALSE;
static vBOOL                PreparingCover = FALSE;

vu32                        __DVDLayoutFormat = 0;
BOOL                        DVDInitialized = FALSE;

vu32                        __BS2DVDLowIntType = FALSE;

static vBOOL                Prepared = FALSE;

static DVDPartitionInfo*    BootGameInfo = NULL;
static DVDPartitionInfo*    PartInfo = NULL;
static DVDGameTOC*          GameToc = NULL;

static u32                  __DVDNumTmdBytes ALIGN32 = 0;

static vs64                 LastResetEnd = 0;
static u32                  MotorState = 0;
static BOOL                 ResetRequired = FALSE;
static u32                  LastError = 0;
static u32                  CancelLastError = 0;
static DVDCommandCallback   CancelCallback = NULL;

static vu32                 CurrCommand = 0;

static OSBootInfo*          bootInfo = NULL;

static DVDDiskID*           IDShouldBe = NULL;
static DVDCommandBlock*     executing = NULL;
static DVDStateProc         LastState = NULL;

static DVDCommandBlock      DummyCommandBlock;
DVDCommandBlock             __DVDStopMotorCommandBlock;
DVDCommandBlock             __DVDRestartMotorCommandBlock;

static OSAlarm              ResetAlarm;
static OSAlarm              CoverAlarm;

static BOOL                         autoInvalidation = TRUE;
static DVDOptionalCommandChecker    checkOptionalCommand = defaultOptionalCommandChecker;

static DVDBB2       BB2         ALIGN32;
static DVDDiskID    CurrDiskID  ALIGN32;

static DVDGameTOC       __DVDGameTocBuffer[4]   ALIGN32;
static DVDPartitionInfo __DVDPartInfoBuffer[4]  ALIGN32;
static ESTitleMeta      __DVDTmdBuffer          ALIGN64;
static ESTicketView     __DVDTicketViewBuffer   ALIGN32;

__declspec(weak) void StampCommand(u32 command, u32 offset, u32 length) {
    BOOL enabled = OSDisableInterrupts();

    if (CommandInfoCounter >= DVD_ERROR_CMD_MAX) {
        CommandInfoCounter = 0;
    }

    __ErrorInfo.lastCommand[CommandInfoCounter].command = command;
    __ErrorInfo.lastCommand[CommandInfoCounter].offset = offset;
    __ErrorInfo.lastCommand[CommandInfoCounter].length = length;
    __ErrorInfo.lastCommand[CommandInfoCounter].tick = OSGetTick();
    CommandInfoCounter++;
    OSRestoreInterrupts(enabled);
}

void defaultOptionalCommandChecker(DVDCommandBlock* block, DVDLowCallback callback) {}

void StampIntType(u32 intType) {
    BOOL enabled = OSDisableInterrupts();

    if (CommandInfoCounter == 0) {
        __ErrorInfo.lastCommand[DVD_ERROR_CMD_MAX - 1].intType = intType;
    }
    else {
        __ErrorInfo.lastCommand[CommandInfoCounter - 1].intType = intType;
    }

    OSRestoreInterrupts(enabled);
}

vu32  __DVDLayoutFormat;

static void stateDownRotation(DVDCommandBlock* block);
static void stateGettingError();
static void stateReadingFST();
static void stateReady();
static void stateGoToRetry();
static void stateBusy(DVDCommandBlock* block);
static void stateReadingTOC(DVDCommandBlock* block);
static void stateCheckID2a(DVDCommandBlock* block);
static void stateCheckID3(DVDCommandBlock* block);
static void stateReadingPartitionInfo(DVDCommandBlock* block);
static void stateOpenPartition(DVDCommandBlock* block);
static void stateOpenPartition2(DVDCommandBlock* block);
static void stateTimeout();
static void stateSecurityError();
static void stateMotorStopped();
static void stateCoverClosed();
static void stateCoverClosed_CMD(DVDCommandBlock* block);

static void cbForStateReadingFST(u32 intType);
static void cbForStateGoToRetry(u32 intType);
static void cbForStateCheckID1(u32 intType);
static void cbForStateCheckID2(u32 intType);
static void cbForStateCheckID2a(u32 intType);
static void cbForStateCheckID3(u32 intType);
static void cbForStateGettingError(u32 intType);
static void cbForUnrecoveredErrorRetry(u32 intType);
static void cbForUnrecoveredError(u32 intType);
static void cbForStateMotorStopped(u32 intType);
static void cbForStateBusy(u32 intType);
static void cbForStateError(u32 intType);
static void cbForStateDownRotation(u32 intType);
static void cbForStateReset(u32 intType);
static void cbForStoreErrorCode1(s32 result, DVDCommandBlock* block);
static void cbForStoreErrorCode2(s32 result, DVDCommandBlock* block);
static void stateCheckID2(DVDCommandBlock* block);
static void cbForStateCoverClosed(u32 intType);
static void cbForStateOpenPartition(u32 intType);
static void cbForCancelSync(s32 result, DVDCommandBlock* block);

static void CoverAlarmHandler(OSAlarm* alarm, OSContext* context);
static void ResetAlarmHandler(OSAlarm* alarm, OSContext* context);

static OSAlarm  FatalAlarm;

static DVDGameTOC*          GameToc;
static DVDPartitionInfo*    PartInfo;
static DVDPartitionInfo*    BootGameInfo;
static ESTitleMeta*         Tmd;

static vBOOL    Prepared;

void DVDInit() {
    DVDDiskID* id;
    s32 ret;

    if (DVDInitialized) {
        return;
    }

    OSRegisterVersion(GetVersion(DVD));
    DVDInitialized = TRUE;
    DVDLowInit();
    
    if (!__OSInIPL && __OSLockedAppType == OS_APP_TYPE_DVD) {
        ret = ESP_InitLib();

        if (ret == ES_ERR_OK) {
            ret = ESP_DiGetTicketView(NULL, &__DVDTicketViewBuffer);
        }

        if (ret == ES_ERR_OK) {
            ret = ESP_DiGetTmd(NULL, &__DVDNumTmdBytes);
        }

        if (ret == ES_ERR_OK) {
            ret = ESP_DiGetTmd(&__DVDTmdBuffer, &__DVDNumTmdBytes);
        }

        ESP_CloseLib();
    }

    __DVDFSInit();
    __DVDClearWaitingQueue();

    MotorState = MOTOR_STATE_WORKING;
    bootInfo = (OSBootInfo*)OSPhysicalToCached(OS_ADDR_BOOT_INFO);
    IDShouldBe = &bootInfo->DVDDiskID;
    OSInitThreadQueue(&__DVDThreadQueue);

    DVDLowUnmaskStatusInterrupts();
    DVDLowMaskCoverInterrupt();

    if (bootInfo->magic == 0xE5207C22) {

    }
    else if (bootInfo->magic == 0x0D15EA5E) {

    }
    else {
        FirstTimeInBootrom = TRUE;
    }

    memset(&__ErrorInfo, 0, sizeof(DVDErrorInfo));
    id = (DVDDiskID*)OSPhysicalToCached(OS_ADDR_BOOT_INFO);
    memcpy(__ErrorInfo.gameName, id->gameName, 4);

    __ErrorInfo.diskNumber = id->diskNumber;
    __ErrorInfo.gameVersion = id->gameVersion;

    __DVDLayoutFormat = 0;

    DVDSetAutoFatalMessaging(TRUE);
}

static void stateReadingFST() {
    LastState = (DVDStateProc)stateReadingFST;

    OSAssertMsg(bootInfo->FSTMaxLength >= BB2.FSTLength, "DVDChangeDisk(): FST in the new disc is too big.   ", 1083);

    DVDLowClearCoverInterrupt(NULL);
    StampCommand(COMMAND_READ, BB2.FSTPosition >> __DVDLayoutFormat, OSRoundUp32B(BB2.FSTLength << (~__DVDLayoutFormat & 2)));
    DVDLowRead(bootInfo->FSTLocation, OSRoundUp32B(BB2.FSTLength << (~__DVDLayoutFormat & 2)), BB2.FSTPosition >> __DVDLayoutFormat, cbForStateReadingFST);
}

static void cbForStateReadingFST(u32 intType) {
    DVDCommandBlock* finished;
    StampIntType(intType);

    if (intType == DVD_INTTYPE_TIME) {
        stateTimeout();
        return;
    }

    if (intType == DVD_INTTYPE_SERR) {
        stateSecurityError();
        return;
    }

    if (intType & DVD_INTTYPE_TC) {
        NumInternalRetry = 0;
        __DVDFSInit();
        finished = executing;
        executing = &DummyCommandBlock;
        finished->state = DVD_STATE_IDLE;

        if (finished->callback) {
            finished->callback(DVD_RESULT_OK, finished);
        }

        stateReady();
    }
    else {
        stateGettingError();
    }
}

static void FatalAlarmHandler(OSAlarm* alarm, OSContext* context) {
    __DVDPrintFatalMessage();
}

static void cbForStateError(u32 intType) {
    DVDCommandBlock* finished;

    if (__DVDGetAutoFatalMessaging()) {
        OSCreateAlarm(&FatalAlarm);
        OSSetAlarm(&FatalAlarm, 1, FatalAlarmHandler);
    }
    else {
        executing->state = DVD_STATE_FATAL;

        if (intType == DVD_INTTYPE_TIME) {
            stateTimeout();
            return;
        }

        if (intType == DVD_INTTYPE_SERR) {
            stateSecurityError();
            return;
        }

        FatalErrorFlag = TRUE;
        finished = executing;
        executing = &DummyCommandBlock;

        if (finished->callback) {
            finished->callback(DVD_RESULT_FATAL, finished);
        }

        if (Canceling) {
            Canceling = FALSE;

            if (CancelCallback) {
                CancelCallback(DVD_RESULT_OK, finished);
            }
        }

        stateReady();
    }

    return;
}

static void cbForStoreErrorCode1(s32 result, DVDCommandBlock* block) {
    DVDLowStopMotor(FALSE, FALSE, cbForStateError);
}

static void stateError(u32 error) {
    __DVDStoreErrorCode(error, cbForStoreErrorCode1);
}

static void cbForStoreErrorCode2(s32 result, DVDCommandBlock* block) {
    DVDLowSetSpinupFlag(FALSE);
    DVDLowReset(cbForStateError);
    ResetRequired = FALSE;
    ResumeFromHere = RESUME_POINT_NONE;
}

static void stateTimeout() {
    __DVDStoreErrorCode(NAND_ERROR_TIMEOUT, cbForStoreErrorCode2);
}

static void stateSecurityError() {
    __DVDStoreErrorCode(NAND_ERROR_SECURITY, cbForStoreErrorCode2);
}

static void stateGettingError() {
    StampCommand(COMMAND_REQUEST_ERROR, 0, 0);
    DVDLowRequestError(cbForStateGettingError);
}

u32 CategorizeError(u32 error) {
    if (error == REQUEST_ERROR_MOTOR_STOPPED) {
        LastError = error;
        return ERROR_TYPE_ERROR;
    }

    error &= 0xFFFFFF;

    if (error == REQUEST_ERROR_MEDIUM_CHANGED
    || error == REQUEST_ERROR_COVER_OPENED
    || error == REQUEST_ERROR_053000h
    || error == REQUEST_ERROR_MEDIUM_REMOVAL) {
        return ERROR_TYPE_OK;
    }

    if (error == REQUEST_ERROR_BAD_OPCODE
        && (executing->command == COMMAND_SET_MAX_ROTATION || LastState == stateDownRotation)) {
        return ERROR_TYPE_OK;
    }

    NumInternalRetry++;
    if (NumInternalRetry == 2) {
        if (error == LastError) {
            LastError = error;
            return ERROR_TYPE_ERROR;
        }
        else {
            LastError = error;
            return ERROR_TYPE_FATAL;
        }
    }
    else {
        LastError = error;

        if (error == REQUEST_ERROR_READ_FAIL  || executing->command == COMMAND_READID) {
            return ERROR_TYPE_FATAL;
        }
        return ERROR_TYPE_UNKNOWN;
    }
}

static BOOL CheckCancel(u32 resume) {
    DVDCommandBlock* finished;

    if (Canceling) {
        ResumeFromHere = resume;
        Canceling = FALSE;
        finished = executing;
        executing = &DummyCommandBlock;

        finished->state = DVD_STATE_CANCELED;
        if (finished->callback) {
            finished->callback(DVD_RESULT_CANCELED, finished);
        }

        if (CancelCallback) {
            CancelCallback(DVD_RESULT_OK, finished);
        }

        stateReady();

        return TRUE;
    }
    else {
        return FALSE;
    }
}

static void cbForStoreErrorCode3(s32 result, DVDCommandBlock* block) {
    stateGoToRetry();
}

static void cbForStateGettingError(u32 intType) {
    u32 error, status, errorCategory, resume;

    StampIntType(intType);

    if (intType == DVD_INTTYPE_TIME) {
        stateTimeout();
        return;
    }

    if (intType == DVD_INTTYPE_SERR) {
        stateSecurityError();
        return;
    }

    if (intType & DVD_INTTYPE_DE) {
        stateError(NAND_ERROR_GENERIC);
        return;
    }

    error = DVDLowGetImmBufferReg();
    status = error & 0xFF000000;
    errorCategory = CategorizeError(error);

    if (errorCategory == ERROR_TYPE_ERROR) {
        stateError(error);
        return;
    }

    if (errorCategory == ERROR_TYPE_FATAL || errorCategory == ERROR_TYPE_UNKNOWN) {
        resume = RESUME_POINT_NONE;
    }
    else {
        if (status == REQUEST_STATE_COVER_OPENED) {
            resume = RESUME_POINT_COVER_OPENED;
        }
        else if (status == REQUEST_STATE_DISK_CHANGED) {
            resume = RESUME_POINT_DISK_CHANGED;
        }
        else if (status == REQUEST_STATE_NO_DISK) {
            resume = RESUME_POINT_NO_DISK;
        }
        else if (status == REQUEST_STATE_OK) {
            if (error == REQUEST_ERROR_053000h) {
                resume = RESUME_POINT_WRONG_DISK_ID;
            }
            else {
                resume = RESUME_POINT_OK;
            }
        }
        else {
            resume = RESUME_POINT_OK;
        }
    }

    if (CheckCancel(resume)) {
        return;
    }

    if (errorCategory == ERROR_TYPE_FATAL) {
        __DVDStoreErrorCode(error, cbForStoreErrorCode3);
        return;
    }
    
    if (errorCategory == ERROR_TYPE_UNKNOWN) {
        if ((error & 0xFFFFFF) == REQUEST_ERROR_READ_FAIL) {
            StampCommand(COMMAND_SEEK, executing->offset, 0);
            DVDLowSeek(executing->offset, cbForUnrecoveredError);
        }
        else {
            LastState(executing);
        }

        return;
    }

    if (status == REQUEST_STATE_COVER_OPENED) {
        executing->state = DVD_STATE_COVER_OPENED;
        stateMotorStopped();
        return;
    }
    else if (status == REQUEST_STATE_DISK_CHANGED) {
        executing->state = DVD_STATE_COVER_CLOSED;
        stateCoverClosed();
        return;
    }
    else if (status == REQUEST_STATE_NO_DISK) {
        executing->state = DVD_STATE_NO_DISK;
        stateMotorStopped();
        return;
    }
    else if (status == REQUEST_STATE_OK) {
        if (error == REQUEST_ERROR_053000h) {
            StampCommand(COMMAND_STOP_MOTOR, 0, 0);
            DVDLowStopMotor(FALSE, FALSE, cbForStateCheckID1);
            return;
        }
        else {
            stateError(NAND_ERROR_GENERIC);
            return;
        }
    }
    else {
        stateError(NAND_ERROR_GENERIC);
        return;
    }
}

static void cbForUnrecoveredError(u32 intType) {
    StampIntType(intType);

    if (intType == DVD_INTTYPE_TIME) {
        stateTimeout();
        return;
    }

    if (intType == DVD_INTTYPE_SERR) {
        stateSecurityError();
        return;
    }

    if (intType & DVD_INTTYPE_TC) {
        stateGoToRetry();
        return;
    }

    StampCommand(COMMAND_REQUEST_ERROR, 0, 0);
    DVDLowRequestError(cbForUnrecoveredErrorRetry);
}

static void cbForUnrecoveredErrorRetry(u32 intType) {
    StampIntType(intType);

    if (intType == DVD_INTTYPE_TIME) {
        stateTimeout();
        return;
    }

    if (intType == DVD_INTTYPE_SERR) {
        stateSecurityError();
        return;
    }

    if (intType & DVD_INTTYPE_DE) {
        stateError(NAND_ERROR_GENERIC);
    }
    else {
        stateError(DVDLowGetImmBufferReg());
    }

    return;
}

static void stateGoToRetry() {
    StampCommand(COMMAND_STOP_MOTOR, 0, 0);
    DVDLowStopMotor(FALSE, FALSE, cbForStateGoToRetry);
}

static void cbForStateGoToRetry(u32 intType) {
    StampIntType(intType);

    if (intType == DVD_INTTYPE_TIME) {
        stateTimeout();
        return;
    }

    if (intType == DVD_INTTYPE_SERR) {
        stateSecurityError();
        return;
    }

    if (intType & DVD_INTTYPE_DE) {
        stateError(NAND_ERROR_GENERIC);
        return;
    }

    NumInternalRetry = 0;

     if (CurrCommand == COMMAND_BSREAD || CurrCommand == COMMAND_READID
    || CurrCommand == COMMAND_AUDIO_BUFFER_CONFIG
    || CurrCommand == COMMAND_READ_UNENCRYPTED
    || CurrCommand == COMMAND_OPEN_PARTITION
    || CurrCommand == COMMAND_GET_PARTITION_PARAMS
    || CurrCommand == COMMAND_OPEN_PARTITION_WITH_TMD
    || CurrCommand == COMMAND_BS_CHANGE_DISK
    || CurrCommand == COMMAND_SET_MAX_ROTATION) {
        ResetRequired = TRUE;
    }

    if (!CheckCancel(RESUME_POINT_DISK_ERROR)) {
        executing->state = DVD_STATE_DISK_ERROR;
        stateMotorStopped();
    }
}

void stateCheckID() {
    switch (CurrCommand) {
        case COMMAND_CHANGE_DISK: {
            ChangedDisc = FALSE;

            if (DVDCompareDiskID(&CurrDiskID, executing->id)) {
                memcpy(IDShouldBe, &CurrDiskID, sizeof(DVDDiskID));
                executing->state = DVD_STATE_BUSY;
                DCInvalidateRange(&BB2, sizeof(DVDBB2));

                NumInternalRetry = 0;
                stateReadingTOC(executing);
                return;
            }
            else {
                StampCommand(COMMAND_STOP_MOTOR, 0, 0);
                DVDLowStopMotor(FALSE, FALSE, cbForStateCheckID1);
            }
            break;
        }
        default: {
            if (memcmp(&CurrDiskID, IDShouldBe, sizeof(DVDDiskID))) {
                StampCommand(COMMAND_STOP_MOTOR, 0, 0);
                DVDLowStopMotor(FALSE, FALSE, cbForStateCheckID1);
            }
            else {
                NumInternalRetry = 0;
                stateReadingTOC(executing);
            }

            break;
        }
    }
}

static void stateCheckID3(DVDCommandBlock* block) {
    StampCommand(COMMAND_AUDIO_BUFFER_CONFIG, IDShouldBe->streaming, 10);
    DVDLowAudioBufferConfig((BOOL)IDShouldBe->streaming, 10, cbForStateCheckID3);
}

static void stateCheckID2a(DVDCommandBlock* block) {
    StampCommand(COMMAND_AUDIO_BUFFER_CONFIG, IDShouldBe->streaming, 10);
    DVDLowAudioBufferConfig((BOOL)IDShouldBe->streaming, 10, cbForStateCheckID2a);
}

static void cbForStateCheckID2a(u32 intType) {
    StampIntType(intType);

    if (intType == DVD_INTTYPE_TIME) {
        stateTimeout();
        return;
    }

    if (intType == DVD_INTTYPE_SERR) {
        stateSecurityError();
        return;
    }

    if (intType & DVD_INTTYPE_TC) {
        NumInternalRetry = 0;
        stateCheckID2(executing);
    }
    else {
        stateGettingError();
    }
}

static void cbForStateReadingTOC(u32 intType) {
    StampIntType(intType);

    if (intType == DVD_INTTYPE_TIME) {
        stateTimeout();
        return;
    }

    if (intType == DVD_INTTYPE_SERR) {
        stateSecurityError();
        return;
    }

    if (intType & DVD_INTTYPE_TC) {
        NumInternalRetry = 0;
        GameToc = __DVDGameTocBuffer;
        stateReadingPartitionInfo(executing);
    }
    else {
        stateGettingError();
    }
}

static void stateReadingTOC(DVDCommandBlock* block) {
    DVDLowClearCoverInterrupt(NULL);
    StampCommand(COMMAND_READ_UNENCRYPTED, 0x40000 >> 2, OSRoundUp32B(sizeof(DVDGameTOC)));
    DVDLowUnencryptedRead(__DVDGameTocBuffer, OSRoundUp32B(sizeof(DVDGameTOC)), 0x10000, cbForStateReadingTOC);
}

static void cbForStateReadingPartitionInfo(u32 intType) {
    StampIntType(intType);

    if (intType == DVD_INTTYPE_TIME) {
        stateTimeout();
        return;
    }

    if (intType == DVD_INTTYPE_SERR) {
        stateSecurityError();
        return;
    }

    if (intType & DVD_INTTYPE_TC) {
        s16 i;
        NumInternalRetry = 0;
        PartInfo = __DVDPartInfoBuffer;
        BootGameInfo = NULL;

        if (*((u32*)OSPhysicalToCached(OS_ADDR_BOOT_PART_OFFSET))) {
            BootGameInfo = PartInfo;
            BootGameInfo->partitionType = *((u32*)OSPhysicalToCached(OS_ADDR_BOOT_PART_TYPE));
            BootGameInfo->partition = (DVDGamePartition*)*((u32*)OSPhysicalToCached(OS_ADDR_BOOT_PART_OFFSET));
        }
        else {
            for (i = 0; i < GameToc->partitionCount; i++) {
                if (PartInfo->partitionType == __OSLaunchPartitionType) {
                    BootGameInfo = PartInfo;
                }

                PartInfo++;
            }
        }

        if (BootGameInfo) {
            switch (CurrCommand) {
                case COMMAND_CHANGE_DISK: {
                    NumInternalRetry = 0;
                    stateOpenPartition(executing);
                    break;
                }
                default: {
                    NumInternalRetry = 0;
                    stateOpenPartition2(executing);
                    break;
                }
            }
        }
        else {
            if (!CheckCancel(RESUME_POINT_WRONG_DISK_ID)) {
                executing->state = DVD_STATE_WRONG_DISK_ID;
                stateMotorStopped();
            }
        }
    }
    else {
        stateGettingError();
    }
}

static void stateReadingPartitionInfo(DVDCommandBlock* block) {
    DVDLowClearCoverInterrupt(NULL);
    StampCommand(COMMAND_READ_UNENCRYPTED, (0x40000 + OSRoundUp32B(sizeof(DVDGameTOC))) >> 2, OSRoundUp32B(sizeof(DVDPartitionInfo)));
    DVDLowUnencryptedRead(__DVDPartInfoBuffer, OSRoundUp32B(sizeof(DVDPartitionInfo)), (0x40000 + OSRoundUp32B(sizeof(DVDGameTOC))) >> 2, cbForStateReadingPartitionInfo);
}

static void stateOpenPartition(DVDCommandBlock* block) {
    DVDLowClearCoverInterrupt(NULL);
    StampCommand(COMMAND_OPEN_PARTITION, (u32)BootGameInfo->partition, 0);

    if (__OSLockedAppType == OS_APP_TYPE_DVD) {
        DVDLowOpenPartitionWithTmdAndTicketView((u32)BootGameInfo->partition, &__DVDTicketViewBuffer, __DVDNumTmdBytes, &__DVDTmdBuffer, 0, NULL, cbForStateOpenPartition);
    }
    else {
        DVDLowOpenPartition((u32)BootGameInfo->partition, NULL, 0, 0, &__DVDTmdBuffer, cbForStateOpenPartition);
    }
}

static void cbForStateOpenPartition(u32 intType) {
    StampIntType(intType);

    if (intType == DVD_INTTYPE_TIME) {
        stateTimeout();
        return;
    }

    if (intType == DVD_INTTYPE_SERR) {
        stateSecurityError();
        return;
    }

    if (intType & DVD_INTTYPE_TC) {
        NumInternalRetry = 0;
        stateCheckID2(executing);
    }
    else {
        stateGettingError();
    }
}

static void cbForStateOpenPartition2(u32 intType) {
    StampIntType(intType);

    if (intType == DVD_INTTYPE_TIME) {
        stateTimeout();
        return;
    }

    if (intType == DVD_INTTYPE_SERR) {
        stateSecurityError();
        return;
    }

    if (intType & DVD_INTTYPE_TC) {
        NumInternalRetry = 0;

        if (!CheckCancel(RESUME_POINT_NONE)) {
            executing->state = DVD_STATE_BUSY;
            stateBusy(executing);
        }
    }
    else {
        stateGettingError();
    }
}

static void stateOpenPartition2(DVDCommandBlock* block) {
    DVDLowClearCoverInterrupt(NULL);
    StampCommand(COMMAND_OPEN_PARTITION, (u32)BootGameInfo->partition, 0);

    if (__OSLockedAppType == OS_APP_TYPE_DVD) {
        DVDLowOpenPartitionWithTmdAndTicketView((u32)BootGameInfo->partition, &__DVDTicketViewBuffer, __DVDNumTmdBytes, &__DVDTmdBuffer, 0, NULL, cbForStateOpenPartition2);
    }
    else {
        DVDLowOpenPartition((u32)BootGameInfo->partition, NULL, 0, 0, &__DVDTmdBuffer, cbForStateOpenPartition2);
    }
}

static void stateCheckID2(DVDCommandBlock* block) {
    DVDLowClearCoverInterrupt(NULL);
    StampCommand(COMMAND_READ, (0x420 >> 2), OSRoundUp32B(sizeof(DVDBB2)));
    DVDLowRead(&BB2, OSRoundDown32B(sizeof(DVDBB2)), (0x420 >> 2), cbForStateCheckID2);
}

static void cbForStateCheckID1(u32 intType) {
    StampIntType(intType);

    if (intType == DVD_INTTYPE_TIME) {
        stateTimeout();
        return;
    }

    if (intType == DVD_INTTYPE_SERR) {
        stateSecurityError();
        return;
    }

    if (intType & DVD_INTTYPE_DE) {
        stateError(NAND_ERROR_GENERIC);
        return;
    }

    NumInternalRetry = 0;

    if (!CheckCancel(RESUME_POINT_WRONG_DISK_ID)) {
        executing->state = DVD_STATE_WRONG_DISK_ID;
        stateMotorStopped();
    }
}

static void cbForStateCheckID2(u32 intType) {
    StampIntType(intType);

    if (intType == DVD_INTTYPE_TIME) {
        stateTimeout();
        return;
    }

    if (intType == DVD_INTTYPE_SERR) {
        stateSecurityError();
        return;
    }

    if (intType & DVD_INTTYPE_TC) {
        NumInternalRetry = 0;
        stateReadingFST();
    }
    else {
        stateGettingError();
    }
}

static void cbForStateCheckID3(u32 intType) {
    StampIntType(intType);

    if (intType == DVD_INTTYPE_TIME) {
        stateTimeout();
        return;
    }

    if (intType == DVD_INTTYPE_SERR) {
        stateSecurityError();
        return;
    }

    if (intType & DVD_INTTYPE_TC) {
        NumInternalRetry = 0;

        if (!CheckCancel(RESUME_POINT_NONE)) {
            executing->state = DVD_STATE_BUSY;
            stateBusy(executing);
        }
    }
    else {
        stateGettingError();
    }
}


static void stateCoverClosed() {
    DVDCommandBlock* finished;
    MotorState = MOTOR_STATE_PENDING_STOP;

    switch (CurrCommand) {
        case COMMAND_BSREAD:
        case COMMAND_READID:
        case COMMAND_AUDIO_BUFFER_CONFIG:
        case COMMAND_BS_CHANGE_DISK:
        case COMMAND_READ_UNENCRYPTED:
        case COMMAND_OPEN_PARTITION:
        case COMMAND_GET_PARTITION_PARAMS:
        case COMMAND_OPEN_PARTITION_WITH_TMD:
        case COMMAND_SET_MAX_ROTATION: {
            __DVDClearWaitingQueue();
            finished = executing;
            executing = &DummyCommandBlock;

            if (finished->callback) {
                finished->callback(DVD_RESULT_COVER_CLOSED, finished);
            }

            stateReady();

            break;
        }
        case COMMAND_RESET: {
            MotorState = MOTOR_STATE_WORKING;
        }
        case COMMAND_CLOSE_PARTITION:
        case COMMAND_GET_COVER_STATUS:
        case COMMAND_GET_COVER_READY: {
            executing->state = 1;
            stateBusy(executing);
            break;
        }
        case COMMAND_READ:
        case COMMAND_SEEK: {
            if (__OSInIPL) {
                break;
            }
        }
        default: {
            MotorState = MOTOR_STATE_WORKING;
            DVDLowSetSpinupFlag(TRUE);
            DVDLowReset(cbForStateReset);
            break;
        }
    }
}

static void ResetAlarmHandler(OSAlarm* alarm, OSContext* context) {
    if (__OSDeviceCode == (DVD_DEVICE_CODE | 0x003)) {
        LastState = stateDownRotation;
        stateDownRotation(executing);
    }
    else {
        DCInvalidateRange(&CurrDiskID, sizeof(DVDDiskID));
        LastState = stateCoverClosed_CMD;
        stateCoverClosed_CMD(executing);
    }
}

static void cbForStateReset(u32 intType) {
    if (intType == DVD_INTTYPE_TIME) {
        stateTimeout();
        return;
    }

    if (intType == DVD_INTTYPE_SERR) {
        stateSecurityError();
        return;
    }

    if (intType & DVD_INTTYPE_TC) {
        LastResetEnd = __OSGetSystemTime();
        ResetRequired = FALSE;
        ResumeFromHere = RESUME_POINT_NONE;
        OSCreateAlarm(&ResetAlarm);
        OSSetAlarm(&ResetAlarm, OSMillisecondsToTicks(100), ResetAlarmHandler);
    }
    else {
        stateGettingError();
    }
}

static void stateMotorStopped() {
    MotorState = MOTOR_STATE_PENDING_STOP;

    if (WaitingForCoverOpen || WaitingForCoverClose) {
        return;
    }

    WaitingForCoverOpen = TRUE;

    OSCreateAlarm(&CoverAlarm);
    OSSetPeriodicAlarm(&CoverAlarm, OSGetTick(), OSMillisecondsToTicks(100), CoverAlarmHandler);
}

static void cbForStateMotorStopped(u32 intType) {
    WaitingForCoverClose = FALSE;

    if (CurrCommand == COMMAND_CHANGE_DISK) {
        ChangedDisc = TRUE;
    }

    if (MotorState == MOTOR_STATE_STOPPED) {
        if (executing) {
            executing->state = DVD_STATE_MOTOR_STOPPED;
        }

        return;
    }

    DVDLowMaskCoverInterrupt();

    if (executing) {
        executing->state = DVD_STATE_COVER_CLOSED;
        stateCoverClosed();
    }
    else {
        ResumeFromHere = RESUME_POINT_7;
    }
}

static void stateDownRotation(DVDCommandBlock* block) {
    DVDLowClearCoverInterrupt(NULL);
    StampCommand(COMMAND_SET_MAX_ROTATION, 0, 0);
    DVDLowSetMaximumRotation(0x20000, cbForStateDownRotation);
}

static void stateCoverClosed_CMD(DVDCommandBlock*);

static void cbForStateDownRotation(u32 intType) {
    StampIntType(intType);

    if (intType == DVD_INTTYPE_TIME) {
        stateTimeout();
        return;
    }

    if (intType == DVD_INTTYPE_SERR) {
        stateSecurityError();
        return;
    }

    if (intType & DVD_INTTYPE_TC) {
        DCInvalidateRange(&CurrDiskID, sizeof(DVDDiskID));
        LastState = stateCoverClosed_CMD;
        stateCoverClosed_CMD(executing);
    }
    else {
        stateGettingError();
    }
}

static void stateCoverClosed_CMD(DVDCommandBlock* block) {
    if (CurrCommand == COMMAND_GET_DISK_ID_VALID) {
        NumInternalRetry = 0;

        if (!CheckCancel(0)) {
            executing->state = DVD_STATE_BUSY;
            stateBusy(executing);
        }
    }
    else {
        DVDLowClearCoverInterrupt(NULL);
        StampCommand(COMMAND_READID, 0, sizeof(DVDDiskID));
        DVDLowReadDiskID(&CurrDiskID, cbForStateCoverClosed);
    }
}

static void cbForStateCoverClosed(u32 intType) {
    StampIntType(intType);

    if (intType == DVD_INTTYPE_TIME) {
        stateTimeout();
        return;
    }

    if (intType == DVD_INTTYPE_SERR) {
        stateSecurityError();
        return;
    }

    if (intType & DVD_INTTYPE_TC) {
        NumInternalRetry = 0;
        stateCheckID();
    }
    else {
        stateGettingError();
    }
}

static void cbForPrepareCoverRegister(u32 intType) {
    PreparingCover = FALSE;

    if (WaitingForCoverClose) {
        if (!(DVDLowGetCoverRegister() & DVD_DICVR_CVR)) {
            OSCancelAlarm(&CoverAlarm);
            WaitingForCoverClose = FALSE;
            cbForStateMotorStopped(DVD_INTTYPE_CVR);
        }

        return;
    }

    if (DVDLowGetCoverRegister() & DVD_DICVR_CVR) {
        WaitingForCoverOpen = FALSE;
        WaitingForCoverClose = TRUE;

        if (MotorState == MOTOR_STATE_STOPPED) {
            executing->state = DVD_STATE_MOTOR_STOPPED;
        }
        else {
            executing->state = DVD_STATE_COVER_OPENED;
        }
    }
    else if (DVDLowGetCoverRegister() & DVD_DICVR_CVRINT) {
        OSCancelAlarm(&CoverAlarm);
        WaitingForCoverOpen = FALSE;
        DVDLowClearCoverInterrupt(NULL);
        cbForStateMotorStopped(4);
    }
}

static void CoverAlarmHandler(OSAlarm* alarm, OSContext* context) {
    if (!PreparingCover) {
        PreparingCover = TRUE;
        DVDLowPrepareCoverRegister(cbForPrepareCoverRegister);
    }
}

static void stateReady() {
    DVDCommandBlock* finished;

    if (!__DVDCheckWaitingQueue()) {
        executing = NULL;
        return;
    }

    if (PauseFlag) {
        PausingFlag = TRUE;
        executing = NULL;
        return;
    }

    executing = __DVDPopWaitingQueue();

    if (FatalErrorFlag) {
        executing->state = DVD_STATE_FATAL;
        finished = executing;
        executing = &DummyCommandBlock;

        if (finished->callback) {
            finished->callback(DVD_STATE_FATAL, finished);
        }

        stateReady();
        return;
    }

    CurrCommand = executing->command;

    if (CurrCommand == COMMAND_RESET || CurrCommand == COMMAND_INQUIRY || CurrCommand == COMMAND_CLOSE_PARTITION) {
        ResumeFromHere = RESUME_POINT_NONE;
    }

    if (ResumeFromHere) {
        switch (ResumeFromHere) {
            case RESUME_POINT_DISK_ERROR: {
                executing->state = DVD_STATE_DISK_ERROR;
                stateMotorStopped();
                break;
            }
            case RESUME_POINT_NO_DISK: {
                executing->state = DVD_STATE_NO_DISK;
                stateMotorStopped();
                break;
            }
            case RESUME_POINT_COVER_OPENED: {
                executing->state = DVD_STATE_COVER_OPENED;
                stateMotorStopped();
                break;
            }
            case RESUME_POINT_WRONG_DISK_ID:
            case RESUME_POINT_DISK_CHANGED:
            case RESUME_POINT_7: {
                executing->state = DVD_STATE_COVER_CLOSED;
                stateCoverClosed();
                break;
            }
            case RESUME_POINT_OK: {
                stateError(CancelLastError);
                break;
            }
        }

        ResumeFromHere = RESUME_POINT_NONE;
    }
    else {
        switch (MotorState) {
            case MOTOR_STATE_STOPPED: {
                if (MotorStopped) {
                    executing->state = DVD_STATE_MOTOR_STOPPED;
                }
                else {
                    executing->state = DVD_STATE_COVER_CLOSED;
                    stateCoverClosed();
                }
                break;
            }
            case MOTOR_STATE_WORKING: {
                executing->state = DVD_STATE_BUSY;
                stateBusy(executing);
                break;
            }
            case MOTOR_STATE_PENDING_STOP:
            default: {
                stateCoverClosed();
                break;
            }
        }
    }
}

static void stateBusy(DVDCommandBlock* block) {
    DVDCommandBlock* finished;
    LastState = stateBusy;

    switch (block->command) {
        case COMMAND_SEEK:
        case COMMAND_CHANGE_DISK:
        case COMMAND_READID:
        case COMMAND_AUDIO_BUFFER_CONFIG:
        case COMMAND_INQUIRY:
        case COMMAND_BS_CHANGE_DISK:
        case COMMAND_STOP_MOTOR:
        case COMMAND_OPEN_PARTITION:
        case COMMAND_SET_MAX_ROTATION:
        case COMMAND_GET_PARTITION_PARAMS:
        case COMMAND_OPEN_PARTITION_WITH_TMD: {
            StampCommand(block->command, block->offset, block->length);
            break;
        }
        default: {
            break;
        }
    }

    switch (block->command) {
        case COMMAND_READID: {
            DVDLowClearCoverInterrupt(NULL);
            block->currTransferSize = sizeof(DVDDiskID);
            DVDLowReadDiskID(block->addr, cbForStateBusy);
            break;
        }
        case COMMAND_READ:
        case COMMAND_BSREAD: {
            if (!block->length) {
                finished = executing;
                executing = &DummyCommandBlock;
                finished->state = DVD_STATE_IDLE;

                if (finished->callback) {
                    finished->callback(DVD_RESULT_OK, finished);
                }

                stateReady();
            }
            else {
                DVDLowClearCoverInterrupt(NULL);
                block->currTransferSize = LIMIT_BLOCK_SIZE(block->length - block->transferredSize, 0x80000);
                StampCommand(block->command, ((block->offset) + (block->transferredSize >> 2)), block->currTransferSize);
                DVDLowRead((void*)((u8*)block->addr + block->transferredSize), block->currTransferSize, (block->offset + (block->transferredSize >> 2)), cbForStateBusy);
            }

            break;
        }
        case COMMAND_SEEK: {
            DVDLowClearCoverInterrupt(NULL);
            DVDLowSeek(block->offset, cbForStateBusy);
            break;
        }
        case COMMAND_CHANGE_DISK: {
            DVDLowStopMotor(FALSE, FALSE, cbForStateBusy);
            break;
        }
        case COMMAND_BS_CHANGE_DISK: {
            DVDLowStopMotor(FALSE, FALSE, cbForStateBusy);
            break;
        }
        case COMMAND_AUDIO_BUFFER_CONFIG: {
            DVDLowClearCoverInterrupt(NULL);
            DVDLowAudioBufferConfig(block->offset, block->length, cbForStateBusy);
            break;
        }
        case COMMAND_INQUIRY: {
            DVDLowClearCoverInterrupt(NULL);
            block->currTransferSize = sizeof(DVDDriveInfo);
            DVDLowInquiry(block->addr, cbForStateBusy);
            break;
        }
        case COMMAND_STOP_MOTOR: {
            DVDLowClearCoverInterrupt(NULL);
            DVDLowStopMotor(FALSE, FALSE, cbForStateBusy);
            break;
        }
        case COMMAND_RESET: {
            DVDLowSetSpinupFlag(TRUE);
            DVDLowReset(cbForStateBusy);
            break;
        }
        case COMMAND_READ_UNENCRYPTED: {
            if (block->length == 0) {
                finished = executing;
                executing = &DummyCommandBlock;
                finished->state = DVD_STATE_IDLE;
                
                if (finished->callback) {
                    finished->callback(DVD_RESULT_OK, finished);
                }

                stateReady();
            }
            else {
                DVDLowClearCoverInterrupt(NULL);
                block->currTransferSize = LIMIT_BLOCK_SIZE(block->length - block->transferredSize, 0x80000);
                StampCommand(block->command, (block->offset + (block->transferredSize >> 2)), block->currTransferSize);
                DVDLowUnencryptedRead((void*)((u8*)block->addr + block->transferredSize), block->currTransferSize, ((block->offset) + (block->transferredSize >> 2)), cbForStateBusy);
            }
            break;
        }
        case COMMAND_OPEN_PARTITION: {
            DVDLowClearCoverInterrupt(NULL);
            DVDLowOpenPartition(block->offset, NULL, 0, 0, (ESTitleMeta*)block->addr, cbForStateBusy);
            break;
        }
        case COMMAND_CLOSE_PARTITION: {
            DVDLowClearCoverInterrupt(NULL);
            DVDLowClosePartition(cbForStateBusy);
            break;
        }
        case COMMAND_GET_COVER_STATUS: {
            DVDLowPrepareCoverRegister(cbForStateBusy);
            break;
        }
        case COMMAND_GET_COVER_READY: {
            DVDLowPrepareCoverRegister(cbForStateBusy);
            break;
        }
        case COMMAND_SET_MAX_ROTATION: {
            DVDLowClearCoverInterrupt(NULL);
            DVDLowSetMaximumRotation(0x20000, cbForStateBusy);
            break;
        }
        case COMMAND_GET_DISK_ID_VALID: {
            DVDLowClearCoverInterrupt(NULL);
            block->addr = &CurrDiskID;
            block->currTransferSize = sizeof(DVDDiskID);
            DVDLowReadDiskID(block->addr, cbForStateBusy);
            break;
        }
        case COMMAND_GET_PARTITION_PARAMS: {
            DVDPartitionParams* params;
            DVDLowClearCoverInterrupt(NULL);
            params = block->addr;

            if (!params->numTmdBytes && !params->numCertBytes) {
                DVDLowGetNoDiscBufferSizes(block->offset, &params->numTmdBytes, &params->numCertBytes, cbForStateBusy);
            }
            else {
                DVDLowGetNoDiscOpenPartitionParams(block->offset, &params->ticket, &params->numTmdBytes, 
                                                    &params->tmd, &params->numCertBytes, params->certificates, 
                                                    &params->dataWordOffset, params->h3Hash, cbForStateBusy);
            }
            break;
        }
        case COMMAND_OPEN_PARTITION_WITH_TMD: {
            DVDPartitionParams* params;
            DVDLowClearCoverInterrupt(NULL);
            params = block->addr;
            DVDLowOpenPartitionWithTmdAndTicketView(block->offset, &params->ticketView, params->numTmdBytes, &params->tmd,
                                                    params->numCertBytes, params->certificates, cbForStateBusy);
            break;
        }
        default: {
            checkOptionalCommand(block, cbForStateBusy);
            break;
        }
    }
}

// Must be defined here.
static u32 ImmCommand[] = {-1, -1, -1};
static u32 DmaCommand[] = { -1 };

static BOOL IsImmCommandWithResult(u32 command) {
    u32 i;

    if (command == COMMAND_REQUEST_AUDIO_ERROR ||
        command == COMMAND_REQUEST_PLAY_ADDR ||
        command == COMMAND_REQUEST_START_ADDR ||
        command == COMMAND_REQUEST_LENGTH) {
        return TRUE;
    }

    for (i = 0; i < sizeof(ImmCommand) / sizeof(ImmCommand[0]); i++) {
        if (command == ImmCommand[i]) {
            return TRUE;
        }
    }

    return FALSE;
}

static BOOL IsDmaCommand(u32 command) {
    u32 i;

    if (command == COMMAND_READ
    || command == COMMAND_BSREAD || command == COMMAND_READID || command == COMMAND_READ_UNENCRYPTED
    || command == COMMAND_INQUIRY) {
        return TRUE;
    }

    for (i = 0 ; i < ARRSIZE(DmaCommand); i++) {
        if (command == DmaCommand[i]) {
            return TRUE;
        }
    }

    return FALSE;
}

static BOOL issueCommand(s32 prio, DVDCommandBlock* block) {
    BOOL level, result;

    if (autoInvalidation && (block->command == COMMAND_READ
                            || block->command == COMMAND_BSREAD || block->command == COMMAND_READID || block->command == COMMAND_READ_UNENCRYPTED
                            || block->command == COMMAND_INQUIRY)) {
        DCInvalidateRange(block->addr, block->length);
    }

    level = OSDisableInterrupts();
    block->state = DVD_STATE_WAITING;
    result = __DVDPushWaitingQueue(prio, block);

    if (executing == NULL && PauseFlag == FALSE) {
        stateReady();
    }

    OSRestoreInterrupts(level);
    return result;
}

static void cbForStateBusy(u32 intType) {
    DVDCommandBlock* finished;
    StampIntType(intType);

    if (intType == DVD_INTTYPE_TIME) {
        stateTimeout();
        return;
    }

    if (intType == DVD_INTTYPE_SERR) {
        stateSecurityError();
        return;
    }

    if (CurrCommand == COMMAND_CHANGE_DISK || CurrCommand == COMMAND_BS_CHANGE_DISK) {
        if (intType & DVD_INTTYPE_DE) {
            stateError(NAND_ERROR_GENERIC);
            return;
        }

        NumInternalRetry = 0;

        if (CurrCommand == COMMAND_BS_CHANGE_DISK) {
            ResetRequired = TRUE;
        }

        if (CheckCancel(RESUME_POINT_7)) {
            return;
        }

        if (MotorState != MOTOR_STATE_STOPPED) {
            executing->state = DVD_STATE_7;
            stateMotorStopped();
        }

        return;
    }
    else {
        if (IsDmaCommand(CurrCommand)) {
            executing->transferredSize += (intType & (DVD_INTTYPE_BR | DVD_INTTYPE_TC)) ? executing->currTransferSize : 0;
        }

        if (Breaking) {
            Breaking = FALSE;
            Canceling = FALSE;

            finished = executing;
            executing = &DummyCommandBlock;
            finished->state = DVD_STATE_CANCELED;

            if (finished->callback) {
                finished->callback(DVD_RESULT_CANCELED, finished);
            }

            if (CancelCallback) {
                CancelCallback(DVD_RESULT_OK, finished);
            }

            stateReady();
            return;
        }

        if (intType & DVD_INTTYPE_TC) {
            NumInternalRetry = 0;

            if (CurrCommand == COMMAND_STOP_MOTOR) {
                if (executing->offset) {
                    MotorState = MOTOR_STATE_STOPPED;
                }
                else {
                    MotorState = MOTOR_STATE_PENDING_STOP;
                }

                finished = executing;
                executing = &DummyCommandBlock;
                finished->state = DVD_STATE_IDLE;

                if (finished->callback) {
                    finished->callback(DVD_RESULT_OK, finished);
                }

                stateReady();
                return;
            }

            if (CurrCommand == COMMAND_RESET) {
                LastResetEnd = __OSGetSystemTime();

                ResetRequired = FALSE;
                ResumeFromHere = RESUME_POINT_NONE;

                finished = executing;
                executing = &DummyCommandBlock;

                finished->state = DVD_STATE_IDLE;
                if (finished->callback) {
                    finished->callback(DVD_RESULT_OK, finished);
                }

                stateReady();
                return;
            }

            if (CheckCancel(RESUME_POINT_NONE)) {
                return;
            }

            if (CurrCommand == COMMAND_GET_COVER_STATUS) {
                s32 retVal;
                u32 coverReg;

                coverReg = DVDLowGetCoverRegister();

                if (__OSGetSystemTime() - LastResetEnd < OSMillisecondsToTicks(100)) {
                    retVal = DVD_COVER_BUSY;
                }
                else if (coverReg & DVD_DICVR_CVR) {
                    retVal = DVD_COVER_OPENED;
                }
                else {
                    retVal = DVD_COVER_CLOSED;
                }

                finished = executing;
                executing = &DummyCommandBlock;

                finished->state  = DVD_STATE_IDLE;
                finished->offset = retVal;
                if (finished->callback) {
                    finished->callback(retVal, finished);
                }

                stateReady();
                return;
            }

            if (CurrCommand == COMMAND_GET_COVER_READY) {
                s32 retVal;
                u32 coverReg;

                coverReg = DVDLowGetCoverRegister();
                if ((coverReg & DVD_DICVR_CVRINT) >> 2 || (coverReg & DVD_DICVR_CVR)) {
                    retVal = FALSE;
                }
                else {
                    if (ResumeFromHere) {
                        retVal = FALSE;
                    }
                    else {
                        retVal = TRUE;
                    }
                }

                finished = executing;
                executing = &DummyCommandBlock;

                finished->state  = DVD_STATE_IDLE;
                finished->offset = retVal;

                if (finished->callback) {
                    finished->callback(retVal, finished);
                }

                stateReady();
                return;
            }

            if (CurrCommand == COMMAND_GET_DISK_ID_VALID) {
                if (DVDCompareDiskID(&CurrDiskID, executing->id)) {
                    memcpy(IDShouldBe, &CurrDiskID, sizeof(DVDDiskID));
                    finished = executing;
                    executing = &DummyCommandBlock;

                    finished->state  = DVD_STATE_IDLE;
                    finished->offset = TRUE;
                    if (finished->callback) {
                        finished->callback(TRUE, finished);
                    }

                    NumInternalRetry = 0;

                    stateReady();
                    return;
                }
                else {
                    StampCommand(COMMAND_STOP_MOTOR, 0, 0);
                    DVDLowStopMotor(FALSE, FALSE, cbForStateCheckID1);
                    return;
                }
            }

            if (CurrCommand == COMMAND_GET_PARTITION_PARAMS) {
                DVDPartitionParams* params;

                params = (DVDPartitionParams*)executing->addr;
                if (!params->dataWordOffset) {
                    stateBusy(executing);
                    return;
                }

                finished = executing;
                executing = &DummyCommandBlock;

                finished->state = DVD_STATE_IDLE;
                if (finished->callback) {
                    finished->callback(DVD_RESULT_OK, finished);
                }

                stateReady();
                return;
            }

            if (IsDmaCommand(CurrCommand)) {
                if (executing->transferredSize != executing->length) {
                    stateBusy(executing);
                    return;
                }

                finished = executing;
                executing = &DummyCommandBlock;

                finished->state = DVD_STATE_IDLE;
                if (finished->callback) {
                    finished->callback(finished->transferredSize, finished);
                }
                stateReady();
            }
            else if (IsImmCommandWithResult(CurrCommand)) {
                s32 result;

                if (CurrCommand == COMMAND_REQUEST_START_ADDR || CurrCommand == COMMAND_REQUEST_PLAY_ADDR) {
                    result = DVDLowGetImmBufferReg() << 2;
                }
                else {
                    result = DVDLowGetImmBufferReg();
                }

                finished = executing;
                executing = &DummyCommandBlock;

                finished->state = DVD_STATE_IDLE;
                if (finished->callback) {
                    finished->callback(result, finished);
                }

                stateReady();
            }
            else {
                finished = executing;
                executing = &DummyCommandBlock;

                finished->state = DVD_STATE_IDLE;
                if (finished->callback) {
                    finished->callback(DVD_RESULT_OK, finished);
                }
                stateReady();
            }
        }
        else {
            if (CurrCommand == COMMAND_INQUIRY) {
                stateError(NAND_ERROR_GENERIC);
                return;
            }

            if ((CurrCommand == COMMAND_READ
            || CurrCommand == COMMAND_BSREAD || CurrCommand == COMMAND_READID || CurrCommand == COMMAND_READ_UNENCRYPTED
            || CurrCommand == COMMAND_INQUIRY)
            && (executing->transferredSize == executing->length)) {
                if (CheckCancel(RESUME_POINT_NONE)) {
                    return;
                }

                finished = executing;
                executing = &DummyCommandBlock;
                finished->state = DVD_STATE_IDLE;

                if (finished->callback) {
                    finished->callback(finished->transferredSize, finished);
                }

                stateReady();
                return;
            }

            stateGettingError();
        }
    }
}

BOOL DVDReadAbsAsyncPrio(DVDCommandBlock* block, void* addr, s32 length, u32 offset, DVDCommandCallback callback, s32 prio) {
    BOOL idle;
    block->command = COMMAND_READ;
    block->addr = addr;
    block->length = length;
    block->offset = offset;
    block->transferredSize = 0;
    block->callback = callback;
    idle = issueCommand(prio, block);
    return idle;
}

BOOL DVDReadAbsAsyncForBS(DVDCommandBlock* block, void* addr, s32 length, u32 offset, DVDCommandCallback callback, s32 prio) {
    BOOL idle;
    block->command = COMMAND_BSREAD;
    block->addr = addr;
    block->length = length;
    block->offset = offset;
    block->transferredSize = 0;
    block->callback = callback;
    idle = issueCommand(DVD_PRIO_MEDIUM, block);
    return idle;
}

BOOL DVDReadDiskID(DVDCommandBlock* block, DVDDiskID* diskID, DVDCommandCallback callback) {
    BOOL idle;
    block->command = COMMAND_READID;
    block->addr = (void*)diskID;
    block->length = sizeof(DVDDiskID);
    block->offset = 0;
    block->transferredSize = 0;
    block->callback = callback;
    idle = issueCommand(DVD_PRIO_MEDIUM, block);
    return idle;
}

void __DVDAudioBufferConfig(DVDCommandBlock* block, u32 enable, u32 size, DVDCommandCallback callback) {
    BOOL idle;
    block->command = COMMAND_AUDIO_BUFFER_CONFIG;
    block->offset = enable;
    block->length = size;
    block->callback = callback;
    idle = issueCommand(DVD_PRIO_MEDIUM, block);
}

BOOL DVDChangeDiskAsyncForBS(DVDCommandBlock* block, DVDCommandCallback callback) {
    BOOL idle;
    block->command = COMMAND_BS_CHANGE_DISK;
    block->callback = callback;
    idle = issueCommand(DVD_PRIO_MEDIUM, block);
    return idle;
}

BOOL DVDInquiryAsync(DVDCommandBlock* block, DVDDriveInfo* info, DVDCommandCallback callback) {
    BOOL idle;
    block->command = 14;
    block->addr = (void*)info;
    block->length = sizeof(DVDDriveInfo);
    block->transferredSize = 0;
    block->callback = callback;
    idle = issueCommand(DVD_PRIO_MEDIUM, block);
    return idle;
}

BOOL DVDResetAsync(DVDCommandBlock* block, DVDCommandCallback callback) {
    BOOL idle;
    DVDLowSetSpinupFlag(TRUE);
    block->command = COMMAND_RESET;
    block->transferredSize = 0;
    block->callback = callback;
    idle = issueCommand(DVD_PRIO_MEDIUM, block);
    return idle;
}

BOOL DVDResetRequired() {
    return ResetRequired;
}

s32 DVDGetCommandBlockStatus(const DVDCommandBlock* block) {
    BOOL enabled;
    s32 retVal;
    DVDCommandBlock* next;

    enabled = OSDisableInterrupts();

    if (((volatile DVDCommandBlock*)block)->state == DVD_STATE_COVER_CLOSED) {
        retVal = DVD_STATE_BUSY;
    }
    else if (((volatile DVDCommandBlock*)block)->state == DVD_STATE_COVER_OPENED) {
        retVal = DVD_STATE_NO_DISK;
    }
    else if (executing == &__DVDStopMotorCommandBlock) {
        next = __DVDGetNextWaitingQueue();
        if (next) {
            if(block == next) {
                retVal = DVD_STATE_BUSY;
            }
            else {
                retVal = ((volatile DVDCommandBlock*)block)->state;
            }
        }
        else {
            if (block == &__DVDStopMotorCommandBlock) {
                retVal = DVD_STATE_IDLE;
            }
            else {
                retVal = ((volatile DVDCommandBlock*)block)->state;
            }
        }
    }
    else {
        retVal = ((volatile DVDCommandBlock*)block)->state;
    }

    OSRestoreInterrupts(enabled);

    return retVal;
}

s32 DVDGetDriveStatus() {
    BOOL enabled;
    s32 retVal;

    enabled = OSDisableInterrupts();

    if (FatalErrorFlag) {
        retVal = DVD_STATE_FATAL;
    }
    else if (PausingFlag) {
        retVal = DVD_STATE_PAUSED;
    }
    else {
        if (executing == NULL) {
            retVal = DVD_STATE_IDLE;
        }
        else if (executing == &DummyCommandBlock) {
            retVal = DVD_STATE_IDLE;
        }
        else {
            retVal = DVDGetCommandBlockStatus(executing);
        }
    }

    OSRestoreInterrupts(enabled);

    return retVal;
}

s32 __DVDGetDriveStatus() {
    BOOL enabled;
    s32 retVal;

    enabled = OSDisableInterrupts();

    if (FatalErrorFlag) {
        retVal = DVD_STATE_FATAL;
    }
    else if (PausingFlag) {
        retVal = DVD_STATE_PAUSED;
    }
    else  {
        if (executing == (DVDCommandBlock*)NULL) {
            retVal = DVD_STATE_IDLE;
        }
        else if (executing == &DummyCommandBlock) {
            retVal = DVD_STATE_IDLE;
        }
        else if (executing == &__DVDStopMotorCommandBlock) {
            retVal = DVD_STATE_BUSY;
        }
        else {
            retVal = executing->state;
        }
    }

    OSRestoreInterrupts(enabled);

    return retVal;
}

static BOOL __DVDLowBreak() {
    Breaking = TRUE;
    return TRUE;
}

void DVDPause() {
    BOOL level = OSDisableInterrupts();
    PauseFlag = TRUE;

    if (executing == NULL) {
        PausingFlag = TRUE;
    }

    OSRestoreInterrupts(level);
}

void DVDResume() {
    BOOL enabled = OSDisableInterrupts();
    PauseFlag = FALSE;

    if (PausingFlag) {
        PausingFlag = FALSE;
        stateReady();
    }

    OSRestoreInterrupts(enabled);
}

BOOL DVDCancelAsync(DVDCommandBlock* block, DVDCommandCallback callback) {
    BOOL enabled;
    DVDCommandBlock* finished;

    enabled = OSDisableInterrupts();

    switch (block->state) {
        case DVD_STATE_FATAL:
        case DVD_STATE_IDLE:
        case DVD_STATE_CANCELED: {
            if (callback) {
                callback(DVD_RESULT_OK, block);
            }
            break;
        }
        case DVD_STATE_BUSY: {
            if (Canceling) {
                OSRestoreInterrupts(enabled);
                return FALSE;
            }

            Canceling = TRUE;
            CancelCallback = callback;

            if (block->command == COMMAND_BSREAD
            || block->command == COMMAND_READ_UNENCRYPTED 
            || block->command == COMMAND_OPEN_PARTITION
            || block->command == COMMAND_GET_PARTITION_PARAMS
            || block->command == COMMAND_OPEN_PARTITION_WITH_TMD
            || block->command == COMMAND_READ) {
                __DVDLowBreak();
            }

            break;
        }
        case DVD_STATE_WAITING: {
            __DVDDequeueWaitingQueue(block);
            block->state = DVD_STATE_CANCELED;

            if (block->callback) {
                block->callback(DVD_RESULT_CANCELED, block);
            }

            if (callback) {
                callback(DVD_RESULT_OK, block);
            }

            break;
        }
        case DVD_STATE_COVER_CLOSED: {
            switch (block->command) {
                case COMMAND_BSREAD:
                case COMMAND_READID:
                case COMMAND_AUDIO_BUFFER_CONFIG:
                case COMMAND_BS_CHANGE_DISK:
                case COMMAND_READ_UNENCRYPTED:
                case COMMAND_OPEN_PARTITION:
                case COMMAND_SET_MAX_ROTATION:
                case COMMAND_GET_PARTITION_PARAMS:
                case COMMAND_OPEN_PARTITION_WITH_TMD: {
                    if (callback) {
                        callback(DVD_RESULT_OK, block);
                    }
                    break;
                }
                case COMMAND_READ:
                case COMMAND_SEEK: {
                    if (__OSInIPL) {
                        finished = executing;
                        executing = &DummyCommandBlock;
                        block->state = DVD_STATE_CANCELED;

                        if (block->callback) {
                            block->callback(DVD_RESULT_CANCELED, block);
                        }

                        if (callback) {
                            callback(DVD_RESULT_OK, block);
                        }

                        stateReady();
                        break;
                    }
                }
                default: {
                    if (Canceling) {
                        OSRestoreInterrupts(enabled);
                        return FALSE;
                    }

                    Canceling = TRUE;
                    CancelCallback = callback;
                    break;
                }
            }
            break;
        }
        case DVD_STATE_NO_DISK:
        case DVD_STATE_COVER_OPENED:
        case DVD_STATE_WRONG_DISK_ID:
        case DVD_STATE_7:
        case DVD_STATE_DISK_ERROR: {
            if (!WaitingForCoverClose && !WaitingForCoverOpen) {
                OSRestoreInterrupts(enabled);
                return FALSE;
            }
            if (WaitingForCoverOpen) {
                OSCancelAlarm(&CoverAlarm);
                WaitingForCoverOpen = FALSE;
            }
            if (block->state == DVD_STATE_NO_DISK) {
                ResumeFromHere = RESUME_POINT_NO_DISK;
            }
            if (block->state == DVD_STATE_COVER_OPENED) {
                ResumeFromHere = RESUME_POINT_COVER_OPENED;
            }
            if (block->state == DVD_STATE_WRONG_DISK_ID) {
                ResumeFromHere = RESUME_POINT_WRONG_DISK_ID;
            }
            if (block->state == DVD_STATE_DISK_ERROR) {
                ResumeFromHere = RESUME_POINT_DISK_ERROR;
            }
            if (block->state == DVD_STATE_7) {
                ResumeFromHere = RESUME_POINT_7;
            }

            finished = executing;
            executing = &DummyCommandBlock;
            block->state = DVD_STATE_CANCELED;

            if (block->callback) {
                block->callback(DVD_RESULT_CANCELED, block);
            }

            if (callback) {
                callback(DVD_RESULT_OK, block);
            }

            stateReady();
            break;
        }
        case DVD_STATE_MOTOR_STOPPED: {
            finished = executing;
            executing = &DummyCommandBlock;
            block->state = DVD_STATE_CANCELED;

            if (block->callback) {
                block->callback(DVD_RESULT_CANCELED, block);
            }

            if (callback) {
                callback(DVD_RESULT_OK, block);
            }

            stateReady();
            break;
        }
    }

    OSRestoreInterrupts(enabled);
    return TRUE;
}

s32 DVDCancel(DVDCommandBlock* block) {
    BOOL result;
    s32 state;
    u32 command;
    BOOL enabled;
    
    result = DVDCancelAsync(block, cbForCancelSync);

    if (result == FALSE) {
        return DVD_RESULT_FATAL;
    }

    enabled = OSDisableInterrupts();

    while (TRUE) {
        state = ((volatile DVDCommandBlock*)block)->state;

        if (state == DVD_STATE_IDLE || state == DVD_STATE_FATAL || state == DVD_STATE_CANCELED) {
            break;
        }

        if (state == DVD_STATE_COVER_CLOSED) {
            command = ((volatile DVDCommandBlock*)block)->command;

            if (command == COMMAND_BSREAD || command == COMMAND_READID
            || command == COMMAND_AUDIO_BUFFER_CONFIG
            || command == COMMAND_READ_UNENCRYPTED
            || command == COMMAND_OPEN_PARTITION
            || command == COMMAND_GET_PARTITION_PARAMS
            || command == COMMAND_OPEN_PARTITION_WITH_TMD
            || command == COMMAND_BS_CHANGE_DISK
            || command == COMMAND_SET_MAX_ROTATION) {
                break;
            }
        }

        OSSleepThread(&__DVDThreadQueue);
    }

    OSRestoreInterrupts(enabled);
    return DVD_RESULT_OK;
}

static void cbForCancelSync(s32 result, DVDCommandBlock* block) {
    OSWakeupThread(&__DVDThreadQueue);
}

BOOL DVDCancelAllAsync(DVDCommandCallback callback) {
    BOOL enabled, retVal;
    DVDCommandBlock* p;

    enabled = OSDisableInterrupts();
    DVDPause();

    while ((p = __DVDPopWaitingQueue()) != 0) {
        DVDCancelAsync(p, NULL);
    }

    if (executing) {
        retVal = DVDCancelAsync(executing, callback);
    }
    else {
        retVal = TRUE;
        if (callback) {
            callback(DVD_RESULT_OK, NULL);
        }
    }

    DVDResume();
    OSRestoreInterrupts(enabled);
    return retVal;
}

DVDDiskID* DVDGetCurrentDiskID() {
    return (DVDDiskID*)OSPhysicalToCached(OS_ADDR_MEMORY_MAP_PART_1);
}

BOOL __DVDGetCoverStatusAsync(DVDCommandBlock* block, DVDCommandCallback callback) {
    BOOL idle;
    block->command = COMMAND_GET_COVER_STATUS;
    block->transferredSize = 0;
    block->callback = callback;
    idle = issueCommand(DVD_PRIO_MEDIUM, block);
    return idle;
}

static void __BS2DVDLowCallback(u32 type) {
    __BS2DVDLowIntType = type;
}

u32 __DVDGetCoverStatus() {
    u32 reg;
    __BS2DVDLowIntType = 0;
    DVDLowPrepareCoverRegister(__BS2DVDLowCallback);

    while (!__BS2DVDLowIntType) { }

    if (!(__BS2DVDLowIntType & 1)) {
        return DVD_COVER_BUSY;
    }

    reg = DVDLowGetCoverRegister();

    if (__OSGetSystemTime() - LastResetEnd < OSMillisecondsToTicks(100)) {
        return DVD_COVER_BUSY;
    }
    else if (reg & DVD_INTTYPE_TC) {
        return DVD_COVER_OPENED;
    }
    else {
        return DVD_COVER_CLOSED;
    }
}

void __DVDResetWithNoSpinup() {
    __BS2DVDLowIntType = 0;
    DVDLowSetSpinupFlag(FALSE);
    DVDLowReset(__BS2DVDLowCallback);

    while (!__BS2DVDLowIntType) {

    }
}

void __DVDPrepareResetAsync(DVDCommandCallback callback) {
    BOOL enabled = OSDisableInterrupts();

    __DVDClearWaitingQueue();

    if (Canceling) {
        CancelCallback = callback;
    }
    else {
        if (executing != NULL) {
            executing->callback = NULL;
        }

        DVDCancelAllAsync(callback);
    }

    OSRestoreInterrupts(enabled);
}

static void Callback(s32 result, DVDCommandBlock* block) {
    Prepared = TRUE;
}

void __DVDPrepareReset() {
    OSDisableInterrupts();

    Prepared = FALSE;

    __DVDPrepareResetAsync(Callback);
    OSEnableInterrupts();

    while (Prepared != TRUE) { }
}

BOOL __DVDTestAlarm(OSAlarm* alarm) {
    if (alarm == &ResetAlarm) {
        return TRUE;
    }
    return __DVDLowTestAlarm(alarm);
}

BOOL DVDOpenPartitionAsync(DVDCommandBlock* block, void* addr, u32 offset, DVDCommandCallback callback) {
    BOOL idle;
    block->command = COMMAND_OPEN_PARTITION;
    block->addr = addr;
    block->offset = offset;
    block->transferredSize = 0;
    block->callback = callback;
    idle = issueCommand(DVD_PRIO_MEDIUM, block);
    return idle;
}

BOOL DVDClosePartitionAsync(DVDCommandBlock* block, DVDCommandCallback callback) {
    BOOL idle;
    block->command = COMMAND_CLOSE_PARTITION;
    block->transferredSize = 0;
    block->callback = callback;
    idle = issueCommand(DVD_PRIO_MEDIUM, block);
    return idle;
}

BOOL DVDUnencryptedReadAbsAsyncForBS(DVDCommandBlock* block, void* addr, s32 length, u32 offset, DVDCommandCallback callback) {
    BOOL idle;
    block->command = COMMAND_READ_UNENCRYPTED;
    block->addr = addr;
    block->length = length;
    block->offset = offset;
    block->transferredSize = 0;
    block->callback = callback;
    idle = issueCommand(DVD_PRIO_MEDIUM, block);
    return idle;
}

BOOL __DVDStopMotorAsync(DVDCommandBlock* block, DVDCommandCallback callback) {
    return TRUE;
}

void __DVDRestartMotor() {
    return;
}

BOOL DVDDownRotationAsync(DVDCommandBlock* block, DVDCommandCallback callback) {
    BOOL idle;
    block->command  = COMMAND_SET_MAX_ROTATION;
    block->callback = callback;
    idle = issueCommand(DVD_PRIO_MEDIUM, block);
    return idle;
}

BOOL DVDGetPartitionParamsAsync(DVDCommandBlock* block, DVDPartitionParams* params, u32 offset, DVDCommandCallback callback) {
    BOOL idle;

    params->numTmdBytes    = 0;
    params->numCertBytes   = 0;
    params->dataWordOffset = 0;

    block->command = COMMAND_GET_PARTITION_PARAMS;
    block->addr = params;
    block->offset = offset;
    block->transferredSize = 0;
    block->callback = callback;
    idle = issueCommand(DVD_PRIO_MEDIUM, block);
    return idle;
}

BOOL DVDOpenPartitionWithParamsAsync(DVDCommandBlock* block, DVDPartitionParams* params, u32 offset, DVDCommandCallback callback) {
    BOOL idle;
    block->command = COMMAND_OPEN_PARTITION_WITH_TMD;
    block->addr = params;
    block->offset = offset;
    block->transferredSize = 0;
    block->callback = callback;
    idle = issueCommand(DVD_PRIO_MEDIUM, block);
    return idle;
}
