#ifndef PRIVATE_HOLLYWOOD_FLIPPER_DSP_REGS_H
#define PRIVATE_HOLLYWOOD_FLIPPER_DSP_REGS_H

#define DSP_MAILBOX             0x0000
#define DSP_MAILBOX_SET         15
#define DSP_MAILBOX_H           0x0000
#define DSP_MAILBOX_L           0x0002

#define DSP_CPUMAILBOX          0x0004
#define DSP_CPUMAILBOX_SET      15
#define DSP_CPUMAILBOX_H        0x0004
#define DSP_CPUMAILBOX_L        0x0006

#define DSP_CONTROL_STATUS      0x000A
#define DSP_CONTROL_STATUS_RESET        11 /* Apparently this also could be "BOOTMODE" */
#define DSP_CONTROL_STATUS_DMASTAT      10
#define DSP_CONTROL_STATUS_ARDMASTAT    9
#define DSP_CONTROL_STATUS_DMAINTMSK    8
#define DSP_CONTROL_STATUS_DSPINT       7
#define DSP_CONTROL_STATUS_ARINTMSK     6
#define DSP_CONTROL_STATUS_ARINT        5
#define DSP_CONTROL_STATUS_AIDINTMSK    4
#define DSP_CONTROL_STATUS_AIDINT       3
#define DSP_CONTROL_STATUS_HALT         2
#define DSP_CONTROL_STATUS_PIINT        1
#define DSP_CONTROL_STATUS_RES          0

#define DSP_AR_SIZE             0x0012
#define DSP_AR_MODE             0x0016
#define DSP_AR_REFRESH          0x0018
#define DSP_AR_DMA_MMADDR       0x0020
#define DSP_AR_DMA_MMADDR_H     0x0020
#define DSP_AR_DMA_MMADDR_L     0x0022
#define DSP_AR_DMA_ARADDR       0x0024
#define DSP_AR_DMA_ARADDR_H     0x0024
#define DSP_AR_DMA_ARADDR_L     0x0026
#define DSP_AR_DMA_SIZE         0x0028
#define DSP_AR_DMA_SIZE_H       0x0028
#define DSP_AR_DMA_SIZE_L       0x002A

#define DSP_DMA_START_ADDR_H    0x0030
#define DSP_DMA_START_ADDR_L    0x0032

#define DSP_DMA_CONTROL_LENGTH  0x0036
#define DSP_DMA_CONTROL_LENGTH_CTRL 15

#define DSP_DMA_BYTES_LEFT      0x003A

#endif // PRIVATE_HOLLYWOOD_FLIPPER_DSP_REGS_H
