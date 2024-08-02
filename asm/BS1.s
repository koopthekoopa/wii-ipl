/*---------------------------------------------------------------------------*
                         Wii Menu Boot Sequence 1
                    Disassembled from Version 4.3 (PAL)
                but they are the exact same in every version
*---------------------------------------------------------------------------*/

#include "BS1.inc"
     .text
    .globl __start
__start:
    /* Set up HID0 */
    addis   r4, r0, HID0_DEFAULT@ha
    addi    r4, r4, HID0_DEFAULT@l
    mtspr   hid0, r4
    
    /* Set up MSR */
    addis   r4, r0, MSR_ADDRESS@ha
    addi    r4, r4, MSR_ADDRESS@l
    mtmsr   r4   

    /* Enable L1 cache */
    mfspr   r3, hid0
    ori     r4, r3, ENABLE_L1@l
    mtspr   hid0, r4
    
    /* Clear BATs */
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

    /* Initialize SR registers for exceptions */
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
    
    /* Initialize BATs */
    
    /* BAT 0 */
    addis   r4, r0, BAT0_ADDR@ha 
    addi    r4, r4, BAT0_ADDR@l
    addis   r3, r0, BAT0_VALUE@ha
    addi    r3, r3, BAT0_VALUE@l

    mtspr   dbat0l, r4
    mtspr   dbat0u, r3

    isync

    mtspr   ibat0l, r4
    mtspr   ibat0u, r3

    isync

    /* BAT 1 */
    addis   r4, r0, BAT1_ADDR@ha
    addi    r4, r4, BAT1_ADDR@l
    addis   r3, r0, BAT1_VALUE@ha
    addi    r3, r3, BAT1_VALUE@l

    mtspr   dbat1l, r4
    mtspr   dbat1u, r3
 
    isync

    /* BAT 4 */
    addis   r4, r0, BAT4_ADDR@ha
    addi    r4, r4, BAT4_ADDR@l
    addis   r3, r0, BAT4_VALUE@ha
    addi    r3, r3, BAT4_VALUE@l

    mtspr   dbat4l, r4
    mtspr   dbat4u, r3

    isync

    mtspr   ibat4l, r4
    mtspr   ibat4u, r3

    isync

    /* BAT 5 */
    addis   r4, r0, BAT5_ADDR@ha
    addi    r4, r4, BAT5_ADDR@l
    addis   r3, r0, BAT5_VALUE@ha
    addi    r3, r3, BAT5_VALUE@l

    mtspr   dbat5l, r4
    mtspr   dbat5u, r3

    isync

    /* BAT 3 */
    addis   r4, r0, BAT3_ADDR@ha
    addi    r4, r4, BAT3_ADDR@l
    addis   r3, r0, BAT3_VALUE@ha
    addi    r3, r3, BAT3_VALUE@l

    mtspr   dbat3l, r4
    mtspr   dbat3u, r3

    isync

    mtspr   ibat3l, r4
    mtspr   ibat3u, r3
    
    /* Set up MMU */
    isync
    mfmsr   r4
    ori     r4, r4, 0x0030
    mtmsr   r4

    isync
    
    /* Load the Boot Info 2 (BI2) Data */
    lis     r3, BI2_ADDRESS@ha
    li      r4, 0
    stw     r4, BI2_ADDRESS@l(r3)
    lis     r4, 0
    
    /* The First Boot Stage (BS1) is done! Now jump the Second Boot Stage (BS2). */
    ori     r4, r4, BS2_ENTRY_OFFSET@l
    lwz     r4, 0(r4)
    mtlr    r4
    blr

.align BS1_ALIGN

/* At the end of BS1 */
.space BS2_ENTRY_PAD
.long BS2_ENTRY


