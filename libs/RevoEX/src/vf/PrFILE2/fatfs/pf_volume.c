#include <private/vf/PrFILE2/fatfs/pf_volume.h>

#include <private/vf/PrFILE2/local/pf_cp932.h>

#include <private/vf/PrFILE2/fatfs/pf_dir.h>
#include <private/vf/PrFILE2/fatfs/pf_file.h>

#include <private/vf/PrFILE2/common/pf_clib.h>
#include <private/vf/PrFILE2/system/pf_filelock.h>

#include <private/vf/PrFILE2/driver/pf_driver.h>
#include <private/vf/PrFILE2/system/pf_system.h>

PF_VOLUME_SET VFipf_vol_set;

static pf_u32 VFiPFVOL_CheckContextRegistered(pf_s32 context_id) {
    pf_u32 i;

    for (i = 1; i < 1; i++) {
        if ((VFipf_vol_set.context[i].stat &= 1) != 0 && context_id == VFipf_vol_set.context[i].context_id) {
            return 1;
        }
    }
    return 0;
}

static pf_s32 VFiPFVOL_SetUpVolumeForMount(PF_VOLUME* p_vol) {
    return 0;
}

static pf_s32 VFiPFVOL_InitCurrentDir(PF_VOLUME* p_vol) {
    pf_s32 err;
    pf_s32 context_id;
    pf_u32 i;

    if ((p_vol->flags & 0x02) == 0) {
        return 9;
    }
    VFiPFSYS_GetCurrentContextID(&context_id);
    p_vol->current_dir[0].stat |= 0x01;
#ifndef PF_IPL_BUILD
    if (VFiPFVOL_CheckContextRegistered(context_id) != 0) {
        p_vol->tail_entry.tracker_size |= 0x01;
        p_vol->tail_entry.tracker_buff[0] = context_id;
    }
#endif

    for (i = 0; i < 1; i++) {
        err = VFiPFENT_GetRootDir(p_vol, &p_vol->current_dir[i].directory);
        if (err != 0) {
            return err;
        }
    }
    return 0;
}

static pf_s32 VFiPFVOL_FinalizeCurrentDir(PF_VOLUME* p_vol) {
    pf_u32 i;

    if ((p_vol->flags & 0x02) == 0) {
        return 9;
    }

    for (i = 0; i < 1; i++) {
        p_vol->current_dir[i].stat &= 0;
    }
    return 0;
}

static pf_s32 VFiPFVOL_DoMountVolume(PF_VOLUME* p_vol) {
    pf_s32 err;

    VFiPFVOL_SetUpVolumeForMount(p_vol);
    err = VFiPFDRV_mount(p_vol);
    if (err != 0) {
        return err;
    }
    if (p_vol->bpb.bytes_per_sector == 0 || (p_vol->bpb.bytes_per_sector & 0x1FF) != 0) {
        return 15;
    }
    err = VFiPFCACHE_InitCaches(p_vol);
    if (err != 0) {
        return err;
    }
    p_vol->flags |= (pf_u16)0x02;
    err = VFiPFVOL_InitCurrentDir(p_vol);
    if (err == 0 && (p_vol->flags & 0x010) != 0) {
        err = VFiPFDRV_format(p_vol, p_vol->format_param);
        if (err == 0 && (p_vol->flags & 0x20) == 0) {
            err = VFiPFFAT_InitFATRegion(p_vol);
            if (err == 0) {
                err = VFiPFENT_MakeRootDir(p_vol);
            }
        }
    }
    if (err != 0) {
        p_vol->flags &= ~0x02;
    }
    return err;
}

static pf_s32 VFiPFVOL_DoUnmountVolume(PF_VOLUME* p_vol, pf_u32 mode) {
    pf_s32 err;

    err = VFiPFDRV_unmount(p_vol, mode);
    if (err != 0) {
        return err;
    }
    VFiPFVOL_FinalizeCurrentDir(p_vol);
    p_vol->flags &= ~0x02;
    return 0;
}

static void VFiPFVOL_UnmountVolumeByEject(PF_VOLUME* p_vol) {
    VFiPFFILE_FinalizeAllFiles(p_vol);
    VFiPFDIR_FinalizeAllDirs(p_vol);
    VFiPFCACHE_FreeAllCaches(p_vol);
    VFiPFVOL_DoUnmountVolume(p_vol, 1);
    VFipf_vol_set.num_mounted_volumes--;
}

static pf_s32 VFiPFVOL_p_attach(PF_VOLUME* p_vol, PF_DRV_TBL* p_drv, pf_s16 vol_idx) {
    pf_s32 err;

    VFipf_memset(p_vol, 0, sizeof(PF_VOLUME));
    p_vol->p_part = p_drv->p_part;
    p_vol->drv_char = vol_idx + 'A';
#ifndef PF_IPL_BUILD
    p_vol->tail_entry.tracker_size = 1;
    p_vol->tail_entry.tracker_bits = p_vol->tail_entry.tracker_buff;
#endif
    err = VFiPFDRV_init(p_vol);
    if (err != 0) {
        return err;
    }
    VFiPFCACHE_SetCache(p_vol, p_drv->cache->pages, p_drv->cache->buffers, p_drv->cache->num_fat_pages, p_drv->cache->num_data_pages);
    VFiPFCACHE_SetFATBufferSize(p_vol, p_drv->cache->num_fat_buf_size);
    VFiPFCACHE_SetDataBufferSize(p_vol, p_drv->cache->num_data_buf_size);
    return 0;
}

static pf_s32 VFiPFVOL_p_detach(PF_VOLUME* p_vol) {
    pf_s32 err;

    err = VFiPFDRV_finalize(p_vol);
    if (err != 0) {
        return err;
    }
    return 0;
}

static pf_s32 VFiPFVOL_p_mount(PF_VOLUME* p_vol) {
    pf_s32 err;

    if ((p_vol->flags & 0x02) == 0) {
        err = VFiPFVOL_DoMountVolume(p_vol);
        if (err != 0) {
            return err;
        }
        p_vol->fsi_flag &= ~0x01;
        p_vol->fsi_flag &= ~0x02;
        p_vol->fsi_flag &= ~0x04;
        VFipf_vol_set.num_mounted_volumes++;
    }
    return 0;
}

static pf_s32 VFiPFVOL_p_unmount(PF_VOLUME* p_vol, pf_u32 mode) {
    pf_s32 err;
    pf_s32 err2;

    err2 = 0;
    if ((p_vol->flags & 0x02) == 0) {
        return 9;
    }
    VFiPFFILE_FinalizeAllFiles(p_vol);
    VFiPFDIR_FinalizeAllDirs(p_vol);
    err = VFiPFCACHE_FlushAllCaches(p_vol);
    if (err != 0) {
        err2 = err;
    }
    if (err == 0 || (mode & 0x01) != 0) {
        VFiPFCACHE_FreeAllCaches(p_vol);
        err = VFiPFVOL_DoUnmountVolume(p_vol, mode);
        if (err != 0 && err2 == 0) {
            err2 = err;
        }
    }
    if ((err2 == 0) || (mode & 0x01) != 0) {
        VFipf_vol_set.num_mounted_volumes--;
    }
    return err2;
}

static pf_s32 VFiPFVOL_p_format(PF_VOLUME* p_vol, const pf_u8* param) {
    pf_s32 err;
    pf_u32 ecl;
    pf_bool is_mounted = PF_FALSE;
    pf_u32 save_cache_mode = 0;
    pf_u16 save_fsi_flag = 0;

    if (p_vol == PF_NULL) {
        return 10;
    }
    if (VFiPFDRV_IsWProtected(p_vol) != 0) {
        return 11;
    }
    err = VFiPFDRV_format(p_vol, param);
    if (err != 0) {
        return err;
    }
    if ((p_vol->flags & 0x02) != 0) {
        is_mounted = PF_TRUE;
        save_cache_mode = p_vol->cache.mode;
        save_fsi_flag = p_vol->fsi_flag;
        VFiPFCACHE_FreeAllCaches(p_vol);
        err = VFiPFVOL_p_unmount(p_vol, 0);
        if (err != 0) {
            return err;
        }
    }
    err = VFiPFVOL_p_mount(p_vol);
    if (err != 0) {
        return err;
    }
    if (is_mounted == PF_TRUE) {
        p_vol->cache.mode = save_cache_mode;
        p_vol->fsi_flag = save_fsi_flag;
    }
    if ((p_vol->flags & 0x20) != 0) {
        if (p_vol->bpb.fat_type == FAT_32 && (p_vol->fsi_flag & 0x02) != 0) {
            p_vol->fsi_flag |= 0x04;
            VFiPFFAT_RefreshFSINFO(p_vol);
        } else {
            p_vol->fsi_flag &= ~0x04;
            if (p_vol->bpb.fat_type != FAT_32) {
                p_vol->fsi_flag &= ~0x01;
                p_vol->fsi_flag &= ~0x02;
            }
            err = VFiPFFAT_CountFreeClusters(p_vol, &ecl);
            if (err != 0) {
                return err;
            }
        }
        return 0;
    }
    err = VFiPFFAT_InitFATRegion(p_vol);
    if (err != 0) {
        return err;
    }
    err = VFiPFENT_MakeRootDir(p_vol);
    if (err != 0) {
        return err;
    }
    if (p_vol->bpb.fat_type != FAT_32) {
        p_vol->fsi_flag &= ~0x01;
        p_vol->fsi_flag &= ~0x02;
    }
    if (p_vol->bpb.fat_type == FAT_32 && (p_vol->fsi_flag & 0x02) != 0) {
        err = VFiPFFAT_RefreshFSINFO(p_vol);
        if (err != 0) {
            return err;
        }
    }
    return 0;
}

static pf_s32 VFiPFVOL_p_setcode(PF_CHARCODE* p_codeset) {
    VFipf_vol_set.codeset.oem2unicode = p_codeset->oem2unicode;
    VFipf_vol_set.codeset.unicode2oem = p_codeset->unicode2oem;
    VFipf_vol_set.codeset.oem_char_width = p_codeset->oem_char_width;
    VFipf_vol_set.codeset.is_oem_mb_char = p_codeset->is_oem_mb_char;
    VFipf_vol_set.codeset.unicode_char_width = p_codeset->unicode_char_width;
    VFipf_vol_set.codeset.is_unicode_mb_char = p_codeset->is_unicode_mb_char;

    return 0;
}

static pf_s32 VFiPFVOL_CheckMediaInsert(PF_VOLUME* p_vol) {
    pf_s32 err;

    if (VFiPFDRV_IsInserted(p_vol) != 0) {
        if (VFiPFDRV_IsDetected(p_vol) != 0) {
            if ((p_vol->flags & 0x02) != 0) {
                VFiPFVOL_UnmountVolumeByEject(p_vol);
            }
            err = VFiPFVOL_p_mount(p_vol);
            if (err != 0) {
                return err;
            }
        }
    } else {
        if ((p_vol->flags & 0x02) != 0) {
            if (VFiPFDRV_IsDetected(p_vol) != 0) {
                VFiPFVOL_UnmountVolumeByEject(p_vol);
            }
            p_vol->flags &= ~0x02;
        }
    }
    return 0;
}

// DEBUG NON MATCH
pf_s32 VFiPFVOL_InitModule(pf_u32 config /* r29 */, void* param /* r1+0x08 */) {
    pf_s32 vol_idx;       // r31
    PF_CHARCODE codeset;  // r1+0x010
    pf_u32 i;             // r30

    if ((config & 0xFFFCFFFF) != 0) {
        return VFipf_vol_set.last_error = 10;
    }
    if ((config & 0x30000) == 0x30000) {
        return VFipf_vol_set.last_error = 10;
    }
    if ((config & 0x10000) != 0) {
        VFipf_vol_set.config |= 0x10000;
    } else {
        VFipf_vol_set.config &= ~0x10000;
    }
    for (i = 0; i < 1; i++) {
        VFipf_vol_set.current_vol[i].p_vol = &VFipf_vol_set.volumes[0];
    }
    VFipf_vol_set.current_vol[0].stat |= 0x01;
    VFipf_vol_set.num_attached_drives = 0;
    VFipf_vol_set.num_mounted_volumes = 0;
    if ((config & 0x10000) != 0) {
        VFipf_vol_set.config |= 0x10000;
    } else {
        VFipf_vol_set.config &= ~0x10000;
    }
    VFipf_vol_set.param = param;
    VFipf_vol_set.last_error = 0;
    VFipf_vol_set.last_driver_error = 0;
    VFipf_vol_set.setting &= ~0x3;
    VFipf_vol_set.setting = 1;
    codeset.oem2unicode = VFiPFCODE_CP932_OEM2Unicode;
    codeset.unicode2oem = VFiPFCODE_CP932_Unicode2OEM;
    codeset.oem_char_width = VFiPFCODE_CP932_OEMCharWidth;
    codeset.is_oem_mb_char = VFiPFCODE_CP932_isOEMMBchar;
    codeset.unicode_char_width = VFiPFCODE_CP932_UnicodeCharWidth;
    codeset.is_unicode_mb_char = VFiPFCODE_CP932_isUnicodeMBchar;
    VFiPFVOL_p_setcode((PF_CHARCODE*)&codeset);
    for (vol_idx = 0; vol_idx < PF_DRIVE_COUNT; vol_idx++) {
        VFipf_memset(&VFipf_vol_set.volumes[vol_idx], 0, 0x01898);
    }
    VFiPF_InitLockFile();
    return 0;
}

pf_s32 VFiPFVOL_CheckForRead(PF_VOLUME* p_vol) {
    pf_s32 err;

    if (p_vol == PF_NULL) {
        return 10;
    }
    err = VFiPFVOL_CheckMediaInsert(p_vol);
    if (err != 0) {
        return err;
    }
    if ((p_vol->flags & 0x02) == 0) {
        return 9;
    }
    return 0;
}

pf_s32 VFiPFVOL_CheckForWrite(PF_VOLUME* p_vol) {
    pf_s32 err;

    if (p_vol == PF_NULL) {
        return 10;
    }
    err = VFiPFVOL_CheckMediaInsert(p_vol);
    if (err != 0) {
        return err;
    }
    if ((p_vol->flags & 0x02) == 0) {
        return 9;
    }
    if (VFiPFDRV_IsWProtected(p_vol) != 0) {
        return 11;
    }
    return 0;
}

pf_s32 VFiPFVOL_GetCurrentDir(PF_VOLUME* p_vol, PF_DIR_ENT* p_current_dir) {
    pf_s32 err;
    pf_s32 context_id;
    pf_u32 i;

    err = 0;
    if (p_vol == PF_NULL) {
        return 10;
    }
    if ((p_vol->flags & 0x02) == 0) {
        return 9;
    }
    VFiPFSYS_GetCurrentContextID(&context_id);
    for (i = 1; i < 1; i++) {
        if (((p_vol->current_dir[i].stat & 0x01) != 0) && (context_id == p_vol->current_dir[i].context_id)) {
            *p_current_dir = p_vol->current_dir[i].directory;
            break;
        }
    }
    if (i == 1) {
        if (VFiPFVOL_CheckContextRegistered(context_id) != 0) {
            for (i = 1; i < 1; i++) {
                if ((p_vol->current_dir[i].stat & 0x01) == 0) {
                    p_vol->current_dir[i].stat |= 0x01;
                    p_vol->current_dir[i].context_id = context_id;
                    *p_current_dir = p_vol->current_dir[i].directory;
                    break;
                }
            }
        } else {
            *p_current_dir = p_vol->current_dir[0].directory;
        }
    }
    return err;
}

// DEBUG NON MATCH
void VFiPFVOL_SetCurrentVolume(PF_VOLUME* p_vol /* r30 */) {
    pf_s32 context_id;  // r1+0x08
    pf_u32 i;           // r31

    VFiPFSYS_GetCurrentContextID(&context_id);

    for (i = 1; i < 1; i++) {
        if (((VFipf_vol_set.current_vol[i].stat & 0x01) != 0) && (context_id == VFipf_vol_set.current_vol[i].context_id)) {
            VFipf_vol_set.current_vol[i].p_vol = p_vol;
            break;
        }
    }
    if ((i == 1) && (VFiPFVOL_CheckContextRegistered(context_id) != 0)) {
        for (i = 1; i < 1; i++) {
            if ((VFipf_vol_set.current_vol[i].stat & 0x01) == 0) {
                VFipf_vol_set.current_vol[i].stat |= 0x01;
                VFipf_vol_set.current_vol[i].context_id = context_id;
                VFipf_vol_set.current_vol[i].p_vol = p_vol;
                break;
            }
        }
    }
    VFipf_vol_set.current_vol[0].p_vol = p_vol;
}

// DEBUG NON MATCH
PF_VOLUME* VFiPFVOL_GetCurrentVolume() {
    PF_VOLUME* p_vol;   // r30
    pf_s32 context_id;  // r1+0x08
    pf_u32 i;           // r31

    p_vol = PF_NULL;
    VFiPFSYS_GetCurrentContextID(&context_id);

    for (i = 1; i < 1; i++) {
        if (((VFipf_vol_set.current_vol[i].stat & 0x01) != 0) && (context_id == VFipf_vol_set.current_vol[i].context_id)) {
            p_vol = VFipf_vol_set.current_vol[i].p_vol;
            break;
        }
    }
    if (i == 1) {
        if (VFiPFVOL_CheckContextRegistered(context_id) != 0) {
            for (i = 1; i < 1; i++) {
                if ((VFipf_vol_set.current_vol[i].stat & 0x01) == 0) {
                    VFipf_vol_set.current_vol[i].stat |= 0x01;
                    VFipf_vol_set.current_vol[i].context_id = context_id;
                    p_vol = VFipf_vol_set.current_vol[i].p_vol;
                    break;
                }
            }
        } else {
            p_vol = VFipf_vol_set.current_vol[0].p_vol;
        }
    }
    return p_vol;
}

PF_VOLUME* VFiPFVOL_GetVolumeFromDrvChar(pf_s8 drv_char) {
    PF_VOLUME* p_vol;
    pf_s16 vol_idx;

    vol_idx = VFipf_toupper(drv_char) - 'A';
    if (vol_idx < 0 || vol_idx >= PF_DRIVE_COUNT) {
        return PF_NULL;
    }
    p_vol = &VFipf_vol_set.volumes[vol_idx];
    return p_vol;
}

void VFiPFVOL_LoadVolumeLabelFromBuf(const pf_u8* buf, PF_VOLUME* p_vol) {
    VFipf_memcpy(p_vol->label, (pf_u8*)buf, 11U);
    p_vol->label[11] = 0;
}

pf_s32 VFiPFVOL_errnum() {
    return VFipf_vol_set.last_error;
}

pf_s32 VFiPFVOL_getdev(pf_s8 drv_char, PF_DEV_INF* dev_inf) {
    PF_VOLUME* p_vol;
    pf_s32 err;

    p_vol = VFiPFVOL_GetVolumeFromDrvChar(drv_char);
    if (p_vol == PF_NULL) {
        return VFipf_vol_set.last_error = 10;
    }
    if (dev_inf == PF_NULL) {
        return p_vol->last_error = VFipf_vol_set.last_error = 10;
    }
    err = VFiPFVOL_CheckForRead(p_vol);
    if (err != 0) {
        return p_vol->last_error = VFipf_vol_set.last_error = err;
    }
    dev_inf->bps = p_vol->bpb.bytes_per_sector;
    dev_inf->spc = p_vol->bpb.sectors_per_cluster;
    dev_inf->cls = p_vol->bpb.num_clusters;
    err = VFiPFFAT_CountFreeClusters(p_vol, &dev_inf->ecl);
    if (err != 0) {
        return p_vol->last_error = VFipf_vol_set.last_error = err;
    }
    return 0;
}

// DEBUG NON MATCH
pf_s32 VFiPFVOL_attach(PF_DRV_TBL* p_drv /* r31 */) {
    pf_s32 vol_idx;    // r29
    PF_VOLUME* p_vol;  // r30
    pf_s32 err;        // r28

    if (p_drv == PF_NULL || p_drv->cache->num_fat_pages < 1 || p_drv->cache->num_data_pages < 2 || p_drv->cache->pages == PF_NULL ||
        p_drv->cache->buffers == PF_NULL || ((pf_u32)p_drv->cache->pages & 0x03) != 0 || ((pf_u32)p_drv->cache->buffers & 0x03) != 0) {
        return VFipf_vol_set.last_error = 10;
    }
    if (p_drv->cache->num_fat_buf_size == 0) {
        p_drv->cache->num_fat_buf_size = 1;
    }
    if (p_drv->cache->num_data_buf_size == 0) {
        p_drv->cache->num_data_buf_size = 1;
    }
    if ((p_drv->cache->num_fat_pages / p_drv->cache->num_fat_buf_size) < 1) {
        return VFipf_vol_set.last_error = 10;
    }
    if ((p_drv->cache->num_data_pages / p_drv->cache->num_data_buf_size) < 2) {
        return VFipf_vol_set.last_error = 10;
    }
    p_drv->stat = 0;
    p_drv->drive = 0;
    for (vol_idx = 0; vol_idx < PF_DRIVE_COUNT; vol_idx++) {
        p_vol = &VFipf_vol_set.volumes[vol_idx];
        if ((p_vol->flags & 0x01) == 0) {
            break;
        }
    }

    if (vol_idx < 0 || vol_idx >= PF_DRIVE_COUNT || VFipf_vol_set.num_attached_drives < 0 || VFipf_vol_set.num_attached_drives >= PF_DRIVE_COUNT) {
        return VFipf_vol_set.last_error = 4;
    }
    p_vol->num_free_clusters = -1;
    p_vol->last_free_cluster = -1;
    err = VFiPFVOL_p_attach(p_vol, p_drv, vol_idx);
    if (err != 0) {
        VFipf_vol_set.last_error = err;
        return err;
    }
    p_vol->flags |= (pf_u8)0x01;
    p_drv->stat |= 0x01;
    p_vol->drv_char = vol_idx + 'A';
    p_drv->drive = p_vol->drv_char;
    VFipf_vol_set.num_attached_drives += 1;
    err = VFiPFVOL_CheckMediaInsert(p_vol);
    if (err != 0) {
        VFipf_vol_set.last_error = err;
        p_vol->last_error = err;
        return 0;
    }
    if (VFiPFDRV_IsInserted(p_vol) != 0) {
        err = VFiPFVOL_p_mount(p_vol);
        if (err != 0) {
            VFipf_vol_set.last_error = err;
            p_vol->last_error = err;
            return 0;
        }
        p_drv->stat |= 0x02;
    }
    return 0;
}

pf_s32 VFiPFVOL_detach(pf_s8 drv_char) {
    PF_VOLUME* p_vol;
    pf_s32 err;

    p_vol = VFiPFVOL_GetVolumeFromDrvChar(drv_char);
    if (p_vol == PF_NULL) {
        return VFipf_vol_set.last_error = 10;
    }
    if ((p_vol->flags & 0x02) != 0) {
        return p_vol->last_error = VFipf_vol_set.last_error = 10;
    }
    if ((p_vol->flags & 0x01) == 0) {
        return p_vol->last_error = VFipf_vol_set.last_error = 10;
    }
    err = VFiPFVOL_p_detach(p_vol);
    if (err != 0) {
        return p_vol->last_error = VFipf_vol_set.last_error = err;
    }
    p_vol->flags &= ~0x01;
    VFipf_vol_set.num_attached_drives -= 1;
    return 0;
}

pf_s32 VFiPFVOL_format(pf_s8 drv_char, const pf_u8* param) {
    PF_VOLUME* p_vol;
    pf_s32 err;

    p_vol = VFiPFVOL_GetVolumeFromDrvChar(drv_char);
    if (p_vol == PF_NULL) {
        return VFipf_vol_set.last_error = 10;
    }
    if ((p_vol->flags & 0x01) == 0) {
        return p_vol->last_error = VFipf_vol_set.last_error = 10;
    }
    if (VFiPFDRV_IsInserted(p_vol) == 0) {
        return p_vol->last_error = VFipf_vol_set.last_error = 10;
    }
    if (p_vol->num_opened_files != 0) {
        VFiPFFILE_FinalizeAllFiles(p_vol);
        VFiPFCACHE_FreeAllCaches(p_vol);
    }
    if (p_vol->num_opened_directories != 0) {
        VFiPFDIR_FinalizeAllDirs(p_vol);
    }
    err = VFiPFVOL_p_format(p_vol, param);
    if (err != 0) {
        return p_vol->last_error = VFipf_vol_set.last_error = err;
    }
    p_vol->fsi_flag |= 0x04;
    if (p_vol->bpb.fat_type == FAT_32) {
        p_vol->num_free_clusters = p_vol->bpb.num_clusters - 1;
    } else {
        p_vol->num_free_clusters = p_vol->bpb.num_clusters;
    }
    return 0;
}

pf_s32 VFiPFVOL_unmount(pf_s8 drv_char, pf_u32 mode) {
    PF_VOLUME* p_vol;
    pf_s32 err;
    pf_s32 err2 = 0;

    p_vol = VFiPFVOL_GetVolumeFromDrvChar(drv_char);
    if (p_vol == PF_NULL) {
        return VFipf_vol_set.last_error = 10;
    }
    if ((p_vol->flags & 0x01) == 0) {
        return VFipf_vol_set.last_error = 10;
    }
    if (mode != 0 && (mode & 0x01) == 0) {
        return p_vol->last_error = VFipf_vol_set.last_error = 10;
    }
    // @bug typo
    if (((p_vol->flags & 0x02) != 0) & VFiPFDRV_IsDetected(p_vol)) {
        VFiPFVOL_UnmountVolumeByEject(p_vol);
    }
    if ((p_vol->flags & 0x02) == 0) {
        return 0;
    }
    if (p_vol->num_opened_files != 0 || p_vol->num_opened_directories != 0) {
        p_vol->last_error = VFipf_vol_set.last_error = 19;
        err2 = 1;
        if ((mode & 0x01) == 0) {
            return 19;
        }
    }
    err = VFiPFVOL_p_unmount(p_vol, mode);
    if (err != 0 && err2 == 0) {
        p_vol->last_error = VFipf_vol_set.last_error = err;
        if ((mode & 0x01) == 0) {
            err2 = err;
        } else {
            err2 = 1;
        }
    }
    return err2;
}
