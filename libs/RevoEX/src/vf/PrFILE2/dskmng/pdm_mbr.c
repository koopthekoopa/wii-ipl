#include <private/vf/PrFILE2/dskmng/pdm_bpb.h>
#include <private/vf/PrFILE2/dskmng/pdm_disk.h>
#include <private/vf/PrFILE2/dskmng/pdm_mbr.h>

// DEBUG NON MATCHING
pf_s32 VFipdm_mbr_get_table(pf_u8* buf /* r3 */, pf_u32 sector /* r4 */, PDM_MBR* p_mbr_tbl /* r5 */) {
    pf_u8* p_buf;   // r31
    pf_u16 cs_val;  // r29
    pf_u32 i;       // r30

    if (buf == PF_NULL || p_mbr_tbl == PF_NULL) {
        return 1;
    }
    if (sector == 0) {
        p_mbr_tbl->epbr_base_sector = 0;
        p_mbr_tbl->current_sector = 0;
    } else {
        if (p_mbr_tbl->epbr_base_sector == 0) {
            p_mbr_tbl->epbr_base_sector = sector;
        }
        p_mbr_tbl->current_sector = sector;
    }

    p_buf = buf + PDM_MBR_BOOT_PROGRAM_LENGTH;

    for (i = 0; i < PDM_MBR_PARTITION_COUNT; i++) {
        p_mbr_tbl->partition_table[i].boot_flag = p_buf[0x0];
        p_mbr_tbl->partition_table[i].partition_type = p_buf[0x4];
        p_mbr_tbl->partition_table[i].s_head = p_buf[0x1];

        cs_val = PDM_U16_FROM_BUF(p_buf, 0x02);
        p_mbr_tbl->partition_table[i].s_cylinder = ((cs_val & 0xC0) << 2) + (cs_val >> 8);
        p_mbr_tbl->partition_table[i].s_sector = cs_val & 0x3F;
        p_mbr_tbl->partition_table[i].e_head = PDM_U16_FROM_BUF(p_buf, 0x05);

        cs_val = PDM_U16_FROM_BUF(p_buf, 0x06);
        p_mbr_tbl->partition_table[i].e_cylinder = ((cs_val & 0xC0) << 2) + (cs_val >> 8);
        p_mbr_tbl->partition_table[i].e_sector = cs_val & 0x3F;

        p_mbr_tbl->partition_table[i].lba_start_sector = PDM_U32_FROM_BUF(p_buf, 0x08);
        p_mbr_tbl->partition_table[i].lba_num_sectors = PDM_U32_FROM_BUF(p_buf, 0x0C);

        p_buf += PDM_MBR_PARTITION_TBL_LEN;
    }
    return 0;
}

pf_s32 VFipdm_mbr_get_mbr_part_table(PDM_DISK* p_disk, PDM_MBR* p_mbr_tbl) {
    pf_s32 err;
    pf_u8 buf[512];
    pf_u32 num_success;
    pf_u32 is_master_boot;

    if (p_disk == PF_NULL || p_mbr_tbl == PF_NULL) {
        return 1;
    }
    err = VFipdm_disk_check_disk_handle(p_disk);
    if (err != 0) {
        return err;
    }
    err = VFipdm_disk_physical_read(p_disk, (pf_u8*)&buf, 0, 1, 0x200, &num_success);
    if (err != 0) {
        return err;
    }
    VFipdm_mbr_check_master_boot_record(p_disk, (pf_u8*)&buf, &is_master_boot);
    if (is_master_boot != 0) {
        VFipdm_mbr_get_table((pf_u8*)&buf, 0, p_mbr_tbl);
        goto success;
    }

    return 5;

success:
    return 0;
}

pf_s32 VFipdm_mbr_get_epbr_part_table(PDM_DISK* p_disk, PDM_MBR* p_mbr_tbl) {
    pf_s32 err;
    pf_u8 buf[512];
    pf_u32 extend_start_sector;
    pf_u16 tbl_index;
    pf_u32 num_success;
    pf_bool is_master_boot;
    PDM_DISK_INFO disk_info;
    pf_u32 extend_start_block;

    if (p_disk == PF_NULL || p_mbr_tbl == PF_NULL) {
        return 1;
    }
    err = VFipdm_disk_check_disk_handle(p_disk);
    if (err != 0) {
        return err;
    }
    extend_start_sector = 0;

    for (tbl_index = 0; tbl_index < 4; tbl_index++) {
        if (p_mbr_tbl->partition_table[tbl_index].partition_type == 5 || p_mbr_tbl->partition_table[tbl_index].partition_type == 0xF) {
            extend_start_sector = p_mbr_tbl->epbr_base_sector + p_mbr_tbl->partition_table[tbl_index].lba_start_sector;
            break;
        }
    }
    if (tbl_index == 4) {
        return 7;
    }
    err = VFipdm_disk_get_media_information(p_disk, &disk_info);
    if (err != 0) {
        return err;
    }

    extend_start_block = extend_start_sector * (disk_info.bytes_per_sector >> 9);
    err = VFipdm_disk_physical_read(p_disk, (pf_u8*)&buf, extend_start_block, 1, 0x200, &num_success);
    if (err != 0) {
        return err;
    }

    VFipdm_mbr_check_master_boot_record(p_disk, (pf_u8*)&buf, &is_master_boot);
    if (is_master_boot) {
        VFipdm_mbr_get_table((pf_u8*)&buf, extend_start_sector, p_mbr_tbl);
        goto success;
    } else {
        return 6;
    }

success:
    return 0;
}

pf_s32 VFipdm_mbr_check_master_boot_record(PDM_DISK* p_disk, pf_u8* buf, pf_bool* is_master_boot) {
    pf_s16 part_cnt;
    PDM_MBR_SEC* p_mbr_sec;
    PDM_MBR mbr_tbl;
    PDM_DISK* lp_disk;
    pf_bool is_boot;
    pf_s32 err;

    if (p_disk == PF_NULL || buf == PF_NULL || is_master_boot == PF_NULL) {
        return 1;
    }

    err = VFipdm_disk_check_disk_handle(p_disk);
    if (err != 0) {
        return err;
    }

    *is_master_boot = PF_FALSE;
    p_mbr_sec = (PDM_MBR_SEC*)buf;
    if (p_mbr_sec->signature1 != 0x55 || p_mbr_sec->signature2 != 0xAA) {
        return 0;
    }

    VFipdm_mbr_get_table(buf, 0, &mbr_tbl);
    lp_disk = &VFipdm_disk_set.disk[PDM_DISK_GET_NO(p_disk)];
loop_16:
    for (part_cnt = 0; part_cnt < 4; part_cnt++) {
        if (mbr_tbl.partition_table[part_cnt].lba_num_sectors > (0xFFFFFFFF - mbr_tbl.partition_table[part_cnt].lba_start_sector) ||
            mbr_tbl.partition_table[part_cnt].lba_start_sector + mbr_tbl.partition_table[part_cnt].lba_num_sectors >
                lp_disk->disk_info.total_sectors) {
            *is_master_boot = PF_FALSE;
            break;
        } else {
            if (mbr_tbl.partition_table[part_cnt].lba_start_sector != 0) {
                *is_master_boot = PF_TRUE;
            }
        }
    }
    if (!(*is_master_boot) && mbr_tbl.partition_table[0].lba_start_sector == 0 && mbr_tbl.partition_table[1].lba_start_sector == 0 &&
        mbr_tbl.partition_table[2].lba_start_sector == 0 && mbr_tbl.partition_table[3].lba_start_sector == 0) {
        VFipdm_bpb_check_boot_sector(buf, &is_boot);
        if (!is_boot) {
            *is_master_boot = PF_TRUE;
        } else {
            *is_master_boot = PF_FALSE;
        }
    }
    return 0;
}
