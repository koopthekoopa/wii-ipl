#ifndef PRIVATE_OS_BOOT_INFO_2_H
#define PRIVATE_OS_BOOT_INFO_2_H

#include <revolution/types.h>
#include <revolution/os/OSMemMap.h>

#ifdef __cplusplus
extern "C" {
#endif

#define BI2_SIZE                        0x2000

#define BI2_ADDR                        OS_ADDR_BOOT_INFO_2

#define BI2_OFFSET_DBMONITORSIZE        0x0000
#define BI2_OFFSET_SIMULATEDMEM1SIZE    0x0004
#define BI2_OFFSET_ARGOFFSET            0x0008
#define BI2_OFFSET_DEBUGFLAG            0x000C
#define BI2_OFFSET_TRACKLOCATION        0x0010
#define BI2_OFFSET_TRACKSIZE            0x0014
#define BI2_OFFSET_COUNTRYCODE          0x0018
#define BI2_OFFSET_PADSPEC              0x0024
#define BI2_OFFSET_CODELIMIT            0x0028
#define BI2_OFFSET_SIMULATEDMEM2SIZE    0x002C
#define BI2_OFFSET_NANDBOOT             0x0FE0

#define BI2_OFFSET_ARGS                 BI2_SIZE

#ifdef __cplusplus
}
#endif

#endif // PRIVATE_OS_BOOT_INFO_2_H
