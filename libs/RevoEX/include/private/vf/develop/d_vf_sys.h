#ifndef VF_D_VF_SYSTEM_H
#define VF_D_VF_SYSTEM_H

#include <private/vf/PrFILE2/pf_types.h>

#include <private/vf/PrFILE2/fatfs/pf_cache.h>
#include <private/vf/PrFILE2/fatfs/pf_volume.h>

#include <private/vf/PrFILE2/dskmng/pdm_disk.h>

#include <revolution/mem.h>

#include <revolution/dvd.h>
#include <revolution/nand.h>
#include <revolution/sdi.h>

typedef struct {
    u32 status;     // 0x00
    u32 err;        // 0x04
    u32 type;       // 0x08
    u32 sync_mode;  // 0x0C
} VFSys_device;

typedef struct {
    MEMiHeapHead* heap_handle;        // 0x00
    u32 cache_pages;                  // 0x04
    PF_CACHE_PAGE* pf_cache_page_p;   // 0x08
    PF_CACHE_BUFFER* pf_cache_buf_p;  // 0x0C
} VFSys_cache;

typedef struct {
    void* file_p;                   // 0x00
    PDM_DISK* pf_disk_p;            // 0x04
    PF_DRV_TBL pf_drv;              // 0x08
    PDM_PARTITION* pf_part_p;       // 0x14
    VFSys_cache cache;              // 0x18
    PF_CACHE_SETTING pf_cache_set;  // 0x28
    u8 pf_filename[255];            // 0x3C
} VFSys_drive;

typedef struct {
    VFSys_device* device_p;  // 0x00
    VFSys_drive drive;       // 0x04
} VFSys_handle;

typedef struct {
    VFSys_device base;  // 0x00
} VFSys_deviceBase;

typedef struct {
    VFSys_deviceBase device;  // 0x00
    DVDFileInfo file_info;    // 0x10
} VFSys_deviceDvd;

typedef struct {
    VFSys_deviceBase device;  // 0x00
    NANDFileInfo file_info;   // 0x10
} VFSys_deviceNand;

typedef struct {
    VFSys_device base;                 // 0x00
    SDDev drive;                       // 0x20
    SDDevEventCallback eventCallback;  // 0x48
    u32 slotNo;                        // 0x4C
} VFSys_deviceSD;

typedef struct VFSysTime {
    s32 sec;    // 0x00
    s32 min;    // 0x04
    s32 hour;   // 0x08
    s32 day;    // 0x0C
    s32 month;  // 0x10
    s32 year;   // 0x14
} VFSysTime;

typedef void (*VFSysTimeStampCallback)(VFSysTime* time);

void VFSysSetLastError(s32 err);

VFSys_handle* VFSysGetHandleP(s32 idx);
s32 VFSysHandleP2Idx(VFSys_handle* handle);
VFSys_handle* VFSysVol2HandleP(PF_VOLUME* vol);
VFSys_handle* VFSys_file_2_handle(PF_FILE* file);
int VFSysPDMDisk2HandleIdx(const PDM_DISK* disk);
VFSys_drive* VFSysGetDriveP(s32 idx);
VFSys_drive* VFSysPDMDisk2DriveP(PDM_DISK* disk);

void VFSysInit(void* heap_start_address, u32 size);
void VFSysFinalize();

void VFSysSetDevErrInfo(s32 handle_idx, s32 err);

s32 VFSysSetDeviceNANDFlash(s32* idx, void* cache_heap, u32 cache_size);
s32 VFSysUnsetDevice(s32 handle_idx);

s32 VFSysCheckExistPrfFile(s32 handle_idx, const char* prf_file_name, void* memory);
s32 VFSysCreatePrfFileNANDFlashEx(const char* prf_file_name, u32 file_size);

s32 VFSysMountDrv(s32 handle_idx, const char* prf_file_name, void* memory);

s32 VFSysUnmountDrv(s32 handle_idx, u32 mode);

PF_FILE* VFSysOpenFile_current(const char* path, const char* mode);
PF_FILE* VFSysOpenFile(s32 handle_idx, const char* path, const char* mode);

s32 VFSysCloseFile(PF_FILE* file);

s32 VFSysSeekFile(PF_FILE* file, s32 offset, s32 origin);

s32 VFSysReadFile(u32* read_size, void* buf, u32 size, PF_FILE* file);
s32 VFSysWriteFile(void* buf, u32 size, PF_FILE* file);

s32 VFSysDeleteFile_current(const char* path);
s32 VFSysDeleteFile(s32 handle_idx, const char* path);

s32 VFSysCreateDir_current(const char* dir_name);
s32 VFSysCreateDir(s32 handle_idx, const char* dir_name);

s32 VFSysGetFileSizeByFd(s32* size, PF_FILE* file);

s32 VFSysGetDriveFreeSize(s32 handle_idx);

s32 VFSysGetLastError();

s32 VFSysGetLastDeviceError_current();
s32 VFSysGetLastDeviceError(s32 handle_idx);

void VFSysSetNandFuncNormal(u32 handle_idx);
void VFSysSetNandFuncEx(u32 handle_idx);

s32 VFSysFormatDrive(s32 handle_idx);

s32 VFSysSetSyncMode(s32 handle_idx, u32 mode);
u32 VFSysGetSyncMode(s32 handle_idx);

VFSysTimeStampCallback VFSysSetTimeStampCallback(VFSysTimeStampCallback timestamp_callback);
VFSysTimeStampCallback VFSysGetTimeStampCallback();

#endif  // VF_D_VF_SYSTEM_H
