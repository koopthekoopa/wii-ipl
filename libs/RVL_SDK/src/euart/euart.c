#include <private/euart.h>

#include <private/exi.h>

#include <revolution/os.h>
#include <private/os.h>

static BOOL __EUARTInitialized = FALSE;
static u32 __EUARTLastErrorCode = 0;
static BOOL __EUARTSendStop = FALSE;
static u32 Enabled = 0;

BOOL EUARTInit() {
    BOOL enabled;
    u8 data;

    if (__EUARTInitialized) {
        return TRUE;
    }

    if (!(OSGetConsoleType() & OS_CONSOLE_MASK_DEV)) {
        __EUARTLastErrorCode = EUART_ERROR_INVALID;
        return FALSE;
    }

    enabled = OSDisableInterrupts();

    data = 0xF2;
    if (!EXIWriteReg(EXI_CHAN_0, EXI_DEV_INT, 0xB0000000, &data, sizeof(data))) {
        __EUARTLastErrorCode = EUART_ERROR_EXI;
        OSRestoreInterrupts(enabled);
        return FALSE;
    }

    data = 0xF3;
    if (!EXIWriteReg(EXI_CHAN_0, EXI_DEV_INT, 0xB0000000, &data, sizeof(data))) {
        __EUARTLastErrorCode = EUART_ERROR_EXI;
        OSRestoreInterrupts(enabled);
        return FALSE;
    }

    OSRestoreInterrupts(enabled);
    __EUARTInitialized = TRUE;
    __EUARTLastErrorCode = EUART_ERROR_OK;
    __EUARTSendStop = FALSE;
    return TRUE;
}

EUARTError InitializeUART() {
    if (!(OSGetConsoleType() & OS_CONSOLE_MASK_DEV)) {
        Enabled = 0;
        return EUART_ERROR_INVALID;
    }

    Enabled = 0xA5FF005A;
    return EUART_ERROR_OK;
}

static s32 QueueLength() {
    u32 cmd;
    u32 imm;

    if (!EXISelect(EXI_CHAN_0, EXI_DEV_INT, __EXIFreq)) {
        return -1;
    }

    cmd = 0x30000100;
    EXIImm(EXI_CHAN_0, &cmd, sizeof(u32), EXI_WRITE, NULL);
    EXISync(EXI_CHAN_0);

    EXIImm(EXI_CHAN_0, &imm, sizeof(u32), EXI_READ, NULL);
    EXISync(EXI_CHAN_0);
    EXIDeselect(EXI_CHAN_0);

    return 32 - ((imm >> 24) % 64);
}

EUARTError WriteUARTN(const char* msg, u32 n) {
    const char* p;
    s32 length;
    EUARTError err;
    char* it;
    u32 cmd;

    p = msg;

    if (Enabled != 0xA5FF005A) {
        return EUART_ERROR_INVALID;
    }

    if (!__EUARTInitialized && !EUARTInit()) {
        return EUART_ERROR_INVALID;
    }

    if (!__EUARTInitialized) {
        __EUARTLastErrorCode = EUART_ERROR_FATAL;
        return EUART_ERROR_INVALID;
    }

    if (!EXILock(EXI_CHAN_0, EXI_DEV_INT, NULL)) {
        return EUART_ERROR_OK;
    }

    for (it = (char*)p; it - msg < n; it++) {
        if (*it == '\n') {
            *it = '\r';
        }
    }

    err = EUART_ERROR_OK;
    cmd = 0xB0000100;

    while (n > 0) {
        length = QueueLength();

        if (length < 0) {
            err = EUART_ERROR_BUSY;
            break;
        }

        if (length != 32) {
            continue;
        }

        if (!EXISelect(EXI_CHAN_0, EXI_DEV_INT, __EXIFreq)) {
            err = EUART_ERROR_BUSY;
            break;
        }

        EXIImm(EXI_CHAN_0, &cmd, sizeof(u32), EXI_WRITE, NULL);
        EXISync(EXI_CHAN_0);

        for (; length > 0 && n > 0; p++, length--, n--) {
            u32 ch = *p << 24;
            EXIImm(EXI_CHAN_0, &ch, sizeof(u32), EXI_WRITE, NULL);
            EXISync(EXI_CHAN_0);
        }

        EXIDeselect(EXI_CHAN_0);
    }

    EXIUnlock(EXI_CHAN_0);

    return err;
}
