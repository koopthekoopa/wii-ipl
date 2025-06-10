#ifndef PRIVATE_CARD_H
#define PRIVATE_CARD_H

#include <revolution/card.h>

#include <revolution/os/OSContext.h>

#include <private/exi.h>

#ifdef __cplusplus
extern "C" {
#endif

/* NET */

extern u16  __CARDVendorID;
extern u8   __CARDPermMask;

/* UNLOCK */
s32 __CARDUnlock(s32 chan, u8 flashID[12]);

/* READ */
s32 __CARDSeek(CARDFileInfo* fileInfo, s32 length, s32 offset, CARDControl** pcard);

/* READ & WRITE */
s32 __CARDRead(s32 chan, u32 addr, s32 length, void* dst, CARDCallback callback);
s32 __CARDWrite(s32 chan, u32 addr, s32 length, void* dst, CARDCallback callback);

/* OPEN */
BOOL    __CARDCompareFileName(CARDDir* ent, const char* fileName);
s32     __CARDGetFileNo(CARDControl* card, const char* fileName, s32* pfileNo);
BOOL    __CARDIsOpened(CARDControl* card, s32 fileNo);
s32     __CARDIsReadable(CARDControl* card, CARDDir* ent);
s32     __CARDIsWritable(CARDControl* card, CARDDir* ent);

/* MOUNT */
void    __CARDMountCallback(s32 chan, s32 result);

/* DIR */
s32         __CARDUpdateDir(s32 chan, CARDCallback callback);
CARDDir*    __CARDGetDirBlock(CARDControl* card);

/* CHECK */
void    __CARDCheckSum(void* ptr, int length, u16* checksum, u16* checksumInv);
s32     __CARDVerify(CARDControl* card);

/* BLOCK */
void*   __CARDGetFatBlock(CARDControl* card);
s32     __CARDAllocBlock(s32 chan, u32 cBlock, CARDCallback callback);
s32     __CARDFreeBlock(s32 chan, u16 nBlock, CARDCallback callback);
s32     __CARDUpdateFatBlock(s32 chan, u16* fat, CARDCallback callback);

/* BIOS */
extern CARDControl  __CARDBlock[2];

extern DVDDiskID*   __CARDDiskID;
extern DVDDiskID    __CARDDiskNone;

void    __CARDDefaultApiCallback(s32 chan, s32 result);
void    __CARDSyncCallback(s32 chan, s32 result);
void    __CARDExtHandler(s32 chan, OSContext* context);
void    __CARDExiHandler(s32 chan, OSContext* context);
void    __CARDTxHandler(s32 chan, OSContext* context);
void    __CARDUnlockedHandler(s32 chan, OSContext* context);
s32     __CARDEnableInterrupt(s32 chan, BOOL enable);
s32     __CARDReadStatus(s32 chan, u8* status);
int     __CARDReadVendorID(s32 chan, u16* id);
s32     __CARDClearStatus(s32 chan);

s32     __CARDReadSegment(s32 chan, CARDCallback callback);
s32     __CARDWritePage(s32 chan, CARDCallback callback);

s32     __CARDEraseSector(s32 chan, u32 addr, CARDCallback callback);

u16     __CARDGetFontEncode();

void    __CARDSetDiskID(const DVDDiskID* id);

s32     __CARDGetControlBlock(s32 chan, CARDControl** pcard);
s32     __CARDPutControlBlock(CARDControl* card, s32 result);

s32     __CARDSync(s32 chan);

#ifdef __cplusplus
}
#endif

#endif // PRIVATE_CARD_H
