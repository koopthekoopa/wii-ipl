#ifndef REVOLUTION_WAD_H
#define REVOLUTION_WAD_H

#include <revolution/types.h>

#include <revolution/mem/allocator.h>

#include <private/es/types.h>

#ifdef __cplusplus
extern "C" {
#endif

#define WAD_IMPORT_TYPE_BOOT "ib"     /* "import boot" */
#define WAD_IMPORT_TYPE_SOFTWARE "Is" /* "Import software" */
#define WAD_IMPORT_TYPE_BACKUP "Bk"   /* "Backup"*/

enum {
    WAD_ERROR_OK = 0,
    WAD_ERROR_NOCOPY = -3002,           /*?*/
    WAD_ERROR_INCORRECT_DEVICE = -3008, /*?*/
};

typedef struct WADHeader {
    u32 hdrSize;  // 0x00 (Always 32)

    u8 wadType[2];   // 0x04
    u16 wadVersion;  // 0x06

    u32 certSize;  // 0x08
    u32 crlSize;   // 0x0C

    u32 ticketSize;   // 0x10
    u32 tmdSize;      // 0x14
    u32 contentSize;  // 0x18
    u32 metaSize;     // 0x20
} WADHeader;

typedef struct WADBackupHeader {
    u32 hdrSize;  // 0x00 (Always 112)

    u8 wadType[2];   // 0x04
    u16 wadVersion;  // 0x06

    ESDeviceId deviceId;  // 0x08

    u32 numFiles;  // 0x0C
    u32 fileSize;  // 0x10

    u32 tmdSize;        // 0x14
    u32 contentSize;    // 0x18
    u32 backupAreaLen;  // 0x1C

    ESContentMask cidx;  // 0x20

    ESTitleId titleId;  // 0x60

    u8 deviceMac[6];  // 0x68
} WADBackupHeader;

typedef enum {
    WAD_LOCATION_DVD = 1,
    WAD_LOCATION_NAND,
    WAD_LOCATION_SD_CARD,
    WAD_LOCATION_CNT_DVD,
    WAD_LOCATION_CNT_NAND,
} WADLocation;

typedef struct {
    u16 unkBlocks;      // 0x00
    u16 unkInodes;      // 0x02
    u16 privateBlocks;  // 0x04
    u16 privateInodes;  // 0x06
    u16 sharedBlocks;   // 0x08
    u16 sharedInodes;   // 0x0A
    u16 fileBlocks;     // 0x0C
    u16 fileInodes;     // 0x0E
} WADBlocks;

typedef void (*WADProcessCallback)(u32 completed, u32 total, BOOL done);

s32 WADGetTitleVersionEx(char* path, ESTitleId* titleId, u16* titleVersion, WADLocation location, u32 offset);
s32 WADBackupEx(u64 titleId, u32 param_2, MEMAllocator* allocator, char* path, u32* sizeOut, WADLocation location, u32 param_7,
                WADProcessCallback processCB);

s32 WADImportGetBlocks(char* path, MEMAllocator* allocator, WADLocation location, u32 offset, u32 param_5, WADBlocks* blocks, u32* param_7);
s32 WADImportEx(char* path, MEMAllocator* allocator, WADLocation location, u32 param_4, u32 param_5, WADProcessCallback processCB);

s32 WADGetInstalledVersion(ESTitleId titleID, u16* version);

#ifdef __cplusplus
}
#endif

#endif  // REVOLUTION_WAD_H
