#include <revolution/nwc24.h>
#include <private/nwc24.h>

#include <revolution/verdefs.h>
#include <revolution/os.h>

#define MANAGE_ERROR_CODE_BASE 109000

enum {
    NWC24_LIB_CLOSED,
    NWC24_LIB_OPENED,
    NWC24_LIB_OPENED_BY_TOOL,
    NWC24_LIB_BLOCKED
};

enum {
    NWC24_FAIL_SFL = (1 << 0),
    NWC24_FAIL_DL_TASK = (1 << 1),
    NWC24_FAIL_FATAL = (1 << 2)
};

SDKDefineVersion(NWC24, "Dec 12 2008", "03:06:06");

struct NWC24Work* NWC24WorkP = NULL;

static s32 Opened = NWC24_LIB_CLOSED;
static u32 YouGotMail = 0;
static u32 GlobalErrorCode = 0;
static BOOL Registered = FALSE;

static u8 InternalStatBuf[32];

static NWC24Err NWC24OpenLibInternal(NWC24Work* work, s32 state);

void NWC24iRegister() {
    if (Registered) {
        return;
    }

    OSRegisterVersion(GetVersion(NWC24));
    Registered = TRUE;
}

NWC24Err NWC24OpenLib(void* work) {
    if (Opened == NWC24_LIB_OPENED_BY_TOOL) {
        return NWC24_ERR_BUSY;
    }

    return NWC24OpenLibInternal((NWC24Work*)work, NWC24_LIB_OPENED);
}

NWC24Err NWC24OpenMsgLib(void* work) {
    if (Opened == NWC24_LIB_OPENED_BY_TOOL) {
        return NWC24_ERR_BUSY;
    }

    return NWC24OpenLibInternal((NWC24Work*)work, NWC24_LIB_OPENED);
}

static NWC24Err NWC24OpenLibInternal(NWC24Work* work, s32 state) {
    NWC24Err result;
    NWC24Err failErr;
    u32 failFlag;

    NWC24iSetErrorCode(NWC24_OK);

    if (!VFIsAvailable()) {
        return NWC24_ERR_FATAL;
    }

    if (NWC24IsMsgLibOpened()) {
        return NWC24_ERR_LIB_OPENED;
    }

    if (NWC24IsMsgLibOpenBlocking()) {
        return NWC24_ERR_BUSY;
    }

    if (work == NULL) {
        return NWC24_ERR_NULL;
    }

    if ((u32)work % 32 != 0) {
        return NWC24_ERR_ALIGNMENT;
    }

    result = NWC24iTrySuspendForOpenLib();
    if (result == NWC24_OK) {
        NWC24iRegister();

        YouGotMail &= ~(1 << NWC24_MSGTYPE_RVL_MENU_SHARED);
        NWC24WorkP = work;

        NWC24InitBase64Table(NWC24WorkP->base64Work);

        failFlag = 0;
        failErr = NWC24_OK;

        result = NWC24iConfigOpen();
        if (result != NWC24_OK) {
            failErr = result;
            failFlag |= NWC24_FAIL_FATAL;
        }

        result = NWC24iOpenMBox();
        if (result != NWC24_OK) {
            failErr = result;
            failFlag |= NWC24_FAIL_FATAL;
        }

        result = NWC24iOpenFriendList();
        if (result != NWC24_OK) {
            failErr = result;
            failFlag |= NWC24_FAIL_FATAL;
        }

        result = NWC24iOpenSecretFriendList();
        if (result != NWC24_OK) {
            failErr = result;

            if (result == NWC24_ERR_FILE_NOEXISTS) {
                failFlag |= NWC24_FAIL_FATAL;
            }
            else {
                failFlag |= NWC24_FAIL_SFL;
            }
        }

        result = NWC24iOpenDlTaskList();
        if (result < 0) {
            failErr = result;

            if (result == NWC24_ERR_FILE_NOEXISTS) {
                failFlag |= NWC24_FAIL_FATAL;
            }
            else {
                failFlag |= NWC24_FAIL_DL_TASK;
            }
        }

        if (failFlag == (NWC24_FAIL_SFL | NWC24_FAIL_DL_TASK)) {
            failErr = NWC24_ERR_OLD_SYSTEM;
        }

        if (failFlag != 0) {
            NWC24WorkP = NULL;
            NWC24iResumeForCloseLib();
            result = failErr;
        }
        else {
            Opened = state;
            return NWC24_OK;
        }
    }

    switch (result) {
        case NWC24_ERR_OLD_SYSTEM:
        case NWC24_ERR_FILE_BROKEN:
        case NWC24_ERR_INTERNAL_VF:
        case NWC24_ERR_INTERNAL_IPC:
        case NWC24_ERR_NAND_CORRUPT:
        case NWC24_ERR_INPROGRESS:
        case NWC24_ERR_BUSY:
        case NWC24_ERR_MUTEX:
        case NWC24_ERR_FILE_OTHER:
        case NWC24_ERR_FILE_NOEXISTS:
        case NWC24_ERR_FILE_WRITE:
        case NWC24_ERR_FILE_READ:
        case NWC24_ERR_FILE_CLOSE:
        case NWC24_ERR_FILE_OPEN:
        case NWC24_ERR_BROKEN:
        case NWC24_ERR_FATAL: {
            NWC24iSetErrorCode(NWC24iMakeCode(NWC24_ERRCODE_1090XX, result));
            break;
        }
        default: {
            break;
        }
    }

    return result;
}

NWC24Err NWC24CloseLib() {
    s32 result;

    if (Opened != NWC24_LIB_OPENED) {
        return NWC24_ERR_LIB_NOT_OPENED;
    }

    result = NWC24iConfigFlush();
    if (result != NWC24_OK) {
        return result;
    }

    result = NWC24iCloseDlTaskList();
    if (result < 0) {
        return result;
    }

    result = NWC24iResumeForCloseLib();
    if (result != NWC24_OK) {
        return result;
    }

    NWC24WorkP = NULL;
    Opened = NWC24_LIB_CLOSED;
    return result;
}

NWC24Err NWC24CloseMsgLib() {
    s32 result;

    if (Opened != NWC24_LIB_OPENED) {
        return NWC24_ERR_LIB_NOT_OPENED;
    }

    result = NWC24iConfigFlush();
    if (result != NWC24_OK) {
        return result;
    }

    result = NWC24iCloseDlTaskList();
    if (result < 0) {
        return result;
    }

    result = NWC24iResumeForCloseLib();
    if (result != NWC24_OK) {
        return result;
    }

    NWC24WorkP = NULL;
    Opened = NWC24_LIB_CLOSED;
    return result;
}

BOOL NWC24IsMsgLibOpened(void) {
    return Opened == NWC24_LIB_OPENED;
}

BOOL NWC24IsMsgLibOpenedByTool(void) {
    return Opened == NWC24_LIB_OPENED_BY_TOOL;
}

BOOL NWC24IsMsgLibOpenBlocking(void) {
    return Opened == NWC24_LIB_BLOCKED;
}

NWC24Err NWC24BlockOpenMsgLib(BOOL block) {
    s32 result;
    BOOL enabled;

    result = NWC24_OK;
    enabled = OSDisableInterrupts();

    if (block) {
        if (Opened == NWC24_LIB_CLOSED) {
            Opened = NWC24_LIB_BLOCKED;
        }
        else if (Opened == NWC24_LIB_OPENED) {
            result = NWC24_ERR_LIB_OPENED;
        }
        else {
            result = NWC24_ERR_BUSY;
        }
    }
    else {
        if (Opened == NWC24_LIB_BLOCKED) {
            Opened = NWC24_LIB_CLOSED;
        }
        else {
            result = NWC24_ERR_LIB_NOT_OPENED;
        }
    }

    OSRestoreInterrupts(enabled);
    return result;
}

NWC24Err NWC24iSetNewMsgArrived(u32 flags) {
    YouGotMail |= flags;
    return NWC24_OK;
}

NWC24Err NWC24GetSchedulerError(s32* numErrors, s32* errorCode) {
    static OSTick lastTick;
    OSTick curTick = OSGetTick();
    NWC24Err result;

    if ((lastTick & 0xFFFF0000) == (curTick & 0xFFFF0000)) {
        result = NWC24_OK;
    }
    else {
        lastTick = curTick;
        result = NWC24iGetSchedulerStat((NWC24ScdStat*)InternalStatBuf, sizeof(InternalStatBuf));
    }

    if (result == NWC24_OK) {
        *numErrors = ((NWC24ScdStat*)InternalStatBuf)->numErrors;
        *errorCode = ((NWC24ScdStat*)InternalStatBuf)->lastCriticalError;
    }

    return result;
}

void NWC24iSetErrorCode(s32 code) {
    GlobalErrorCode = code;
}

NWC24Err AnalyzeErrorCode(s32 errorCode, u32 usage, u32* score) {
    char digit[6];
    int i;
    s32 tmp = -errorCode;

    *score = 0;

    // Convert code to strings
    for (i = 0; i < 6; i++) {
        digit[i] = tmp % 10;
        tmp = tmp / 10;
    }

    //If the code is 5XXXX, it is an NCD error
    if (digit[5] == 0 && digit[4] == 5) {
        *score = 60;
        return NWC24_ERR_NETWORK;
    }

    if (digit[3] == 7) {
        if ((usage & 2) == 0) {
            return NWC24_OK;
        }
    }
    else {
        if ((usage & 1) == 0) {
            return NWC24_OK;
        }
    }

    // NWC24 CGI Error handling
    if (digit[5] == 1 && digit[4] == 1) {
        // 3rd digit = 1 means success
        if (digit[2] == 1) {
            return NWC24_OK;
        }

        // XXX407 is a network error
        if (digit[2] == 4 && digit[1] == 0 && digit[0] == 7) {
            *score = 60;
            return NWC24_ERR_NETWORK;
        }

        if ((usage & 1) == 0) {
            return NWC24_OK;
        }

        *score = 30;
        return NWC24_ERR_SERVER;
    }

    // NWC24 Generic Error handling
    if (digit[5] == 1 && digit[4] == 0) {
        if ((usage & 1) == 0) {
            return NWC24_OK;
        }

        // Get the NWC24Err code
        tmp = digit[0] + (digit[1] * 10);
        // Handle 3rd digit
        switch (digit[2]) {
            case 0: {
                // Over 70 means success
                if (tmp >= 70) {
                    return NWC24_OK;
                }
                *score = 60;
                switch (tmp) {
                    case 0:
                    case 1:
                    case 2:
                    case 3: {
                        return NWC24_ERR_FATAL;
                    }
                    case 30:
                    case 31: {
                        return NWC24_ERR_NETWORK;
                    }
                    case 32: {
                        return NWC24_ERR_SERVER;
                    }
                    default: {
                        return NWC24_OK;
                    }
                }
            }
            case 2: {
                switch (-tmp) {
                    case -1: {
                        *score = 60;
                        return NWC24_ERR_FATAL;
                    }
                    case -11:
                    case -45: {
                        return NWC24_OK;
                    }
                    case -31:
                    case -44:
                    case -33: {
                        *score = 60;
                        return NWC24_ERR_NETWORK;
                    }
                    case -32: {
                        *score = 20;
                        return NWC24_ERR_SERVER;
                    }
                    default: {
                        return NWC24_OK;
                    }
                }
                break;
            }
            case 3: {
                switch (tmp) {
                    case 1:
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                    case 9:
                    case 10:
                    case 11:
                    case 12:
                    case 13: {
                        *score = 30;
                        return NWC24_ERR_NETWORK;
                    }
                    case 6:
                    case 7:
                    case 8: {
                        *score = 20;
                        return NWC24_ERR_SERVER;
                    }
                    default: {
                        return NWC24_OK;
                    }
                }
            }
            case 4: {
                switch (tmp) {
                    case 9:
                    case 10:
                    case 11:
                    case 12: {
                        *score = 60;
                        return NWC24_ERR_SERVER;
                    }
                    default: {
                        *score = 20;
                        return NWC24_ERR_NETWORK;
                    }
                }
            }
        }
    }
    return NWC24_OK;
}
