#define KEEP_OLD_NULL

#include <internal/RFLi_LibConfig.h>

#include <RVLFaceLib.h>
#include <RVLFaceLibInternal.h>

#include <internal/RFLi_Debug.h>

#include <string.h>

#define RFL_CTRL_IDENTIFIER  'RNCD'

#define MAX_RETRIES         3

#define WPAD_FACE_ADDR      0x0000

static void clearDatabase_(RFLiCtrlBuffer* buffer) {
    int i;

    buffer->mIdentifier = RFL_CTRL_IDENTIFIER;
    buffer->mSecretFlag = FALSE;
    buffer->mDeleted = FALSE;
    buffer->mCheckSum = 0;

    for (i = 0; i < RFL_MAX_CTRL_BUFFER; i++) {
        memset(&buffer->mData[i], 0, sizeof(RFLiCharData));
    }
}

void RFLiInitCtrlBuf(MEMiHeapHead* sysHeap) {
    int i;
    RFLiCtrlManager* manager = RFLiGetCtrlBufManager();

    for (i = 0; i < WPAD_MAX_CONTROLLERS; i++) {
        manager->mBuffer[i] = MEMAllocFromExpHeapEx(sysHeap, sizeof(RFLiCtrlBuffer), RFL_BUFFER_ALIGN);
        clearDatabase_(manager->mBuffer[i]);

        manager->mIsLoaded[i] = FALSE;
    }

    manager->mReplaceBuf[0] = MEMAllocFromExpHeapEx(sysHeap, sizeof(RFLiCtrlBuffer), RFL_BUFFER_ALIGN);
    clearDatabase_(manager->mReplaceBuf[0]);

    manager->mReplaceBuf[1] = MEMAllocFromExpHeapEx(sysHeap, sizeof(RFLiCtrlBuffer), RFL_BUFFER_ALIGN);
    clearDatabase_(manager->mReplaceBuf[1]);

    manager->mReadBuffer = NULL;
    manager->mWriteBuffer = NULL;
    manager->mWriteChannel = -1;
    manager->mIsRead = TRUE;
    manager->mVerifyBuffer = NULL;

    {
        void* buffer = MEMAllocFromExpHeapEx(sysHeap, RFLGetMiddleDBBufferSize(RFL_MAX_CTRL_BUFFER), RFL_BUFFER_ALIGN);
        RFLInitMiddleDB(&manager->mHiddenMDB, RFLMiddleDBType_HiddenRandom, buffer, RFL_MAX_CTRL_BUFFER);
    }
}

BOOL RFLiCheckCtrlBufferCore(const RFLiCtrlBuffer* buffer, u8 index, RFLiCtrlCheckType type) {
    u16 flag = (1 << index);

    if (type == RFLiCtrlCheckType_OfficialOnly) {
        if ((buffer->mSecretFlag & flag) != 0) {
            return FALSE;
        }
    }
    else if (type == RFLiCtrlCheckType_HiddenOnly) {
        if ((buffer->mSecretFlag & flag) == 0) {
            return FALSE;
        }
    }

    return RFLiIsValidID((RFLCreateID*)&buffer->mData[index].createID);
}

static u16 makechecksum_(RFLiCtrlBuffer* buffer) {
    u16* ptr = (u16*)buffer;
    u16 sum = 0;
    int i;

    static const int scAddCount = 0x177;

    for (i = 0; i < scAddCount; i++) {
        sum += *ptr;
        ptr++;
    }

    return sum;
}

static void createCRC_(RFLiCtrlBuffer* buffer) {
    buffer->mCheckSum = 0;
    buffer->mCheckSum = RFLiCalculateCRC(buffer, sizeof(RFLiCtrlBuffer));
}

static BOOL checkCRC_(RFLiCtrlBuffer* buffer) {
    u16 crc;

    crc = RFLiCalculateCRC(buffer, sizeof(RFLiCtrlBuffer));
    return crc == 0 ? TRUE : FALSE;
}

static BOOL checkValidate_(RFLiCtrlBuffer* buffer) {
    if (buffer->mIdentifier == RFL_CTRL_IDENTIFIER) {
        return checkCRC_(buffer);
    }
    else {
        return FALSE;
    }
}

static void validBufferFound_(RFLiCtrlBuffer* buffer, s32 chan) {
    RFLiCtrlManager* manager = RFLiGetCtrlBufManager();
    int i;

    memcpy(manager->mBuffer[chan], buffer, sizeof(RFLiCtrlBuffer));

    for (i = 0; i < RFL_MAX_CTRL_BUFFER; i++) {
        if (RFLiIsValidID((RFLCreateID*)&manager->mBuffer[chan]->mData[i].createID)) {
            RFLiCharInfo info;
            RFLiConvertRaw2Info(&manager->mBuffer[chan]->mData[i], &info);

            if (!RFLiCheckValidInfo(&info) || !RFLiIsValidOnNAND(&info)) {
                memset(&manager->mBuffer[chan]->mData[i], 0, sizeof(RFLiCharData));
            }
        }
    }

    manager->mIsLoaded[chan] = TRUE;

    RFLiFree(manager->mTmpReadBuffer);
    manager->mTmpReadBuffer = NULL;

    if (RFLiGetIsolation()) {
        RFLiEndWorking(RFLErrcode_Success);
    }
    else {
        RFLiWriteCtrlToHiddenDB(manager->mBuffer[chan], RFLiGetCtrlBufManager()->mReadIsChMode);
    }
}

static void readcallback_(s32 chan, s32 result);

static BOOL errorAndReRead_(s32 chan) {
    RFLiCtrlManager* manager = RFLiGetCtrlBufManager();
    BOOL retried = FALSE;
    s32 read = -1;

    manager->mRetry++;

    if (manager->mRetry < MAX_RETRIES) {
        read = WPADReadFaceData(chan, manager->mTmpReadBuffer, (sizeof(RFLiCtrlBuffer) * RFL_MAX_REPLACE_BUFFER), WPAD_FACE_ADDR, readcallback_);
        if (read != WPAD_ERR_OK) {
            RFLiEndWorkingReason(RFLErrcode_Controllerfail, read);
        }

        retried = TRUE;
    }

    return retried;
}

static void clearDeleted_(RFLiCtrlBuffer* buffer) {
    int i;

    for (i = 0; i < RFL_MAX_CTRL_BUFFER; i++) {
        u16 flag = 1 << i;
        if ((buffer->mDeleted & flag) != 0) {
            memset(&buffer->mData[i], 0, sizeof(RFLiCharData));
        }
    }
}

// DEBUG NON MATCH
static void readcallback_(s32 chan, s32 result) {
    RFLiCtrlManager* manager = RFLiGetCtrlBufManager();

    switch (result) {
        case WPAD_ERR_OK: {
            {
                RFLiCtrlBuffer* buffer = (RFLiCtrlBuffer*)manager->mTmpReadBuffer;
                RFLiCtrlBuffer* validbuf = NULL;

                if (checkValidate_(buffer)) {
                    clearDeleted_(buffer);
                    memcpy(manager->mReplaceBuf[0], buffer, sizeof(RFLiCtrlBuffer));
                    validbuf = buffer;
                }

                buffer++;

                if (checkValidate_(buffer)) {
                    clearDeleted_(buffer);
                    memcpy(manager->mReplaceBuf[1], buffer, sizeof(RFLiCtrlBuffer));
                    if (validbuf == NULL) {
                        validbuf = buffer;
                    }
                }

                if (validbuf != NULL) {
                    validBufferFound_(validbuf, chan);
                }
                else if (!errorAndReRead_(chan)) {
                    RFLiFree(manager->mTmpReadBuffer);
                    manager->mTmpReadBuffer = NULL;

                    RFLiEndWorking(RFLErrcode_Loadfail);

                    manager->mIsLoaded[chan] = FALSE;
                }
            }
            break;
        }
        case WPAD_ERR_TRANSFER: {
            if (!errorAndReRead_(chan)) {
                RFLiFree(manager->mTmpReadBuffer);
                manager->mTmpReadBuffer = NULL;

                RFLiEndWorkingReason(RFLErrcode_Controllerfail, WPAD_ERR_TRANSFER);

                manager->mIsLoaded[chan] = FALSE;
            }
            break;
        }
        default: {
            RFLiFree(manager->mTmpReadBuffer);
            manager->mTmpReadBuffer = NULL;

            RFLiEndWorkingReason(RFLErrcode_Controllerfail, WPAD_ERR_NO_CONTROLLER);

            break;
        }
    }
}

static void readbuffer_(s32 chan, void* buffer, BOOL isChannel) {
    RFLiCtrlManager* manager = RFLiGetCtrlBufManager();
    u32 size = sizeof(RFLiCtrlBuffer) * RFL_MAX_REPLACE_BUFFER;
    s32 read;
    s32 probe;
    u32 type;

    probe = WPADProbe(chan, &type);

    if (probe != WPAD_ERR_OK) {
        RFLiEndWorkingReason(RFLErrcode_Controllerfail, probe);
        return;
    }

    RFLi_ASSERTLINE(manager->mTmpReadBuffer == ((void *)0) /* NULL */, 456);

    manager->mTmpReadBuffer = RFLiAlloc32(size);
    manager->mReadBuffer = buffer;
    manager->mReadIsChMode = isChannel;
    manager->mRetry = 0;

    read = WPADReadFaceData(chan, manager->mTmpReadBuffer, sizeof(RFLiCtrlBuffer) * RFL_MAX_REPLACE_BUFFER, WPAD_FACE_ADDR, readcallback_);
    if (read != WPAD_ERR_OK) {
        RFLiFree(manager->mTmpReadBuffer);
        manager->mTmpReadBuffer = NULL;

        RFLiEndWorkingReason(RFLErrcode_Controllerfail, read);
    }
}

RFLErrcode RFLiLoadControllerAsync(s32 chan, BOOL isChannel) {
    RFLiCtrlManager* manager;

    RFLi_ASSERTLINE_RANGE(chan, 0, WPAD_MAX_CONTROLLERS, 498);

    if (chan < 0 || chan >= WPAD_MAX_CONTROLLERS) {
        return RFLErrcode_WrongParam;
    }

    if (!RFLAvailable()) {
        return RFLErrcode_NotAvailable;
    }

    if (RFLiIsWorking()) {
        return RFLErrcode_NotAvailable;
    }

    manager = RFLiGetCtrlBufManager();
    if (manager == NULL) {
        return RFLErrcode_NotAvailable;
    }

    RFLiStartWorking();

    memset(manager->mBuffer[chan], 0, sizeof(RFLiCtrlBuffer));
    memset(manager->mReplaceBuf[0], 0, sizeof(RFLiCtrlBuffer));
    memset(manager->mReplaceBuf[1], 0, sizeof(RFLiCtrlBuffer));

    readbuffer_(chan, manager->mBuffer[chan], isChannel);

    return RFLGetAsyncStatus();
}

RFLErrcode RFLLoadControllerAsync(s32 chan) {
    return RFLiLoadControllerAsync(chan, FALSE);
}

static void writebuffer_(s32 chan, RFLiCtrlBuffer* buffer, u8 count);

static void saveOfficialToCtrl_() {
    RFLiCtrlManager* manager = RFLiGetCtrlBufManager();
    s32 chan = manager->mWriteChannel;
    RFLiCtrlBuffer* buffer = manager->mBuffer[chan];
    s32 probe;
    u32 type;

    buffer->mDeleted = FALSE;

    createCRC_(buffer);
    probe = WPADProbe(chan, &type);

    if (probe != WPAD_ERR_OK) {
        RFLiEndWorkingReason(RFLErrcode_Controllerfail, probe);
    }
    else {
        RFLiStartWorking();
        writebuffer_(chan, buffer, 0);
    }
}

static void closeOfficialOnly_() {
    RFLiCloseAsync(RFLiFileType_Database, saveOfficialToCtrl_);
}

static void saveOfficialOnlyOpened_() {
    if (RFLGetAsyncStatus() == RFLErrcode_Success) {
        RFLiSaveOpenedDatabaseAsync(closeOfficialOnly_);
    }
    else {
        saveOfficialToCtrl_();
    }
}

static void saveOfficialOnly_() {
    RFLiEndWorking(RFLErrcode_Success);
    RFLiOpenAsync(RFLiFileType_Database, NAND_ACCESS_WRITE, saveOfficialOnlyOpened_);
}

static BOOL verify_(void* buf1, void* buf2, u16 size) {
    const u8* ptr1 = (const u8*)buf1;
    const u8* ptr2 = (const u8*)buf2;
    int i;

    for (i = 0; i < size; i++) {
        if (*ptr1 != *ptr2) {
            return FALSE;
        }
        ptr1++; ptr2++;
    }

    return TRUE;
}

static void writecallback_(s32 chan, s32 result);

static BOOL errorAndReWrite_(s32 chan) {
    BOOL retried = FALSE;
    RFLiCtrlManager* manager = RFLiGetCtrlBufManager();

    manager->mRetry++;

    if (manager->mRetry < MAX_RETRIES) {
        s32 write = WPADWriteFaceData(chan, manager->mWriteBuffer, sizeof(RFLiCtrlBuffer), WPAD_FACE_ADDR + (manager->mWriteCount * sizeof(RFLiCtrlBuffer)), writecallback_);
        if (write != WPAD_ERR_OK) {
            RFLiEndWorkingReason(RFLErrcode_Controllerfail, write);
        }
        retried = TRUE;
    }

    return retried;
}

static void verifycallback_(s32 chan, s32 result) {
    RFLiCtrlManager* manager = RFLiGetCtrlBufManager();

    switch (result) {
        case WPAD_ERR_OK: {
            if (verify_(manager->mWriteBuffer, manager->mVerifyBuffer, sizeof(RFLiCtrlBuffer))) {
                if (manager->mWriteCount == 0) {
                    writebuffer_(chan, manager->mBuffer[chan], 1);
                }
                else {
                    RFLiEndWorking(RFLErrcode_Success);
                }
            }
            else if (!errorAndReWrite_(chan)) {
                RFLiEndWorking(RFLErrcode_Savefail);
            }
            break;
        }
        case WPAD_ERR_TRANSFER: {
            if (!errorAndReWrite_(chan)) {
                RFLiEndWorkingReason(RFLErrcode_Controllerfail, WPAD_ERR_TRANSFER);
            }
            break;
        }
        default: {
            RFLiEndWorkingReason(RFLErrcode_Controllerfail, result);
            break;
        }
    }

    RFLiFree(manager->mVerifyBuffer);
    manager->mVerifyBuffer = NULL;
}

static void writecallback_(s32 chan, s32 result) {
    RFLiCtrlManager* manager = RFLiGetCtrlBufManager();

    if (result == WPAD_ERR_OK) {
        s32 read;

        RFLi_ASSERTLINE(manager->mVerifyBuffer == ((void *)0) /* NULL */, 786);

        manager->mVerifyBuffer = RFLiAlloc32(sizeof(RFLiCtrlBuffer));
        memset(manager->mVerifyBuffer, 0, sizeof(RFLiCtrlBuffer));

        read = WPADReadFaceData(chan, manager->mVerifyBuffer, sizeof(RFLiCtrlBuffer), WPAD_FACE_ADDR + (manager->mWriteCount * sizeof(RFLiCtrlBuffer)), verifycallback_);
        if (read != WPAD_ERR_OK) {
            RFLiFree(manager->mVerifyBuffer);
            manager->mVerifyBuffer = NULL;

            RFLiEndWorkingReason(RFLErrcode_Controllerfail, read);
        }
    }
    else {
        if (!errorAndReWrite_(chan)) {
            RFLiEndWorkingReason(RFLErrcode_Controllerfail, result);
        }
    }
}

static void writebuffer_(s32 chan, RFLiCtrlBuffer* buffer, u8 count) {
    RFLiCtrlManager* manager = RFLiGetCtrlBufManager();
    s32 write;

    manager->mWriteBuffer = buffer;
    manager->mWriteCount = count;
    manager->mRetry = 0;

    write = WPADWriteFaceData(chan, buffer, sizeof(RFLiCtrlBuffer), WPAD_FACE_ADDR + (count * sizeof(RFLiCtrlBuffer)), writecallback_);
    if (write != WPAD_ERR_OK) {
        RFLiEndWorkingReason(RFLErrcode_Controllerfail, write);
    }
}

static void replacecallback_(s32 chan, s32 result);

#define OFFSET (offsetof(RFLiCtrlBuffer, mData) + (sizeof(RFLiCharData) * RFL_MAX_CTRL_BUFFER))
static BOOL errorAndReplace_(s32 chan) {
    BOOL retried = FALSE;
    RFLiCtrlManager* manager = RFLiGetCtrlBufManager();

    manager->mRetry++;

    if (manager->mRetry < MAX_RETRIES) {
        u8* buffer = ((u8*)(manager->mReplaceBuf[manager->mWriteCount]) + OFFSET);
        s32 write = WPADWriteFaceData(chan, buffer, 4, WPAD_FACE_ADDR + ((manager->mWriteCount * sizeof(RFLiCtrlBuffer)) + OFFSET), replacecallback_);
        if (write != WPAD_ERR_OK) {
            RFLiEndWorkingReason(RFLErrcode_Controllerfail, write);
        }

        retried = TRUE;
    }

    return retried;
}

static void replacebuffer_(s32 chan, RFLiCtrlBuffer* buffer, u8 count);

static void replaceverifycallback_(s32 chan, s32 result) {
    RFLiCtrlManager* manager = RFLiGetCtrlBufManager();

    switch (result) {
        case WPAD_ERR_OK: {
            if (verify_(manager->mVerifyBuffer, ((u8*)(manager->mReplaceBuf[manager->mWriteCount]) + OFFSET), 4)) {
                if (manager->mWriteCount == 0) {
                    replacebuffer_(chan, manager->mWriteBuffer, 1);
                }
                else {
                    saveOfficialOnly_();
                }
            }
            else if (!errorAndReplace_(chan)) {
                RFLiEndWorking(RFLErrcode_Savefail);
            }
            break;
        }
        case WPAD_ERR_TRANSFER: {
            if (!errorAndReplace_(chan)) {
                RFLiEndWorkingReason(RFLErrcode_Controllerfail, WPAD_ERR_TRANSFER);
            }
            break;
        }
        default: {
            RFLiEndWorkingReason(RFLErrcode_Controllerfail, result);
            break;
        }
    }

    RFLiFree(manager->mVerifyBuffer);
    manager->mVerifyBuffer = NULL;
}

static void replacecallback_(s32 chan, s32 result) {
    RFLiCtrlManager* manager = RFLiGetCtrlBufManager();

    if (result == WPAD_ERR_OK) {
        s32 read;
        u16 offset;
        
        RFLi_ASSERTLINE(manager->mVerifyBuffer == ((void *)0), 972);

        manager->mVerifyBuffer = RFLiAlloc32(4);
        memset(manager->mVerifyBuffer, 0, 4);

        offset = (manager->mWriteCount * sizeof(RFLiCtrlBuffer)) + OFFSET;

        read = WPADReadFaceData(chan, manager->mVerifyBuffer, 4, WPAD_FACE_ADDR + offset, replaceverifycallback_);
        if (read != WPAD_ERR_OK) {
            RFLiFree(manager->mVerifyBuffer);
            manager->mVerifyBuffer = NULL;

            RFLiEndWorkingReason(RFLErrcode_Controllerfail, read);
        }
    }
    else {
        if (!errorAndReWrite_(chan)) {
            RFLiEndWorkingReason(RFLErrcode_Controllerfail, result);
        }
    }
}

static void replacebuffer_(s32 chan, RFLiCtrlBuffer* buffer, u8 count) {
    RFLiCtrlManager* manager = RFLiGetCtrlBufManager();
    s32 write;
    RFLiCtrlBuffer* replaced = manager->mReplaceBuf[count];
    u8* walker = (u8*)replaced;
    u16 offset;

    manager->mWriteBuffer = buffer;
    manager->mWriteCount = count;

    manager->mRetry = 0;
    replaced->mDeleted = manager->mDeleted;

    createCRC_(replaced);

    offset = (count * sizeof(RFLiCtrlBuffer)) + OFFSET;
    
    write = WPADWriteFaceData(chan, ((u8*)walker + OFFSET), 4, WPAD_FACE_ADDR + offset, replacecallback_);
    if (write != WPAD_ERR_OK) {
        RFLiEndWorkingReason(RFLErrcode_Controllerfail, write);
    }
}
#undef OFFSET

static BOOL setDataCoreBuffer_(const RFLiCharInfo* src, RFLiCtrlBuffer* buffer, u8 index, BOOL isSecret) {
    RFLiCtrlManager* manager = RFLiGetCtrlBufManager();
    RFLiCharData* data;
    u16 flag = 0;

    if (isSecret && (src->personal.localonly)) {
        return FALSE;
    }

    data = &buffer->mData[index];

    RFLiConvertInfo2Raw(src, data);

    if (RFLiGetIsolation()) {
        data->localonly = TRUE;
    }
    data->favorite = 0;

    flag = (1 << index);

    if (isSecret) {
        buffer->mSecretFlag |= flag;
    }
    else {
        buffer->mSecretFlag &= ~flag;
    }
    
    return TRUE;
}

static int setDataCore_(const RFLiCharInfo* src, s32 chan, u8 index, BOOL isSecret) {
    setDataCoreBuffer_(src, RFLiGetCtrlBufManager()->mBuffer[chan], index, isSecret);
}

static void fillHiddenData_(RFLiCtrlBuffer* buffer) {
    u16 blankSlot = 0;
    u8 i;
    u16 dbidx = 0;
    RFLMiddleDatabase* db = &RFLiGetCtrlBufManager()->mHiddenMDB;
    int loadsize = RFLGetMiddleDBStoredSize(db);

    for (i = 0; i < RFL_MAX_CTRL_BUFFER; i++) {
        u16 flag = (1 << i);

        if (!RFLiIsValidID((RFLCreateID*)&buffer->mData[i].createID) || (buffer->mSecretFlag & flag) != 0) {
            memset(&buffer->mData[i], 0, sizeof(RFLiCharData));
            blankSlot |= flag;
        }
    }

    if (!RFLiGetIsolation()) {
        for (i = 0; i < RFL_MAX_CTRL_BUFFER; i++) {
            RFLiCharInfo info;

            if ((blankSlot & (1 << i)) != 0) {
                if (!RFLiGetCharInfoMiddleDB(&info, db, dbidx)) {
                    break;
                }

                setDataCoreBuffer_(&info, buffer, i, TRUE);

                dbidx++;
                if (dbidx >= loadsize) {
                    break;
                }
            }
        }
    }
}

static void fillToWriteCtrl_() {
    RFLiCtrlManager* manager = RFLiGetCtrlBufManager();
    s32 chan = manager->mWriteChannel;
    RFLiCtrlBuffer* buffer = manager->mBuffer[chan];
    s32 probe;
    u32 type;

    RFLiStartWorking();
    fillHiddenData_(buffer);

    buffer->mIdentifier = RFL_CTRL_IDENTIFIER;

    probe = WPADProbe(chan, &type);
    if (probe != WPAD_ERR_OK) {
        RFLiEndWorkingReason(RFLErrcode_Controllerfail, probe);
    }
    else {
        replacebuffer_(chan, buffer, 0);
    }
}

RFLErrcode RFLiSaveControllerAsync(s32 chan, u16 deleted) {
    RFLiCtrlManager* manager;
    RFLiCtrlBuffer* buffer;

    RFLi_ASSERTLINE_RANGE(chan, 0, WPAD_MAX_CONTROLLERS, 1255);

    if (chan < 0 || chan >= WPAD_MAX_CONTROLLERS) {
        return RFLErrcode_WrongParam;
    }

    if (!RFLAvailable()) {
        return RFLErrcode_NotAvailable;
    }

    if (RFLiIsWorking()) {
        return RFLErrcode_NotAvailable;
    }

    manager = RFLiGetCtrlBufManager();
    if (manager == NULL) {
        return RFLErrcode_NotAvailable;
    }

    if (!manager->mIsLoaded[chan]) {
        return RFLErrcode_NotAvailable;
    }

    buffer = manager->mBuffer[chan];

    manager->mWriteBuffer = buffer;
    manager->mWriteChannel = chan;
    manager->mDeleted = (deleted | buffer->mDeleted) & 0x3FF;

    if (RFLiIsCachedHDB()) {
        RFLiUpdateMiddleDB(&manager->mHiddenMDB);
        fillToWriteCtrl_();
        return RFLGetAsyncStatus();
    }
    else {
        return RFLiUpdateMiddleDBAsync(&manager->mHiddenMDB, fillToWriteCtrl_, FALSE);
    }
}

BOOL RFLiFormatControllerData(s32 chan) {
    RFLiCtrlManager* manager;

    RFLi_ASSERTLINE_RANGE(chan, 0, WPAD_MAX_CONTROLLERS, 1304);

    if (chan < 0 || chan >= WPAD_MAX_CONTROLLERS) {
        return RFLErrcode_WrongParam; // @BUG Should be FALSE
    }
    
    manager = RFLiGetCtrlBufManager();
    if (manager == NULL) {
        return FALSE;
    }

    clearDatabase_(manager->mBuffer[chan]);

    manager->mIsLoaded[chan] = TRUE;

    return TRUE;
}

BOOL RFLiSetControllerDataIdx(u16 srcIndex, s32 chan, u8 ctrlIndex) {
    RFLiCtrlManager* manager;
    RFLiCharInfo info;

    RFLi_ASSERTLINE_RANGE(srcIndex, 0, RFL_MAX_DATABASE, 1340);
    RFLi_ASSERTLINE_RANGE(chan, 0, WPAD_MAX_CONTROLLERS, 1341);
    RFLi_ASSERTLINE_RANGE(ctrlIndex, 0, RFL_MAX_CTRL_BUFFER, 1342);

    if (chan < 0 || chan >= WPAD_MAX_CONTROLLERS) {
        return FALSE;
    }

    if (srcIndex >= RFL_MAX_DATABASE) {
        return FALSE;
    }

    if (ctrlIndex >= RFL_MAX_CTRL_BUFFER) {
        return FALSE;
    }

    manager = RFLiGetCtrlBufManager();
    if (manager == NULL) {
        return FALSE;
    }

    if (!manager->mIsLoaded[chan]) {
        return FALSE;
    }

    if (RFLiGetCharInfo(&info, srcIndex)) {
        return FALSE;
    }

    return setDataCore_(&info, chan, ctrlIndex, FALSE);
}

int RFLiSetControllerData(const RFLiCharInfo* src, s32 chan, u8 index) {
    RFLiCtrlManager* manager = RFLiGetCtrlBufManager();
    u16 flag = 0;

    RFLi_ASSERTLINE_RANGE(chan, 0, WPAD_MAX_CONTROLLERS, 1381);
    RFLi_ASSERTLINE_RANGE(index, 0, RFL_MAX_CTRL_BUFFER, 1382);

    if (chan < 0 || chan >= WPAD_MAX_CONTROLLERS) {
        return FALSE;
    }

    if (index >= RFL_MAX_CTRL_BUFFER) {
        return FALSE;
    }

    if (manager == NULL) {
        return FALSE;
    }

    if (!manager->mIsLoaded[chan]) {
        return FALSE;
    }

    return setDataCore_(src, chan, index, FALSE);
}

int RFLiGetControllerData(RFLiCharInfo* dst, s32 chan, u8 index, BOOL hiddenAvailable) {
    RFLiCtrlManager* manager;
    RFLiCtrlBuffer* buffer;
    u16 flag;

    RFLi_ASSERTLINE_RANGE(chan, 0, WPAD_MAX_CONTROLLERS, 1412);
    RFLi_ASSERTLINE_RANGE(index, 0, RFL_MAX_CTRL_BUFFER, 1413);

    if (chan < 0 || chan >= WPAD_MAX_CONTROLLERS) {
        return FALSE;
    }

    if (index >= RFL_MAX_CTRL_BUFFER) {
        return FALSE;
    }

    manager = RFLiGetCtrlBufManager();
    if (manager == NULL) {
        return FALSE;
    }

    if (!manager->mIsLoaded[chan]) {
        return FALSE;
    }

    flag = (1 << index);
    buffer = manager->mBuffer[chan];
    if (!RFLiIsValidID((RFLCreateID*)&buffer->mData[index].createID)) {
        return FALSE;
    }

    if (!hiddenAvailable && (buffer->mSecretFlag & flag) != 0) {
        return FALSE;
    }

    RFLiConvertRaw2Info(&buffer->mData[index], dst);

    return TRUE;
}

RFLErrcode RFLUnloadController(s32 chan) {
    RFLi_ASSERTLINE_RANGE(chan, 0, WPAD_MAX_CONTROLLERS, 1461);

    if (chan < 0 || chan >= WPAD_MAX_CONTROLLERS) {
        return RFLErrcode_WrongParam;
    }

    if (!RFLAvailable()) {
        return RFLErrcode_NotAvailable;
    }

    RFLiGetCtrlBufManager()->mIsLoaded[chan] = FALSE;

    return RFLErrcode_Success;
}

BOOL RFLIsAvailableControllerData(s32 chan, u8 index) {
    return RFLiIsAvailableControllerData(chan, index, RFLiCtrlCheckType_OfficialOnly);
}

BOOL RFLiIsAvailableControllerData(s32 chan, u8 index, RFLiCtrlCheckType type) {
    RFLiCtrlManager* manager;

    RFLi_ASSERTLINE_RANGE(chan, 0, WPAD_MAX_CONTROLLERS, 1503);
    RFLi_ASSERTLINE_RANGE(index, 0, RFL_MAX_CTRL_BUFFER, 1504);

    if (chan < 0 || chan >= WPAD_MAX_CONTROLLERS) {
        return RFLErrcode_WrongParam; // @BUG: Should be FALSE
    }

    if (index >= RFL_MAX_CTRL_BUFFER) {
        return RFLErrcode_WrongParam; // @BUG: Should be FALSE
    }

    if (!RFLAvailable()) {
        return FALSE;
    }

    manager = RFLiGetCtrlBufManager();
    if (manager == NULL) {
        return FALSE;
    }

    if (!manager->mIsLoaded[chan]) {
        return FALSE;
    }

    return RFLiCheckCtrlBufferCore(manager->mBuffer[chan], index, type);
}

void RFLiClearConrtollerDataIdx(s32 chan, u8 index) {
    RFLi_ASSERTLINE_RANGE(chan, 0, WPAD_MAX_CONTROLLERS, 1533);
    RFLi_ASSERTLINE_RANGE(index, 0, RFL_MAX_CTRL_BUFFER, 1534);

    if (chan < 0 || chan >= WPAD_MAX_CONTROLLERS) {
        return;
    }

    if (index >= RFL_MAX_CTRL_BUFFER) {
        return;
    }

    memset(&RFLiGetCtrlBufManager()->mBuffer[chan]->mData[index], 0, sizeof(RFLiCharData));
}

u8 RFLGetAvailableControllerDataNum(s32 chan) {
    u8 count;
    u8 idx;

    RFLi_ASSERTLINE_RANGE(chan, 0, WPAD_MAX_CONTROLLERS, 1563);

    if (chan < 0 || chan >= WPAD_MAX_CONTROLLERS) {
        return 0;
    }

    count = 0;

    for (idx = 0; idx < RFL_MAX_CTRL_BUFFER; idx++) {
        if (RFLIsAvailableControllerData(chan, idx)) {
            count++;
        }
    }

    return count;
}
