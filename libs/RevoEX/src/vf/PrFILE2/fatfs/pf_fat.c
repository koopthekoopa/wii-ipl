#include <private/vf/PrFILE2/fatfs/pf_fat.h>

#include <private/vf/PrFILE2/fatfs/pf_fat12.h>
#include <private/vf/PrFILE2/fatfs/pf_fat16.h>
#include <private/vf/PrFILE2/fatfs/pf_fat32.h>

#include <private/vf/PrFILE2/driver/pf_driver.h>
#include <private/vf/PrFILE2/fatfs/pf_volume.h>

#include <private/vf/PrFILE2/fatfs/pf_sector.h>

#include <private/vf/PrFILE2/common/pf_clib.h>

static const struct {
    pf_u32 bad;        // 0x00
    pf_u32 eoc1;       // 0x04
    pf_u32 eoc2;       // 0x08
    pf_u32 fat0_mask;  // 0x0C
    pf_u32 fat1;       // 0x10
} fat_special_values[FAT_MAX] = {
    {0xFF7, 0xFF8, 0xFFF, 0xF00, 0xFFF},                     // FAT_12
    {0xFFF7, 0xFFF8, 0xFFFF, 0xFF00, 0xFFFF},                // FAT_16
    {0xFFFFFF7, 0xFFFFFF8, 0xFFFFFFF, 0xFFFFF00, 0xFFFFFFF}  // FAT_32
};

static pf_s32 VFiPFFAT_ReadFATEntry(PF_VOLUME* p_vol, pf_u32 cluster, pf_u32* p_value) {
    switch (p_vol->bpb.fat_type) {
        case FAT_12: {
            return VFiPFFAT12_ReadFATEntry(p_vol, (pf_u16)cluster, p_value);
        }
        case FAT_16: {
            return VFiPFFAT16_ReadFATEntry(p_vol, cluster, p_value);
        }
        case FAT_32: {
            return VFiPFFAT32_ReadFATEntry(p_vol, cluster, p_value);
        }
        default: {
            break;
        }
    }

    *p_value = -1;
    return 15;
}

static pf_s32 VFiPFFAT_ReadFATEntryPage(PF_VOLUME* p_vol, pf_u32 cluster, pf_u32* p_value, PF_CACHE_PAGE** p_page) {
    pf_s32 err;

    switch (p_vol->bpb.fat_type) {
        case FAT_12: {
            err = VFiPFFAT12_ReadFATEntryPage(p_vol, (pf_u16)cluster, p_value, p_page);
            break;
        }
        case FAT_16: {
            err = VFiPFFAT16_ReadFATEntryPage(p_vol, cluster, p_value, p_page);
            break;
        }
        case FAT_32: {
            err = VFiPFFAT32_ReadFATEntryPage(p_vol, cluster, p_value, p_page);
            break;
        }
        default: {
            err = 15;
            break;
        }
    }
    return err;
}

static pf_s32 VFiPFFAT_WriteFATEntry(PF_VOLUME* p_vol, pf_u32 cluster, pf_u32 value) {
    switch (p_vol->bpb.fat_type) {
        case FAT_12: {
            if (value > 0x0FFF) {
                return 16;
            }
            return VFiPFFAT12_WriteFATEntry(p_vol, (pf_u16)cluster, (pf_u16)value);
        }
        case FAT_16: {
            if (value > 0xFFFF) {
                return 16;
            }
            return VFiPFFAT16_WriteFATEntry(p_vol, cluster, value);
        }
        case FAT_32: {
            if (value > 0x0FFFFFFF) {
                return 16;
            }
            return VFiPFFAT32_WriteFATEntry(p_vol, cluster, value);
        }
        default: {
            break;
        }
    }
    return 15;
}

static pf_s32 VFiPFFAT_WriteFATEntryPage(PF_VOLUME* p_vol, pf_u32 cluster, pf_u32 value, PF_CACHE_PAGE** p_page) {
    switch (p_vol->bpb.fat_type) {
        case FAT_12: {
            if (value > 0x0FFF) {
                return 16;
            }
            return VFiPFFAT12_WriteFATEntryPage(p_vol, (pf_u16)cluster, (pf_u16)value, p_page);
        }
        case FAT_16: {
            if (value > 0xFFFF) {
                return 16;
            }
            return VFiPFFAT16_WriteFATEntryPage(p_vol, cluster, value, p_page);
        }
        case FAT_32: {
            if (value > 0x0FFFFFFF) {
                return 16;
            }
            return VFiPFFAT32_WriteFATEntryPage(p_vol, cluster, value, p_page);
        }
        default: {
            break;
        }
    }
    return 15;
}

static pf_s32 VFiPFFAT_ReadFATSector(PF_VOLUME* p_vol, PF_CACHE_PAGE** p_page, pf_u32 cluster) {
    pf_s32 err;
    pf_u32 offset;
    pf_u32 current_fat;
    pf_s32 result;
    pf_u32 sector;

    switch (p_vol->bpb.fat_type) {
        case FAT_12: {
            offset = (pf_u16)(cluster + (cluster >> 1));
            break;
        }
        case FAT_16: {
            offset = cluster * sizeof(pf_u16);
            break;
        }
        case FAT_32: {
            offset = cluster * sizeof(pf_u32);
            break;
        }
        default: {
            return 15;
        }
    }

    sector = (pf_u16)(p_vol->bpb.active_FAT_sector + (offset >> p_vol->bpb.log2_bytes_per_sector));
    if ((p_vol->bpb.ext_flags & 0x80) != 0) {
        current_fat = p_vol->bpb.ext_flags & (0x01 | 0x02 | 0x04);
    } else {
        current_fat = 1;
    }
    while (PF_TRUE) {
        err = VFiPFCACHE_ReadFATPage(p_vol, sector, p_page);
        if (err == 0x1000 && p_vol->p_callback != PF_NULL) {
            result = ((PF_VOLUME_CB)p_vol->p_callback)(p_vol->last_driver_error);
            if (result != 0) {
                if (result == 1 && p_vol->bpb.num_active_FATs >= 2 && current_fat < p_vol->bpb.num_active_FATs) {
                    current_fat++;
                    sector += p_vol->bpb.sectors_per_FAT;
                    goto block_22;
                }
            } else {
                goto block_22;
            }
        }
        if (err != 0) {
            return err;
        }
    block_22:
        if (err == 0) {
            return err;
        }
    }
}

static pf_s32 VFiPFFAT_SearchForNumFreeClusters(PF_VOLUME* p_vol, pf_u32 start_cluster, pf_u32 end_cluster, pf_u32 num_cluster,
                                                pf_u32* p_start_free_cluster, pf_u32* p_last_free_cluster) {
    pf_u32 upper_bound_cluster;
    pf_u32 fat_entry;
    pf_u32 success_num;
    pf_u32 save_start_cluster;
    pf_u32 save_success_num;
    pf_s32 err;
    pf_u32 search_flg = 0;
    pf_u32 temp_start_cluster = 0;
    PF_CACHE_PAGE* p_page;

    *p_start_free_cluster = -1;
    *p_last_free_cluster = -1;

    success_num = 0;
    save_start_cluster = -1;
    save_success_num = 0;
    upper_bound_cluster = p_vol->bpb.num_clusters + 2;

    if (start_cluster < 2 || start_cluster >= (p_vol->bpb.num_clusters + 2)) {
        start_cluster = 2;
    }
    if (end_cluster < 2 || end_cluster >= (p_vol->bpb.num_clusters + 2)) {
        end_cluster = upper_bound_cluster - 1;
    }
    temp_start_cluster = start_cluster;
    err = VFiPFFAT_ReadFATSector(p_vol, &p_page, start_cluster);
    if (err != 0) {
        return err;
    }
    p_page->option = 0;
    while (start_cluster <= end_cluster) {
        if (upper_bound_cluster <= start_cluster) {
            start_cluster = 2;
        }
        err = VFiPFFAT_ReadFATEntryPage(p_vol, start_cluster, &fat_entry, &p_page);
        if (err != 0) {
            return err;
        }
        if (fat_entry == 0) {
            if (*p_start_free_cluster == -1) {
                *p_start_free_cluster = start_cluster;
            }
            success_num++;
            if (success_num >= num_cluster) {
                *p_last_free_cluster = start_cluster;
                return 0;
            }
        } else {
            if (save_success_num < success_num) {
                save_start_cluster = *p_start_free_cluster;
                save_success_num = success_num;
            }
            *p_start_free_cluster = -1;
            success_num = 0;
        }
        start_cluster++;
        if (search_flg == 0 && success_num == 0 && start_cluster > 2 && start_cluster == end_cluster) {
            end_cluster = temp_start_cluster;
            start_cluster = 2;
            search_flg = 1;
        }
    }

    if (save_success_num < success_num) {
        save_start_cluster = *p_start_free_cluster;
        save_success_num = success_num;
    }
    if (save_success_num != 0) {
        *p_start_free_cluster = save_start_cluster;
        *p_last_free_cluster = (*p_start_free_cluster + save_success_num) - 1;
    }
    return 0;
}

static pf_s32 VFiPFFAT_UpdateClusterLink(PF_FFD* p_ffd, pf_u32 cluster, pf_u32 chain_index) {
    if (p_ffd->cluster_link.max_count > p_ffd->cluster_link.position && p_ffd->cluster_link.max_count != 0) {
        if (chain_index == (p_ffd->cluster_link.position * (p_ffd->cluster_link.interval + 1))) {
            p_ffd->cluster_link.interval_offset = 0;
            p_ffd->cluster_link.buffer[p_ffd->cluster_link.position] = cluster;
            p_ffd->cluster_link.position++;
        } else {
            p_ffd->cluster_link.interval_offset++;
        }
        p_ffd->cluster_link.save_index = chain_index;
    }
    return 0;
}

static pf_s32 VFiPFFAT_ClearClusterLink(PF_FFD* p_ffd, pf_u32 chain_index) {
    pf_u32 position;
    pf_u32 offset;

    position = chain_index / (p_ffd->cluster_link.interval + 1);
    if (p_ffd->cluster_link.max_count >= position) {
        offset = chain_index % (p_ffd->cluster_link.interval + 1);
        if (offset == 0) {
            p_ffd->cluster_link.buffer[position] = 0;
        }
        if (p_ffd->cluster_link.save_index >= chain_index) {
            p_ffd->cluster_link.position = (chain_index - 1) / (p_ffd->cluster_link.interval + 1);
            p_ffd->cluster_link.interval_offset = (chain_index - 1) % (p_ffd->cluster_link.interval + 1);
            p_ffd->cluster_link.save_index = chain_index - 1;
        }
    }
    return 0;
}

static pf_s32 VFiPFFAT_FindClusterLink(PF_FFD* p_ffd, pf_u32 chain_index, pf_u32* p_cluster, pf_bool* is_found) {
    pf_u32 current_cluster;
    pf_u32 next_cluster = -1;
    pf_u32 position;
    pf_u32 offset;
    pf_u32 i;
    pf_s32 err;
    PF_CACHE_PAGE* p_page;

    *is_found = PF_FALSE;
    if (p_ffd->cluster_link.position == 0) {
        return 0;
    }
    if (p_ffd->cluster_link.save_index >= chain_index) {
        position = chain_index / (p_ffd->cluster_link.interval + 1);
        offset = chain_index % (p_ffd->cluster_link.interval + 1);
        if (offset == 0) {
            *p_cluster = p_ffd->cluster_link.buffer[position];
            *is_found = PF_TRUE;
        } else {
            current_cluster = p_ffd->cluster_link.buffer[position];
            err = VFiPFFAT_ReadFATSector(p_ffd->p_vol, &p_page, current_cluster);
            if (err != 0) {
                return err;
            }
            for (i = offset; i > 0; i--) {
                err = VFiPFFAT_ReadFATEntryPage(p_ffd->p_vol, current_cluster, &next_cluster, &p_page);
                if (err != 0) {
                    return err;
                }
                if (next_cluster == 0) {
                    return 13;
                }
                current_cluster = next_cluster;
            }

            if (next_cluster == 0) {
                return 13;
            }
            if (next_cluster == fat_special_values[p_ffd->p_vol->bpb.fat_type].eoc2) {
                return 0;
            }
            *p_cluster = next_cluster;
            *is_found = PF_TRUE;
        }
    } else {
        return 0;
    }
    return 0;
}

static pf_s32 VFiPFFAT_FindClusterLinkPage(PF_FFD* p_ffd, pf_u32 chain_index, pf_u32* p_cluster, pf_bool* is_found, PF_CACHE_PAGE* p_page) {
    pf_u32 current_cluster;
    pf_u32 next_cluster = -1;
    pf_u32 position;
    pf_u32 offset;
    pf_u32 i;
    pf_s32 err;

    *is_found = PF_FALSE;
    if (p_ffd->cluster_link.position == 0) {
        return 0;
    }
    if (p_ffd->cluster_link.save_index < chain_index) {
        goto out1;
    }
    position = chain_index / (p_ffd->cluster_link.interval + 1);
    offset = chain_index % (p_ffd->cluster_link.interval + 1);
    if (offset == 0) {
        *p_cluster = p_ffd->cluster_link.buffer[position];
        *is_found = PF_TRUE;
        goto out2;
    } else {
        current_cluster = p_ffd->cluster_link.buffer[position];
        for (i = offset; i != 0; i--) {
            err = VFiPFFAT_ReadFATEntryPage(p_ffd->p_vol, current_cluster, &next_cluster, &p_page);
            if (err != 0) {
                return err;
            }
            if (next_cluster == 0) {
                return 13;
            }
            current_cluster = next_cluster;
        }

        if (next_cluster == 0) {
            return 13;
        }
        if (next_cluster == fat_special_values[p_ffd->p_vol->bpb.fat_type].eoc2) {
            return 0;
        }
        *p_cluster = next_cluster;
        *is_found = PF_TRUE;
    }

    // what

    goto out2;

out1:
    return 0;

out2:
    return 0;
}

static pf_s32 VFiPFFAT_ReadClusterPage(PF_FFD* p_ffd, pf_u32 cluster, pf_u32 chain_index, pf_u32* next_cluster, pf_bool* chk_clstlnk,
                                       PF_CACHE_PAGE** p_page) {
    pf_s32 err;

    *next_cluster = -1;
    if (p_ffd->cluster_link.buffer != PF_NULL && *chk_clstlnk == PF_TRUE) {
        err = VFiPFFAT_FindClusterLinkPage(p_ffd, chain_index, next_cluster, chk_clstlnk, *p_page);
        if (err != 0) {
            return err;
        }
    }
    if (p_ffd->cluster_link.buffer == PF_NULL || *chk_clstlnk == PF_FALSE) {
        err = VFiPFFAT_ReadFATEntryPage(p_ffd->p_vol, cluster, next_cluster, p_page);
        if (err != 0) {
            return err;
        }
        if (*next_cluster == 0) {
            return 13;
        }
        if (*next_cluster == -1) {
            return 6;
        }
        if (p_ffd->cluster_link.buffer != PF_NULL && *next_cluster != fat_special_values[p_ffd->p_vol->bpb.fat_type].eoc2) {
            err = VFiPFFAT_UpdateClusterLink(p_ffd, *next_cluster, chain_index);
            if (err != 0) {
                return err;
            }
        }
    }
    return 0;
}

static pf_s32 VFiPFFAT_WriteCluster(PF_FFD* p_ffd, pf_u32 cluster, pf_u32 chain_index, pf_u32 next_cluster, pf_bool use_clstlnk) {
    pf_s32 err;
    pf_u32 access_cluster;

    err = VFiPFFAT_WriteFATEntry(p_ffd->p_vol, cluster, next_cluster);
    if (err != 0) {
        return err;
    }
    if (p_ffd->cluster_link.buffer != PF_NULL && use_clstlnk == PF_TRUE) {
        if (next_cluster == 0) {
            VFiPFFAT_ClearClusterLink(p_ffd, chain_index);
        } else {
            if (cluster != fat_special_values[p_ffd->p_vol->bpb.fat_type].eoc2) {
                err = VFiPFFAT_FindClusterLink(p_ffd, chain_index, &access_cluster, &use_clstlnk);
                if (err != 0) {
                    return err;
                }
                if (use_clstlnk == PF_FALSE) {
                    err = VFiPFFAT_UpdateClusterLink(p_ffd, cluster, chain_index);
                    if (err != 0) {
                        return err;
                    }
                }
            }
        }
    }
    return 0;
}

static pf_s32 VFiPFFAT_WriteClusterPage(PF_FFD* p_ffd, pf_u32 cluster, pf_u32 chain_index, pf_u32 next_cluster, pf_bool use_clstlnk,
                                        PF_CACHE_PAGE** p_page) {
    pf_s32 err;
    pf_u32 access_cluster;

    err = VFiPFFAT_WriteFATEntryPage(p_ffd->p_vol, cluster, next_cluster, p_page);
    if (err != 0) {
        return err;
    }
    if (p_ffd->cluster_link.buffer != PF_NULL && use_clstlnk == PF_TRUE) {
        if (next_cluster == 0) {
            VFiPFFAT_ClearClusterLink(p_ffd, chain_index);
        } else {
            if (cluster != fat_special_values[p_ffd->p_vol->bpb.fat_type].eoc2) {
                err = VFiPFFAT_FindClusterLinkPage(p_ffd, chain_index, &access_cluster, &use_clstlnk, *p_page);
                if (err != 0) {
                    return err;
                }
                if (use_clstlnk == PF_FALSE) {
                    err = VFiPFFAT_UpdateClusterLink(p_ffd, cluster, chain_index);
                    if (err != 0) {
                        return err;
                    }
                }
            }
        }
    }
    return 0;
}

static pf_s32 VFiPFFAT_DoAllocateChain(PF_FFD* p_ffd, pf_u32 chain_len, pf_u32 chain_index, pf_u32* p_chain_start, pf_u32* p_last_allocated) {
    PF_VOLUME* p_vol = p_ffd->p_vol;
    pf_u32 eoc2;
    PF_FAT_TYPE fat_type = p_vol->bpb.fat_type;
    pf_u32 first_allocated_cluster;
    pf_u32 last_allocated_cluster;
    pf_u32 start_cluster;
    pf_s32 err;
    PF_CACHE_PAGE* p_page;

    eoc2 = fat_special_values[fat_type].eoc2;

    *p_chain_start = -1;
    *p_last_allocated = -1;
    last_allocated_cluster = -1;
    err = VFiPFFAT_SearchForNumFreeClusters(p_vol, p_vol->last_free_cluster, -1, chain_len, &first_allocated_cluster, &last_allocated_cluster);
    if (err != 0) {
        return err;
    }
    if (first_allocated_cluster == -1) {
        return 0;
    }
    err = VFiPFFAT_ReadFATSector(p_vol, &p_page, first_allocated_cluster);
    if (err != 0) {
        return err;
    }
    p_page->option = 0;

    for (start_cluster = first_allocated_cluster; start_cluster < last_allocated_cluster; start_cluster++) {
        err = VFiPFFAT_WriteClusterPage(p_ffd, start_cluster, chain_index, start_cluster + 1, 1U, &p_page);
        if (err != 0) {
            return err;
        }
        if ((p_vol->fsi_flag & 0x04) != 0 && p_vol->num_free_clusters != -1 && p_vol->num_free_clusters != 0 &&
            (p_vol->bpb.fat_type != FAT_32 || last_allocated_cluster != p_vol->bpb.root_dir_cluster)) {
            p_vol->num_free_clusters--;
        }
        if ((*p_chain_start) == -1) {
            *p_chain_start = start_cluster;
        }
        *p_last_allocated = start_cluster;
        chain_index++;
    }
    if (last_allocated_cluster != -1) {
        err = VFiPFFAT_WriteClusterPage(p_ffd, last_allocated_cluster, chain_index, eoc2, 1U, &p_page);
        if (err != 0) {
            return err;
        }
        if (*p_chain_start == -1) {
            *p_chain_start = start_cluster;
        }
        *p_last_allocated = start_cluster;
        if (p_vol->num_free_clusters != -1 && p_vol->num_free_clusters != 0 &&
            (p_vol->bpb.fat_type != FAT_32 || last_allocated_cluster != p_vol->bpb.root_dir_cluster)) {
            p_vol->num_free_clusters--;
        }
    }
    p_vol->last_free_cluster = last_allocated_cluster + 1;
    p_ffd->last_cluster.num_last_cluster = last_allocated_cluster;
    p_ffd->last_cluster.max_chain_index = chain_index;
    *p_last_allocated = last_allocated_cluster;
    err = VFiPFFAT_UpdateFATEntry(p_vol, p_page);
    if (err != 0) {
        return err;
    }
    if (p_vol->bpb.fat_type == FAT_32 && (p_vol->fsi_flag & 0x02) != 0) {
        err = VFiPFFAT_RefreshFSINFO(p_vol);
        if (err != 0) {
            p_vol->num_free_clusters = -1;
            p_vol->fsi_flag &= ~0x04;
        }
    }
    return 0;
}

static pf_s32 VFiPFFAT_AllocateChain(PF_FFD* p_ffd, pf_u32 chain_len, pf_u32 chain_index, pf_u32* p_chain_start, pf_u32* p_last_allocated) {
    pf_s32 err;

    err = VFiPFFAT_DoAllocateChain(p_ffd, chain_len, chain_index, p_chain_start, p_last_allocated);
    if (err != 0) {
        if (*p_chain_start != -1) {
            VFiPFFAT_FreeChain(p_ffd, *p_chain_start, chain_index, -1);
        }
        *p_chain_start = -1;
        *p_last_allocated = -1;
        return err;
    }
    return 0;
}

// DEBUG NON MATCHING
static pf_s32 VFiPFFAT_GetClusterInChain(PF_FFD* p_ffd /* r31 */, pf_u32 chain_index /* r21 */, pf_u32 mode /* r22 */, pf_u32 num_cluster /* r23 */,
                                         pf_u32* locate_start /* r25 */, pf_u32* locate_end /* r24 */) {
    pf_s32 err;                       // r29
    pf_u32 bad;                       // r1+0x20
    pf_u32 eoc1;                      // r1+0x1C
    pf_u32 current_cluster;           // r28
    pf_u32 next_cluster;              // r1+0x18
    pf_u32 trace_cnt;                 // r30
    pf_u32 append_cnt;                // r1+0x14
    pf_u32 search_index;              // r27
    pf_u32* p_chain_start;            // r26
    pf_u32 chain_start;               // r1+0x10
    pf_bool check_use;                 // r1+0xC
    PF_CACHE_PAGE* p_page = PF_NULL;  // r1+0x8

    bad = fat_special_values[p_ffd->p_vol->bpb.fat_type].bad;
    eoc1 = fat_special_values[p_ffd->p_vol->bpb.fat_type].eoc1;
    *locate_start = *locate_end = -1;
    if (p_ffd->last_access_cluster.chain_index != 0 && p_ffd->last_access_cluster.chain_index <= chain_index) {
        chain_start = p_ffd->last_access_cluster.cluster;
        p_chain_start = &chain_start;
        trace_cnt = chain_index - p_ffd->last_access_cluster.chain_index;
        search_index = p_ffd->last_access_cluster.chain_index + 1;
    } else {
        p_chain_start = p_ffd->p_start_cluster;
        trace_cnt = chain_index;
        search_index = 1;
    }
    current_cluster = *p_chain_start;
    next_cluster = *p_chain_start;
    if (mode == 2) {
        if (trace_cnt != 0 && num_cluster != 0) {
            trace_cnt += num_cluster - 1;
        } else {
            trace_cnt = num_cluster;
        }
        append_cnt = trace_cnt;
        if (p_ffd->last_cluster.num_last_cluster != 0) {
            trace_cnt = 0;
            append_cnt = (p_ffd->last_cluster.max_chain_index + num_cluster) - chain_index;
            current_cluster = p_ffd->last_cluster.num_last_cluster;
            next_cluster = fat_special_values[p_ffd->p_vol->bpb.fat_type].eoc2;
            search_index = p_ffd->last_cluster.max_chain_index + 1;
        }
    } else {
        if (mode == 1 && current_cluster == 0) {
            trace_cnt++;
        }
        append_cnt = trace_cnt;
    }
    if (trace_cnt != 0) {
        err = VFiPFFAT_ReadFATSector(p_ffd->p_vol, &p_page, current_cluster);
        if (err != 0) {
            return err;
        }
        p_page->option = 0;
        check_use = PF_TRUE;
        while (trace_cnt-- != 0 && (current_cluster < bad)) {
            if (current_cluster != 0) {
                err = VFiPFFAT_ReadClusterPage(p_ffd, current_cluster, search_index, &next_cluster, &check_use, &p_page);
                if (err != 0 && next_cluster != -1) {
                    return err;
                }
            } else {
                next_cluster = fat_special_values[p_ffd->p_vol->bpb.fat_type].eoc2;
                search_index--;
            }
            if ((next_cluster < 2 || next_cluster >= (p_ffd->p_vol->bpb.num_clusters + 2)) && next_cluster < eoc1) {
                return 14;
            }
            if (mode != 0 && next_cluster >= eoc1) {
                break;
            }
            current_cluster = next_cluster;
            search_index++;
        }
        append_cnt = trace_cnt;
    }
    if (mode != 0 && next_cluster >= eoc1) {
        *locate_start = 0;
        err = VFiPFFAT_AllocateChain(p_ffd, ++append_cnt, search_index, locate_start, &next_cluster);
        if (err != 0) {
            return err;
        }
        if (next_cluster == -1) {
            return 6;
        }
        if (*p_chain_start == 0) {
            *p_chain_start = *locate_start;
        } else {
            err = VFiPFFAT_WriteCluster(p_ffd, current_cluster, search_index - 1, *locate_start, PF_TRUE);
            if (err != 0) {
                return err;
            }
        }
        current_cluster = next_cluster;
    }
    *locate_end = current_cluster;
    return 0;
}

static pf_s32 VFiPFFAT_GetNumberOfCluster(PF_FFD* p_ffd, pf_u32 chain_index, pf_bool may_allocate, pf_u32* p_cluster) {
    pf_s32 err;
    pf_u32 locate_start;
    pf_u32 locate_end;
    pf_u32 mode;

    *p_cluster = -1;
    if (may_allocate) {
        mode = 1;
    } else {
        mode = 0;
    }
    err = VFiPFFAT_GetClusterInChain(p_ffd, chain_index, mode, 0, &locate_start, &locate_end);
    if (err != 0) {
        return err;
    }
    if (locate_end >= 2 && locate_end < (p_ffd->p_vol->bpb.num_clusters + 2)) {
        *p_cluster = locate_end;
    }
    return 0;
}

static pf_s32 VFiPFFAT_GetNumberOfAllocatedCluster(PF_FFD* p_ffd, pf_u32 chain_index, pf_u32 num_cluster, pf_u32* p_cluster, pf_u32* p_num_cluster) {
    pf_s32 err;
    pf_u32 locate_start;
    pf_u32 locate_end;

    *p_cluster = -1;
    err = VFiPFFAT_GetClusterInChain(p_ffd, chain_index, 2, num_cluster, &locate_start, &locate_end);
    if (err != 0) {
        return err;
    }
    *p_num_cluster = (locate_end - locate_start) + 1;
    if (locate_start >= 2 && locate_start < (p_ffd->p_vol->bpb.num_clusters + 2)) {
        *p_cluster = locate_start;
    }
    return 0;
}

static pf_s32 VFiPFFAT_GetClusterContinuousSectorInChain(PF_FFD* p_ffd, pf_u32 initial_cluster, pf_u32 chain_index, pf_u32 size,
                                                         pf_u32* p_num_sector) {
    PF_VOLUME* p_vol = p_ffd->p_vol;
    pf_u32 cluster;
    pf_u32 next_cluster;
    pf_bool check_use;
    pf_s32 err;
    PF_CACHE_PAGE* p_page;

    next_cluster = -1;
    cluster = initial_cluster;
    check_use = PF_TRUE;
    err = VFiPFFAT_ReadFATSector(p_vol, &p_page, cluster);
    if (err != 0) {
        return err;
    }

    while (next_cluster != 0) {
        err = VFiPFFAT_ReadClusterPage(p_ffd, cluster, chain_index, &next_cluster, &check_use, &p_page);
        if (err != 0) {
            return err;
        }
        if ((cluster + 1) != next_cluster) {
            if (next_cluster == fat_special_values[p_vol->bpb.fat_type].eoc2) {
                p_ffd->last_cluster.num_last_cluster = cluster;
                p_ffd->last_cluster.max_chain_index = chain_index - 1;
            }
            break;
        }
        p_ffd->p_hint->chain_index = p_ffd->p_hint->chain_index + 1;
        p_ffd->p_hint->cluster = next_cluster;
        *p_num_sector += p_vol->bpb.sectors_per_cluster;
        if ((*p_num_sector << p_vol->bpb.log2_bytes_per_sector) >= size) {
            break;
        }
        cluster = next_cluster;
        chain_index++;
    }
    return 0;
}

static pf_s32 VFiPFFAT_GetClusterAllocatedInChain(PF_FFD* p_ffd, pf_u32 initial_cluster, pf_u32 chain_index, pf_u32 size, pf_u32* p_num_clusters) {
    PF_VOLUME* p_vol = p_ffd->p_vol;
    pf_u32 cluster;
    pf_u32 next_cluster;
    pf_u32 total_size;
    pf_bool check_use;
    pf_s32 err;
    PF_CACHE_PAGE* p_page;

    next_cluster = -1;
    cluster = initial_cluster;
    check_use = PF_TRUE;
    total_size = 0;
    err = VFiPFFAT_ReadFATSector(p_vol, &p_page, cluster);
    if (err != 0) {
        return err;
    }
    while (next_cluster != 0) {
        total_size += p_vol->bpb.bytes_per_sector << p_vol->bpb.log2_sectors_per_cluster;
        (*p_num_clusters)++;
        if (total_size >= size) {
            break;
        }
        err = VFiPFFAT_ReadClusterPage(p_ffd, cluster, chain_index, &next_cluster, &check_use, &p_page);
        if (err != 0) {
            return err;
        }
        if (next_cluster == fat_special_values[p_vol->bpb.fat_type].eoc2) {
            p_ffd->last_cluster.num_last_cluster = cluster;
            p_ffd->last_cluster.max_chain_index = chain_index - 1;
            goto block_9;
        } else {
            cluster = next_cluster;
            chain_index++;
        }
    }
block_9:
    return 0;
}

static pf_s32 VFiPFFAT_GetClusterSpecified(PF_FFD* p_ffd, pf_u32 chain_index, pf_bool may_allocate, pf_u32* p_cluster) {
    PF_VOLUME* p_vol = p_ffd->p_vol;
    PF_FAT_HINT* p_hint;
    PF_FAT_TYPE fat_type;
    pf_bool is_found;
    pf_s32 err;

    fat_type = p_vol->bpb.fat_type;
    p_hint = p_ffd->p_hint;
    if (*p_ffd->p_start_cluster == 0 && may_allocate == PF_FALSE) {
        *p_cluster = -1;
        return 0;
    }
    if (*p_ffd->p_start_cluster == 1) {
        if (fat_type == FAT_12 || fat_type == FAT_16) {
            *p_cluster = -1;
            return 0;
        }
        *p_ffd->p_start_cluster = p_vol->bpb.root_dir_cluster;
    }
    if (p_ffd->cluster_link.buffer != PF_NULL && may_allocate == PF_FALSE) {
        err = VFiPFFAT_FindClusterLink(p_ffd, chain_index, p_cluster, &is_found);
        if (err != 0) {
            return err;
        }
        if (is_found == PF_TRUE) {
            p_hint->file_version = p_ffd->file_version;
            p_hint->chain_index = chain_index;
            p_hint->cluster = *p_cluster;
            return 0;
        }
    }
    err = VFiPFFAT_GetNumberOfCluster(p_ffd, chain_index, may_allocate, p_cluster);
    if (err != 0) {
        return err;
    }
    if (*p_cluster == -1) {
        return 0;
    }
    p_hint->file_version = p_ffd->file_version;
    p_hint->chain_index = chain_index;
    p_hint->cluster = *p_cluster;
    return 0;
}

static pf_s32 VFiPFFAT_GetClusterAllocated(PF_FFD* p_ffd, pf_u32 chain_index, pf_u32 num_cluster, pf_u32* p_cluster, pf_u32* p_num_cluster) {
    PF_VOLUME* p_vol = p_ffd->p_vol;
    PF_FAT_HINT* p_hint;
    PF_FAT_TYPE fat_type;
    pf_s32 err;

    fat_type = p_vol->bpb.fat_type;
    p_hint = p_ffd->p_hint;
    if (*p_ffd->p_start_cluster == 1) {
        if (fat_type == FAT_12 || fat_type == FAT_16) {
            *p_cluster = -1;
            return 0;
        }
        *p_ffd->p_start_cluster = p_vol->bpb.root_dir_cluster;
    }
    err = VFiPFFAT_GetNumberOfAllocatedCluster(p_ffd, chain_index, num_cluster, p_cluster, p_num_cluster);
    if (err != 0) {
        return err;
    }
    if (*p_cluster == -1) {
        return 0;
    }
    p_hint->file_version = p_ffd->file_version;
    p_hint->chain_index = chain_index;
    p_hint->cluster = *p_cluster;
    return 0;
}

static pf_s32 VFiPFFAT_GetSectorInRootDirRegion(PF_VOLUME* p_vol, pf_u32 sector_offset, pf_u32* p_sector) {
    if (p_vol->bpb.fat_type != FAT_12 && p_vol->bpb.fat_type != FAT_16) {
        return 12;
    }
    if (sector_offset >= p_vol->bpb.num_root_dir_sectors) {
        *p_sector = -1;
        return 0;
    }
    *p_sector = p_vol->bpb.first_root_dir_sector + sector_offset;
    return 0;
}

static pf_s32 VFiPFFAT_GetSector(PF_FFD* p_ffd, pf_u32 file_sector_index, pf_u32 mode, pf_u32 size, pf_u32* p_sector, pf_u32* p_num_sector) {
    pf_s32 err;
    PF_VOLUME* p_vol;
    PF_FAT_TYPE fat_type;
    pf_u32 chain_index;
    pf_u32 cluster;
    pf_u32 num_divide;
    pf_u32 num_remaind;
    pf_u32 num_cluster;
    pf_u32 num_success = 0;

    p_vol = p_ffd->p_vol;
    fat_type = p_vol->bpb.fat_type;

    if (*p_ffd->p_start_cluster == 1 && (fat_type == FAT_12 || fat_type == FAT_16)) {
        err = VFiPFFAT_GetSectorInRootDirRegion(p_vol, file_sector_index, p_sector);
        if (err != 0) {
            return err;
        }
        return 0;
    }
    chain_index = file_sector_index >> p_vol->bpb.log2_sectors_per_cluster;
    if (mode == 2) {
        num_divide = size >> p_vol->bpb.log2_bytes_per_sector;
        num_remaind = (size & (p_vol->bpb.bytes_per_sector - 1)) != 0 ? 1 : 0;
        num_cluster = (num_divide + num_remaind) >> p_vol->bpb.log2_sectors_per_cluster;
        num_cluster += ((p_vol->bpb.sectors_per_cluster - 1) & (num_divide + num_remaind)) != 0 ? 1 : 0;
        err = VFiPFFAT_GetClusterAllocated(p_ffd, chain_index, num_cluster, &cluster, &num_success);
        if (err != 0) {
            return err;
        }
        *p_num_sector = num_success << p_vol->bpb.log2_sectors_per_cluster;
    } else {
        err = VFiPFFAT_GetClusterSpecified(p_ffd, chain_index, mode, &cluster);
        if (err != 0) {
            return err;
        }
        *p_num_sector = 1 << p_vol->bpb.log2_sectors_per_cluster;
    }
    if ((cluster) == -1) {
        *p_sector = -1;
        return 0;
    }
    *p_sector = (p_vol->bpb.first_data_sector + ((cluster - 2) << p_vol->bpb.log2_sectors_per_cluster)) +
                (file_sector_index & (p_vol->bpb.sectors_per_cluster - 1));
    return 0;
}

pf_s32 VFiPFFAT_UpdateFATEntry(PF_VOLUME* p_vol, PF_CACHE_PAGE* p_page) {
    pf_s32 err;

    err = 0;
    if ((p_page->stat & 0x02) == 0x02) {
        err = VFiPFCACHE_WriteFATPage(p_vol, p_page);
    }
    return err;
}

pf_s32 VFiPFFAT_UpdateAlternateFATEntry(PF_VOLUME* p_vol, pf_u8* p_buf, pf_u32 sector, pf_u32 size) {
    pf_s32 err;
    pf_s32 err2 = 0;
    pf_u32 fat_num;
    pf_u32 fat_no;
    pf_u32 offset = sector - p_vol->bpb.num_reserved_sectors;
    pf_u32 num_success;

    fat_no = offset / p_vol->bpb.sectors_per_FAT;
    if (fat_no != 0) {
        sector = offset % p_vol->bpb.sectors_per_FAT;
        fat_num = 0;
    } else {
        sector += p_vol->bpb.sectors_per_FAT;
        fat_num = 1;
    }
    for (; fat_num < p_vol->bpb.num_active_FATs; fat_num++, sector += p_vol->bpb.sectors_per_FAT) {
        err = VFiPFDRV_lwrite(p_vol, p_buf, sector, size, &num_success);
        if (err != 0 && err2 == 0) {
            err2 = err;
        }
        if (num_success != size) {
            err2 = 17;
        }
    }
    return err2;
}

pf_s32 VFiPFFAT_GetSectorSpecified(PF_FFD* p_ffd, pf_u32 file_sector_index, pf_bool may_allocate, pf_u32* p_sector) {
    pf_s32 err;
    pf_u32 mode;
    pf_u32 num_sector;

    if (p_ffd == PF_NULL) {
        return 10;
    }
    if (p_ffd->p_hint == PF_NULL) {
        return 10;
    }
    if (p_ffd->file_version == 0) {
        return 10;
    }
    if (p_ffd->p_hint->file_version > p_ffd->file_version) {
        return 10;
    }
    if (p_ffd->p_vol->drv_char < 'A' || p_ffd->p_vol->drv_char > 'Z') {
        return 35;
    }
    if (file_sector_index >= ((0xFFFFFFFF >> p_ffd->p_vol->bpb.log2_bytes_per_sector) + 1)) {
        return 37;
    }
    if (may_allocate) {
        mode = 1;
    } else {
        mode = 0;
    }
    err = VFiPFFAT_GetSector(p_ffd, file_sector_index, mode, 0, p_sector, &num_sector);
    if (err != 0) {
        return err;
    }
    return 0;
}

pf_s32 VFiPFFAT_GetSectorAllocated(PF_FFD* p_ffd, pf_u32 file_sector_index, pf_u32 size, pf_u32* p_sector, pf_u32* p_num_sector) {
    pf_s32 err;

    if (p_ffd == PF_NULL) {
        return 10;
    }
    if (p_ffd->p_hint == PF_NULL) {
        return 10;
    }
    if (p_ffd->file_version == 0) {
        return 10;
    }
    if (p_ffd->p_hint->file_version > p_ffd->file_version) {
        return 10;
    }
    if (p_ffd->p_vol->drv_char < 'A' || p_ffd->p_vol->drv_char > 'Z') {
        return 35;
    }
    if (file_sector_index >= ((0xFFFFFFFF >> p_ffd->p_vol->bpb.log2_bytes_per_sector) + 1)) {
        return 37;
    }
    err = VFiPFFAT_GetSector(p_ffd, file_sector_index, 2, size, p_sector, p_num_sector);
    if (err != 0) {
        return err;
    }
    return 0;
}

pf_s32 VFiPFFAT_GetContinuousSector(PF_FFD* p_ffd, pf_u32 file_sector_index, pf_u32 size, pf_u32* p_sector, pf_u32* p_num_sector) {
    PF_VOLUME* p_vol;
    pf_u32 chain_index;
    pf_u32 cluster;
    pf_s32 err;

    cluster = -1;
    if (p_ffd == PF_NULL) {
        return 10;
    }
    if (p_ffd->p_hint == PF_NULL) {
        return 10;
    }
    if (p_ffd->file_version == 0) {
        return 10;
    }
    if (p_ffd->p_hint->file_version > p_ffd->file_version) {
        return 10;
    }
    if (p_ffd->p_vol->drv_char < 'A' || p_ffd->p_vol->drv_char > 'Z') {
        return 35;
    }
    if (file_sector_index >= ((0xFFFFFFFF >> p_ffd->p_vol->bpb.log2_bytes_per_sector) + 1)) {
        return 37;
    }
    p_vol = p_ffd->p_vol;
    if ((*p_sector) != -1) {
        cluster = ((*p_sector - p_vol->bpb.first_data_sector) >> p_vol->bpb.log2_sectors_per_cluster) + 2;
    } else {
        err = VFiPFFAT_GetSectorSpecified(p_ffd, file_sector_index, 0, p_sector);
        if (err != 0) {
            return err;
        }
        if ((*p_sector) != -1) {
            cluster = ((*p_sector - p_vol->bpb.first_data_sector) >> p_vol->bpb.log2_sectors_per_cluster) + 2;
        }
    }
    if ((*p_sector) != -1) {
        *p_num_sector = (p_vol->bpb.first_data_sector + ((cluster - 1) << p_vol->bpb.log2_sectors_per_cluster)) - *p_sector;
    } else {
        *p_num_sector = 0;
    }
    if ((*p_sector) != -1 && (*p_num_sector << p_vol->bpb.log2_bytes_per_sector) < size) {
        chain_index = file_sector_index >> p_vol->bpb.log2_sectors_per_cluster;
        err = VFiPFFAT_GetClusterContinuousSectorInChain(p_ffd, cluster, chain_index + 1, size, p_num_sector);
        if (err != 0) {
            return err;
        }
    }
    return 0;
}

pf_s32 VFiPFFAT_CountAllocatedClusters(PF_FFD* p_ffd, pf_u32 size, pf_u32* p_num_alloc_clusters) {
    pf_u32 cluster;
    pf_u32 total_size;
    pf_u32 chain_index;
    pf_s32 err;

    *p_num_alloc_clusters = 0;
    if (p_ffd == PF_NULL) {
        return 10;
    }
    if (p_ffd->p_hint == PF_NULL) {
        return 10;
    }
    if (p_ffd->file_version == 0) {
        return 10;
    }
    if (p_ffd->p_hint->file_version > p_ffd->file_version) {
        return 10;
    }
    if (p_ffd->p_vol->drv_char < 'A' || p_ffd->p_vol->drv_char > 'Z') {
        return 35;
    }
    if (*p_ffd->p_start_cluster < 2) {
        return 0;
    }
    if (p_ffd->last_cluster.num_last_cluster != 0) {
        total_size = (p_ffd->last_cluster.max_chain_index + 1)
                     << (p_ffd->p_vol->bpb.log2_bytes_per_sector + p_ffd->p_vol->bpb.log2_sectors_per_cluster);
        if (total_size > size) {
            total_size = size;
        }
        *p_num_alloc_clusters = p_ffd->last_cluster.max_chain_index + 1;
        return 0;
    }
    if (p_ffd->p_hint->file_version == p_ffd->p_hint->file_version /*@bug its always true*/ && p_ffd->p_hint->cluster != 0) {
        if (size <= ((p_ffd->p_hint->chain_index + 1) << (p_ffd->p_vol->bpb.log2_bytes_per_sector + p_ffd->p_vol->bpb.log2_sectors_per_cluster))) {
            *p_num_alloc_clusters = p_ffd->p_hint->chain_index + 1;
            return 0;
        }
        *p_num_alloc_clusters = p_ffd->p_hint->chain_index;
        cluster = p_ffd->p_hint->cluster;
        chain_index = p_ffd->p_hint->chain_index + 1;
        size -= p_ffd->p_hint->chain_index << (p_ffd->p_vol->bpb.log2_bytes_per_sector + p_ffd->p_vol->bpb.log2_sectors_per_cluster);

    } else {
        cluster = *p_ffd->p_start_cluster;
        chain_index = 1;
    }
    err = VFiPFFAT_GetClusterAllocatedInChain(p_ffd, cluster, chain_index, size, p_num_alloc_clusters);
    if (err != 0) {
        return err;
    }
    return 0;
}

pf_s32 VFiPFFAT_CountFreeClusters(PF_VOLUME* p_vol, pf_u32* p_num_free_clusters) {
    pf_u32 free_cluster;
    pf_s32 err;
    pf_u32 next_cluster;
    PF_CACHE_PAGE* p_page;

    if (p_vol == PF_NULL) {
        return 10;
    }
    if (p_vol->bpb.fat_type != FAT_12 && p_vol->bpb.fat_type != FAT_16 && p_vol->bpb.fat_type != FAT_32) {
        return 15;
    }
    if ((p_vol->fsi_flag & 0x04) != 0 && (p_vol->num_free_clusters) != -1) {
        *p_num_free_clusters = p_vol->num_free_clusters;
        return 0;
    }
    *p_num_free_clusters = -1;
    free_cluster = 2;
    if ((p_vol->fsi_flag & 0x01) != 0 && p_vol->bpb.fat_type == FAT_32) {
        err = VFiPFDRV_GetFSINFOInformation(p_vol);
        if (err != 0) {
            return err;
        }
        *p_num_free_clusters = p_vol->num_free_clusters;
    }
    if ((*p_num_free_clusters) == -1) {
        err = VFiPFFAT_ReadFATSector(p_vol, &p_page, free_cluster);
        if (err != 0) {
            return err;
        }
        p_page->option = 0;

        for (; free_cluster >= 2 && free_cluster < (p_vol->bpb.num_clusters + 2); free_cluster++) {
            err = VFiPFFAT_ReadFATEntryPage(p_vol, free_cluster, &next_cluster, &p_page);
            if (err != 0) {
                return err;
            }
            if (next_cluster == 0) {
                (*p_num_free_clusters)++;
            }
        }
        p_vol->num_free_clusters = *p_num_free_clusters;
        if (p_vol->bpb.fat_type == FAT_32 && (p_vol->fsi_flag & 0x02) != 0) {
            err = VFiPFFAT_RefreshFSINFO(p_vol);
            if (err != 0) {
                p_vol->num_free_clusters = -1;
                p_vol->fsi_flag &= ~0x04;
            }
        }
    }
    p_vol->fsi_flag |= 0x04;
    return 0;
}

pf_s32 VFiPFFAT_FreeChain(PF_FFD* p_ffd, pf_u32 start_cluster, pf_u32 chain_index, pf_u32 size) {
    pf_s32 err;
    PF_VOLUME* p_vol = p_ffd->p_vol;
    pf_u32 eoc1;
    pf_u32 next_cluster;
    pf_u32 file_size;
    pf_u32 clst_size;
    PF_CACHE_PAGE* p_page;
    pf_u32 sector;

    if (p_vol == PF_NULL) {
        return 10;
    }
    if ((start_cluster < 2 || start_cluster >= (p_vol->bpb.num_clusters + 2)) && start_cluster != 0) {
        return 14;
    }
    if (start_cluster == 0) {
        return 0;
    }
    eoc1 = fat_special_values[p_vol->bpb.fat_type].eoc1;

    if (size != 0) {
        file_size = size;
        clst_size = p_vol->bpb.bytes_per_sector << p_vol->bpb.log2_sectors_per_cluster;
    } else {
        return 0;
    }

    err = VFiPFFAT_ReadFATSector(p_vol, &p_page, start_cluster);
    if (err != 0) {
        return err;
    }
    p_page->option = 1;
    next_cluster = start_cluster;
    while (start_cluster < eoc1) {
        if (size != 0 && file_size == 0) {
            break;
        }
        sector = p_page->sector;
        err = VFiPFFAT_ReadFATEntryPage(p_vol, start_cluster, &next_cluster, &p_page);
        if (err != 0) {
            return err;
        }
        if (next_cluster == 0) {
            err = VFiPFFAT_UpdateFATEntry(p_vol, p_page);
            if (err != 0) {
                return err;
            }
            return 0;
        }
        if (sector != p_page->sector) {
            err = VFiPFFAT_ReadFATSector(p_vol, &p_page, start_cluster);
            if (err != 0) {
                return err;
            }
        }
        if (chain_index != -1) {
            err = VFiPFFAT_WriteClusterPage(p_ffd, start_cluster, chain_index, 0, PF_TRUE, &p_page);
            chain_index++;
        } else {
            err = VFiPFFAT_WriteFATEntryPage(p_vol, start_cluster, 0, &p_page);
        }
        if (err != 0) {
            return err;
        }
        if (size != 0 && file_size != 0) {
            if (file_size <= clst_size) {
                file_size = 0;
            } else {
                file_size -= clst_size;
            }
        }
        if (p_vol->num_free_clusters != -1) {
            p_vol->num_free_clusters++;
        }
        start_cluster = next_cluster;
    }
block_39:
    err = VFiPFFAT_UpdateFATEntry(p_vol, p_page);
    if (err != 0) {
        return err;
    }
    if (p_vol->bpb.fat_type == FAT_32 && (p_vol->fsi_flag & 0x02) != 0) {
        err = VFiPFFAT_RefreshFSINFO(p_vol);
        if (err != 0) {
            p_vol->num_free_clusters = -1;
            p_vol->fsi_flag &= ~0x04;
        }
    }
    return 0;
}

pf_s32 VFiPFFAT_GetBeforeChain(PF_VOLUME* p_vol, pf_u32 start_cluster, pf_u32 lActive, pf_u32* p_cluster) {
    pf_s32 err;
    pf_u32 eoc1;
    pf_u32 next_cluster;
    PF_CACHE_PAGE* p_page;

    if (p_vol == PF_NULL) {
        *p_cluster = -1;
        return 10;
    }
    if (start_cluster < 2 || start_cluster >= (p_vol->bpb.num_clusters + 2)) {
        *p_cluster = -1;
        return 10;
    }
    eoc1 = fat_special_values[p_vol->bpb.fat_type].eoc1;
    *p_cluster = -1;
    err = VFiPFFAT_ReadFATSector(p_vol, &p_page, start_cluster);
    if (err != 0) {
        return err;
    }
    p_page->option = 0;

    while (start_cluster < eoc1) {
        err = VFiPFFAT_ReadFATEntryPage(p_vol, start_cluster, &next_cluster, &p_page);
        if (err != 0) {
            return err;
        }
        if (lActive == next_cluster) {
            *p_cluster = start_cluster;
            return 0;
        }
        start_cluster--;
        if ((start_cluster < 2 || start_cluster >= (p_vol->bpb.num_clusters + 2)) && start_cluster < eoc1) {
            *p_cluster = lActive;
            return 0;
        }
    }
    return 13;
}

pf_s32 VFiPFFAT_InitFATRegion(PF_VOLUME* p_vol) {
    pf_u32 sector;
    PF_CACHE_PAGE* p_page;
    pf_s32 err;

    if (p_vol == PF_NULL) {
        return 10;
    }
    if (p_vol->bpb.fat_type != FAT_12 && p_vol->bpb.fat_type != FAT_16 && p_vol->bpb.fat_type != FAT_32) {
        return 15;
    }
    err = VFiPFCACHE_AllocateFATPage(p_vol, -1, &p_page);
    if (err != 0) {
        return err;
    }
    VFipf_memset(p_page->p_buf, 0, p_vol->bpb.bytes_per_sector);

    for (sector = p_vol->bpb.num_reserved_sectors; sector < p_vol->bpb.first_root_dir_sector; sector++) {
        err = VFiPFCACHE_WriteFATSectorAndFreeIfNeeded(p_vol, p_page->p_buf, sector);
        if (err != 0) {
            VFiPFCACHE_FreeFATPage(p_vol, p_page);
            return err;
        }
    }

    VFiPFCACHE_FreeFATPage(p_vol, p_page);
    err = VFiPFFAT_WriteFATEntry(p_vol, 0, p_vol->bpb.media | fat_special_values[p_vol->bpb.fat_type].fat0_mask);
    if (err != 0) {
        return err;
    }
    err = VFiPFFAT_WriteFATEntry(p_vol, 1, fat_special_values[p_vol->bpb.fat_type].fat1);
    if (err != 0) {
        return err;
    }
    err = VFiPFCACHE_FlushFATCache(p_vol);
    if (err != 0) {
        return err;
    }
    return 0;
}

pf_s32 VFiPFFAT_MakeRootDir(PF_VOLUME* p_vol) {
    pf_s32 err;
    pf_u32 sector;
    pf_u32 success_size;
    pf_u32 num_sectors;
    PF_CACHE_PAGE* p_page;

    err = VFiPFFAT_WriteFATEntry(p_vol, p_vol->bpb.root_dir_cluster, fat_special_values[p_vol->bpb.fat_type].eoc2);
    if (err != 0) {
        return err;
    }
    err = VFiPFCACHE_FlushFATCache(p_vol);
    if (err != 0) {
        return err;
    }
    err = VFiPFCACHE_AllocateDataPage(p_vol, -1, &p_page);
    if (err != 0) {
        return err;
    }
    VFipf_memset(p_page->p_buf, 0, p_vol->bpb.bytes_per_sector);
    sector = p_vol->bpb.first_data_sector + ((p_vol->bpb.root_dir_cluster - 2) << p_vol->bpb.log2_sectors_per_cluster);

    for (num_sectors = 0; num_sectors < p_vol->bpb.sectors_per_cluster; num_sectors++) {
        err = VFiPFSEC_WriteData(p_vol, p_page->p_buf, sector + num_sectors, 0, p_vol->bpb.bytes_per_sector, &success_size, 0);
        if (err != 0) {
            VFiPFCACHE_FreeDataPage(p_vol, p_page);
            return err;
        }
        if (success_size != p_vol->bpb.bytes_per_sector) {
            VFiPFCACHE_FreeDataPage(p_vol, p_page);
            return 0x11;
        }
    }
    VFiPFCACHE_FreeDataPage(p_vol, p_page);
    return 0;
}

pf_s32 VFiPFFAT_RefreshFSINFO(PF_VOLUME* p_vol) {
    pf_s32 err;

    err = 0;
    if (p_vol->bpb.fat_type != FAT_32) {
        return 12;
    }
    if ((p_vol->fsi_flag & 0x02) == 0) {
        return 36;
    }
    if ((p_vol->fsi_flag & 0x04) != 0) {
        err = VFiPFDRV_StoreFreeCountToFSINFO(p_vol);
    }
    return err;
}

void VFiPFFAT_InitHint(PF_FAT_HINT* p_hint) {
    p_hint->chain_index = 0;
    p_hint->cluster = 0;
    p_hint->file_version = 0;
}

pf_s32 VFiPFFAT_TraceClustersChain(PF_FFD* p_ffd, pf_u32 start_clst, pf_u32 size, pf_u32* p_target_clst, pf_u32* p_next_clst) {
    pf_s32 err;
    PF_VOLUME* p_vol;
    pf_u32 next_cluster;
    pf_u32 save_cluster = start_clst;
    pf_u32 chain_index;
    pf_u32 clst_size;
    pf_u32 clst_cnt;
    pf_u32 cnt;
    pf_u32 check_use;
    PF_CACHE_PAGE* p_page;

    *p_target_clst = 0;
    *p_next_clst = 0;
    if (p_ffd == PF_NULL) {
        return 10;
    }
    if (p_ffd->p_hint == PF_NULL) {
        return 10;
    }
    if (p_ffd->file_version == 0) {
        return 10;
    }
    if (p_ffd->p_hint->file_version > p_ffd->file_version) {
        return 10;
    }
    if (p_ffd->p_vol->drv_char < 'A' || p_ffd->p_vol->drv_char > 'Z') {
        return 35;
    }
    if (p_ffd->p_vol == PF_NULL) {
        return 10;
    }
    if (*p_ffd->p_start_cluster < 2) {
        return 0;
    }
    if (start_clst < 2) {
        return 0;
    }
    if (size == 0) {
        return 0;
    }
    p_vol = p_ffd->p_vol;
    if (size == -1 && p_ffd->last_cluster.num_last_cluster != 0) {
        *p_target_clst = p_ffd->last_cluster.num_last_cluster;
        *p_next_clst = fat_special_values[p_vol->bpb.fat_type].eoc2;
        return 0;
    }
    clst_size = p_vol->bpb.bytes_per_sector << p_vol->bpb.log2_sectors_per_cluster;
    clst_cnt = size / clst_size;
    if ((size % clst_size) != 0) {
        clst_cnt++;
    }
    if (*p_ffd->p_start_cluster == start_clst) {
        chain_index = 1;
    } else {
        chain_index = p_ffd->p_hint->chain_index + 1;
    }
    next_cluster = -1;
    check_use = 1;
    err = VFiPFFAT_ReadFATSector(p_vol, &p_page, start_clst);
    if (err != 0) {
        return err;
    }

    for (cnt = 0; cnt < clst_cnt; cnt++) {
        err = VFiPFFAT_ReadClusterPage(p_ffd, start_clst, chain_index, &next_cluster, &check_use, &p_page);
        if (err != 0) {
            return err;
        }
        save_cluster = start_clst;
        if (next_cluster == fat_special_values[p_vol->bpb.fat_type].eoc2) {
            p_ffd->last_cluster.num_last_cluster = start_clst;
            p_ffd->last_cluster.max_chain_index = chain_index - 1;
            break;
        }
        start_clst = next_cluster;
        chain_index++;
    }
    p_ffd->p_hint->chain_index = chain_index - 1;
    *p_target_clst = save_cluster;
    *p_next_clst = next_cluster;
    return 0;
}

pf_s32 VFiPFFAT_ReadValueToSpecifiedCluster(PF_VOLUME* p_vol, pf_u32 cluster, pf_u32* value) {
    pf_s32 err;

    err = VFiPFFAT_ReadFATEntry(p_vol, cluster, value);
    if (err != 0) {
        return err;
    }
    return 0;
}

pf_s32 VFiPFFAT_ResetFFD(PF_FFD* p_ffd, pf_u32* p_start_cluster) {
    if (p_ffd == PF_NULL) {
        return 10;
    }
    if (p_start_cluster == PF_NULL) {
        return 10;
    }
    p_ffd->p_start_cluster = p_start_cluster;
    p_ffd->file_version = 1;
    if (p_ffd->p_hint != PF_NULL) {
        p_ffd->p_hint->file_version = 0;
    }
    p_ffd->last_access_cluster.cluster = 0;
    p_ffd->last_access_cluster.chain_index = 0;
    p_ffd->last_cluster.num_last_cluster = 0;
    p_ffd->last_cluster.max_chain_index = 0;
    p_ffd->cluster_link.buffer = PF_NULL;
    return 0;
}

pf_s32 VFiPFFAT_InitFFD(PF_FFD* p_ffd, PF_FAT_HINT* p_hint, PF_VOLUME* p_vol, pf_u32* p_start_cluster) {
    if (p_ffd == PF_NULL) {
        return 10;
    }
    if (p_start_cluster == PF_NULL) {
        return 10;
    }
    p_ffd->p_hint = p_hint;
    p_ffd->p_vol = p_vol;
    VFiPFFAT_ResetFFD(p_ffd, p_start_cluster);
    return 0;
}

pf_s32 VFiPFFAT_FinalizeFFD(PF_FFD* p_ffd) {
    if (p_ffd == PF_NULL) {
        return 10;
    }
    p_ffd->cluster_link.buffer = PF_NULL;
    return 0;
}

pf_u32 VFiPFFAT_GetValueOfEOC2(PF_VOLUME* p_vol) {
    return fat_special_values[p_vol->bpb.fat_type].eoc2;
}
