#ifndef REVOLUTION_CNT_H
#define REVOLUTION_CNT_H

#include <revolution/dvd.h>
#include <revolution/arc.h>
#include <revolution/mem.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef struct CNTHandleNAND {
    ARCHandle       ArcHandle;          // 0x00
    s32             FileDescriptor;     // 0x1C
    MEMAllocator*   allocator;          // 0x20
} CNTHandleNAND;

typedef struct CNTFileInfoNAND {
    CNTHandleNAND*  CntHandle;      // 0x00
    u32             startOffset;    // 0x04
    u32             length;         // 0x08
    s32             readOffset;     // 0x0C
} CNTFileInfoNAND;

typedef struct CNTHandleDVD {
    u32 index;          // 0x00
    s32 rootDir;        // 0x04
    s32 currDir;        // 0x08
    u8  reserved[24];   // 0x0C
} CNTHandleDVD;

typedef struct CNTFileInfoDVD {
    DVDFileInfo fileInfo;   // 0x00
    s32         readOffset; // 0x3C
} CNTFileInfoDVD;

typedef s32 CNTError;

/* NAND */
CNTError    contentInitHandleNAND(u32 contentId, CNTHandleNAND* cntHandle, MEMAllocator* allocator);
CNTError    contentConvertPathToEntrynumNAND(CNTHandleNAND* cntHandle, const char* path);
CNTError    contentOpenNAND(CNTHandleNAND* cntHandle, const char* path, CNTFileInfoNAND* cntFileInfo);
CNTError    contentFastOpenNAND(CNTHandleNAND* cntHandle, s32 entryNum, CNTFileInfoNAND* cntFileInfo);
BOOL        contentOpenDirNAND(CNTHandleNAND* cntFileInfo, const char* path, ARCDir* dir);
CNTError    contentReadNAND(CNTFileInfoNAND* cntFileInfo, void* buffer, u32 length, s32 offset);
s32         contentGetLengthNAND(CNTFileInfoNAND* cntFileInfo);
CNTError    contentSeekNAND(CNTFileInfoNAND* cntFileInfo, s32 offset, u32 whence);
CNTError    contentCloseNAND(CNTFileInfoNAND* cntFileInfo);
CNTError    contentReleaseHandleNAND(CNTHandleNAND* cntFileInfo);

/* DVD */
s32         contentOpenDVD(CNTHandleDVD* cntHandle, const char* path, CNTFileInfoDVD* cntFileInfo);
CNTError    contentReadDVD(CNTFileInfoDVD* cntFileInfo, void* buffer, u32 length, s32 offset);
CNTError    contentSeekDVD(CNTFileInfoDVD* cntFileInfo, s32 offset, u32 whence);
CNTError    contentCloseDVD(CNTFileInfoDVD* cntFileInfo);

enum {
    CNT_RESULT_OK               =  0,
    CNT_RESULT_MAXFD            = -5000,
    CNT_RESULT_ALLOC_FAILED     = -5001,
    CNT_RESULT_READ_ERR         = -5003,
    CNT_RESULT_CLOSE_ERR        = -5005,
    CNT_RESULT_MEMORY_ERROR     = -5008,
    CNT_RESULT_INVALID          = -5009,
    CNT_RESULT_ACCESS           = -5010,
    CNT_RESULT_CORRUPT          = -5011,
    CNT_RESULT_ECC_CRIT         = -5012,
    CNT_RESULT_AUTHENTICATION   = -5013,
    CNT_RESULT_UNKNOWN          = -5063,

    CNT_RESULT_SHUTDOWN         = -5127
};

enum {
    CNT_SEEK_BEG = 0,
    CNT_SEEK_CUR,
    CNT_SEEK_END
};

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_DSP_H
