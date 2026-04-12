#include <private/vf/PrFILE2/fatfs/pf_fat.h>
#include <private/vf/PrFILE2/fatfs/pf_fat16.h>

#include <private/vf/PrFILE2/fatfs/pf_sector.h>
#include <private/vf/PrFILE2/fatfs/pf_volume.h>

pf_s32 VFiPFFAT16_ReadFATEntry(PF_VOLUME* p_vol, pf_u32 cluster, pf_u32* p_value) {
    pf_u32 fat_offset;
    pf_u32 fat_sector;
    pf_u16 offset_in_sector;
    pf_u8 buf[sizeof(pf_u16)];
    pf_s32 err;
    pf_u32 current_fat;
    pf_s32 result;

    if (p_vol == PF_NULL) {
        *p_value = -1;
        return 10;
    }
    if ((cluster < 2 || cluster >= (p_vol->bpb.num_clusters + 2)) && cluster != 0 && cluster != 1) {
        *p_value = -1;
        return 14;
    }
    fat_offset = cluster * sizeof(pf_u16);
    fat_sector = (pf_u16)(p_vol->bpb.active_FAT_sector + ((cluster * sizeof(pf_u16)) >> p_vol->bpb.log2_bytes_per_sector));
    offset_in_sector = fat_offset & (p_vol->bpb.bytes_per_sector - 1);
    if ((p_vol->bpb.ext_flags & 0x80) != 0) {
        current_fat = p_vol->bpb.ext_flags & (0x01 | 0x02 | 0x04);
    } else {
        current_fat = 1;
    }
    do {
        err = VFiPFSEC_ReadFAT(p_vol, buf, fat_sector, offset_in_sector, 2);
        if (err == 0x1000 && p_vol->p_callback != PF_NULL) {
            result = ((PF_VOLUME_CB)p_vol->p_callback)(p_vol->last_driver_error);
            if (result == 0) {
                continue;
            }
            if (result == 1 && p_vol->bpb.num_active_FATs >= 2 && current_fat < p_vol->bpb.num_active_FATs) {
                current_fat++;
                fat_sector += p_vol->bpb.sectors_per_FAT;
                continue;
            }
        }
        if (err != 0) {
            *p_value = -1;
            return err;
        }
    } while (err != 0);

    *p_value = PF_SWAP_16(*(pf_u16*)buf);
    return 0;
}

pf_s32 VFiPFFAT16_ReadFATEntryPage(PF_VOLUME* p_vol, pf_u32 cluster, pf_u32* p_value, PF_CACHE_PAGE** pp_page) {
    pf_s32 err = 0;
    pf_u32 offset;
    pf_u32 sector;
    pf_u32 current_fat;
    pf_s32 result;

    if (p_vol == PF_NULL) {
        return 10;
    }
    if ((cluster < 2 || cluster >= (p_vol->bpb.num_clusters + 2)) && cluster != 0 && cluster != 1) {
        return 14;
    }
    offset = cluster * sizeof(pf_u16);
    sector = (pf_u16)(p_vol->bpb.active_FAT_sector + (offset >> p_vol->bpb.log2_bytes_per_sector));
    if ((p_vol->bpb.ext_flags & 0x80) != 0) {
        current_fat = p_vol->bpb.ext_flags & (0x01 | 0x02 | 0x04);
    } else {
        current_fat = 1;
    }
    if (((*pp_page)->sector > sector) || (((*pp_page)->sector + p_vol->cache.fat_buff_size) <= sector)) {
        if ((*pp_page)->option == 1) {
            err = VFiPFFAT_UpdateFATEntry(p_vol, *pp_page);
            if (err != 0) {
                return err;
            }
        }
        do {
            err = VFiPFCACHE_ReadFATPage(p_vol, sector, pp_page);
            if (err != 0x1000 || p_vol->p_callback == PF_NULL) {
                goto block_22;
            }
            result = ((PF_VOLUME_CB)p_vol->p_callback)(p_vol->last_driver_error);
            if (result != 0) {
                if (result == 1 && p_vol->bpb.num_active_FATs >= 2 && current_fat < p_vol->bpb.num_active_FATs) {
                    current_fat++;
                    sector += p_vol->bpb.sectors_per_FAT;
                } else {
                    goto block_22;
                }
            }
            continue;
        block_22:
            if (err != 0) {
                return err;
            }
        } while (err != 0);
    } else {
        if (sector != ((*pp_page)->sector + (((*pp_page)->p_buf - (*pp_page)->buffer) >> p_vol->bpb.log2_bytes_per_sector))) {
            (*pp_page)->p_buf += p_vol->bpb.bytes_per_sector;
        }
    }
    offset &= p_vol->bpb.bytes_per_sector - 1;
    *p_value = PF_SWAP_16(*((pf_u16*)((*pp_page)->p_buf + offset)));

    return err;
}

pf_s32 VFiPFFAT16_WriteFATEntry(PF_VOLUME* p_vol, pf_u32 cluster, pf_u32 value) {
    pf_s32 err;
    pf_u32 fat_offset;
    pf_u16 fat_sector;
    pf_u16 offset_in_sector;
    pf_u8 buf[sizeof(pf_u16)];

    if (p_vol == PF_NULL) {
        return 10;
    }
    if ((cluster < 2 || cluster >= (p_vol->bpb.num_clusters + 2)) && cluster != 0 && cluster != 1) {
        return 14;
    }
    fat_offset = cluster * sizeof(pf_u16);
    fat_sector = p_vol->bpb.active_FAT_sector + ((cluster * sizeof(pf_u16)) >> p_vol->bpb.log2_bytes_per_sector);
    offset_in_sector = fat_offset & (p_vol->bpb.bytes_per_sector - 1);
    *(pf_u16*)buf = PF_SWAP_16(value);
    err = VFiPFSEC_WriteFAT(p_vol, buf, fat_sector, offset_in_sector, 2);
    return err;
}

pf_s32 VFiPFFAT16_WriteFATEntryPage(PF_VOLUME* p_vol, pf_u32 cluster, pf_u32 value, PF_CACHE_PAGE** pp_page) {
    pf_s32 err;
    pf_u32 fat_offset;
    pf_u32 fat_sector;
    pf_u32 offset_in_sector;
    pf_u32 current_fat;
    pf_s32 result;

    err = 0;
    if (p_vol == PF_NULL) {
        return 10;
    }
    if ((cluster < 2 || cluster >= (p_vol->bpb.num_clusters + 2)) && cluster != 0 && cluster != 1) {
        return 14;
    }
    fat_offset = cluster * sizeof(pf_u16);
    fat_sector = (pf_u16)(p_vol->bpb.active_FAT_sector + ((cluster * sizeof(pf_u16)) >> p_vol->bpb.log2_bytes_per_sector));
    offset_in_sector = (pf_u16)(fat_offset & (p_vol->bpb.bytes_per_sector - 1));
    if (((*pp_page)->sector > fat_sector) || (((*pp_page)->sector + p_vol->cache.fat_buff_size) <= fat_sector)) {
        err = VFiPFFAT_UpdateFATEntry(p_vol, *pp_page);
        if (err != 0) {
            return err;
        }
        if ((p_vol->bpb.ext_flags & 0x80) != 0) {
            current_fat = p_vol->bpb.ext_flags & (0x01 | 0x02 | 0x04);
        } else {
            current_fat = 1;
        }
        do {
            err = VFiPFCACHE_ReadFATPage(p_vol, fat_sector, pp_page);
            if (err != 0x1000 || p_vol->p_callback == PF_NULL) {
                goto block_21;
            }
            result = ((PF_VOLUME_CB)p_vol->p_callback)(p_vol->last_driver_error);
            if (result != 0) {
                if (result == 1 && p_vol->bpb.num_active_FATs >= 2 && current_fat < p_vol->bpb.num_active_FATs) {
                    current_fat++;
                    fat_sector += p_vol->bpb.sectors_per_FAT;
                } else {
                    goto block_21;
                }
            }
            continue;
        block_21:
            if (err != 0) {
                return err;
            }
        } while (err != 0);
    } else {
        if (fat_sector != ((*pp_page)->sector + (((*pp_page)->p_buf - (*pp_page)->buffer) >> p_vol->bpb.log2_bytes_per_sector))) {
            (*pp_page)->p_buf += p_vol->bpb.bytes_per_sector;
        }
    }
    (*pp_page)->p_buf[offset_in_sector] = value;
    (*pp_page)->p_buf[offset_in_sector + 1] = (value >> 8);
    VFiPFCACHE_UpdateModifiedSector(*pp_page);
    return err;
}
