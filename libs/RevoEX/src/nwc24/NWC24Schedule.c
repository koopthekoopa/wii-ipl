#include <revolution/nwc24.h>
#include <private/nwc24.h>

#include <revolution/os.h>

#include <private/nand.h>

#include <string.h>

#define CHECK_CALLING_STATUS(block) CheckCallingStatus(__FUNCTION__, block)

static u32 nwc24ScdInitialized = 0;
static s32 nwc24ScdSuspendCnt = 0;
static s32 nwc24ScdOpenCnt = 0;

static OSMutex nwc24ScdCommandMutex;
static OSMutex nwc24ScdCounterMutex;

static s32 nwc24ScdCommonBuffer[8] ALIGN32;
static s32 nwc24ScdCommonResult[8] ALIGN32;

static NWC24ScdStat nwc24ScdStatBuf ALIGN32;

static NWC24Err ExecSuspendScheduler() NO_INLINE;
static NWC24Err ExecTrySuspendScheduler(u32 flags);
static NWC24Err ExecResumeScheduler() NO_INLINE;
static NWC24Err ExecNoParamCommand(const char* funcName, s32 command, s32* exErr);

static void InitScdMutex();

static void LockRight();
static BOOL TryLockRight();
static void UnlockRight();

static void LockCounters();
static BOOL TryLockCounters();
static void UnlockCounters();

static NWC24Err CheckCallingStatus(const char* funcName, BOOL permitBlocking);

s32 NWC24SuspendScheduler() {
    s32 count;

    LockCounters();
    {
        count = ExecSuspendScheduler();
        if (count >= 0) {
            nwc24ScdSuspendCnt++;
            count -= nwc24ScdOpenCnt;
        }
    }
    UnlockCounters();

    return count;
}

s32 NWC24ResumeScheduler() {
    s32 count;

    LockCounters();
    {
        if (nwc24ScdOpenCnt > 0 && nwc24ScdSuspendCnt == 0) {
            count = 0;
        }
        else {
            count = ExecResumeScheduler();

            if (nwc24ScdSuspendCnt > 0) {
                nwc24ScdSuspendCnt--;
                count -= nwc24ScdOpenCnt;
            }
        }
    }
    UnlockCounters();

    return count;
}

NWC24Err NWC24iGetSchedulerStat(NWC24ScdStat* scdStat, u32 scdStatSize) {
    IOSFd       fd;
    NWC24Err    result;
    NWC24Err    resultClose;

    if (scdStatSize > sizeof(NWC24ScdStat)) {
        return NWC24_ERR_OVERFLOW;
    }

    if (OSGetCurrentThread() == 0) {
        return NWC24_ERR_FATAL;
    }

    LockRight();
    {
        result = NWC24OpenResourceManager("/dev/net/kd/request", &fd, 0);

        if (result >= 0) {
            result = NWC24IoctlResourceManager(fd, 30, NULL, 0,
                                                            scdStat, scdStatSize);

            if (result >= 0) {
                result = scdStat->result;
            }

            resultClose = NWC24CloseResourceManager(fd);
            if (result >= 0) { // @BUG: Should compare `resultClose`
                result = resultClose;
            }
        }

        if (scdStatSize > 0x10) {
            NWC24iSetNewMsgArrived(scdStat->newMsgFlag);
        }
    }
    UnlockRight();

    return result;
}

NWC24Err NWC24iSetScriptMode(int mode) {
    IOSFd       fd;
    NWC24Err    result;
    NWC24Err    resultClose;

    result = CHECK_CALLING_STATUS(FALSE);
    if (result < 0) {
        return result;
    }

    LockRight();
    // But... it was already memset'd in LockRight()...
    memset(&nwc24ScdCommonBuffer, 0, sizeof(nwc24ScdCommonBuffer));
    {
        result = NWC24OpenResourceManager("/dev/net/kd/request", &fd, 0);

        if (result >= 0) {
            *(int*)(&nwc24ScdCommonBuffer[0]) = mode;

            result = NWC24IoctlResourceManager(fd, 34, nwc24ScdCommonBuffer, sizeof(nwc24ScdCommonBuffer),
                                                            nwc24ScdCommonResult, sizeof(nwc24ScdCommonResult));

            if (result >= 0) {
                result = *(s32*)(&nwc24ScdCommonResult[0]);
            }

            resultClose = NWC24CloseResourceManager(fd);
            if (result >= 0) {
                result = resultClose;
            }
        }
    }
    UnlockRight();

    return result;
}

NWC24Err NWC24AdjustUniversalTime() {
    return NWC24ExecDownloadTask(0x80000000, 0, 0);
}

NWC24Err NWC24ExecDownloadTask(u32 flags, u16 taskId, u32 subTaskMask) {
    static const char* pTempName = "dlcnt.bin";

    NWC24Err    result = NWC24_OK;

    BOOL        saveMail;
    u32         numErrors;

    NANDStatus  status;

    saveMail = result;

    if (NANDPrivateGetStatus(pTempName, &status) == NAND_RESULT_OK) {
        NANDPrivateDelete(pTempName);
    }

    result = NWC24iGetSchedulerStat(&nwc24ScdStatBuf, sizeof(nwc24ScdStatBuf));
    if (result < NWC24_OK) {
        return result;
    }

    numErrors = nwc24ScdStatBuf.numErrors;

    result = NWC24iDownloadNowEx(&saveMail, flags, taskId, subTaskMask);
    if (result >= NWC24_OK && saveMail) {
        result = NWC24iSaveMailNow();
    }
    else if (result == NWC24_ERR_PROTECTED) {
        // Stripped out but left out if statement
        u32 dummy = 0;
    }

    if (result < NWC24_OK) {
        if (NWC24iGetSchedulerStat(&nwc24ScdStatBuf, sizeof(nwc24ScdStatBuf)) >= NWC24_OK) {
            NWC24iSetErrorCode(nwc24ScdStatBuf.errorLog[numErrors]);
        }
        else {
            NWC24iSetErrorCode(result - 107200);
        }
    }
    else {
        NWC24iSetErrorCode(0);
    }

    return result;
}

NWC24Err NWC24iRequestGenerateUserId(NWC24UserId* pId, u32* arg1) {
    IOSFd       fd;
    NWC24Err    result;
    NWC24Err    resultClose;

    result = CHECK_CALLING_STATUS(TRUE);
    if (result < 0) {
        return result;
    }

    LockRight();
    {
        result = NWC24OpenResourceManager("/dev/net/kd/request", &fd, 0);

        if (result >= 0) {
            result = NWC24IoctlResourceManager(fd, NWC24_IOCTL_GENERATE_USER_ID, NULL, 0,
                                                                                    nwc24ScdCommonResult, sizeof(nwc24ScdCommonResult));

            if (result >= 0) {
                result = *(s32*)(&nwc24ScdCommonResult[0]);

                if (result == NWC24_OK || result == NWC24_ERR_ID_GENERATED || result == NWC24_ERR_ID_REGISTERED) {
                    if (pId != (void*)NULL) {
                        *pId = *(NWC24UserId*)(&nwc24ScdCommonResult[1]);
                    }
                    if (arg1 != (void*)NULL) {
                        *arg1 = *(u32*)(&nwc24ScdCommonResult[3]);
                    }
                }
            }

            resultClose = NWC24CloseResourceManager(fd);
            if (result >= 0) {
                result = resultClose;
            }
        }
    }
    UnlockRight();

    return result;
}

NWC24Err NWC24iRequestRegisterUserId() {
    IOSFd       fd;
    NWC24Err    result;
    NWC24Err    resultClose;

    result = CHECK_CALLING_STATUS(TRUE);
    if (result < 0) {
        return result;
    }

    LockRight();
    {
        result = NWC24OpenResourceManager("/dev/net/kd/request", &fd, 0);

        if (result >= 0) {
            result = NWC24IoctlResourceManager(fd, 16, NULL, 0,
                                                        nwc24ScdCommonResult, sizeof(nwc24ScdCommonResult));

            if (result >= 0) {
                result = *(s32*)(&nwc24ScdCommonResult[0]);
            }

            resultClose = NWC24CloseResourceManager(fd);
            if (result >= 0) {
                result = resultClose;
            }
        }
    }
    UnlockRight();

    return result;
}

NWC24Err NWC24iStartupSocket(s32* pSoErr) {
    return ExecNoParamCommand(0, 6, pSoErr);
}

NWC24Err NWC24iCleanupSocket(s32* pSoErr) {
    return ExecNoParamCommand(0, 7, pSoErr);
}

NWC24Err NWC24iLockSocket() {
    return ExecNoParamCommand(0, 8, NULL);
}

NWC24Err NWC24iUnlockSocket() {
    return ExecNoParamCommand(0, 9, NULL);
}

NWC24Err NWC24iSaveMailNow() {
    NWC24Err result = CHECK_CALLING_STATUS(FALSE);
    if (result < 0) {
        return result;
    }
    return ExecNoParamCommand(0, 13, NULL);
}

NWC24Err NWC24iDownloadNowEx(BOOL* saveMail, u32 flags, u16 taskId, u32 subTaskMask) {
    IOSFd       fd;
    NWC24Err    result;
    NWC24Err    resultClose;

    result = CHECK_CALLING_STATUS(FALSE);
    if (result < 0) {
        return result;
    }

    LockRight();
    {
        result = NWC24OpenResourceManager("/dev/net/kd/request", &fd, 0);

        if (result >= 0) {
            *(u32*)(&nwc24ScdCommonBuffer[0]) = flags;
            *(u32*)(&nwc24ScdCommonBuffer[1]) = taskId;
            *(u32*)(&nwc24ScdCommonBuffer[2]) = subTaskMask;
            result = NWC24IoctlResourceManager(fd, 14, nwc24ScdCommonBuffer, sizeof(nwc24ScdCommonBuffer),
                                                            nwc24ScdCommonResult, sizeof(nwc24ScdCommonResult));

            if (result >= 0) {
                result = *(s32*)(&nwc24ScdCommonResult[0]);

                *saveMail = *(s32*)(&nwc24ScdCommonResult[2]);
            }

            resultClose = NWC24CloseResourceManager(fd);
            if (result >= 0) {
                result = resultClose;
            }
        }
    }
    UnlockRight();

    return result;
}

NWC24Err NWC24iTrySuspendForOpenLib() {
    NWC24Err result;

    if (!TryLockCounters()) {
        return NWC24_ERR_MUTEX;
    }

    result = ExecTrySuspendScheduler(0);
    if (result >= 0) {
        nwc24ScdOpenCnt++;
        result = NWC24_OK;
    }

    UnlockCounters();
    return result;
}

NWC24Err NWC24iResumeForCloseLib() {
    NWC24Err result;

    LockCounters();
    {
        result = ExecResumeScheduler();
        if (result >= 0) {
            nwc24ScdOpenCnt--;
            result = NWC24_OK;
        }
    }
    UnlockCounters();

    return result;
}

static NWC24Err ExecSuspendScheduler() {
    return ExecNoParamCommand(NULL, NWC24_IOCTL_SUSPEND_SCHEDULER, NULL);
}

static NWC24Err ExecTrySuspendScheduler(u32 flags) {
    IOSFd       fd;
    NWC24Err    result;
    NWC24Err    resultClose;

    result = CHECK_CALLING_STATUS(TRUE);
    if (result < 0) {
        return result;
    }

    if (!TryLockRight()) {
        return NWC24_ERR_MUTEX;
    }

    result = NWC24OpenResourceManager("/dev/net/kd/request", &fd, 0);

    if (result >= 0) {
        *(u32*)(&nwc24ScdCommonBuffer[0]) = flags;

        result = NWC24IoctlResourceManager(fd, NWC24_IOCTL_TRY_SUSPEND_SCHEDULER, nwc24ScdCommonBuffer, sizeof(nwc24ScdCommonBuffer),
                                                                                    nwc24ScdCommonResult, sizeof(nwc24ScdCommonResult));

        if (result >= 0) {
            result = ((s32*)nwc24ScdCommonResult)[0];
        }

        resultClose = NWC24CloseResourceManager(fd);
        if (resultClose < 0) {
            result = resultClose;
        }
    }

    UnlockRight();
    return result;
}

static NWC24Err ExecResumeScheduler() {
    return ExecNoParamCommand(NULL, NWC24_IOCTL_RESUME_SCHEDULER, NULL);
}

static NWC24Err ExecNoParamCommand(const char* funcName, s32 command, s32* exErr) {
    IOSFd fd;
    NWC24Err result;
    NWC24Err resultClose;

    if (OSGetCurrentThread() == 0) {
        return NWC24_ERR_FATAL;
    }

    LockRight();
    {
        result = NWC24iOpenResourceManager(funcName, "/dev/net/kd/request", &fd,
                                           0);

        if (result >= 0) {
            result = NWC24iIoctlResourceManager(funcName, fd, command, NULL, 0,
                                                nwc24ScdCommonResult,
                                                sizeof(nwc24ScdCommonResult));

            if (result >= 0) {
                result = ((s32*)nwc24ScdCommonResult)[0];

                if (result == NWC24_ERR_FAILED ||
                    result == NWC24_ERR_CONFIG_NETWORK) {

                    if (exErr != (void*)NULL) {
                        *exErr = *(u32*)(&nwc24ScdCommonResult[1]);
                    }
                }
            }

            resultClose = NWC24iCloseResourceManager(funcName, fd);
            if (resultClose < 0) {
                result = resultClose;
            }
        }
    }
    UnlockRight();

    return result;
}

static void InitScdMutex() {
    BOOL enabled = OSDisableInterrupts();

    if (!(nwc24ScdInitialized & 1)) {
        OSInitMutex(&nwc24ScdCommandMutex);
        OSInitMutex(&nwc24ScdCounterMutex);

        memset(nwc24ScdCommonBuffer, 0, sizeof(nwc24ScdCommonBuffer));
        memset(nwc24ScdCommonResult, 0, sizeof(nwc24ScdCommonResult));

        nwc24ScdInitialized |= 1;
    }

    OSRestoreInterrupts(enabled);
}

static void LockRight() {
    if (!(nwc24ScdInitialized & 1)) {
        InitScdMutex();
    }

    OSLockMutex(&nwc24ScdCommandMutex);
}

static BOOL TryLockRight() {
    if (!(nwc24ScdInitialized & 1)) {
        InitScdMutex();
    }

    return OSTryLockMutex(&nwc24ScdCommandMutex);
}

static void UnlockRight() {
    OSUnlockMutex(&nwc24ScdCommandMutex);
}

static void LockCounters() {
    if (!(nwc24ScdInitialized & 1)) {
        InitScdMutex();
    }

    OSLockMutex(&nwc24ScdCounterMutex);
}

static BOOL TryLockCounters() {
    if (!(nwc24ScdInitialized & 1)) {
        InitScdMutex();
    }

    return OSTryLockMutex(&nwc24ScdCounterMutex);
}

static void UnlockCounters() {
    OSUnlockMutex(&nwc24ScdCounterMutex);
}

static NWC24Err CheckCallingStatus(const char* funcName, BOOL permitBlocking) {
    if (OSGetCurrentThread() == 0) {
        return NWC24_ERR_FATAL;
    }

    if (NWC24IsMsgLibOpened() || NWC24IsMsgLibOpenedByTool()) {
        return NWC24_ERR_LIB_OPENED;
    }

    if (!permitBlocking && NWC24IsMsgLibOpenBlocking()) {
        return NWC24_ERR_BUSY;
    }

    return NWC24_OK;
}
