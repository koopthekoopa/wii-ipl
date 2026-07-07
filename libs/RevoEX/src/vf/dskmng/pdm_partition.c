#include <private/vf/PrFILE2/dskmng/pdm_mbr.h>
#include <private/vf/PrFILE2/dskmng/pdm_partition.h>

static pf_s32 VFipdm_part_search_handle(PDM_PARTITION* p_part, PDM_PARTITION* lp_part, pf_u16* p_handle_no) {
    pf_u16 handle_no;

    for (handle_no = 0; handle_no < PDM_DRIVE_COUNT; handle_no++) {
        if (VFipdm_disk_set.partition_handle[handle_no].handle == lp_part &&
            (pf_u16)PDM_PART_GET_SIG(p_part) == VFipdm_disk_set.partition_handle[handle_no].signature) {
            break;
        }
    }
    if (handle_no >= PDM_DRIVE_COUNT) {
        return 1;
    }
    *p_handle_no = handle_no;
    return 0;
}

static pf_s32 VFipdm_part_check_partition_handle(PDM_PARTITION* p_part) {
    pf_s32 err;
    pf_u32 part_no = PDM_PART_GET_NO(p_part);
    pf_u32 part_id = PDM_PART_GET_ID(p_part);
    pf_u32 part_sig = PDM_PART_GET_SIG(p_part);
    pf_u16 handle_no;
    PDM_PARTITION* lp_part;

    if (part_no >= PDM_DRIVE_COUNT || part_id != 0x400) {
        return 1;
    }
    lp_part = &VFipdm_disk_set.partition[PDM_PART_GET_NO(p_part)];
    err = VFipdm_part_search_handle(p_part, lp_part, &handle_no);
    return err;
}

static pf_s32 VFipdm_part_get_start_sector(PDM_PARTITION* p_part) {
    pf_s32 err;
    pf_u16 part_id = p_part->part_id;
    pf_u16 part_index;
    PDM_MBR mbr_tbl;
    PDM_DISK_INFO disk_info;

    err = VFipdm_mbr_get_mbr_part_table(p_part->p_disk, &mbr_tbl);
    if (err != 0 && err != 5) {
        return err;
    }
    if (err != 5) {
        if (part_id < 4) {
            if (*(&mbr_tbl.partition_table[part_id].lba_start_sector) == 0) {
                return 7;
            }
            p_part->start_sector = mbr_tbl.partition_table[part_id].lba_start_sector;
            p_part->total_sector = mbr_tbl.partition_table[part_id].lba_num_sectors;
            p_part->partition_type = mbr_tbl.partition_table[part_id].partition_type;
            p_part->mbr_sector = mbr_tbl.current_sector;
            goto success;
        }
        for (part_index = 4;; part_index++) {
            err = VFipdm_mbr_get_epbr_part_table(p_part->p_disk, &mbr_tbl);
            if (err != 0 && err != 6) {
                return err;
            }
            if (err != 6) {
                if (part_id == part_index) {
                    p_part->start_sector = mbr_tbl.partition_table[0].lba_start_sector;
                    p_part->total_sector = mbr_tbl.partition_table[0].lba_num_sectors;
                    p_part->partition_type = mbr_tbl.partition_table[0].partition_type;
                    p_part->mbr_sector = mbr_tbl.current_sector;
                    goto success;
                }
                continue;
            }
            return 7;
        }
    }
    if (part_id >= 1) {
        return 7;
    }
    err = VFipdm_disk_get_media_information(p_part->p_disk, &disk_info);
    if (err != 0) {
        return err;
    }
    p_part->start_sector = 0;
    p_part->total_sector = disk_info.total_sectors;
    p_part->partition_type = 0;
    p_part->mbr_sector = 0;

success:
    return 0;
}

static pf_s32 VFipdm_part_convert_lsector_to_block(PDM_PARTITION* p_part, pf_u32 lsector, pf_u32 num_lsector, pf_u16 lbps, pf_u32* p_block,
                                                   pf_u32* p_num_block) {
    pf_u32 psector;
    pf_u32 start_lsector;
    pf_u16 lba_size;
    pf_u16 delta;

    (void)p_block;

    VFipdm_disk_get_lba_size(p_part->p_disk, &lba_size);
    if (lbps == lba_size) {
        psector = lsector + p_part->start_sector + p_part->mbr_sector;
    } else {
        start_lsector = p_part->start_sector + p_part->mbr_sector;

        delta = (lba_size >> 9);
        if (delta == 2) {
            start_lsector *= 2;
        } else if (delta == 4) {
            start_lsector *= 4;
        } else if (delta == 8) {
            start_lsector *= 8;
        }

        delta = (lbps >> 9);
        if (delta == 2) {
            start_lsector >>= 1U;
        } else if (delta == 4) {
            start_lsector >>= 2U;
        } else if (delta == 8) {
            start_lsector >>= 3U;
        }

        psector = lsector + start_lsector;
    }

    *p_block = psector;
    *p_num_block = num_lsector;

    if (lbps > 0x200) {
        delta = (lbps >> 9);
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
    }
    return 0;
}

static pf_s32 VFipdm_part_convert_block_to_lsector(PDM_PARTITION* p_part, pf_u32 num_block, pf_u16 lbps, pf_u32* p_num_sector) {
    pf_u16 delta;

    *p_num_sector = num_block;
    if (lbps > 0x200U) {
        delta = (lbps >> 9);
        if (delta == 2) {
            *p_num_sector >>= 1U;
        } else if (delta == 4) {
            *p_num_sector >>= 2U;
        } else if (delta == 8) {
            *p_num_sector >>= 3U;
        }
    }
    return 0;
}

static pf_s32 VFipdm_part_get_handle(PDM_DISK* p_disk, pf_u16 part_id, PDM_PARTITION** pp_part, pf_u16* p_part_no, pf_u16* p_handle_no) {
    pf_u16 handle_no;
    pf_u16 part_no;
    pf_u16 save_part_no;
    PDM_PARTITION* p_save_free_part;

    *pp_part = PF_NULL;
    p_save_free_part = PF_NULL;
    save_part_no = 0;

    for (handle_no = 0; handle_no < PDM_DRIVE_COUNT; handle_no++) {
        if (VFipdm_disk_set.partition_handle[handle_no].handle == 0) {
            break;
        }
    }

    if (handle_no >= PDM_DRIVE_COUNT) {
        return 10;
    }
    *p_handle_no = handle_no;

    for (part_no = 0; part_no < PDM_DRIVE_COUNT; part_no++) {
        if ((VFipdm_disk_set.partition[part_no].status & 0x01) == 0) {
            if (p_save_free_part == PF_NULL) {
                p_save_free_part = &VFipdm_disk_set.partition[part_no];
                save_part_no = part_no;
            }
            continue;
        }
        if (part_id == VFipdm_disk_set.partition[part_no].part_id && VFipdm_disk_set.partition[part_no].p_disk == p_disk) {
            *pp_part = &VFipdm_disk_set.partition[part_no];
            *p_part_no = part_no;
            return 0;
        }
    }

    if (p_save_free_part == PF_NULL) {
        return 10;
    }

    p_save_free_part->status |= 0x01;
    VFipdm_disk_set.num_partition++;
    p_save_free_part->p_disk = p_disk;
    p_save_free_part->part_id = part_id;
    *pp_part = p_save_free_part;
    *p_part_no = save_part_no;
    return 0;
}

static pf_s32 VFipdm_part_release_handle(PDM_PARTITION* p_part) {
    if (p_part->open_part_cnt == 1) {
        p_part->status &= ~0x01;
        VFipdm_disk_set.num_partition--;
    }
    return 0;
}

pf_s32 VFipdm_part_open_partition(PDM_DISK* p_disk, pf_u16 part_id, PDM_PARTITION** pp_part) {
    pf_s32 err;
    pf_u16 part_no;
    pf_u16 handle_no;
    PDM_PARTITION* p_part;
    pf_bool is_insert;

    if (p_disk == PF_NULL || pp_part == PF_NULL) {
        return 1;
    }
    err = VFipdm_part_get_handle(&*p_disk, part_id, &p_part, &part_no, &handle_no);
    if (err != 0) {
        return err;
    }
    p_part->signature++;
    if (p_part->signature > 0xFFFF) {
        p_part->signature = 0;
    }
    p_part->open_part_cnt++;
    VFipdm_disk_set.partition_handle[handle_no].signature = p_part->signature;
    VFipdm_disk_set.partition_handle[handle_no].handle = &*p_part;
    err = VFipdm_disk_check_media_insert(p_disk, &is_insert);
    if (err != 0) {
        return err;
    }
    if (is_insert) {
        p_part->status = p_part->status | 0x04;
    }
    *pp_part = (PDM_PARTITION*)(part_no & 0xFF | 0x400 | ((pf_u16)VFipdm_disk_set.partition[part_no].signature << 16));
    return 0;
}

pf_s32 VFipdm_part_close_partition(PDM_PARTITION* p_part) {
    pf_s32 err;
    pf_u16 handle_no;
    PDM_PARTITION* lp_part;

    if (p_part == PF_NULL) {
        return 1;
    }
    err = VFipdm_part_check_partition_handle(p_part);
    if (err != 0) {
        return err;
    }
    lp_part = &VFipdm_disk_set.partition[PDM_PART_GET_NO(p_part)];
    if ((lp_part->status & 0x01) == 0) {
        return 12;
    }
    if ((lp_part->status & 0x02) == 0x02) {
        return 13;
    }
    err = VFipdm_part_search_handle(p_part, lp_part, &handle_no);
    if (err != 0) {
        return err;
    }
    err = VFipdm_part_release_handle(lp_part);
    if (err != 0) {
        return err;
    }
    lp_part->open_part_cnt--;
    VFipdm_disk_set.partition_handle[handle_no].handle = PF_NULL;
    return 0;
}

pf_s32 VFipdm_part_get_permission(PDM_PARTITION* p_part) {
    pf_s32 err;
    PDM_PARTITION* lp_part;
    PDM_DISK_INFO disk_info;

    if (p_part == PF_NULL) {
        return 1;
    }

    err = VFipdm_part_check_partition_handle(p_part);
    if (err != 0) {
        return err;
    }

    lp_part = &VFipdm_disk_set.partition[PDM_PART_GET_NO(p_part)];
    if ((lp_part->status & 0x02) != 0) {
        goto fail;
    }
    err = VFipdm_disk_set_disk(lp_part->p_disk, p_part);
    if (err != 0) {
        return err;
    }

    err = VFipdm_disk_get_part_permission(lp_part->p_disk);
    if (err != 0) {
        return err;
    }

    err = VFipdm_disk_get_media_information(lp_part->p_disk, &disk_info);
    if (err != 0) {
        VFipdm_disk_release_part_permission(lp_part->p_disk, 1);
        return err;
    }

    if ((disk_info.media_attr & 0x01) != 0) {
        lp_part->status |= 0x10;
    } else {
        lp_part->status &= ~0x10;
    }

    err = VFipdm_part_get_start_sector(lp_part);
    if (err != 0) {
        VFipdm_disk_release_part_permission(lp_part->p_disk, 1);
        return err;
    }

    goto success;

fail:
    return 13;

success:
    lp_part->status |= 0x02;
    lp_part->status &= ~0x08;

    return 0;
}

pf_s32 VFipdm_part_release_permission(PDM_PARTITION* p_part, pf_u32 mode) {
    pf_s32 err;
    pf_s32 ret = 0;
    PDM_PARTITION* lp_part;

    if (p_part == PF_NULL) {
        return 1;
    }
    err = VFipdm_part_check_partition_handle(p_part);
    if (err != 0) {
        return err;
    }
    lp_part = &VFipdm_disk_set.partition[PDM_PART_GET_NO(p_part)];
    if ((lp_part->status & 0x02) == 0) {
        return 14;
    }
    err = VFipdm_disk_set_disk(lp_part->p_disk, p_part);
    if (err != 0) {
        return err;
    }
    err = VFipdm_disk_release_part_permission(lp_part->p_disk, mode);
    if (err != 0) {
        ret = err;
    }
    if ((ret == 0) || (mode == 1)) {
        lp_part->status &= ~0x02;
        lp_part->status &= ~0x08;
        lp_part->status &= ~0x10;
    }
    return ret;
}

pf_s32 VFipdm_part_format(PDM_PARTITION* p_part, const pf_u8* param) {
    pf_s32 err;
    PDM_PARTITION* lp_part;

    if (p_part == PF_NULL) {
        return 1;
    }
    err = VFipdm_part_check_partition_handle(p_part);
    if (err != 0) {
        return err;
    }
    lp_part = &VFipdm_disk_set.partition[PDM_PART_GET_NO(p_part)];
    err = VFipdm_disk_set_disk(lp_part->p_disk, p_part);
    if (err != 0) {
        return err;
    }
    err = VFipdm_disk_format(lp_part->p_disk, param);
    if (err != 0) {
        return err;
    }
    return 0;
}

pf_s32 VFipdm_part_logical_read(PDM_PARTITION* p_part, pf_u8* buf, pf_u32 lsector, pf_u32 num_sector, pf_u16 bps, pf_u32* p_num_success) {
    pf_s32 err;
    pf_u32 over_sec;
    pf_u32 block;
    pf_u32 num_block;
    PDM_PARTITION* lp_part;

    if (p_part == PF_NULL || buf == PF_NULL || num_sector == 0 || bps == 0 || p_num_success == PF_NULL) {
        return 1;
    }
    err = VFipdm_part_check_partition_handle(p_part);
    if (err != 0) {
        return err;
    }
    lp_part = &VFipdm_disk_set.partition[PDM_PART_GET_NO(p_part)];
    err = VFipdm_disk_set_disk(lp_part->p_disk, p_part);
    if (err != 0) {
        return err;
    }
    if (lp_part->total_sector <= lsector) {
        return 18;
    }
    if (lp_part->total_sector < (lsector + num_sector)) {
        over_sec = (lsector + num_sector) - lp_part->total_sector;
        num_sector -= over_sec;
    }
    VFipdm_part_convert_lsector_to_block(lp_part, lsector, num_sector, bps, &block, &num_block);
    err = VFipdm_disk_physical_read(lp_part->p_disk, buf, block, num_block, p_num_success);
    num_block = *p_num_success;
    VFipdm_part_convert_block_to_lsector(lp_part, num_block, bps, p_num_success);
    if (err != 0) {
        return err;
    }
    return 0;
}

pf_s32 VFipdm_part_logical_write(PDM_PARTITION* p_part, const pf_u8* buf, pf_u32 lsector, pf_u32 num_sector, pf_u16 bps, pf_u32* p_num_success) {
    pf_s32 err;
    pf_u32 over_sec;
    pf_u32 block;
    pf_u32 num_block;
    PDM_PARTITION* lp_part;

    if (p_part == PF_NULL || buf == PF_NULL || num_sector == 0 || bps == 0 || p_num_success == PF_NULL) {
        return 1;
    }
    err = VFipdm_part_check_partition_handle(p_part);
    if (err != 0) {
        return err;
    }
    lp_part = &VFipdm_disk_set.partition[PDM_PART_GET_NO(p_part)];
    err = VFipdm_disk_set_disk(lp_part->p_disk, p_part);
    if (err != 0) {
        return err;
    }
    if (lp_part->total_sector <= lsector) {
        return 18;
    }
    if (lp_part->total_sector < (lsector + num_sector)) {
        over_sec = (lsector + num_sector) - lp_part->total_sector;
        num_sector -= over_sec;
    }
    VFipdm_part_convert_lsector_to_block(lp_part, lsector, num_sector, bps, &block, &num_block);
    err = VFipdm_disk_physical_write(lp_part->p_disk, buf, block, num_block, p_num_success);
    num_block = *p_num_success;
    VFipdm_part_convert_block_to_lsector(lp_part, num_block, bps, p_num_success);
    if (err != 0) {
        return err;
    }
    return 0;
}

pf_s32 VFipdm_part_logical_erase(PDM_PARTITION* p_part, pf_u32 lsector, pf_u32 num_sector, pf_u16 bps) {
    pf_u32 err;
    pf_u32 over_sec;
    pf_u32 block;
    pf_u32 num_block;
    PDM_PARTITION* lp_part;

    if (p_part == PF_NULL || num_sector == 0 || bps == 0) {
        return 1;
    }
    err = VFipdm_part_check_partition_handle(p_part);
    if (err != 0) {
        return err;
    }
    lp_part = &VFipdm_disk_set.partition[PDM_PART_GET_NO(p_part)];
    err = VFipdm_disk_set_disk(lp_part->p_disk, p_part);
    if (err != 0) {
        return err;
    }
    if (lp_part->total_sector <= lsector) {
        return 18;
    }
    VFipdm_part_convert_lsector_to_block(lp_part, lsector, num_sector, bps, &block, &num_block);
    err = VFipdm_disk_physical_erase(lp_part->p_disk, block, num_block);
    if (err != 0) {
        return err;
    }
    return 0;
}

pf_s32 VFipdm_part_get_media_information(PDM_PARTITION* p_part, PDM_DISK_INFO* p_disk_info) {
    pf_s32 err;
    PDM_PARTITION* lp_part;

    if (p_part == PF_NULL || p_disk_info == PF_NULL) {
        return 1;
    }
    err = VFipdm_part_check_partition_handle(p_part);
    if (err != 0) {
        return err;
    }
    lp_part = &VFipdm_disk_set.partition[PDM_PART_GET_NO(p_part)];
    err = VFipdm_disk_get_media_information(lp_part->p_disk, p_disk_info);
    if (err != 0) {
        return err;
    }
    return 0;
}

pf_s32 VFipdm_part_check_media_write_protect(PDM_PARTITION* p_part, pf_bool* is_wprotect) {
    PDM_PARTITION* lp_part;
    pf_s32 err;

    if (p_part == PF_NULL || is_wprotect == PF_NULL) {
        return 1;
    }
    err = VFipdm_part_check_partition_handle(p_part);
    if (err != 0) {
        return err;
    }
    lp_part = &VFipdm_disk_set.partition[PDM_PART_GET_NO(p_part)];
    if ((lp_part->status & 0x10) != 0) {
        *is_wprotect = PF_TRUE;
    } else {
        *is_wprotect = PF_FALSE;
    }
    return 0;
}

pf_s32 VFipdm_part_check_media_insert(PDM_PARTITION* p_part, pf_bool* is_insert) {
    PDM_PARTITION* lp_part;
    pf_s32 err;

    if (p_part == PF_NULL || is_insert == PF_NULL) {
        return 1;
    }
    err = VFipdm_part_check_partition_handle(p_part);
    if (err != 0) {
        return err;
    }
    lp_part = &VFipdm_disk_set.partition[PDM_PART_GET_NO(p_part)];
    if ((lp_part->status & 0x04) != 0) {
        *is_insert = PF_TRUE;
    } else {
        *is_insert = PF_FALSE;
    }
    return 0;
}

pf_s32 VFipdm_part_check_media_detect(PDM_PARTITION* p_part, pf_bool* is_detect) {
    PDM_PARTITION* lp_part;
    pf_s32 err;

    if (p_part == PF_NULL || is_detect == PF_NULL) {
        return 1;
    }
    err = VFipdm_part_check_partition_handle(p_part);
    if (err != 0) {
        return err;
    }
    lp_part = &VFipdm_disk_set.partition[PDM_PART_GET_NO(p_part)];
    if ((lp_part->status & 0x08) != 0) {
        *is_detect = PF_TRUE;
    } else {
        *is_detect = PF_FALSE;
    }
    return 0;
}

pf_s32 VFipdm_part_check_data_erase(PDM_PARTITION* p_part, pf_bool* is_erase) {
    PDM_PARTITION* lp_part;
    pf_s32 err;

    if (p_part == PF_NULL || is_erase == PF_NULL) {
        return 1;
    }

    err = VFipdm_part_check_partition_handle(p_part);
    if (err != 0) {
        return err;
    }

    lp_part = &VFipdm_disk_set.partition[PDM_PART_GET_NO(p_part)];

    err = VFipdm_disk_check_data_erase(lp_part->p_disk, is_erase);
    if (err != 0) {
        return err;
    }

    return 0;
}

void VFipdm_part_set_change_media_state(PDM_DISK* p_disk, pf_bool event) {
    pf_u16 part_cnt;
    PDM_PARTITION* p_part;

    for (part_cnt = 0; part_cnt < PDM_DRIVE_COUNT; part_cnt++) {
        if ((VFipdm_disk_set.partition[part_cnt].status & 0x01) != 0 && VFipdm_disk_set.partition[part_cnt].p_disk == p_disk) {
            p_part = &VFipdm_disk_set.partition[part_cnt];
            if (event == 0) {
                p_part->status &= ~0x04;
            } else {
                p_part->status |= 0x04;
            }
            p_part->status |= 0x08;
        }
    }
}

void VFipdm_part_set_driver_error_code(PDM_PARTITION* p_part, pf_s32 error_code) {
    PDM_PARTITION* lp_part = &VFipdm_disk_set.partition[PDM_PART_GET_NO(p_part)];
    lp_part->driver_last_error = error_code;
}

pf_s32 VFipdm_part_get_driver_error_code(PDM_PARTITION* p_part) {
    PDM_PARTITION* lp_part = &VFipdm_disk_set.partition[PDM_PART_GET_NO(p_part)];
    return lp_part->driver_last_error;
}
