#ifndef REVOLUTION_WAD_H
#define REVOLUTION_WAD_H

#include <revolution/types.h>
#include <private/es/types.h>

#ifdef __cplusplus
extern "C" {
#endif

#define WAD_IMPORT_TYPE_BOOT        "ib"    /* "import boot" */
#define WAD_IMPORT_TYPE_SOFTWARE    "Is"    /* "Import software" */
#define WAD_IMPORT_TYPE_BACKUP      "Bk"    /* "Backup"*/

typedef struct WADHeader {
    u32 headerSize; // 0x00 (Always 32)

    u8  wadType[2]; // 0x04
    u16 wadVersion; // 0x06

    u32 certSize;   // 0x08
    u32 reserved;   // 0x0C

    u32 tikLen;     // 0x10
    u32 tmdLen;     // 0x14
    u32 contentLen; // 0x18
    u32 metaLen;    // 0x20
} WADHeader;

typedef struct WADBackupHeader {
    u32             headerSize;     // 0x00 (Always 112)

    u8              wadType[2];     // 0x04
    u16             wadVersion;     // 0x06

    ESDeviceId      deviceId;       // 0x08

    u32             saveCount;      // 0x0C
    u32             saveLength;     // 0x10

    u32             tmdLen;         // 0x14
    u32             contentLen;     // 0x18
    u32             backupAreaLen;  // 0x1C

    ESContentMask   cidxMask;       // 0x20

    ESTitleId       titleId;        // 0x60

    u8              deviceMac[6];   // 0x68
} WADBackupHeader;

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_WAD_H
