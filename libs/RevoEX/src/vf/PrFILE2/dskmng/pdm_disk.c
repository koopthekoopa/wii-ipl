#include <private/vf/PrFILE2/dskmng/pdm_disk.h>
#include <private/vf/PrFILE2/dskmng/pdm_partition.h>

static pf_s32 VFipdm_disk_convert_sector_into_block(PDM_DISK* p_disk, pf_u32 sector, pf_u32 num_sector, pf_u16 bps, pf_u32* p_block,
                                                    pf_u32* p_num_block) {
    pf_u16 delta;
    pf_s32 err = 0;

    *p_block = sector;
    *p_num_block = num_sector;
    if (bps > 0x200) {
        delta = bps >> 9;
        if (delta == 2) {
            *p_block *= 2;
        } else if (delta == 4) {
            *p_block *= 4;
        } else if (delta == 8) {
            *p_block *= 8;
        }
        if (delta == 2) {
            *p_num_block *= 2;
        } else if (delta == 4) {
            *p_num_block *= 4;
        } else if (delta == 8) {
            *p_num_block *= 8;
        }
    } else if (bps < 0x200) {
        err = 4;
    }
    return err;
}

static pf_s32 VFipdm_disk_convert_block_into_sector(PDM_DISK* p_disk, pf_u32 block, pf_u32 num_block, pf_u16 bps, pf_u32* p_sector,
                                                    pf_u32* p_num_sector) {
    pf_u16 delta;
    pf_s32 err = 0;

    *p_sector = block;
    *p_num_sector = num_block;
    if (bps > 0x200) {
        delta = bps >> 9;
        if (delta == 2) {
            *p_sector = *p_sector >> 1;
        } else if (delta == 4) {
            *p_sector = *p_sector >> 2;
        } else if (delta == 8) {
            *p_sector = *p_sector >> 3;
        }
        if (delta == 2) {
            *p_num_sector = *p_num_sector >> 1;
        } else if (delta == 4) {
            *p_num_sector = *p_num_sector >> 2;
        } else if (delta == 8) {
            *p_num_sector = *p_num_sector >> 3;
        }
    } else if (bps < 0x200) {
        err = 4;
    }
    return err;
}

static pf_s32 VFipdm_disk_get_handle(PDM_INIT_DISK* p_init_disk_tbl, PDM_DISK** pp_disk, pf_u16* p_disk_no, pf_u16* p_handle_no) {
    pf_u16 handle_no;
    pf_u16 disk_no;
    pf_u16 save_disk_no;
    PDM_DISK* p_save_free_disk;

    *pp_disk = PF_NULL;
    p_save_free_disk = PF_NULL;
    save_disk_no = 0;

    for (handle_no = 0; handle_no < PDM_DRIVE_COUNT; handle_no++) {
        if (VFipdm_disk_set.disk_handle[handle_no].handle == PF_NULL) {
            break;
        }
    }

    if (handle_no >= PDM_DRIVE_COUNT) {
        return 8;
    }
    *p_handle_no = handle_no;

    for (disk_no = 0; disk_no < PDM_DRIVE_COUNT; disk_no++) {
        if ((VFipdm_disk_set.disk[disk_no].status & 0x01) == 0) {
            if (p_save_free_disk == PF_NULL) {
                p_save_free_disk = &VFipdm_disk_set.disk[disk_no];
                save_disk_no = disk_no;
            }
            continue;
        }
        if ((VFipdm_disk_set.disk[disk_no].p_init_disk_tbl->p_func == p_init_disk_tbl->p_func) &&
            (p_init_disk_tbl->ui_ext == VFipdm_disk_set.disk[disk_no].p_init_disk_tbl->ui_ext)) {
            *pp_disk = &VFipdm_disk_set.disk[disk_no];
            *p_disk_no = disk_no;
            return 0;
        }
    }

    if (p_save_free_disk == PF_NULL) {
        return 8;
    }
    p_init_disk_tbl->p_func(&p_save_free_disk->disk_tbl, p_init_disk_tbl->ui_ext);
    p_save_free_disk->p_init_disk_tbl = p_init_disk_tbl;
    p_save_free_disk->status |= 0x01;
    VFipdm_disk_set.num_allocated_disk++;
    *pp_disk = p_save_free_disk;
    *p_disk_no = save_disk_no;
    return 0;
}

static pf_s32 VFipdm_disk_release_handle(PDM_DISK* p_disk) {
    if (p_disk->open_disk_cnt == 1) {
        p_disk->status &= ~0x01;
        VFipdm_disk_set.num_allocated_disk--;
    }
    return 0;
}

static pf_s32 VFipdm_disk_search_handle(PDM_DISK* p_disk, PDM_DISK* lp_disk, pf_u16* p_handle_no) {
    pf_u16 handle_no;

    for (handle_no = 0; handle_no < PDM_DRIVE_COUNT; handle_no++) {
        if (VFipdm_disk_set.disk_handle[handle_no].handle == lp_disk &&
            (pf_u16)PDM_DISK_GET_SIG(p_disk) == VFipdm_disk_set.disk_handle[handle_no].signature) {
            break;
        }
    }
    if (handle_no >= PDM_DRIVE_COUNT) {
        return 1;
    }
    *p_handle_no = handle_no;
    return 0;
}

static pf_s32 VFipdm_disk_do_get_permission(PDM_DISK* p_disk, PDM_DISK* lp_disk) {
    pf_s32 err;

    if (lp_disk->disk_lock_cnt == 0 || (lp_disk->status & 0x20) != 0) {
        err = lp_disk->disk_tbl.p_func->mount(p_disk);
        if (err != 0) {
            if (lp_disk->p_cur_part != PF_NULL) {
                VFipdm_part_set_driver_error_code(lp_disk->p_cur_part, err);
            }
            return 21;
        }
        err = lp_disk->disk_tbl.p_func->get_disk_info(p_disk, &lp_disk->disk_info);
        if (err != 0) {
            if (lp_disk->p_cur_part != PF_NULL) {
                VFipdm_part_set_driver_error_code(lp_disk->p_cur_part, err);
            }
#ifdef PF_IPL_BUILD
            lp_disk->disk_tbl.p_func->unmount(p_disk);
#endif
            return 21;
        }
        if ((lp_disk->disk_info.bytes_per_sector & 0x1FF) != 0) {
#ifdef PF_IPL_BUILD
            lp_disk->disk_tbl.p_func->unmount(p_disk);
#endif
            return 22;
        }
        if ((lp_disk->disk_info.media_attr & 0x01) != 0) {
            lp_disk->status |= 0x10;
        } else {
            lp_disk->status &= ~0x10;
        }

        lp_disk->status |= 0x02;
        lp_disk->status &= ~0x20;
    }

    lp_disk->disk_lock_cnt++;
    return 0;
}

static pf_s32 VFipdm_disk_do_release_permission(PDM_DISK* p_disk, PDM_DISK* lp_disk, pf_u32 mode) {
    pf_s32 err = 0;

    if (lp_disk->disk_lock_cnt == 1) {
        err = lp_disk->disk_tbl.p_func->unmount(p_disk);
        if (err != 0) {
            if (lp_disk->p_cur_part != PF_NULL) {
                VFipdm_part_set_driver_error_code(lp_disk->p_cur_part, err);
            }
            err = 21;
        }
    }
    if (err == 0 || mode == 1) {
        lp_disk->disk_lock_cnt--;
        if (lp_disk->disk_lock_cnt == 0) {
            lp_disk->status &= ~0x02;
        }
    }
    return err;
}

pf_s32 VFipdm_disk_check_disk_handle(PDM_DISK* p_disk) {
    pf_s32 err;
    pf_u32 disk_no = PDM_DISK_GET_NO(p_disk);
    pf_u32 disk_id = PDM_DISK_GET_ID(p_disk);
    pf_u32 disk_sig = PDM_DISK_GET_SIG(p_disk);
    pf_u16 handle_no;
    PDM_DISK* lp_disk;

    if (disk_no >= PDM_DRIVE_COUNT || disk_id != 0x300
#ifndef PF_IPL_BUILD
        || disk_sig > VFipdm_disk_set.disk[disk_no].signature
#endif
    ) {
        return 1;
    } else {
        lp_disk = &VFipdm_disk_set.disk[PDM_DISK_GET_NO(p_disk)];

        err = VFipdm_disk_search_handle(p_disk, lp_disk, &handle_no);
        return err;
    }
}

pf_s32 VFipdm_disk_open_disk(PDM_INIT_DISK* p_init_disk_tbl, PDM_DISK** pp_disk) {
    pf_s32 err;
    pf_u16 disk_no;
    pf_u16 handle_no;
    PDM_DISK* p_disk;

    if (pp_disk == PF_NULL || p_init_disk_tbl == PF_NULL || p_init_disk_tbl->p_func == PF_NULL) {
        return 1;
    }
    err = VFipdm_disk_get_handle(p_init_disk_tbl, &p_disk, &disk_no, &handle_no);
    if (err != 0) {
        return err;
    }

#ifdef PF_IPL_BUILD
    p_disk->signature++;
    if (p_disk->signature > 0xFFFF) {
        p_disk->signature = 0;
    }
#else
    p_disk->signature++;
    p_disk->signature = (pf_u16)p_disk->signature;
#endif

    p_disk->open_disk_cnt++;

    VFipdm_disk_set.disk_handle[handle_no].signature = p_disk->signature;
    VFipdm_disk_set.disk_handle[handle_no].handle = p_disk;

    *pp_disk = (PDM_DISK*)(disk_no & 0xFF | 0x300 | ((pf_u16)VFipdm_disk_set.disk[disk_no].signature << 16));

    if (p_disk->open_disk_cnt == 1) {
        err = p_disk->disk_tbl.p_func->init(*pp_disk);
        if (err != 0) {
            VFipdm_disk_release_handle(p_disk);
            p_disk->open_disk_cnt--;
            VFipdm_disk_set.disk_handle[handle_no].handle = PF_NULL;
            return 21;
        }
    }
    return 0;
}

pf_s32 VFipdm_disk_close_disk(PDM_DISK* p_disk) {
    pf_s32 err;
    pf_u16 handle_no;
    PDM_DISK* lp_disk;

    if (p_disk == PF_NULL) {
        return 1;
    }

    err = VFipdm_disk_check_disk_handle(p_disk);
    if (err != 0) {
        return err;
    }
    lp_disk = &VFipdm_disk_set.disk[PDM_DISK_GET_NO(p_disk)];
    if ((lp_disk->status & 0x01) == 0) {
        return 13;
    }
    if ((lp_disk->status & 0x02) == 0x02) {
        return 13;
    }
    err = VFipdm_disk_search_handle(p_disk, lp_disk, &handle_no);
    if (err != 0) {
        return err;
    }
    if (lp_disk->open_disk_cnt == 1) {
        err = lp_disk->disk_tbl.p_func->finalize(p_disk);
        if (err != 0) {
            if (lp_disk->p_cur_part != PF_NULL) {
                VFipdm_part_set_driver_error_code(lp_disk->p_cur_part, err);
            }
            return 21;
        }
    }
    err = VFipdm_disk_release_handle(&*lp_disk);
    if (err != 0) {
        return err;
    }
    lp_disk->open_disk_cnt--;
    VFipdm_disk_set.disk_handle[handle_no].handle = PF_NULL;
    return err;
}

pf_s32 VFipdm_disk_get_part_permission(PDM_DISK* p_disk) {
    pf_s32 err;
    PDM_DISK* lp_disk;

    if (p_disk == PF_NULL) {
        return 1;
    }
    err = VFipdm_disk_check_disk_handle(p_disk);
    if (err != 0) {
        return err;
    }
    lp_disk = &VFipdm_disk_set.disk[PDM_DISK_GET_NO(p_disk)];
    err = VFipdm_disk_do_get_permission(p_disk, lp_disk);
    return err;
}

pf_s32 VFipdm_disk_release_part_permission(PDM_DISK* p_disk, pf_u32 mode) {
    pf_s32 err;
    PDM_DISK* lp_disk;

    if (p_disk == PF_NULL) {
        return 1;
    }
    err = VFipdm_disk_check_disk_handle(p_disk);
    if (err != 0) {
        return err;
    }
    lp_disk = &VFipdm_disk_set.disk[PDM_DISK_GET_NO(p_disk)];
    if (lp_disk->disk_lock_cnt == 0) {
        return 14;
    }
    err = VFipdm_disk_do_release_permission(p_disk, lp_disk, mode);
    return err;
}

pf_s32 VFipdm_disk_physical_read(PDM_DISK* p_disk, pf_u8* buf, pf_u32 psector, pf_u32 num_sector, pf_u16 bps, pf_u32* p_num_success) {
    pf_s32 err;
    pf_u32 block;
    pf_u32 num_block;
    pf_u32 tmp_sector;
    PDM_DISK* lp_disk;

    if (p_disk == PF_NULL || buf == PF_NULL || num_sector == 0
#ifndef PF_IPL_BUILD
        || bps == 0
#endif
        || p_num_success == PF_NULL

    ) {
        return 1;
    }
    err = VFipdm_disk_check_disk_handle(p_disk);
    if (err != 0) {
        return err;
    }
    lp_disk = &VFipdm_disk_set.disk[PDM_DISK_GET_NO(p_disk)];
#ifndef PF_IPL_BUILD
    err = VFipdm_disk_convert_sector_into_block(lp_disk, psector, num_sector, bps, &block, &num_block);
    if (err != 0) {
        return err;
    }

    err = lp_disk->disk_tbl.p_func->physical_read(p_disk, buf, block, num_block, p_num_success);
    VFipdm_disk_convert_block_into_sector(lp_disk, block, *p_num_success, bps, &tmp_sector, p_num_success);
#else
    err = lp_disk->disk_tbl.p_func->physical_read(p_disk, buf, block, num_block);
#endif
    if (err != 0) {
        if (lp_disk->p_cur_part != PF_NULL) {
            VFipdm_part_set_driver_error_code(lp_disk->p_cur_part, err);
        }
        return 21;
    }
    return 0;
}

pf_s32 VFipdm_disk_physical_write(PDM_DISK* p_disk, const pf_u8* buf, pf_u32 psector, pf_u32 num_sector, pf_u16 bps, pf_u32* p_num_success) {
    pf_s32 err;
    pf_u32 block;
    pf_u32 num_block;
    pf_u32 tmp_sector;
    PDM_DISK* lp_disk;

    if (p_disk == PF_NULL || buf == PF_NULL || num_sector == 0 || bps == 0
#ifndef PF_IPL_BUILD
        || p_num_success == PF_NULL
#endif
    ) {
        return 1;
    }
    err = VFipdm_disk_check_disk_handle(p_disk);
    if (err != 0) {
        return err;
    }
    lp_disk = &VFipdm_disk_set.disk[PDM_DISK_GET_NO(p_disk)];
#ifndef PF_IPL_BUILD
    err = VFipdm_disk_convert_sector_into_block(lp_disk, psector, num_sector, bps, &block, &num_block);
    if (err != 0) {
        return err;
    }
    err = lp_disk->disk_tbl.p_func->physical_write(p_disk, (pf_u8*)buf, block, num_block, p_num_success);
    VFipdm_disk_convert_block_into_sector(lp_disk, block, *p_num_success, bps, &tmp_sector, p_num_success);
#else
    err = lp_disk->disk_tbl.p_func->physical_write(p_disk, (pf_u8*)buf, block, num_block);
#endif
    if (err != 0) {
        if (lp_disk->p_cur_part != PF_NULL) {
            VFipdm_part_set_driver_error_code(lp_disk->p_cur_part, err);
        }
        return 21;
    }
    return 0;
}

pf_s32 VFipdm_disk_format(PDM_DISK* p_disk, const pf_u8* param) {
    pf_s32 err;
    PDM_DISK* lp_disk;

    if (p_disk == PF_NULL) {
        return 1;
    }
    err = VFipdm_disk_check_disk_handle(p_disk);
    if (err != 0) {
        return err;
    }
    lp_disk = &VFipdm_disk_set.disk[PDM_DISK_GET_NO(p_disk)];
    err = lp_disk->disk_tbl.p_func->format(p_disk, (pf_u8*)param);
    if (err != 0) {
        if (lp_disk->p_cur_part != PF_NULL) {
            VFipdm_part_set_driver_error_code(lp_disk->p_cur_part, err);
        }
        return 21;
    }
    return 0;
}

pf_s32 VFipdm_disk_get_lba_size(PDM_DISK* p_disk, pf_u16* p_lba_size) {
    PDM_DISK* lp_disk;
    pf_s32 err;

    if (p_disk == PF_NULL || p_lba_size == PF_NULL) {
        return 1;
    }
    err = VFipdm_disk_check_disk_handle(p_disk);
    if (err != 0) {
        return err;
    }
    lp_disk = &VFipdm_disk_set.disk[PDM_DISK_GET_NO(p_disk)];
    *p_lba_size = lp_disk->disk_info.bytes_per_sector;
    return 0;
}

pf_s32 VFipdm_disk_get_media_information(PDM_DISK* p_disk, PDM_DISK_INFO* p_disk_info) {
    PDM_DISK* lp_disk;
    pf_s32 err;

    if (p_disk == PF_NULL || p_disk_info == PF_NULL) {
        return 1;
    }
    err = VFipdm_disk_check_disk_handle(p_disk);
    if (err != 0) {
        return err;
    }
    lp_disk = &VFipdm_disk_set.disk[PDM_DISK_GET_NO(p_disk)];
    *p_disk_info = lp_disk->disk_info;
    return 0;
}

pf_s32 VFipdm_disk_check_media_insert(PDM_DISK* p_disk, pf_u32* is_insert) {
    PDM_DISK* lp_disk;
    pf_s32 err;

    if (p_disk == PF_NULL || is_insert == PF_NULL) {
        return 1;
    }
    err = VFipdm_disk_check_disk_handle(p_disk);
    if (err != 0) {
        return err;
    }
    lp_disk = &VFipdm_disk_set.disk[PDM_DISK_GET_NO(p_disk)];
    if ((lp_disk->status & 0x04) != 0) {
        *is_insert = PF_TRUE;
    } else {
        *is_insert = PF_FALSE;
    }
    return 0;
}

pf_s32 VFipdm_disk_set_disk(PDM_DISK* p_disk, PDM_PARTITION* p_part) {
    PDM_DISK* lp_disk;
    pf_s32 err;

    if (p_disk == PF_NULL || p_part == PF_NULL) {
        return 1;
    }
    err = VFipdm_disk_check_disk_handle(p_disk);
    if (err != 0) {
        return err;
    }
    lp_disk = &VFipdm_disk_set.disk[PDM_DISK_GET_NO(p_disk)];
    lp_disk->p_cur_part = p_part;
    return 0;
}

void VFipdm_disk_notify_media_insert(PDM_DISK* p_disk) {
    PDM_DISK* lp_disk;

    if (VFipdm_disk_check_disk_handle(p_disk) == 0) {
        lp_disk = &VFipdm_disk_set.disk[PDM_DISK_GET_NO(p_disk)];
        lp_disk->status |= 0x04;
        lp_disk->status |= 0x08;
        lp_disk->status |= 0x20;
        VFipdm_part_set_change_media_state(p_disk, 1);
    }
}
