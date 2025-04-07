#ifndef PRIVATE_HOLLYWOOD_FLIPPER_EXI_REGS_H
#define PRIVATE_HOLLYWOOD_FLIPPER_EXI_REGS_H

#ifndef DEFINED_EXI_CHANS
#define DEFINED_EXI_CHANS
#define EXI_CHAN_0      0
#define EXI_CHAN_1      1
#define EXI_CHAN_2      2
#define EXI_CHAN_MAX    3
#endif // DEFINED_EXI_CHANS

#define EXI_CHAN_PARAM      0x0000
#define EXI_MEM_ADDRESS     0x0004
#define EXI_LENGTH          0x0008
#define EXI_CONTROL         0x000C
#define EXI_DATA            0x0010

#define EXI_REG_SIZE        0x0014

#define EXI_0_CHAN_PARAM    0x0000
#define EXI_0_MEM_ADDRESS   0x0004
#define EXI_0_LENGTH        0x0008
#define EXI_0_CONTROL       0x000C
#define EXI_0_DATA          0x0010

#define EXI_1_CHAN_PARAM    0x0014
#define EXI_1_MEM_ADDRESS   0x0018
#define EXI_1_LENGTH        0x001C
#define EXI_1_CONTROL       0x0020
#define EXI_1_DATA          0x0024

#define EXI_2_CHAN_PARAM    0x0028
#define EXI_2_MEM_ADDRESS   0x002C
#define EXI_2_LENGTH        0x0030
#define EXI_2_CONTROL       0x0034
#define EXI_2_DATA          0x0038

#define EXI_CHAN_PARAM_INTMASK      0
#define EXI_CHAN_PARAM_INT          1
#define EXI_CHAN_PARAM_TCINTMASK    2
#define EXI_CHAN_PARAM_TCINT        3
#define EXI_CHAN_PARAM_CLK          4
#define EXI_CHAN_PARAM_CS           7
#define EXI_CHAN_PARAM_EXTINTMASK   10
#define EXI_CHAN_PARAM_EXTINT       11
#define EXI_CHAN_PARAM_EXT          12
#define EXI_CHAN_PARAM_ROMDIS       13 /* For Gekko, this was the GC's IPL. But for hollywood, this is unknown. */

#define EXI_CONTROL_TSTART          0
#define EXI_CONTROL_DMA             1
#define EXI_CONTROL_RW              2
#define EXI_CONTROL_TLEN            4

#endif // PRIVATE_HOLLYWOOD_FLIPPER_EXI_REGS_H
