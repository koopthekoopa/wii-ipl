#ifndef PRIVATE_HOLLYWOOD_REGISTERS_H
#define PRIVATE_HOLLYWOOD_REGISTERS_H

#include <revolution/os.h>

#include <private/bus.h>

#define __hw_set_bit(x, b)     SET_FLAG(x, b)
#define __hw_clear_bit(x, b)   CLEAR_FLAG(x, b)
#define __hw_has_bit(x, b)     HAS_FLAG(x, b)

/* IPC */
#define HW_IPC_PPCMSG           0x000
#define HW_IPC_PPCCTRL          0x004
#define HW_IPC_ARMMSG           0x008
#define HW_IPC_ARMCTRL          0x00C

/* IOP (Starlet) Timer */
#define HW_TIMER                0x010
#define HW_ALARM                0x014

/* Video related */
#define HW_VI1CFG               0x018
#define HW_VIDIM                0x01C
#define HW_VISOLID              0x024

/* IRQ Controllers */
#define HW_PPCIRQFLAG           0x030
#define HW_PPCIRQMASK           0x034
#define HW_ARMIRQFLAG           0x038
#define HW_ARMIRQMASK           0x03C
#define HW_ARMFIQMASK           0x040
#define HW_IOPINTPPC            0x044
#define HW_WDGINTSTS            0x048
#define HW_WDGCFG               0x04C
#define HW_DMAADRINTSTS         0x050
#define HW_CPUADRINTSTS         0x054
#define HW_DBGINTSTS            0x058
#define HW_DBGINTEN             0x05C

/* Bus controlling */
#define HW_SRNPROT              0x060
#define HW_AHBPROT              0x064

#define HW_I2CIOPINTEN          0x068
#define HW_I2CIOPINTSTS         0x06C

#define HW_AIPPROT              0x070
#define HW_AIPIOCTRL            0x074

#define HW_VIINTEN              0x078
#define HW_VIINTSTS             0x07C

/* USB related */
#define HW_USBDBG0              0x080
#define HW_USBDBG1              0x084
#define HW_USBFRCRST            0x088
#define HW_USBIOTEST            0x08C

/* "Embedded logic-analyzer" stuff */
#define HW_ELA_REG_ADDR         0x090
#define HW_ELA_REG_DATA         0x094

#define HW_MEMTSTN              0x098
#define HW_MEMTSTP              0x09C

/* Hollywood GPIOs */
#define HW_GPIOB_OUT            0x0C0
#define HW_GPIOB_DIR            0x0C4
#define HW_GPIOB_IN             0x0C8
#define HW_GPIOB_INTLVL         0x0CC
#define HW_GPIOB_INTFLAG        0x0D0
#define HW_GPIOB_INTMASK        0x0D4
#define HW_GPIOB_STRAPS         0x0D8
#define HW_GPIO_ENABLE          0x0DC
#define HW_GPIO_OUT             0x0E0
#define HW_GPIO_DIR             0x0E4
#define HW_GPIO_IN              0x0E8
#define HW_GPIO_INTLVL          0x0EC
#define HW_GPIO_INTFLAG         0x0F0
#define HW_GPIO_INTMASK         0x0F4
#define HW_GPIO_STRAPS          0x0F8
#define HW_GPIO_OWNER           0x0FC

/* AHB related? */
#define HW_ARB_CFG_M0           0x100
#define HW_ARB_CFG_M1           0x104
#define HW_ARB_CFG_M2           0x108
#define HW_ARB_CFG_M3           0x10C
#define HW_ARB_CFG_M4           0x110
#define HW_ARB_CFG_M5           0x114
#define HW_ARB_CFG_M6           0x118
#define HW_ARB_CFG_M7           0x11C
#define HW_ARB_CFG_M8           0x120
#define HW_ARB_CFG_M9           0x124
#define HW_ARB_CFG_MA           0x128 /* \ Not documented anywhere but assuming they exist  */
#define HW_ARB_CFG_MB           0x12C /* /                                                  */
#define HW_ARB_CFG_MC           0x130
#define HW_ARB_CFG_MD           0x134
#define HW_ARB_CFG_ME           0x138
#define HW_ARB_CFG_MF           0x13C
#define HW_ARB_CFG_CPU          0x140
#define HW_ARB_CFG_DMA          0x144
#define HW_ARB_PCNTCFG          0x148
#define HW_ARB_PCNTSTS          0x14C

#define HW_I2CSCTRL             0x150
#define HW_I2CSSTS              0x154
#define HW_I2CSRDEN             0x158
#define HW_I2CSTRAP             0x160
#define HW_I2CSCTRL_MIRROR      0x164 /* Apparently */
#define HW_I2CSVISETYUV         0x168
#define HW_I2CSVISETFILT        0x16C

#define HW_SPARE2               0x170
#define HW_SPARE3               0x174

/* Some system related stuff */
#define HW_COMPAT               0x180
#define HW_RESET_AHB            0x184
#define HW_SPARE0               0x188
#define HW_BOOT0                0x18C
#define HW_CLOCKS               0x190
#define HW_RESETS               0x194
#define HW_IFPOWER              0x198

/* PLL/Clock related(?) */
#define HW_PLLDR                0x19C
#define HW_PLLSYSEXT1           0x1A0
#define HW_PLLSYSEXT2           0x1A4
#define HW_PLLAIEXT1            0x1A8
#define HW_PLLATEXT2            0x1AC
#define HW_PLLSYS               0x1B0
#define HW_PLLSYSEXT            0x1B4
#define HW_PLLDSK               0x1B8
#define HW_PLLDDR               0x1BC
#define HW_PLLDDREXT            0x1C0
#define HW_PLLVI                0x1C4
#define HW_PLLVIEXT             0x1C8
#define HW_PLLAI                0x1CC

#define HW_PLLAIEXT             0x1D0
#define HW_PLLAIEXT_PLL_A       30
#define HW_PLLAIEXT_PLL_B       31

#define HW_PLLUSB               0x1D4
#define HW_PLLUSBEXT            0x1D8

#define HW_IOPWRCTRL            0x1DC

/* More clock related? */
#define HW_IOSTRCTRL0           0x1E0
#define HW_IOSTRCTRL1           0x1E4
#define HW_CLKSTRCTRL           0x1E8

/* OTP related */
#define HW_OTPCMD               0x1EC
#define HW_OTPDATA              0x1F0

/* Debug related */
#define HW_DBGCLK               0x1F4
#define HW_OBSCLKOCTRL          0x1F8
#define HW_OBSCLKICTRL          0x1FC
#define HW_DBGPORT              0x200

/* SI Related */
#define HW_SICLKDIV             0x204
#define HW_SICTRL               0x208
#define HW_SIDATA               0x20C
#define HW_SIINT                0x210

#define HW_VERSION              0x214

#define HW_DBGBUSRD             0x218

/* Hollywood Registers Maros */

#define ACR_REG_ADDRESS         0x0D000000
vu32    __ACRRegs[256]          ADDRESS(OS_BASE_UNCACHED + ACR_REG_ADDRESS);

#define ACR_WRITE_REG32(x, v)   __ACRRegs[x >> 2] = v
#define ACR_READ_REG32(x)       __ACRRegs[x >> 2]

#define ACR_SET_REG_F(x, v)     __hw_set_bit  (__ACRRegs[x >> 2], v)
#define ACR_DEL_REG_F(x, v)     __hw_clear_bit(__ACRRegs[x >> 2], v)
#define ACR_HAS_REG_F(x, v)     __hw_has_bit  (__ACRRegs[x >> 2], v)

// From the PPC, this would do nothing different and act the same as `__ACRRegs`.
// But the SDK, which is from the PPC, still chooses to use this.

#define AHB_TRUSTED_OFFSET      0x00800000
vu32    __ACRIOPRegs[256]       ADDRESS(OS_BASE_UNCACHED + ACR_REG_ADDRESS + AHB_TRUSTED_OFFSET);

#define ACRIOP_WRITE_REG32(x, v)    __ACRIOPRegs[x >> 2] = v
#define ACRIOP_READ_REG32(x)        __ACRIOPRegs[x >> 2]

#define ACRIOP_SET_REG_F(x, v)      __hw_set_bit  (__ACRIOPRegs[x >> 2], v)
#define ACRIOP_DEL_REG_F(x, v)      __hw_clear_bit(__ACRIOPRegs[x >> 2], v)
#define ACRIOP_HAS_REG_F(x, v)      __hw_has_bit  (__ACRIOPRegs[x >> 2], v)

#endif // PRIVATE_HOLLYWOOD_REGISTERS_H
