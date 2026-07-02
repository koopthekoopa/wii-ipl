#ifndef REVOLUTION_VF_H
#define REVOLUTION_VF_H

#include <revolution/vf/types.h>

void VFInit();
void VFInitEx(void* heap_start_address, u32 size);

VFErr VFIsAvailable();

VFErr VFCreateSystemFileNANDFlashEx(const char* sys_file_name, u32 file_size);

VFErr VFAttachDriveNANDFlash(const char* drive);
VFErr VFAttachDriveNANDFlashCache(const char* drive, void* cache_address, u32 cache_size);
VFErr VFAttachDriveSDDirectCacheEx(const char* drive, u32 slot_no, void* cache_address, u32 cache_size, VFSDEventCallback eventCallback);

VFErr VFActivateDriveNANDFlash(const char* drive, const char* sys_file_name);
VFErr VFActivateDriveNANDFlashEx(const char* drive, const char* sys_file_name);
VFErr VFActivateDriveSDDirect(const char* drive);

VFErr VFInactivateDrive(const char* drive);
VFErr VFInactivateDriveForce(const char* drive);

VFErr VFMountDriveNANDFlash(const char* drive, const char* sys_file_name);
VFErr VFMountDriveNANDFlashEx(const char* drive, const char* sys_file_name);
VFErr VFMountDriveNANDFlashCacheEx(const char* drive, const char* sys_file_name, void* cache_address, u32 cache_size);
VFErr VFMountDriveSDDirectEx(const char* drive, u32 slot_no, VFSDEventCallback eventCallback);

VFErr VFUnmountDrive(const char* drive);
VFErr VFUnmountDriveForce(const char* drive);

VFFile* VFCreateFile(const char* path, u32 attr);
VFFile* VFOpenFile(const char* path, const char* mode, u32 attr);
VFErr VFCloseFile(VFFile* file);
VFErr VFSeekFile(VFFile* file, s32 offset, s32 origin);
VFErr VFReadFile(VFFile* file, void* buf, u32 size, u32* read_size);
VFErr VFWriteFile(VFFile* file, void* buf, u32 size);
VFErr VFDeleteFile(const char* path);

VFErr VFCreateDir(const char* dir_name);
VFErr VFChangeDir(const char* dir_name);
VFErr VFDeleteDir(const char* dir_name);

VFErr VFFormatDrive(const char* drive);

s32 VFGetFileSizeByFd(VFFile* file);
s32 VFGetOffsetByFd(VFFile* file);
s32 VFGetDriveFreeSize(const char* drive);

VFErr VFGetSDDirectStatus(const char* drive, u32* status);

VFErr VFFileSearchFirst(VFDta* dta, const char* path, u8 attr);
VFErr VFFileSearchNext(VFDta* dta);

VFErr VFSync(const char* drive, s32 mode);
VFErr VFSetSyncMode(const char* drive, u32 mode);

VFErr VFGetLastError();
VFErr VFGetLastDeviceError(const char* drive);

const char* VFGetApiErrorString(VFErr error);

#endif  // REVOLUTION_VF_H
