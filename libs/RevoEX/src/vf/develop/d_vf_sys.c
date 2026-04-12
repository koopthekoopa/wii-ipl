#include <private/vf/develop/d_common.h>
#include <private/vf/develop/d_vf_sys.h>
#include <private/vf/develop/nand_drv.h>
#include <private/vf/develop/sd_drv.h>

#include <private/vf/PrFILE2/common/pf_clib.h>

#include <private/vf/PrFILE2/dskmng/pdm_disk.h>

#include <private/vf/PrFILE2/fatfs/pf_cache.h>

#include <private/vf/PrFILE2/pr_unsorted.h>

#include <private/vf/PrFILE2/standard/pf_detach.h>
#include <private/vf/PrFILE2/standard/pf_errnum.h>
#include <private/vf/PrFILE2/standard/pf_fclose.h>
#include <private/vf/PrFILE2/standard/pf_finfo.h>
#include <private/vf/PrFILE2/standard/pf_fopen.h>
#include <private/vf/PrFILE2/standard/pf_format.h>
#include <private/vf/PrFILE2/standard/pf_fread.h>
#include <private/vf/PrFILE2/standard/pf_fseek.h>
#include <private/vf/PrFILE2/standard/pf_fwrite.h>
#include <private/vf/PrFILE2/standard/pf_getdev.h>
#include <private/vf/PrFILE2/standard/pf_mkdir.h>
#include <private/vf/PrFILE2/standard/pf_remove.h>
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
static s32 l_vfsys_last_err = 0;
static MEMiHeapHead* l_vfsys_exp_heap_handle = NULL;
static BOOL l_vfsys_dev_table_init = FALSE;
static VFSys_handle* l_sys_handle_table_p = NULL;

static PDM_INIT_DISK l_dev_nandflash_init_info = {VFi_nanddrv_init_drv_tbl, 0};

static VFSysTimeStampCallback l_timeStampCallback = NULL;

static void VFSys_change_separater(char* o_dst_str_p, const char* i_src_str_p, char i_dst_spr, char i_src_spr, s32 i_str_len_max) {
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

void VFSysSetLastError(s32 i_err) {
    if (i_err != VF_ERR_SUCCESS) {
        l_vfsys_last_err = i_err;
    }
}

static s32 VFSysGetLastErr() {
    return l_vfsys_last_err;
}

static void* VFSys_alloc_common(u32 i_size, u32 i_align, MEMiHeapHead* i_heap_handle) {
    if (i_heap_handle == NULL) {
        return NULL;
    }
    return MEMAllocFromExpHeapEx(i_heap_handle, i_size, i_align);
}

static void* VFSys_alloc(u32 i_size, u32 i_align) {
    return VFSys_alloc_common(i_size, i_align, l_vfsys_exp_heap_handle);
}

static void VFSys_free_common(void* i_ptr, MEMiHeapHead* i_heap_handle) {
    if (i_heap_handle != NULL) {
        MEMFreeToExpHeap(i_heap_handle, i_ptr);
    }
}

static void VFSys_free(void* i_ptr) {
    VFSys_free_common(i_ptr, l_vfsys_exp_heap_handle);
}

static void VFSys_clear_cache(VFSys_cache* i_cache_p) {
    if (i_cache_p != NULL) {
        i_cache_p->heap_handle = NULL;
        i_cache_p->cache_pages = 0;
        i_cache_p->pf_cache_page_p = NULL;
        i_cache_p->pf_cache_buf_p = NULL;
    }
}

static void VFSys_free_cache(VFSys_cache* i_cache_p) {
    if (i_cache_p != NULL) {
        if (i_cache_p->pf_cache_page_p != NULL) {
            VFSys_free_common(i_cache_p->pf_cache_page_p, i_cache_p->heap_handle);
        }
        if (i_cache_p->pf_cache_buf_p != NULL) {
            VFSys_free_common(i_cache_p->pf_cache_buf_p, i_cache_p->heap_handle);
        }
        VFSys_clear_cache(i_cache_p);
    }
}

static void VFSys_create_cache(VFSys_handle* i_handle_p, u32 i_pages, MEMiHeapHead* i_heap_handle) {
    if (i_handle_p != NULL) {
        VFSys_cache* cache_p = &i_handle_p->drive.cache;
        u32 pages_2 = i_pages * 2;

        if (cache_p->pf_cache_page_p == NULL && cache_p->pf_cache_buf_p == NULL) {
            u32 cache_page_size = pages_2 * 0x28;
            u32 cache_buf_size = pages_2 << 9;

            cache_p->pf_cache_page_p = VFSys_alloc_common(cache_page_size, 4, i_heap_handle);
            cache_p->pf_cache_buf_p = VFSys_alloc_common(cache_buf_size, 4, i_heap_handle);
            if (cache_p->pf_cache_page_p != NULL && cache_p->pf_cache_buf_p != NULL) {
                VFipf_memset(cache_p->pf_cache_page_p, 0, cache_page_size);
                VFipf_memset(cache_p->pf_cache_buf_p, 0, cache_buf_size);
                cache_p->heap_handle = i_heap_handle;
                cache_p->cache_pages = i_pages;
            } else {
                VFSys_free_cache(cache_p);
            }
        }
    }
}

static void VFSys_alloc_cache(VFSys_handle* i_handle_p, void* i_cache_heap_p, u32 i_cache_size) {
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
        VFSys_create_cache(i_handle_p, pages, heap_handle);
    }
}

static void VFSys_destroy_cache(VFSys_handle* i_handle_p) {
    if (i_handle_p != NULL) {
        VFSys_cache* cache_p = &i_handle_p->drive.cache;
        MEMiHeapHead* heap_handle = cache_p->heap_handle;

        VFSys_free_cache(cache_p);
        if (heap_handle != l_vfsys_exp_heap_handle && heap_handle != NULL) {
            MEMDestroyExpHeap(heap_handle);
        }
    }
}

static void VFSys_destroy_cache_all() {
    VFSys_handle* handle_p = VFSysGetHandleP(0);

    if (handle_p != NULL) {
        VFSys_handle* handle_end_p = &handle_p[l_vfsys_vol_max];
        for (; handle_p != handle_end_p; handle_p++) {
            VFSys_destroy_cache(handle_p);
        }
    }
}

static void VFSys_clear_handle(VFSys_handle* o_handle_p) {
    VFipf_memset(o_handle_p, 0, sizeof(VFSys_handle));
    VFSys_clear_cache(&o_handle_p->drive.cache);
}

static void VFSys_clear_all_handle() {
    VFSys_handle* handle_p = VFSysGetHandleP(0);
    VFSys_handle* handle_end_p = &handle_p[l_vfsys_vol_max];
    for (; handle_p != handle_end_p; handle_p++) {
        VFSys_clear_handle(handle_p);
    }
}

static s32 VFSys_get_free_handle_idx() {
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

static void VFSys_create_handle_table(u32 i_max) {
    if (l_sys_handle_table_p == NULL) {
        l_sys_handle_table_p = VFSys_alloc(i_max * sizeof(VFSys_handle), 0x20);
    }
}

static void VFSys_destroy_handle_table() {
    if (l_sys_handle_table_p != NULL) {
        VFSys_destroy_cache_all();
        VFSys_free(l_sys_handle_table_p);
        l_sys_handle_table_p = NULL;
    }
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
    return -1;
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

VFSys_handle* VFSys_file_p_2_handle_p(PF_FILE* i_file_p) {
    VFSys_handle* ret_p = NULL;
    if (i_file_p != NULL && i_file_p->p_sfd != NULL) {
        PF_VOLUME* vol_p = i_file_p->p_sfd->ffd.p_vol;
        ret_p = VFSysVol2HandleP(vol_p);
    }
    return ret_p;
}

static VFSys_handle* VFSys_get_current_handle_p() {
    PF_VOLUME* vol_p = VFiPFVOL_GetCurrentVolume();
    return VFSysVol2HandleP(vol_p);
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

static void VFSys_clear_device_info(VFSys_device* o_dev_p) {
    VFipf_memset(o_dev_p, 0, sizeof(VFSys_device));
    o_dev_p->status = 0;
    o_dev_p->sync_mode = 0;
}

static void VFSys_clear_device_nandflash(VFSys_deviceBase* o_nandflash_p) {
    VFSys_clear_device_info(&o_nandflash_p->base);
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

static void VFSys_set_cache(VFSys_drive* i_drive_p) {
    PF_CACHE_SETTING* cache_p = &i_drive_p->pf_cache_set;
    cache_p->pages = i_drive_p->cache.pf_cache_page_p;
    cache_p->buffers = i_drive_p->cache.pf_cache_buf_p;
    cache_p->num_fat_pages = i_drive_p->cache.cache_pages;
    cache_p->num_data_pages = i_drive_p->cache.cache_pages;
    cache_p->num_fat_buf_size = 1;
}

static void VFSys_create_heap(void* i_start_address_p, u32 i_size) {
    if (i_start_address_p != NULL && i_size != 0 && l_vfsys_exp_heap_handle == NULL) {
        l_vfsys_exp_heap_handle = MEMCreateExpHeap(i_start_address_p, i_size);
    }
}

VFSys_deviceTblEntry* l_vfsys_dev_table[PF_DRIVE_COUNT];

static void VFSys_create_device_table(u32 i_max) {
    if (!l_vfsys_dev_table_init) {
        int i = 0;
        for (; i < i_max; i++) {
            l_vfsys_dev_table[i] = VFSys_alloc(0xA0, 0x20);
        }
        l_vfsys_dev_table_init = TRUE;
    }
}

static void VFSys_destroy_device_table(u32 i_max) {
    if (l_vfsys_dev_table_init) {
        int i = 0;
        for (; i < i_max; i++) {
            if (l_vfsys_dev_table[i] != NULL) {
                VFSys_free(l_vfsys_dev_table[i]);
                l_vfsys_dev_table[i] = NULL;
            }
        }
        l_vfsys_dev_table_init = FALSE;
    }
}

void VFSysInit(void* i_heap_start_address_p, u32 i_size) {
    u32 vol_max = i_size >> 14;
    VFSys_create_heap(i_heap_start_address_p, i_size);
    l_vfsys_vol_max = vol_max > PF_DRIVE_COUNT ? PF_DRIVE_COUNT : vol_max;
    VFSys_create_handle_table(l_vfsys_vol_max);
    VFSys_clear_all_handle();
    VFSys_create_device_table(l_vfsys_vol_max);
    dCommon_initDriveInfo();
    l_vfsys_last_err = VF_ERR_SUCCESS;
    VF_nand_sleep_msec = 2;
    VF_nand_retry_max = 8;
    VFi_InitSDWrok();
}

void VFSysFinalize() {
    VFSys_destroy_handle_table();
    VFSys_destroy_device_table(l_vfsys_vol_max);
    if (l_vfsys_exp_heap_handle != NULL) {
        MEMDestroyExpHeap(&*l_vfsys_exp_heap_handle);
        l_vfsys_exp_heap_handle = NULL;
    }
    l_vfsys_vol_max = 0;
}

static void VFSys_set_device_err_info(VFSys_handle* o_handle_p, s32 i_err) {
    if (o_handle_p != NULL) {
        PDM_DISK* pf_disk_p = o_handle_p->drive.pf_disk_p;
        if (pf_disk_p != NULL) {
            dCommon_setLastDeviceErrorToDisk(pf_disk_p, i_err);
        }
    }
}

void VFSysSetDevErrInfo(s32 i_handle_idx, s32 i_err) {
    VFSys_handle* handle_p = VFSysGetHandleP(i_handle_idx);
    if (handle_p != NULL) {
        VFSys_set_device_err_info(handle_p, i_err);
    }
}

static void VFSys_set_current_device_err_info(s32 i_err) {
    VFSys_handle* handle_p = VFSys_get_current_handle_p();
    VFSys_set_device_err_info(handle_p, i_err);
}

static void VFSys_file_p_2_set_device_err_info(PF_FILE* i_file_p, s32 i_err) {
    VFSys_handle* handle_p = VFSys_file_p_2_handle_p(i_file_p);
    VFSys_set_device_err_info(handle_p, i_err);
}

static PDM_INIT_DISK l_dev_init_info_table[PF_DRIVE_COUNT];

s32 VFSysSetDeviceNANDFlash(s32* o_idx_p, void* i_cache_heap_p, u32 i_cache_size) {
    s32 idx = VFSys_get_free_handle_idx();
    VFSys_handle* handle_p = VFSysGetHandleP(idx);
    s32 err = VF_ERR_SUCCESS;

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

            VFSys_clear_device_nandflash(nandflash_p);
            nandflash_p->base.type = 0;
            handle_p->device_p = &nandflash_p->base;
            *o_idx_p = idx;
            VFSys_set_device_err_info(handle_p, VF_ERR_SUCCESS);
            VFSys_alloc_cache(handle_p, i_cache_heap_p, i_cache_size);
            return VF_ERR_SUCCESS;
        }
        VFSys_clear_handle(handle_p);
        return VFipf2_errnum();
    }
}

s32 VFSysUnsetDevice(s32 i_handle_idx) {
    VFSys_handle* handle_p = VFSysGetHandleP(i_handle_idx);
    s32 err = VF_ERR_SUCCESS;

    if (handle_p == NULL || handle_p->drive.pf_disk_p == NULL) {
        return VF_ERR_NOT_ALLOCATED_DRV;
    }
    VFSys_set_device_err_info(handle_p, VF_ERR_SUCCESS);
    err = VFipdm_close_disk(handle_p->drive.pf_disk_p);
    if (err != VF_ERR_SUCCESS) {
        return VFipf2_errnum();
    }
    VFSys_destroy_cache(handle_p);
    VFSys_clear_handle(handle_p);
    return 0;
}

static s32 VFSysCheckExistPrfFile_nandflash_sub(const char* i_prf_file_name_p, u32 i_handle_idx) {
    s32 NANDError = NAND_RESULT_OK;
    s32 NANDErrorLen = NAND_RESULT_OK;
    NANDFileInfo FileInfo;
    PR_BINHEADER header ALIGN32;
    s32 ret = VF_ERR_NOT_EXIST_FILE;
    char file_name[255];

    VFSys_change_separater(file_name, i_prf_file_name_p, 0x2F, 0x5C, 0xFF);
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

static s32 VFSysCheckExistPrfFile_nandflash(VFSys_device* i_device_p, const char* i_prf_file_name_p, void* i_memory_p, u32 i_handle_idx) {
    (void)i_device_p;
    (void)i_memory_p;
    VFSysCheckExistPrfFile_nandflash_sub(i_prf_file_name_p, i_handle_idx);
}

static s32 VFSysCheckExistPrfFile_ram_sub(void* i_memory_p) {
    if (dCommon_IsPrfFile(i_memory_p)) {
        return VF_ERR_SUCCESS;
    }
    return VF_ERR_VFF_FILE_FORMAT;
}

static s32 VFSysCheckExistPrfFile_ram(VFSys_device* i_device_p, const char* i_prf_file_name_p, void* i_memory_p, u32 i_handle_idx) {
    (void)i_device_p;
    (void)i_prf_file_name_p;
    (void)i_handle_idx;
    VFSysCheckExistPrfFile_ram_sub(i_memory_p);
}

static s32 VFSysCheckExistPrfFile_dvd_sub(const char* i_prf_file_name_p) {
    int DVDError = DVD_RESULT_OK;
    DVDFileInfo FileInfo;
    PR_BINHEADER header ALIGN32;
    s32 ret = VF_ERR_NOT_EXIST_FILE;
    char file_name[255];

    VFSys_change_separater(file_name, i_prf_file_name_p, 0x5C, 0x2F, 0xFF);
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

static s32 VFSysCheckExistPrfFile_dvd(VFSys_device* i_device_p, const char* i_prf_file_name_p, void* i_memory_p, u32 i_handle_idx) {
    (void)i_device_p;
    (void)i_memory_p;
    (void)i_handle_idx;
    return VFSysCheckExistPrfFile_dvd_sub(i_prf_file_name_p);
}

typedef s32 (*VF_Check_proc)(VFSys_device*, const char*, void*, u32);

// clang-format off
static VF_Check_proc l_check_exist_file[4] = {
    VFSysCheckExistPrfFile_nandflash,
    VFSysCheckExistPrfFile_ram,
    VFSysCheckExistPrfFile_dvd,
    NULL
};
// clang-format on

s32 VFSysCheckExistPrfFile(s32 i_handle_idx, const char* i_prf_file_name_p, void* i_memory_p) {
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

s32 VFSysCreatePrfFileNANDFlashEx(const char* i_prf_file_name_p, u32 i_file_size) {
    char file_name[255];

    VFSys_change_separater(file_name, i_prf_file_name_p, 0x2F, 0x5C, 0xFF);
    if (VFSysCheckExistPrfFile_nandflash_sub(file_name, -11) == VF_ERR_NOT_EXIST_FILE) {
        return NAND_CreatePrfFileEx(i_file_size, file_name, 0x100);
    }
    return 0;
}

s32 VFSysMountDrv(s32 i_handle_idx, const char* i_prf_file_name_p, void* i_memory_p) {
    VFSys_handle* handle_p = VFSysGetHandleP(i_handle_idx);
    VFSys_drive* drive_p = NULL;
    s32 err = VF_ERR_SUCCESS;

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
    VFSys_set_device_err_info(handle_p, VF_ERR_SUCCESS);
    VFSys_set_cache(drive_p);
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
                VFSys_change_separater((char*)drive_p->pf_filename, i_prf_file_name_p, 0x2F, 0x5C, 0xFF);
                break;
            }
            case 2: {
                VFSys_deviceTblEntry* uni_p = l_vfsys_dev_table[i_handle_idx];
                drive_p->file_p = &uni_p->dvd.file_info;
                VFSys_change_separater((char*)drive_p->pf_filename, i_prf_file_name_p, 0x5C, 0x2F, 0xFF);
                break;
            }
            case 3: {
                break;
            }
            default: {
                VFSys_change_separater((char*)drive_p->pf_filename, i_prf_file_name_p, 0x5C, 0x2F, 0xFF);
                break;
            }
        }
        dCommon_setLastDeviceErrorToDisk(&*drive_p->pf_disk_p, 0);
        dCommon_setFileSizeToDisk(drive_p->pf_disk_p, 0x19000);
        return VF_ERR_SUCCESS;
    }
    return VFipf2_errnum();
}

s32 VFSysUnmountDrv(s32 i_handle_idx, u32 i_mode) {
    VFSys_handle* handle_p = VFSysGetHandleP(i_handle_idx);
    VFSys_drive* drive_p = NULL;
    s32 err = VF_ERR_SUCCESS;

    if (handle_p == NULL || handle_p->device_p == NULL) {
        return VF_ERR_NOT_ALLOCATED_DRV;
    }
    drive_p = &handle_p->drive;
    if (drive_p->pf_disk_p == NULL) {
        return VF_ERR_NOT_ALLOCATED_DRV;
    }
    VFSys_set_device_err_info(handle_p, VF_ERR_SUCCESS);
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

static s32 VFSys_set_current_vol(s32 i_handle_idx) {
    VFSys_handle* handle_p = VFSysGetHandleP(i_handle_idx);

    if (handle_p != NULL) {
        PF_VOLUME* vol_p = VFiPFVOL_GetVolumeFromDrvChar(handle_p->drive.pf_drv.drive);
        s32 err;
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

static PF_FILE* VFSysOpenFile_common(const char* i_path_p, const char* i_mode) {
    PF_FILE* ret_p = VFipf2_fopen(i_path_p, i_mode);

    if (ret_p == NULL) {
        VFSysSetLastError(VFipf2_errnum());
    }
    return ret_p;
}

PF_FILE* VFSysOpenFile_current(const char* i_path_p, const char* i_mode) {
    VFSys_set_current_device_err_info(0);
    return VFSysOpenFile_common(i_path_p, i_mode);
}

PF_FILE* VFSysOpenFile(s32 i_handle_idx, const char* i_path_p, const char* i_mode) {
    s32 err = VFSys_set_current_vol(i_handle_idx);

    if (err == VF_ERR_SUCCESS) {
        VFSysSetDevErrInfo(i_handle_idx, VF_ERR_SUCCESS);
        return VFSysOpenFile_common(i_path_p, i_mode);
    }
    VFSysSetLastError(err);
    return NULL;
}

s32 VFSysCloseFile(PF_FILE* i_file_p) {
    VFSys_file_p_2_set_device_err_info(i_file_p, VF_ERR_SUCCESS);
    if (VFipf2_fclose(i_file_p) == 0) {
        return VF_ERR_SUCCESS;
    }
    return VFipf2_errnum();
}

s32 VFSysSeekFile(PF_FILE* i_file_p, s32 i_offset, s32 i_origin) {
    VFSys_file_p_2_set_device_err_info(i_file_p, VF_ERR_SUCCESS);
    if (VFipf2_fseek(i_file_p, i_offset, i_origin) == 0) {
        return VF_ERR_SUCCESS;
    }
    return VFipf2_errnum();
}

s32 VFSysReadFile(u32* o_read_size_p, void* o_buf_p, u32 i_size, PF_FILE* i_file_p) {
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
        VFSys_file_p_2_set_device_err_info(i_file_p, VF_ERR_SUCCESS);
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

s32 VFSysWriteFile(void* i_buf_p, u32 i_size, PF_FILE* i_file_p) {
    VFSys_file_p_2_set_device_err_info(i_file_p, VF_ERR_SUCCESS);
    if (VFipf2_fwrite(i_buf_p, i_size, 1, i_file_p) == 1) {
        return VF_ERR_SUCCESS;
    }
    return VFipf2_errnum();
}

static s32 VFSysDeleteFile_common(const char* i_path_p) {
    if (VFipf2_remove(i_path_p) == 0) {
        return VF_ERR_SUCCESS;
    }
    return VFipf2_errnum();
}

s32 VFSysDeleteFile_current(const char* i_path_p) {
    VFSys_set_current_device_err_info(0);
    return VFSysDeleteFile_common(i_path_p);
}

s32 VFSysDeleteFile(s32 i_handle_idx, const char* i_path_p) {
    s32 err = VFSys_set_current_vol(i_handle_idx);

    if (err == VF_ERR_SUCCESS) {
        VFSysSetDevErrInfo(i_handle_idx, VF_ERR_SUCCESS);
        return VFSysDeleteFile_common(i_path_p);
    }
    return err;
}

static s32 VFSysCreateDir_common(const char* i_dir_name_p) {
    if (VFipf2_mkdir(i_dir_name_p) == 0) {
        return VF_ERR_SUCCESS;
    }
    return VFipf2_errnum();
}

s32 VFSysCreateDir_current(const char* i_dir_name_p) {
    VFSys_set_current_device_err_info(0);
    return VFSysCreateDir_common(i_dir_name_p);
}

s32 VFSysCreateDir(s32 i_handle_idx, const char* i_dir_name_p) {
    s32 err = VFSys_set_current_vol(i_handle_idx);

    if (err == VF_ERR_SUCCESS) {
        VFSysSetDevErrInfo(i_handle_idx, VF_ERR_SUCCESS);
        return VFSysCreateDir_common(i_dir_name_p);
    }
    return err;
}

s32 VFSysGetFileSizeByFd(s32* o_size_p, PF_FILE* i_file_p) {
    *o_size_p = -1;
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

s32 VFSysGetDriveFreeSize(s32 i_handle_idx) {
    VFSys_handle* handle_p = VFSysGetHandleP(i_handle_idx);
    VFSys_drive* drive_p = NULL;
    PF_DEV_INF device_info;
    s32 err = VF_ERR_SUCCESS;

    if (handle_p == NULL || handle_p->device_p == NULL) {
        VFSysSetLastError(VF_ERR_NOT_ALLOCATED_DRV);
        return VF_ERR_SYSTEM;
    }
    drive_p = &handle_p->drive;
    if (drive_p->pf_disk_p == NULL) {
        VFSysSetLastError(VF_ERR_NOT_ALLOCATED_DRV);
        return VF_ERR_SYSTEM;
    }
    VFSys_set_device_err_info(handle_p, VF_ERR_SUCCESS);
    err = VFipf2_devinf(drive_p->pf_drv.drive, &device_info);
    if (err != VF_ERR_SUCCESS) {
        VFSysSetLastError(VFipf2_errnum());
        return VF_ERR_SYSTEM;
    }
    return device_info.spc * (device_info.ecl * device_info.bps);
}

s32 VFSysGetLastError() {
    return VFSysGetLastErr();
}

static s32 VFSysGetLastDeviceError_common(VFSys_handle* i_handle_p) {
    if (i_handle_p != NULL && i_handle_p->drive.pf_disk_p != NULL) {
        return dCommon_getLastDeviceErrorFromDisk(i_handle_p->drive.pf_disk_p);
    }
    return VF_ERR_SYSTEM;
}

s32 VFSysGetLastDeviceError_current() {
    VFSys_handle* handle_p = VFSys_get_current_handle_p();

    return VFSysGetLastDeviceError_common(handle_p);
}

s32 VFSysGetLastDeviceError(s32 i_handle_idx) {
    VFSys_handle* handle_p = VFSysGetHandleP(i_handle_idx);

    return VFSysGetLastDeviceError_common(handle_p);
}

void VFSysSetNandFuncNormal(u32 i_handle_idx) {
    (void)i_handle_idx;
    VFi_NandSetNANDFuncNormal(i_handle_idx);
}

void VFSysSetNandFuncEx(u32 i_handle_idx) {
    (void)i_handle_idx;
    VFi_NandSetNANDFuncEx(i_handle_idx);
}

s32 VFSysFormatDrive(s32 i_handle_idx) {
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
    VFSys_set_device_err_info(handle_p, VF_ERR_SUCCESS);
    sync_mode = VFSysGetSyncMode(i_handle_idx);
    VFSysSetSyncMode(i_handle_idx, 1);
    if (VFipf2_format(drive_p->pf_drv.drive, NULL) == 0) {
        VFSysSetSyncMode(i_handle_idx, 0);
        if (dCommon_FlushFromHandleIdx(i_handle_idx, 1) == 0) {
            VFSysSetSyncMode(i_handle_idx, sync_mode);
            return VF_ERR_SUCCESS;
        }
        VFSysSetSyncMode(i_handle_idx, sync_mode);
        return VF_ERR_EIO;
    }
    VFSysSetSyncMode(i_handle_idx, 0);
    dCommon_FlushFromHandleIdx(i_handle_idx, 1);
    VFSysSetSyncMode(i_handle_idx, sync_mode);
    return VFipf2_errnum();
}

s32 VFSysSetSyncMode(s32 i_handle_idx, u32 i_mode) {
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

VFSysTimeStampCallback VFSysSetTimeStampCallback(VFSysTimeStampCallback i_timestamp_callback) {
    VFSysTimeStampCallback preCallback = l_timeStampCallback;

    l_timeStampCallback = i_timestamp_callback;
    return preCallback;
}

VFSysTimeStampCallback VFSysGetTimeStampCallback() {
    return l_timeStampCallback;
}
