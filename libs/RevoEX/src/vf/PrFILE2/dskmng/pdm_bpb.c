#include <private/vf/PrFILE2/dskmng/pdm_bpb.h>

static void VFipdm_bpb_calculate_common_bpb_fields(PDM_BPB* p_bpb /* r3 */) {
    pf_u32 num_data_sectors;
    pf_u16 val;

    p_bpb->log2_bytes_per_sector = 0;
    val = p_bpb->bytes_per_sector;

    while (val >>= 1) {
        p_bpb->log2_bytes_per_sector++;
    }

    p_bpb->log2_sectors_per_cluster = 0;
    val = p_bpb->sectors_per_cluster;
    while (val >>= 1) {
        p_bpb->log2_sectors_per_cluster++;
    }

    p_bpb->num_root_dir_sectors = ((p_bpb->num_root_dir_entries << 5 /* * 32 */) + (p_bpb->bytes_per_sector - 1)) >> p_bpb->log2_bytes_per_sector;
    p_bpb->first_data_sector = (p_bpb->num_FATs * p_bpb->sectors_per_FAT) + (p_bpb->num_root_dir_sectors + p_bpb->num_reserved_sectors);
    num_data_sectors = p_bpb->total_sectors - p_bpb->first_data_sector;
    p_bpb->num_clusters = num_data_sectors >> p_bpb->log2_sectors_per_cluster;

    if (p_bpb->num_clusters < 0xFF5) {
        p_bpb->fat_type = PDM_FAT_12;
        return;
    }
    if (p_bpb->num_clusters < 0xFFF5) {
        p_bpb->fat_type = PDM_FAT_16;
        return;
    }
    p_bpb->fat_type = PDM_FAT_32;
}

static void VFipdm_bpb_calculate_specific_bpb_fields(PDM_BPB* p_bpb) {
    switch (p_bpb->fat_type) {
        case PDM_FAT_12:
        case PDM_FAT_16: {
            p_bpb->first_root_dir_sector = p_bpb->num_reserved_sectors + (p_bpb->num_FATs * p_bpb->sectors_per_FAT);
            p_bpb->num_active_FATs = p_bpb->num_FATs;
            p_bpb->active_FAT_sector = p_bpb->num_reserved_sectors;
            break;
        }
        case PDM_FAT_32: {
            p_bpb->first_root_dir_sector = p_bpb->first_data_sector + ((p_bpb->root_dir_cluster - 2) << p_bpb->log2_sectors_per_cluster);
            if ((p_bpb->ext_flags & 0x80) != 0) {
                p_bpb->num_active_FATs = 1;
                p_bpb->active_FAT_sector = p_bpb->num_reserved_sectors + ((p_bpb->ext_flags & (0x01 | 0x02 | 0x04)) * p_bpb->sectors_per_FAT);
                return;
            }
            p_bpb->num_active_FATs = p_bpb->num_FATs;
            p_bpb->active_FAT_sector = p_bpb->num_reserved_sectors;
            break;
        }
        default: {
            break;
        }
    }
}

pf_s32 VFipdm_bpb_load_string(const pf_u8* buf, pf_u32 length, pf_u8* p_string) {
    pf_u32 i;

    if (buf == PF_NULL || p_string == PF_NULL || length == 0) {
        return 1;
    }

    for (i = 0; i < length; i++) {
        p_string[i] = *(pf_u8*)&buf[i];
    }

    return 0;
}

// DEBUG NON MATCHING
pf_s32 VFipdm_bpb_get_bpb_information(pf_u8* buf /* r30 */, PDM_BPB* p_bpb /* r31 */) {
    pf_s32 err;  // r29

    if (buf == PF_NULL || p_bpb == PF_NULL) {
        return 1;
    }
    err = 0;
    VFipdm_bpb_load_string(buf, 3, p_bpb->jump_boot);
    VFipdm_bpb_load_string(buf + 3, 8, p_bpb->oem_name);
    p_bpb->bytes_per_sector = PDM_U16_FROM_BUF(buf, 0x0B);
    p_bpb->sectors_per_cluster = buf[0x0D];
    p_bpb->num_reserved_sectors = PDM_U16_FROM_BUF(buf, 0x0E);
    p_bpb->num_FATs = buf[0x10];
    p_bpb->num_root_dir_entries = PDM_U16_FROM_BUF(buf, 0x11);
    p_bpb->total_sectors16 = PDM_U16_FROM_BUF(buf, 0x13);
    p_bpb->media = buf[0x15];
    p_bpb->sectors_per_FAT16 = PDM_U16_FROM_BUF(buf, 0x16);
    p_bpb->sector_per_track = PDM_U16_FROM_BUF(buf, 0x18);
    p_bpb->num_heads = PDM_U16_FROM_BUF(buf, 0x1A);
    p_bpb->num_hidden_sectors = PDM_U32_FROM_BUF(buf, 0x1C);
    p_bpb->total_sectors32 = PDM_U32_FROM_BUF(buf, 0x20);

    p_bpb->total_sectors = p_bpb->total_sectors16 == 0 ? p_bpb->total_sectors32 : p_bpb->total_sectors16;

    if (p_bpb->sectors_per_FAT16 == 0) {
        p_bpb->sectors_per_FAT32 = PDM_U32_FROM_BUF(buf, 0x24);
        p_bpb->sectors_per_FAT = p_bpb->sectors_per_FAT32;
    } else {
        p_bpb->sectors_per_FAT32 = 0;
        p_bpb->sectors_per_FAT = p_bpb->sectors_per_FAT16;
    }

    VFipdm_bpb_calculate_common_bpb_fields(p_bpb);

    switch (p_bpb->fat_type) {
        case PDM_FAT_12:
        case PDM_FAT_16: {
            if (p_bpb->sectors_per_FAT16 == 0) {
                err = 4;
            }
            p_bpb->ext_flags = 0;
            p_bpb->fs_version = 0;
            p_bpb->root_dir_cluster = 0;
            p_bpb->fs_info_sector = 0;
            p_bpb->backup_boot_sector = 0;
            p_bpb->drive = buf[0x24];
            p_bpb->boot_sig = buf[0x26];
            p_bpb->vol_id = PDM_U32_FROM_BUF(buf, 0x27);

            VFipdm_bpb_load_string(&buf[0x2B], 11, p_bpb->vol_label);
            VFipdm_bpb_load_string(&buf[0x36], 8, p_bpb->fs_type);

            break;
        }
        case PDM_FAT_32: {
            if (p_bpb->total_sectors16 != 0 || p_bpb->sectors_per_FAT16 != 0) {
                err = 4;
            }
            p_bpb->ext_flags = PDM_U16_FROM_BUF(buf, 0x28);
            p_bpb->fs_version = PDM_U16_FROM_BUF(buf, 0x2A);
            p_bpb->root_dir_cluster = PDM_U32_FROM_BUF(buf, 0x2C);
            p_bpb->fs_info_sector = PDM_U16_FROM_BUF(buf, 0x30);
            p_bpb->backup_boot_sector = PDM_U16_FROM_BUF(buf, 0x32);
            p_bpb->drive = buf[0x40];
            p_bpb->boot_sig = buf[0x42];
            p_bpb->vol_id = PDM_U32_FROM_BUF(buf, 0x43);

            VFipdm_bpb_load_string(&buf[0x47], 11, p_bpb->vol_label);
            VFipdm_bpb_load_string(&buf['R'], 8, p_bpb->fs_type);

            if (p_bpb->fs_version != 0) {
                err = 4;
            }
            break;
        }
        default: {
            err = 4;
            break;
        }
    }

    VFipdm_bpb_calculate_specific_bpb_fields(p_bpb);
    return err;
}

pf_s32 VFipdm_bpb_get_fsinfo_information(pf_u8* buf, PDM_FSINFO* p_fsinfo) {
    if (buf == PF_NULL || p_fsinfo == PF_NULL) {
        return 1;
    }
    p_fsinfo->free_count = PDM_U32_FROM_BUF(buf, 0x1E8);
    p_fsinfo->next_free = PDM_U32_FROM_BUF(buf, 0x1EC);
    return 0;
}

pf_s32 VFipdm_bpb_set_fsinfo_information(PDM_FSINFO* p_fsinfo, pf_u8* buf) {
    if (buf == PF_NULL || p_fsinfo == PF_NULL) {
        return 1;
    }

    buf[0x00] = 'R';
    buf[0x01] = 'R';
    buf[0x02] = 'a';
    buf[0x03] = 'A';
    buf[0x1E4] = 'r';
    buf[0x1E5] = 'r';
    buf[0x1E6] = 'A';
    buf[0x1E7] = 'a';
    buf[0x1E8] = p_fsinfo->free_count;
    buf[0x1E9] = p_fsinfo->free_count >> 8;
    buf[0x1EA] = p_fsinfo->free_count >> 16;
    buf[0x1EB] = p_fsinfo->free_count >> 24;
    buf[0x1EC] = p_fsinfo->next_free;
    buf[0x1ED] = p_fsinfo->next_free >> 8;
    buf[0x1EE] = p_fsinfo->next_free >> 16;
    buf[0x1EF] = p_fsinfo->next_free >> 24;
    buf[0x1FC] = 0;
    buf[0x1FD] = 0;
    buf[0x1FE] = 0x55;
    buf[0x1FF] = 0xAA;

    return 0;
}

pf_s32 VFipdm_bpb_check_boot_sector(pf_u8* buf, pf_bool* is_boot) {
    pf_u16 byte_per_sector;
    pf_u16 sector_per_cluster;
    pf_u8 media;

    if (buf == PF_NULL || is_boot == PF_NULL) {
        return 1;
    }
    *is_boot = PF_TRUE;
    if ((buf[0x00] != 0xEB || buf[0x2] != 0x90) && buf[0x0] != 0xE9) {
        *is_boot = PF_FALSE;
    }
    if (buf[0x1FE] != 0x55 || buf[0x1FF] != 0xAA) {
        *is_boot = PF_FALSE;
    }
    byte_per_sector = PDM_U16_FROM_BUF(buf, 0xB);
    if (byte_per_sector != 0x200 && byte_per_sector != 0x400 && byte_per_sector != 0x800 && byte_per_sector != 0x1000) {
        *is_boot = PF_FALSE;
    }
    sector_per_cluster = buf[0xD];
    if (sector_per_cluster != 1 && sector_per_cluster != 2 && sector_per_cluster != 4 && sector_per_cluster != 8 && sector_per_cluster != 0x10 &&
        sector_per_cluster != 0x20 && sector_per_cluster != 0x40 && sector_per_cluster != 0x80) {
        *is_boot = PF_FALSE;
    }
    media = buf[0x15];
    if (media != 0xF0 && media != 0xF8 && media != 0xF9 && media != 0xFA && media != 0xFB && media != 0xFC && media != 0xFD && media != 0xFE &&
        media != 0xFF) {
        *is_boot = PF_FALSE;
    }
    return 0;
}

pf_s32 VFipdm_bpb_check_fsinfo_sector(pf_u8* buf, pf_bool* is_fsinfo) {
    pf_u32 lead_sig;
    pf_u32 struct_sig;
    pf_u32 trail_sig;

    if (buf == PF_NULL || is_fsinfo == PF_NULL) {
        return 1;
    }

    lead_sig = PDM_U32_FROM_BUF(buf, 0x00);
    struct_sig = PDM_U32_FROM_BUF(buf, 0x1E4);
    trail_sig = PDM_U32_FROM_BUF(buf, 0x1FC);
    if (lead_sig == 'AaRR' && struct_sig == 'aArr' && trail_sig == 0xAA550000) {
        *is_fsinfo = PF_TRUE;
    } else {
        *is_fsinfo = PF_FALSE;
    }
    return 0;
}
