HID0_DEFAULT        .set    0x00110C64
MSR_ADDRESS         .set    0x00002000

ENABLE_IC           .set    0x00008000
ENABLE_DC           .set    0x00004000
ENABLE_L1           .set    0x0000C000
ENABLE_L2           .set    0x99000000

SR_EXCEPTION        .set    0x80000000

BAT0_ADDR           .set    0x00000002
BAT0_VALUE          .set    0x80001FFF

BAT1_ADDR           .set    0x0000002A
BAT1_VALUE          .set    0xC0001FFF

BAT3_ADDR           .set    0x00000001
BAT3_VALUE          .set    0x0000001F

BAT4_ADDR           .set    0x10000002
BAT4_VALUE          .set    0x90001FFF

BAT5_ADDR           .set    0x1000002A
BAT5_VALUE          .set    0xD0001FFF

BS1_ALIGN           .set    0x00000100

BS2_ENTRY           .set    0x81330000
BS2_ENTRY_OFFSET    .set    0x000037FC
BS2_ENTRY_PAD       .set    (BS2_ENTRY_OFFSET - 0x00003600)

BI2_ADDRESS         .set    0x800000F4


