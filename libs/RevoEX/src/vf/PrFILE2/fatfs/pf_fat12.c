#include <private/vf/PrFILE2/fatfs/pf_fat.h>
#include <private/vf/PrFILE2/fatfs/pf_fat12.h>

#include <private/vf/PrFILE2/fatfs/pf_sector.h>
#include <private/vf/PrFILE2/fatfs/pf_volume.h>

#include <private/vf/PrFILE2/common/pf_code.h>

pf_s32 VFiPFFAT12_ReadFATEntry(PF_VOLUME* p_vol, pf_u16 cluster, pf_u32* p_value) {
    pf_s32 err;
    pf_u16 fat_offset;
    pf_u16 fat_sector;
    pf_u16 offset_in_sector;
    pf_u16 word;
    pf_u8 buf[sizeof(pf_u16)];
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
    fat_offset = cluster + (cluster >> 1);
    fat_sector = p_vol->bpb.active_FAT_sector + (fat_offset >> p_vol->bpb.log2_bytes_per_sector);
    offset_in_sector = fat_offset & (p_vol->bpb.bytes_per_sector - 1);
    if ((p_vol->bpb.ext_flags & 0x80) != 0) {
        current_fat = p_vol->bpb.ext_flags & (0x01 | 0x02 | 0x04);
    } else {
        current_fat = 1;
    }

    do {
        if (offset_in_sector < (p_vol->bpb.bytes_per_sector - 1)) {
            err = VFiPFSEC_ReadFAT(p_vol, &buf[0], (pf_u32)fat_sector, offset_in_sector, 2);
        } else {
            err = VFiPFSEC_ReadFAT(p_vol, &buf[0], (pf_u32)fat_sector, offset_in_sector, 1);
            if (err == 0) {
                err = VFiPFSEC_ReadFAT(p_vol, &buf[1], fat_sector + 1, 0U, 1);
            }
        }
        if (err == 0x1000 && p_vol->p_callback != PF_NULL) {
            result = ((PF_VOLUME_CB)p_vol->p_callback)(p_vol->last_driver_error);
            if (result == 0) {
                continue;
            }
            if (result == 1 && p_vol->bpb.num_active_FATs >= 2 && current_fat < p_vol->bpb.num_active_FATs) {
                current_fat++;
                fat_sector += (pf_u16)p_vol->bpb.sectors_per_FAT;
                continue;
            }
        }
        if (err != 0) {
            *p_value = -1;
            return err;
        }
    } while (err != 0);

    word = PF_SWAP_16(*(pf_u16*)buf);
    if ((cluster & 0x01) != 0) {
        *p_value = (word >> 4);
    } else {
        *p_value = word & 0xFFF;
    }
    return 0;
}

// DEBUG NON MATCHING
pf_s32 VFiPFFAT12_ReadFATEntryPage(PF_VOLUME* p_vol /* r31 */, pf_u16 cluster /* r25 */, pf_u32* p_value /* r26 */,
                                   PF_CACHE_PAGE** pp_page /* r30 */) {
    pf_s32 err;          // r29
    pf_u32 offset;       // r28
    pf_u32 sector;       // r27
    pf_u32 current_fat;  // r24
    pf_s32 result;       // r1+0x8

    // ehhhh
#define FAT_MACRO(b_UNK)                                                                                                                             \
    if ((*pp_page)->sector > (sector + b_UNK) || (*pp_page)->sector + p_vol->cache.fat_buff_size <= (sector + b_UNK)) {                              \
        if ((*pp_page)->option == 1) {                                                                                                               \
            err = VFiPFFAT_UpdateFATEntry(p_vol, *pp_page);                                                                                          \
            if (err != 0) {                                                                                                                          \
                return err;                                                                                                                          \
            }                                                                                                                                        \
        }                                                                                                                                            \
        err = VFiPFCACHE_ReadFATPage(p_vol, sector + b_UNK, pp_page);                                                                                \
        if (b_UNK) {                                                                                                                                 \
            if (err != 0) {                                                                                                                          \
                return err;                                                                                                                          \
            }                                                                                                                                        \
        } else {                                                                                                                                     \
            if (err != 0) {                                                                                                                          \
                continue;                                                                                                                            \
            }                                                                                                                                        \
        }                                                                                                                                            \
    } else {                                                                                                                                         \
        if ((sector + b_UNK) != ((*pp_page)->sector + (((*pp_page)->p_buf - (*pp_page)->buffer) >> p_vol->bpb.log2_bytes_per_sector))) {             \
            (*pp_page)->p_buf += p_vol->bpb.bytes_per_sector;                                                                                        \
        }                                                                                                                                            \
    }

    err = 0;
    if (p_vol == PF_NULL) {
        return 10;
    }
    if ((cluster < 2 || cluster >= (p_vol->bpb.num_clusters + 2)) && cluster != 0 && cluster != 1) {
        return 14;
    }
    offset = (pf_u16)(cluster + (cluster >> 1));
    sector = p_vol->bpb.active_FAT_sector + (offset >> p_vol->bpb.log2_bytes_per_sector) & 0xFFFF;
    if ((p_vol->bpb.ext_flags & 0x80) != 0) {
        current_fat = p_vol->bpb.ext_flags & (0x01 | 0x02 | 0x04);
    } else {
        current_fat = 1;
    }
    err = 0;
    while (PF_TRUE) {
        if (err == 0x1000 && p_vol->p_callback != PF_NULL) {
            result = ((PF_VOLUME_CB)p_vol->p_callback)(p_vol->last_driver_error);
            if (result == 0) {
                err = 0;
                continue;
            }
            if (result == 1 && p_vol->bpb.num_active_FATs >= 2 && current_fat < p_vol->bpb.num_active_FATs) {
                current_fat++;
                sector += p_vol->bpb.sectors_per_FAT;
                err = 0;
                continue;
            }
        } else {
            FAT_MACRO(0);
            offset &= p_vol->bpb.bytes_per_sector - 1;
            if (offset == (p_vol->bpb.bytes_per_sector - 1)) {
                *p_value = *((*pp_page)->p_buf + offset);
                FAT_MACRO(1);
                *p_value += (pf_u16)(*(*pp_page)->p_buf) << 8;
            } else {
                *p_value = ((pf_u16)(*pp_page)->p_buf[offset + 1] << 8) + *((*pp_page)->p_buf + offset);
            }
        }
        break;
    }
    if (err != 0) {
        *p_value = -1;
        return err;
    }
    if ((cluster & 0x01) != 0) {
        *p_value = *p_value >> 4;
    } else {
        *p_value &= 0xFFF;
    }
    return 0;

#undef FAT_MACRO
}

pf_s32 VFiPFFAT12_WriteFATEntry(PF_VOLUME* p_vol, pf_u16 cluster, pf_u16 value) {
    pf_s32 err;
    pf_u16 fat_offset;
    pf_u16 fat_sector;
    pf_u16 offset_in_sector;
    pf_u16 fat_sector2;
    pf_u16 offset_in_sector2;
    pf_u16 word;
    pf_u8 buf[sizeof(pf_u16)];

    if (p_vol == PF_NULL) {
        return 10;
    }
    if ((cluster < 2 || cluster >= (p_vol->bpb.num_clusters + 2)) && cluster != 0 && cluster != 1) {
        return 14;
    }
    fat_offset = cluster + (cluster >> 1);
    fat_sector = p_vol->bpb.active_FAT_sector + (fat_offset >> p_vol->bpb.log2_bytes_per_sector);
    offset_in_sector = fat_offset & (p_vol->bpb.bytes_per_sector - 1);
    if ((cluster & 0x01) != 0) {
        err = VFiPFSEC_ReadFAT(p_vol, &buf[0], fat_sector, offset_in_sector, 1);
        if (err != 0) {
            return err;
        }
        word = (pf_u16)((value << 4) + (buf[0] & 0xF));
    } else {
        fat_sector2 = p_vol->bpb.active_FAT_sector + ((fat_offset + 1) >> p_vol->bpb.log2_bytes_per_sector);
        offset_in_sector2 = (fat_offset + 1) & (p_vol->bpb.bytes_per_sector - 1);
        err = VFiPFSEC_ReadFAT(p_vol, &buf[0], fat_sector2, offset_in_sector2, 1);
        if (err != 0) {
            return err;
        }
        word = (pf_u16)buf[0] << 8;
        word = (word & 0xF000) + (pf_u16)(value & 0xFFF);
    }
    *(pf_u16*)buf = PF_SWAP_16(word);
    if (offset_in_sector < (p_vol->bpb.bytes_per_sector - 1)) {
        err = VFiPFSEC_WriteFAT(p_vol, &buf[0], fat_sector, offset_in_sector, 2);
    } else {
        err = VFiPFSEC_WriteFAT(p_vol, &buf[0], fat_sector, offset_in_sector, 1U);
        if (err == 0) {
            err = VFiPFSEC_WriteFAT(p_vol, &buf[1], fat_sector + 1, 0U, 1);
        }
    }
    return err;
}

pf_s32 VFiPFFAT12_WriteFATEntryPage(PF_VOLUME* p_vol, pf_u16 cluster, pf_u16 value, PF_CACHE_PAGE** pp_page) {
    pf_s32 err;
    pf_u32 fat_offset;
    pf_u32 fat_sector;
    pf_u16 offset_in_sector;
    pf_u32 current_fat;
    pf_s32 result;

#define __PF_CONCAT(b_UNK, y) b_UNK##y
#define PF_CONCAT(b_UNK, y) __PF_CONCAT(b_UNK, y)

#define FAT_MACRO(b_UNK)                                                                                                                             \
    if ((*pp_page)->sector > (fat_sector + b_UNK) || ((*pp_page)->sector + p_vol->cache.fat_buff_size) <= (fat_sector + b_UNK)) {                    \
        err = VFiPFFAT_UpdateFATEntry(p_vol, *pp_page);                                                                                              \
        if (err != 0) {                                                                                                                              \
            return err;                                                                                                                              \
        }                                                                                                                                            \
        if ((p_vol->bpb.ext_flags & 0x80) != 0) {                                                                                                    \
            current_fat = p_vol->bpb.ext_flags & (0x01 | 0x02 | 0x04);                                                                               \
        } else {                                                                                                                                     \
            current_fat = 1;                                                                                                                         \
        }                                                                                                                                            \
        do {                                                                                                                                         \
            err = VFiPFCACHE_ReadFATPage(p_vol, fat_sector + b_UNK, pp_page);                                                                        \
            if (err != 0x1000 || p_vol->p_callback == PF_NULL) {                                                                                     \
                goto PF_CONCAT(chk_, __LINE__);                                                                                                      \
            }                                                                                                                                        \
            result = ((PF_VOLUME_CB)p_vol->p_callback)(p_vol->last_driver_error);                                                                    \
            if (result != 0) {                                                                                                                       \
                if (result == 1 && p_vol->bpb.num_active_FATs >= 2 && current_fat < p_vol->bpb.num_active_FATs) {                                    \
                    current_fat++;                                                                                                                   \
                    fat_sector += p_vol->bpb.sectors_per_FAT;                                                                                        \
                } else {                                                                                                                             \
                    goto PF_CONCAT(chk_, __LINE__);                                                                                                  \
                }                                                                                                                                    \
            }                                                                                                                                        \
            continue;                                                                                                                                \
            PF_CONCAT(chk_, __LINE__) : if (err != 0) {                                                                                              \
                return err;                                                                                                                          \
            }                                                                                                                                        \
        } while (err != 0);                                                                                                                          \
        if (b_UNK) {                                                                                                                                 \
            VFiPFCACHE_UpdateModifiedSector(*pp_page);                                                                                               \
        }                                                                                                                                            \
    } else {                                                                                                                                         \
        if ((fat_sector + b_UNK) != (*pp_page)->sector + (((*pp_page)->p_buf - (*pp_page)->buffer) >> p_vol->bpb.log2_bytes_per_sector)) {           \
            (*pp_page)->p_buf += p_vol->bpb.bytes_per_sector;                                                                                        \
            if (b_UNK) {                                                                                                                             \
                VFiPFCACHE_UpdateModifiedSector(*pp_page);                                                                                           \
            }                                                                                                                                        \
        }                                                                                                                                            \
    }

    err = 0;
    if (p_vol == PF_NULL) {
        return 10;
    }
    if ((cluster < 2 || cluster >= (p_vol->bpb.num_clusters + 2)) && cluster != 0 && cluster != 1) {
        return 14;
    }
    fat_offset = (pf_u16)(cluster + (cluster >> 1));
    fat_sector = (pf_u16)(p_vol->bpb.active_FAT_sector + (fat_offset >> p_vol->bpb.log2_bytes_per_sector));
    offset_in_sector = fat_offset & (p_vol->bpb.bytes_per_sector - 1);

    FAT_MACRO(PF_FALSE);

    if ((cluster & 0x01) != 0) {
        (*pp_page)->p_buf[offset_in_sector] = ((pf_u8)((value & 0xF) << 4) | ((*pp_page)->p_buf[offset_in_sector] & 0xF));
        VFiPFCACHE_UpdateModifiedSector(*pp_page);
        if (offset_in_sector == (pf_u32)(p_vol->bpb.bytes_per_sector - 1)) {
            FAT_MACRO(PF_TRUE);
            *(*pp_page)->p_buf = (value >> 4);
        } else {
            (*pp_page)->p_buf[offset_in_sector + 1] = (value >> 4);
        }
    } else {
        (*pp_page)->p_buf[offset_in_sector] = value;
        VFiPFCACHE_UpdateModifiedSector(*pp_page);
        if (offset_in_sector == (pf_u32)(p_vol->bpb.bytes_per_sector - 1)) {
            FAT_MACRO(PF_TRUE);
            *(*pp_page)->p_buf = (*(*pp_page)->p_buf & 0xF0) | (pf_u8)(value >> 8);
        } else {
            (*pp_page)->p_buf[offset_in_sector + 1] = ((pf_u8)(value >> 8) | ((*pp_page)->p_buf[offset_in_sector + 1] & 0xF0));
        }
    }
    return err;

#undef FAT_MACRO

#undef PF_CONCAT
#undef __CONCAT
}
