#include <revolution/os.h>

#include <private/bus.h>
#include <private/hollywood.h>

#include <string.h>

#include "DSPInitCode.inc"
#define DSP_INIT_CODE_ADDR  0x01000000
#define DSP_INIT_CODE_SIZE  0x80

extern BOOL __OSInIPL;

static void waitMicroSec(int us) {
    OSTick t = OSGetTick();
    while (OSTicksToMicroseconds(OSGetTick() - t) < us);
}

void __AIClockInit(BOOL compatB) {
    u32 reg;

    reg = ACRIOP_READ_REG32(HW_COMPAT);
    CLEAR_FLAG(reg, (1<<8));
    SET_FLAG(reg,   (compatB<<8));
    CLEAR_FLAG(reg, (1<<7));
    ACRIOP_WRITE_REG32(HW_COMPAT, reg);

    reg = ACRIOP_READ_REG32(HW_PLLAIEXT);
    CLEAR_FLAG(reg, (1<<HW_PLLAIEXT_PLL_B));
    CLEAR_FLAG(reg, (1<<HW_PLLAIEXT_PLL_A));
    ACRIOP_WRITE_REG32(HW_PLLAIEXT, reg);

    waitMicroSec(100);

    if (compatB == FALSE) {
        reg = ACRIOP_READ_REG32(HW_PLLAI);
        CLEAR_FLAG(reg, (1<<6)
                    | (1<<7) 
                    | (0b11111111<<8)
                    | (1<<16) 
                    | (1<<17));
        SET_FLAG(reg, (1<<6)
                    | (1<<7)
                    | (1<<8)
                    | (1<<9)
                    | (1<<10)
                    | (1<<11));
        CLEAR_FLAG(reg, (1<<0)
                    | (1<<1)
                    | (1<<2)
                    | (1<<3)
                    | (1<<4)
                    | (1<<5));
        CLEAR_FLAG(reg, (0b11111111<<18)
                    | (1<<25)
                    | (1<<26));
        SET_FLAG(reg, ((1<<0)
                    | (1<<3)
                    | (1<<4)
                    | (1<<8))<<18);
        ACRIOP_WRITE_REG32(HW_PLLAI, reg);
    }
    else {
        reg = ACRIOP_READ_REG32(HW_PLLAI);
        CLEAR_FLAG(reg, (1<<6)
                    | (1<<7) 
                    | (0b11111111<<8)
                    | (1<<16) 
                    | (1<<17));
        SET_FLAG(reg, (1<<6)
                    | (1<<7) 
                    | (0b11111111<<8));
        CLEAR_FLAG(reg, (1<<0)
                    | (1<<1)
                    | (1<<2)
                    | (1<<3)
                    | (1<<4)
                    | (1<<5));
        SET_FLAG(reg, (1<<1)
                    | (1<<2)
                    | (1<<3));
        CLEAR_FLAG(reg, (0b11111111<<18)
                        | (1<<25)
                        | (1<<26));
        SET_FLAG(reg, ((1<<2)
                    | (1<<3)
                    | (1<<5)
                    | (1<<8))<<18);
        ACRIOP_WRITE_REG32(HW_PLLAI, reg);
    }

    waitMicroSec(100);

    reg = ACRIOP_READ_REG32(HW_PLLAIEXT);
    reg &= ~(1<<28);
    ACRIOP_WRITE_REG32(HW_PLLAIEXT, reg);

    waitMicroSec(1000);

    reg = ACRIOP_READ_REG32(HW_PLLAIEXT);
    reg &= ~(1<<HW_PLLAIEXT_PLL_A);
    reg |= (1<<HW_PLLAIEXT_PLL_A);
    ACRIOP_WRITE_REG32(HW_PLLAIEXT, reg);

    waitMicroSec(1000);

    reg = ACRIOP_READ_REG32(HW_PLLAIEXT);
    reg &= ~(1<<HW_PLLAIEXT_PLL_B);
    reg |= (1<<HW_PLLAIEXT_PLL_B);
    ACRIOP_WRITE_REG32(HW_PLLAIEXT, reg);

    waitMicroSec(1000);
}

void __OSInitAudioSystem() {
    u8 errFlag;
    u16 reg;
    OSTick start_tick;

    if (!__OSInIPL) {
        __AIClockInit(TRUE);
    }

    memcpy((u8*)OSGetArenaHi() - DSP_INIT_CODE_SIZE, (u8*)OSPhysicalToCached(DSP_INIT_CODE_ADDR), DSP_INIT_CODE_SIZE);
    memcpy((u8*)OSPhysicalToCached(DSP_INIT_CODE_ADDR), DSPInitCode, DSP_INIT_CODE_SIZE);
    DCFlushRange((u8*)OSPhysicalToCached(DSP_INIT_CODE_ADDR), DSP_INIT_CODE_SIZE);

    DSP_WRITE_REG(DSP_AR_SIZE, (1<<DSP_CONTROL_STATUS_ARINTMSK)
                             | (1<<DSP_CONTROL_STATUS_PIINT)
                             | (1<<DSP_CONTROL_STATUS_RES));
    DSP_WRITE_REG(DSP_CONTROL_STATUS, (1<<DSP_CONTROL_STATUS_RESET)
                                    | (1<<DSP_CONTROL_STATUS_DSPINT)
                                    | (1<<DSP_CONTROL_STATUS_ARINT)
                                    | (1<<DSP_CONTROL_STATUS_AIDINT)
                                    | (1<<DSP_CONTROL_STATUS_HALT));
    DSP_SET_REG_F(DSP_CONTROL_STATUS, (1<<DSP_CONTROL_STATUS_RES));

    while (DSP_READ_REG(DSP_CONTROL_STATUS) & (1<<DSP_CONTROL_STATUS_RES)) {}

    DSP_WRITE_REG(DSP_MAILBOX_H, 0);
    while (HAS_FLAG(DSP_READ_REG(DSP_CPUMAILBOX_H) << 16 | DSP_READ_REG(DSP_CPUMAILBOX_L), (1<<DSP_CPUMAILBOX_SET) << 16)) {}

    DSP_WRITE_REG32(DSP_AR_DMA_MMADDR, DSP_INIT_CODE_ADDR /*???*/);
    DSP_WRITE_REG32(DSP_AR_DMA_ARADDR, 0);
    DSP_WRITE_REG32(DSP_AR_DMA_SIZE,   32);

    reg = DSP_READ_REG(DSP_CONTROL_STATUS);
    while (!HAS_FLAG(reg, (1<<DSP_CONTROL_STATUS_ARINT))) {
        reg = DSP_READ_REG(DSP_CONTROL_STATUS);
    }
    DSP_WRITE_REG(DSP_CONTROL_STATUS, reg);

    start_tick = OSGetTick();
    while (OSDiffTick(OSGetTick(), start_tick) < 2194) {}

    DSP_WRITE_REG32(DSP_AR_DMA_MMADDR, DSP_INIT_CODE_ADDR /*???*/);
    DSP_WRITE_REG32(DSP_AR_DMA_ARADDR, 0);
    DSP_WRITE_REG32(DSP_AR_DMA_SIZE,   32);

    reg = DSP_READ_REG(DSP_CONTROL_STATUS);
    while (!HAS_FLAG(reg, (1<<DSP_CONTROL_STATUS_ARINT))) {
        reg = DSP_READ_REG(DSP_CONTROL_STATUS);
    }
    DSP_WRITE_REG(DSP_CONTROL_STATUS, reg);

    DSP_DEL_REG_F(DSP_CONTROL_STATUS, (1<<DSP_CONTROL_STATUS_RESET));

    while (DSP_HAS_REG_F(DSP_CONTROL_STATUS, (1<<DSP_CONTROL_STATUS_DMASTAT))) {}

    DSP_DEL_REG_F(DSP_CONTROL_STATUS, (1<<DSP_CONTROL_STATUS_HALT));

    errFlag = 0;

    /* This part was for an assert. It's gone but these were left over. */
    {
        u16 reg2 = DSP_READ_REG(DSP_CPUMAILBOX_H);
        while (!HAS_FLAG(reg2, (1<<DSP_CPUMAILBOX_SET))) {
            reg2 = DSP_READ_REG(DSP_CPUMAILBOX_H);
        }

        DSP_READ_REG(DSP_CPUMAILBOX_L); // nothing
    }

    // Stop!
    DSP_SET_REG_F(DSP_CONTROL_STATUS,  (1<<DSP_CONTROL_STATUS_HALT));
    
    DSP_WRITE_REG(DSP_CONTROL_STATUS, (1<<DSP_CONTROL_STATUS_RESET)
                                    | (1<<DSP_CONTROL_STATUS_DSPINT)
                                    | (1<<DSP_CONTROL_STATUS_ARINT)
                                    | (1<<DSP_CONTROL_STATUS_AIDINT)
                                    | (1<<DSP_CONTROL_STATUS_HALT));
    DSP_SET_REG_F(DSP_CONTROL_STATUS, (1<<DSP_CONTROL_STATUS_RES));

    while (DSP_HAS_REG_F(DSP_CONTROL_STATUS, (1<<DSP_CONTROL_STATUS_RES))) {}

    memcpy((u8*)OSPhysicalToCached(DSP_INIT_CODE_ADDR), (u8*)OSGetArenaHi() - DSP_INIT_CODE_SIZE, DSP_INIT_CODE_SIZE);
}

void __OSStopAudioSystem() {
    u16 reg;
    OSTick start_tick;

    // Stop DSP and clear sample control
    DSP_WRITE_REG(DSP_CONTROL_STATUS, (1<<DSP_CONTROL_STATUS_HALT) | (1<<DSP_CONTROL_STATUS_RESET));
    DSP_DEL_REG_F(DSP_DMA_CONTROL_LENGTH, (1<<DSP_DMA_CONTROL_LENGTH_CTRL));

    // Wait for DMA to end
    reg = DSP_READ_REG(DSP_CONTROL_STATUS);
    while (HAS_FLAG(reg, (1<<DSP_CONTROL_STATUS_DMASTAT))) {
        reg = DSP_READ_REG(DSP_CONTROL_STATUS);
    }
    reg = DSP_READ_REG(DSP_CONTROL_STATUS);
    while (HAS_FLAG(reg, (1<<DSP_CONTROL_STATUS_ARDMASTAT))) {
        reg = DSP_READ_REG(DSP_CONTROL_STATUS);
    }

    DSP_WRITE_REG(DSP_CONTROL_STATUS, (1<<DSP_CONTROL_STATUS_RESET)
                                    | (1<<DSP_CONTROL_STATUS_DSPINT)
                                    | (1<<DSP_CONTROL_STATUS_ARINT)
                                    | (1<<DSP_CONTROL_STATUS_AIDINT)
                                    | (1<<DSP_CONTROL_STATUS_HALT));
    
    DSP_WRITE_REG(DSP_MAILBOX_H, 0);
    while (HAS_FLAG(DSP_READ_REG(DSP_CPUMAILBOX_H) << 16 | DSP_READ_REG(DSP_CPUMAILBOX_L), (1<<DSP_CPUMAILBOX_SET) << 16)) {}

    start_tick = OSGetTick();
    while (OSDiffTick(OSGetTick(), start_tick) < 44);

    DSP_SET_REG_F(DSP_CONTROL_STATUS, (1<<DSP_CONTROL_STATUS_RES));
    reg = DSP_READ_REG(DSP_CONTROL_STATUS);
    while (HAS_FLAG(reg, (1<<DSP_CONTROL_STATUS_RES))) {
        reg = DSP_READ_REG(DSP_CONTROL_STATUS);;
    }
}
