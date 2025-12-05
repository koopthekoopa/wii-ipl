#ifndef PRIVATE_OS_BOOT_INFO_3_H
#define PRIVATE_OS_BOOT_INFO_3_H

#include <revolution/types.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef struct OSBootInfo3 {
    u32 countryCode;                // 0x00
    u8  unk_0x04[0x0C];
    u8  parentalControlFlags[16];   // 0x10
    u8  unk_0x14[0x1FDC];
    u32 magic;                      // 0x1FFC
} OSBootInfo3;

#define BI3_SIZE                            0x2000

#define BI3_OFFSET_COUNTRYCODE              0x0000
#define BI3_OFFSET_PARENTALCONTROL_FLAGS    0x0010
#define BI3_OFFSET_MAGIC                    0x1FFC

#ifdef __cplusplus
}
#endif

#endif // PRIVATE_OS_BOOT_INFO_3_H
