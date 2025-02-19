#ifndef REVOLUTION_NAND_H
#define REVOLUTION_NAND_H

#include <revolution/types.h>

#ifdef __cplusplus
extern "C" {
#endif

#define NAND_MAX_PATH   64

#define NANDTitleIdLo(t)   (u32)(((u64)(t)) & 0xFFFFFFFF)
#define NANDTitleIdHi(t)   (u32)((((u64)(t)) >> 32) & 0xFFFFFFFF)

enum {
    NAND_RESULT_FATAL_ERROR = -128,
    NAND_RESULT_UNKNOWN = -64,

    NAND_RESULT_MAXDEPTH = -16,
    NAND_RESULT_AUTHENTICATION,
    NAND_RESULT_OPENFD,
    NAND_RESULT_NOTEMPTY,
    NAND_RESULT_NOEXISTS,
    NAND_RESULT_MAXFILES,
    NAND_RESULT_MAXFD,
    NAND_RESULT_MAXBLOCKS,
    NAND_RESULT_INVALID,
    NAND_RESULT_INIT_FAIL,
    NAND_RESULT_EXISTS,
    NAND_RESULT_ECC_CRIT,
    NAND_RESULT_CORRUPT,
    NAND_RESULT_BUSY,
    NAND_RESULT_ALLOC_FAILED,
    NAND_RESULT_ACCESS,

    NAND_RESULT_OK,
};

enum {
    NAND_SEEK_BEG = 0,
    NAND_SEEK_CUR,
    NAND_SEEK_END,
};

enum {
    NAND_ACCESS_NONE = 0,
    NAND_ACCESS_READ,
    NAND_ACCESS_WRITE,
    NAND_ACCESS_RW
};

#define USER_MASK   4
#define GROUP_MASK  2
#define BOTH_MASK   0

enum {
    NAND_PERM_USER_READ     = (NAND_ACCESS_READ << USER_MASK),
    NAND_PERM_USER_WRITE    = (NAND_ACCESS_WRITE << USER_MASK),
    NAND_PERM_USER          =  NAND_PERM_USER_READ | NAND_PERM_USER_WRITE,

    NAND_PERM_GROUP_READ    = (NAND_ACCESS_READ << GROUP_MASK),
    NAND_PERM_GROUP_WRITE   = (NAND_ACCESS_WRITE << GROUP_MASK),
    NAND_PERM_GROUP         =  NAND_PERM_GROUP_READ | NAND_PERM_GROUP_WRITE,

    NAND_PERM_BOTH_READ     = (NAND_ACCESS_READ << BOTH_MASK),
    NAND_PERM_BOTH_WRITE    = (NAND_ACCESS_WRITE << BOTH_MASK),
    NAND_PERM_BOTH          = NAND_PERM_BOTH_READ | NAND_PERM_BOTH_WRITE,

    NAND_PERM_ALL_READ      = NAND_PERM_USER_READ | NAND_PERM_GROUP_READ | NAND_PERM_BOTH_READ,
    NAND_PERM_ALL_WRITE     = NAND_PERM_USER_WRITE | NAND_PERM_GROUP_WRITE | NAND_PERM_BOTH_WRITE,
    NAND_PERM_ALL_RW        = NAND_PERM_ALL_READ | NAND_PERM_ALL_WRITE
};

typedef struct NANDFileInfo {
    s32     fileDescriptor;             // 0x00
    s32     origFd;                     // 0x04

    char    origPath[NAND_MAX_PATH];    // 0x08
    char    tmpPath[NAND_MAX_PATH];     // 0x48

    u8      accType;                    // 0x88
    u8      stage;                      // 0x89
    u8      mark;                       // 0x8A
} NANDFileInfo;

typedef struct NANDStatus {
    u32 ownerId;    // 0x00
    u16 groupId;    // 0x04
    u8  attribute;  // 0x06
    u8  permission; // 0x07
} NANDStatus;

void    NANDInit();

s32     NANDCreate(const char* path, u8 perm, u8 attr);
s32     NANDOpen(const char* path, NANDFileInfo* info, u8 attr);
s32     NANDClose(NANDFileInfo* info);
s32     NANDRead(NANDFileInfo* info, void* buf, u32 len);
s32     NANDWrite(NANDFileInfo* info, const void* buf, u32 len);
s32     NANDSeek(NANDFileInfo* info, s32 offset, s32 whence);
s32     NANDGetLength(NANDFileInfo* info, u32* len);
s32     NANDSafeClose(NANDFileInfo* info);
s32     NANDDelete(const char* path);
s32     NANDGetStatus(const char* path, NANDStatus* status);
s32     NANDGetType(const char* path, u8* type);

s32     NANDCreateDir(const char* path, u8 perm, u8 attr);
s32     NANDReadDir(const char* path, char* fsList, u32* fsCount);
s32     NANDChangeDir(const char* path);

s32     NANDCheck(u32 fsBlock, u32 iNode, u32 *answer);

#include <revolution/nand/NANDLog.h>
#include <revolution/nand/nandprivate.h>
#include <revolution/nand/nandsecret.h>

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_NAND_H
