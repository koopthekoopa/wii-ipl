#include <private/si.h>

#include <revolution/vi.h>

#include <revolution/os.h>
#include <private/os.h>

#include <private/hollywood.h>

#include <revolution/verdefs.h>

SDKDefineVersion(SI, "Apr 20 2010", "11:20:53");

static SIControl Si = {
    SI_CHAN_BAD,
    0,
    0,
    NULL,
    NULL
};

static u32  CompleteTransfer();
static void SITransferNext(s32 chan);
static void SIInterruptHandler(__OSInterrupt interrupt, OSContext* context);
static int  __SITransfer(s32 chan, void* output, u32 outputBytes, void* input, u32 inputBytes, SICallback callback);
static void AlarmHandler(OSAlarm* alarm, OSContext* context);
static void GetTypeCallback(s32 chan, u32 error, OSContext* context);
static int  SIGetResponseRaw(s32 chan);

static SIPacket             Packet[SI_CHAN_MAX];
static OSAlarm              Alarm[SI_CHAN_MAX];

static u32                  Type[SI_CHAN_MAX] = {
    SI_ERROR_NO_RESPONSE,
    SI_ERROR_NO_RESPONSE,
    SI_ERROR_NO_RESPONSE,
    SI_ERROR_NO_RESPONSE
};
static OSTime               TypeTime[SI_CHAN_MAX];
static SITypeCallback       TypeCallback[SI_CHAN_MAX][SI_TYPE_MAX];

static OSTime               XferTime[SI_CHAN_MAX];

static __OSInterruptHandler RDSTHandler[SI_CHAN_MAX];

static BOOL                 InputBufferValid[SI_CHAN_MAX];
static u32                  InputBuffer[SI_CHAN_MAX][2];
static vu32                 InputBufferVcount[SI_CHAN_MAX];

u32 __PADFixBits;

BOOL SIBusy() {
    return (Si.chan != SI_CHAN_BAD) ? TRUE : FALSE;
}

BOOL SIIsChanBusy(s32 chan) {
    return Packet[chan].chan != SI_CHAN_BAD || Si.chan == chan;
}

static void SIClearTCInterrupt() {
    u32 reg;

    reg = SI_READ_REG(SI_CONTROL_STATUS);
    reg |= SI_COMCSR_TCINT_MASK;
    reg &= ~SI_COMCSR_TSTART_MASK;
    SI_WRITE_REG(SI_CONTROL_STATUS, reg);
}

static u32 CompleteTransfer() {
    u32 sr;
    u32 i;
    u32 rLen;
    u8* input;
    u32 temp;

    sr = SI_READ_REG(SI_STATUS);
    SIClearTCInterrupt();

    if (Si.chan != SI_CHAN_BAD) {
        XferTime[Si.chan] = __OSGetSystemTime();
        input = Si.input;
        rLen = Si.inputBytes / sizeof(u32);
        for (i = 0; i < rLen; i++) {
            *((u32*)input)++ = __SIRegs[i+(SI_IO_BUFFER>>2)];
        }
        
        rLen = Si.inputBytes & 3;
        if (rLen != 0) {
            temp = __SIRegs[i+(SI_IO_BUFFER>>2)];
            for (i = 0; i < rLen; i++) {
                *(input++) = temp >> ((3 - i) * 8);
            }
        }

        if (SI_READ_REG(SI_CONTROL_STATUS) & SI_COMCSR_COMERR_MASK) {
            sr >>= (3 - Si.chan) * 8;
            sr &= 0xF;
            if ((sr & 8) != 0 && (Type[Si.chan] & 0x80) == 0) {
                Type[Si.chan] = 8;
            }

            if (sr == 0) {
                sr = 4;
            }
        }
        else {
            TypeTime[Si.chan] = __OSGetSystemTime();
            sr = 0;
        }

        Si.chan = SI_CHAN_BAD;
    }

    return sr;
}

static void SIInterruptHandler(__OSInterrupt interrupt, OSContext* context) {
    u32 reg;
    s32 chan;
    u32 sr;
    SICallback callback;
    int i;
    u32 vcount;
    u32 x;

    reg = SI_READ_REG(SI_CONTROL_STATUS);
    if ((reg & (SI_COMCSR_TCINT_MASK | SI_COMCSR_TCINTMSK_MASK)) == (SI_COMCSR_TCINT_MASK | SI_COMCSR_TCINTMSK_MASK)) {
        chan = Si.chan;
        sr = CompleteTransfer();
        callback = Si.callback;
        Si.callback = NULL;
        SITransferNext(chan);

        if (callback) {
            callback(chan, sr, context);
        }

        sr = SI_READ_REG(SI_STATUS);
        sr &= 0x0F000000 >> (chan << 3);
        SI_WRITE_REG(SI_STATUS, sr);

        if (Type[chan] == SI_ERROR_BUSY && !SIIsChanBusy(chan)) {
            static u32 cmdTypeAndStatus;

            SITransfer(chan, &cmdTypeAndStatus, 1, &Type[chan], 3, &GetTypeCallback, OSMicrosecondsToTicks(65));
        }
    }

    if ((reg & (SI_COMCSR_RDSTINT_MASK | SI_COMCSR_RDSTINTMSK_MASK)) == (SI_COMCSR_RDSTINT_MASK | SI_COMCSR_RDSTINTMSK_MASK)) {
        vcount = 1 + VIGetCurrentLine();
        x = (Si.poll & (0x3FF << 16)) >> 16;

        for (i = 0; i < SI_CHAN_MAX; i++) {
            if (SIGetResponseRaw(i)) {
                InputBufferVcount[i] = vcount;
            }
        }

        for (i = 0; i < SI_CHAN_MAX; i++) {
            if ((Si.poll & (0x80000000 >> (24 + i))) != 0) {
                if (InputBufferVcount[i] == 0 || ((x >> 1) + InputBufferVcount[i]) < vcount) {
                    return;
                }
            }
        }

        for (i = 0; i < SI_CHAN_MAX; i++) {
            InputBufferVcount[i] = 0;
        }

        for (i = 0; i < SI_CHAN_MAX; i++) {
            if (RDSTHandler[i] != 0) {
                RDSTHandler[i](interrupt, context);
            }
        }
    }
}

static void SITransferNext(s32 chan) {
    int i;
    SIPacket* packet;

    for (i = 0; i < SI_CHAN_MAX; i++) {
        chan++;
        chan %= SI_CHAN_MAX;
        packet = &Packet[chan];

        if (packet->chan != SI_CHAN_BAD) {
            if (packet->fire <= __OSGetSystemTime()) {
                if (__SITransfer(packet->chan, packet->output, packet->outputBytes, packet->input, packet->inputBytes, packet->callback) != 0) {
                    OSCancelAlarm(&Alarm[chan]);
                    packet->chan = SI_CHAN_BAD;
                }
                return;
            }
        }
    }
}

static BOOL SIEnablePollingInterrupt(BOOL enable) {
    BOOL enabled;
    BOOL rc;
    u32 reg;
    int i;

    enabled = OSDisableInterrupts();
    reg = SI_READ_REG(SI_CONTROL_STATUS);
    rc = ((reg & SI_COMCSR_RDSTINTMSK_MASK) != 0) ? TRUE : FALSE;

    if (enable) {
        reg |= SI_COMCSR_RDSTINTMSK_MASK;
        
        for (i = 0; i < SI_CHAN_MAX; i++) {
            InputBufferVcount[i] = 0;
        }
    }
    else {
        reg &= ~SI_COMCSR_RDSTINTMSK_MASK;
    }

    reg &= ~(SI_COMCSR_TCINT_MASK | SI_COMCSR_TSTART_MASK);
    SI_WRITE_REG(SI_CONTROL_STATUS, reg);

    OSRestoreInterrupts(enabled);
    return rc;
}

BOOL SIUnregisterPollingHandler(__OSInterruptHandler handler) {
    BOOL enabled;
    int i;

    enabled = OSDisableInterrupts();
    for (i = 0; i < SI_CHAN_MAX; i++) {
        if (RDSTHandler[i] == handler) {
            RDSTHandler[i] = 0;
            
            for (i = 0; i < SI_CHAN_MAX; i++) {
                if (RDSTHandler[i] != 0) {
                    break;
                }
            }

            if (i == SI_CHAN_MAX) {
                SIEnablePollingInterrupt(FALSE);
            }

            OSRestoreInterrupts(enabled);
            return TRUE;
        }
    }    

    OSRestoreInterrupts(enabled);
    return FALSE;
}

void SIInit() {
    static int Initialized = FALSE;

    if (Initialized == FALSE) {
        OSRegisterVersion(GetVersion(SI));

        Packet[SI_CHAN_0].chan = Packet[SI_CHAN_1].chan = Packet[SI_CHAN_2].chan = Packet[SI_CHAN_3].chan = SI_CHAN_BAD;
        Si.poll = 0;
        SISetSamplingRate(0);

        do {} while(SI_READ_REG(SI_CONTROL_STATUS) & SI_COMCSR_TSTART_MASK);

        SI_WRITE_REG(SI_CONTROL_STATUS, SI_COMCSR_TCINT_MASK);
        __OSSetInterruptHandler(__OS_INTERRUPT_PI_SI, SIInterruptHandler);
        __OSUnmaskInterrupts(OS_INTERRUPTMASK_PI_SI);

        SIGetType(SI_CHAN_0);
        SIGetType(SI_CHAN_1);
        SIGetType(SI_CHAN_2);
        SIGetType(SI_CHAN_3);

        Initialized = TRUE;
    }
}

static int __SITransfer(s32 chan, void* output, u32 outputBytes, void* input, u32 inputBytes, SICallback callback) {
    BOOL enabled;
    u32 rLen;
    u32 i;
    u32 sr;
    union {
        u32 val;
        struct {
            u32 tcint : 1;
            u32 tcintmsk : 1;
            u32 comerr : 1;
            u32 rdstint : 1;
            u32 rdstintmsk : 1;
            u32 pad2 : 4;
            u32 outlngth : 7;
            u32 pad1 : 1;
            u32 inlngth : 7;
            u32 pad0 : 5;
            u32 channel : 2;
            u32 tstart : 1;
        } f;
    } comcsr;

    enabled = OSDisableInterrupts();
    if (Si.chan != SI_CHAN_BAD) {
        OSRestoreInterrupts(enabled);
        return 0;
    }

    sr = SI_READ_REG(SI_STATUS);
    sr &= (0x0F000000 >> (chan * 8));
    SI_WRITE_REG(SI_STATUS, sr);
    
    Si.chan = chan;
    Si.callback = callback;
    Si.inputBytes = inputBytes;
    Si.input = input;

    rLen = ROUNDUP(outputBytes, 4) / 4;
    for (i = 0; i < rLen; i++) {
        __SIRegs[i + (SI_0_BUTTON_2_BUFFER<<2)] = ((u32*)output)[i];
    }
    
    comcsr.val = SI_READ_REG(SI_CONTROL_STATUS);
    comcsr.f.tcint = 1;
    comcsr.f.tcintmsk = callback ? 1 : 0;
    comcsr.f.outlngth = outputBytes == 0x80 ? 0 : outputBytes;
    comcsr.f.inlngth = inputBytes == 0x80 ? 0 : inputBytes;
    comcsr.f.channel = chan;
    comcsr.f.tstart = 1;

    SI_WRITE_REG(SI_CONTROL_STATUS, comcsr.val);
    OSRestoreInterrupts(enabled);
    return 1;
}

u32 SIGetStatus(s32 chan) {
    BOOL enabled;
    u32 sr;
    int chanShift;

    enabled = OSDisableInterrupts();
    sr = SI_READ_REG(SI_STATUS);
    chanShift = (3 - chan) * 8;
    sr >>= chanShift;

    if ((sr & 8) != 0) {
        if ((Type[chan] & SI_ERROR_BUSY) == 0) {
            Type[chan] = 8;
        }
    }

    OSRestoreInterrupts(enabled);
    return sr;
}

void SISetCommand(s32 chan, u32 command) {
    __SIRegs[chan * (SI_1_OUT_BUFFER>>2)] = command;
}

void SITransferCommands() {
    SI_WRITE_REG(SI_STATUS, SI_COMCSR_TCINT_MASK);
}

u32 SISetXY(u32 x, u32 y) {
    u32 poll;
    BOOL enabled;

    poll = x << 0x10;
    poll |= y << 8;
    enabled = OSDisableInterrupts();
    Si.poll &= 0xFC0000FF;
    Si.poll |= poll;
    poll = Si.poll;
    SI_WRITE_REG(SI_JOY_POLL, poll);
    OSRestoreInterrupts(enabled);
    return poll;
}

u32 SIEnablePolling(u32 poll) {
    BOOL enabled;
    u32 en;

    if (poll == 0) {
        return Si.poll;
    }
    
    enabled = OSDisableInterrupts();
    poll = poll >> 24;
    en = poll & 0xF0;

    poll &= ((en >> 4) | 0x03FFFFF0);
    poll &= 0xFC0000FF;
    
    Si.poll &= ~(en >> 4);
    Si.poll |= poll;
    poll = Si.poll;
    SITransferCommands();
    SI_WRITE_REG(SI_JOY_POLL, poll);
    OSRestoreInterrupts(enabled);
    return poll;
}

u32 SIDisablePolling(u32 poll) {
    BOOL enabled;

    if (poll == 0) {
        return Si.poll;
    }

    enabled = OSDisableInterrupts();
    poll = poll >> 24;
    poll &= 0xF0;

    poll = Si.poll & ~poll;
    SI_WRITE_REG(SI_JOY_POLL, poll);
    Si.poll = poll;
    OSRestoreInterrupts(enabled);
    return poll;
}

static BOOL SIGetResponseRaw(s32 chan) {
    u32 sr;

    sr = SIGetStatus(chan);
    if (sr & 0x20) {
        InputBuffer[chan][0] = __SIRegs[(SI_BUTTON_BUFFER>>2) + chan * (SI_BUFFER_SIZE>>2)];
        InputBuffer[chan][1] = __SIRegs[(SI_BUTTON_2_BUFFER>>2) + chan * (SI_BUFFER_SIZE>>2)];
        InputBufferValid[chan] = TRUE;
        return TRUE;
    }

    return FALSE;
}

BOOL SIGetResponse(s32 chan, void* data) {
    BOOL rc;
    BOOL enabled;

    enabled = OSDisableInterrupts();
    SIGetResponseRaw(chan);
    rc = InputBufferValid[chan];
    InputBufferValid[chan] = FALSE;
    
    if (rc) {
        ((u32*)data)[0] = InputBuffer[chan][0];
        ((u32*)data)[1] = InputBuffer[chan][1];
    }

    OSRestoreInterrupts(enabled);
    return rc;
}

static void AlarmHandler(OSAlarm* alarm, OSContext* context) {
    s32 chan;
    SIPacket* packet;

    chan = (s32)(alarm - Alarm);

    packet = &Packet[chan];
    if (packet->chan != SI_CHAN_BAD) {
        if (__SITransfer(packet->chan, packet->output, packet->outputBytes, packet->input, packet->inputBytes, packet->callback)) {
            packet->chan = SI_CHAN_BAD;
        }
    }
}

BOOL SITransfer(s32 chan, void* output, u32 outputBytes, void* input, u32 inputBytes, SICallback callback, OSTime delay) {
    BOOL enabled;
    SIPacket* packet;
    OSTime now;
    OSTime fire;

    packet = &Packet[chan];
    enabled = OSDisableInterrupts();

    if (packet->chan != SI_CHAN_BAD || Si.chan == chan) {
        OSRestoreInterrupts(enabled);
        return FALSE;
    }

    now = __OSGetSystemTime();
    if (delay == 0) {
        fire = now;
    }
    else {
        fire = delay + XferTime[chan];
    }

    if (now < fire) {
        delay = fire - now;
        OSSetAlarm(&Alarm[chan], delay, AlarmHandler);
    }
    else if (__SITransfer(chan, output, outputBytes, input, inputBytes, callback)) {
        OSRestoreInterrupts(enabled);
        return TRUE;
    }

    packet->chan = chan;
    packet->output = output;
    packet->outputBytes = outputBytes;
    packet->input = input;
    packet->inputBytes = inputBytes;
    packet->callback = callback;
    packet->fire = fire;
    OSRestoreInterrupts(enabled);
    return TRUE;
}

static void CallTypeAndStatusCallback(s32 chan, u32 type) {
    SITypeCallback callback;
    int i;

    for (i = 0; i < SI_CHAN_MAX; i++) {
        callback = TypeCallback[chan][i];
        
        if (callback != 0) {
            TypeCallback[chan][i] = 0;
            callback(chan, type);
        }
    }
}

static void GetTypeCallback(s32 chan, u32 error, OSContext* context) {
    u32 type;
    u32 chanBit;
    int fix;
    u32 id;

    Type[chan] &= ~SI_ERROR_BUSY;
    Type[chan] |= error;
    TypeTime[chan] = __OSGetSystemTime();

    type = Type[chan];
    chanBit = 0x80000000 >> chan;
    fix = __PADFixBits & chanBit;
    __PADFixBits &= ~chanBit;

    if ((error & 0xF) != 0 || (type & 0x18000000) != 0x08000000 || (type & 0x80000000) == 0 || (type & 0x04000000) != 0) {
        OSSetWirelessID(chan, 0);
        CallTypeAndStatusCallback(chan, Type[chan]);
    }
    else {
        static u32 cmdFixDevice[SI_CHAN_MAX];

        id = OSGetWirelessID(chan) << 8;
        
        if (fix != 0 && (id & 0x100000) != 0) {
            cmdFixDevice[chan] = 0x4E000000 | (id & 0xCFFF00) | 0x100000;
            Type[chan] = SI_ERROR_BUSY;
            SITransfer(chan, &cmdFixDevice[chan], 3, &Type[chan], 3, &GetTypeCallback, 0);
            return;
        }

        if ((type & 0x00100000) != 0) {
            if ((id & 0xCFFF00) != (type & 0xCFFF00)) {
                if ((id & 0x100000) == 0) {
                    id = type & 0xCFFF00;
                    id |= 0x100000;
                    OSSetWirelessID(chan, id >> 8);
                }

                cmdFixDevice[chan] = 0x4E000000 | id;
                Type[chan] = SI_ERROR_BUSY;
                SITransfer(chan, &cmdFixDevice[chan], 3, &Type[chan], 3, &GetTypeCallback, 0);
                return;
            }
        }
        else {
            if ((type & 0x40000000) != 0) {
                id = type & 0xCFFF00;
                id |= 0x100000;
                OSSetWirelessID(chan, id >> 8);

                cmdFixDevice[chan] = 0x4E000000 | id;
                Type[chan] = SI_ERROR_BUSY;
                SITransfer(chan, &cmdFixDevice[chan], 3, &Type[chan], 3, &GetTypeCallback, 0);
                return;
            }

            OSSetWirelessID(chan, 0);
        }

        CallTypeAndStatusCallback(chan, Type[chan]);
    }
}

u32 SIGetType(s32 chan) {
    static u32 cmdTypeAndStatus;
    BOOL enabled;
    u32 type;
    OSTime diff;

    enabled = OSDisableInterrupts();
    type = Type[chan];
    diff = __OSGetSystemTime() - TypeTime[chan];
    if ((Si.poll & (0x80 >> chan)) != 0) {
        if (type != 8) {
            TypeTime[chan] = __OSGetSystemTime();
            OSRestoreInterrupts(enabled);
            return type;
        }

        type = Type[chan] = SI_ERROR_BUSY;
    }
    else {
        if (diff <= OSMillisecondsToTicks(50) && type != 8) {
            OSRestoreInterrupts(enabled);
            return type;
        }

        if (diff <= OSMillisecondsToTicks(75)) {
            Type[chan] = SI_ERROR_BUSY;
        }
        else {
            type = Type[chan] = SI_ERROR_BUSY;
        }
    }

    TypeTime[chan] = __OSGetSystemTime();
    SITransfer(chan, &cmdTypeAndStatus, 1, &Type[chan], 3, &GetTypeCallback, OSMicrosecondsToTicks(65));
    OSRestoreInterrupts(enabled);
    return type;
}

u32 SIGetTypeAsync(s32 chan, SITypeCallback callback) {
    BOOL enabled;
    u32 type;
    int i;

    enabled = OSDisableInterrupts();
    type = SIGetType(chan);

    if ((Type[chan] & SI_ERROR_BUSY) != 0) {
        for (i = 0; i < SI_TYPE_MAX; i++) {
            if (TypeCallback[chan][i] == callback) {
                break;
            }

            if (TypeCallback[chan][i] == 0) {
                TypeCallback[chan][i] = callback;
                break;
            }
        }

    }
    else {
        callback(chan, type);
    }

    OSRestoreInterrupts(enabled);
    return type;
}
