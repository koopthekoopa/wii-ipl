#include <revolution/card.h>
#include <private/card.h>

#include <revolution/os.h>
#include <private/os.h>

#include <string.h>

#define SECTOR(x) ((x)*1024)

static u32 SectorSizeTable[8] = {
    SECTOR(8),
    SECTOR(16),
    SECTOR(32),
    SECTOR(64),
    SECTOR(128),
    SECTOR(256),
    0,
    0,
};

static u32 LatencyTable[8] = {
    4, 8, 16, 32, 64, 128, 256, 512,
};

// prototypes
static s32 DoMount(s32 chan);
static void DoUnmount(s32 chan, s32 result);

static BOOL IsCard(u32 id) {
    u32 size;
    s32 sectorSize;
    if (id & (0xFFFF0000) && (id != 0x80000004 || __CARDVendorID == 0xFFFF)) {
        return FALSE;
    }

    if ((id & 3) != 0) {
        return FALSE;
    }

    size = id & 0xfc;
    switch (size) {
        case 4:
        case 8:
        case 16:
        case 32:
        case 64:
        case 128: {
            break;
        }
        default: {
            return FALSE;
            break;
        }
    }

    sectorSize = SectorSizeTable[(id & 0x00003800) >> 11];
    if (sectorSize == 0) {
        return FALSE;
    }

    if ((size * 1024 * 1024 / 8) / sectorSize < 8) {
        return FALSE;
    }

    return TRUE;
}

int CARDProbe(s32 chan) {
    if (__OSPADButton & 0x80) {
        return 0;
    }
    else {
        return EXIProbe(chan);
    }
}

static s32 DoMount(s32 chan) {
    CARDControl* card;
    u32 id;
    u8 status;
    s32 result;
    OSSramEx* sram;
    int i;
    u8 checkSum;
    int step;

    card = &__CARDBlock[chan];
    if (card->mountStep == 0) {
        if (EXIGetID(chan, 0, &id) == 0) {
            result = CARD_RESULT_NOCARD;
        }
        else if (IsCard(id)) {
            result = CARD_RESULT_READY;
        }
        else {
            result = CARD_RESULT_WRONGDEVICE;
        }

        if (result < 0) {
            goto error;
        }

        card->cid = id;
        card->size = (u16)(id & 0xFC);

        card->sectorSize = SectorSizeTable[(id & 0x00003800) >> 11];

        card->cBlock = (u16)((card->size * 1024 * 1024 / 8) / card->sectorSize);

        card->latency = LatencyTable[(id & 0x00000700) >> 8];

        result = __CARDReadVendorID(chan, &card->vendorID);
        if (result < 0) {
            goto error;
        }

        if (CARDGetFastMode() && (card->vendorID >> 8) == 0xEC) {
            card->pageSize = 512;
        }
        else {
            card->pageSize = 128;
        }

        result = __CARDClearStatus(chan);
        if (result < 0) {
            goto error;
        }

        result = __CARDReadStatus(chan, &status);
        if (result < 0) {
            goto error;
        }

        if (!EXIProbe(chan)) {
            result = CARD_RESULT_NOCARD;
            goto error;
        }

        if (!(status & 0x40)) {
            result = __CARDUnlock(chan, card->id);
            if (result < 0) {
                goto error;
            }

            checkSum = 0;
            sram = __OSLockSramEx();
            for (i = 0; i < 12; i++) {
                sram->flashID[chan][i] = card->id[i];
                checkSum += card->id[i];
            }
            sram->flashIDCheckSum[chan] = (u8)~checkSum;
            __OSUnlockSramEx(TRUE);

            return result;
        }
        else {
            card->mountStep = 1;

            checkSum = 0;
            sram = __OSLockSramEx();
            for (i = 0; i < 12; i++) {
                checkSum += sram->flashID[chan][i];
            }

            __OSUnlockSramEx(FALSE);
            if (sram->flashIDCheckSum[chan] != (u8)~checkSum) {
                result = CARD_RESULT_IOERROR;
                goto error;
            }
        }
    }

    if (card->mountStep == 1) {
        if (card->cid == 0x80000004) {
            u16 vendorID;

            sram = __OSLockSramEx();
            vendorID = *(u16*)sram->flashID[chan];
            __OSUnlockSramEx(FALSE);

            if (__CARDVendorID == 0xFFFF || vendorID != __CARDVendorID) {
                result = CARD_RESULT_WRONGDEVICE;
                goto error;
            }
        }

        card->mountStep = 2;

        result = __CARDEnableInterrupt(chan, TRUE);
        if (result < 0) {
            goto error;
        }

        EXISetExiCallback(chan, __CARDExiHandler);
        EXIUnlock(chan);
        DCInvalidateRange(card->workArea, CARD_WORKAREA_SIZE);
    }

    step = card->mountStep - 2;
    result = __CARDRead(chan, (u32)card->sectorSize * step, CARD_SYSTEM_BLOCK_SIZE,
                        (u8 *)card->workArea + (CARD_SYSTEM_BLOCK_SIZE * step), __CARDMountCallback);
    if (result < 0) {
        __CARDPutControlBlock(card, result);
    }
    return result;

error:
    EXIUnlock(chan);
    DoUnmount(chan, result);
    return result;
}

void __CARDMountCallback(s32 chan, s32 result) {
    CARDControl* card;
    CARDCallback callback;

    card = &__CARDBlock[chan];
    switch (result) {
        case CARD_RESULT_READY: {
            if (++card->mountStep < CARD_MAX_MOUNT_STEP) {
                result = DoMount(chan);
                if (0 <= result)
                    return;
            }
            else {
                result = __CARDVerify(card);
            }
            break;
        }
        case CARD_RESULT_UNLOCKED: {
            card->unlockCallback = __CARDMountCallback;
            if (!EXILock(chan, 0, __CARDUnlockedHandler)) {
                return;
            }
            card->unlockCallback = 0;

            result = DoMount(chan);
            if (result >= 0) {
                return;
            }
            break;
        }
        case CARD_RESULT_IOERROR:
        case CARD_RESULT_NOCARD: {
            DoUnmount(chan, result);
            break;
        }
    }

    callback = card->apiCallback;
    card->apiCallback = NULL;
    __CARDPutControlBlock(card, result);

    callback(chan, result);
}

s32 CARDMountAsync(s32 chan, void* workArea, CARDCallback detachCallback, CARDCallback attachCallback) {
    CARDControl* card;
    BOOL enabled;

    if (chan < 0 || CARD_CHAN_MAX <= chan)
        return CARD_RESULT_FATAL_ERROR;

    if (__OSPADButton & 0x80) {
        return CARD_RESULT_NOCARD;
    }

    card = &__CARDBlock[chan];

    enabled = OSDisableInterrupts();
    if (card->result == CARD_RESULT_BUSY) {
        OSRestoreInterrupts(enabled);
        return CARD_RESULT_BUSY;
    }

    if (!card->attached && (EXIGetState(chan) & 0x08)) {
        OSRestoreInterrupts(enabled);
        return CARD_RESULT_WRONGDEVICE;
    }

    card->result = CARD_RESULT_BUSY;
    card->workArea = workArea;
    card->extCallback = detachCallback;
    card->apiCallback = attachCallback ? attachCallback : __CARDDefaultApiCallback;
    card->exiCallback = 0;

    if (!card->attached && !EXIAttach(chan, __CARDExtHandler)) {
        card->result = CARD_RESULT_NOCARD;
        OSRestoreInterrupts(enabled);
        return CARD_RESULT_NOCARD;
    }

    card->mountStep = 0;
    card->attached = TRUE;
    EXISetExiCallback(chan, 0);
    OSCancelAlarm(&card->alarm);

    card->currentDir = 0;
    card->currentFat = 0;

    OSRestoreInterrupts(enabled);

    card->unlockCallback = __CARDMountCallback;
    if (!EXILock(chan, 0, __CARDUnlockedHandler)) {
        return CARD_RESULT_READY;
    }

    card->unlockCallback = 0;
    return DoMount(chan);
}

s32 CARDMount(s32 chan, void* workArea, CARDCallback detachCallback) {
    s32 result = CARDMountAsync(chan, workArea, detachCallback, __CARDSyncCallback);

    if (result < 0) {
        return result;
    }
    return __CARDSync(chan);
}

static void DoUnmount(s32 chan, s32 result) {
    CARDControl* card;
    BOOL enabled;

    card = &__CARDBlock[chan];
    enabled = OSDisableInterrupts();
    if (card->attached) {
        EXISetExiCallback(chan, 0);
        EXIDetach(chan);
        OSCancelAlarm(&card->alarm);
        card->attached = FALSE;
        card->result = result;
        card->mountStep = 0;
    }
    OSRestoreInterrupts(enabled);
}

s32 CARDUnmount(s32 chan) {
    CARDControl* card;
    s32 result;

    result = __CARDGetControlBlock(chan, &card);
    if (result < 0) {
        return result;
    }

    DoUnmount(chan, CARD_RESULT_NOCARD);
    return CARD_RESULT_READY;
}
