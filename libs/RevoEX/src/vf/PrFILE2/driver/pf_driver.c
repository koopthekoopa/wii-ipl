#include <private/vf/PrFILE2/driver/pf_driver.h>

#include <private/vf/PrFILE2/fatfs/pf_volume.h>

#include <private/vf/PrFILE2/dskmng/pdm_bpb.h>
#include <private/vf/PrFILE2/dskmng/pdm_partition.h>

static pf_s32 VFiPFDRV_GetBPBInformation(pf_u8* p_buf, PF_BPB* p_bpb) {
    pf_s32 err;
    PDM_BPB bpb;

    err = VFipdm_bpb_get_bpb_information(p_buf, &bpb);
    if (err != 0) {
        return 7;
    }

    p_bpb->bytes_per_sector = bpb.bytes_per_sector;
    p_bpb->num_reserved_sectors = bpb.num_reserved_sectors;
    p_bpb->num_root_dir_entries = bpb.num_root_dir_entries;
    p_bpb->sectors_per_cluster = bpb.sectors_per_cluster;
    p_bpb->num_FATs = bpb.num_FATs;
    p_bpb->total_sectors = bpb.total_sectors;
    p_bpb->sectors_per_FAT = bpb.sectors_per_FAT;
    p_bpb->root_dir_cluster = bpb.root_dir_cluster;
    p_bpb->fs_info_sector = bpb.fs_info_sector;
    p_bpb->backup_boot_sector = bpb.backup_boot_sector;
    p_bpb->ext_flags = bpb.ext_flags;
    p_bpb->media = bpb.media;
    p_bpb->fat_type = (PF_FAT_TYPE)bpb.fat_type;
    p_bpb->log2_bytes_per_sector = bpb.log2_bytes_per_sector;
    p_bpb->log2_sectors_per_cluster = bpb.log2_sectors_per_cluster;
    p_bpb->num_active_FATs = bpb.num_active_FATs;
    p_bpb->num_root_dir_sectors = bpb.num_root_dir_sectors;
    p_bpb->active_FAT_sector = bpb.active_FAT_sector;
    p_bpb->first_root_dir_sector = bpb.first_root_dir_sector;
    p_bpb->first_data_sector = bpb.first_data_sector;
    p_bpb->num_clusters = bpb.num_clusters;

    return 0;
}

static pf_s32 VFiPFDRV_LoadFSINFOInformation(pf_u8* p_buf, PF_VOLUME* p_vol) {
    pf_s32 err;
    PDM_FSINFO fsinfo;

    err = VFipdm_bpb_get_fsinfo_information(p_buf, &fsinfo);
    if (err != 0) {
        return 7;
    }

    if (fsinfo.free_count >= 2 && fsinfo.free_count < (p_vol->bpb.num_clusters + 2)) {
        p_vol->num_free_clusters = fsinfo.free_count;
    }
    if (fsinfo.next_free >= 2 && fsinfo.next_free < (p_vol->bpb.num_clusters + 2)) {
        p_vol->last_free_cluster = fsinfo.next_free;
    }

    return 0;
}

static void VFiPFDRV_notifyExecuteFormatAfterMount(PF_VOLUME* p_vol, const pf_u8* format_param) {
    p_vol->flags |= (pf_u16)0x10;
    p_vol->format_param = format_param;
}

static void VFiPFDRV_notifyNoExecuteLogicalFormat(PF_VOLUME* p_vol) {
    p_vol->flags |= (pf_u16)0x20;
}

pf_s32 VFiPFDRV_GetFSINFOInformation(PF_VOLUME* p_vol) {
    pf_s32 err;
    PF_CACHE_PAGE* p_page;
    pf_u32 nSector;
    pf_u32 is_valid;

    err = VFiPFCACHE_AllocateDataPage(p_vol, -1, &p_page);
    if (err != 0) {
        return err;
    }

    err = VFipdm_part_logical_read(p_vol->p_part, p_page->buffer, p_vol->bpb.fs_info_sector, 1, p_vol->bpb.bytes_per_sector, &nSector);
    if (err != 0) {
        if (err == 21) {
            err = VFipdm_part_get_driver_error_code(p_vol->p_part);
            VFipf_vol_set.last_driver_error = err;
            p_vol->last_driver_error = err;
            err = 0x1000;
        } else {
            err = -1;
        }
        VFiPFCACHE_FreeDataPage(p_vol, p_page);
        VFipdm_part_release_permission(p_vol->p_part, 1);
        return err;
    }
    err = VFipdm_bpb_check_fsinfo_sector(p_page->buffer, &is_valid);
    if (err != 0) {
        VFiPFCACHE_FreeDataPage(p_vol, p_page);
        VFipdm_part_release_permission(p_vol->p_part, 1);
        return -1;
    }
    if (is_valid == 0) {
        VFiPFCACHE_FreeDataPage(p_vol, p_page);
        VFipdm_part_release_permission(p_vol->p_part, 1);
        return 7;
    }
    err = VFiPFDRV_LoadFSINFOInformation(p_page->buffer, p_vol);
    if (err != 0) {
        VFiPFCACHE_FreeDataPage(p_vol, p_page);
        VFipdm_part_release_permission(p_vol->p_part, 1);
        return -1;
    }
    VFiPFCACHE_FreeDataPage(p_vol, p_page);
    return 0;
}

pf_s32 VFiPFDRV_StoreFreeCountToFSINFO(PF_VOLUME* p_vol) {
    pf_s32 err = 0;
    PF_CACHE_PAGE* p_page;
    pf_u32 num_success;

    err = VFiPFCACHE_AllocateDataPage(p_vol, -1, &p_page);
    if (err != 0) {
        return err;
    }
    err = VFiPFDRV_lread(p_vol, p_page->p_buf, p_vol->bpb.fs_info_sector, 1, &num_success);
    if (err != 0 || num_success != 1) {
        err = 17;
    }

    if (err == 0) {
        p_page->p_buf[0x1E8] = p_vol->num_free_clusters;
        p_page->p_buf[0x1E9] = p_vol->num_free_clusters >> 8;
        p_page->p_buf[0x1EA] = p_vol->num_free_clusters >> 16;
        p_page->p_buf[0x1EB] = p_vol->num_free_clusters >> 24;
        err = VFiPFDRV_lwrite(p_vol, p_page->p_buf, p_vol->bpb.fs_info_sector, 1, &num_success);
        if (err != 0 || num_success != 1) {
            err = 17;
        }
    }
    VFiPFCACHE_FreeDataPage(p_vol, p_page);
    return err;
}

pf_bool VFiPFDRV_IsInserted(PF_VOLUME* p_vol) {
    pf_bool is_insert;
    VFipdm_part_check_media_insert(p_vol->p_part, &is_insert);
    return is_insert;
}

pf_bool VFiPFDRV_IsDetected(PF_VOLUME* p_vol) {
    pf_bool is_detect;
    VFipdm_part_check_media_detect(p_vol->p_part, &is_detect);
    return is_detect;
}

pf_bool VFiPFDRV_IsWProtected(PF_VOLUME* p_vol) {
    pf_bool is_wprotect;
    VFipdm_part_check_media_write_protect(p_vol->p_part, &is_wprotect);
    return is_wprotect;
}

pf_s32 VFiPFDRV_init(PF_VOLUME* p_vol) {
    if (p_vol == PF_NULL) {
        return 10;
    } else {
#ifdef PF_IPL_BUILD

#endif
        return 0;
    }
}

pf_s32 VFiPFDRV_finalize(PF_VOLUME* p_vol) {
    if (p_vol) {
        return 0;
    } else {
        return 10;
    }
}

pf_s32 VFiPFDRV_mount(PF_VOLUME* p_vol) {
    pf_s32 err;
    PF_CACHE_PAGE* p_page;
    pf_u32 nSector;
    PDM_DISK_INFO disk_inf;
    pf_bool is_valid;

    if (p_vol == PF_NULL) {
        return 10;
    }

    err = VFipdm_part_get_permission(p_vol->p_part);
    if (err != 0) {
        if (err == 21) {
            err = VFipdm_part_get_driver_error_code(p_vol->p_part);
            VFipf_vol_set.last_driver_error = err;
            p_vol->last_driver_error = err;
            return 0x1000;
        }
        return -1;
    }

    err = VFipdm_part_get_media_information(p_vol->p_part, &disk_inf);
    if (err != 0) {
        VFipdm_part_release_permission(p_vol->p_part, 1);
        return -1;
    }
    if ((disk_inf.media_attr & 0x02) != 0) {
        VFiPFDRV_notifyExecuteFormatAfterMount(p_vol, disk_inf.format_param);
    }
    if ((disk_inf.media_attr & 0x08) != 0) {
        VFiPFDRV_notifyNoExecuteLogicalFormat(p_vol);
    }
    err = VFiPFCACHE_AllocateDataPage(p_vol, -1, &p_page);
    err = VFipdm_part_logical_read(p_vol->p_part, p_page->buffer, 0, 1, 0x200, &nSector);
    if (err != 0) {
        if (err == 21) {
            err = VFipdm_part_get_driver_error_code(p_vol->p_part);
            VFipf_vol_set.last_driver_error = err;
            p_vol->last_driver_error = err;
            err = 0x1000;
        } else {
            err = -1;
        }
        VFiPFCACHE_FreeDataPage(p_vol, p_page);
        VFipdm_part_release_permission(p_vol->p_part, 1);
        return err;
    }
    err = VFipdm_bpb_check_boot_sector(p_page->buffer, &is_valid);
    if (err != 0) {
        VFiPFCACHE_FreeDataPage(p_vol, p_page);
        VFipdm_part_release_permission(p_vol->p_part, 1);
        return -1;
    }
    if (!is_valid) {
        VFiPFCACHE_FreeDataPage(p_vol, p_page);
        VFipdm_part_release_permission(p_vol->p_part, 1);
        return 7;
    }
    err = VFiPFDRV_GetBPBInformation(p_page->buffer, &p_vol->bpb);
    if (err != 0) {
        VFiPFCACHE_FreeDataPage(p_vol, p_page);
        VFipdm_part_release_permission(p_vol->p_part, 1);
        return err;
    }
    VFiPFCACHE_FreeDataPage(p_vol, p_page);
    p_vol->num_free_clusters = -1;
    p_vol->last_free_cluster = -1;
    if (p_vol->bpb.fat_type == FAT_32) {
        err = VFiPFDRV_GetFSINFOInformation(p_vol);
    }
    return err;
}

pf_s32 VFiPFDRV_unmount(PF_VOLUME* p_vol, pf_u32 mode) {
    pf_s32 err;

    (void)p_vol;

    if (p_vol == PF_NULL) {
        return 10;
    }

    err = VFipdm_part_release_permission(p_vol->p_part, mode == 1 ? 1 : 0);
    if (err != 0) {
        if (err == 21) {
            err = VFipdm_part_get_driver_error_code(p_vol->p_part);
            VFipf_vol_set.last_driver_error = err;
            p_vol->last_driver_error = err;
            return 0x1000;
        }
        return -1;
    }
    return 0;
}

pf_s32 VFiPFDRV_format(PF_VOLUME* p_vol, const pf_u8* param) {
    pf_s32 err;

    if (p_vol == PF_NULL) {
        return 10;
    }

    if ((p_vol->flags & 0x02) == 0) {
        err = VFipdm_part_get_permission(p_vol->p_part);
        if (err != 0) {
            if (err == 21) {
                err = VFipdm_part_get_driver_error_code(p_vol->p_part);
                VFipf_vol_set.last_driver_error = err;
                p_vol->last_driver_error = err;
                return 0x1000;
            }
            return -1;
        }
    }
    err = VFipdm_part_format(p_vol->p_part, param);
    if (err != 0) {
        if (err == 21) {
            err = VFipdm_part_get_driver_error_code(p_vol->p_part);
            VFipf_vol_set.last_driver_error = err;
            p_vol->last_driver_error = err;
            return 0x1000;
        }
        return -1;
    }
    if ((p_vol->flags & 0x02) == 0) {
        err = VFipdm_part_release_permission(p_vol->p_part, 1);
        if (err != 0) {
            if (err == 21) {
                err = VFipdm_part_get_driver_error_code(p_vol->p_part);
                VFipf_vol_set.last_driver_error = err;
                p_vol->last_driver_error = err;
                return 0x1000;
            }
            return -1;
        }
    }
    return 0;
}

pf_s32 VFiPFDRV_lread(PF_VOLUME* p_vol, pf_u8* buf, pf_u32 sector, pf_u32 num_sectors, pf_u32* p_num_success) {
    pf_s32 err;

    if (p_vol == PF_NULL) {
        return 10;
    }

    err = VFipdm_part_logical_read(p_vol->p_part, buf, sector, num_sectors, p_vol->bpb.bytes_per_sector, p_num_success);
    if (err != 0) {
        if (err == 21) {
            err = VFipdm_part_get_driver_error_code(p_vol->p_part);
            VFipf_vol_set.last_driver_error = err;
            p_vol->last_driver_error = err;
            return 0x1000;
        }
        return -1;
    }
    return 0;
}

pf_s32 VFiPFDRV_lwrite(PF_VOLUME* p_vol, const pf_u8* buf, pf_u32 sector, pf_u32 num_sectors, pf_u32* p_num_success) {
    pf_s32 err;

    if (p_vol == PF_NULL) {
        return 10;
    }

    err = VFipdm_part_logical_write(p_vol->p_part, buf, sector, num_sectors, p_vol->bpb.bytes_per_sector, p_num_success);
    if (err != 0) {
        if (err == 21) {
            err = VFipdm_part_get_driver_error_code(p_vol->p_part);
            VFipf_vol_set.last_driver_error = err;
            p_vol->last_driver_error = err;
            return 0x1000;
        }
        return -1;
    }
    return 0;
}
