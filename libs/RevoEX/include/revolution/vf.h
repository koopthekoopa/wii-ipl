#ifndef REVOLUTION_VF_H
#define REVOLUTION_VF_H

#include <revolution/vf/types.h>

#ifdef __cplusplus
extern "C" {
#endif // __cplusplus

void    VFInitEx(void* i_heap_start_address_p, u32 i_size);
s32     VFIsAvailable();

VFError VFCreateSystemFileNANDFlashEx(const char* i_sys_file_name_p, u32 i_file_size);

VFError VFMountDriveNANDFlash(const char* i_drive, const char* i_sys_file_name_p);
VFError VFMountDriveNANDFlashEx(const char* i_drive, const char* i_sys_file_name_p);
VFError VFMountDriveNANDFlashCacheEx(const char* i_drive, const char* i_sys_file_name_p, void* i_cache_address_p, u32 i_cache_size);

VFError VFMountDriveSDDirectEx(const char* i_drive, u32 i_slot_no, VFEventCallback i_eventCallback);

VFError VFUnmountDrive(const char* i_drive);
VFError VFUnmountDriveForce(const char* i_drive);

VFFILE* VFCreateFile(const char* i_path_p, u32 i_attr);
VFFILE* VFOpenFile(const char* i_path_p, const char* i_mode, u32 i_attr);
VFError VFCloseFile(VFFILE* i_file_p);

VFError VFSeekFile(VFFILE* i_file_p, s32 i_offset, s32 i_origin);
VFError VFReadFile(VFFILE* i_file_p, void* o_buf_p, u32 i_size, u32* o_read_size_p);
VFError VFWriteFile(VFFILE* i_file_p, void* i_buf_p, u32 i_size);
VFError VFDeleteFile(const char* i_path_p);

VFError VFCreateDir(const char* i_dir_name_p);
VFError VFChangeDir(const char* i_dir_name_p);
VFError VFDeleteDir(const char* i_dir_name_p);

s32     VFGetFileSizeByFd(VFFILE* i_file_p);
s32     VFGetOffsetByFd(VFFILE* i_file_p);

VFError VFGetDriveFreeSize(const char* i_drive);

VFError VFFormatDrive(const char* i_drive);

VFError VFGetSDDirectStatus(const char* i_drive, u32* o_status_p);

VFError VFFileSearchFirst(VFDta* o_dta_p, const char* i_path_p, u8 i_attr);
VFError VFFileSearchNext(VFDta* o_dta_p);

VFError VFBuffering(const char* i_drive, s32 i_mode);

VFError VFSync(const char* i_drive, s32 i_mode);

VFError VFGetLastError();
VFError VFGetLastDeviceError(const char* i_drive);
char*   VFGetApiErrorString(VFError error);

#ifdef __cplusplus
}
#endif // __cplusplus

#endif // REVOLUTION_VF_H
