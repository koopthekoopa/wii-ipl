#ifndef REVOLUTION_FA_TYPES_H
#define REVOLUTION_FA_TYPES_H

#include <revolution/types.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef void*   FAFILE;

/** CACHE **/

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
    u8*             buffers[512];   // 0x04

    u16             numFatPages;    // 0x08
    u16             numDataPages;   // 0x0A

    u32             numFatBufSize;  // 0x0C
    u32             numDataBufSize; // 0x0E
} FACacheSetting;

/** DEVICE **/

typedef struct FADevInf {
    u32 cls;    // 0x00
    u32 ecl;    // 0x04
    u32 bps;    // 0x08
    u32 spc;    // 0x0C
} FADevInf;

/** DISK **/

typedef struct FADisk FADisk;
typedef struct FADiskInfo FADiskInfo;

typedef struct FAFuncTbl {
    s32 (*init)(FADisk*);                               // 0x00
    s32 (*finalize)(FADisk*);                           // 0x04

    s32 (*mount)(FADisk*);                              // 0x08
    s32 (*unmount)(FADisk*);                            // 0x0C

    s32 (*format)(FADisk*, u8*);                        // 0x10

    s32 (*physicalRead)(FADisk*, u8*, u32, u32, u32*);  // 0x14
    s32 (*physicalWrite)(FADisk*, u8*, u32, u32, u32*); // 0x18

    s32 (*getDiskInfo)(FADisk*, FADiskInfo*);           // 0x1C
} FAFuncTbl;

typedef struct FAPartition FAPartition;
typedef struct FAPartFunc {
    void    (*insert)(FAPartition*);    // 0x00
    void    (*eject)(FAPartition*);     // 0x04
} FAPartFunc;

struct FAPartition {
    u32         status;             // 0x00
    FADisk*     pDisk;              // 0x04
    u32         partId;             // 0x08

    u32         startSector;        // 0x0C
    u32         totalSector;        // 0x10

    s32         driverLastError;    // 0x14

    int         partSemId;          // 0x18

    void*       pVol;               // 0x1C

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

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_FA_TYPES_H
