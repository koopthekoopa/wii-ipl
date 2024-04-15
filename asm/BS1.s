/*---------------------------------------------------------------------------*
                         Wii Menu Boot Sequence 1
                    Disassembled from Version 4.3 (PAL)
                but they are the exact same in every version
*---------------------------------------------------------------------------*/

#include "BS1.inc"

     .text

    .globl __start

__start:
__BS1_entry:
    addis   r4, r0, HID0_DEFAULT@ha
    addi    r4, r4, HID0_DEFAULT@l
    mtspr   hid0, r4
    
    addis   r4, r0, MSR_ADDRESS@ha
    addi    r4, r4, MSR_ADDRESS@l
    mtmsr   r4   

    mfspr   r3, hid0
    ori     r4, r3, ENABLE_L1@l
    mtspr   hid0, r4
    
    isync
    addi    r4, r0, 0
    mtspr   dbat0u, r4
    mtspr   dbat1u, r4
    mtspr   dbat2u, r4
    mtspr   dbat3u, r4
    mtspr   dbat4u, r4
    mtspr   dbat5u, r4
    mtspr   ibat0u, r4
    mtspr   ibat1u, r4
    mtspr   ibat2u, r4
    mtspr   ibat3u, r4
    mtspr   ibat4u, r4
    mtspr   ibat5u, r4
    isync
    
    addis   r4, r0, SR_EXCEPTION@ha
    addi    r4, r4, SR_EXCEPTION@l
    
    mtsr    0, r4
    mtsr    1, r4
    mtsr    2, r4
    mtsr    3, r4
    mtsr    4, r4
    mtsr    5, r4
    mtsr    6, r4
    mtsr    7, r4
    mtsr    8, r4
    mtsr    9, r4
    mtsr    10, r4
    mtsr    11, r4
    mtsr    12, r4
    mtsr    13, r4
    mtsr    14, r4
    mtsr    15, r4
    
    addis   r4, r0, BAT0L_ADDR@ha 
    addi    r4, r4, BAT0L_ADDR@l
    addis   r3, r0, BAT0U_ADDR@ha
    addi    r3, r3, BAT0U_ADDR@l
    mtspr   dbat0l, r4
    mtspr   dbat0u, r3
    isync
    mtspr   ibat0l, r4
    mtspr   ibat0u, r3
    isync

    addis   r4, r0, BAT1L_ADDR@ha
    addi    r4, r4, BAT1L_ADDR@l
    addis   r3, r0, BAT1U_ADDR@ha
    addi    r3, r3, BAT1U_ADDR@l
    mtspr   dbat1l, r4
    mtspr   dbat1u, r3
    isync

    addis   r4, r0, BAT4L_ADDR@ha
    addi    r4, r4, BAT4L_ADDR@l
    addis   r3, r0, BAT4U_ADDR@ha
    addi    r3, r3, BAT4U_ADDR@l
    mtspr   dbat4l, r4
    mtspr   dbat4u, r3
    isync
    mtspr   ibat4l, r4
    mtspr   ibat4u, r3
    isync

    addis   r4, r0, BAT5L_ADDR@ha
    addi    r4, r4, BAT5L_ADDR@l
    addis   r3, r0, BAT5U_ADDR@ha
    addi    r3, r3, BAT5U_ADDR@l
    mtspr   dbat5l, r4
    mtspr   dbat5u, r3
    isync

    addis   r4, r0, BAT3L_ADDR@ha
    addi    r4, r4, BAT3L_ADDR@l
    addis   r3, r0, BAT3U_ADDR@ha
    addi    r3, r3, BAT3U_ADDR@l
    mtspr   dbat3l, r4
    mtspr   dbat3u, r3
    isync
    mtspr   ibat3l, r4
    mtspr   ibat3u, r3
    isync
    
    mfmsr   r4
    ori     r4, r4, 0x0030
    mtmsr   r4
    isync
    
    lis r3, 0x800000F4@ha
    li  r4, 0
    stw r4, 0x800000F4@l(r3)
    lis r4, 0
    
    ori     r4, r4, BS2_ENTRY_OFFSET@l
    lwz     r4, 0(r4)
    mtlr    r4
    blr

.align BS1_ALIGN
.space BS2_ENTRY_PAD

/* At the end of BS1 */
.long BS2_ENTRY


