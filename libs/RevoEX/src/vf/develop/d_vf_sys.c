#include <private/vf/develop/d_common.h>
#include <private/vf/develop/d_vf_sys.h>
#include <private/vf/develop/nand_drv.h>
#include <private/vf/develop/sd_drv.h>

#include <private/vf/PrFILE2/common/pf_clib.h>

#include <private/vf/PrFILE2/dskmng/pdm_disk.h>

#include <private/vf/PrFILE2/fatfs/pf_cache.h>

#include <private/vf/PrFILE2/pr_unsorted.h>

#include <private/vf/PrFILE2/standard/pf_chdir.h>
#include <private/vf/PrFILE2/standard/pf_create.h>
#include <private/vf/PrFILE2/standard/pf_detach.h>
#include <private/vf/PrFILE2/standard/pf_errnum.h>
#include <private/vf/PrFILE2/standard/pf_fclose.h>
#include <private/vf/PrFILE2/standard/pf_finfo.h>
#include <private/vf/PrFILE2/standard/pf_fopen.h>
#include <private/vf/PrFILE2/standard/pf_format.h>
#include <private/vf/PrFILE2/standard/pf_fread.h>
#include <private/vf/PrFILE2/standard/pf_fseek.h>
#include <private/vf/PrFILE2/standard/pf_fsfirst.h>
#include <private/vf/PrFILE2/standard/pf_fsnext.h>
#include <private/vf/PrFILE2/standard/pf_fwrite.h>
#include <private/vf/PrFILE2/standard/pf_getdev.h>
#include <private/vf/PrFILE2/standard/pf_mkdir.h>
#include <private/vf/PrFILE2/standard/pf_remove.h>
#include <private/vf/PrFILE2/standard/pf_rmdir.h>
#include <private/vf/PrFILE2/standard/pf_sync.h>
#include <private/vf/PrFILE2/standard/pf_unmount.h>

#include <revolution/dvd.h>
#include <revolution/nand.h>

#include <revolution/vf/types.h>

typedef union {
    VFSys_deviceDvd dvd;
    VFSys_deviceNand nand;
    VFSys_deviceSD sd_device;
    VFSys_deviceBase ram_device;
} VFSys_deviceTblEntry;

static u32 l_vfsys_vol_max = 0;
static VFErr l_vfsys_last_err = 0;
static MEMiHeapHead* l_vfsys_exp_heap_handle = NULL;
static BOOL l_vfsys_dev_table_init = FALSE;
static VFSys_handle* l_sys_handle_table_p = NULL;

static u8 l_vfsys_sddirect_init = FALSE;

static PDM_INIT_DISK l_dev_nandflash_init_info = {VFi_nanddrv_init_drv_tbl, 0};
static PDM_INIT_DISK l_dev_sd_direct_init_info = {VFi_sddrv_init_drv_tbl, 0};

static VFSysTimeStampCallback l_timeStampCallback = NULL;

VFSys_deviceTblEntry* l_vfsys_dev_table[PF_DRIVE_COUNT];

static void VFiSysCreateHandleTable(u32 i_max);
static void VFiSysClearHandleAll();
static void VFiSysCreateDeviceTable(u32 i_max);

static void VFiSysSetDeviceErrInfo(VFSys_handle* o_handle_p, VFErr i_err);

static void VFiSysCreateHeap(void* i_start_address_p, u32 i_size);

static VFSys_handle* VFiSysGetCurrentHandle();

static void VFiSysChangeSeparater(char* o_dst_str_p, const char* i_src_str_p, char i_dst_spr, char i_src_spr, s32 i_str_len_max);

void VFSysInit(void* i_heap_start_address_p, u32 i_size) {
    u32 vol_max = i_size >> 14;
    VFiSysCreateHeap(i_heap_start_address_p, i_size);
    l_vfsys_vol_max = vol_max > PF_DRIVE_COUNT ? PF_DRIVE_COUNT : vol_max;
    VFiSysCreateHandleTable(l_vfsys_vol_max);
    VFiSysClearHandleAll();
    VFiSysCreateDeviceTable(l_vfsys_vol_max);
    dCommon_initDriveInfo();
    l_vfsys_last_err = VF_ERR_SUCCESS;
    VF_nand_sleep_msec = 2;
    VF_nand_retry_max = 8;
    VFi_InitSDWrok();
}

void VFSysSetNandFuncNormal(u32 i_handle_idx) {
    VFi_NandSetNANDFuncNormal(i_handle_idx);
}

void VFSysSetNandFuncEx(u32 i_handle_idx) {
    VFi_NandSetNANDFuncEx(i_handle_idx);
}

static VFErr VFiSysCheckExistPrfFileNANDFlashCommon(const char* i_prf_file_name_p, u32 i_handle_idx);

VFErr VFSysCreatePrfFileNANDFlashEx(const char* i_prf_file_name_p, u32 i_file_size) {
    char file_name[255];

    VFiSysChangeSeparater(file_name, i_prf_file_name_p, 0x2F, 0x5C, 0xFF);
    if (VFiSysCheckExistPrfFileNANDFlashCommon(file_name, -11) == VF_ERR_NOT_EXIST_FILE) {
        return NAND_CreatePrfFileEx(i_file_size, file_name, 0x100);
    }
    return VF_ERR_SUCCESS;
}

static VFErr VFiSysCheckExistPrfFileNandFlash(VFSys_device* i_device_p, const char* i_prf_file_name_p, void* i_memory_p, u32 i_handle_idx);
static VFErr VFiSysCheckExistPrfFileRam(VFSys_device* i_device_p, const char* i_prf_file_name_p, void* i_memory_p, u32 i_handle_idx);
static VFErr VFiSysCheckExistPrfFileDVD(VFSys_device* i_device_p, const char* i_prf_file_name_p, void* i_memory_p, u32 i_handle_idx);

typedef VFErr (*VF_Check_proc)(VFSys_device*, const char*, void*, u32);

// clang-format off
static VF_Check_proc l_check_exist_file[4] = {
    VFiSysCheckExistPrfFileNandFlash,
    VFiSysCheckExistPrfFileRam,
    VFiSysCheckExistPrfFileDVD,
    NULL
};
// clang-format on

VFErr VFSysCheckExistPrfFile(s32 i_handle_idx, const char* i_prf_file_name_p, void* i_memory_p) {
    VFSys_handle* handle_p = VFSysGetHandleP(i_handle_idx);
    u32 type = 0;

    if (handle_p == NULL || handle_p->device_p == NULL) {
        return VF_ERR_NOT_ALLOCATED_DRV;
    }
    type = handle_p->device_p->type;
    if (type < 4) {
        VF_Check_proc check_proc = l_check_exist_file[type];

        if (check_proc != NULL) {
            return check_proc(handle_p->device_p, i_prf_file_name_p, i_memory_p, i_handle_idx);
        }
        return VF_ERR_SUCCESS;
    }
    return VF_ERR_SYSTEM;
}

static VFErr VFiSysCheckExistPrfFileNANDFlashCommon(const char* i_prf_file_name_p, u32 i_handle_idx);

static VFErr VFiSysCheckExistPrfFileNandFlash(VFSys_device* i_device_p, const char* i_prf_file_name_p, void* i_memory_p, u32 i_handle_idx) {
    (void)i_device_p;
    (void)i_memory_p;
    return VFiSysCheckExistPrfFileNANDFlashCommon(i_prf_file_name_p, i_handle_idx);
}

static VFErr VFiSysCheckExistPrfFileNANDFlashCommon(const char* i_prf_file_name_p, u32 i_handle_idx) {
    s32 NANDError = NAND_RESULT_OK;
    s32 NANDErrorLen = NAND_RESULT_OK;
    NANDFileInfo FileInfo;
    PR_BINHEADER header ALIGN32;
    VFErr ret = VF_ERR_NOT_EXIST_FILE;
    char file_name[255];

    VFiSysChangeSeparater(file_name, i_prf_file_name_p, 0x2F, 0x5C, 0xFF);
    NANDError = VFi_NandOpenSp(file_name, &FileInfo, NAND_ACCESS_READ, i_handle_idx);
    if (NANDError == NAND_RESULT_OK) {
        u32 length = 0;

        NANDErrorLen = VFi_NandGetLength(&FileInfo, &length);
        NANDError = VFi_NandRead(&FileInfo, &header, 0x20);
        if (NANDError >= NAND_RESULT_OK && NANDErrorLen >= NAND_RESULT_OK && dCommon_IsPrfFile(&header) &&
            length == ((header.fileSize[0] << 24) | (header.fileSize[1] << 16) | (header.fileSize[2] << 8) | (header.fileSize[3]))) {
            ret = VF_ERR_SUCCESS;
        } else {
            ret = VF_ERR_VFF_FILE_FORMAT;
        }
        VFi_NandClose(&FileInfo);
    }
    return ret;
}

static VFErr VFiSysCheckExistPrfFileRamCommon(void* i_memory_p);

static VFErr VFiSysCheckExistPrfFileRam(VFSys_device* i_device_p, const char* i_prf_file_name_p, void* i_memory_p, u32 i_handle_idx) {
    (void)i_device_p;
    (void)i_prf_file_name_p;
    (void)i_handle_idx;
    return VFiSysCheckExistPrfFileRamCommon(i_memory_p);
}

static VFErr VFiSysCheckExistPrfFileRamCommon(void* i_memory_p) {
    if (dCommon_IsPrfFile(i_memory_p)) {
        return VF_ERR_SUCCESS;
    }
    return VF_ERR_VFF_FILE_FORMAT;
}

static VFErr VFiSysCheckExistPrfFileDVDCommon(const char* i_prf_file_name_p);

static VFErr VFiSysCheckExistPrfFileDVD(VFSys_device* i_device_p, const char* i_prf_file_name_p, void* i_memory_p, u32 i_handle_idx) {
    (void)i_device_p;
    (void)i_memory_p;
    (void)i_handle_idx;
    return VFiSysCheckExistPrfFileDVDCommon(i_prf_file_name_p);
}

static VFErr VFiSysCheckExistPrfFileDVDCommon(const char* i_prf_file_name_p) {
    int DVDError = DVD_RESULT_OK;
    DVDFileInfo FileInfo;
    PR_BINHEADER header ALIGN32;
    VFErr ret = VF_ERR_NOT_EXIST_FILE;
    char file_name[255];

    VFiSysChangeSeparater(file_name, i_prf_file_name_p, 0x5C, 0x2F, 0xFF);
    DVDError = DVDOpen(file_name, &FileInfo);
    if (DVDError != DVD_RESULT_OK) {
        s32 readBytes = DVDReadPrio(&FileInfo, &header, 0x20, 0, 2);
        u32 dvdFileSize = FileInfo.length;

        if (readBytes != 0 && dCommon_IsPrfFile(&header) &&
            dvdFileSize == ((header.fileSize[0] << 24) | (header.fileSize[1] << 16) | (header.fileSize[2] << 8) | (header.fileSize[3]))) {
            ret = VF_ERR_SUCCESS;
        } else {
            ret = VF_ERR_VFF_FILE_FORMAT;
        }
        DVDClose(&FileInfo);
    }
    return ret;
}

static void VFiSysCreateHeap(void* i_start_address_p, u32 i_size) {
    if (i_start_address_p != NULL && i_size != 0 && l_vfsys_exp_heap_handle == NULL) {
        l_vfsys_exp_heap_handle = MEMCreateExpHeap(i_start_address_p, i_size);
    }
}

static void* VFiSysAllocCommon(u32 i_size, u32 i_align, MEMiHeapHead* i_heap_handle);

static void* VFiSysAlloc(u32 i_size, u32 i_align) {
    return VFiSysAllocCommon(i_size, i_align, l_vfsys_exp_heap_handle);
}

static void* VFiSysAllocCommon(u32 i_size, u32 i_align, MEMiHeapHead* i_heap_handle) {
    if (i_heap_handle == NULL) {
        return NULL;
    }
    return MEMAllocFromExpHeapEx(i_heap_handle, i_size, i_align);
}

static void VFiSysFreeCommon(void* i_ptr, MEMiHeapHead* i_heap_handle);

static void VFiSysFree(void* i_ptr) {
    VFiSysFreeCommon(i_ptr, l_vfsys_exp_heap_handle);
}

static void VFiSysFreeCommon(void* i_ptr, MEMiHeapHead* i_heap_handle) {
    if (i_heap_handle != NULL) {
        MEMFreeToExpHeap(i_heap_handle, i_ptr);
    }
}

static void VFiSysSetCache(VFSys_drive* i_drive_p) {
    PF_CACHE_SETTING* cache_p = &i_drive_p->pf_cache_set;
    cache_p->pages = i_drive_p->cache.pf_cache_page_p;
    cache_p->buffers = i_drive_p->cache.pf_cache_buf_p;
    cache_p->num_fat_pages = i_drive_p->cache.cache_pages;
    cache_p->num_data_pages = i_drive_p->cache.cache_pages;
    cache_p->num_fat_buf_size = 1;
}

static void VFiSysClearCache(VFSys_cache* i_cache_p) {
    if (i_cache_p != NULL) {
        i_cache_p->heap_handle = NULL;
        i_cache_p->cache_pages = 0;
        i_cache_p->pf_cache_page_p = NULL;
        i_cache_p->pf_cache_buf_p = NULL;
    }
}

static void VFiSysFreeCache(VFSys_cache* i_cache_p);

static void VFiSysCreateCache(VFSys_handle* i_handle_p, u32 i_pages, MEMiHeapHead* i_heap_handle) {
    if (i_handle_p != NULL) {
        VFSys_cache* cache_p = &i_handle_p->drive.cache;
        u32 pages_2 = i_pages * 2;

        if (cache_p->pf_cache_page_p == NULL && cache_p->pf_cache_buf_p == NULL) {
            u32 cache_page_size = pages_2 * 0x28;
            u32 cache_buf_size = pages_2 << 9;

            cache_p->pf_cache_page_p = VFiSysAllocCommon(cache_page_size, 4, i_heap_handle);
            cache_p->pf_cache_buf_p = VFiSysAllocCommon(cache_buf_size, 4, i_heap_handle);
            if (cache_p->pf_cache_page_p != NULL && cache_p->pf_cache_buf_p != NULL) {
                VFipf_memset(cache_p->pf_cache_page_p, 0, cache_page_size);
                VFipf_memset(cache_p->pf_cache_buf_p, 0, cache_buf_size);
                cache_p->heap_handle = i_heap_handle;
                cache_p->cache_pages = i_pages;
            } else {
                VFiSysFreeCache(cache_p);
            }
        }
    }
}

static void VFiSysDestroyCache(VFSys_handle* i_handle_p) {
    if (i_handle_p != NULL) {
        VFSys_cache* cache_p = &i_handle_p->drive.cache;
        MEMiHeapHead* heap_handle = cache_p->heap_handle;

        VFiSysFreeCache(cache_p);
        if (heap_handle != l_vfsys_exp_heap_handle && heap_handle != NULL) {
            MEMDestroyExpHeap(heap_handle);
        }
    }
}

static void VFiSysAllocCache(VFSys_handle* i_handle_p, void* i_cache_heap_p, u32 i_cache_size) {
    if (i_handle_p != NULL) {
        u32 pages = 8;
        MEMiHeapHead* heap_handle = l_vfsys_exp_heap_handle;

        if (i_cache_heap_p != NULL && i_cache_size > 0x2800) {
            MEMiHeapHead* cache_heap_handle;
            cache_heap_handle = NULL;
            cache_heap_handle = MEMCreateExpHeap(i_cache_heap_p, i_cache_size);
            if (cache_heap_handle != NULL) {
                pages = (i_cache_size / 640) / 2;
                heap_handle = cache_heap_handle;
            }
        }
        VFiSysCreateCache(i_handle_p, pages, heap_handle);
    }
}

static void VFiSysFreeCache(VFSys_cache* i_cache_p) {
    if (i_cache_p != NULL) {
        if (i_cache_p->pf_cache_page_p != NULL) {
            VFiSysFreeCommon(i_cache_p->pf_cache_page_p, i_cache_p->heap_handle);
        }
        if (i_cache_p->pf_cache_buf_p != NULL) {
            VFiSysFreeCommon(i_cache_p->pf_cache_buf_p, i_cache_p->heap_handle);
        }
        VFiSysClearCache(i_cache_p);
    }
}

VFErr VFSysSync(s32 i_handle_idx, s32 i_mode) {
    VFSys_handle* handle_p;
    VFSys_drive* drive_p;
    u32 sync_mode;

    handle_p = VFSysGetHandleP(i_handle_idx);
    drive_p = NULL;
    if ((handle_p == NULL) || (handle_p->device_p == NULL)) {
        return VF_ERR_NOT_ALLOCATED_DRV;
    }
    drive_p = &handle_p->drive;
    if (handle_p->drive.pf_disk_p == 0) {
        return VF_ERR_NOT_ALLOCATED_DRV;
    }
    VFiSysSetDeviceErrInfo(handle_p, 0);
    sync_mode = VFSysGetSyncMode(i_handle_idx);
    VFSysSetSyncMode(i_handle_idx, 1U);
    if (VFipf2_sync(handle_p->drive.pf_drv.drive, i_mode) == 0) {
        VFSysSetSyncMode(i_handle_idx, 0U);
        if (dCommon_FlushFromHandleIdx(i_handle_idx, TRUE) == 0) {
            VFSysSetSyncMode(i_handle_idx, sync_mode);
            return VF_ERR_SUCCESS;
        }
        VFSysSetSyncMode(i_handle_idx, sync_mode);
        return VF_ERR_EIO;
    }

    VFSysSetSyncMode(i_handle_idx, 0U);
    dCommon_FlushFromHandleIdx(i_handle_idx, TRUE);

    VFSysSetSyncMode(i_handle_idx, sync_mode);

    return VFipf2_errnum();
}

VFErr VFSysSetSyncMode(s32 i_handle_idx, u32 i_mode) {
    VFSys_handle* handle_p = VFSysGetHandleP(i_handle_idx);

    if (handle_p == NULL || handle_p->drive.pf_disk_p == NULL || handle_p->device_p == NULL) {
        return VF_ERR_NOT_ALLOCATED_DRV;
    }
    if (i_mode == 1 || i_mode == 0) {
        handle_p->device_p->sync_mode = i_mode;
        return VF_ERR_SUCCESS;
    }
    return VF_ERR_SYSTEM;
}

u32 VFSysGetSyncMode(s32 i_handle_idx) {
    VFSys_handle* handle_p = VFSysGetHandleP(i_handle_idx);

    if (handle_p == NULL || handle_p->drive.pf_disk_p == NULL || handle_p->device_p == NULL) {
        return VF_ERR_SUCCESS;
    }
    return handle_p->device_p->sync_mode;
}

VFErr VFSysMountDrv(s32 i_handle_idx, const char* i_prf_file_name_p, void* i_memory_p) {
    VFSys_handle* handle_p = VFSysGetHandleP(i_handle_idx);
    VFSys_drive* drive_p = NULL;
    VFErr err = VF_ERR_SUCCESS;

    if (handle_p == NULL || handle_p->device_p == NULL) {
        return VF_ERR_NOT_ALLOCATED_DRV;
    }
    drive_p = &handle_p->drive;
    if (drive_p->pf_disk_p == NULL) {
        return VF_ERR_NOT_ALLOCATED_DRV;
    }
    if (drive_p->pf_drv.cache != NULL) {
        return VF_ERR_ALREADY_MOUNTED_DRV_NAME;
    }

    VFiSysSetDeviceErrInfo(handle_p, VF_ERR_SUCCESS);
    VFiSysSetCache(drive_p);

    err = VFipdm_open_partition(drive_p->pf_disk_p, 0, &drive_p->pf_part_p);
    if (err == 0) {
        drive_p->pf_drv.p_part = drive_p->pf_part_p;
        drive_p->pf_drv.cache = &drive_p->pf_cache_set;
        switch (handle_p->device_p->type) {
            case 1: {
                drive_p->file_p = i_memory_p;
                break;
            }
            case 0: {
                VFSys_deviceTblEntry* uni_p = l_vfsys_dev_table[i_handle_idx];
                drive_p->file_p = &uni_p->dvd.file_info;
                VFiSysChangeSeparater((char*)drive_p->pf_filename, i_prf_file_name_p, 0x2F, 0x5C, 0xFF);
                break;
            }
            case 2: {
                VFSys_deviceTblEntry* uni_p = l_vfsys_dev_table[i_handle_idx];
                drive_p->file_p = &uni_p->dvd.file_info;
                VFiSysChangeSeparater((char*)drive_p->pf_filename, i_prf_file_name_p, 0x5C, 0x2F, 0xFF);
                break;
            }
            case 3: {
                break;
            }
            default: {
                VFiSysChangeSeparater((char*)drive_p->pf_filename, i_prf_file_name_p, 0x5C, 0x2F, 0xFF);
                break;
            }
        }
        dCommon_setLastDeviceErrorToDisk(&*drive_p->pf_disk_p, 0);
        dCommon_setFileSizeToDisk(drive_p->pf_disk_p, 0x19000);
        return VF_ERR_SUCCESS;
    }
    return VFipf2_errnum();
}

VFErr VFSysUnmountDrv(s32 i_handle_idx, u32 i_mode) {
    VFSys_handle* handle_p = VFSysGetHandleP(i_handle_idx);
    VFSys_drive* drive_p = NULL;
    VFErr err = VF_ERR_SUCCESS;

    if (handle_p == NULL || handle_p->device_p == NULL) {
        return VF_ERR_NOT_ALLOCATED_DRV;
    }
    drive_p = &handle_p->drive;
    if (drive_p->pf_disk_p == NULL) {
        return VF_ERR_NOT_ALLOCATED_DRV;
    }
    VFiSysSetDeviceErrInfo(handle_p, VF_ERR_SUCCESS);

    err = VFipf2_unmount(drive_p->pf_drv.drive, i_mode);
    if ((i_mode == 0 && err != 0) || (i_mode == 1 && err != 0 && err != 1)) {
        return VFipf2_errnum();
    }

    err = VFipf2_detach(drive_p->pf_drv.drive);
    if (err != VF_ERR_SUCCESS) {
        return VFipf2_errnum();
    }

    err = VFipdm_close_partition(drive_p->pf_part_p);
    if (err == VF_ERR_SUCCESS) {
        dCommon_setFileSizeToDisk(drive_p->pf_disk_p, 0);
        dCommon_setLastDeviceErrorToDisk(&*drive_p->pf_disk_p, 0);
        drive_p->pf_drv.p_part = NULL;
        drive_p->pf_drv.cache = NULL;
        drive_p->file_p = NULL;
        VFipf_memset(drive_p->pf_filename, 0, 0xFF);
        return VF_ERR_SUCCESS;
    }

    return VFipf2_errnum();
}

static void VFiSysCreateHandleTable(u32 i_max) {
    if (l_sys_handle_table_p == NULL) {
        l_sys_handle_table_p = VFiSysAlloc(i_max * sizeof(VFSys_handle), 0x20);
    }
}

static void VFiSysClearHandle(VFSys_handle* handle_p) {
    VFipf_memset(handle_p, 0, sizeof(VFSys_handle));
    VFiSysClearCache(&handle_p->drive.cache);
}

static void VFiSysClearHandleAll() {
    VFSys_handle* handle_p = VFSysGetHandleP(0);
    VFSys_handle* handle_end_p = &handle_p[l_vfsys_vol_max];
    for (; handle_p != handle_end_p; handle_p++) {
        VFiSysClearHandle(handle_p);
    }
}

static s32 VFiSysGetFreeHandleIdx() {
    VFSys_handle* handle_p = VFSysGetHandleP(0);
    VFSys_handle* handle_end_p = &handle_p[l_vfsys_vol_max];
    s32 idx = 0;

    for (; handle_p != handle_end_p; handle_p++, idx++) {
        if (handle_p->device_p == NULL) {
            return idx;
        }
    }
    return VF_ERR_SYSTEM;
}

VFSys_handle* VFSysGetHandleP(s32 i_idx) {
    if (i_idx < l_vfsys_vol_max && l_sys_handle_table_p != NULL) {
        return &l_sys_handle_table_p[i_idx];
    }
    return NULL;
}

s32 VFSysHandleP2Idx(VFSys_handle* i_handle_p) {
    if (i_handle_p != NULL) {
        VFSys_handle* handle_p = VFSysGetHandleP(0);
        VFSys_handle* handle_end_p = &handle_p[l_vfsys_vol_max];
        s32 idx = 0;

        for (; handle_p != handle_end_p; handle_p++, idx++) {
            if (i_handle_p == handle_p) {
                return idx;
            }
        }
    }
    return VF_ERR_SYSTEM;
}

VFSys_handle* VFSysVol2HandleP(PF_VOLUME* i_vol_p) {
    if (i_vol_p != NULL) {
        VFSys_handle* handle_p = VFSysGetHandleP(0);
        VFSys_handle* handle_end_p = &handle_p[l_vfsys_vol_max];

        for (; handle_p != handle_end_p; handle_p++) {
            if (handle_p->device_p != NULL && handle_p->drive.pf_drv.drive == i_vol_p->drv_char) {
                return handle_p;
            }
        }
    }
    return NULL;
}

int VFSysPDMDisk2HandleIdx(const PDM_DISK* i_disk_p) {
    int ret_handle_idx = -1;
    if (i_disk_p != NULL) {
        VFSys_handle* handle_p = VFSysGetHandleP(0);
        int idx = 0;

        while (idx < l_vfsys_vol_max) {
            if (i_disk_p == handle_p->drive.pf_disk_p) {
                ret_handle_idx = idx;
                break;
            } else {
                handle_p++;
                idx++;
            }
        }
    }
    return ret_handle_idx;
}

static VFSys_handle* VFiSysGetCurrentHandle() {
    PF_VOLUME* vol_p = VFiPFVOL_GetCurrentVolume();
    return VFSysVol2HandleP(vol_p);
}

static VFSys_handle* VFiSysFile2Handle(PF_FILE* i_file_p) {
    VFSys_handle* ret_p = NULL;
    if (i_file_p != NULL && i_file_p->p_sfd != NULL) {
        PF_VOLUME* vol_p = i_file_p->p_sfd->ffd.p_vol;
        ret_p = VFSysVol2HandleP(vol_p);
    }
    return ret_p;
}

static PDM_INIT_DISK l_dev_init_info_table[PF_DRIVE_COUNT];

static void VFiSysCreateDeviceTable(u32 i_max) {
    if (!l_vfsys_dev_table_init) {
        int i = 0;
        for (; i < i_max; i++) {
            l_vfsys_dev_table[i] = VFiSysAlloc(0xA0, 0x20);
        }
        l_vfsys_dev_table_init = TRUE;
    }
}

static void VFiSysClearDeviceNANDFlash(VFSys_deviceBase* o_nandflash_p);

VFErr VFSysSetDeviceNANDFlash(s32* o_idx_p, void* i_cache_heap_p, u32 i_cache_size) {
    s32 idx = VFiSysGetFreeHandleIdx();
    VFSys_handle* handle_p = VFSysGetHandleP(idx);
    VFErr err = VF_ERR_SUCCESS;

    *o_idx_p = -1;
    if (handle_p == NULL) {
        return VF_ERR_CANNOT_ALLOC_DRV;
    } else {
        PDM_INIT_DISK* init_info_p = &l_dev_init_info_table[idx];

        VFipf_memcpy(init_info_p, &l_dev_nandflash_init_info, 8);
        init_info_p->ui_ext = idx;
        err = VFipdm_open_disk(init_info_p, &handle_p->drive.pf_disk_p);
        if (err == VF_ERR_SUCCESS) {
            VFSys_deviceTblEntry* uni_p = l_vfsys_dev_table[idx];
            VFSys_deviceBase* nandflash_p = &uni_p->nand.device;

            VFiSysClearDeviceNANDFlash(nandflash_p);
            nandflash_p->base.type = 0;
            handle_p->device_p = &nandflash_p->base;
            *o_idx_p = idx;
            VFiSysSetDeviceErrInfo(handle_p, VF_ERR_SUCCESS);
            VFiSysAllocCache(handle_p, i_cache_heap_p, i_cache_size);
            return VF_ERR_SUCCESS;
        }
        VFiSysClearHandle(handle_p);
        return VFipf2_errnum();
    }
}

static void VFiSysClearDeviceSDDirect(VFSys_deviceSD* o_sd_p);

VFErr VFSysSetDeviceSDDirect(s32* o_idx_p, u32 i_slot_no, void* i_cache_heap_p, u32 i_cache_size, VFSDEventCallback i_eventCallback) {
    s32 idx = VFiSysGetFreeHandleIdx();
    VFSys_handle* handle_p = VFSysGetHandleP(idx);
    VFErr err = VF_ERR_SUCCESS;
    PDM_INIT_DISK* init_info_p;

    *o_idx_p = -1;
    if (handle_p == NULL) {
        return VF_ERR_CANNOT_ALLOC_DRV;
    }
    if (l_vfsys_sddirect_init == 0) {
        ISD_InitCard();
        l_vfsys_sddirect_init = 1;
    }
    if (idx != -1) {
        VFSys_deviceTblEntry* uni_p = l_vfsys_dev_table[idx];
        VFSys_deviceSD* sd_p = &uni_p->sd_device;

        VFiSysClearDeviceSDDirect(sd_p);
        sd_p->base.type = 3;
        sd_p->slotNo = i_slot_no;
        sd_p->eventCallback = i_eventCallback;
        handle_p->device_p = &sd_p->base;
    }

    init_info_p = &l_dev_init_info_table[idx];
    VFipf_memcpy(init_info_p, &l_dev_sd_direct_init_info, 8U);

    init_info_p->ui_ext = idx;
    err = VFipdm_open_disk(init_info_p, &handle_p->drive.pf_disk_p);

    if (err == 0) {
        *o_idx_p = idx;
        VFiSysSetDeviceErrInfo(handle_p, 0);
        VFiSysAllocCache(handle_p, i_cache_heap_p, i_cache_size);
        return 0;
    }

    VFiSysClearHandle(handle_p);
    return VFipf2_errnum();
}

VFErr VFSysGetSlotNoSDDirect(s32 i_handle_idx) {
    VFSys_handle* handle_p;
    VFErr ret;
    handle_p = VFSysGetHandleP(i_handle_idx);
    ret = VF_ERR_SYSTEM;
    if ((handle_p != NULL) && (handle_p->device_p != NULL)) {
        VFSys_deviceSD* sd_p;
        sd_p = (VFSys_deviceSD*)handle_p->device_p;
        if (sd_p->base.type == 3) {
            ret = sd_p->slotNo;
        }
    }
    return ret;
}

VFErr VFSysUnsetDevice(s32 i_handle_idx) {
    VFSys_handle* handle_p = VFSysGetHandleP(i_handle_idx);
    VFErr err = VF_ERR_SUCCESS;

    if (handle_p == NULL || handle_p->drive.pf_disk_p == NULL) {
        return VF_ERR_NOT_ALLOCATED_DRV;
    }
    VFiSysSetDeviceErrInfo(handle_p, VF_ERR_SUCCESS);
    err = VFipdm_close_disk(handle_p->drive.pf_disk_p);
    if (err != VF_ERR_SUCCESS) {
        return VFipf2_errnum();
    }

    VFiSysDestroyCache(handle_p);
    VFiSysClearHandle(handle_p);

    return VF_ERR_SUCCESS;
}

static void VFiSysClearDeviceInfo(VFSys_device* o_dev_p) {
    VFipf_memset(o_dev_p, 0, sizeof(VFSys_device));
    o_dev_p->status = 0;
    o_dev_p->sync_mode = 0;
}

static void VFiSysClearDeviceNANDFlash(VFSys_deviceBase* o_nandflash_p) {
    VFiSysClearDeviceInfo(&o_nandflash_p->base);
}

static void VFiSysClearDeviceSDDirect(VFSys_deviceSD* o_sd_p) {
    VFiSysClearDeviceInfo(&o_sd_p->base);
    o_sd_p->slotNo = -1;
}

VFSys_device* VFSysGetDeviceP(s32 i_idx) {
    VFSys_handle* handle_p = VFSysGetHandleP(i_idx);
    if (handle_p != NULL) {
        return handle_p->device_p;
    }
    return NULL;
}

VFSys_device* VFSysPDMDisk2DeviceP(PDM_DISK* disk_p) {
    if (disk_p != NULL) {
        return VFSysGetDeviceP(dCommon_getHandleIdxFromDisk(disk_p));
    }
    return NULL;
}

VFSys_drive* VFSysGetDriveP(s32 i_idx) {
    VFSys_handle* handle_p = VFSysGetHandleP(i_idx);
    if (handle_p != NULL) {
        return &handle_p->drive;
    }
    return NULL;
}

VFSys_drive* VFSysPDMDisk2DriveP(PDM_DISK* disk_p) {
    if (disk_p != NULL) {
        return VFSysGetDriveP(dCommon_getHandleIdxFromDisk(disk_p));
    }
    return NULL;
}

VFErr VFSysGetSDDirectStatus(s32 i_handle_idx, u32* o_status_p) {
    VFSys_handle* handle_p = VFSysGetHandleP(i_handle_idx);
    VFSys_deviceSD* sd_p = NULL;
    SDDev* dev_handle_p = NULL;
    s32 IOSErr = 0;

    if (o_status_p == NULL) {
        return VF_ERR_EINVAL;
    }
    if (handle_p == NULL || handle_p->drive.pf_disk_p == 0 || handle_p->device_p == NULL) {
        return VF_ERR_NOT_ALLOCATED_DRV;
    }
    sd_p = (VFSys_deviceSD*)handle_p->device_p;

    VFiSysSetDeviceErrInfo(handle_p, 0);
    dev_handle_p = &sd_p->drive;

    IOSErr = ISD_GetDeviceStatus(dev_handle_p, o_status_p);
    if (IOSErr != 0) {
        VFiSysSetDeviceErrInfo(handle_p, IOSErr);
        return VF_ERR_EIO;
    }
    return VF_ERR_SUCCESS;
}

static VFErr VFiSysSetCurrentVol(s32 i_handle_idx) {
    VFSys_handle* handle_p = VFSysGetHandleP(i_handle_idx);

    if (handle_p != NULL) {
        PF_VOLUME* vol_p = VFiPFVOL_GetVolumeFromDrvChar(handle_p->drive.pf_drv.drive);
        VFErr err;
        if (vol_p != NULL) {
            VFiPFVOL_SetCurrentVolume(vol_p);
            return VF_ERR_SUCCESS;
        }
        err = VFipf2_errnum();
        if (err == VF_ERR_SUCCESS) {
            return VF_ERR_SYSTEM;
        }
        return err;

    } else {
        return VF_ERR_NOT_ALLOCATED_DRV;
    }
}

VFErr VFSysFormatDrive(s32 i_handle_idx) {
    VFSys_handle* handle_p = VFSysGetHandleP(i_handle_idx);
    VFSys_drive* drive_p = NULL;
    u32 sync_mode;

    if (handle_p == NULL || handle_p->device_p == NULL) {
        return VF_ERR_NOT_ALLOCATED_DRV;
    }
    drive_p = &handle_p->drive;
    if (drive_p->pf_disk_p == NULL) {
        return VF_ERR_NOT_ALLOCATED_DRV;
    }
    VFiSysSetDeviceErrInfo(handle_p, VF_ERR_SUCCESS);

    sync_mode = VFSysGetSyncMode(i_handle_idx);
    VFSysSetSyncMode(i_handle_idx, 1);
    if (VFipf2_format(drive_p->pf_drv.drive, NULL) == 0) {
        VFSysSetSyncMode(i_handle_idx, 0);
        if (dCommon_FlushFromHandleIdx(i_handle_idx, TRUE) == 0) {
            VFSysSetSyncMode(i_handle_idx, sync_mode);
            return VF_ERR_SUCCESS;
        }
        VFSysSetSyncMode(i_handle_idx, sync_mode);
        return VF_ERR_EIO;
    }

    VFSysSetSyncMode(i_handle_idx, 0);
    dCommon_FlushFromHandleIdx(i_handle_idx, TRUE);

    VFSysSetSyncMode(i_handle_idx, sync_mode);
    return VFipf2_errnum();
}

static void VFiSysSetCurrentDeviceErrInfo(VFErr i_err);
static void VFiSysSetFile2DeviceErrInfo(PF_FILE* i_file_p, VFErr i_err);

static PF_FILE* VFiSysCreateFile_common(const char* i_path_p);
PF_FILE* VFSysCreateFile_current(const char* i_path_p);

PF_FILE* VFSysCreateFile(s32 i_handle_idx, const char* i_path_p) {
    VFErr err = VFiSysSetCurrentVol(i_handle_idx);

    if (err == VF_ERR_SUCCESS) {
        VFSysSetDevErrInfo(i_handle_idx, VF_ERR_SUCCESS);
        return VFiSysCreateFile_common(i_path_p);
    }
    VFSysSetLastError(err);
    return NULL;
}

PF_FILE* VFSysCreateFile_current(const char* i_path_p) {
    VFiSysSetCurrentDeviceErrInfo(0);
    return VFiSysCreateFile_common(i_path_p);
}

static PF_FILE* VFiSysCreateFile_common(const char* i_path_p) {
    PF_FILE* ret_p = VFipf2_create(i_path_p, 0);

    if (ret_p == NULL) {
        VFSysSetLastError(VFipf2_errnum());
    }
    return ret_p;
}

static PF_FILE* VFiSysOpenFile_common(const char* i_path_p, const char* i_mode);
PF_FILE* VFSysOpenFile_current(const char* i_path_p, const char* i_mode);

PF_FILE* VFSysOpenFile(s32 i_handle_idx, const char* i_path_p, const char* i_mode) {
    VFErr err = VFiSysSetCurrentVol(i_handle_idx);

    if (err == VF_ERR_SUCCESS) {
        VFSysSetDevErrInfo(i_handle_idx, VF_ERR_SUCCESS);
        return VFiSysOpenFile_common(i_path_p, i_mode);
    }
    VFSysSetLastError(err);
    return NULL;
}

PF_FILE* VFSysOpenFile_current(const char* i_path_p, const char* i_mode) {
    VFiSysSetCurrentDeviceErrInfo(0);
    return VFiSysOpenFile_common(i_path_p, i_mode);
}

static PF_FILE* VFiSysOpenFile_common(const char* i_path_p, const char* i_mode) {
    PF_FILE* ret_p = VFipf2_fopen(i_path_p, i_mode);

    if (ret_p == NULL) {
        VFSysSetLastError(VFipf2_errnum());
    }
    return ret_p;
}

VFErr VFSysCloseFile(PF_FILE* i_file_p) {
    VFiSysSetFile2DeviceErrInfo(i_file_p, VF_ERR_SUCCESS);
    if (VFipf2_fclose(i_file_p) == 0) {
        return VF_ERR_SUCCESS;
    }
    return VFipf2_errnum();
}

VFErr VFSysSeekFile(PF_FILE* i_file_p, s32 i_offset, s32 i_origin) {
    VFiSysSetFile2DeviceErrInfo(i_file_p, VF_ERR_SUCCESS);
    if (VFipf2_fseek(i_file_p, i_offset, i_origin) == 0) {
        return VF_ERR_SUCCESS;
    }
    return VFipf2_errnum();
}

VFErr VFSysReadFile(u32* o_read_size_p, void* o_buf_p, u32 i_size, PF_FILE* i_file_p) {
    PF_INFO info;

    if (o_read_size_p != NULL) {
        *o_read_size_p = 0;
    }
    if (VFipf2_finfo(i_file_p, &info) == 0) {
        u32 file_size = info.file_size;
        u32 offset = i_file_p->cursor.position;
        s32 rest = file_size - offset;
        u32 read_size = i_size;

        if (i_size > rest) {
            VFipf_memset(o_buf_p, 0, i_size);
            read_size = rest;
        }
        VFiSysSetFile2DeviceErrInfo(i_file_p, VF_ERR_SUCCESS);
        if (read_size != 0) {
            if (VFipf2_fread(o_buf_p, read_size, 1, i_file_p) == 1) {
                if (o_read_size_p != NULL) {
                    *o_read_size_p = read_size;
                }
                return VF_ERR_SUCCESS;
            }
            return VFipf2_errnum();
        }
        return VF_ERR_SUCCESS;
    }
    return VFipf2_errnum();
}

VFErr VFSysWriteFile(void* i_buf_p, u32 i_size, PF_FILE* i_file_p) {
    VFiSysSetFile2DeviceErrInfo(i_file_p, VF_ERR_SUCCESS);
    if (VFipf2_fwrite(i_buf_p, i_size, 1, i_file_p) == 1) {
        return VF_ERR_SUCCESS;
    }
    return VFipf2_errnum();
}

static VFErr VFiSysDeleteFile_common(const char* i_path_p);
VFErr VFSysDeleteFile_current(const char* i_path_p);

VFErr VFSysDeleteFile(s32 i_handle_idx, const char* i_path_p) {
    VFErr err = VFiSysSetCurrentVol(i_handle_idx);

    if (err == VF_ERR_SUCCESS) {
        VFSysSetDevErrInfo(i_handle_idx, VF_ERR_SUCCESS);
        return VFiSysDeleteFile_common(i_path_p);
    }
    return err;
}

VFErr VFSysDeleteFile_current(const char* i_path_p) {
    VFiSysSetCurrentDeviceErrInfo(0);
    return VFiSysDeleteFile_common(i_path_p);
}

static VFErr VFiSysDeleteFile_common(const char* i_path_p) {
    if (VFipf2_remove(i_path_p) == 0) {
        return VF_ERR_SUCCESS;
    }
    return VFipf2_errnum();
}

static VFErr VFiSysCreateDir_common(const char* i_dir_name_p);
VFErr VFSysCreateDir_current(const char* i_dir_name_p);

VFErr VFSysCreateDir(s32 i_handle_idx, const char* i_dir_name_p) {
    VFErr err = VFiSysSetCurrentVol(i_handle_idx);

    if (err == VF_ERR_SUCCESS) {
        VFSysSetDevErrInfo(i_handle_idx, VF_ERR_SUCCESS);
        return VFiSysCreateDir_common(i_dir_name_p);
    }
    return err;
}

VFErr VFSysCreateDir_current(const char* i_dir_name_p) {
    VFiSysSetCurrentDeviceErrInfo(0);
    return VFiSysCreateDir_common(i_dir_name_p);
}

static VFErr VFiSysCreateDir_common(const char* i_dir_name_p) {
    if (VFipf2_mkdir(i_dir_name_p) == 0) {
        return VF_ERR_SUCCESS;
    }
    return VFipf2_errnum();
}

static VFErr VFiSysChangeDir_common(const char* i_dir_name_p);
VFErr VFSysChangeDir_current(const char* i_dir_name_p);

VFErr VFSysChangeDir(s32 i_handle_idx, const char* i_dir_name_p) {
    VFErr err = VFiSysSetCurrentVol(i_handle_idx);

    if (err == VF_ERR_SUCCESS) {
        VFSysSetDevErrInfo(i_handle_idx, VF_ERR_SUCCESS);
        return VFiSysChangeDir_common(i_dir_name_p);
    }
    return err;
}

VFErr VFSysChangeDir_current(const char* i_dir_name_p) {
    VFiSysSetCurrentDeviceErrInfo(0);
    return VFiSysChangeDir_common(i_dir_name_p);
}

static VFErr VFiSysChangeDir_common(const char* i_dir_name_p) {
    if (VFipf2_chdir(i_dir_name_p) == 0) {
        return VF_ERR_SUCCESS;
    }
    return VFipf2_errnum();
}

static VFErr VFiSysDeleteDir_common(const char* i_dir_name_p);

VFErr VFSysDeleteDir(s32 i_handle_idx, const char* i_dir_name_p) {
    VFErr err = VFiSysSetCurrentVol(i_handle_idx);

    if (err == VF_ERR_SUCCESS) {
        VFSysSetDevErrInfo(i_handle_idx, VF_ERR_SUCCESS);
        return VFiSysDeleteDir_common(i_dir_name_p);
    }
    return err;
}

VFErr VFSysDeleteDir_current(const char* i_dir_name_p) {
    VFiSysSetCurrentDeviceErrInfo(0);
    return VFiSysDeleteDir_common(i_dir_name_p);
}

static VFErr VFiSysDeleteDir_common(const char* i_dir_name_p) {
    if (VFipf2_rmdir(i_dir_name_p) == 0) {
        return VF_ERR_SUCCESS;
    }
    return VFipf2_errnum();
}

VFErr VFSysGetFileSizeByFd(u32* o_size_p, PF_FILE* i_file_p) {
    *o_size_p = 0;
    if (i_file_p != NULL) {
        PF_INFO info;
        if (VFipf2_finfo(i_file_p, &info) == 0) {
            *o_size_p = info.file_size;
            return VF_ERR_SUCCESS;
        }
        return VFipf2_errnum();
    } else {
        return VF_ERR_SYSTEM;
    }
}

VFErr VFSysGetOffsetByFd(u32* o_offset_p, PF_FILE* i_file_p) {
    *o_offset_p = 0;
    if (i_file_p != NULL) {
        *o_offset_p = i_file_p->cursor.position;
        return VF_ERR_SUCCESS;
    } else {
        return VF_ERR_SYSTEM;
    }
}

VFErr VFSysGetDriveFreeSize(s32 i_handle_idx, u32* o_empty_cluster, u32* o_sector_per_cluster, u32* o_byte_per_sector) {
    VFSys_handle* handle_p = VFSysGetHandleP(i_handle_idx);
    VFSys_drive* drive_p = NULL;
    PF_DEV_INF device_info;
    VFErr err;

    if (handle_p == NULL || handle_p->device_p == NULL) {
        VFSysSetLastError(VF_ERR_NOT_ALLOCATED_DRV);
        return VF_ERR_NOT_ALLOCATED_DRV;
    }
    drive_p = &handle_p->drive;
    if (drive_p->pf_disk_p == NULL) {
        VFSysSetLastError(VF_ERR_NOT_ALLOCATED_DRV);
        return VF_ERR_NOT_ALLOCATED_DRV;
    }
    VFiSysSetDeviceErrInfo(handle_p, VF_ERR_SUCCESS);
    err = VFipf2_devinf(drive_p->pf_drv.drive, &device_info);
    if (err != VF_ERR_SUCCESS) {
        err = VFipf2_errnum();
        VFSysSetLastError(err);
        return err;
    }
    *o_empty_cluster = device_info.ecl;
    *o_sector_per_cluster = device_info.spc;
    *o_byte_per_sector = device_info.bps;

    return VF_ERR_SUCCESS;
}

VFErr VFSysFileSearchFirst_current(PF_DTA* o_dta_p, const char* i_path_p, u8 i_attr);
static VFErr VFiSysFileSearchFirst_common(PF_DTA* o_dta_p, const char* i_path_p, u8 i_attr);

VFErr VFSysFileSearchFirst(PF_DTA* o_dta_p, s32 i_handle_idx, const char* i_path_p, u8 i_attr) {
    VFErr err = VFiSysSetCurrentVol(i_handle_idx);

    if (err == VF_ERR_SUCCESS) {
        VFSysSetDevErrInfo(i_handle_idx, VF_ERR_SUCCESS);
        return VFiSysFileSearchFirst_common(o_dta_p, i_path_p, i_attr);
    }
    return err;
}

VFErr VFSysFileSearchFirst_current(PF_DTA* o_dta_p, const char* i_path_p, u8 i_attr) {
    VFiSysSetCurrentDeviceErrInfo(0);
    return VFiSysFileSearchFirst_common(o_dta_p, i_path_p, i_attr);
}

static VFErr VFiSysFileSearchFirst_common(PF_DTA* o_dta_p, const char* i_path_p, u8 i_attr) {
    if (VFipf2_fsfirst(i_path_p, i_attr, o_dta_p) == 0) {
        return VF_ERR_SUCCESS;
    }
    return VFipf2_errnum();
}

static void VFiSysSetVol2DeviceErrInfo(PF_DTA* i_dta_p, VFErr i_err);

VFErr VFSysFileSearchNext(PF_DTA* i_dta_p) {
    VFiSysSetVol2DeviceErrInfo(i_dta_p, 0);
    if (VFipf2_fsnext(i_dta_p) == 0) {
        return VF_ERR_SUCCESS;
    }
    return VFipf2_errnum();
}

void VFSysSetLastError(VFErr i_err) {
    if (i_err != VF_ERR_SUCCESS) {
        l_vfsys_last_err = i_err;
    }
}

VFErr VFSysGetLastError() {
    return l_vfsys_last_err;
}

static VFErr VFiSysGetLastDeviceError_common(VFSys_handle* i_handle_p);
VFErr VFSysGetLastDeviceError_current();

VFErr VFSysGetLastDeviceError(s32 i_handle_idx) {
    VFSys_handle* handle_p = VFSysGetHandleP(i_handle_idx);

    return VFiSysGetLastDeviceError_common(handle_p);
}

VFErr VFSysGetLastDeviceError_current() {
    VFSys_handle* handle_p = VFiSysGetCurrentHandle();

    return VFiSysGetLastDeviceError_common(handle_p);
}

static VFErr VFiSysGetLastDeviceError_common(VFSys_handle* i_handle_p) {
    if (i_handle_p != NULL && i_handle_p->drive.pf_disk_p != NULL) {
        return dCommon_getLastDeviceErrorFromDisk(i_handle_p->drive.pf_disk_p);
    }
    return VF_ERR_SYSTEM;
}

void VFSysSetDevErrInfo(s32 i_handle_idx, VFErr i_err) {
    VFSys_handle* handle_p = VFSysGetHandleP(i_handle_idx);
    if (handle_p != NULL) {
        VFiSysSetDeviceErrInfo(handle_p, i_err);
    }
}

static void VFiSysSetCurrentDeviceErrInfo(VFErr i_err) {
    VFSys_handle* handle_p = VFiSysGetCurrentHandle();
    VFiSysSetDeviceErrInfo(handle_p, i_err);
}

static void VFiSysSetFile2DeviceErrInfo(PF_FILE* i_file_p, VFErr i_err) {
    VFSys_handle* handle_p = VFiSysFile2Handle(i_file_p);
    VFiSysSetDeviceErrInfo(handle_p, i_err);
}

static void VFiSysSetVol2DeviceErrInfo(PF_DTA* i_dta_p, VFErr i_err) {
    if (i_dta_p != NULL) {
        VFSys_handle* handle_p = VFSysVol2HandleP(i_dta_p->p_vol);
        VFiSysSetDeviceErrInfo(handle_p, i_err);
    }
}

static void VFiSysSetDeviceErrInfo(VFSys_handle* o_handle_p, VFErr i_err) {
    if (o_handle_p != NULL) {
        PDM_DISK* pf_disk_p = o_handle_p->drive.pf_disk_p;
        if (pf_disk_p != NULL) {
            dCommon_setLastDeviceErrorToDisk(pf_disk_p, i_err);
        }
    }
}

VFSysTimeStampCallback VFSysSetTimeStampCallback(VFSysTimeStampCallback i_timestamp_callback) {
    VFSysTimeStampCallback preCallback = l_timeStampCallback;

    l_timeStampCallback = i_timestamp_callback;
    return preCallback;
}

VFSysTimeStampCallback VFSysGetTimeStampCallback() {
    return l_timeStampCallback;
}

static void VFiSysChangeSeparater(char* o_dst_str_p, const char* i_src_str_p, char i_dst_spr, char i_src_spr, s32 i_str_len_max) {
    s32 i;

    VFipf_memset(o_dst_str_p, 0, i_str_len_max);

    for (i = 0; (i < i_str_len_max) && (*i_src_str_p != 0); i_src_str_p++, o_dst_str_p++, i++) {
        if (*i_src_str_p == i_src_spr) {
            *o_dst_str_p = (s16)i_dst_spr;
        } else {
            *o_dst_str_p = *i_src_str_p;
        }
    }
}
