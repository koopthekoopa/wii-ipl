#ifndef REVOLUTION_FA_TYPES_H
#define REVOLUTION_FA_TYPES_H

#include <revolution/types.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef s32     FAError;

/* From VF ErrInfoTbl */
enum {
    FA_ERR_SUCCESS      = 0,        // Success
    FA_ERR_EPERM        = 1,        // "Operation is not possible"
    FA_ERR_ENOENT       = 2,        // "No such file or directory"
    FA_ERR_EIO          = 5,        // "I/O Error(Driver Error)"
    FA_ERR_ENOEXEC      = 8,        // "Not Executable by internal"
    FA_ERR_EBADF        = 9,        // "Bad file descripto"
    FA_ERR_ENOMEM       = 12,       // "Not enough system memory"
    FA_ERR_EACCES       = 13,       // "Permission denied"
    FA_ERR_EBUSY        = 16,       // "Can not use system resouces"
    FA_ERR_EEXIST       = 17,       // "File already exists"
    FA_ERR_EISDIR       = 21,       // "find directory when file req"
    FA_ERR_EINVAL       = 22,       // "Invalid argument"
    FA_ERR_ENFILE       = 23,       // "Too many open files(system)"
    FA_ERR_EMFILE       = 24,       // "Too many open files(user)"
    FA_ERR_EFBIG        = 27,       // "Over file size limit(4GB-1)"
    FA_ERR_ENOSPC       = 28,       // "Device out of space"
    FA_ERR_ENOLCK       = 46,       // "Can not lock the file"
    FA_ERR_ENOSYS       = 88,       // "Not implement function"
    FA_ERR_ENOTEMPTY    = 90,       // "Directory is not empty"

    FA_ERR_EWRTPROTECT  = 201,      // Is Write Protected

    FA_ERR_SYSTEM       = -1        // "system error(general error)"
};

enum {
    FA_SEEK_ORIGIN_BEGIN = 0,
    FA_SEEK_ORIGIN_CURRENT,
    FA_SEEK_ORIGIN_END,
};

enum {
    FA_DEVICE_SD = 0,
    FA_DEVICE_USB,
    FA_DEVICE_NAND,
};

enum {
    FA_STATUS_INSERTED = (1 << 4),
};

enum {
    FA_FLAG_FILENAME_CHECK = (1 << 17),
};

#define FA_INSERTED(driveTable) (driveTable.stat & FA_STATUS_INSERTED)

typedef void        FAFILE;
typedef void        FADIR;
typedef void        FAVOLUME;

typedef struct      FADisk       FADisk;
typedef struct      FADiskInfo   FADiskInfo;
typedef struct      FAPartition  FAPartition;

typedef u8          FASector[512];
typedef FASector    FACacheBuf;

typedef void        (*FAInsertCallback)(s8);
typedef void        (*FAEjectCallback)(s8);

typedef FAError     (*FAInitDiskFunc)(FADisk*);
typedef FAError     (*FAFinalizeDiskFunc)(FADisk*);
typedef FAError     (*FAMountDiskFunc)(FADisk*);
typedef FAError     (*FAUnmountDiskFunc)(FADisk*);
typedef FAError     (*FAFormatDiskFunc)(FADisk*, u8*);
typedef FAError     (*FAReadDiskFunc)(FADisk*, u8*, u32, u32, u32*);
typedef FAError     (*FAWriteDiskFunc)(FADisk*, u8*, u32, u32, u32*);
typedef FAError     (*FAGetDiskInfoFunc)(FADisk*, FADiskInfo*);

typedef void        (*FAInsertPartition)(FAPartition*);
typedef void        (*FAEjectPartition)(FAPartition*);

typedef struct FACachePage FACachePage;
struct FACachePage {
    u16             stat;       // 0x00
    u16             option;     // 0x02
    u8*             buffer;     // 0x04

    u8*             pBuf;       // 0x08
    u8*             pModSbuf;   // 0x0C
    u8*             pModEbuf;   // 0x10

    u32             size;       // 0x14
    u32             sector;     // 0x18
    void*           signature;  // 0x1C

    FACachePage*    pNext;      // 0x20
    FACachePage*    pPrev;      // 0x24
};

typedef struct FACacheSetting {
    FACachePage*    pages;          // 0x00
    FACacheBuf*     buffers;        // 0x04

    u16             numFatPages;    // 0x08
    u16             numDataPages;   // 0x0A

    u32             numFatBufSize;  // 0x0C
    u32             numDataBufSize; // 0x10
} FACacheSetting;

typedef struct FADevInf {
    u32 cls;    // 0x00
    u32 ecl;    // 0x04
    u32 bps;    // 0x08
    u32 spc;    // 0x0C
} FADevInf;

typedef struct FAFuncTbl {
    FAInitDiskFunc      init;           // 0x00
    FAFinalizeDiskFunc  finalize;       // 0x04

    FAMountDiskFunc     mount;          // 0x08
    FAUnmountDiskFunc   unmount;        // 0x0C

    FAFormatDiskFunc    format;         // 0x10

    FAReadDiskFunc      physicalRead;   // 0x14
    FAWriteDiskFunc     physicalWrite;  // 0x18

    FAGetDiskInfoFunc   getDiskInfo;    // 0x1C
} FAFuncTbl;

typedef struct FAPartFunc {
    FAInsertCallback    insert; // 0x00
    FAEjectCallback     eject;  // 0x04
} FAPartFunc;

struct FAPartition {
    u32         status;             // 0x00
    FADisk*     pDisk;              // 0x04
    u32         partId;             // 0x08

    u32         startSector;        // 0x0C
    u32         totalSector;        // 0x10

    s32         driverLastError;    // 0x14

    int         partSemId;          // 0x18

    FAVOLUME*   pVol;               // 0x1C

    FAPartFunc  func;               // 0x20
};

typedef struct FADiskTbl {
    FAFuncTbl*  pFunc;  // 0x00
    u32         uiExt;  // 0x04
} FADiskTbl;

struct FADiskInfo {
    u32     totalSectors;       // 0x00
    u16     cylinders;          // 0x04

    u8      heads;              // 0x06

    u8      sectorsPerTrack;    // 0x07
    u16     bytesPerSector;     // 0x08

    u32     mediaAttr;          // 0x0C

    void*   formatParam;        // 0x10
};

struct FADisk {
    u32             status;         // 0x00

    FADiskTbl       diskTbl;        // 0x04

    u16             attachPartCnt;  // 0x0C
    u16             mountPartCnt;   // 0x0E

    int             diskSemId;      // 0x10
    int             drvSemId;       // 0x14

    FADiskInfo      diskInfo;       // 0x18
    FAPartition*    pCurPart;       // 0x2C
};

typedef struct FADrvTbl {
    FAPartition*    pPart;  // 0x00
    FACacheSetting* pCache; // 0x04

    s8              drive;  // 0x08
    u8              stat;   // 0x09
} FADrvTbl;

typedef struct FAFileInfo {
    u8  unknown[32];
} FAFileInfo;

/* Unsure; These were copied from VF */
typedef struct FADta {
    FAFILE*     file;               // 0x00
    FADIR*      dir;                // 0x04
    FAVOLUME*   vol;                // 0x08

    u32         parentStartCluster; // 0x0C
    u32         parentPos;          // 0x10

    u32         status;             // 0x14
    u8          numEntryLFNs;       // 0x18
    u8          ordinal;            // 0x19
    u8          check_sum;          // 0x1A
    u8          attr;               // 0x1B
    char        regExp[520];        // 0x1C

    u16         time;               // 0x224
    u16         date;               // 0x226
    u32         fileSize;           // 0x228
    u8          attribute;          // 0x22C
    char        fileName[13];       // 0x22D
    char        longName[520];      // 0x23A
    s8          pad[2];             // 0x442
} FADta;

/* Unsure; These were copied from VF */
typedef struct FAFileStat {
    u32 size;       // 0x00

    u32 accessDate; // 0x04

    u32 updateTime; // 0x06
    u32 updateDate; // 0x08

    u32 createTime; // 0x0A
    u32 createDate; // 0x0C

    u32 compSec;    // 0x0E

    u8  stat;       // 0x10
} FAFileStat;

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_FA_TYPES_H
