#include <private/exi.h>

#include <private/os.h>

#include <private/dvd.h>

#include <private/hollywood.h>

#include <revolution/verdefs.h>

#include <string.h>

DefineVersion(RVL_SDK, EXI, "Apr 20 2010", "11:19:09");

#define EXI_CHAN_REG(chan, idx) (__EXIRegs[((chan) * (EXI_REG_SIZE >> 2)) + (idx >> 2)])

static EXIControl   Ecb[EXI_CHAN_MAX];
static u32          IDSerialPort1;

BOOL    __EXIProbe(s32 chan);

static void SetExiInterruptMask(s32 chan, EXIControl* exi) {
    EXIControl* exi2;
    exi2 = &Ecb[EXI_CHAN_2];

    switch (chan) {
        case EXI_CHAN_0:
            if ((exi->exiCallback == 0 && exi2->exiCallback == 0) || HAS_FLAG(exi->state, EXI_STATE_LOCKED)) {
                __OSMaskInterrupts(OS_INTERRUPTMASK_EXI_0_EXI | OS_INTERRUPTMASK_EXI_2_EXI);
            }
            else {
                __OSUnmaskInterrupts(OS_INTERRUPTMASK_EXI_0_EXI | OS_INTERRUPTMASK_EXI_2_EXI);
            }
            break;
        case EXI_CHAN_1:
            if (exi->exiCallback == 0 || HAS_FLAG(exi->state, EXI_STATE_LOCKED)) {
                __OSMaskInterrupts(OS_INTERRUPTMASK_EXI_1_EXI);
            }
            else {
                __OSUnmaskInterrupts(OS_INTERRUPTMASK_EXI_1_EXI);
            }
            break;
        case EXI_CHAN_2:
            if (__OSGetInterruptHandler(__OS_INTERRUPT_PI_DEBUG) == 0 || HAS_FLAG(exi->state, EXI_STATE_LOCKED)) {
                __OSMaskInterrupts(OS_INTERRUPTMASK_PI_DEBUG);
            }
            else {
                __OSUnmaskInterrupts(OS_INTERRUPTMASK_PI_DEBUG);
            }
            break;
    }
}

static void CompleteTransfer(s32 chan) {
    EXIControl* exi = &Ecb[chan];
    u8* buffer;
    u32 data;
    s32 length;

    if (HAS_FLAG(exi->state, EXI_STATE_BUSY)) {
        if (HAS_FLAG(exi->state, EXI_STATE_IMM) && exi->immLen != 0) {
            int i = 0;

            length = exi->immLen;
            buffer = exi->immBuf;
            data = EXI_CHAN_REG(chan, EXI_DATA);

            for (i = 0; i < length; i++) {
                *buffer++ = (u8)((data >> ((3 - i) * 8)) & 0xFF);
            }
        }

        CLEAR_FLAG(exi->state, EXI_STATE_BUSY);
    }
}

BOOL EXIImm(s32 chan, void* buffer, s32 length, u32 type, EXICallback callback) {
    EXIControl* exi;
    BOOL enabled;

    exi = &Ecb[chan];
    enabled = OSDisableInterrupts();

    if (HAS_FLAG(exi->state, EXI_STATE_BUSY) || !HAS_FLAG(exi->state, EXI_STATE_SELECTED)) {
        OSRestoreInterrupts(enabled);
        return FALSE;
    }

    exi->tcCallback = callback;
    if (exi->tcCallback) {
        EXIClearInterrupts(chan, FALSE, TRUE, FALSE);
        __OSUnmaskInterrupts((u32)(OS_INTERRUPTMASK_EXI_0_TC) >> (chan * EXI_CHAN_MAX));
    }

    exi->state |= EXI_STATE_IMM;
    if (type != EXI_READ) {
        u32 data = 0;
        int i;
        for(i = 0; i < length; i++) {
            data |= ((u8*)buffer)[i] << ((3 - i) * 8);
        }
        EXI_CHAN_REG(chan, EXI_DATA) = data;
    }

    exi->immBuf = buffer;
    exi->immLen = (type != EXI_WRITE) ? length : 0; 
    EXI_CHAN_REG(chan, EXI_CONTROL) = (type << 2) | (1<<EXI_CONTROL_TSTART) | ((length - 1) << 4);

    OSRestoreInterrupts(enabled);

    return TRUE;
}

BOOL EXIImmEx(s32 chan, u8* buffer, s32 length, u32 mode) {
    s32 bufferLen;

    while (length) {
        bufferLen = (length < 4) ? length : 4;
        if (!EXIImm(chan, buffer, bufferLen, mode, 0)) {
            return FALSE;
        }
        if (!EXISync(chan)) {
            return FALSE;
        }
        buffer += bufferLen;
        length -= bufferLen;
    }

    return TRUE;
}

BOOL EXIDma(s32 chan, void* buffer, s32 length, u32 type, EXICallback callback) {
    EXIControl* exi;
    BOOL enabled;

    exi = &Ecb[chan];

    enabled = OSDisableInterrupts();
    if (HAS_FLAG(exi->state, EXI_STATE_BUSY) || !HAS_FLAG(exi->state, EXI_STATE_SELECTED)) {
        OSRestoreInterrupts(enabled);
        return FALSE;
    }

    exi->tcCallback = callback;
    if (exi->tcCallback) {
        EXIClearInterrupts(chan, FALSE, TRUE, FALSE);
        __OSUnmaskInterrupts((u32)(OS_INTERRUPTMASK_EXI_0_TC) >> (chan * EXI_CHAN_MAX));
    }

    SET_FLAG(exi->state, EXI_STATE_DMA);

    EXI_CHAN_REG(chan, EXI_MEM_ADDRESS) = (u32)buffer & ~0x1F;
    EXI_CHAN_REG(chan, EXI_LENGTH) = length;
    EXI_CHAN_REG(chan, EXI_CONTROL) = (type << 2) | (1<<EXI_CONTROL_TSTART) | (1<<EXI_CONTROL_DMA);

    OSRestoreInterrupts(enabled);

    return TRUE;
}

BOOL EXISync(s32 chan) {
    EXIControl* exi = &Ecb[chan];
    BOOL result = FALSE;
    BOOL enabled;

    while HAS_FLAG(exi->state, EXI_STATE_SELECTED) {
        if (!HAS_FLAG(EXI_CHAN_REG(chan, EXI_CONTROL), (1<<EXI_CONTROL_TSTART))) {
            enabled = OSDisableInterrupts();

            if (HAS_FLAG(exi->state, EXI_STATE_SELECTED)) {
                CompleteTransfer(chan);

                if (__OSGetDIConfig() != 0xFF || (OSGetConsoleType() & OS_CONSOLE_MASK) == OS_CONSOLE_MASK_TDEV || exi->immLen != 4
                || (EXI_CHAN_REG(chan, EXI_CHAN_PARAM) & (7<<EXI_CHAN_PARAM_CLK))
                || (EXI_CHAN_REG(chan, EXI_DATA) != 0x1010000 && EXI_CHAN_REG(chan, EXI_DATA) != 0x5070000 && EXI_CHAN_REG(chan, EXI_DATA) != 0x4220001) ||
                __OSDeviceCode == (DVD_DEVICE_CODE | 0x0200)) {
                    result = TRUE;
                }
            }

            OSRestoreInterrupts(enabled);
            break;
        }
    }

    return result;
}

u32 EXIClearInterrupts(s32 chan, BOOL clearExi, BOOL clearTc, BOOL clearExt) {
    u32 old;
    u32 new;

    old = new = EXI_CHAN_REG(chan, EXI_CHAN_PARAM);
    new &= 0x7F5;

    if (clearExi) {
        SET_FLAG(new, 1<<EXI_CHAN_PARAM_INT);
    }

    if (clearTc) {
        SET_FLAG(new, 1<<EXI_CHAN_PARAM_TCINT);
    }

    if (clearExt) {
        SET_FLAG(new, 1<<EXI_CHAN_PARAM_EXTINT);
    }

    EXI_CHAN_REG(chan, EXI_CHAN_PARAM) = new;

    return old;
}

EXICallback EXISetExiCallback(s32 chan, EXICallback exiCallback) {
    EXIControl* exi;
    EXICallback prev;
    BOOL enabled;

    exi = &Ecb[chan];
    enabled = OSDisableInterrupts();

    prev = exi->exiCallback;
    exi->exiCallback = exiCallback;
    if (chan != EXI_CHAN_2) {
        SetExiInterruptMask(chan, exi);
    }
    else {
        SetExiInterruptMask(EXI_CHAN_0, &Ecb[0]);
    }

    OSRestoreInterrupts(enabled);
    return prev;
}

void EXIProbeReset() {
    __EXIProbeStartTime[EXI_CHAN_0] = __EXIProbeStartTime[EXI_CHAN_1] = 0;
    Ecb[EXI_CHAN_0].idTime = Ecb[EXI_CHAN_1].idTime = 0;
    __EXIProbe(EXI_CHAN_0);
    __EXIProbe(EXI_CHAN_1);
}

BOOL __EXIProbe(s32 chan) {
    EXIControl* exi;
    BOOL enabled;
    BOOL result;
    u32 chanParam;
    s32 t;

    exi = &Ecb[chan];
    if (chan == EXI_CHAN_2) {
        return TRUE;
    }

    result = TRUE;
    enabled = OSDisableInterrupts();
    chanParam = EXI_CHAN_REG(chan, EXI_CHAN_PARAM);

    if (!HAS_FLAG(exi->state, EXI_STATE_ATTACHED)) {
        if (HAS_FLAG(chanParam, (1<<EXI_CHAN_PARAM_EXTINT))) {
            EXIClearInterrupts(chan, FALSE, FALSE, TRUE);
            __EXIProbeStartTime[chan] = exi->idTime = 0;
        }

        if (HAS_FLAG(chanParam, (1<<EXI_CHAN_PARAM_EXT))) {
            t = ((s32)(OSTicksToMilliseconds(OSGetTime()) / 100) + 1);
            if (__EXIProbeStartTime[chan] == 0) {
                __EXIProbeStartTime[chan] = t;
            }
            if (t - (s32)__EXIProbeStartTime[chan] < 3) {
                result = FALSE;
            }
        }
        else {
            __EXIProbeStartTime[chan] = exi->idTime = 0;
            result = FALSE;
        }
    } 
    else if (!HAS_FLAG(chanParam, (1<<EXI_CHAN_PARAM_EXT)) || HAS_FLAG(chanParam, (1<<EXI_CHAN_PARAM_EXTINT))) {
        __EXIProbeStartTime[chan] = exi->idTime = 0;
        result = FALSE;
    }

    OSRestoreInterrupts(enabled);
    return result;
}

BOOL EXIProbe(s32 chan) {
    EXIControl* exi = &Ecb[chan];
    BOOL result;
    u32 id;
    
    result = __EXIProbe(chan);
    if (result && !exi->idTime) {
        result = EXIGetID(chan, EXI_DEV_EXT, &id) ? TRUE : FALSE;
    }
    return result;
}

s32 EXIProbeEx(s32 chan) {
    if (EXIProbe(chan)) {
        return 1;
    }
    if (__EXIProbeStartTime[chan]) {
        return 0;
    }
    return -1;
}

static BOOL __EXIAttach(s32 chan, EXICallback extCallback) {
    EXIControl* exi;
    BOOL enabled;

    exi = &Ecb[chan];
    enabled = OSDisableInterrupts();

    if (HAS_FLAG(exi->state, EXI_STATE_ATTACHED) || !__EXIProbe(chan)) {
        OSRestoreInterrupts(enabled);
        return FALSE;
    }

    EXIClearInterrupts(chan, TRUE, FALSE, FALSE);
    exi->extCallback = extCallback;
    __OSUnmaskInterrupts((u32)OS_INTERRUPTMASK_EXI_0_EXT >> (chan * EXI_CHAN_MAX));
    exi->state |= EXI_STATE_ATTACHED;

    OSRestoreInterrupts(enabled);
    return TRUE;
}

BOOL EXIAttach(s32 chan, EXICallback extCallback) {
    EXIControl* exi;
    BOOL enabled;
    int result;

    exi = &Ecb[chan];

    EXIProbe(chan);
    enabled = OSDisableInterrupts();
    if (exi->idTime == 0) {
        OSRestoreInterrupts(enabled);
        return FALSE;
    }

    result = __EXIAttach(chan, extCallback);
    OSRestoreInterrupts(enabled);

    return result;
}

BOOL EXIDetach(s32 chan) {
    EXIControl* exi;
    BOOL enabled;

    exi = &Ecb[chan];
    enabled = OSDisableInterrupts();

    if (!HAS_FLAG(exi->state, EXI_STATE_ATTACHED)) {
        OSRestoreInterrupts(enabled);
        return TRUE;
    }

    if (HAS_FLAG(exi->state, EXI_STATE_LOCKED) && exi->dev == EXI_DEV_EXT) {
        OSRestoreInterrupts(enabled);
        return FALSE;
    }

    CLEAR_FLAG(exi->state, EXI_STATE_ATTACHED);
    __OSMaskInterrupts((u32)(OS_INTERRUPTMASK_EXI_0_EXI | OS_INTERRUPTMASK_EXI_0_EXT) >> (chan * EXI_CHAN_MAX));

    OSRestoreInterrupts(enabled);
    return TRUE;
}

BOOL EXISelectSD(s32 chan, u32 dev, u32 freq) {
    EXIControl* exi;
    u32 chanParam;
    BOOL enabled;

    exi = &Ecb[chan];

    enabled = OSDisableInterrupts();
    if (HAS_FLAG(exi->state, EXI_STATE_SELECTED) || (chan != EXI_CHAN_2
    && ((dev == EXI_DEV_EXT && !HAS_FLAG(exi->state, EXI_STATE_ATTACHED) && !EXIProbe(chan)) || !HAS_FLAG(exi->state, EXI_STATE_LOCKED)
    || exi->dev != dev))) {
        OSRestoreInterrupts(enabled);
        return FALSE;
    }

    SET_FLAG(exi->state, EXI_STATE_SELECTED);
    chanParam = EXI_CHAN_REG(chan, EXI_CHAN_PARAM);
    chanParam &= ((1<<EXI_CHAN_PARAM_INTMASK) | (1<<EXI_CHAN_PARAM_TCINTMASK) | (1<<EXI_CHAN_PARAM_EXTINTMASK));
    chanParam |= freq * 0x10;
    EXI_CHAN_REG(chan, EXI_CHAN_PARAM) = chanParam;

    if (HAS_FLAG(exi->state, EXI_STATE_ATTACHED)) {
        switch (chan) {
            case EXI_CHAN_0:
                __OSMaskInterrupts(OS_INTERRUPTMASK_EXI_0_EXT);
                break;
            case EXI_CHAN_1:
                __OSMaskInterrupts(OS_INTERRUPTMASK_EXI_1_EXT);
                break;
        }
    }

    OSRestoreInterrupts(enabled);

    return TRUE;
}

BOOL EXISelect(s32 chan, u32 dev, u32 freq) {
    EXIControl* exi;
    u32 chanParam;
    BOOL enabled;

    exi = &Ecb[chan];

    enabled = OSDisableInterrupts();
    if (HAS_FLAG(exi->state, EXI_STATE_SELECTED) || (chan != EXI_CHAN_2
    && ((dev == EXI_DEV_EXT && !HAS_FLAG(exi->state, EXI_STATE_ATTACHED) && !__EXIProbe(chan)) || !HAS_FLAG(exi->state, EXI_STATE_LOCKED)
    || exi->dev != dev))) {
        OSRestoreInterrupts(enabled);
        return FALSE;
    }

    SET_FLAG(exi->state, EXI_STATE_SELECTED);
    chanParam = EXI_CHAN_REG(chan, EXI_CHAN_PARAM);
    chanParam &= ((1<<EXI_CHAN_PARAM_INTMASK) | (1<<EXI_CHAN_PARAM_TCINTMASK) | (1<<EXI_CHAN_PARAM_EXTINTMASK));
    chanParam |= (((1 << dev) << 7) | (freq * 0x10));
    EXI_CHAN_REG(chan, EXI_CHAN_PARAM) = chanParam;

    if (HAS_FLAG(exi->state, EXI_STATE_ATTACHED)) {
        switch (chan) {
            case EXI_CHAN_0:
                __OSMaskInterrupts(OS_INTERRUPTMASK_EXI_0_EXT);
                break;
            case EXI_CHAN_1:
                __OSMaskInterrupts(OS_INTERRUPTMASK_EXI_1_EXT);
                break;
        }
    }

    OSRestoreInterrupts(enabled);

    return TRUE;
}

BOOL EXISelectEx(s32 chan, u32 dev, u32 freq) {
    EXIControl* exi = &Ecb[chan];
    u32 chanParam;

    SET_FLAG(exi->state, EXI_STATE_SELECTED);
    chanParam = EXI_CHAN_REG(chan, EXI_CHAN_PARAM);
    chanParam &= ((1<<EXI_CHAN_PARAM_INTMASK) | (1<<EXI_CHAN_PARAM_TCINTMASK) | (1<<EXI_CHAN_PARAM_EXTINTMASK));
    chanParam |= ((1 << dev) << 7) | (freq << 4);
    EXI_CHAN_REG(chan, EXI_CHAN_PARAM) = chanParam;

    return TRUE;
}

BOOL EXIDeselect(s32 chan) {
    EXIControl* exi;
    u32 chanParam;
    BOOL enabled;

    exi = &Ecb[chan];
    enabled = OSDisableInterrupts();

    if (!HAS_FLAG(exi->state, EXI_STATE_SELECTED)) {
        OSRestoreInterrupts(enabled);
        return FALSE;
    }

    CLEAR_FLAG(exi->state, EXI_STATE_SELECTED);
    chanParam = EXI_CHAN_REG(chan, EXI_CHAN_PARAM);
    EXI_CHAN_REG(chan, EXI_CHAN_PARAM) = chanParam & ((1<<EXI_CHAN_PARAM_INTMASK) | (1<<EXI_CHAN_PARAM_TCINTMASK) | (1<<EXI_CHAN_PARAM_EXTINTMASK));

    if (HAS_FLAG(exi->state, EXI_STATE_ATTACHED)) {
        switch (chan) {
            case EXI_CHAN_0:
                __OSUnmaskInterrupts(OS_INTERRUPTMASK_EXI_0_EXT);
                break;
            case EXI_CHAN_1:
                __OSUnmaskInterrupts(OS_INTERRUPTMASK_EXI_1_EXT);
                break;
        }
    }

    OSRestoreInterrupts(enabled);

    if ((chan != EXI_CHAN_2) && HAS_FLAG(chanParam, (1<<EXI_CHAN_PARAM_CS))) {
        if (__EXIProbe(chan)) {
            return TRUE;
        }
        return FALSE;
    }

    return TRUE;
}

BOOL EXIDeselectEx(s32 chan) {
    EXIControl* exi = &Ecb[chan];
    u32 chanParam;

    CLEAR_FLAG(exi->state, EXI_STATE_SELECTED);
    chanParam = EXI_CHAN_REG(chan, 0);
    EXI_CHAN_REG(chan, 0) = chanParam & ((1<<EXI_CHAN_PARAM_INTMASK) | (1<<EXI_CHAN_PARAM_TCINTMASK) | (1<<EXI_CHAN_PARAM_EXTINTMASK));

    return TRUE;
}

static void EXIIntrruptHandler(__OSInterrupt interrupt, OSContext* context) {
    s32 chan;
    EXIControl* exi;
    EXICallback callback;

    chan = (interrupt - __OS_INTERRUPT_EXI_0_EXI) / EXI_CHAN_MAX;

    exi = &Ecb[chan];
    EXIClearInterrupts(chan, 1, 0, 0);

    callback = exi->exiCallback;
    if (callback) {
        OSContext exceptionContext;

        OSClearContext(&exceptionContext);
        OSSetCurrentContext(&exceptionContext);
        callback(chan, context);
        OSClearContext(&exceptionContext);
        OSSetCurrentContext(context);
    }
}

static void TCIntrruptHandler(__OSInterrupt interrupt, OSContext* context) {
    EXIControl* exi;
    s32 chan;
    EXICallback callback;
    OSContext temp;

    chan = (s32)((interrupt - __OS_INTERRUPT_EXI_0_TC) / EXI_CHAN_MAX);
    exi = &Ecb[chan];

    __OSMaskInterrupts((u32)OS_INTERRUPTMASK(0)/*?*/ >> interrupt);
    EXIClearInterrupts(chan, FALSE, TRUE, FALSE);

    callback = exi->tcCallback;
    if (callback != NULL) {
        exi->tcCallback = NULL;
        CompleteTransfer(chan);
        OSClearContext(&temp);
        OSSetCurrentContext(&temp);
        callback(chan, context);
        OSClearContext(&temp);
        OSSetCurrentContext(context);
    }
}

static void EXTIntrruptHandler(__OSInterrupt interrupt, OSContext* context) {
    s32 chan;
    EXIControl* exi;
    EXICallback callback;

    chan = (interrupt - __OS_INTERRUPT_EXI_0_EXT) / EXI_CHAN_MAX;

    __OSMaskInterrupts(0x500000U >> (chan * EXI_CHAN_MAX));
    exi = &Ecb[chan];
    callback = exi->extCallback;
    exi->state &= ~EXI_STATE_ATTACHED;

    if (callback) {
        OSContext exceptionContext;
        
        OSClearContext(&exceptionContext);
        OSSetCurrentContext(&exceptionContext);
        exi->extCallback = NULL;
        callback(chan, context);
        OSClearContext(&exceptionContext);
        OSSetCurrentContext(context);
    }
}

void EXIInit() {
    u32 id;

    while ((EXI_CHAN_REG(EXI_CHAN_0, EXI_CONTROL) & (1<<EXI_CONTROL_TSTART)) == TRUE
        || (EXI_CHAN_REG(EXI_CHAN_1, EXI_CONTROL) & (1<<EXI_CONTROL_TSTART)) == TRUE
        || (EXI_CHAN_REG(EXI_CHAN_2, EXI_CONTROL) & (1<<EXI_CONTROL_TSTART)) == TRUE) {}

    __OSMaskInterrupts(OS_INTERRUPTMASK_EXI_0_EXI | OS_INTERRUPTMASK_EXI_0_TC | OS_INTERRUPTMASK_EXI_0_EXT |
                        OS_INTERRUPTMASK_EXI_1_EXI | OS_INTERRUPTMASK_EXI_1_TC | OS_INTERRUPTMASK_EXI_1_EXT |
                        OS_INTERRUPTMASK_EXI_2_EXI | OS_INTERRUPTMASK_EXI_2_TC);
    
    EXI_WRITE_REG(EXI_0_CHAN_PARAM, 0);
    EXI_WRITE_REG(EXI_1_CHAN_PARAM, 0);
    EXI_WRITE_REG(EXI_2_CHAN_PARAM, 0);

    EXI_WRITE_REG(EXI_0_CHAN_PARAM, (1<<EXI_CHAN_PARAM_ROMDIS));

    __OSSetInterruptHandler(__OS_INTERRUPT_EXI_0_EXI,  EXIIntrruptHandler);
    __OSSetInterruptHandler(__OS_INTERRUPT_EXI_0_TC, TCIntrruptHandler);
    __OSSetInterruptHandler(__OS_INTERRUPT_EXI_0_EXT, EXTIntrruptHandler);

    __OSSetInterruptHandler(__OS_INTERRUPT_EXI_1_EXI, EXIIntrruptHandler);
    __OSSetInterruptHandler(__OS_INTERRUPT_EXI_1_TC, TCIntrruptHandler);
    __OSSetInterruptHandler(__OS_INTERRUPT_EXI_1_EXT, EXTIntrruptHandler);

    __OSSetInterruptHandler(__OS_INTERRUPT_EXI_2_EXI, EXIIntrruptHandler);
    __OSSetInterruptHandler(__OS_INTERRUPT_EXI_2_TC, TCIntrruptHandler);

    EXIGetID(EXI_CHAN_0, EXI_DEV_NET, &IDSerialPort1);

    if (__OSInIPL) {
        EXIProbeReset();
    }
    else if (EXIGetID(EXI_CHAN_0, EXI_DEV_EXT, &id) && id == 0x7010000) {
        __OSEnableBarnacle(EXI_CHAN_1, EXI_DEV_EXT);
    }
    else if (EXIGetID(EXI_CHAN_1, EXI_DEV_EXT, &id) && id == 0x7010000) {
        __OSEnableBarnacle(EXI_CHAN_0, EXI_DEV_NET);
    }

    OSRegisterVersion(GetVersion(EXI));
}

BOOL EXILock(s32 chan, u32 dev, EXICallback unlockedCallback) {
    EXIControl* exi;
    BOOL enabled;
    int i;

    exi = &Ecb[chan];
    enabled = OSDisableInterrupts();

    if (HAS_FLAG(exi->state, EXI_STATE_LOCKED)) {
        if (unlockedCallback) {
            for (i = 0; i < exi->items; i++) {
                if (exi->queue[i].device == dev) {
                    OSRestoreInterrupts(enabled);
                    return FALSE;
                }
            }
            exi->queue[exi->items].cb = unlockedCallback;
            exi->queue[exi->items].device = dev;
            exi->items++;
        }

        OSRestoreInterrupts(enabled);
        return FALSE;
    }

    SET_FLAG(exi->state, EXI_STATE_LOCKED);
    exi->dev = dev;

    SetExiInterruptMask(chan, exi);
    OSRestoreInterrupts(enabled);

    return TRUE;
}

BOOL EXIUnlock(s32 chan) {
    EXIControl* exi;
    BOOL enabled;
    EXICallback unlockedCallback;

    exi = &Ecb[chan];
    enabled = OSDisableInterrupts();

    if (!HAS_FLAG(exi->state, EXI_STATE_LOCKED)) {
        OSRestoreInterrupts(enabled);
        return FALSE;
    }

    CLEAR_FLAG(exi->state, EXI_STATE_LOCKED);
    SetExiInterruptMask(chan, exi);
    if (exi->items > 0) {
        unlockedCallback = exi->queue[0].cb;
        if (--exi->items > 0) {
            memmove(&exi->queue[0], &exi->queue[1], exi->items * 8);
        }
        unlockedCallback(chan, 0);
    }

    OSRestoreInterrupts(enabled);

    return TRUE;
}

u32 EXIGetState(s32 chan) {
    EXIControl* exi;

    exi = &Ecb[chan];
    return exi->state;
}

static void UnlockedHandler(s32 chan, OSContext* context) {
    u32 id;
    EXIGetID(chan, EXI_DEV_EXT, &id);
}

BOOL EXIGetID(s32 chan, u32 dev, u32* id) {
    EXIControl* exi = &Ecb[chan];
    int err;
    u32 cmd;
    s32 startTime;
    BOOL enabled;

    if (chan == EXI_CHAN_0 && dev == EXI_DEV_NET && IDSerialPort1 != 0) {
        *id = IDSerialPort1;
        return TRUE;
    }

    if (chan < EXI_CHAN_2 && dev == EXI_DEV_EXT) {
        if (!__EXIProbe(chan)) {
            return FALSE;
        }

        if (exi->idTime == __EXIProbeStartTime[chan]) {
            *id = exi->id;
            return exi->idTime;
        }

        if (!__EXIAttach(chan, NULL)) {
            return FALSE;
        }

        startTime = __EXIProbeStartTime[chan];
    }

    enabled = OSDisableInterrupts();
    err = !EXILock(chan, dev, (chan < EXI_CHAN_2 && dev == EXI_DEV_EXT) ? UnlockedHandler : 0);
    if (!err) {
        err = !EXISelect(chan, dev, EXI_FREQ_1MHZ);
        if (!err) {
            cmd = 0;
            err |= !EXIImm(chan, &cmd, sizeof(u16), EXI_WRITE, NULL);
            err |= !EXISync(chan);
            err |= !EXIImm(chan, id, sizeof(u32), EXI_READ, NULL);
            err |= !EXISync(chan);
            err |= !EXIDeselect(chan);
        }

        EXIUnlock(chan);
    }

    OSRestoreInterrupts(enabled);

    if (chan < EXI_CHAN_2 && dev == EXI_DEV_EXT) {
        EXIDetach(chan);
        enabled = OSDisableInterrupts();
        err |= __EXIProbeStartTime[chan] != startTime;
        
        if (!err) {
            exi->id = *id;
            exi->idTime = startTime;
        }

        OSRestoreInterrupts(enabled);

        if (err) {
            return FALSE;
        }

        return exi->idTime;
    }

    return err ? FALSE : TRUE;
}

BOOL EXIGetIDEx(s32 chan, u32 dev, u32* id) {
    EXIControl* exi = &Ecb[chan];
    BOOL err;
    u32  cmd;

    err = !EXISelectEx(chan, dev, EXI_FREQ_1MHZ);
    if (!err) {
        cmd = 0;
        err |= !EXIImm(chan, &cmd, sizeof(u16), EXI_WRITE, NULL);
        err |= !EXISync(chan);
        err |= !EXIImm(chan, id, sizeof(u32), EXI_READ, NULL);
        err |= !EXISync(chan);
        err |= !EXIDeselectEx(chan);
    }

    if (!err) {
        exi->id = *id;
        exi->idTime = __EXIProbeStartTime[chan];
    }

    return err ? FALSE : TRUE;
}
