#ifndef PRIVATE_NWC24_FILE_H
#define PRIVATE_NWC24_FILE_H

#include <revolution/types.h>
#include <revolution/nand.h>
#include <revolution/vf.h>

#include <revolution/nwc24/NWC24Err.h>

#ifdef __cplusplus
extern "C" {
#endif

enum {
    // Access
    NWC24_OPEN_WRITE = (1 << 0),
    NWC24_OPEN_READ = (1 << 1),
    NWC24_OPEN_RW = (1 << 2),

    // Domain
    NWC24_OPEN_BUFF = (1 << 3),
    NWC24_OPEN_VF = (1 << 8),

    // NAND presets
    NWC24_OPEN_NAND_W = NWC24_OPEN_WRITE,
    NWC24_OPEN_NAND_R = NWC24_OPEN_READ,
    NWC24_OPEN_NAND_RW = NWC24_OPEN_RW,

    // VF presets
    NWC24_OPEN_VF_W = NWC24_OPEN_WRITE | NWC24_OPEN_VF,
    NWC24_OPEN_VF_R = NWC24_OPEN_READ | NWC24_OPEN_VF,
    NWC24_OPEN_VF_RW = NWC24_OPEN_RW | NWC24_OPEN_VF,

    // NAND (buffered) presets
    NWC24_OPEN_NAND_WBUFF = NWC24_OPEN_NAND_W | NWC24_OPEN_BUFF,
    NWC24_OPEN_NAND_RBUFF = NWC24_OPEN_NAND_R | NWC24_OPEN_BUFF,
    NWC24_OPEN_NAND_RWBUFF = NWC24_OPEN_NAND_RW | NWC24_OPEN_BUFF,

    // VF (buffered) presets
    NWC24_OPEN_VF_WBUFF = NWC24_OPEN_VF_W | NWC24_OPEN_BUFF,
    NWC24_OPEN_VF_RBUFF = NWC24_OPEN_VF_R | NWC24_OPEN_BUFF,
    NWC24_OPEN_VF_RWBUFF = NWC24_OPEN_VF_RW | NWC24_OPEN_BUFF,
};

enum {
    NWC24_SEEK_BEG,
    NWC24_SEEK_CUR,
    NWC24_SEEK_END,
};

typedef struct NWC24File {
    u32             id;     // at 0x0
    u32             mode;   // at 0x4

    u32             align;  // at 0x8

    NANDFileInfo    nand;   // at 0xC
    VFFILE*         vf;     // at 0x98
} NWC24File;

typedef struct NWC24FileStream {
    NWC24File*  file;           // 0x00

    char*       buffer;         // 0x04
    u32         length;         // 0x08
    u32         realOffset;     // 0x0C

    u32         baseOffset;     // 0x10
    u32         currentOffset;  // 0x14

    u32         areaSize;       // 0x18
} NWC24FileStream;

#define     NWC24_VF_DRIVE  "@24"

NWC24Err    NWC24FOpen(NWC24File* file, const char* path, u32 mode);
NWC24Err    NWC24iFOpenNand(NWC24File* file, const char* path, u32 mode);
NWC24Err    NWC24iFOpenVF(NWC24File* file, const char* path, u32 mode);

NWC24Err    NWC24FClose(NWC24File* file);
NWC24Err    NWC24iFCloseNand(NWC24File* file) NO_INLINE;
NWC24Err    NWC24iFCloseVF(NWC24File* file);

NWC24Err    NWC24FSeek(NWC24File* file, s32 offset, int whence);
NWC24Err    NWC24FRead(void* dest, s32 size, NWC24File* file);
NWC24Err    NWC24FWrite(const void* src, s32 size, NWC24File* file);
NWC24Err    NWC24FGetLength(NWC24File* file, u32* pLength);
NWC24Err    NWC24FDelete(const char* path);
NWC24Err    NWC24FDeleteVF(const char* path);
NWC24Err    NWC24MountVF(const char* drive, const char* fileName);
NWC24Err    NWC24UnmountVF(const char* drive);
NWC24Err    NWC24CheckSizeVF(const char* drive, u32* pSize);

NWC24Err    NWC24FStreamInit(NWC24FileStream* stream, NWC24File* file, u32 baseOffset, u32 areaSize, char* buffer, u32 size);
u32         NWC24FStreamGetSize(NWC24FileStream* stream);
char        NWC24FStreamGetc(NWC24FileStream* stream);
NWC24Err    NWC24FStreamSeek(NWC24FileStream* stream, u32 pos);
NWC24Err    NWC24FStreamGetPtr(NWC24FileStream* stream, char** buffer, u32 length);

#ifdef __cplusplus
}
#endif

#endif  // PRIVATE_NWC24_FILE_H
