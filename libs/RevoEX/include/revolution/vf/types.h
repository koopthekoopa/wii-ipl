#ifndef REVOLUTION_VF_TYPES_H
#define REVOLUTION_VF_TYPES_H

#include <revolution/types.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef s32     VFError;

/* From ErrInfoTbl */
enum {
    VF_ERR_SUCCESS                      = 0,        // Success
    VF_ERR_EPERM                        = 1,        // "Operation is not possible"
    VF_ERR_ENOENT                       = 2,        // "No such file or directory"
    VF_ERR_EIO                          = 5,        // "I/O Error(Driver Error)"
    VF_ERR_ENOEXEC                      = 8,        // "Not Executable by internal"
    VF_ERR_EBADF                        = 9,        // "Bad file descripto"
    VF_ERR_ENOMEM                       = 12,       // "Not enough system memory"
    VF_ERR_EACCES                       = 13,       // "Permission denied"
    VF_ERR_EBUSY                        = 16,       // "Can not use system resouces"
    VF_ERR_EEXIST                       = 17,       // "File already exists"
    VF_ERR_EISDIR                       = 21,       // "find directory when file req"
    VF_ERR_EINVAL                       = 22,       // "Invalid argument"
    VF_ERR_ENFILE                       = 23,       // "Too many open files(system)"
    VF_ERR_EMFILE                       = 24,       // "Too many open files(user)"
    VF_ERR_EFBIG                        = 27,       // "Over file size limit(4GB-1)"
    VF_ERR_ENOSPC                       = 28,       // "Device out of space"
    VF_ERR_ENOLCK                       = 46,       // "Can not lock the file"
    VF_ERR_ENOSYS                       = 88,       // "Not implement function"
    VF_ERR_ENOTEMPTY                    = 90,       // "Directory is not empty"

    VF_ERR_NOT_EXIST_FILE               = 0xB001,
    VF_ERR_CANNOT_ALLOC_DRV             = 0xB002,
    VF_ERR_NOT_ALLOCATED_DRV            = 0xB003,
    VF_ERR_ALREADY_ATTACHED_DRV_NAME    = 0xB004,
    VF_ERR_ALREADY_MOUNTED_DRV_NAME     = 0xB005,
    VF_ERR_VFF_FILE_FORMAT              = 0xB006,

    VF_ERR_SYSTEM                       = -1        // "system error(general error)"
};

enum {
    VF_SEEK_ORIGIN_BEGIN = 0,
    VF_SEEK_ORIGIN_CURRENT,
    VF_SEEK_ORIGIN_END,
};

enum {
    VF_IS_NOT_AVAILABLE = 0,
    VF_IS_AVAILABLE,
};

enum {
    VF_SD_SLOT_0 = 0,
    VF_SD_SLOT_1, /* hehehehe */
};

typedef void    VFFILE;
typedef void    VFDIR;
typedef void    VFVOLUME;

typedef void (*VFEventCallback)(u32);

enum {
    VF_EVENT_NONE = 0,
    VF_EVENT_INSERTED,
    VF_EVENT_EJECTED
};

typedef struct VFDta {
    VFFILE*     file;               // 0x00
    VFDIR*      dir;                // 0x04
    VFVOLUME*   vol;                // 0x08

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
} VFDta;

typedef struct VFFileStat {
    u32 size;       // 0x00

    u32 accessDate; // 0x04

    u32 updateTime; // 0x06
    u32 updateDate; // 0x08

    u32 createTime; // 0x0A
    u32 createDate; // 0x0C

    u32 compSec;    // 0x0E

    u8  stat;       // 0x10
} VFFileStat;

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_VF_TYPES_H
