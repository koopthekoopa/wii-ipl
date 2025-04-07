#ifndef PRIVATE_FLIPPER_H
#define PRIVATE_FLIPPER_H

#include <revolution/os.h>

#include <private/bus.h>

#define __flipper_set_bit(x, b)     SET_FLAG(x, b)
#define __flipper_clear_bit(x, b)   CLEAR_FLAG(x, b)
#define __flipper_has_bit(x, b)     HAS_FLAG(x, b)

/* Video Interface */

#define VI_REG_ADDRESS          0x0C002000
vu16    __VIRegs[64]            ADDRESS(OS_BASE_UNCACHED + VI_REG_ADDRESS);

#define VI_WRITE_REG(x, v)      __VIRegs[(x) >> 1] = ((u16)v)
#define VI_READ_REG(x)          __VIRegs[(x) >> 1]

#define VI_WRITE_REG32(x, v)    *(u32*)&__VIRegs[(x) >> 1] = ((u32)v)
#define VI_READ_REG32(x)        *(u32*)&__VIRegs[(x) >> 1]

#define VI_SET_REG_F(x, v)      __flipper_set_bit  (__VIRegs[(x) >> 1], v)
#define VI_DEL_REG_F(x, v)      __flipper_clear_bit(__VIRegs[(x) >> 1], v)
#define VI_HAS_REG_F(x, v)      __flipper_has_bit  (__VIRegs[(x) >> 1], v)

#include <private/hollywood/flipper/vi_reg.h>

/* Processor Interface */

#define PI_REG_ADDRESS          0x0C003000
vu32    __PIRegs[64]            ADDRESS(OS_BASE_UNCACHED + PI_REG_ADDRESS);

#define PI_WRITE_REG(x, v)      __PIRegs[(x) >> 2] = ((u32)v)
#define PI_READ_REG(x)          __PIRegs[(x) >> 2]

#define PI_SET_REG_F(x, v)      __flipper_set_bit  (__PIRegs[(x) >> 2], v)
#define PI_DEL_REG_F(x, v)      __flipper_clear_bit(__PIRegs[(x) >> 2], v)
#define PI_HAS_REG_F(x, v)      __flipper_has_bit  (__PIRegs[(x) >> 2], v)

#include <private/hollywood/flipper/pi_reg.h>

/* Audio DSP */

#define DSP_REG_ADDRESS         0x0C005000
vu16    __DSPRegs[128]          ADDRESS(OS_BASE_UNCACHED + DSP_REG_ADDRESS);

#define DSP_WRITE_REG(x, v)     __DSPRegs[(x) >> 1] = ((u16)v)
#define DSP_READ_REG(x)         __DSPRegs[(x) >> 1]

#define DSP_WRITE_REG32(x, v)   *(u32*)&__DSPRegs[(x) >> 1] = ((u32)v)
#define DSP_READ_REG32(x)       *(u32*)&__DSPRegs[(x) >> 1]

#define DSP_SET_REG_F(x, v)     __flipper_set_bit  (__DSPRegs[(x) >> 1], v)
#define DSP_DEL_REG_F(x, v)     __flipper_clear_bit(__DSPRegs[(x) >> 1], v)
#define DSP_HAS_REG_F(x, v)     __flipper_has_bit  (__DSPRegs[(x) >> 1], v)

#include <private/hollywood/flipper/dsp_reg.h>

/* Audio Inerface */

#define AI_REG_ADDRESS          0x0D006C00
vu32    __AIRegs[8]             ADDRESS(OS_BASE_UNCACHED + AI_REG_ADDRESS);

#define AI_WRITE_REG(x, v)      __AIRegs[(x) >> 2] = ((u32)v)
#define AI_READ_REG(x)          __AIRegs[(x) >> 2]

#define AI_SET_REG_F(x, v)      __flipper_set_bit  (__AIRegs[(x) >> 2], v)
#define AI_DEL_REG_F(x, v)      __flipper_clear_bit(__AIRegs[(x) >> 2], v)
#define AI_HAS_REG_F(x, v)      __flipper_has_bit  (__AIRegs[(x) >> 2], v)

#include <private/hollywood/flipper/ai_reg.h>

/* External Inerface */

#define EXI_REG_ADDRESS         0x0D006800
vu32    __EXIRegs[30]           ADDRESS(OS_BASE_UNCACHED + EXI_REG_ADDRESS);

#define EXI_WRITE_REG(x, v)     __EXIRegs[(x) >> 2] = ((u32)v)
#define EXI_READ_REG(x)         __EXIRegs[(x) >> 2]

#define EXI_SET_REG_F(x, v)     __flipper_set_bit  (__EXIRegs[(x) >> 2], v)
#define EXI_DEL_REG_F(x, v)     __flipper_clear_bit(__EXIRegs[(x) >> 2], v)
#define EXI_HAS_REG_F(x, v)     __flipper_has_bit  (__EXIRegs[(x) >> 2], v)

#include <private/hollywood/flipper/exi_reg.h>

/* Memory Interface */

#define MEM_REG_ADDRESS         0x0C004000
vu16    __MEMRegs[52]           ADDRESS(OS_BASE_UNCACHED + MEM_REG_ADDRESS);

#define MEM_WRITE_REG(x, v)     __MEMRegs[(x) >> 1] = ((u16)v)
#define MEM_READ_REG(x)         __MEMRegs[(x) >> 1]

#define MEM_SET_REG_F(x, v)     __flipper_set_bit  (__MEMRegs[(x) >> 2], v)
#define MEM_DEL_REG_F(x, v)     __flipper_clear_bit(__MEMRegs[(x) >> 2], v)
#define MEM_HAS_REG_F(x, v)     __flipper_has_bit  (__MEMRegs[(x) >> 2], v)

#include <private/hollywood/flipper/mem_reg.h>

/* Drive Interface */

#define DI_REG_ADDRESS          0x0D006000
vu32    __DIRegs[16]            ADDRESS(OS_BASE_UNCACHED + DI_REG_ADDRESS);

#define DI_WRITE_REG(x, v)      __DIRegs[(x) >> 2] = ((u32)v)
#define DI_READ_REG(x)          __DIRegs[(x) >> 2]

#define DI_SET_REG_F(x, v)      __flipper_set_bit  (__DIRegs[(x) >> 2], v)
#define DI_DEL_REG_F(x, v)      __flipper_clear_bit(__DIRegs[(x) >> 2], v)
#define DI_HAS_REG_F(x, v)      __flipper_has_bit  (__DIRegs[(x) >> 2], v)

#include <private/hollywood/flipper/di_reg.h>

/* Serial Interface */

#define SI_REG_ADDRESS          0x0D006400
vu32    __SIRegs[64]            ADDRESS(OS_BASE_UNCACHED + SI_REG_ADDRESS);

#define SI_WRITE_REG(x, v)      __SIRegs[(x) >> 2] = ((u32)v)
#define SI_READ_REG(x)          __SIRegs[(x) >> 2]

#define SI_SET_REG_F(x, v)      __flipper_set_bit  (__SIRegs[(x) >> 2], v)
#define SI_DEL_REG_F(x, v)      __flipper_clear_bit(__SIRegs[(x) >> 2], v)
#define SI_HAS_REG_F(x, v)      __flipper_has_bit  (__SIRegs[(x) >> 2], v)

#include <private/hollywood/flipper/si_reg.h>

#endif // PRIVATE_FLIPPER_H
