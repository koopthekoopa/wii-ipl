#ifndef VF_D_VF_SYSTEM_H
#define VF_D_VF_SYSTEM_H

#include <private/vf/PrFILE2/pf_types.h>

#include <private/vf/PrFILE2/fatfs/pf_cache.h>
#include <private/vf/PrFILE2/fatfs/pf_dir.h>
#include <private/vf/PrFILE2/fatfs/pf_volume.h>

#include <private/vf/PrFILE2/dskmng/pdm_disk.h>

#include <revolution/mem.h>
#include <revolution/vf/types.h>

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
    VFSys_device base;                // 0x00
    SDDev drive ALIGN32 /*?*/;        // 0x20
    VFSDEventCallback eventCallback;  // 0x48
    u32 slotNo;                       // 0x4C
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

void VFSysSetLastError(VFErr err);

VFSys_handle* VFSysGetHandleP(s32 idx);
s32 VFSysHandleP2Idx(VFSys_handle* handle);
VFSys_handle* VFSysVol2HandleP(PF_VOLUME* vol);
VFSys_handle* VFSys_file_2_handle(PF_FILE* file);
int VFSysPDMDisk2HandleIdx(const PDM_DISK* disk);
VFSys_device* VFSysPDMDisk2DeviceP(PDM_DISK* disk_p);
VFSys_drive* VFSysGetDriveP(s32 idx);
VFSys_drive* VFSysPDMDisk2DriveP(PDM_DISK* disk);

void VFSysInit(void* heap_start_address, u32 size);
void VFSysFinalize();

void VFSysSetDevErrInfo(s32 handle_idx, VFErr err);

VFErr VFSysSetDeviceNANDFlash(s32* idx, void* cache_heap, u32 cache_size);

VFErr VFSysSetDeviceSDDirect(s32* idx, u32 slot_no, void* cache_heap, u32 cache_size, VFSDEventCallback eventCallback);
VFErr VFSysGetSlotNoSDDirect(s32 handle_idx);

VFErr VFSysUnsetDevice(s32 handle_idx);

VFErr VFSysCheckExistPrfFile(s32 handle_idx, const char* prf_file_name, void* memory);
VFErr VFSysCreatePrfFileNANDFlashEx(const char* prf_file_name, u32 file_size);

VFErr VFSysMountDrv(s32 handle_idx, const char* prf_file_name, void* memory);

VFErr VFSysUnmountDrv(s32 handle_idx, u32 mode);

PF_FILE* VFSysCreateFile_current(const char* path_p);
PF_FILE* VFSysCreateFile(s32 handle_idx, const char* path_p);

PF_FILE* VFSysOpenFile_current(const char* path, const char* mode);
PF_FILE* VFSysOpenFile(s32 handle_idx, const char* path, const char* mode);

VFErr VFSysCloseFile(PF_FILE* file);

VFErr VFSysSeekFile(PF_FILE* file, s32 offset, s32 origin);

VFErr VFSysReadFile(u32* read_size, void* buf, u32 size, PF_FILE* file);
VFErr VFSysWriteFile(void* buf, u32 size, PF_FILE* file);

VFErr VFSysDeleteFile_current(const char* path);
VFErr VFSysDeleteFile(s32 handle_idx, const char* path);

VFErr VFSysCreateDir_current(const char* dir_name);
VFErr VFSysCreateDir(s32 handle_idx, const char* dir_name);

VFErr VFSysChangeDir_current(const char* dir_name_p);
VFErr VFSysChangeDir(s32 handle_idx, const char* dir_name_p);

VFErr VFSysDeleteDir_current(const char* dir_name_p);
VFErr VFSysDeleteDir(s32 handle_idx, const char* dir_name_p);

VFErr VFSysFileSearchFirst_current(PF_DTA* o_dta, const char* path, u8 attr);
VFErr VFSysFileSearchFirst(PF_DTA* o_dta, s32 handle_idx, const char* path, u8 attr);

VFErr VFSysFileSearchNext(PF_DTA* dta_p);

VFErr VFSysGetFileSizeByFd(u32* size, PF_FILE* file);
VFErr VFSysGetOffsetByFd(u32* o_offset, PF_FILE* file_p);

s32 VFSysGetDriveFreeSize(s32 handle_idx, u32* o_empty_cluster, u32* o_sector_per_cluster, u32* o_byte_per_sector);

VFErr VFSysGetLastError();

VFErr VFSysGetLastDeviceError_current();
VFErr VFSysGetLastDeviceError(s32 handle_idx);

void VFSysSetNandFuncNormal(u32 handle_idx);
void VFSysSetNandFuncEx(u32 handle_idx);

VFErr VFSysFormatDrive(s32 handle_idx);

VFErr VFSysSync(s32 handle_idx, s32 mode);

VFErr VFSysSetSyncMode(s32 handle_idx, u32 mode);
u32 VFSysGetSyncMode(s32 handle_idx);

VFErr VFSysGetSDDirectStatus(s32 handle_idx, u32* o_status_p);

VFSysTimeStampCallback VFSysSetTimeStampCallback(VFSysTimeStampCallback timestamp_callback);
VFSysTimeStampCallback VFSysGetTimeStampCallback();

#endif  // VF_D_VF_SYSTEM_H
