#include <revolution/os.h>

#include <revolution/dvd.h>
#include <private/dvd.h>

#include <revolution/esp.h>

#include <private/ipc.h>
#include <private/ios.h>

#include <stdbool.h>

#include <string.h>

#define DVD_LOW_CTX_MAX 4
#define DVD_LOW_CMD_MAX 4

enum {
    DVD_IOCTL_INQUIRY = 0x12,
    DVD_IOCTL_READ_DISK_ID = 0x70,
    DVD_IOCTL_READ = 0x71,
    DVD_IOCTL_PREPARE_COVER_REGISTER = 0x7A,
    DVD_IOCTL_PREPARE_STATUS_REGISTER = 0x95,
    DVD_IOCTL_CLEAR_COVER_INTERRUPT = 0x86,
    DVD_IOCTL_RESET = 0x8A,
    DVD_IOCTL_CLOSE_PARTITION = 0x8C,
    DVD_IOCTL_UNENCRYPTED_READ = 0x8D,
    DVD_IOCTL_SEEK = 0xAB,
    DVD_IOCTL_SET_MAX_ROTATION = 0xDD,
    DVD_IOCTL_REQUEST_ERROR = 0xE0,
    DVD_IOCTL_STOP_MOTOR = 0xE3,
    DVD_IOCTL_AUDIO_BUFFER_CONFIG = 0xE4,
};

enum {
    DVD_IOCTLV_OPEN_PARTITION = 0x8B,
    DVD_IOCTLV_OPEN_PARTITION_WITH_TMD_AND_TICKET = 0x94,
    DVD_IOCTLV_GET_NO_DISC_PARTITION = 0x90,
    DVD_IOCTLV_GET_NO_DISC_BUFFER_SIZE = 0x92,
};

typedef struct DVDLowContext {
    DVDLowCallback  callback;
    int             callbackType;

    bool            inUse;

    u32             contextMagic;
    u32             contextNum;

    u32             pad[3];
} DVDLowContext;

typedef struct DVDLowRegValues {
    u32 diImmValue;
    u32 diCoverReg;

    u32 pad[6];
} DVDLowRegValues;

typedef struct DVDLowCommand {
    u8  diCmd;
    u8  pad1[3];
    u32 arg[5];
    u32 pad2[2];
} DVDLowCommand;

#define CONTEXT_MAGIC   0xFEEBDAED

IOSFd DiFD = -1;

static u32 coverRegister[8]     ALIGN32;
static u32 statusRegister[8]    ALIGN32;
static u32 coverStatus[8]       ALIGN32;
static u32 statusRegister[8]    ALIGN32;

static DVDLowContext    dvdContexts[4]      ALIGN32;
static DVDLowRegValues  diRegValCache       ALIGN32;
static u32              registerBuf[8]      ALIGN32;
static IOSIoVector      ioVec[10]           ALIGN32;
static s32              lastTicketError[8]  ALIGN32;

static u8               breakRequested;
static DVDLowCommand*   diCommand;

static char*            pathBuf;

static u32              readLength;

static BOOL             spinUpValue;
static u8               DVDLowInitCalled;
static u8               dvdContextsInited;

static s32              freeDvdContext;
static int              freeCommandBuf;

static bool             callbackInProgress;
static bool             requestInProgress;

#define IS_ALIGNED(addr) (((u32)(addr) & 0x1F) == 0)

DECOMP_FORCE_ACTIVE(dvd_broadway_c, dvdContexts);

IOSError doTransactionCallback(IOSError ret, void* context) {
    DVDLowContext* dvdContext = context;

    if (dvdContext->contextMagic != CONTEXT_MAGIC) {
        OSReport("(doTransactionCallback) Error - context mangled!\n");
        dvdContext->contextMagic = CONTEXT_MAGIC;
        goto out;
    }

    requestInProgress = false;

    if (dvdContext->callback != NULL) {
        int callbackArg;
        callbackInProgress = TRUE;
        callbackArg = ret;

        if (breakRequested == TRUE) {
            breakRequested = false;
            callbackArg |= DVD_INTTYPE_BR;
        }

        if (callbackArg & DVD_INTTYPE_TC) {
            readLength = 0;
        }

        dvdContext->callback(callbackArg);
        callbackInProgress = false;
    }

out:
    dvdContext->inUse = false;
    return 0;
}

DECOMP_FORCE_ACTIVE(dvd_broadway_c, "(doCoverCallback) Error - context mangled!\n");

IOSError doPrepareCoverRegisterCallback(IOSError ret, void* context) {
    DVDLowContext* dvdContext;

    requestInProgress = false;

    diRegValCache.diCoverReg = registerBuf[0];
    dvdContext = (DVDLowContext*)context;

    if (dvdContext->contextMagic != CONTEXT_MAGIC) {
        OSReport("(doTransactionCallback) Error - context mangled!\n");
        dvdContext->contextMagic = CONTEXT_MAGIC;
    }
    else {
        if (dvdContext->callback != 0) {
            callbackInProgress = true;

            if (breakRequested == true) {
                breakRequested = false;
                ret |= DVD_INTTYPE_BR;
            }

            dvdContext->callback(ret);
            callbackInProgress = false;
        }
    }

    dvdContext->inUse = false;
    return 0;
}

static void* ddrAllocAligned32(int size) {
    void*   low;
    void*   high;

    if (!IS_ALIGNED(size)) {
        return 0;
    }

    low = IPCGetBufferLo();
    high = IPCGetBufferHi();

    if (!IS_ALIGNED(low)) {
        low = (void*)(((u32)low + 31) & 0x1F);
    }

    if ((u32)low + size > (u32)high) {
        OSReport("(ddrAllocAligned32) Not enough space to allocate %d bytes\n", size);
    }

    IPCSetBufferLo((void*)((u32)low + size));
    return low;
}

static bool allocateStructures() {
    diCommand = ddrAllocAligned32(sizeof(DVDLowCommand) * 4);
    if (diCommand == 0) {
        OSReport("Allocation of diCommand blocks failed\n");
        return false;
    }

    pathBuf = ddrAllocAligned32(32);
    if (pathBuf == 0) {
        OSReport("Allocation of pathBuf failed\n");
        return false;
    }

    return true;    
}

static void initDvdContexts() {
    int i;
    for (i = 0; i < 4; i++) {
        dvdContexts[i].callback = 0;
        dvdContexts[i].callbackType = 0;
        dvdContexts[i].inUse = false;
        dvdContexts[i].contextMagic = CONTEXT_MAGIC;
        dvdContexts[i].contextNum = i;
    }

    freeDvdContext = 0;
}

static inline DVDLowContext* newContext(DVDLowCallback callback, int type) {
    int     returnIndex;
    bool    use = dvdContexts[freeDvdContext].inUse != 0;

    if (use == true)  {
        OSReport("(newContext) ERROR: freeDvdContext.inUse (#%d) is true\n", freeDvdContext);
        OSReport("(newContext) Now spinning in infinite loop\n");
        while (TRUE) {}
    }

    if (dvdContexts[freeDvdContext].contextMagic != CONTEXT_MAGIC) {
        OSReport("(newContext) Something overwrote the context magic - spinning \n");
        while (TRUE) {}
    }

    dvdContexts[freeDvdContext].callback = callback;
    dvdContexts[freeDvdContext].callbackType = type;
    dvdContexts[freeDvdContext].inUse = true;
    returnIndex = freeDvdContext;
    freeDvdContext++;

    if (freeDvdContext >= DVD_LOW_CTX_MAX) {
        freeDvdContext = 0;
    }

    return dvdContexts + returnIndex;
}

static inline void nextCommandBuf(int* bufNum) {
    if (++(*bufNum) >= DVD_LOW_CMD_MAX) {
        *bufNum = 0;
    }
}

bool DVDLowFinalize() {
    IOSError ret = IOS_Close(DiFD);

    if (ret != IPC_RESULT_OK) {
        OSReport("(DVDLowFinish) Error: IOS_Close failed\n");
        return false;
    }

    DVDLowInitCalled = false;

    return true;
}

bool DVDLowInit() {
    IOSError ret;

    if (!DVDLowInitCalled) {
        DVDLowInitCalled = true;
        ret = IPCCltInit();

        if (ret != IPC_RESULT_OK) {
            OSReport("IPCCltInit returned error: %d\n", ret);
            return false;
        }

        if (!allocateStructures()) {
            return false;
        }

        if (!dvdContextsInited) {
            initDvdContexts();
            dvdContextsInited = true;
        }
    }

    strncpy(pathBuf, "/dev/di", 32);
    DiFD = IOS_Open(pathBuf, IPC_ACCESS_NONE);

    if (DiFD >= 0) {
        return true;
    }
    else {
        switch (DiFD) {
            case IPC_RESULT_NOEXISTS: {
                OSReport("(DVDLowInit) Error: IOS_Open failed - pathname '/dev/di' does not exist\n");
                return false;
            }
            case IPC_RESULT_ACCESS: {
                OSReport("(DVDLowInit) Error: IOS_Open failed - calling thread lacks permission\n");
                return false;
            }
            case IPC_RESULT_MAX: {
                OSReport("(DVDLowInit) Error: IOS_Open failed - connection limit has been reached\n");
                return false;
            }
            default: {
                OSReport("(DVDLowInit) IOS_Open failed, errorcode = %d\n", DiFD);
                return false;
            }
        }
    }
}

bool DVDLowReadDiskID(DVDDiskID* diskID, DVDLowCallback callback) {
    DVDLowContext*  dvdContext;
    IOSError        ret;

    requestInProgress = true;

    dvdContext = newContext(callback, 1);

    if (diskID == 0) {
        OSReport("@@@@@@ WARNING - Calling DVDLowReadDiskId with NULL ptr\n");
    }

    nextCommandBuf(&freeCommandBuf);
    diCommand[freeCommandBuf].diCmd = DVD_IOCTL_READ_DISK_ID;

    ret = IOS_IoctlAsync(DiFD, DVD_IOCTL_READ_DISK_ID, &diCommand[freeCommandBuf], sizeof(DVDLowCommand), diskID, sizeof(DVDDiskID), doTransactionCallback, dvdContext);
    if (ret != IPC_RESULT_OK) {
        OSReport("@@@ (DVDLowReadDiskID) IOS_IoctlAsync returned error: %d\n", ret);
        dvdContext->inUse = false;
        return false;
    }

    return true;
}

bool DVDLowOpenPartition(u32 partitionWordOffset, ESTicket* eTicket, u32 numCertBytes, u8* certificates, ESTitleMeta* tmd, DVDLowCallback callback) {
    DVDLowContext*  dvdContext;
    IOSError        ret;
    
    if (eTicket != 0 && !IS_ALIGNED(eTicket)) {
        OSReport("(DVDLowOpenPartition) eTicket memory is unaligned\n");
        return false;
    }

    if (certificates != 0 && !IS_ALIGNED(certificates)) {
        OSReport("(DVDLowOpenPartition) certificates memory is unaligned\n");
        return false;
    }

    if (tmd != 0 && !IS_ALIGNED(tmd)) {
        OSReport("(DVDLowOpenPartition) certificates memory is unaligned\n");
        return false;
    }

    requestInProgress = true;

    dvdContext = newContext(callback, 1);

    nextCommandBuf(&freeCommandBuf);
    diCommand[freeCommandBuf].diCmd = DVD_IOCTLV_OPEN_PARTITION;
    diCommand[freeCommandBuf].arg[0] = partitionWordOffset;

    ioVec[0].base = (u8*)&diCommand[freeCommandBuf];
    ioVec[0].length = sizeof(DVDLowCommand);

    ioVec[1].base = (u8*)eTicket;
    if (eTicket == 0) {
        ioVec[1].length = 0;
    }
    else {
        ioVec[1].length = sizeof(ESTicket);
    }

    ioVec[2].base = (u8*)certificates;
    if (certificates == 0) {
        ioVec[2].length = 0;
    }
    else {
        ioVec[2].length = numCertBytes; 
    }

    ioVec[3].base = (u8*)tmd;
    ioVec[3].length = sizeof(ESTitleMeta);

    ioVec[4].base = (u8*)&lastTicketError[0];
    ioVec[4].length = sizeof(lastTicketError);

    ret = IOS_IoctlvAsync(DiFD, DVD_IOCTLV_OPEN_PARTITION, 3, 2, ioVec, doTransactionCallback, dvdContext);
    if (ret != IPC_RESULT_OK) {
        OSReport("@@@ (DVDLowOpenPartition) IOS_IoctlvAsync returned error: %d\n", ret);
        dvdContext->inUse = false;
        return false;
    }

    return true;
}

DECOMP_FORCE_ACTIVE(dvd_broadway_c, coverStatus);
DECOMP_FORCE_ACTIVE(dvd_broadway_c, coverRegister);

DECOMP_FORCE_ACTIVE(dvd_broadway_c, "DVDLowOpenPartitionWithTmdAndTicket");
DECOMP_FORCE_ACTIVE(dvd_broadway_c, "(%s) eTicket memory is unaligned\n");
DECOMP_FORCE_ACTIVE(dvd_broadway_c, "(%s) tmd parameter cannot be NULL\n");
DECOMP_FORCE_ACTIVE(dvd_broadway_c, "(%s) tmd memory is unaligned\n");
DECOMP_FORCE_ACTIVE(dvd_broadway_c, "(%s) eTicket parameter cannot be NULL\n");

bool DVDLowOpenPartitionWithTmdAndTicketView(u32 partitionWordOffset, ESTicketView* eTicketView, u32 numTmdBytes, ESTitleMeta* tmd, u32 numCertBytes, u8* certificates, DVDLowCallback callback) {
    DVDLowContext*  dvdContext;
    IOSError        ret;
    
    if (certificates != 0 && !IS_ALIGNED(certificates)) {
        return false;
    }

    if (tmd == 0) {
        OSReport("(%s) tmd parameter cannot be NULL\n", __FUNCTION__);
        return false;
    }
    else if (!IS_ALIGNED(tmd)) {
        OSReport("(%s) tmd memory is unaligned\n", __FUNCTION__);
        return false;
    }

    if (eTicketView == 0) {
        OSReport("(%s) eTicketView parameter cannot be NULL\n", __FUNCTION__);
        return false;
    }
    else if (!IS_ALIGNED(eTicketView)) {
        OSReport("(%s) eTicketView memory is unaligned\n", __FUNCTION__);
        return false;
    }

    requestInProgress = true;

    dvdContext = newContext(callback, 1);

    nextCommandBuf(&freeCommandBuf);
    diCommand[freeCommandBuf].diCmd = DVD_IOCTLV_OPEN_PARTITION_WITH_TMD_AND_TICKET;
    diCommand[freeCommandBuf].arg[0] = partitionWordOffset;

    ioVec[0].base = (u8*)&diCommand[freeCommandBuf];
    ioVec[0].length = sizeof(DVDLowCommand);

    ioVec[1].base = (u8*)eTicketView;
    ioVec[1].length = sizeof(ESTicketView);

    ioVec[2].base = (u8*)tmd;
    ioVec[2].length = numTmdBytes;

    ioVec[3].base = (u8*)certificates;
    if (certificates == 0) {
        ioVec[3].length = 0;
    }
    else {
        ioVec[3].length = numCertBytes; 
    }

    ioVec[4].base = (u8*)&lastTicketError[0];
    ioVec[4].length = sizeof(lastTicketError);

    ret = IOS_IoctlvAsync(DiFD, DVD_IOCTLV_OPEN_PARTITION_WITH_TMD_AND_TICKET, 4, 1, ioVec, doTransactionCallback, dvdContext);
    if (ret != IPC_RESULT_OK) {
        OSReport("@@@ (DVDLowOpenPartition) IOS_IoctlvAsync returned error: %d\n", ret);
        dvdContext->inUse = false;
        return false;
    }

    return true;
}

bool DVDLowGetNoDiscBufferSizes(const u32 partitionWordOffset, u32* numTmdBytes, u32* numCertBytes, DVDLowCallback callback) {
    DVDLowContext*  dvdContext;
    IOSError        ret;

    if (numTmdBytes == 0 || numCertBytes == 0) {
        OSReport("(%s) Error: NULL pointer argument\n", __FUNCTION__);
        return false;
    }

    if (!IS_ALIGNED(numTmdBytes)) {
        OSReport("(%s) numTmdBytes memory is unaligned\n", __FUNCTION__);
        return false;
    }

    if (!IS_ALIGNED(numCertBytes)) {
        OSReport("(%s) certificates memory is unaligned\n", __FUNCTION__);
        return false;
    }

    requestInProgress = true;

    dvdContext = newContext(callback, 1);

    nextCommandBuf(&freeCommandBuf);
    diCommand[freeCommandBuf].diCmd = DVD_IOCTLV_GET_NO_DISC_BUFFER_SIZE;
    diCommand[freeCommandBuf].arg[0] = partitionWordOffset;

    ioVec[0].base = (u8*)&diCommand[freeCommandBuf];
    ioVec[0].length = sizeof(DVDLowCommand);

    ioVec[1].base = (u8*)numTmdBytes;
    ioVec[1].length = 4;

    ioVec[2].base = (u8*)numCertBytes;
    ioVec[2].length = 4;

    ret = IOS_IoctlvAsync(DiFD, DVD_IOCTLV_GET_NO_DISC_BUFFER_SIZE, 1, 2, ioVec, doTransactionCallback, dvdContext);
    if (ret != IPC_RESULT_OK) {
        OSReport("@@@ (%s) IOS_IoctlvAsync returned error: %d\n", __FUNCTION__, ret);
        dvdContext->inUse = false;
        return false;
    }

    return true;
}

bool DVDLowGetNoDiscOpenPartitionParams(const u32 partitionWordOffset, ESTicket* eTicket, u32* numTmdBytes, ESTitleMeta* tmd, u32* numCertBytes, u8* certificates, u32* dataWordOffset, u8* h3HashPtr, DVDLowCallback callback) {
    DVDLowContext*  dvdContext;
    IOSError        ret;

    if (eTicket == 0 || numTmdBytes == 0 || tmd == 0 || numCertBytes == 0 || certificates == 0 || dataWordOffset == 0 || h3HashPtr == 0) {
        OSReport("(%s) Error: NULL pointer argument\n", __FUNCTION__);
        return false;
    }

    if (!IS_ALIGNED(eTicket) || !IS_ALIGNED(numTmdBytes) || !IS_ALIGNED(tmd) || !IS_ALIGNED(numCertBytes) || !IS_ALIGNED(certificates) || !IS_ALIGNED(dataWordOffset) || !IS_ALIGNED(h3HashPtr)) {
        OSReport("(%s) pointer argument is unaligned\n", __FUNCTION__);
        return false;
    }

    requestInProgress = true;
    dvdContext = newContext(callback, 1);
    nextCommandBuf(&freeCommandBuf);
    diCommand[freeCommandBuf].diCmd = DVD_IOCTLV_GET_NO_DISC_PARTITION;
    diCommand[freeCommandBuf].arg[0] = partitionWordOffset;

    ioVec[0].base = (u8*)&diCommand[freeCommandBuf];
    ioVec[0].length = sizeof(DVDLowCommand);

    ioVec[1].base = (u8*)numTmdBytes;
    ioVec[1].length = 4;

    ioVec[2].base = (u8*)numCertBytes;
    ioVec[2].length = 4;

    ioVec[3].base = (u8*)eTicket;
    ioVec[3].length = sizeof(ESTicket);

    ioVec[4].base = (u8*) numTmdBytes;
    ioVec[4].length = 4;

    ioVec[5].base = (u8*)tmd;
    ioVec[5].length = *numTmdBytes;

    ioVec[6].base = (u8*)numCertBytes;
    ioVec[6].length = 4;

    ioVec[7].base = certificates;
    ioVec[7].length = *numCertBytes;

    ioVec[8].base = (u8*)dataWordOffset;
    ioVec[8].length = 4;

    ioVec[9].base = h3HashPtr;
    ioVec[9].length = 98304;

    ret = IOS_IoctlvAsync(DiFD, DVD_IOCTLV_GET_NO_DISC_PARTITION, 3, 7, ioVec, doTransactionCallback, dvdContext);
    if (ret != IPC_RESULT_OK) {
        OSReport("@@@ (%s) IOS_IoctlvAsync returned error: %d\n", __FUNCTION__, ret);
        dvdContext->inUse = false;
        return false;
    }

    return true;
}

DECOMP_FORCE_ACTIVE(dvd_broadway_c, "DVDLowNoDiscOpenPartition");

bool DVDLowClosePartition(DVDLowCallback callback) {
    DVDLowContext*  dvdContext;
    IOSError        ret;

    nextCommandBuf(&freeCommandBuf);
    diCommand[freeCommandBuf].diCmd = DVD_IOCTL_CLOSE_PARTITION;

    requestInProgress = true;
    dvdContext = newContext(callback, 1);

    ret = IOS_IoctlAsync(DiFD, DVD_IOCTL_CLOSE_PARTITION, &diCommand[freeCommandBuf], sizeof(DVDLowCommand), 0, 0, doTransactionCallback, dvdContext);
    if (ret != IPC_RESULT_OK) {
        OSReport("@@@ (DVDLowClosePartition) IOS_IoctlAsync returned error: %d\n", ret);
        dvdContext->inUse = false;
        return false;
    }

    return true;
}

bool DVDLowUnencryptedRead(void* destAddr, u32 length, u32 wordOffset, DVDLowCallback callback) {
    DVDLowContext*  dvdContext;
    IOSError        ret;

    requestInProgress = true;

    dvdContext = newContext(callback, 1);

    readLength = length;
    nextCommandBuf(&freeCommandBuf);
    diCommand[freeCommandBuf].diCmd = DVD_IOCTL_UNENCRYPTED_READ;
    diCommand[freeCommandBuf].arg[0] = length;
    diCommand[freeCommandBuf].arg[1] = wordOffset;

    ret = IOS_IoctlAsync(DiFD, DVD_IOCTL_UNENCRYPTED_READ, &diCommand[freeCommandBuf], sizeof(DVDLowCommand), destAddr, length, doTransactionCallback, dvdContext);
    if (ret != IPC_RESULT_OK) {
        OSReport("@@@ (DVDLowUnencryptedRead) IOS_IoctlAsync returned error: %d\n", ret);
        dvdContext->inUse = false;
        return false;
    }

    return true;
}

bool DVDLowStopMotor(bool eject, bool saving, DVDLowCallback callback) {
    DVDLowContext*  dvdContext;
    IOSError        ret;

    requestInProgress = true;

    dvdContext = newContext(callback, 1);

    nextCommandBuf(&freeCommandBuf);
    diCommand[freeCommandBuf].diCmd = DVD_IOCTL_STOP_MOTOR;
    diCommand[freeCommandBuf].arg[0] = eject;
    diCommand[freeCommandBuf].arg[1] = saving;

    ret = IOS_IoctlAsync(DiFD, DVD_IOCTL_STOP_MOTOR, &diCommand[freeCommandBuf], sizeof(DVDLowCommand), &diRegValCache, sizeof(DVDLowRegValues), doTransactionCallback, dvdContext);
    if (ret != IPC_RESULT_OK) {
        OSReport("@@@ (DVDLowStopMotor) IOS_IoctlAsync returned error: %d\n", ret);
        dvdContext->inUse = false;
        return false;
    }

    return true;
}

DECOMP_FORCE_ACTIVE(dvd_broadway_c, "@@@ (DVDLowWaitForCoverClose) IOS_IoctlAsync returned error: %d\n");
DECOMP_FORCE_ACTIVE(dvd_broadway_c, "@@@ (DVDLowInquiry) IOS_IoctlAsync returned error: %d\n");
DECOMP_FORCE_ACTIVE(dvd_broadway_c, "@@@ (DVDLowRequestError) IOS_IoctlAsync returned error: %d\n");
DECOMP_FORCE_ACTIVE(dvd_broadway_c, "(DVDLowSetSpinupFlag): Synch functions can't be called in callbacks\n");
DECOMP_FORCE_ACTIVE(dvd_broadway_c, "@@@ (DVDLowNotifyReset) IOS_IoctlAsync returned error: %d\n");
DECOMP_FORCE_ACTIVE(dvd_broadway_c, "@@@ (DVDLowReset) IOS_IoctlAsync returned error: %d\n");

bool DVDLowInquiry(DVDDriveInfo* info, DVDLowCallback callback) {
    DVDLowContext*  dvdContext;
    IOSError        ret;

    requestInProgress = true;

    dvdContext = newContext(callback, 1);

    nextCommandBuf(&freeCommandBuf);
    diCommand[freeCommandBuf].diCmd = DVD_IOCTL_INQUIRY;

    ret = IOS_IoctlAsync(DiFD, DVD_IOCTL_INQUIRY, &diCommand[freeCommandBuf], sizeof(DVDLowCommand), info, sizeof(DVDDriveInfo), doTransactionCallback, dvdContext);
    if (ret != IPC_RESULT_OK) {
        OSReport("@@@ (DVDLowInquiry) IOS_IoctlAsync returned error: %d\n", ret);
        dvdContext->inUse = false;
        return false;
    }

    return true;
}

bool DVDLowRequestError(DVDLowCallback callback) {
    DVDLowContext*  dvdContext;
    IOSError        ret;

    requestInProgress = true;

    dvdContext = newContext(callback, 1);

    nextCommandBuf(&freeCommandBuf);
    diCommand[freeCommandBuf].diCmd = DVD_IOCTL_REQUEST_ERROR;

    ret = IOS_IoctlAsync(DiFD, DVD_IOCTL_REQUEST_ERROR, &diCommand[freeCommandBuf], sizeof(DVDLowCommand), &diRegValCache, sizeof(DVDLowRegValues), doTransactionCallback, dvdContext);
    if (ret != IPC_RESULT_OK) {
        OSReport("@@@ (DVDLowRequestError) IOS_IoctlAsync returned error: %d\n", ret);
        dvdContext->inUse = false;
        return false;
    }

    return true;
}

bool DVDLowSetSpinupFlag(u32 spinUp) {
    spinUpValue = spinUp;
    return true;
}

bool DVDLowReset(DVDLowCallback callback) {
    DVDLowContext*  dvdContext;
    IOSError        ret;

    requestInProgress = true;

    dvdContext = newContext(callback, 1);

    nextCommandBuf(&freeCommandBuf);
    diCommand[freeCommandBuf].diCmd = DVD_IOCTL_RESET;
    diCommand[freeCommandBuf].arg[0] = spinUpValue;

    ret = IOS_IoctlAsync(DiFD, DVD_IOCTL_RESET, &diCommand[freeCommandBuf], sizeof(DVDLowCommand), 0, 0, doTransactionCallback, dvdContext);
    if (ret != IPC_RESULT_OK) {
        OSReport("@@@ (DVDLowReset) IOS_IoctlAsync returned error: %d\n", ret);
        dvdContext->inUse = false;
        return false;
    }

    return true;
}

bool DVDLowAudioBufferConfig(BOOL enable, u32 size, DVDLowCallback callback) {
    DVDLowContext*  dvdContext;
    IOSError        ret;

    requestInProgress = true;

    dvdContext = newContext(callback, 1);

    nextCommandBuf(&freeCommandBuf);
    diCommand[freeCommandBuf].diCmd = DVD_IOCTL_AUDIO_BUFFER_CONFIG;
    diCommand[freeCommandBuf].arg[0] = enable;
    diCommand[freeCommandBuf].arg[1] = size;

    ret = IOS_IoctlAsync(DiFD, DVD_IOCTL_AUDIO_BUFFER_CONFIG, &diCommand[freeCommandBuf], sizeof(DVDLowCommand), &diRegValCache, sizeof(DVDLowRegValues), doTransactionCallback, dvdContext);
    if (ret != IPC_RESULT_OK) {
        OSReport("@@@ (DVDLowAudioBufferConfig) IOS_IoctlAsync returned error: %d\n", ret);
        dvdContext->inUse = false;
        return false;
    }

    return true;
}

DECOMP_FORCE_ACTIVE(dvd_broadway_c, "(DVDLowGetCoverStatus): Synch functions can't be called in callbacks\n");
DECOMP_FORCE_ACTIVE(dvd_broadway_c, "@@@ (DVDLowGetCoverStatus) IOS_Ioctl returned error: %d\n");
DECOMP_FORCE_ACTIVE(dvd_broadway_c, "@@@ (DVDLowReadDVD) IOS_IoctlAsync returned error: %d\n");
DECOMP_FORCE_ACTIVE(dvd_broadway_c, "@@@ (DVDLowReadDVDConfig) IOS_IoctlAsync returned error: %d\n");
DECOMP_FORCE_ACTIVE(dvd_broadway_c, "@@@ (DVDLowReadDvdCopyright) IOS_IoctlAsync returned error: %d\n");
DECOMP_FORCE_ACTIVE(dvd_broadway_c, "@@@ (DVDLowReadDvdPhysical) IOS_IoctlAsync returned error: %d\n");
DECOMP_FORCE_ACTIVE(dvd_broadway_c, "@@@ (DVDLowReadDvdDiscKey) IOS_IoctlAsync returned error: %d\n");
DECOMP_FORCE_ACTIVE(dvd_broadway_c, "@@@ (DVDLowReportKey) IOS_IoctlAsync returned error: %d\n");
DECOMP_FORCE_ACTIVE(dvd_broadway_c, "@@@ (DVDLowOffset) IOS_IoctlAsync returned error: %d\n");
DECOMP_FORCE_ACTIVE(dvd_broadway_c, "@@@ (DVDLowStopLaser) IOS_IoctlAsync returned error: %d\n");
DECOMP_FORCE_ACTIVE(dvd_broadway_c, "@@@ (DVDLowReadDiskBca) IOS_IoctlAsync returned error: %d\n");
DECOMP_FORCE_ACTIVE(dvd_broadway_c, "@@@ (DVDLowSerMeasControl) IOS_IoctlAsync returned error: %d\n");
DECOMP_FORCE_ACTIVE(dvd_broadway_c, "@@@ (DVDLowRequestDiscStatus) IOS_IoctlAsync returned error: %d\n");
DECOMP_FORCE_ACTIVE(dvd_broadway_c, "@@@ (DVDLowRequestRetryNumber) IOS_IoctlAsync returned error: %d\n");

bool DVDLowSetMaximumRotation(u32 subcmd, DVDLowCallback callback) {
    DVDLowContext*  dvdContext;
    IOSError        ret;

    requestInProgress = true;

    dvdContext = newContext(callback, 1);

    nextCommandBuf(&freeCommandBuf);
    diCommand[freeCommandBuf].diCmd = DVD_IOCTL_SET_MAX_ROTATION;
    diCommand[freeCommandBuf].arg[0] = (subcmd >> 16) & 3;

    ret = IOS_IoctlAsync(DiFD, DVD_IOCTL_SET_MAX_ROTATION, &diCommand[freeCommandBuf], sizeof(DVDLowCommand), 0, 0, doTransactionCallback, dvdContext);
    if (ret != IPC_RESULT_OK) {
        OSReport("@@@ (DVDLowSetMaxRotation) IOS_IoctlAsync returned error: %d\n", ret);
        dvdContext->inUse = false;
        return false;
    }

    return true;
}

bool DVDLowRead(void* destAddr, u32 length, u32 wordOffset, DVDLowCallback callback) {
    DVDLowContext*  dvdContext;
    IOSError        ret;

    if (!IS_ALIGNED(destAddr)) {
        OSReport("(DVDLowRead): ERROR - destAddr buffer is not 32 byte aligned\n");
        return false;
    }

    requestInProgress = true;

    dvdContext = newContext(callback, 1);

    readLength = length;
    nextCommandBuf(&freeCommandBuf);
    diCommand[freeCommandBuf].diCmd = DVD_IOCTL_READ;
    diCommand[freeCommandBuf].arg[0] = length;
    diCommand[freeCommandBuf].arg[1] = wordOffset;

    ret = IOS_IoctlAsync(DiFD, DVD_IOCTL_READ, &diCommand[freeCommandBuf], sizeof(DVDLowCommand), destAddr, length, doTransactionCallback, dvdContext);
    if (ret != IPC_RESULT_OK) {
        OSReport("@@@ (DVDLowRead) IOS_IoctlAsync returned error: %d\n", ret);
        dvdContext->inUse = false;
        return false;
    }

    return true;
}

bool DVDLowSeek(u32 wordOffset, DVDLowCallback callback) {
    DVDLowContext*  dvdContext;
    IOSError        ret;

    requestInProgress = true;

    dvdContext = newContext(callback, 1);

    nextCommandBuf(&freeCommandBuf);
    diCommand[freeCommandBuf].diCmd = DVD_IOCTL_SEEK;
    diCommand[freeCommandBuf].arg[0] = wordOffset;

    ret = IOS_IoctlAsync(DiFD, DVD_IOCTL_SEEK, &diCommand[freeCommandBuf], sizeof(DVDLowCommand), 0, 0, doTransactionCallback, dvdContext);
    if (ret != IPC_RESULT_OK) {
        OSReport("@@@ (DVDLowSeek) IOS_IoctlAsync returned error: %d\n", ret);
        dvdContext->inUse = false;
        return false;
    }

    return true;
}

DECOMP_FORCE_ACTIVE(dvd_broadway_c, "(DVDLowGetCoverReg): Synch functions can't be called in callbacks\n");
DECOMP_FORCE_ACTIVE(dvd_broadway_c, "@@@ (DVDLowGetCoverReg) IOS_Ioctl returned error: %d\n");

u32 DVDLowGetCoverRegister() {
    return diRegValCache.diCoverReg;
}

u32 DVDLowGetStatusRegister() {
    return statusRegister[0];
}

bool DVDLowPrepareCoverRegister(DVDLowCallback callback) {
    DVDLowContext*  dvdContext;
    IOSError        ret;

    nextCommandBuf(&freeCommandBuf);
    diCommand[freeCommandBuf].diCmd = DVD_IOCTL_PREPARE_COVER_REGISTER;

    requestInProgress = true;

    dvdContext = newContext(callback, 1);

    ret = IOS_IoctlAsync(DiFD, DVD_IOCTL_PREPARE_COVER_REGISTER, &diCommand[freeCommandBuf], sizeof(DVDLowCommand), registerBuf, sizeof(registerBuf), doPrepareCoverRegisterCallback, dvdContext);
    if (ret != IPC_RESULT_OK) {
        OSReport("@@@ (DVDLowPrepareCoverRegsiter) IOS_IoctlAsync returned error: %d\n", ret);
        dvdContext->inUse = false;
        return false;
    }

    return true;
}

bool DVDLowPrepareStatusRegister(DVDLowCallback callback) {
    DVDLowContext*  dvdContext;
    IOSError        ret;

    nextCommandBuf(&freeCommandBuf);
    diCommand[freeCommandBuf].diCmd = DVD_IOCTL_PREPARE_STATUS_REGISTER;

    requestInProgress = true;

    dvdContext = newContext(callback, 1);

    ret = IOS_IoctlAsync(DiFD, DVD_IOCTL_PREPARE_STATUS_REGISTER, &diCommand[freeCommandBuf], sizeof(DVDLowCommand), statusRegister, sizeof(statusRegister), doTransactionCallback, dvdContext);
    if (ret != IPC_RESULT_OK) {
        OSReport("@@@ (DVDLowPrepareStatusRegsiter) IOS_IoctlAsync returned error: %d\n", ret);
        dvdContext->inUse = false;
        return false;
    }

    return true;
}

u32 DVDLowGetImmBufferReg() {
    return diRegValCache.diImmValue;
}

bool DVDLowUnmaskStatusInterrupts() {
    return true;
}

bool DVDLowMaskCoverInterrupt() {
    return true;
}

bool DVDLowClearCoverInterrupt(DVDLowCallback callback) {
    DVDLowContext*  dvdContext;
    IOSError        ret;

    nextCommandBuf(&freeCommandBuf);
    diCommand[freeCommandBuf].diCmd = DVD_IOCTL_CLEAR_COVER_INTERRUPT;

    requestInProgress = true;

    dvdContext = newContext(callback, 1);

    ret = IOS_IoctlAsync(DiFD, DVD_IOCTL_CLEAR_COVER_INTERRUPT, &diCommand[freeCommandBuf], sizeof(DVDLowCommand), 0, 0, doTransactionCallback, dvdContext);
    if (ret != IPC_RESULT_OK) {
        OSReport("@@@ (DVDLowClearCoverInterrupt) IOS_IoctlAsync returned error: %d\n", ret);
        dvdContext->inUse = false;
        return false;
    }

    return true;
}

s32 DVDLowGetLastEticketError() {
    return lastTicketError[0];
}

BOOL __DVDLowTestAlarm(OSAlarm* alarm) {
    return FALSE;
}

DECOMP_FORCE_ACTIVE(dvd_broadway_c, "@@@ (DVDLowEnableDvdVideo) IOS_IoctlAsync returned error: %d\n"); // DVD video...
