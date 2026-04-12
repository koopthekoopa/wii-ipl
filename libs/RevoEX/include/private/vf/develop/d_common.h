#ifndef VF_D_COMMON_H
#define VF_D_COMMON_H

#include <private/vf/PrFILE2/pf_types.h>
#include <revolution/types.h>

#include <private/vf/PrFILE2/dskmng/pdm_disk.h>

#include <private/vf/PrFILE2/pr_unsorted.h>

void dCommon_DevideBuff32(void* buf, u32 size, u32* i_1st_size, void* i_2nd, u32* i_2nd_size, void* i_3rd, u32* i_3rd_size);
BOOL dCommon_IsPrfFile(void* buff);
void dCommon_CopyPrfFileHeader(void* buff, u32 fileSize, unsigned short version, u8 volatile_memory);
void dCommon_PrintSignature(PR_BINHEADER* header);
s32 dCommon_MakeFsInfoSec(u8* buf, u32 fsInfoSize);
u32 dCommon_GetPhysicalOffset(u32 startBlock, u32 BPS, u32 reservedSecNum);
PDM_FAT_TYPE dCommon_GetNiceFatType(u32* spf, u32 SPU, u32 SPC, u32 BPS) NO_INLINE;
u32 dCommon_GetReservedSecFromFatType(PDM_FAT_TYPE fatType);
u32 dCommon_GetRootEntNumFromFatType(PDM_FAT_TYPE fatType);
void dCommon_MakeBootSector(u8* buf, PDM_FAT_TYPE* type, u32 SPU, u32 SPC, u32 BPS, u8 jump0_1, u8 jump2, u32 secPerTrack, u32 reservedSecNum,
                            u32 rootEntNum, u8 mediaDesc);
BOOL dCommon_ReadDummyBPB(u32 num_blocks, u8* buf, u32 block, u32* p_num_success, PDM_DISK* p_disk, s32* p_err, PDM_MAKE_BS makeBS,
                          PDM_MAKE_FS makeFS);
BOOL dCommon_WriteDummyBPB(u32 num_blocks, u32 block, u32* p_num_success, PDM_DISK* p_disk, s32* p_err);
void dCommon_initDriveInfo();
u32 dCommon_getFileSizeFromDisk(PDM_DISK* p_disk);
void dCommon_setFileSizeToDisk(PDM_DISK* p_disk, u32 fileSize);
s32 dCommon_getLastDeviceErrorFromDisk(PDM_DISK* p_disk);
void dCommon_setLastDeviceErrorToDisk(PDM_DISK* p_disk, s32 lastDevErr);
void dCommon_setLastDeviceErrorToDisk2(s32 handleIdx, s32 lastDevErr);
s32 dCommon_getHandleIdxFromDisk(PDM_DISK* p_disk);
u32 dCommon_getFatTypeFromDisk(PDM_DISK* p_disk);
void dCommon_setFatTypeToDisk(PDM_DISK* p_disk, u32 fatType);
u32 dCommon_getResvSecNumFromDisk(PDM_DISK* p_disk);
void dCommon_setResvSecNumToDisk(PDM_DISK* p_disk, u32 reservedSecNum);
u32 dCommon_getRootEntNumFromDisk(PDM_DISK* p_disk);
void dCommon_setRootEntNumToDisk(PDM_DISK* p_disk, u32 rootEntNum);
s32 dCommon_FlushFromVol(PF_VOLUME* vol, BOOL setLastDeviceError);
s32 dCommon_FlushFromHandleIdx(int handle_idx, BOOL setLastDeviceError);

#endif  // VF_D_COMMON_H
