
#include <private/vf/develop/d_vf_sys.h>

#include <revolution/vf.h>

#include <private/vf/develop/d_hash.h>

#include <private/vf/PrFILE2/common/pf_clib.h>

#include <private/vf/PrFILE2/standard/pf_attach.h>
#include <private/vf/PrFILE2/standard/pf_errnum.h>
#include <private/vf/PrFILE2/standard/pf_init_prfile2.h>

#include <revolution/os.h>

static pf_bool /* ? */ l_vf_init = PF_FALSE;

static BOOL l_InitedMutex = FALSE;
static OSMutex l_Mutex;

static char l_vf_drive_work[0x68000] ALIGN32;

static void VFiInitMutex();
static void VFiLockMutex();
static void VFiUnlockMutex();

static char* VFiPath2HandleIndex(s32* o_handle_idx_p, const char* i_path_p);

void VFInit() {
    VFInitEx(l_vf_drive_work, sizeof(l_vf_drive_work));
}

void VFInitEx(void* i_heap_start_address_p, u32 i_size) {
    VFiInitMutex();

    VFiLockMutex();
    {
        if (!l_vf_init) {
            VFSysInit(i_heap_start_address_p, i_size);
            VFipdm_init_diskmanager(0, NULL);
            VFipf2_init_prfile2(0, NULL);
            dHash_InitHashTable();
            VFSysSetTimeStampCallback(NULL);
            l_vf_init = PF_TRUE;
        }
    }
    VFiUnlockMutex();
}

VFErr VFIsAvailable() {
    return l_vf_init == PF_FALSE ? PF_FALSE : PF_TRUE;
}

VFErr VFCreateSystemFileNANDFlashEx(const char* i_sys_file_name_p, u32 i_file_size) {
    VFErr DevErr;

    ASSERTLINE((VFIsAvailable() == (1)), 294);

    VFiLockMutex();
    DevErr = VFSysCreatePrfFileNANDFlashEx(i_sys_file_name_p, i_file_size);
    VFiUnlockMutex();

    return DevErr;
}

static VFErr VFiAttachDriveNANDFlashCommon(const char* i_drive, void* i_cache_address_p, u32 i_cache_size);

VFErr VFAttachDriveNANDFlash(const char* i_drive) {
    return VFiAttachDriveNANDFlashCommon(i_drive, NULL, 0);
}

VFErr VFAttachDriveNANDFlashCache(const char* i_drive, void* i_cache_address_p, u32 i_cache_size) {
    return VFiAttachDriveNANDFlashCommon(i_drive, i_cache_address_p, i_cache_size);
}

static VFErr VFiAttachDriveNANDFlashCommon(const char* i_drive, void* i_cache_address_p, u32 i_cache_size) {
    VFErr err = VF_ERR_ALREADY_ATTACHED_DRV_NAME;
    s32 idx;

    ASSERTLINE((VFIsAvailable() == (1)), 497);

    VFiLockMutex();
    {
        if (dHash_GetArg(i_drive) == -1) {
            err = VFSysSetDeviceNANDFlash(&idx, i_cache_address_p, i_cache_size);
            if (err == VF_ERR_SUCCESS && idx != -1) {
                dHash_SetArg(i_drive, idx);
            }
        }
        VFSysSetLastError(err);
    }
    VFiUnlockMutex();
    return err;
}

static VFErr VFiAttachDriveSDDirectCommon(const char* i_drive, u32 i_slot_no, void* i_cache_address_p, u32 i_cache_size,
                                          VFSDEventCallback i_eventCallback);

VFErr VFAttachDriveSDDirectCacheEx(const char* i_drive, u32 i_slot_no, void* i_cache_address_p, u32 i_cache_size, VFSDEventCallback i_eventCallback) {
    return VFiAttachDriveSDDirectCommon(i_drive, i_slot_no, i_cache_address_p, i_cache_size, i_eventCallback);
}

static VFErr VFiAttachDriveSDDirectCommon(const char* i_drive, u32 i_slot_no, void* i_cache_address_p, u32 i_cache_size,
                                          VFSDEventCallback i_eventCallback) {
    VFErr err = VF_ERR_ALREADY_ATTACHED_DRV_NAME;
    s32 idx;
    s32 slot_no;  // unused, might be left over from VFiMountDriveSDDirectCommon

    ASSERTLINE((VFIsAvailable() == (1)), 1184);

    VFiLockMutex();
    {
        if (dHash_GetArg(i_drive) == -1) {
            err = VFSysSetDeviceSDDirect(&idx, i_slot_no, i_cache_address_p, i_cache_size, i_eventCallback);
            if (err == VF_ERR_SUCCESS && idx != -1) {
                dHash_SetArg(i_drive, idx);
            }
        }
        VFSysSetLastError(err);
    }
    VFiUnlockMutex();
    return err;
}

static VFErr VFiDetachDriveCommon(const char* i_drive, u8 i_set_err) {
    VFErr err;

    ASSERTLINE((VFIsAvailable() == (1)), 1312);

    VFiLockMutex();
    {
        s32 idx = dHash_GetArg(i_drive);

        err = VFSysUnsetDevice(idx);
        if (err == VF_ERR_SUCCESS) {
            dHash_DeleteData(i_drive);
        }
        if (i_set_err) {
            VFSysSetLastError(err);
        }
    }
    VFiUnlockMutex();
    return err;
}

static VFErr VFiActivateDrive(const char* i_drive, const char* i_sys_file_name_p, void* i_memory_p);
static VFErr VFiActivateDriveEx(const char* i_drive, const char* i_sys_file_name_p, void* i_memory_p);

VFErr VFActivateDriveNANDFlash(const char* i_drive, const char* i_sys_file_name_p) {
    return VFiActivateDrive(i_drive, i_sys_file_name_p, NULL);
}

VFErr VFActivateDriveNANDFlashEx(const char* i_drive, const char* i_sys_file_name_p) {
    return VFiActivateDriveEx(i_drive, i_sys_file_name_p, NULL);
}

VFErr VFActivateDriveSDDirect(const char* i_drive) {
    return VFiActivateDrive(i_drive, NULL, NULL);
}

static VFErr VFiActivateDriveCommon(s32 i_handle_idx, const char* i_sys_file_name_p, void* i_memory_p);

static VFErr VFiActivateDrive(const char* i_drive, const char* i_sys_file_name_p, void* i_memory_p) {
    VFErr err;

    ASSERTLINE((VFIsAvailable() == (1)), 1584);

    VFiLockMutex();
    {
        s32 handle_idx = dHash_GetArg(i_drive);
        VFSysSetNandFuncNormal(handle_idx);
        err = VFiActivateDriveCommon(handle_idx, i_sys_file_name_p, i_memory_p);
    }
    VFiUnlockMutex();
    return err;
}

static VFErr VFiActivateDriveEx(const char* i_drive, const char* i_sys_file_name_p, void* i_memory_p) {
    VFErr err;

    ASSERTLINE((VFIsAvailable() == (1)), 1614);

    VFiLockMutex();
    {
        s32 handle_idx = dHash_GetArg(i_drive);
        VFSysSetNandFuncEx(handle_idx);
        err = VFiActivateDriveCommon(handle_idx, i_sys_file_name_p, i_memory_p);
    }
    VFiUnlockMutex();
    return err;
}

static VFErr VFiActivateDriveCommon(s32 i_handle_idx, const char* i_sys_file_name_p, void* i_memory_p) {
    VFErr err;
    {
        err = VFSysCheckExistPrfFile(i_handle_idx, i_sys_file_name_p, i_memory_p);

        if (err != VF_ERR_SUCCESS) {
            VFSysSetLastError(err);
            return err;
        }
        err = VFSysMountDrv(i_handle_idx, i_sys_file_name_p, i_memory_p);
        if (err != VF_ERR_SUCCESS) {
            VFSysSetLastError(err);
            return err;
        }
    }

    {
        VFSys_drive* drive_p = VFSysGetDriveP(i_handle_idx);
        PF_DRV_TBL* drv_tbl[2];

        if (drive_p == NULL) {
            VFSysSetLastError(VF_ERR_CANNOT_ALLOC_DRV);
            return VF_ERR_CANNOT_ALLOC_DRV;
        }
        drv_tbl[0] = &drive_p->pf_drv;
        drv_tbl[1] = NULL;
        err = VFipf2_attach(drv_tbl);
        if (err != VF_ERR_SUCCESS) {
            err = VFipf2_errnum();
            VFSysSetLastError(err);
            VFipdm_close_partition(drive_p->pf_part_p);
            return err;
        }
    }
    return VF_ERR_SUCCESS;
}

static VFErr VFiInactivateDriveCommon(const char* i_drive, u32 i_mode);

VFErr VFInactivateDrive(const char* i_drive) {
    return VFiInactivateDriveCommon(i_drive, 0);
}

VFErr VFInactivateDriveForce(const char* i_drive) {
    return VFiInactivateDriveCommon(i_drive, 1);
}

static VFErr VFiInactivateDriveCommon(const char* i_drive, u32 i_mode) {
    VFErr err;

    ASSERTLINE((VFIsAvailable() == (1)), 1817);

    VFiLockMutex();
    {
        s32 handle_idx = dHash_GetArg(i_drive);
        err = VFSysUnmountDrv(handle_idx, i_mode);
        VFSysSetLastError(err);
    }
    VFiUnlockMutex();
    return err;
}

VFErr VFMountDriveNANDFlash(const char* i_drive, const char* i_sys_file_name_p) {
    VFErr err;

    err = VFAttachDriveNANDFlash(i_drive);
    if (err == VF_ERR_SUCCESS || err == VF_ERR_ALREADY_ATTACHED_DRV_NAME) {
        err = VFActivateDriveNANDFlash(i_drive, i_sys_file_name_p);
        if (err != VF_ERR_SUCCESS && err != VF_ERR_ALREADY_MOUNTED_DRV_NAME) {
            VFiDetachDriveCommon(i_drive, VF_ERR_SUCCESS);
        }
    }
    return err;
}

VFErr VFMountDriveNANDFlashEx(const char* i_drive, const char* i_sys_file_name_p) {
    VFErr err;

    err = VFAttachDriveNANDFlash(i_drive);
    if (err == VF_ERR_SUCCESS || err == VF_ERR_ALREADY_ATTACHED_DRV_NAME) {
        err = VFActivateDriveNANDFlashEx(i_drive, i_sys_file_name_p);
        if (err != VF_ERR_SUCCESS && err != VF_ERR_ALREADY_MOUNTED_DRV_NAME) {
            VFiDetachDriveCommon(i_drive, VF_ERR_SUCCESS);
        }
    }
    return err;
}

VFErr VFMountDriveNANDFlashCacheEx(const char* i_drive, const char* i_sys_file_name_p, void* i_cache_address_p, u32 i_cache_size) {
    VFErr err;

    err = VFAttachDriveNANDFlashCache(i_drive, i_cache_address_p, i_cache_size);
    if (err == VF_ERR_SUCCESS || err == VF_ERR_ALREADY_ATTACHED_DRV_NAME) {
        err = VFActivateDriveNANDFlashEx(i_drive, i_sys_file_name_p);
        if (err != VF_ERR_SUCCESS && err != VF_ERR_ALREADY_MOUNTED_DRV_NAME) {
            VFiDetachDriveCommon(i_drive, VF_ERR_SUCCESS);
        }
    }
    return err;
}

static VFErr VFiMountDriveSDDirectCommon(const char* i_drive, u32 i_slot_no, void* i_cache_address_p, u32 i_cache_size,
                                         VFSDEventCallback i_eventCallback);

VFErr VFMountDriveSDDirectEx(const char* i_drive, u32 i_slot_no, VFSDEventCallback i_eventCallback) {
    return VFiMountDriveSDDirectCommon(i_drive, i_slot_no, NULL, 0, i_eventCallback);
}

static VFErr VFiMountDriveSDDirectCommon(const char* i_drive, u32 i_slot_no, void* i_cache_address_p, u32 i_cache_size,
                                         VFSDEventCallback i_eventCallback) {
    VFErr err;

    ASSERTLINE((VFIsAvailable() == (1)), 2584);

    err = VFAttachDriveSDDirectCacheEx(i_drive, i_slot_no, i_cache_address_p, i_cache_size, i_eventCallback);
    if (err == VF_ERR_ALREADY_ATTACHED_DRV_NAME) {
        VFErr slot_err = VF_ERR_SUCCESS;
        VFiLockMutex();
        {
            s32 idx = dHash_GetArg(i_drive);
            s32 slot_no = VFSysGetSlotNoSDDirect(idx);

            if (slot_no == -1) {
                slot_err = VF_ERR_SYSTEM;
                VFSysSetLastError(VF_ERR_SYSTEM);
            } else if (slot_no != i_slot_no) {
                slot_err = VF_ERR_ALREADY_ATTACHED_DRV_NAME;
                VFSysSetLastError(VF_ERR_ALREADY_ATTACHED_DRV_NAME);
            }
        }
        VFiUnlockMutex();
        if (slot_err != VF_ERR_SUCCESS) {
            return slot_err;
        }
    }
    if (err == VF_ERR_SUCCESS || err == VF_ERR_ALREADY_ATTACHED_DRV_NAME) {
        err = VFActivateDriveSDDirect(i_drive);
        if (err != VF_ERR_SUCCESS && err != VF_ERR_ALREADY_MOUNTED_DRV_NAME) {
            VFiDetachDriveCommon(i_drive, VF_ERR_SUCCESS);
        }
    }
    return err;
}

VFErr VFUnmountDrive(const char* i_drive) {
    VFErr err;

    ASSERTLINE((VFIsAvailable() == (1)), 2705);

    err = VFInactivateDrive(i_drive);
    if (err == VF_ERR_SUCCESS) {
        err = VFiDetachDriveCommon(i_drive, 1);
    }
    return err;
}

VFErr VFUnmountDriveForce(const char* i_drive) {
    VFErr err;

    ASSERTLINE((VFIsAvailable() == (1)), 2753);

    err = VFInactivateDriveForce(i_drive);
    if (err == VF_ERR_SUCCESS) {
        err = VFiDetachDriveCommon(i_drive, 1);
    }
    return err;
}

VFFile* VFCreateFile(const char* i_path_p, u32 i_attr) {
    s32 handle_idx;
    const char* path_p;
    VFFile* pFile = NULL;

    (void)i_attr;

    ASSERTLINE((VFIsAvailable() == (1)), 2892);

    VFiLockMutex();
    {
        path_p = VFiPath2HandleIndex(&handle_idx, i_path_p);
        if (path_p == NULL) {
            VFSysSetLastError(VF_ERR_NOT_ALLOCATED_DRV);
            goto exit;
        }
        if (handle_idx != -1) {
            pFile = VFSysCreateFile(handle_idx, path_p);
        } else {
            pFile = VFSysCreateFile_current(path_p);
        }
    }
exit:
    VFiUnlockMutex();

    return pFile;
}

VFFile* VFOpenFile(const char* i_path_p, const char* i_mode, u32 i_attr) {
    s32 handle_idx;
    const char* path_p;
    VFFile* pFile = NULL;

    (void)i_attr;

    ASSERTLINE((VFIsAvailable() == (1)), 2978);

    VFiLockMutex();
    {
        path_p = VFiPath2HandleIndex(&handle_idx, i_path_p);
        if (path_p == NULL) {
            VFSysSetLastError(VF_ERR_NOT_ALLOCATED_DRV);
            goto exit;
        }
        if (handle_idx != -1) {
            pFile = VFSysOpenFile(handle_idx, path_p, i_mode);
        } else {
            pFile = VFSysOpenFile_current(path_p, i_mode);
        }
    }
exit:
    VFiUnlockMutex();

    return pFile;
}

VFErr VFCloseFile(VFFile* i_file_p) {
    VFErr err;

    ASSERTLINE((VFIsAvailable() == (1)), 3059);

    VFiLockMutex();
    {
        err = VFSysCloseFile(i_file_p);
        VFSysSetLastError(err);
    }
    VFiUnlockMutex();
    return err;
}

VFErr VFSeekFile(VFFile* i_file_p, s32 i_offset, s32 i_origin) {
    VFErr err;

    ASSERTLINE((VFIsAvailable() == (1)), 3088);

    VFiLockMutex();
    {
        err = VFSysSeekFile((PF_FILE*)i_file_p, i_offset, i_origin);
        VFSysSetLastError(err);
    }
    VFiUnlockMutex();
    return err;
}

VFErr VFReadFile(VFFile* i_file_p, void* o_buf_p, u32 i_size, u32* o_read_size_p) {
    VFErr err;

    ASSERTLINE((VFIsAvailable() == (1)), 3119);

    VFiLockMutex();
    {
        err = VFSysReadFile(o_read_size_p, o_buf_p, i_size, i_file_p);
        VFSysSetLastError(err);
    }
    VFiUnlockMutex();
    return err;
}

VFErr VFWriteFile(VFFile* i_file_p, void* i_buf_p, u32 i_size) {
    VFErr err;

    ASSERTLINE((VFIsAvailable() == (1)), 3148);

    VFiLockMutex();
    {
        err = VFSysWriteFile(i_buf_p, i_size, i_file_p);
        VFSysSetLastError(err);
    }
    VFiUnlockMutex();
    return err;
}

VFErr VFDeleteFile(const char* i_path_p) {
    s32 handle_idx;
    const char* path_p;
    VFErr err;

    ASSERTLINE((VFIsAvailable() == (1)), 3175);

    VFiLockMutex();
    {
        path_p = VFiPath2HandleIndex(&handle_idx, i_path_p);
        if (path_p == NULL) {
            err = VF_ERR_NOT_ALLOCATED_DRV;
            goto exit;
        }
        if (handle_idx != -1) {
            err = VFSysDeleteFile(handle_idx, path_p);
        } else {
            err = VFSysDeleteFile_current(path_p);
        }
    exit:
        VFSysSetLastError(err);
    }
    VFiUnlockMutex();
    return err;
}

VFErr VFCreateDir(const char* i_dir_name_p) {
    s32 handle_idx;
    const char* path_p;
    VFErr err;

    ASSERTLINE((VFIsAvailable() == (1)), 3615);

    VFiLockMutex();
    {
        path_p = VFiPath2HandleIndex(&handle_idx, i_dir_name_p);
        if (path_p == NULL) {
            err = VF_ERR_NOT_ALLOCATED_DRV;
            goto exit;
        }
        if (handle_idx != -1) {
            err = VFSysCreateDir(handle_idx, path_p);
        } else {
            err = VFSysCreateDir_current(path_p);
        }
    exit:
        VFSysSetLastError(err);
    }
    VFiUnlockMutex();
    return err;
}

VFErr VFChangeDir(const char* i_dir_name_p) {
    s32 handle_idx;
    const char* path_p;
    VFErr err;

    ASSERTLINE((VFIsAvailable() == (1)), 3695);

    VFiLockMutex();
    {
        path_p = VFiPath2HandleIndex(&handle_idx, i_dir_name_p);
        if (path_p == NULL) {
            err = VF_ERR_NOT_ALLOCATED_DRV;
            goto exit;
        }
        if (handle_idx != -1) {
            err = VFSysChangeDir(handle_idx, path_p);
        } else {
            err = VFSysChangeDir_current(path_p);
        }
    exit:
        VFSysSetLastError(err);
    }
    VFiUnlockMutex();
    return err;
}

VFErr VFDeleteDir(const char* i_dir_name_p) {
    s32 handle_idx;
    const char* path_p;
    VFErr err;

    ASSERTLINE((VFIsAvailable() == (1)), 3775);

    VFiLockMutex();
    {
        path_p = VFiPath2HandleIndex(&handle_idx, i_dir_name_p);
        if (path_p == NULL) {
            err = VF_ERR_NOT_ALLOCATED_DRV;
            goto exit;
        }
        if (handle_idx != -1) {
            err = VFSysDeleteDir(handle_idx, path_p);
        } else {
            err = VFSysDeleteDir_current(path_p);
        }
    exit:
        VFSysSetLastError(err);
    }
    VFiUnlockMutex();
    return err;
}

VFErr VFFormatDrive(const char* i_drive) {
    VFErr err;

    ASSERTLINE((VFIsAvailable() == (1)), 3919);

    VFiLockMutex();
    {
        s32 handle_idx = dHash_GetArg(i_drive);
        err = VFSysFormatDrive(handle_idx);
        VFSysSetLastError(err);
    }
    VFiUnlockMutex();
    return err;
}

s32 VFGetFileSizeByFd(VFFile* i_file_p) {
    u32 size;
    VFErr err;

    ASSERTLINE((VFIsAvailable() == (1)), 3982);

    VFiLockMutex();
    {
        err = VFSysGetFileSizeByFd(&size, (PF_FILE*)i_file_p);
        if (err != VF_ERR_SUCCESS) {
            VFSysSetLastError(err);
        }
    }
    VFiUnlockMutex();

    if (err != VF_ERR_SUCCESS) {
        return VF_ERR_SYSTEM;
    }

    return size > 0x7FFFFFFF ? 0x7FFFFFFF : size;
}

s32 VFGetOffsetByFd(VFFile* i_file_p) {
    u32 offset;
    VFErr err;

    ASSERTLINE((VFIsAvailable() == (1)), 4159);

    VFiLockMutex();
    {
        err = VFSysGetOffsetByFd(&offset, (PF_FILE*)i_file_p);
        if (err != VF_ERR_SUCCESS) {
            VFSysSetLastError(VF_ERR_SYSTEM);
        }
    }
    VFiUnlockMutex();

    if (err != VF_ERR_SUCCESS) {
        return VF_ERR_SYSTEM;
    }

    return offset > 0x7FFFFFFF ? 0x7FFFFFFF : offset;
}

s32 VFGetDriveFreeSize(const char* i_drive) {
    u32 cluster;
    u32 sector;
    u32 byte;
    u64 size;
    VFErr err;

    ASSERTLINE((VFIsAvailable() == (1)), 4217);

    VFiLockMutex();
    {
        if (i_drive != NULL) {
            s32 handle_idx;
            handle_idx = dHash_GetArg(i_drive);
            err = VFSysGetDriveFreeSize(handle_idx, &cluster, &sector, &byte);
        } else {
            err = VF_ERR_SYSTEM;
        }
    }
    VFiUnlockMutex();

    if (err != VF_ERR_SUCCESS) {
        VFSysSetLastError(err);
        return VF_ERR_SYSTEM;
    }

    size = ((u64)cluster * (u64)sector * (u64)byte);

    return size > 0x7FFFFFFF ? 0x7FFFFFFF : size;
}

VFErr VFGetSDDirectStatus(const char* i_drive, u32* o_status_p) {
    VFErr err;

    ASSERTLINE((VFIsAvailable() == (1)), 4390);

    VFiLockMutex();
    {
        s32 handle_idx = dHash_GetArg(i_drive);
        err = VFSysGetSDDirectStatus(handle_idx, o_status_p);
        VFSysSetLastError(err);
    }
    VFiUnlockMutex();

    return err;
}

VFErr VFFileSearchFirst(VFDta* o_dta_p, const char* i_path_p, u8 i_attr) {
    s32 handle_idx;
    const char* path_p;
    VFErr err;

    ASSERTLINE((VFIsAvailable() == (1)), 4538);

    VFiLockMutex();
    {
        path_p = VFiPath2HandleIndex(&handle_idx, i_path_p);
        if (path_p == NULL) {
            err = VF_ERR_NOT_ALLOCATED_DRV;
            goto exit;
        }
        if (handle_idx != -1) {
            err = VFSysFileSearchFirst((PF_DTA*)o_dta_p, handle_idx, path_p, i_attr);
        } else {
            err = VFSysFileSearchFirst_current((PF_DTA*)o_dta_p, path_p, i_attr);
        }
    exit:
        VFSysSetLastError(err);
    }
    VFiUnlockMutex();
    return err;
}

VFErr VFFileSearchNext(VFDta* o_dta_p) {
    VFErr err;

    ASSERTLINE((VFIsAvailable() == (1)), 4621);

    VFiLockMutex();
    {
        err = VFSysFileSearchNext((PF_DTA*)o_dta_p);
        VFSysSetLastError(err);
    }
    VFiUnlockMutex();
    return err;
}

VFErr VFSync(const char* i_drive, s32 i_mode) {
    VFErr err;

    ASSERTLINE((VFIsAvailable() == (1)), 4762);

    VFiLockMutex();
    {
        if (i_drive != NULL) {
            s32 handle_idx = dHash_GetArg(i_drive);
            err = VFSysSync(handle_idx, i_mode);
        } else {
            err = VF_ERR_SYSTEM;
        }
    }
    VFSysSetLastError(err);
    VFiUnlockMutex();

    return err;
}

VFErr VFSetSyncMode(const char* i_drive, u32 i_mode) {
    VFErr err;

    ASSERTLINE((VFIsAvailable() == (1)), 4861);

    VFiLockMutex();
    {
        if (i_drive != NULL) {
            s32 handle_idx = dHash_GetArg(i_drive);
            err = VFSysSetSyncMode(handle_idx, i_mode);
        } else {
            err = VF_ERR_SYSTEM;
        }
    }
    VFSysSetLastError(err);
    VFiUnlockMutex();

    return err;
}

VFErr VFGetLastError() {
    VFErr err;

    ASSERTLINE((VFIsAvailable() == (1)), 4935);

    VFiLockMutex();
    { err = VFSysGetLastError(); }
    VFiUnlockMutex();

    return err;
}

VFErr VFGetLastDeviceError(const char* i_drive) {
    VFErr err;

    ASSERTLINE((VFIsAvailable() == (1)), 4957);

    VFiLockMutex();
    {
        if (i_drive != NULL) {
            s32 handle_idx = dHash_GetArg(i_drive);
            err = VFSysGetLastDeviceError(handle_idx);
        } else {
            err = VFSysGetLastDeviceError_current();
        }
    }
    VFiUnlockMutex();
    return err;
}

typedef struct {
    const char* string;  //  0x00
    VFErr error;         //  0x04
} VF_ErrInfo;

const char* VFGetApiErrorString(VFErr error) {
    VF_ErrInfo* pErrInfo;

    static const VF_ErrInfo ErrInfoTbl[26] = {
        {"VF_ERR_SUCCESS", VF_ERR_SUCCESS},
        {"VF_ERR_EPERM (Operation is not possible)", VF_ERR_EPERM},
        {"VF_ERR_ENOENT (No such file or directory)", VF_ERR_ENOENT},
        {"VF_ERR_EIO (I/O Error(Driver Error))", VF_ERR_EIO},
        {"VF_ERR_ENOEXEC (Not Executable by internal)", VF_ERR_ENOEXEC},
        {"VF_ERR_EBADF (Bad file descriptor)", VF_ERR_EBADF},
        {"VF_ERR_ENOMEM (Not enough system memory)", VF_ERR_ENOMEM},
        {"VF_ERR_EACCES (Permission denied)", VF_ERR_EACCES},
        {"VF_ERR_EBUSY (Can not use system resouces)", VF_ERR_EBUSY},
        {"VF_ERR_EEXIST (File already exists)", VF_ERR_EEXIST},
        {"VF_ERR_EISDIR (find directory when file req)", VF_ERR_EISDIR},
        {"VF_ERR_EINVAL (Invalid argument)", VF_ERR_EINVAL},
        {"VF_ERR_ENFILE (Too many open files(system))", VF_ERR_ENFILE},
        {"VF_ERR_EMFILE (Too many open files(user))", VF_ERR_EMFILE},
        {"VF_ERR_EFBIG (Over file size limit(4GB-1))", VF_ERR_EFBIG},
        {"VF_ERR_ENOSPC (Device out of space)", VF_ERR_ENOSPC},
        {"VF_ERR_ENOLCK (Can not lock the file)", VF_ERR_ENOLCK},
        {"VF_ERR_ENOSYS (Not implement function)", VF_ERR_ENOSYS},
        {"VF_ERR_ENOTEMPTY (Directory is not empty)", VF_ERR_ENOTEMPTY},
        {"VF_ERR_SYSTEM (system error(general error))", VF_ERR_SYSTEM},
        {"VF_ERR_NOT_EXIST_FILE", VF_ERR_NOT_EXIST_FILE},
        {"VF_ERR_CANNOT_ALLOC_DRV", VF_ERR_CANNOT_ALLOC_DRV},
        {"VF_ERR_NOT_ALLOCATED_DRV", VF_ERR_NOT_ALLOCATED_DRV},
        {"VF_ERR_ALREADY_ATTACHED_DRV_NAME", VF_ERR_ALREADY_ATTACHED_DRV_NAME},
        {"VF_ERR_ALREADY_MOUNTED_DRV_NAME", VF_ERR_ALREADY_MOUNTED_DRV_NAME},
        {"VF_ERR_VFF_FILE_FORMAT", VF_ERR_VFF_FILE_FORMAT},
    };
    static const char* qErr = "? error";

    for (pErrInfo = (VF_ErrInfo*)ErrInfoTbl; (u32)pErrInfo < (u32)((u8*)ErrInfoTbl + sizeof(ErrInfoTbl)); pErrInfo++) {
        if (pErrInfo->error == error) {
            return pErrInfo->string;
        }
    }

    return qErr;
}

static char* VFiPath2HandleIndex(s32* o_handle_idx_p, const char* i_path_p) {
    char drive[8];
    const char* str_p = i_path_p;
    s32 idx = 0;
    const char* ret_p = i_path_p;

    *o_handle_idx_p = -1;
    VFipf_memset(drive, 0, 8);
    for (; *str_p != '\0'; str_p++, idx++) {
        if (*str_p == '\\' || *str_p == '/') {
            break;
        }
        if (*str_p == ':') {
            *o_handle_idx_p = dHash_GetArg(drive);
            if (*o_handle_idx_p == -1 || idx > 7) {
                ret_p = NULL;
            } else {
                ret_p = str_p + 1;
            }
            break;
        }
        if (idx < 7) {
            drive[idx] = *str_p;
        }
    }
    return (char*)ret_p;
}

static void VFiInitMutex() {
    if (!l_InitedMutex) {
        OSInitMutex(&l_Mutex);
        l_InitedMutex = TRUE;
    }
}

static void VFiLockMutex() {
    if (l_InitedMutex) {
        OSLockMutex(&l_Mutex);
    }
}

static void VFiUnlockMutex() {
    if (l_InitedMutex) {
        OSUnlockMutex(&l_Mutex);
    }
}
