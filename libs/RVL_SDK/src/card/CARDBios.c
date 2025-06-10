#include <private/card.h>
#include <revolution/card.h>

#include <private/exi.h>

#include <revolution/os.h>
#include <private/os.h>

#include <revolution/verdefs.h>

SDKDefineVersion(CARD, "Apr 20 2010", "11:18:59");

CARDControl __CARDBlock[2];

static u16 __CARDEncode;
static u16 __CARDFastMode;

DVDDiskID __CARDDiskNone;

static void TimeoutHandler(OSAlarm* alarm, OSContext* context);
static void SetupTimeoutAlarm(CARDControl* card);
static s32 Retry(s32 chan);
static void UnlockedCallback(s32 chan, s32 result);
static BOOL OnShutdown(BOOL f, u32 val);

static OSShutdownFunctionInfo ShutdownFunctionInfo = {OnShutdown, 127};

void __CARDDefaultApiCallback(s32 chan, s32 result) {}

void __CARDSyncCallback(s32 chan, s32 result) {
    CARDControl* card;
    card = &__CARDBlock[chan];
    OSWakeupThread(&card->threadQueue);
}

void __CARDExtHandler(s32 chan, OSContext* context) {
    CARDControl* card;
    CARDCallback callback;

    card = &__CARDBlock[chan];
    if (card->attached) {
        card->attached = FALSE;
        EXISetExiCallback(chan, 0);
        OSCancelAlarm(&card->alarm);
        callback = card->exiCallback;

        if (callback) {
            card->exiCallback = 0;
            callback(chan, CARD_RESULT_NOCARD);
        }

        if (card->result != CARD_RESULT_BUSY) {
            card->result = CARD_RESULT_NOCARD;
        }

        callback = card->extCallback;
        if (callback && CARD_MAX_MOUNT_STEP <= card->mountStep) {
            card->extCallback = 0;
            callback(chan, CARD_RESULT_NOCARD);
        }
    }
}

void __CARDExiHandler(s32 chan, OSContext* context) {
    CARDControl* card;
    CARDCallback callback;
    u8 status;
    s32 result;

    card = &__CARDBlock[chan];

    OSCancelAlarm(&card->alarm);

    if (!card->attached) {
        return;
    }

    if (!EXILock(chan, EXI_DEV_EXT, 0)) {
        result = CARD_RESULT_FATAL_ERROR;
        goto fatal;
    }

    if ((result = __CARDReadStatus(chan, &status)) < 0 || (result = __CARDClearStatus(chan)) < 0) {
        goto error;
    }

    if ((result = (status & 0x18) ? CARD_RESULT_IOERROR : CARD_RESULT_READY) == CARD_RESULT_IOERROR && --card->retry > 0) {
        result = Retry(chan);
        if (result >= CARD_RESULT_READY) {
            return;
        }
        goto fatal;
    }

error:
    EXIUnlock(chan);

fatal:
    callback = card->exiCallback;
    if (callback) {
        card->exiCallback = 0;
        callback(chan, result);
    }
}

void __CARDTxHandler(s32 chan, OSContext* context) {
    CARDControl* card;
    CARDCallback callback;
    int err;

    card = &__CARDBlock[chan];
    err = !EXIDeselect(chan);
    EXIUnlock(chan);
    callback = card->txCallback;
    if (callback) {
        card->txCallback = NULL;
        callback(chan, (!err && EXIProbe(chan)) ? CARD_RESULT_READY : CARD_RESULT_NOCARD);
    }
}

void __CARDUnlockedHandler(s32 chan, OSContext* context) {
    CARDControl* card;
    CARDCallback callback;

    card = &__CARDBlock[chan];
    callback = card->unlockCallback;
    if (callback) {
        card->unlockCallback = 0;
        callback(chan, EXIProbe(chan) ? CARD_RESULT_UNLOCKED : CARD_RESULT_NOCARD);
    }
}

s32 __CARDEnableInterrupt(s32 chan, BOOL enable) {
    BOOL err;
    u32 cmd;

    if (!EXISelect(chan, EXI_DEV_EXT, CARDFreq)) {
        return CARD_RESULT_NOCARD;
    }

    cmd = enable ? 0x81010000 : 0x81000000;
    err = FALSE;
    err |= !EXIImm(chan, &cmd, 2, EXI_WRITE, NULL);
    err |= !EXISync(chan);
    err |= !EXIDeselect(chan);
    return err ? CARD_RESULT_NOCARD : CARD_RESULT_READY;
}

s32 __CARDReadStatus(s32 chan, u8* status) {
    BOOL err;
    u32 cmd;

    if (!EXISelect(chan, EXI_DEV_EXT, CARDFreq)) {
        return CARD_RESULT_NOCARD;
    }

    cmd = 0x83000000;
    err = FALSE;
    err |= !EXIImm(chan, &cmd, 2, EXI_WRITE, NULL);
    err |= !EXISync(chan);
    err |= !EXIImm(chan, status, 1, EXI_READ, NULL);
    err |= !EXISync(chan);
    err |= !EXIDeselect(chan);
    return err ? CARD_RESULT_NOCARD : CARD_RESULT_READY;
}

int __CARDReadVendorID(s32 chan, u16* id) {
    BOOL err;
    u32 cmd;

    if (!EXISelect(chan, 0, CARDFreq)) {
        return CARD_RESULT_NOCARD;
    }
    cmd = 0x85000000;
    err = 0;
    err |= !EXIImm(chan, &cmd, 2, EXI_WRITE, 0);
    err |= !EXISync(chan);
    err |= !EXIImm(chan, id, 2, EXI_READ, 0);
    err |= !EXISync(chan);
    err |= !EXIDeselect(chan);
    return err ? CARD_RESULT_NOCARD : CARD_RESULT_READY;
}

s32 __CARDClearStatus(s32 chan) {
    BOOL err;
    u32 cmd;

    if (!EXISelect(chan, EXI_DEV_EXT, CARDFreq)) {
        return CARD_RESULT_NOCARD;
    }

    cmd = 0x89000000;
    err = FALSE;
    err |= !EXIImm(chan, &cmd, 1, EXI_WRITE, 0);
    err |= !EXISync(chan);
    err |= !EXIDeselect(chan);

    return err ? CARD_RESULT_NOCARD : CARD_RESULT_READY;
}

static void TimeoutHandler(OSAlarm* alarm, OSContext* context) {
    s32 chan;
    CARDControl* card;
    CARDCallback callback;
    for (chan = 0; chan < CARD_CHAN_MAX; ++chan) {
        card = &__CARDBlock[chan];
        if (alarm == &card->alarm) {
            break;
        }
    }

    if (!card->attached) {
        return;
    }

    EXISetExiCallback(chan, NULL);
    callback = card->exiCallback;
    if (callback) {
        card->exiCallback = 0;
        callback(chan, CARD_RESULT_IOERROR);
    }
}

static void SetupTimeoutAlarm(CARDControl* card) {
    OSCancelAlarm(&card->alarm);
    switch (card->cmd[0]) {
        case 0xF2:  {
            OSSetAlarm(&card->alarm, OSMillisecondsToTicks(100), TimeoutHandler);
            break;
        }
        case 0xF3: {
            break;
        }
        case 0xF4: {
            if (card->pageSize > 0x80) {
                OSSetAlarm(&card->alarm, OSSecondsToTicks((OSTime)2) * (card->cBlock / 0x40), TimeoutHandler);
                break;
            }
        }
        case 0xF1: {
            OSSetAlarm(&card->alarm, OSSecondsToTicks((OSTime)2) * (card->sectorSize / 0x2000), TimeoutHandler);
            break;
        }
    }
}

static s32 Retry(s32 chan) {
    CARDControl* card;

    card = &__CARDBlock[chan];
    if (!EXISelect(chan, EXI_DEV_EXT, CARDFreq)) {
        EXIUnlock(chan);
        return CARD_RESULT_NOCARD;
    }

    SetupTimeoutAlarm(card);

    if (!EXIImmEx(chan, card->cmd, card->cmdlen, EXI_WRITE)) {
        EXIDeselect(chan);
        EXIUnlock(chan);
        return CARD_RESULT_NOCARD;
    }

    if (card->cmd[0] == 0x52 && !EXIImmEx(chan, (u8*)card->workArea + sizeof(CARDID), card->latency, EXI_WRITE)) {
        EXIDeselect(chan);
        EXIUnlock(chan);
        return CARD_RESULT_NOCARD;
    }

    if (card->mode == -1) {
        EXIDeselect(chan);
        EXIUnlock(chan);
        return CARD_RESULT_READY;
    }

    if (!EXIDma(chan, card->buffer, (s32)((card->cmd[0] == 0x52) ? 512 : card->pageSize), card->mode, __CARDTxHandler)) {
        EXIDeselect(chan);
        EXIUnlock(chan);
        return CARD_RESULT_NOCARD;
    }

    return CARD_RESULT_READY;
}

static void UnlockedCallback(s32 chan, s32 result) {
    CARDCallback callback;
    CARDControl* card;

    card = &__CARDBlock[chan];
    if (result >= CARD_RESULT_READY) {
        card->unlockCallback = UnlockedCallback;
        if (!EXILock(chan, EXI_DEV_EXT, __CARDUnlockedHandler)) {
            result = CARD_RESULT_READY;
        }
        else {
            card->unlockCallback = 0;
            result = Retry(chan);
        }
    }

    if (result < CARD_RESULT_READY) {
        switch (card->cmd[0]) {
            case 0x52: {
                callback = card->txCallback;
                if (callback) {
                    card->txCallback = NULL;
                    callback(chan, result);
                }
                break;
            }
            case 0xF2:
            case 0xF4:
            case 0xF1: {
                callback = card->exiCallback;
                if (callback) {
                    card->exiCallback = 0;
                    callback(chan, result);
                }
                break;
            }
        }
    }
}

static s32 __CARDStart(s32 chan, CARDCallback txCallback, CARDCallback exiCallback) {
    BOOL enabled;
    CARDControl* card;
    s32 result;

    enabled = OSDisableInterrupts();

    card = &__CARDBlock[chan];
    if (!card->attached) {
        result = CARD_RESULT_NOCARD;
    }
    else {
        if (txCallback) {
            card->txCallback = txCallback;
        }

        if (exiCallback) {
            card->exiCallback = exiCallback;
        }

        card->unlockCallback = UnlockedCallback;

        if (!EXILock(chan, EXI_DEV_EXT, __CARDUnlockedHandler)) {
            result = CARD_RESULT_BUSY;
        }
        else {
            card->unlockCallback = 0;

            if (!EXISelect(chan, EXI_DEV_EXT, CARDFreq)) {
                EXIUnlock(chan);
                result = CARD_RESULT_NOCARD;
            }
            else {
                SetupTimeoutAlarm(card);
                result = CARD_RESULT_READY;
            }
        }
    }

    OSRestoreInterrupts(enabled);
    return result;
}

#define AD1(x) ((u8)(((x) >> 17) & 0x7f))
#define AD1EX(x) ((u8)(AD1(x) | 0x80));
#define AD2(x) ((u8)(((x) >> 9) & 0xff))
#define AD3(x) ((u8)(((x) >> 7) & 0x03))
#define BA(x) ((u8)((x)&0x7f))

s32 __CARDReadSegment(s32 chan, CARDCallback callback) {
    CARDControl* card;
    s32 result;

    card = &__CARDBlock[chan];

    card->cmd[0] = 0x52;
    card->cmd[1] = AD1(card->addr);
    card->cmd[2] = AD2(card->addr);
    card->cmd[3] = AD3(card->addr);
    card->cmd[4] = BA(card->addr);
    card->cmdlen = 5;
    card->mode = 0;
    card->retry = 0;

    result = __CARDStart(chan, callback, 0);
    if (result == CARD_RESULT_BUSY) {
        result = CARD_RESULT_READY;
    }
    else if (result >= CARD_RESULT_READY) {
        if (!EXIImmEx(chan, card->cmd, card->cmdlen, EXI_WRITE)
        || !EXIImmEx(chan, (u8* )card->workArea + sizeof(CARDID), card->latency, EXI_WRITE)
        || !EXIDma(chan, card->buffer, 512, card->mode, __CARDTxHandler)) {
            card->txCallback = NULL;
            EXIDeselect(chan);
            EXIUnlock(chan);
            result = CARD_RESULT_NOCARD;
        }
        else {
            result = CARD_RESULT_READY;
        }
    }

    return result;
}

s32 __CARDWritePage(s32 chan, CARDCallback callback) {
    CARDControl* card;
    s32 result;

    card = &__CARDBlock[chan];
    card->cmd[0] = 0xF2;

    if (card->pageSize > 0x80) {
        card->cmd[1] = AD1(card->addr) | 0x80;
    }
    else {
        card->cmd[1] = AD1(card->addr);
    }

    card->cmd[2] = AD2(card->addr);
    card->cmd[3] = AD3(card->addr);
    card->cmd[4] = BA(card->addr);
    card->cmdlen = 5;
    card->mode = 1;
    card->retry = 3;

    result = __CARDStart(chan, 0, callback);
    if (result == CARD_RESULT_BUSY) {
        result = CARD_RESULT_READY;
    }
    else if (result >= CARD_RESULT_READY) {
        if (!EXIImmEx(chan, card->cmd, card->cmdlen, EXI_WRITE)
        || !EXIDma(chan, card->buffer, card->pageSize, card->mode, __CARDTxHandler)) {
            card->exiCallback = 0;
            EXIDeselect(chan);
            EXIUnlock(chan);
            result = CARD_RESULT_NOCARD;
        }
        else {
            result = CARD_RESULT_READY;
        }
    }
    
    return result;
}

s32 __CARDEraseSector(s32 chan, u32 addr, CARDCallback callback) {
    CARDControl* card;
    s32 result;

    card = &__CARDBlock[chan];

    if (card->pageSize > 0x80) {
        if (callback) {
            callback(chan, 0);
        }
        return 0;
    }

    card->cmd[0] = 0xF1;
    card->cmd[1] = AD1(addr);
    card->cmd[2] = AD2(addr);
    card->cmdlen = 3;
    card->mode = -1;
    card->retry = 3;

    result = __CARDStart(chan, 0, callback);

    if (result == CARD_RESULT_BUSY) {
        result = CARD_RESULT_READY;
    }
    else if (result >= CARD_RESULT_READY) {
        if (!EXIImmEx(chan, card->cmd, card->cmdlen, EXI_WRITE)) {
            result = CARD_RESULT_NOCARD;
            card->exiCallback = NULL;
        }
        else {
            result = CARD_RESULT_READY;
        }

        EXIDeselect(chan);
        EXIUnlock(chan);
    }
    return result;
}

void CARDInit() {
    int chan;

    if (__CARDBlock[0].diskID && __CARDBlock[1].diskID) {
        return;
    }

    __CARDEncode = OSGetFontEncode();

    OSRegisterVersion(__CARDVersion);

    DSPInit();

    for (chan = 0; chan < CARD_CHAN_MAX; ++chan) {
        CARDControl* card = &__CARDBlock[chan];

        card->result = CARD_RESULT_NOCARD;
        OSInitThreadQueue(&card->threadQueue);
        OSCreateAlarm(&card->alarm);
    }
    __CARDSetDiskID((void*)OSPhysicalToCached(OS_ADDR_BOOT_INFO));

    OSRegisterShutdownFunction(&ShutdownFunctionInfo);
}

u16 __CARDGetFontEncode(void) {
    return __CARDEncode;
}

void __CARDSetDiskID(const DVDDiskID* id) {
    __CARDBlock[CARD_CHAN_0].diskID = id ? id : &__CARDDiskNone;
    __CARDBlock[CARD_CHAN_1].diskID = id ? id : &__CARDDiskNone;
}

s32 __CARDGetControlBlock(s32 chan, CARDControl** pcard) {
    BOOL enabled;
    s32 result;
    CARDControl* card;

    card = &__CARDBlock[chan];

    if (chan < 0 || chan >= CARD_CHAN_MAX || card->diskID == 0) {
        return CARD_RESULT_FATAL_ERROR;
    }

    enabled = OSDisableInterrupts();

    if (!card->attached) {
        result = CARD_RESULT_NOCARD;
    }
    else if (card->result == CARD_RESULT_BUSY) {
        result = CARD_RESULT_BUSY;
    }
    else {
        card->result = CARD_RESULT_BUSY;
        result = CARD_RESULT_READY;
        card->apiCallback = NULL;
        *pcard = card;
    }

    OSRestoreInterrupts(enabled);
    return result;
}

s32 __CARDPutControlBlock(CARDControl* card, s32 result) {
    BOOL enabled;

    enabled = OSDisableInterrupts();
    if (card->attached) {
        card->result = result;
    }
    else if (card->result == CARD_RESULT_BUSY) {
        card->result = result;
    }

    OSRestoreInterrupts(enabled);
    return result;
}

s32 CARDGetResultCode(s32 chan) {
    CARDControl* card;

    if (chan < 0 || chan >= CARD_CHAN_MAX) {
        return CARD_RESULT_FATAL_ERROR;
    }
    card = &__CARDBlock[chan];
    return card->result;
}

s32 CARDFreeBlocks(s32 chan, s32* byteNotUsed, s32* filesNotUsed) {
    CARDControl* card;
    s32 result;
    u16* fat;
    CARDDir* dir;
    CARDDir* ent;
    u16 fileNo;

    result = __CARDGetControlBlock(chan, &card);
    if (result < CARD_RESULT_READY) {
        return result;
    }

    fat = __CARDGetFatBlock(card);
    dir = __CARDGetDirBlock(card);
    if (fat == 0 || dir == 0) {
        return __CARDPutControlBlock(card, CARD_RESULT_BROKEN);
    }

    if (byteNotUsed) {
        *byteNotUsed = (s32)(card->sectorSize * fat[CARD_FAT_FREEBLOCKS]);
    }

    if (filesNotUsed) {
        *filesNotUsed = 0;
        for (fileNo = 0; fileNo < CARD_MAX_FILE; fileNo++) {
            ent = &dir[fileNo];
            if (ent->fileName[0] == 0xff) {
                ++*filesNotUsed;
            }
        }
    }

    return __CARDPutControlBlock(card, CARD_RESULT_READY);
}

s32 CARDGetMemSize(s32 chan, u16* size) {
    CARDControl* card;
    s32 result;

    result = __CARDGetControlBlock(chan, &card);
    if (result < CARD_RESULT_READY) {
        return result;
    }

    *size = card->size;
    return __CARDPutControlBlock(card, CARD_RESULT_READY);
}

s32 CARDGetSectorSize(s32 chan, u32* size) {
    CARDControl* card;
    s32 result;

    result = __CARDGetControlBlock(chan, &card);
    if (result < CARD_RESULT_READY) {
        return result;
    }

    *size = card->sectorSize;
    return __CARDPutControlBlock(card, CARD_RESULT_READY);
}

s32 __CARDSync(s32 chan) {
    CARDControl* block;
    s32 result;
    s32 enabled;

    block = &__CARDBlock[chan];
    enabled = OSDisableInterrupts();
    while ((result = CARDGetResultCode(chan)) == CARD_RESULT_BUSY) {
        OSSleepThread(&block->threadQueue);
    }

    OSRestoreInterrupts(enabled);
    return result;
}

static BOOL OnShutdown(BOOL final, u32 value) {
    if (!final) {
        if (CARDUnmount(CARD_CHAN_0) == CARD_RESULT_BUSY || CARDUnmount(CARD_CHAN_1) == CARD_RESULT_BUSY) {
            return FALSE;
        }
    }

    return TRUE;
}

BOOL CARDGetFastMode() {
    return __CARDFastMode ? TRUE : FALSE;
}
