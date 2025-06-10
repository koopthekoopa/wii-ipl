#ifndef REVOLUTION_CARD_H
#define REVOLUTION_CARD_H

#include <revolution/types.h>

#include <revolution/dvd.h>
#include <revolution/dsp.h>

#ifdef __cplusplus
extern "C" {
#endif

#define CARD_CHAN_0     0
#define CARD_CHAN_1     1
#define CARD_CHAN_MAX   2

#define CARD_ATTR_PUBLIC    0x04
#define CARD_ATTR_NO_COPY   0x08
#define CARD_ATTR_NO_MOVE   0x10
#define CARD_ATTR_GLOBAL    0x20
#define CARD_ATTR_COMPANY   0x40

#define CARD_FAT_AVAIL          0x0000
#define CARD_FAT_CHECKSUM       0x0000
#define CARD_FAT_CHECKSUMINV    0x0001
#define CARD_FAT_CHECKCODE      0x0002
#define CARD_FAT_FREEBLOCKS     0x0003
#define CARD_FAT_LASTSLOT       0x0004

#define CARD_WORKAREA_SIZE (5 * 8 * 1024)

#define CARD_SEG_SIZE   0x200
#define CARD_PAGE_SIZE  0x80
#define CARD_MAX_SIZE   0x01000000

#define CARD_NUM_SYSTEM_BLOCK   5
#define CARD_SYSTEM_BLOCK_SIZE  (8 * 1024)

#define CARD_MAX_MOUNT_STEP (CARD_NUM_SYSTEM_BLOCK + 2)

#define CARD_STAT_SPEED_END     0
#define CARD_STAT_SPEED_FAST    1
#define CARD_STAT_SPEED_MIDDLE  2
#define CARD_STAT_SPEED_SLOW    3
#define CARD_STAT_SPEED_MASK    3

#define CARD_RESULT_UNLOCKED       1
#define CARD_RESULT_READY          0
#define CARD_RESULT_BUSY          -1
#define CARD_RESULT_WRONGDEVICE   -2
#define CARD_RESULT_NOCARD        -3
#define CARD_RESULT_NOFILE        -4
#define CARD_RESULT_IOERROR       -5
#define CARD_RESULT_BROKEN        -6
#define CARD_RESULT_EXIST         -7
#define CARD_RESULT_NOENT         -8
#define CARD_RESULT_INSSPACE      -9
#define CARD_RESULT_NOPERM       -10
#define CARD_RESULT_LIMIT        -11
#define CARD_RESULT_NAMETOOLONG  -12
#define CARD_RESULT_ENCODING     -13
#define CARD_RESULT_CANCELED     -14
#define CARD_RESULT_FATAL_ERROR -128

#define CARD_READ_SIZE      512
#define CARD_COMMENT_SIZE   64

#define CARD_ICON_WIDTH     32
#define CARD_ICON_HEIGHT    32

#define CARD_BANNER_WIDTH   96
#define CARD_BANNER_HEIGHT  32

#define CARD_STAT_ICON_NONE     0
#define CARD_STAT_ICON_C8       1
#define CARD_STAT_ICON_RGB5A3   2
#define CARD_STAT_ICON_MASK     3

#define CARD_STAT_BANNER_NONE   0
#define CARD_STAT_BANNER_C8     1
#define CARD_STAT_BANNER_RGB5A3 2
#define CARD_STAT_BANNER_MASK   3

#define CARD_ENCODE_ANSI    0
#define CARD_ENCODE_SJIS    1

#define CARD_FILENAME_MAX   32
#define CARD_MAX_FILE       127
#define CARD_ICON_MAX       8

typedef void (*CARDCallback)(s32 chan, s32 result);

typedef struct CARDFileInfo {
    s32 chan;   // 0x00
    s32 fileNo; // 0x04

    s32 offset; // 0x08
    s32 length; // 0x0C

    u16 iBlock; // 0x10
} CARDFileInfo;

typedef struct CARDDir {
    u8  gameName[4];                    // 0x00
    u8  company[2];                     // 0x04
    u8  _padding0;                      // 0x06

    u8  bannerFormat;                   // 0x07

    u8  fileName[CARD_FILENAME_MAX];    // 0x08
    u32 time;                           // 0x28

    u32 iconAddr;                       // 0x2C
    u16 iconFormat;                     // 0x30
    u16 iconSpeed;                      // 0x32

    u8  permission;                     // 0x34
    u8  copyTimes;                      // 0x35

    u16 startBlock;                     // 0x36
    u16 length;                         // 0x38

    u8  _padding1[2];                   // 0x3C

    u32 commentAddr;                    // 0x3E
} CARDDir;

typedef struct CARDControl {
    BOOL                attached;       // 0x00
    s32                 result;         // 0x04

    u16                 size;           // 0x08
    u16                 pageSize;       // 0x0A
    s32                 sectorSize;     // 0x0C
    u16                 cBlock;         // 0x10

    u16                 vendorID;       // 0x12
    s32                 latency;        // 0x14
    u8                  id[12];         // 0x18

    int                 mountStep;      // 0x24
    int                 formatStep;     // 0x28

    u32                 scramble;       // 0x28

    DSPTaskInfo         task;           // 0x2C

    void*               workArea;       // 0x80

    CARDDir*            currentDir;     // 0x84
    u16*                currentFat;     // 0x88

    OSThreadQueue       threadQueue;    // 0x8C

    u8                  cmd[9];         // 0x94
    s32                 cmdlen;         // 0xA0

    u32                 mode;           // 0xA4
    int                 retry;          // 0xA8
    int                 repeat;         // 0xAC

    u32                 addr;           // 0xB0
    void*               buffer;         // 0xB4
    s32                 xferred;        // 0xB8
    u16                 freeNo;         // 0xBC
    u16                 startBlock;     // 0xBE

    CARDFileInfo*       fileInfo;       // 0xC0

    CARDCallback        extCallback;    // 0xC4
    CARDCallback        txCallback;     // 0xC8
    CARDCallback        exiCallback;    // 0xCC
    CARDCallback        apiCallback;    // 0xD0
    CARDCallback        xferCallback;   // 0xD4
    CARDCallback        eraseCallback;  // 0xD8
    CARDCallback        unlockCallback; // 0xDC

    OSAlarm             alarm;          // 0xE0
    u32                 cid;            // 0x108
    const DVDDiskID*    diskID;         // 0x10C
} CARDControl;

typedef struct CARDDecParam {
    u8* inputAddr;      // 0x00
    u32 inputLength;    // 0x04

    u32 aramAddr;       // 0x08

    u8* outputAddr;     // 0x0C
} CARDDecParam;

typedef struct CARDID {
    u8  serial[32];     // 0x00
    u16 deviceID;       // 0x20

    u16 size;           // 0x22
    u16 encode;         // 0x24

    u8  padding[470];   // 0x26

    u16 checkSum;       // 0x1FC
    u16 checkSumInv;    // 0x1FE
} CARDID;

typedef struct CARDDirCheck {
    u8  padding0[56];   // 0x00
    u16 padding1;       // 0x38

    s16 checkCode;      // 0x3A

    u16 checkSum;       // 0x3C
    u16 checkSumInv;    // 0x3E
} CARDDirCheck;

typedef struct CARDStat {
    char    fileName[CARD_FILENAME_MAX];    // 0x00
    u32     length;                         // 0x20
    u32     time;                           // 0x24

    u8      gameName[4];                    // 0x28
    u8      company[2];                     // 0x2C

    u8      bannerFormat;                   // 0x2E

    u32     iconAddr;                       // 0x30
    u16     iconFormat;                     // 0x34
    u16     iconSpeed;                      // 0x36

    u32     commentAddr;                    // 0x38

    u32     offsetBanner;                   // 0x3C
    u32     offsetBannerTlut;               // 0x40
    u32     offsetIcon[CARD_ICON_MAX];      // 0x44
    u32     offsetIconTlut;                 // 0x64
    u32     offsetData;                     // 0x68
} CARDStat;

#define CARDGetFileNo(fileInfo)             ((fileInfo)->fileNo)

#define CARDIsValidBlockNo(card, blockNo)   ((blockNo) >= CARD_NUM_SYSTEM_BLOCK && (blockNo) < (card)->cBlock)

#define CARDGetDirCheck(dir)                ((CARDDirCheck*)&(dir)[CARD_MAX_FILE])

#define CARDGetBannerFormat(stat)           (((stat)->bannerFormat) & CARD_STAT_BANNER_MASK)
#define CARDSetBannerFormat(stat, f)        ((stat)->bannerFormat = (u8)(((stat)->bannerFormat & ~CARD_STAT_BANNER_MASK) | (f)))

#define CARDGetIconAnim(stat)               (((stat)->bannerFormat) & CARD_STAT_ANIM_MASK)
#define CARDGetIconFormat(stat, n)          (((stat)->iconFormat >> (2 * (n))) & CARD_STAT_ICON_MASK)
#define CARDGetIconSpeed(stat, n)           (((stat)->iconSpeed >> (2 * (n))) & CARD_STAT_SPEED_MASK)
#define CARDSetIconAnim(stat, f)            ((stat)->bannerFormat = (u8)(((stat)->bannerFormat & ~CARD_STAT_ANIM_MASK) | (f)))
#define CARDSetIconFormat(stat, n, f)       ((stat)->iconFormat = (u16)(((stat)->iconFormat & ~(CARD_STAT_ICON_MASK << (2 * (n)))) | ((f) << (2 * (n)))))
#define CARDSetIconSpeed(stat, n, f)        ((stat)->iconSpeed = (u16)(((stat)->iconSpeed & ~(CARD_STAT_SPEED_MASK << (2 * (n)))) | ((f) << (2 * (n)))))
#define CARDSetIconAddress(stat, addr)      ((stat)->iconAddr = (u32)(addr))

#define CARDSetCommentAddress(stat, addr)   ((stat)->commentAddr = (u32)(addr))

#define CARDFreq    4 /* EXI_FREQ_16M */

void    CARDInit();
s32     CARDGetResultCode(s32 chan);
s32     CARDFreeBlocks(s32 chan, s32* byteNotUsed, s32* filesNotUsed);
s32     CARDGetMemSize(s32 chan, u16* size);
s32     CARDGetSectorSize(s32 chan, u32* size);
BOOL    CARDGetFastMode();

s32     CARDCheckExAsync(s32 chan, s32* xferBytes, CARDCallback callback);
s32     CARDCheckAsync(s32 chan, CARDCallback callback);
s32     CARDCheckEx(s32 chan, s32* xferBytes);
s32     CARDCheck(s32 chan);

s32     CARDCreateAsync(s32 chan, const char* fileName, u32 size, CARDFileInfo* fileInfo, CARDCallback callback);
s32     CARDCreate(s32 chan, const char* fileName, u32 size, CARDFileInfo* fileInfo);

s32     CARDFastDeleteAsync(s32 chan, s32 fileNo, CARDCallback callback);
s32     CARDFastDelete(s32 chan, s32 fileNo);
s32     CARDDeleteAsync(s32 chan, const char* fileName, CARDCallback callback);
s32     CARDDelete(s32 chan, const char* fileName);

s32     CARDFormat(s32 chan);

int     CARDProbe(s32 chan);
s32     CARDMountAsync(s32 chan, void* workArea, CARDCallback detachCallback, CARDCallback attachCallback);
s32     CARDMount(s32 chan, void* workArea, CARDCallback detachCallback);
s32     CARDUnmount(s32 chan);

s32     CARDFastOpen(s32 chan, s32 fileNo, CARDFileInfo* fileInfo);
s32     CARDOpen(s32 chan, const char* fileName, CARDFileInfo* fileInfo);
s32     CARDClose(CARDFileInfo* fileInfo);

s32     CARDGetXferredBytes(s32 chan);

s32     CARDReadAsync(CARDFileInfo* fileInfo, void* buf, s32 length, s32 offset, CARDCallback callback);
s32     CARDRead(CARDFileInfo*  fileInfo, void*  buf, s32 length, s32 offset);
s32     CARDCancel(CARDFileInfo* fileInfo);

s32     CARDWriteAsync(CARDFileInfo* fileInfo, void* buf, s32 length, s32 offset, CARDCallback callback);
s32     CARDWrite(CARDFileInfo* fileInfo, void* buf, s32 length, s32 offset);

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_CARD_H
