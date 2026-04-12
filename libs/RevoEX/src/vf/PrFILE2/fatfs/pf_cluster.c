#include <private/vf/PrFILE2/fatfs/pf_cluster.h>
#include <private/vf/PrFILE2/fatfs/pf_file.h>

void VFiPFCLUSTER_UpdateLastAccessCluster(PF_FILE* p_file, pf_u32 sector) {
    PF_VOLUME* p_vol;

    if (p_file->cursor.position == 0) {
        p_file->p_sfd->ffd.last_access_cluster.cluster = 0;
        p_file->p_sfd->ffd.last_access_cluster.chain_index = 0;
        return;
    }

    p_vol = p_file == PF_NULL ? PF_NULL : p_file->p_sfd->dir_entry.p_vol;
    if ((p_file->cursor.position & (p_vol->bpb.bytes_per_sector - 1)) == 0 &&
        (p_file->cursor.file_sector_index & (p_vol->bpb.sectors_per_cluster - 1)) == 0) {
        if (p_file->cursor.file_sector_index != 0) {
            p_file->p_sfd->ffd.last_access_cluster.chain_index = (p_file->cursor.file_sector_index - 1) >> p_vol->bpb.log2_sectors_per_cluster;
            p_file->p_sfd->ffd.last_access_cluster.cluster =
                (((sector - 1) - p_vol->bpb.first_data_sector) >> p_vol->bpb.log2_sectors_per_cluster) + 2;
        }
    } else {
        p_file->p_sfd->ffd.last_access_cluster.chain_index = p_file->cursor.file_sector_index >> p_vol->bpb.log2_sectors_per_cluster;
        p_file->p_sfd->ffd.last_access_cluster.cluster = ((sector - p_vol->bpb.first_data_sector) >> p_vol->bpb.log2_sectors_per_cluster) + 2;
    }
}

pf_s32 VFiPFCLUSTER_AppendCluster(PF_FILE* p_file, pf_u32 byte, pf_bool* p_success, pf_u32* sector) {
    pf_s32 err;
    PF_VOLUME* p_vol;
    pf_u32 num_sector;
    pf_u32 max_appendable_size;
    PF_CURSOR save_cursor;
    PF_FAT_HINT save_hint;

    *p_success = 0;
    if ((pf_u32)&VFipf_vol_set > (pf_u32)p_file || (pf_u32)(&VFipf_vol_set) + sizeof(VFipf_vol_set) < (pf_u32)p_file) {
        return 10;
    }
    if (p_file == PF_NULL || p_file->p_sfd == PF_NULL || (p_file->stat & 0x01) == 0 || (p_file->p_sfd->stat & 0x01) == 0 ||
        (p_file->p_sfd->stat & 0x02) == 0) {
        return 38;
    }
    if ((p_file->p_sfd->stat & 0x01) == 0 || (p_file->p_sfd->stat & 0x02) == 0) {
        return 38;
    }

    p_vol = p_file == PF_NULL ? PF_NULL : p_file->p_sfd->dir_entry.p_vol;
    if (p_vol == PF_NULL) {
        return 38;
    }
    save_cursor = p_file->cursor;
    save_hint = p_file->hint;

    p_file->p_sfd->ffd.p_hint = &p_file->hint;
    *sector = 0xFFFFFFFF;
    if ((p_vol->fsi_flag & 0x04) != 0 && p_vol->num_free_clusters != -1 && p_vol->num_free_clusters == 0) {
        return 6;
    }
    VFiPFFILE_Cursor_MoveToClusterEnd(p_file, p_file->p_sfd->dir_entry.file_size + byte);
    if (p_file->cursor.position == -1) {
        *p_success = 0;
        return 37;
    }
    err = VFiPFFAT_GetSectorAllocated(&p_file->p_sfd->ffd, p_file->cursor.file_sector_index, byte, sector, &num_sector);
    if (err != 0) {
        p_file->cursor = save_cursor;
        p_file->hint = save_hint;
        return err;
    }
    p_file->cursor = save_cursor;
    p_file->hint = save_hint;
    max_appendable_size = num_sector << p_vol->bpb.log2_bytes_per_sector;
    if (byte < max_appendable_size) {
        max_appendable_size = byte;
    }
    *p_success = max_appendable_size;
    return 0;
}

pf_s32 VFiPFCLUSTER_GetAppendSize(PF_FILE* p_file, pf_u32* p_size) {
    PF_VOLUME* p_vol;
    pf_u32 cluster_size;
    pf_u32 file_cluster_size;
    pf_u32 total_allocated_size;
    pf_u32 file_end_cluster;
    pf_u32 unused_cluster;
    pf_u32 next_cluster;
    pf_u32 num_append_cluster;
    pf_u32 sig_eoc;
    pf_s32 err;

    *p_size = 0;
    if ((pf_u32)&VFipf_vol_set > (pf_u32)p_file || (pf_u32)(&VFipf_vol_set) + sizeof(VFipf_vol_set) < (pf_u32)p_file) {
        return 0xA;
    }
    if (p_file == PF_NULL || p_file->p_sfd == PF_NULL || (p_file->stat & 0x01) == 0 || (p_file->p_sfd->stat & 0x01) == 0 ||
        (p_file->p_sfd->stat & 0x02) == 0) {
        return 38;
    }
    if ((p_file->p_sfd->stat & 0x01) == 0 || (p_file->p_sfd->stat & 0x02) == 0) {
        return 38;
    }

    p_vol = p_file == PF_NULL ? PF_NULL : p_file->p_sfd->dir_entry.p_vol;
    if (p_vol == PF_NULL) {
        return 38;
    }
    cluster_size = p_vol->bpb.bytes_per_sector << p_vol->bpb.log2_sectors_per_cluster;
    if (p_file->p_sfd->dir_entry.start_cluster != 0) {
        file_cluster_size =
            p_file->p_sfd->dir_entry.file_size +
            ((p_file->p_sfd->dir_entry.file_size % cluster_size) != 0 ? cluster_size - (p_file->p_sfd->dir_entry.file_size % cluster_size) : 0);
        if (p_file->p_sfd->ffd.last_cluster.max_chain_index != 0) {
            total_allocated_size = (p_file->p_sfd->ffd.last_cluster.max_chain_index + 1) * cluster_size;

        } else {
            if (p_file->p_sfd->dir_entry.file_size != 0) {
                err = VFiPFFAT_TraceClustersChain(&p_file->p_sfd->ffd, p_file->p_sfd->dir_entry.start_cluster, p_file->p_sfd->dir_entry.file_size,
                                                  &file_end_cluster, &unused_cluster);
                if (err != 0) {
                    return err;
                }
            } else {
                unused_cluster = p_file->p_sfd->dir_entry.start_cluster;
            }

            sig_eoc = VFiPFFAT_GetValueOfEOC2(p_vol);
            num_append_cluster = 0;
            for (; unused_cluster != sig_eoc; unused_cluster = next_cluster) {
                num_append_cluster++;
                err = VFiPFFAT_ReadValueToSpecifiedCluster(p_vol, unused_cluster, &next_cluster);
                if (err != 0) {
                    return err;
                }
            }

            total_allocated_size = file_cluster_size + (num_append_cluster * cluster_size);
        }
        *p_size = total_allocated_size - file_cluster_size;
    }

    return 0;
}
