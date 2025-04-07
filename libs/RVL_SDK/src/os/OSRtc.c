#include <revolution/os.h>
#include <private/os.h>

#include <private/exi.h>

static SramControl Scb ALIGN32;

u16  OSGetGbsMode();
void OSSetGbsMode(u16 mode);

static BOOL GetRTC(u32* rtc) {
    int err;
    u32 cmd;

    if (!EXILock(EXI_CHAN_0, EXI_DEV_INT, NULL)) {
        return FALSE;
    }
    if (!EXISelect(EXI_CHAN_0, EXI_DEV_INT, EXI_FREQ_8MHZ)) {
        EXIUnlock(EXI_CHAN_0);
        return FALSE;
    }
    cmd = 0x20000000;
    err = 0;
    err |= !EXIImm(EXI_CHAN_0, &cmd, sizeof(u32), EXI_WRITE, NULL);
    err |= !EXISync(EXI_CHAN_0);
    err |= !EXIImm(EXI_CHAN_0, &cmd, sizeof(u32), EXI_READ, NULL);
    err |= !EXISync(EXI_CHAN_0);
    err |= !EXIDeselect(EXI_CHAN_0);
    EXIUnlock(EXI_CHAN_0);

    rtc[0] = cmd;

    return !err;
}

BOOL __OSGetRTC(u32* rtc) {
    int err;
    u32 t0;
    u32 t1;
    int i;

    for(i = 0; i < 16; i++) {
        err = 0;
        err |= !GetRTC(&t0);
        err |= !GetRTC(&t1);
        if (err) {
            break;
        }
        if (t0 == t1) {
            rtc[0] = t0;
            return TRUE;
        }
    }
    return FALSE;
}

BOOL __OSSetRTC(u32 rtc) {
    int err;
    u32 cmd;

    if (!EXILock(EXI_CHAN_0, EXI_DEV_INT, NULL)) {
        return FALSE;
    }
    if (!EXISelect(EXI_CHAN_0, EXI_DEV_INT, EXI_FREQ_8MHZ)) {
        EXIUnlock(EXI_CHAN_0);
        return FALSE;
    }
    cmd = 0xA0000000;
    err = 0;
    err |= !EXIImm(EXI_CHAN_0, &cmd, sizeof(u32), EXI_WRITE, NULL);
    err |= !EXISync(EXI_CHAN_0);
    err |= !EXIImm(EXI_CHAN_0, &rtc, sizeof(u32), EXI_WRITE, NULL);
    err |= !EXISync(EXI_CHAN_0);
    err |= !EXIDeselect(EXI_CHAN_0);
    EXIUnlock(EXI_CHAN_0);
    return !err;
}

static BOOL ReadSram(void* buffer) {
    BOOL err;
    u32 cmd;

    DCInvalidateRange(buffer, 64);

    if (!EXILock(EXI_CHAN_0, EXI_DEV_INT, NULL)) {
        return FALSE;
    }

    if (!EXISelect(EXI_CHAN_0, EXI_DEV_INT, EXI_FREQ_8MHZ)) {
        EXIUnlock(EXI_CHAN_0);
        return FALSE;
    }

    cmd = 0x20000000 | 0x100;
    err = FALSE;
    err |= !EXIImm(EXI_CHAN_0, &cmd, sizeof(u32), EXI_WRITE, NULL);
    err |= !EXISync(EXI_CHAN_0);
    err |= !EXIDma(EXI_CHAN_0, buffer, 64, EXI_READ, NULL);
    err |= !EXISync(EXI_CHAN_0);
    err |= !EXIDeselect(EXI_CHAN_0);
    EXIUnlock(EXI_CHAN_0);
    return !err;
}

static BOOL WriteSram(void* buffer, u32 offset, u32 size);

static void WriteSramCallback(s32 chan, OSContext* context) {
    Scb.sync = WriteSram(Scb.sram + Scb.offset, Scb.offset, 64 - Scb.offset);

    if (Scb.sync) {
        Scb.offset = 64;
    }
}

void __OSInitSram() {
    Scb.locked = Scb.enabled = FALSE;
    Scb.sync = ReadSram(Scb.sram);
    Scb.offset = 64;

    OSSetGbsMode(OSGetGbsMode());
}

static BOOL WriteSram(void* buffer, u32 offset, u32 size) {
    BOOL err;
    u32 cmd;

    if (!EXILock(EXI_CHAN_0, EXI_WRITE, WriteSramCallback)) {
        return FALSE;
    }

    if (!EXISelect(EXI_CHAN_0, EXI_WRITE, EXI_FREQ_8MHZ)) {
        EXIUnlock(EXI_CHAN_0);
        return FALSE;
    }

    offset <<= 6;
    cmd = 0xA0000000 | 0x000000100 + offset;
    err = FALSE;
    err |= !EXIImm(EXI_CHAN_0, &cmd, sizeof(u32), EXI_WRITE, NULL);
    err |= !EXISync(EXI_CHAN_0);
    err |= !EXIImmEx(EXI_CHAN_0, buffer, size, EXI_WRITE);
    err |= !EXIDeselect(EXI_CHAN_0);
    EXIUnlock(EXI_CHAN_0);
    return !err;
}

static void* LockSram(u32 offset) {
    BOOL enabled;
    enabled = OSDisableInterrupts();

    if (Scb.locked) {
        OSRestoreInterrupts(enabled);
        return NULL;
    }

    Scb.enabled = enabled;
    Scb.locked = TRUE;
    return Scb.sram + offset;
}

OSSram* __OSLockSram() {
    return LockSram(0);
}

OSSramEx* __OSLockSramEx() {
    return LockSram(sizeof(OSSram));
}

BOOL UnlockSram(BOOL commit, u32 offset) {
    u16* p;

    if (commit) {
        if (offset == 0) {
            OSSram* sram = (OSSram*)Scb.sram;

            if ((sram->flags & 3) > (u32)2) {
                sram->flags &= ~3;
            }

            sram->checkSum = sram->checkSumInv = 0;

            for (p = (u16*)&sram->counterBias; p < (u16*)(Scb.sram + sizeof(OSSram)); p++) {
                sram->checkSum += *p;
                sram->checkSumInv += ~*p;
            }
        }

        if (offset < Scb.offset) {
            Scb.offset = offset;
        }

        if (Scb.offset <= sizeof(OSSram)) {
            OSSramEx* sram = (OSSramEx*)(Scb.sram + sizeof(OSSram));

            if ((sram->gbs & 0x7C00) == (u32)0x5000 || (sram->gbs & 0xC0) == (u32)0xC0) {
                sram->gbs = 0;
            }
        }

        Scb.sync = WriteSram(Scb.sram + Scb.offset, Scb.offset, 64 - Scb.offset);
    
        if (Scb.sync) {
            Scb.offset = 64;
        }
    }

    Scb.locked = FALSE;
    OSRestoreInterrupts(Scb.enabled);
    return Scb.sync;
}


BOOL __OSUnlockSram(BOOL commit) {
    return UnlockSram(commit, 0);
}

BOOL __OSUnlockSramEx(BOOL commit) {
    return UnlockSram(commit, sizeof(OSSram));
}

BOOL __OSSyncSram() {
    return Scb.sync;
}

int __OSCheckSram() {
    u16 *p, checkSum, checkSumInv;
    OSSram* sram;

    checkSum = checkSumInv = 0;

    sram = (OSSram*)Scb.sram;

    for (p = (void*)&sram->counterBias; p < (u16*)&Scb.sram[0x14]; p++) {
        checkSum += *p;
        checkSumInv += ~(*p);
    }

    return (sram->checkSum == checkSum && sram->checkSumInv == checkSumInv);
}

BOOL __OSReadROM(void* buffer, s32 length, s32 offset) {
    BOOL err;
    u32 cmd;

    DCInvalidateRange(buffer, (u32)length);

    if (!EXILock(EXI_CHAN_0, EXI_DEV_INT, NULL)) {
        return FALSE;
    }

    if (!EXISelect(EXI_CHAN_0, EXI_DEV_INT, EXI_FREQ_8MHZ)) {
        EXIUnlock(EXI_CHAN_0);
        return FALSE;
    }

    cmd = (u32)(offset << 6);
    err = FALSE;
    err |= !EXIImm(EXI_CHAN_0, &cmd, sizeof(u32), EXI_WRITE, NULL);
    err |= !EXISync(EXI_CHAN_0);
    err |= !EXIDma(EXI_CHAN_0, buffer, length, EXI_READ, NULL);
    err |= !EXISync(EXI_CHAN_0);
    err |= !EXIDeselect(EXI_CHAN_0);
    EXIUnlock(EXI_CHAN_0);
    return !err;
}

u16 OSGetGbsMode() {
    OSSramEx* sram;
    u16 mode;
    sram = __OSLockSramEx();
    mode = sram->gbs;
    __OSUnlockSramEx(FALSE);
    return mode;
}

void OSSetGbsMode(u16 mode) {
    OSSramEx* sram;

    if ((mode & 0x7C00) == (u32)0x5000 || (mode & 0xC0) == (u32)0xC0) {
        mode = 0;
    }

    sram = __OSLockSramEx();

    if (mode == sram->gbs) {
        __OSUnlockSramEx(FALSE);
        return;
    }

    sram->gbs = mode;
    __OSUnlockSramEx(TRUE);
}

u32 OSGetSoundMode() {
    OSSram* sram = __OSLockSram();
    u32 mode = (sram->flags & 4) ? 1 : 0;

    __OSUnlockSram(FALSE);
    return mode;
}

void OSSetSoundMode(u32 mode) {
    OSSram* sram;

    mode *= 4;
    mode &= 4;
    sram = __OSLockSram();
    if (mode == (sram->flags & 4)) {
        __OSUnlockSram(FALSE);
        return;
    }
    sram->flags &= 0xFFFFFFFB;
    sram->flags |= mode;
    __OSUnlockSram(TRUE);
}

u32 OSGetProgressiveMode() {
    OSSram* sram;
    u32 mode;

    sram = __OSLockSram();
    mode = (sram->flags & 0x80) >> 7;
    __OSUnlockSram(FALSE);
    return mode;
}

void OSSetProgressiveMode(u32 mode) {
    OSSram* sram;

    mode <<= 7;
    mode &= 0x80;
    sram = __OSLockSram();
    if (mode == (sram->flags & 0x80)) {
        __OSUnlockSram(FALSE);
        return;
    }

    sram->flags &= ~0x80;
    sram->flags |= mode;
    __OSUnlockSram(TRUE);
}

void OSSetVideoMode(u32 mode) {
    OSSram* sram;

    if (mode > 2) {
        mode = 0;
    }

    sram = __OSLockSram();

    if (mode == (sram->flags & 3)) {
        __OSUnlockSram(FALSE);
        return;
    }
    sram->flags &= 0xFFFFFFFC;
    sram->flags |= mode;
    __OSUnlockSram(TRUE);
}

u8 OSGetLanguage() {
    OSSram* sram = __OSLockSram();
    u8 language = sram->language;

    __OSUnlockSram(FALSE);
    return language;
}

void OSSetLanguage(u8 language) {
    OSSram* sram = __OSLockSram();

    if (language == sram->language) {
        __OSUnlockSram(FALSE);
        return;
    }
    sram->language = language;
    __OSUnlockSram(TRUE);
}

u32 OSGetEuRgb60Mode() {
    OSSram* sram;
    u32 mode;

    sram = __OSLockSram();
    mode = (sram->ntd & 0x40) >> 6;
    __OSUnlockSram(FALSE);
    return mode;
}

void OSSetEuRgb60Mode(u32 mode) {
    OSSram* sram;

    mode <<= 6;
    mode &= 0x40;

    sram = __OSLockSram();
    if (mode == (sram->ntd & 0x40)) {
        __OSUnlockSram(FALSE);
    }
    else {
        sram->ntd &= ~0x40;
        sram->ntd |= mode;
        __OSUnlockSram(TRUE);
    }
}

u16 OSGetWirelessID(s32 chan) {
    OSSramEx* sram;
    u16 id;
    sram = __OSLockSramEx();
    id = sram->wirelessPadID[chan];
    __OSUnlockSramEx(FALSE);
    return id;
}

void OSSetWirelessID(s32 chan, u16 id) {
    OSSramEx* sram;
    sram = __OSLockSramEx();

    if (sram->wirelessPadID[chan] != id) {
        sram->wirelessPadID[chan] = id;
        __OSUnlockSramEx(TRUE);
    }
    else {
        __OSUnlockSramEx(FALSE);
    }
}

BOOL __OSGetRTCFlags(u32* flags) {
    BOOL err;
    u32 cmd;

    if (!EXILock(EXI_CHAN_0, EXI_DEV_INT, NULL)) {
        return FALSE;
    }

    if (!EXISelect(EXI_CHAN_0, EXI_DEV_INT, EXI_FREQ_8MHZ)) {
        EXIUnlock(EXI_CHAN_0);
        return FALSE;
    }

    cmd = 0x21000800;
    err = FALSE;
    err |= !EXIImm(EXI_CHAN_0, &cmd, sizeof(u32), EXI_WRITE, NULL);
    err |= !EXISync(EXI_CHAN_0);
    err |= !EXIImm(EXI_CHAN_0, &cmd, sizeof(u32), EXI_READ, NULL);
    err |= !EXISync(EXI_CHAN_0);
    err |= !EXIDeselect(EXI_CHAN_0);
    EXIUnlock(EXI_CHAN_0);
    *flags = cmd;

    return !err;
}

BOOL __OSClearRTCFlags() {
    BOOL err;
    u32 cmd;
    u32 data = 0;

    if (!EXILock(EXI_CHAN_0, EXI_DEV_INT, NULL)) {
        return FALSE;
    }

    if (!EXISelect(EXI_CHAN_0, EXI_DEV_INT, EXI_FREQ_8MHZ)) {
        EXIUnlock(EXI_CHAN_0);
        return FALSE;
    }
    
    cmd = 0xA1000800;
    err = FALSE;
    err |= !EXIImm(EXI_CHAN_0, &cmd, sizeof(u32), EXI_WRITE, NULL);
    err |= !EXISync(EXI_CHAN_0);
    err |= !EXIImm(EXI_CHAN_0, &data, sizeof(u32), EXI_WRITE, NULL);
    err |= !EXISync(EXI_CHAN_0);
    err |= !EXIDeselect(EXI_CHAN_0);
    EXIUnlock(EXI_CHAN_0);

    return !err;
}
