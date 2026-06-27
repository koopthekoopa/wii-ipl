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
    WAD_LOC_DVD = 0x1,          // 0x1
    WAD_LOC_NANDPRIVATE = 0x2,  // 0x2
    WAD_LOC_SD_CARD = 0x3,      // 0x3
    WAD_LOC_DVDCONTENT = 0x4,   // 0x4
    WAD_LOC_NANDCONTENT = 0x5,  // 0x5
} WADLocation;
typedef struct {
    u16 unkBlocks;      // 0x0
    u16 unkInodes;      // 0x2
    u16 privateBlocks;  // 0x4
    u16 privateInodes;  // 0x6
    u16 sharedBlocks;   // 0x8
    u16 sharedInodes;   // 0xa
    u16 fileBlocks;     // 0xc
    u16 fileInodes;     // 0xe
} WADBlocks;

typedef void (*WADProgressCb)(u32 completed, u32 total, BOOL done);

int WADGetTitleVersionEx(char* path, u64* titleIdOut, u16* titleVersionOut, WADLocation location, u32 offset);
int WADBackupEx(u64 titleId, u32 param_2, MEMAllocator* allocator, char* path, u32* sizeOut, WADLocation location, u32 param_7,
                WADProgressCb progressCb);

int WADImportGetBlocks(char* path, MEMAllocator* allocator, WADLocation location, u32 offset, u32 param_5, WADBlocks* blocksOut, u32* param_7);
int WADImportEx(char* path, MEMAllocator* allocator, WADLocation location, u32 param_4, u32 param_5, WADProgressCb progressCb);

#ifdef __cplusplus
}
#endif

#endif  // REVOLUTION_WAD_H
