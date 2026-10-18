#include <private/vi.h>
#include <revolution/vi.h>

#include <private/os.h>
#include <revolution/os.h>

#include <private/hollywood.h>

static int lastError;

static volatile u32 __i2c_ident_flag = VI_I2C_TYPE_NORMAL;
static volatile u32 __i2c_ident_first = FALSE;

void WaitMicroTime(s32 microSecs) {
    OSTime time = __OSGetSystemTime();

    while (OSTicksToMicroseconds(__OSGetSystemTime() - time) < microSecs) {
    }
}

static void VICheckI2C() {
    __i2c_ident_flag = TRUE;
}

s32 VIGetI2CType() {
    if (!__i2c_ident_first) {
        VICheckI2C();
    }
#ifdef DEBUG
    if (__i2c_ident_flag == VI_I2C_TYPE_REVERSE) {
        OSReport("NG! The 3in1 communication type is 'REVERSE' mode. \nPlease convert I2C interface on this board from 'REVERSE' mode to 'NORMAL' "
                 "mode.\n");
    } else {
        OSReport("OK! The 3in1 communication type is normal mode.\n");
    }
#endif
    return __i2c_ident_flag;
}

static BOOL __VISetSCL(BOOL flag) {
    u32 reg;
    flag &= 1;
    reg = __I2CRegs[0];
    reg &= ~(1 << 0xE);
    reg |= flag << 0xE;
    __I2CRegs[0] = reg;
    return TRUE;
}

static BOOL __VISetSDA(BOOL flag) {
    u32 reg;
    flag &= 1;
    reg = __I2CRegs[0];
    reg &= ~(1 << 0xF);
    reg |= flag << 0xF;
    __I2CRegs[0] = reg;
    return TRUE;
}

static BOOL __VIGetSDA() {
    u32 reg;

    reg = __I2CRegs[2];
    return (reg >> 0xF) & 1;
}

static void __VIOpenI2C(BOOL flag) {
    u32 reg;

    reg = __I2CRegs[1];
    reg &= 0xFFFF7FFF;
    reg = reg | 0x4000 | (flag << 0xF);
    __I2CRegs[1] = reg;
}

static void __VICloseI2C() {
}

static BOOL wait4ClkHigh() {
    WaitMicroTime(2);
    return TRUE;
}

BOOL sendSlaveAddr(u8 data) {
    int i;

    if (__i2c_ident_flag == VI_I2C_TYPE_REVERSE) {
        __VISetSDA(TRUE);
    } else {
        __VISetSDA(FALSE);
    }
    WaitMicroTime(2);
    __VISetSCL(FALSE);

    for (i = 0; i < 8; i++) {
        if ((data & 0x80) != 0) {
            if (__i2c_ident_flag == VI_I2C_TYPE_REVERSE) {
                __VISetSDA(FALSE);
            } else {
                __VISetSDA(TRUE);
            }
        } else if (__i2c_ident_flag == VI_I2C_TYPE_REVERSE) {
            __VISetSDA(TRUE);
        } else {
            __VISetSDA(FALSE);
        }
        WaitMicroTime(2);
        __VISetSCL(TRUE);
        if (!wait4ClkHigh()) {
            return FALSE;
        }
        __VISetSCL(FALSE);
        data <<= 1;
    }

    __VIOpenI2C(FALSE);
    WaitMicroTime(2);
    __VISetSCL(TRUE);
    if (!wait4ClkHigh()) {
        return FALSE;
    }
    if (__i2c_ident_flag == VI_I2C_TYPE_NORMAL && __VIGetSDA()) {
        return FALSE;
    }
    if (__i2c_ident_flag == VI_I2C_TYPE_REVERSE) {
        __VISetSDA(TRUE);
    } else {
        __VISetSDA(FALSE);
    }
    __VIOpenI2C(TRUE);
    __VISetSCL(FALSE);

    return TRUE;
}

BOOL __VISendI2CData(u8 slaveAddr, u8* pData, int nBytes) {
    int i;
    u8 data;
    BOOL enabled;

    if (!__i2c_ident_first) {
        VICheckI2C();
        __i2c_ident_first = TRUE;
    }
    enabled = OSDisableInterrupts();

    __VIOpenI2C(TRUE);
    __VISetSCL(TRUE);

    if (__i2c_ident_flag == VI_I2C_TYPE_REVERSE) {
        __VISetSDA(FALSE);
    } else {
        __VISetSDA(TRUE);
    }

    WaitMicroTime(2);
    WaitMicroTime(2);

    if (!sendSlaveAddr(slaveAddr)) {
        OSRestoreInterrupts(enabled);
        return FALSE;
    }

    __VIOpenI2C(TRUE);

    while (nBytes != 0) {
        data = *pData++;
        for (i = 0; i < 8; i++) {
            if ((data & 0x80) != 0) {
                if (__i2c_ident_flag == VI_I2C_TYPE_REVERSE) {
                    __VISetSDA(FALSE);
                } else {
                    __VISetSDA(TRUE);
                }
            } else if (__i2c_ident_flag == VI_I2C_TYPE_REVERSE) {
                __VISetSDA(TRUE);
            } else {
                __VISetSDA(FALSE);
            }

            WaitMicroTime(2);
            __VISetSCL(TRUE);
            if (!wait4ClkHigh()) {
                OSRestoreInterrupts(enabled);
                return FALSE;
            }
            __VISetSCL(FALSE);
            data <<= 1;
        }

        __VIOpenI2C(FALSE);
        WaitMicroTime(2);
        __VISetSCL(TRUE);
        if (!wait4ClkHigh()) {
            OSRestoreInterrupts(enabled);
            return FALSE;
        }
        if ((__i2c_ident_flag == VI_I2C_TYPE_NORMAL) && (__VIGetSDA())) {
            OSRestoreInterrupts(enabled);
            return FALSE;
        }
        if (__i2c_ident_flag == VI_I2C_TYPE_REVERSE) {
            __VISetSDA(TRUE);
        } else {
            __VISetSDA(FALSE);
        }
        __VIOpenI2C(TRUE);
        __VISetSCL(FALSE);
        nBytes--;
    }

    __VIOpenI2C(TRUE);
    if (__i2c_ident_flag == VI_I2C_TYPE_REVERSE) {
        __VISetSDA(TRUE);
    } else {
        __VISetSDA(FALSE);
    }
    WaitMicroTime(2);
    __VISetSCL(TRUE);
    WaitMicroTime(2);
    if (__i2c_ident_flag == VI_I2C_TYPE_REVERSE) {
        __VISetSDA(FALSE);
    } else {
        __VISetSDA(TRUE);
    }
    OSRestoreInterrupts(enabled);
    return TRUE;
}

BOOL __VIReceiveI2CData(u8 slaveAddr, u8* pData, int nBytes) {
    int i;
    u8 data;
    BOOL enabled;
    u8 sda;

    if (!__i2c_ident_first) {
        VICheckI2C();
        __i2c_ident_first = TRUE;
    }
    if (__i2c_ident_flag == VI_I2C_TYPE_REVERSE) {
        OSReport("This system can not execute 'I2C Read'.Need to modify this board for enabling I2C read.\n");
        return FALSE;
    }
    enabled = OSDisableInterrupts();
    __VIOpenI2C(TRUE);
    __VISetSCL(TRUE);
    __VISetSDA(TRUE);
    WaitMicroTime(2);
    WaitMicroTime(2);
    if (sendSlaveAddr((u8)(slaveAddr | 1)) == 0) {
        OSRestoreInterrupts(enabled);
        return FALSE;
    }

    while (nBytes != 0) {
        __VIOpenI2C(FALSE);
        data = 0;

        for (i = 0; i < 8; i++) {
            WaitMicroTime(2);
            __VISetSCL(TRUE);
            sda = __VIGetSDA();
            data |= (u8)(sda << (7 - i));
            WaitMicroTime(2);
            __VISetSCL(FALSE);
        }
        *pData++ = data;
        nBytes--;
        __VISetSDA(FALSE);
        __VIOpenI2C(TRUE);
        WaitMicroTime(2);
        __VISetSCL(TRUE);
        if (nBytes == 0) {
            __VISetSDA(TRUE);
        } else {
            __VISetSDA(FALSE);
        }
        WaitMicroTime(2);
        __VISetSCL(FALSE);
        __VISetSDA(FALSE);
        WaitMicroTime(2);
    }
    __VISetSCL(TRUE);
    WaitMicroTime(2);
    __VISetSDA(TRUE);
    WaitMicroTime(2);
    WaitMicroTime(2);
    OSRestoreInterrupts(enabled);
    return TRUE;
}
