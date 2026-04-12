#ifndef VF_NAND_DRIVER_H
#define VF_NAND_DRIVER_H

#include <private/vf/PrFILE2/dskmng/pdm_disk.h>

#include <revolution/nand.h>

extern int VF_nand_retry_max;
extern int VF_nand_sleep_msec;

s32 VFi_NandCreate(const char* path, u8 perm, u8 attr);
s32 VFi_NandPrivateCreate(const char* path, u8 perm, u8 attr);
s32 VFi_NandDelete(const char* path);
s32 VFi_NandPrivateDelete(const char* path);
s32 VFi_NandClose(NANDFileInfo* info);
s32 VFi_NandOpen(const char* path, NANDFileInfo* info, u8 accType);
s32 VFi_NandPrivateOpen(const char* path, NANDFileInfo* info, u8 accType);
s32 VFi_NandWrite(NANDFileInfo* info, void* buf, u32 length);
s32 VFi_NandRead(NANDFileInfo* info, void* buf, u32 length);
s32 VFi_NandCreateDir(const char* path, u8 perm, u8 attr);
s32 VFi_NandPrivateCreateDir(const char* path, u8 perm, u8 attr);
s32 VFi_NandSeek(NANDFileInfo* info, s32 offset, s32 whence);
s32 VFi_NandGetLength(NANDFileInfo* info, u32* length);
s32 VFi_NandCreateSp(const char* path, u8 perm, u8 attr, u32 handleIdx);
s32 VFi_NandOpenSp(const char* path, void* info, u8 accType, u32 handleIdx);
s32 VFi_NandDeleteSp(const char* path, u32 handleIdx);
void VFi_NandSetNANDFuncNormal(u32 handleIdx);
void VFi_NandSetNANDFuncEx(u32 handleIdx);

s32 NAND_CreatePrfFileEx(u32 fileSize, char* fullpath, u16 version);
s32 VFi_NandFlushNANDFromHandleIdx(s32 i_handleIdx, int i_setLastDeviceError);

s32 VFi_NandFlushNANDFromHandleIdx(s32 handleIdx, int setLastDeviceError);

s32 VFi_nanddrv_init_drv_tbl(PDM_DISK_TBL* p_disk_tbl, u32 uext);

#endif  // VF_NAND_DRIVER_H
