#ifndef REVOLUTION_VF_H
#define REVOLUTION_VF_H

#include <revolution/vf/types.h>

#ifdef __cplusplus
extern "C" {
#endif // __cplusplus

#define VF_WORK_SIZE    0x14000

void    VFInitEx(void* heap_start_address, u32 size);
s32     VFIsAvailable();

VFError VFCreateSystemFileNANDFlashEx(const char* sys_file_name, u32 file_size);

VFError VFMountDriveNANDFlash(const char* drive, const char* sys_file_name);
VFError VFMountDriveNANDFlashEx(const char* drive, const char* sys_file_name);
VFError VFMountDriveNANDFlashCacheEx(const char* drive, const char* sys_file_name, void* cache_address, u32 cache_size);

VFError VFMountDriveSDDirectEx(const char* drive, u32 slot_no, VFEventCallback eventCallback);

VFError VFUnmountDrive(const char* drive);
VFError VFUnmountDriveForce(const char* drive);

VFFILE* VFCreateFile(const char* path, u32 attr);
VFFILE* VFOpenFile(const char* path, const char* mode, u32 attr);
VFError VFCloseFile(VFFILE* file);

VFError VFSeekFile(VFFILE* file, s32 offset, s32 origin);
VFError VFReadFile(VFFILE* file, void* buf, u32 size, u32* read_size);
VFError VFWriteFile(VFFILE* file, const void* buf, u32 size);
VFError VFDeleteFile(const char* path);

VFError VFCreateDir(const char* dir_name);
VFError VFChangeDir(const char* dir_name);
VFError VFDeleteDir(const char* dir_name);

s32     VFGetFileSizeByFd(VFFILE* file);
s32     VFGetOffsetByFd(VFFILE* file);

VFError VFGetDriveFreeSize(const char* drive);

VFError VFFormatDrive(const char* drive);

VFError VFGetSDDirectStatus(const char* drive, u32* status);

VFError VFFileSearchFirst(VFDta* dta, const char* path, u8 attr);
VFError VFFileSearchNext(VFDta* dta);

VFError VFBuffering(const char* drive, s32 mode);

VFError VFSync(const char* drive, s32 mode);

VFError VFGetLastError();
VFError VFGetLastDeviceError(const char* drive);
char*   VFGetApiErrorString(VFError error);

#ifdef __cplusplus
}
#endif // __cplusplus

#endif // REVOLUTION_VF_H
