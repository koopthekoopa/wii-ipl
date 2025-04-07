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

enum {
    NAND_PERM_MASK_BOTH  = 0,
    NAND_PERM_MASK_GROUP = 2,
    NAND_PERM_MASK_USER  = 4,
};

enum {
    NAND_PERM_USER_READ     = (NAND_ACCESS_READ << NAND_PERM_MASK_USER),
    NAND_PERM_USER_WRITE    = (NAND_ACCESS_WRITE << NAND_PERM_MASK_USER),
    NAND_PERM_USER          =  NAND_PERM_USER_READ | NAND_PERM_USER_WRITE,

    NAND_PERM_GROUP_READ    = (NAND_ACCESS_READ << NAND_PERM_MASK_GROUP),
    NAND_PERM_GROUP_WRITE   = (NAND_ACCESS_WRITE << NAND_PERM_MASK_GROUP),
    NAND_PERM_GROUP         =  NAND_PERM_GROUP_READ | NAND_PERM_GROUP_WRITE,

    NAND_PERM_BOTH_READ     = (NAND_ACCESS_READ << NAND_PERM_MASK_BOTH),
    NAND_PERM_BOTH_WRITE    = (NAND_ACCESS_WRITE << NAND_PERM_MASK_BOTH),
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

typedef struct NANDCommandBlock NANDCommandBlock;
typedef void (*NANDAsyncCallback)(s32 result, NANDCommandBlock* block);

struct NANDCommandBlock {
    void*               userData;               // 0x00
    NANDAsyncCallback   callback;               // 0x04
    void*               fileInfo;               // 0x08
    void*               bytes;                  // 0x0C
    void*               inodes;                 // 0x10
    void*               status;                 // 0x14

    u32                 ownerId;                // 0x18
    u16                 groupId;                // 0x1C

    u8                  nextStage;              // 0x1E
    u32                 attr;                   // 0x20

    u32                 ownerAcc;               // 0x24
    u32                 groupAcc;               // 0x28
    u32                 othersAcc;              // 0x2C

    u32                 num;                    // 0x30
    char                absPath[NAND_MAX_PATH]; // 0x34
    u32*                length;                 // 0x74
    u32*                pos;                    // 0x78
    int                 state;                  // 0x7C
    void*               copyBuf;                // 0x80
    u32                 bufLength;              // 0x84
    u8*                 type;                   // 0x88
    u32                 uniqueNo;               // 0x8C

    u32                 reqBlocks;              // 0x90
    u32                 reqInodes;              // 0x94

    u32*                answer;                 // 0x98

    u32                 homeBlocks;             // 0x9C
    u32                 homeInodes;             // 0xA0

    u32                 userBlocks;             // 0xA4
    u32                 userInodes;             // 0xA8

    u32                 workBlocks;             // 0xAC
    u32                 workInodes;             // 0xB0

    const char**        dir;                    // 0xB4

    BOOL                simpleFlag;             // 0xB8
};

s32     NANDInit();

s32     NANDCreate(const char* path, u8 perm, u8 attr);
s32     NANDOpen(const char* path, NANDFileInfo* info, u8 attr);
s32     NANDOpenAsync(const char* path, NANDFileInfo* info, u8 attr, NANDAsyncCallback callback, NANDCommandBlock* block);
s32     NANDClose(NANDFileInfo* info);
s32     NANDCloseAsync(NANDFileInfo* info, NANDAsyncCallback callback, NANDCommandBlock* block);
s32     NANDRead(NANDFileInfo* info, void* buf, u32 len);
s32     NANDReadAsync(NANDFileInfo* info, void* buf, u32 len, NANDAsyncCallback callback, NANDCommandBlock* block);
s32     NANDWrite(NANDFileInfo* info, const void* buf, u32 len);
s32     NANDWriteAsync(NANDFileInfo* info, const void* buf, u32 len, NANDAsyncCallback callback, NANDCommandBlock* block);
s32     NANDSeek(NANDFileInfo* info, s32 offset, s32 whence);
s32     NANDSeekAsync(NANDFileInfo* info, s32 offset, s32 whence, NANDAsyncCallback callback, NANDCommandBlock* block);
s32     NANDGetLength(NANDFileInfo* info, u32* len);
s32     NANDSafeClose(NANDFileInfo* info);
s32     NANDDelete(const char* path);
s32     NANDGetStatus(const char* path, NANDStatus* status);
s32     NANDGetType(const char* path, u8* type);

s32     NANDCreateDir(const char* path, u8 perm, u8 attr);
s32     NANDReadDir(const char* path, char* fsList, u32* fsCount);
s32     NANDChangeDir(const char* path);

s32     NANDGetHomeDir(char* path);

s32     NANDGetStatus(const char* path, NANDStatus* stat);

s32     NANDCheck(u32 fsBlock, u32 iNode, u32* answer);

#include <revolution/nand/NANDLog.h>
#include <revolution/nand/nandprivate.h>
#include <revolution/nand/nandsecret.h>

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_NAND_H
