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
    u32 hdrSize;        // 0x00 (Always 32)

    u8  wadType[2];     // 0x04
    u16 wadVersion;     // 0x06

    u32 certSize;       // 0x08
    u32 crlSize;        // 0x0C

    u32 ticketSize;     // 0x10
    u32 tmdSize;        // 0x14
    u32 contentSize;    // 0x18
    u32 metaSize;       // 0x20
} WADHeader;

typedef struct WADBackupHeader {
    u32             hdrSize;        // 0x00 (Always 112)

    u8              wadType[2];     // 0x04
    u16             wadVersion;     // 0x06

    ESDeviceId      deviceId;       // 0x08

    u32             numFiles;       // 0x0C
    u32             fileSize;       // 0x10

    u32             tmdSize;        // 0x14
    u32             contentSize;    // 0x18
    u32             backupAreaLen;  // 0x1C

    ESContentMask   cidx;           // 0x20

    ESTitleId       titleId;        // 0x60

    u8              deviceMac[6];   // 0x68
} WADBackupHeader;

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_WAD_H
