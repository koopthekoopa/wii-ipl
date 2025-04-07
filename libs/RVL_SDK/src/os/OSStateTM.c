#include <revolution/os.h>
#include <private/os.h>

#include <revolution/vi.h>

#include <private/ios.h>
#include <private/ipc.h>

#include <private/hollywood.h>

u32 StmVdOutBuf[8]   ALIGN32;
u32 StmVdInBuf[8]    ALIGN32;

u32 StmImOutBuf[8]   ALIGN32;
u32 StmImInBuf[8]    ALIGN32;

u32 StmEhOutBuf[8]   ALIGN32;
u32 StmEhInBuf[8]    ALIGN32;

OSResetCallback     ResetCallback;
OSPowerCallback     PowerCallback;

int     StmVdInUse;

int     StmEhRegistered;
int     StmEhDesc;
int     StmImDesc;
int     StmReady;

BOOL    ResetDown;

void __OSDefaultResetCallback();
void __OSDefaultPowerCallback();

s32 __OSStateEventHandler(s32 result, void* arg);
s32 __OSVIDimReplyHandler(s32 result, void* arg);

static void LockUp() {
    OSDisableInterrupts();
    ICFlashInvalidate();

    while (TRUE) {}
}

void __OSRegisterStateEvent() {
    BOOL enabled;
    enabled = OSDisableInterrupts();

    if (IOS_IoctlAsync(StmEhDesc, 0x1000, StmEhInBuf, sizeof(StmEhInBuf), StmEhOutBuf, sizeof(StmEhOutBuf), 
        __OSStateEventHandler, NULL) == 0) {
        StmEhRegistered = TRUE;
    }
    else {
        StmEhRegistered = FALSE;
    }

    OSRestoreInterrupts(enabled);
}

BOOL __OSGetResetButtonStateRaw() {
    return (!(__PIRegs[PI_INTERRUPT_CAUSE] & 0x10000)) ? TRUE : FALSE;
}

OSResetCallback OSSetResetCallback(OSResetCallback callback) {
    BOOL enabled;
    OSResetCallback old;

    enabled = OSDisableInterrupts();

    old = ResetCallback;
    ResetCallback = callback;

    if (!StmEhRegistered) {
        __OSRegisterStateEvent();
    }

    OSRestoreInterrupts(enabled);
    return old;
}

OSPowerCallback OSSetPowerCallback(OSPowerCallback callback) {
    BOOL enabled;
    OSPowerCallback old;

    enabled = OSDisableInterrupts();

    old = PowerCallback;
    PowerCallback = callback;

    if (!StmEhRegistered) {
        __OSRegisterStateEvent();
    }

    OSRestoreInterrupts(enabled);
    return old;
}

int __OSInitSTM() {
    PowerCallback = __OSDefaultPowerCallback;
    ResetCallback = __OSDefaultResetCallback;
    ResetDown = 0;

    if (StmReady) {
        return 1;
    }

    StmVdInUse = 0;
    StmImDesc = IOS_Open("/dev/stm/immediate", 0);

    if (StmImDesc < 0) {
        StmReady = 0;
        return 0;
    }

    StmEhDesc = IOS_Open("/dev/stm/eventhook", 0);

    if (StmEhDesc < 0) {
        StmReady = 0;
        return 0;
    }

    __OSRegisterStateEvent();
    StmReady = 1;
    return 1;
}

void __OSShutdownToSBY() {
    VI_WRITE_REG(VI_DISPLAY_CONFIG, 0);
    
    OSAssertMsg(StmReady, "Error: The firmware doesn't support shutdown feature.\n", 281);

    StmImInBuf[0] = 0;
    IOS_Ioctl(StmImDesc, 0x2003, StmImInBuf, sizeof(StmImInBuf), StmImOutBuf, sizeof(StmImOutBuf));

    LockUp();
}

void __OSShutdownToIDL() {
    VI_WRITE_REG(VI_DISPLAY_CONFIG, 0);

    OSAssertMsg(StmReady, "Error: The firmware doesn't support shutdown feature.\n", 308);
    
    if (__OSGetHollywoodRev() == 0 || __OSGetHollywoodRev() == 1 || __OSGetHollywoodRev() == 2) {
        StmImInBuf[0] = 0xFCA08280;
    }
    else {
        StmImInBuf[0] = 0xFCE082C0;
    }
    
    IOS_Ioctl(StmImDesc, 0x2004, StmImInBuf, sizeof(StmImInBuf), StmImOutBuf, sizeof(StmImOutBuf));
    
    LockUp();
}

void __OSHotReset() {
    VI_WRITE_REG(VI_DISPLAY_CONFIG, 0);

    OSAssertMsg(StmReady, "Error: The firmware doesn't support reboot feature.\n", 345);

    IOS_Ioctl(StmImDesc, 0x2001, StmImInBuf, sizeof(StmImInBuf), StmImOutBuf, sizeof(StmImOutBuf));

    LockUp();
}

static BOOL AccessVIDimRegs() {
    IOSError result = IOS_IoctlAsync(StmImDesc, 0x5001, StmVdInBuf, sizeof(StmVdInBuf), StmVdOutBuf, sizeof(StmVdOutBuf),
                                    __OSVIDimReplyHandler, NULL);
    return result != FALSE ? result : TRUE;
}

BOOL __OSSetVIForceDimming(BOOL enable, u32 shiftY, u32 shiftX) {
    BOOL enabled;

    if (!StmReady) {
        return -10;
    }

    enabled = OSDisableInterrupts();

    if (StmVdInUse) {
        OSRestoreInterrupts(enabled);
        return 0;
    }

    StmVdInUse = TRUE;

    OSRestoreInterrupts(enabled);

    // Screen brightness
    StmVdInBuf[0] = shiftY << 3 | shiftX | enable << 7;

    StmVdInBuf[1] = 0;
    StmVdInBuf[2] = 0;
    StmVdInBuf[3] = 0;
    StmVdInBuf[4] = 0;

    StmVdInBuf[5] = 0xFFFFFFFF;
    StmVdInBuf[6] = 0xFFFF0000;

    StmVdInBuf[7] = 0;

    return AccessVIDimRegs();
}

s32 __OSSetIdleLEDMode(u32 mode) {
    if (!StmReady) {
        return -6;
    }
    StmImInBuf[0] = mode;
    return IOS_Ioctl(StmImDesc, 0x6002, StmImInBuf, sizeof(StmImInBuf), StmImOutBuf, sizeof(StmImOutBuf));
}

s32 __OSUnRegisterStateEvent() {
    IOSError result;

    if (!StmEhRegistered) {
        return 0;
    }
    if (!StmReady) {
        return -6;
    }

    result = IOS_Ioctl(StmImDesc, 0x3002, StmImInBuf, sizeof(StmImInBuf), StmImOutBuf, sizeof(StmImOutBuf));
    if (result == 0) {
        StmEhRegistered = FALSE;
    }

    return result;
}

s32 __OSVIDimReplyHandler(s32 result, void* arg) {
    #pragma unused(result)
    #pragma unused(arg)
        StmVdInUse = FALSE;
        return 0;
    }

void __OSDefaultResetCallback() {}
void __OSDefaultPowerCallback() {}

s32 __OSStateEventHandler(s32 result, void* arg) {
#pragma unused(result)
#pragma unused(arg)
    OSPowerCallback callback;

    OSAssertMsg(result == 0, "Error on STM state event handler\n", 753);
    
    StmEhRegistered = FALSE;
    
    if (((u32*)StmEhOutBuf)[0] == 0x20000) {
        if (__OSGetResetButtonStateRaw()) {
            BOOL enabled = OSDisableInterrupts();
    
            callback = ResetCallback;
            ResetDown = TRUE;
            ResetCallback = __OSDefaultResetCallback;
            callback();

            OSRestoreInterrupts(enabled);
            VIResetDimmingCount();
        }
        __OSRegisterStateEvent();
    }
    
    if (((u32*)StmEhOutBuf)[0] == 0x800) {
        BOOL enabled = OSDisableInterrupts();
    
        callback = PowerCallback;
        PowerCallback = __OSDefaultPowerCallback;
        callback();
    
        OSRestoreInterrupts(enabled);
    }
    
    return 0;
}
