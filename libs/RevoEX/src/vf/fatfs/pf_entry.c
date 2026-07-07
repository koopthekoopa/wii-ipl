#include <private/vf/PrFILE2/fatfs/pf_entry.h>
#include <private/vf/PrFILE2/fatfs/pf_entry_iterator.h>

#include <private/vf/PrFILE2/common/pf_service.h>
#include <private/vf/PrFILE2/fatfs/pf_fat.h>
#include <private/vf/PrFILE2/fatfs/pf_path.h>
#include <private/vf/PrFILE2/fatfs/pf_sector.h>
#include <private/vf/PrFILE2/fatfs/pf_volume.h>

#include <private/vf/PrFILE2/common/pf_clib.h>
#include <private/vf/PrFILE2/common/pf_w_clib.h>

#include <private/vf/PrFILE2/system/pf_system.h>

static void VFiPFENT_storeShortNameToBuf(pf_u8* buf, const PF_DIR_ENT* p_ent) {
    VFiPFPATH_putShortName(buf, p_ent->short_name, p_ent->attr);

    if (*buf == 0xE5) {
        *buf = 5;
    }
}

static pf_s32 VFiPFENT_searchEmptyTailSFN(PF_FFD* p_ffd, pf_u32 tail_index, const pf_s8* pattern, pf_u32* p_tail_bit) {
    PF_ENT_ITER iter;
    pf_u8 attr;
    pf_s32 err = 0;
    pf_u32 bit_pos;
    pf_u32 sfn_taillen;
    pf_u32 sfn_baselen;
    pf_u32 i;
    pf_s8 sfnbuf[13];
    pf_s8 patbuf[13];
    PF_VOLUME* p_vol = p_ffd->p_vol;

    VFipf_memset(p_tail_bit, 0, p_vol->tail_entry.tracker_size * 4);
    iter.ffd = *p_ffd;

    for (err = VFiPFENT_ITER_IteratorInitialize(&iter, 0); VFiPFENT_ITER_IsAtLogicalEnd(&iter) == PF_FALSE;
         err = VFiPFENT_ITER_Advance(&iter, PF_FALSE)) {
        if (err != 0) {
            return err;
        }
        if (*iter.buf == 0) {
            break;
        }
        if (*iter.buf != 0xE5) {
            attr = iter.buf[11];
            if (((attr & (0x01 | 0x02 | 0x04 | 0x08)) != (0x01 | 0x02 | 0x04 | 0x08)) && ((attr & 8) == 0)) {
                VFiPFPATH_getShortName((pf_s8*)&sfnbuf, (pf_u8*)&iter.buf, 0);
                for (sfn_taillen = 1; (sfnbuf[sfn_taillen] != 0x7E) && (sfnbuf[sfn_taillen] != 0) && (sfn_taillen < 7U); sfn_taillen++) {
                }

                if (sfn_taillen < 7 && sfnbuf[sfn_taillen] == 0x7E) {
                    for (sfn_baselen = sfn_taillen + 1; sfnbuf[sfn_baselen] >= 0x30 && sfnbuf[sfn_baselen] <= 0x39; sfn_baselen++) {
                    }

                    if (sfnbuf[sfn_baselen] == '.' || sfnbuf[sfn_baselen] == 0) {
                        i = (sfn_baselen - sfn_taillen) - 1;
                        bit_pos = 0;
                        for (; i != 0; i--) {
                            bit_pos *= 10;
                            bit_pos += (sfnbuf[sfn_baselen - i]) - 0x30;
                        }

                        VFipf_strcpy((pf_s8*)&patbuf, pattern);
                        VFiPFPATH_parseShortNameNumeric((pf_s8*)&patbuf, bit_pos);
                        if (VFiPFPATH_cmpTailSFN((pf_s8*)&sfnbuf, (pf_s8*)&patbuf) == 0 && bit_pos >= tail_index &&
                            bit_pos < (tail_index + (p_vol->tail_entry.tracker_size << 5))) {
                            bit_pos -= tail_index;
                            p_tail_bit[bit_pos >> 5] |= 1 << bit_pos;
                        }
                    }
                }
            }
        }
    }

    return 0;
}

static pf_s32 VFiPFENT_findEmptyTailSFN(PF_DIR_ENT* p_ent_containig_dir, const pf_s8* name, pf_u32* p_tails) {
    PF_FFD ffd;
    PF_FAT_HINT hint;
    pf_s32 err;
    pf_u32 num;
    PF_VOLUME* p_vol = p_ent_containig_dir->p_vol;
    pf_u32 track_num;

    *p_tails = 1;
    VFiPFFAT_InitFFD(&ffd, &hint, p_ent_containig_dir->p_vol, &p_ent_containig_dir->start_cluster);

    for (num = 1; num <= (1000000 - 1); num += p_vol->tail_entry.tracker_size << 5) {
        err = VFiPFENT_searchEmptyTailSFN(&ffd, num, name, p_vol->tail_entry.tracker_bits);
        if (err != 0) {
            return err;
        }

        for (track_num = 0; track_num < p_vol->tail_entry.tracker_size; track_num += 1) {
            if (p_vol->tail_entry.tracker_bits[track_num] != -1) {
                for (; (p_vol->tail_entry.tracker_bits[track_num] & 1) != 0; p_vol->tail_entry.tracker_bits[track_num] >>= 1, (*p_tails)++) {
                }
                num = 1000000;
                break;
            } else {
                *p_tails += 0x20;
            }
        }
    }
    return 0;
}

void VFiPFENT_SetDotEntry(pf_u8* entry) {
    pf_s32 i;

    entry[0] = '.';
    for (i = 1; i < 11; i++) {
        entry[i] = ' ';
    }
}

void VFiPFENT_SetDotDotEntry(pf_u8* entry) {
    pf_s32 i;

    entry[0] = '.';
    entry[1] = '.';
    for (i = 2; i < 11; i++) {
        entry[i] = ' ';
    }
}

pf_u8 VFiPFENT_CalcCheckSum(PF_DIR_ENT* p_ent) {
    pf_u16 i;
    pf_u8 sum;
    pf_u8 buf[13];

    VFiPFPATH_putShortName((pf_u8*)buf, p_ent->short_name, 0);

    sum = 0;
    for (i = 0; i < 11; i++) {
        sum = ((sum & 1) != 0 ? 0x80 : 0) + (sum >> 1) + buf[i];
    }
    return sum;
}

void VFiPFENT_LoadShortNameFromBuf(PF_DIR_ENT* p_ent, const pf_u8* buf) {
    VFiPFPATH_getShortName(p_ent->short_name, buf, buf[11]);
    if (p_ent->short_name[0] == 5) {
        p_ent->short_name[0] = -0x1B;
    }
}

void VFiPFENT_loadEntryNumericFieldsFromBuf(PF_DIR_ENT* p_ent, const pf_u8* buf) {
    p_ent->attr = buf[0xB];
    p_ent->small_letter_flag = buf[0xC];
    p_ent->create_time_ms = buf[0xD];
    p_ent->create_time = PF_SWAP_16(*(pf_u16*)&buf[0xE]);
    p_ent->create_date = PF_SWAP_16(*(pf_u16*)&buf[0x10]);
    p_ent->access_date = PF_SWAP_16(*(pf_u16*)&buf[0x12]);
    p_ent->modify_time = PF_SWAP_16(*(pf_u16*)&buf[0x16]);
    p_ent->modify_date = PF_SWAP_16(*(pf_u16*)&buf[0x18]);
    p_ent->file_size = PF_SWAP_32(*(pf_u32*)&buf[0x1C]);
    p_ent->start_cluster = ((pf_u16)PF_SWAP_16(*(pf_u16*)&buf[0x14]) << 16) | (pf_u16)(PF_SWAP_16(*(pf_u16*)&buf[0x1A]));
}

void VFiPFENT_StoreEntryNumericFieldsToBuf(pf_u8* buf, const PF_DIR_ENT* p_ent) {
    buf[0x0B] = p_ent->attr;
    buf[0x0C] = p_ent->small_letter_flag;
    buf[0x0D] = p_ent->create_time_ms;
    *(pf_u16*)&buf[0x0E] = PF_SWAP_16(p_ent->create_time);
    *(pf_u16*)&buf[0x10] = PF_SWAP_16(p_ent->create_date);
    *(pf_u16*)&buf[0x12] = PF_SWAP_16(p_ent->access_date);
    *(pf_u16*)&buf[0x16] = PF_SWAP_16(p_ent->modify_time);
    *(pf_u16*)&buf[0x18] = PF_SWAP_16(p_ent->modify_date);
    *(pf_u16*)&buf[0x14] = PF_SWAP_16((pf_u16)(p_ent->start_cluster >> 16));
    *(pf_u16*)&buf[0x1A] = PF_SWAP_16((pf_u16)(p_ent->start_cluster));
    *(pf_u32*)&buf[0x1C] = PF_SWAP_32(p_ent->file_size);
}

pf_s32 VFiPFENT_LoadLFNEntryFieldsFromBuf(PF_DIR_ENT* p_ent, const pf_u8* buf, pf_bool is_reverse) {
    pf_u8 ordinal;
    pf_u8 ent_ordinal;
    pf_u8 check_sum;
    pf_u32 is_first;
    pf_u32 is_last_LFN_ent;
    pf_u8* p;
    pf_u16* q;
    pf_u16* q_after;

    is_first = 1;
    is_last_LFN_ent = 0;
    check_sum = buf[13];
    ordinal = buf[0];
    if ((ordinal & 0x40)) {
        is_last_LFN_ent = 1;
        ordinal &= 0xFFFFFFBF;
    }
    if (ordinal > 0x14U) {
        p_ent->ordinal = 0;
        p_ent->check_sum = 0;
        p_ent->num_entry_LFNs = 0;
        return 33;
    }
    if (is_reverse) {
        if (ordinal != 1) {
            ent_ordinal = p_ent->ordinal + 1;
            is_first = 0;
        }
    } else if (is_last_LFN_ent == 0) {
        ent_ordinal = p_ent->ordinal - 1;
        is_first = 0;
    }
    if (is_first != 0) {
        p_ent->num_entry_LFNs = 0;
    } else {
        if (p_ent->num_entry_LFNs == 0) {
            return 33;
        }
        if ((ordinal != ent_ordinal) || (check_sum != p_ent->check_sum)) {
            p_ent->ordinal = 0;
            p_ent->check_sum = 0;
            p_ent->num_entry_LFNs = 0;
            return 33;
        }
    }
    p_ent->ordinal = ordinal;
    p_ent->check_sum = check_sum;
    p = (pf_u8*)p_ent->long_name;
    p += (ordinal - 1) * 0x1A;
    VFipf_memcpy(&p[0x0], (pf_s8*)&buf[0x1], 10);
    VFipf_memcpy(&p[10], (pf_s8*)&buf[0xE], 0xC);
    VFipf_memcpy(&p[0x16], (pf_s8*)&buf[0x1C], 4U);
    VFiPF_LE16_TO_U16_STR(&p[0x0], 10);
    VFiPF_LE16_TO_U16_STR(&p[10], 0xC);
    VFiPF_LE16_TO_U16_STR(&p[0x16], 4U);
    if (is_last_LFN_ent != 0) {
        *(pf_u16*)(p + 0x1A) = 0;
        q = (pf_u16*)p;
        q_after = (pf_u16*)&p[0x1A];
        for (; q < q_after; q++) {
            if (*q == 0) {
                q++;
                break;
            }
        }

        for (; q < q_after; q++) {
            if (*q != 0xFFFF) {
                p_ent->num_entry_LFNs = 0;
                return 33;
            }
        }
    }
    p_ent->num_entry_LFNs++;
    return 0;
}

void VFiPFENT_storeLFNEntryFieldsToBuf(pf_u8* buf, PF_DIR_ENT* p_ent, pf_u8 ord, pf_u8 sum, pf_bool is_last) {
    pf_u8* p_seg;
    pf_u16* p;
    pf_u16* p_after;

    if (is_last) {
        *buf = ord | 0x40;
    } else {
        *buf = ord;
    }
    buf[0xB] = (0x01 | 0x02 | 0x04 | 0x08);
    buf[0xD] = sum;
    buf[0xC] = 0;
    *(pf_u16*)&buf[0x1A] = 0;
    p_seg = (pf_u8*)p_ent->long_name;
    p_seg += (ord - 1) * 0x1A;
    if (is_last != 0) {
        p = (pf_u16*)p_seg;
        p_after = (pf_u16*)&p_seg[0x1A];
        for (; p < p_after; p++) {
            if (*p == 0x0000) {
                p++;
                break;
            }
        }

        for (; p < p_after; p++) {
            *p = 0xFFFF;
        }
    }
    VFipf_memcpy(&buf[1], p_seg, 10);
    VFipf_memcpy(&buf[0xE], &p_seg[10], 0xC);
    VFipf_memcpy(&buf[0x1C], &p_seg[0x16], 4);
    VFiPF_LE16_TO_U16_STR(&buf[1], 10);
    VFiPF_LE16_TO_U16_STR(&buf[0xE], 0xC);
    VFiPF_LE16_TO_U16_STR(&buf[0x1C], 4);
}

// Range: 0xB90 -> 0xC30
pf_s32 VFiPFENT_GetEntryOfPath(PF_DIR_ENT* p_ent, PF_VOLUME* p_vol, PF_STR* p_path) {
    PF_ENT_ITER iter;

    if ((p_ent == PF_NULL) || (p_vol == PF_NULL)) {
        return 0xA;
    }
    if (p_path->p_head == PF_NULL) {
        return 0xA;
    }
    if (VFiPFSTR_StrLen(p_path) == 0) {
        return 0xA;
    }
    return VFiPFENT_ITER_GetEntryOfPath(&iter, p_ent, p_vol, p_path, PF_FALSE);
}

// Range: 0xC30 -> 0xCD0
pf_s32 VFiPFENT_GetParentEntryOfPath(PF_DIR_ENT* p_ent, PF_VOLUME* p_vol, PF_STR* p_path) {
    PF_ENT_ITER iter;

    if ((p_ent == PF_NULL) || (p_vol == PF_NULL)) {
        return 0xA;
    }
    if (p_path->p_head == PF_NULL) {
        return 0xA;
    }
    if (VFiPFSTR_StrLen(p_path) == 0) {
        return 0xA;
    }
    return VFiPFENT_ITER_GetEntryOfPath(&iter, p_ent, p_vol, p_path, PF_TRUE);
}

pf_s32 VFiPFENT_findEntry(PF_FFD* p_ffd, PF_DIR_ENT* p_ent, pf_u32 index_search_from, PF_STR* p_pattern, pf_u8 attr_required, pf_u32* p_lpos,
                          pf_u32* p_ppos) {
    pf_s32 err;
    PF_ENT_ITER iter;
    pf_u32 is_found;

    //@BUG: p_lpos is not set
    if (p_ppos != PF_NULL) {
        *p_ppos = 0xF423F;
    }
    if (p_ppos != PF_NULL) {
        *p_ppos = 0xF423F;
    }
    if ((p_ffd == PF_NULL) || (p_ent == PF_NULL)) {
        return 0xA;
    }
    if (p_pattern->p_head == PF_NULL) {
        return 0xA;
    }
    if (VFiPFSTR_StrLen(p_pattern) == 0) {
        return 0xA;
    }
    if (index_search_from >= 0xF423FU) {
        return 0xA;
    }

    iter.ffd = *p_ffd;
    err = VFiPFENT_ITER_IteratorInitialize((PF_ENT_ITER*)&iter, index_search_from);
    if (err != 0) {
        return err;
    }
    err = VFiPFENT_ITER_FindEntry((PF_ENT_ITER*)&iter, p_ent, p_pattern, attr_required, &is_found, p_ppos, p_lpos, 0U);
    if (err != 0) {
        return err;
    }
    if (is_found == 0) {
        return 3;
    }

    return 0;
}

pf_s32 VFiPFENT_allocateEntry(PF_DIR_ENT* p_ent, pf_u8 num_entries, PF_FFD* p_ffd, pf_u32* p_prev_chain, PF_STR* p_filename, pf_u8 attr_required,
                              pf_u32* p_pos) {
    pf_s32 err;

    if (p_pos != PF_NULL) {
        *p_pos = 0xF423F;
    }
    if ((p_ffd == PF_NULL) || (p_ffd->p_vol == PF_NULL)) {
        return 0xA;
    }
    if ((p_filename != PF_NULL) && (p_filename->p_head == PF_NULL)) {
        return 0xA;
    }
    if ((num_entries == 0) || (num_entries > 0x15U)) {
        return 0xA;
    }
    err = VFiPFENT_ITER_AllocateEntry(p_ent, num_entries, p_ffd, p_prev_chain, p_filename, attr_required, p_pos);

    return err;
}

pf_s32 VFiPFENT_GetRootDir(PF_VOLUME* p_vol, PF_DIR_ENT* p_ent) {
    if (p_vol == PF_NULL) {
        return 10;
    }
    if (p_ent == PF_NULL) {
        return 10;
    }
    if ((p_vol->flags & 0x02) == 0) {
        return 9;
    }
    p_ent->long_name[0] = 0x5C;
    p_ent->long_name[1] = 0;
    p_ent->num_entry_LFNs = 0;
    p_ent->ordinal = 0;
    p_ent->check_sum = 0;
    p_ent->short_name[0] = 0x5C;
    p_ent->short_name[1] = 0;
    p_ent->small_letter_flag = 0;
    p_ent->attr = 0x10;
    p_ent->create_time_ms = 0;
    p_ent->create_time = 0;
    p_ent->create_date = 0;
    p_ent->access_date = 0;
    p_ent->modify_time = 0;
    p_ent->modify_date = 0;
    p_ent->file_size = 0;
    p_ent->p_vol = p_vol;
    p_ent->path_len = 3;
    p_ent->start_cluster = 1;
    p_ent->entry_sector = -1;
    p_ent->entry_offset = 0;
    return 0;
}

pf_s32 VFiPFENT_MakeRootDir(PF_VOLUME* p_vol) {
    PF_CACHE_PAGE* p_page;
    pf_u32 sector;
    pf_u32 success_size;
    pf_s32 err;

    if (p_vol == PF_NULL) {
        return 10;
    }
    switch (p_vol->bpb.fat_type) {
        case FAT_32: {
            err = VFiPFENT_FillVoidEntryToSectors(
                p_vol, p_vol->bpb.first_data_sector + ((p_vol->bpb.root_dir_cluster - 2) << p_vol->bpb.log2_sectors_per_cluster),
                p_vol->bpb.sectors_per_cluster, 0, 0, 0);

            if (err == 0) {
                err = VFiPFFAT_MakeRootDir(p_vol);
            }
            break;
        }
        case FAT_12:
        case FAT_16: {
            err = VFiPFENT_FillVoidEntryToSectors(p_vol, p_vol->bpb.first_root_dir_sector,
                                                  p_vol->bpb.first_data_sector - p_vol->bpb.first_root_dir_sector, 0, 0, 0);
            break;
        }
        default: {
            err = 7;
            break;
        }
    }

    if (err == 0) {
        VFiPFVOL_LoadVolumeLabelFromBuf((pf_u8*)"NO NAME    ", p_vol);
    }

    return err;
}

pf_u32 VFiPFENT_CompareAttr(pf_u8 attr /* r3 */, pf_u32 attr_required /* r4 */) {
    pf_u32 is_valid;
    pf_u32 attr_extra;

    is_valid = 0;
    attr_extra = attr & 0x7F;

    if (attr_extra == 0) {
        attr_extra = 0x40;
    }

    if ((attr_extra & 0x10) == 0) {
        attr_extra |= 0x100;
    }

    if (attr_required & 0x80) {
        attr_required &= ~0x80;
        if (attr_required == (attr_extra & attr_required)) {
            is_valid = 1;
        }
    } else if (attr_required & 0x1000) {
        attr_required &= ~0x1000u;
        if ((attr_required & 0x100) == 0) {
            attr_extra &= ~0x100;
        }
        if (attr_extra == attr_required) {
            is_valid = 1;
        }
    } else if (attr_extra & attr_required) {
        is_valid = 1;
    }

    return is_valid;
}

pf_s32 VFiPFENT_compareEntryName(PF_DIR_ENT* p_ent, PF_STR* p_pattern, pf_u8 attr) {
    pf_s32 is_match;
    pf_bool is_short_search;

    is_match = PF_TRUE;
    if (p_ent->num_entry_LFNs != 0 && p_ent->ordinal == 1 && p_ent->check_sum == VFiPFENT_CalcCheckSum(p_ent)) {
        if (VFiPFPATH_MatchFileNameWithPattern((pf_s8*)p_ent->long_name, p_pattern, PF_FALSE, PF_TRUE)) {
            is_match = PF_FALSE;
        } else {
            is_match = PF_TRUE;
        }
    }
    if (is_match == PF_TRUE) {
        if ((VFipf_vol_set.setting & 2) == 2 && (attr & 8) == 0) {
            is_short_search = 0;
        } else {
            is_short_search = 1;
        }

        if (VFiPFPATH_MatchFileNameWithPattern(p_ent->short_name, p_pattern, is_short_search, 0)) {
            is_match = 0;
        }
    }
    return is_match;
}

// Range: 0x1358 -> 0x1494
pf_s32 VFiPFENT_UpdateSFNEntry(PF_DIR_ENT* p_ent, pf_u32 flag) {
    PF_VOLUME* p_vol;
    pf_u32 success_size;
    pf_u8 buf[32];
    pf_s32 err;

    if (p_ent == PF_NULL) {
        return 0xA;
    }
    if (p_ent->p_vol == PF_NULL) {
        return 0xA;
    }
    if (p_ent->entry_sector < (p_ent->p_vol->bpb.first_data_sector - p_ent->p_vol->bpb.num_root_dir_sectors)) {
        return 0x1C;
    }
    if (p_ent->entry_sector >= p_ent->p_vol->bpb.total_sectors) {
        return 0x10;
    }
    p_vol = p_ent->p_vol;
    if (p_ent->start_cluster == 1) {
        return 0xE;
    }
    if (flag != 0) {
        p_ent->attr |= (pf_u8)0x20;
    }
    VFiPFENT_storeShortNameToBuf(buf, p_ent);
    VFiPFENT_StoreEntryNumericFieldsToBuf(buf, p_ent);
    err = VFiPFSEC_WriteData(p_vol, buf, p_ent->entry_sector, p_ent->entry_offset, 32, &success_size, 0U, 0U);
    if (err != 0) {
        return err;
    }
    if (success_size != 0x20) {
        return 0x11;
    }

    return 0;
}

// Range: 0x1494 -> 0x1748
pf_s32 VFiPFENT_UpdateEntry(PF_DIR_ENT* p_ent, pf_u32* p_prev_chain, pf_bool is_set_ARCH) {
    pf_s32 err;
    pf_s32 err2;
    PF_VOLUME* p_vol;
    pf_s32 ent_cnt;
    pf_s32 success_cnt;
    pf_u32 entry_sector;
    pf_u16 entry_offset;
    pf_s32 chain_offset;
    pf_u32 success_size;
    pf_u8 buf[32];

    err = 0;
    ent_cnt = 1;
    success_cnt = 0;
    if (p_ent == PF_NULL) {
        return 0xA;
    }
    p_vol = p_ent->p_vol;
    if (p_vol == PF_NULL) {
        return 0xA;
    }
    err = VFiPFENT_UpdateSFNEntry(p_ent, is_set_ARCH);
    if (err == 0) {
        success_cnt = 1;
        if ((p_ent->long_name[0] != 0) && (p_ent->num_entry_LFNs != 0) && ((p_ent->small_letter_flag & 0x18) == 0)) {
            entry_sector = p_ent->entry_sector;
            entry_offset = p_ent->entry_offset;
            chain_offset = 0;

            for (ent_cnt = 1; ent_cnt <= p_ent->num_entry_LFNs; ent_cnt++) {
                success_cnt += 1;
                if (entry_offset == 0) {
                    entry_offset = p_vol->bpb.bytes_per_sector - 0x20;
                    if (p_prev_chain == PF_NULL) {
                        err = VFiPFFAT_GetBeforeSector(&entry_sector, p_vol, entry_sector);
                    } else {
                        entry_sector = p_prev_chain[chain_offset];
                        chain_offset += 1;
                    }
                } else {
                    entry_offset -= 0x20;
                }
                if (err == 0) {
                    VFiPFENT_storeLFNEntryFieldsToBuf(buf, p_ent, ent_cnt, p_ent->check_sum, ent_cnt == p_ent->num_entry_LFNs ? 1 : 0);
                    err = VFiPFSEC_WriteData(p_vol, buf, entry_sector, entry_offset, 0x20U, &success_size, 0U, 0U);
                }
                if ((err != 0) || (success_size != 0x20)) {
                    err = 0x11;
                    ent_cnt = p_ent->num_entry_LFNs;
                }
            }
        }
        if (err != 0) {
            entry_sector = p_ent->entry_sector;
            entry_offset = p_ent->entry_offset;
            chain_offset = 0;
            buf[0] = 0xE5;
            for (ent_cnt = 0; ent_cnt < success_cnt; ent_cnt++) {
                err2 = VFiPFSEC_WriteData(p_vol, buf, entry_sector, entry_offset, 1U, &success_size, 0U, 0U);
                if ((err2 != 0) || (success_size != 1)) {
                    err2 = 0x11;
                }
                if (ent_cnt < p_ent->num_entry_LFNs) {
                    if (entry_offset == 0) {
                        entry_offset = p_vol->bpb.bytes_per_sector - 0x20;
                        if (p_prev_chain == PF_NULL) {
                            err2 = VFiPFFAT_GetBeforeSector(&entry_sector, p_vol, entry_sector);
                        } else {
                            entry_sector = p_prev_chain[chain_offset];
                            chain_offset += 1;
                        }
                    } else {
                        entry_offset -= 0x20;
                    }
                }
                if (err2 != 0) {
                    ent_cnt = success_cnt;
                }
            }
        }
    }

    return err;
}

pf_s32 VFiPFENT_AdjustSFN(PF_DIR_ENT* p_ent, pf_s8* p_short_name) {
    pf_u32 i = 0;
    pf_u32 tail_num;
    pf_s32 err = 0;

    for (i = 1; (p_short_name[i] != 0x7E) && (p_short_name[i] != 0) && (i < 7U); i++) {
    }
    if ((i < 7U) && (p_short_name[i] == 0x7E)) {
        for (i++; (p_short_name[i] >= 0x30) && (p_short_name[i] <= 0x39); i++) {
        }
        if ((p_short_name[i] == '.') || (p_short_name[i] == 0)) {
            err = VFiPFENT_findEmptyTailSFN(p_ent, p_short_name, &tail_num);
            if (err != 0) {
                return err;
            }
            if (tail_num != 1) {
                VFiPFPATH_parseShortNameNumeric(p_short_name, tail_num);
            }
        }
    }

    return 0;
}

pf_s32 VFiPFENT_RemoveEntry(PF_DIR_ENT* p_ent, PF_ENT_ITER* p_iter) {
    pf_u32 success_size;
    pf_s32 err = 0;
    pf_u32 entry_sector;
    pf_u16 entry_offset;
    pf_u32 i;
    PF_VOLUME* p_vol = PF_NULL;
    pf_u8 dir_fb_free[1] = {0xE5};

    p_vol = p_ent->p_vol;
    if (p_vol == PF_NULL) {
        return 10;
    }
    if (p_ent == PF_NULL) {
        return 10;
    }
    if (p_iter == PF_NULL) {
        return 10;
    }
    entry_sector = p_ent->entry_sector;
    entry_offset = p_ent->entry_offset;
    if ((p_ent->num_entry_LFNs != 0) && ((p_ent->small_letter_flag & 0x18) == 0)) {
        for (i = 1; i <= p_ent->num_entry_LFNs; i++) {
            err = VFiPFENT_ITER_Retreat(p_iter, 0);
            if (err != 0) {
                return err;
            }
            entry_sector = p_iter->sector;
            entry_offset = p_iter->offset;
            err = VFiPFSEC_WriteData(p_vol, (pf_u8*)&dir_fb_free, entry_sector, entry_offset, 1, &success_size, 0, 0);
            if (err != 0) {
                return err;
            }
            if (success_size != 1) {
                return 17;
            }
        }
    }
    err = VFiPFSEC_WriteData(p_vol, (pf_u8*)&dir_fb_free, p_ent->entry_sector, p_ent->entry_offset, 1, &success_size, 0, 0);
    if (err != 0) {
        return err;
    }
    if (success_size != 1) {
        return 17;
    }
    if (!(p_vol->cache.mode & 4)) {
        goto success;
    }
    err = VFiPFCACHE_FlushDataCacheSpecific(p_vol, PF_NULL);
    if (err != 0) {
        return err;
    }
success:
    return 0;
}

pf_u8 VFiPFENT_getcurrentDateTimeForEnt(pf_u16* p_date, pf_u16* p_time) {
    PF_SYS_DATE sys_date;
    PF_SYS_TIME sys_time;

    VFiPFSYS_TimeStamp(&sys_date, &sys_time);
    *p_date = (sys_date.sys_day & 0x1F) | ((((sys_date.sys_year - 0x7BC) << 9) & 0xFE00) | ((sys_date.sys_month << 5) & 0x1E0));
    *p_time = ((sys_time.sys_sec >> 1) & 0x1F) | (((sys_time.sys_hour << 0xB) & 0xF800) | ((sys_time.sys_min << 5) & 0x7E0));

    return sys_time.sys_ms;
}

pf_s32 VFiPFENT_InitENT(PF_DIR_ENT* p_ent, PF_STR* p_filename, pf_u8 attr, pf_u32 is_set_time, PF_DIR_ENT* p_dir_ent, PF_VOLUME* p_vol) {
    pf_s32 err;
    pf_u32 is_create_LFN;
    pf_u16 dirname_len;
    pf_u16 access_time;

    err = 0;
    p_ent->file_size = 0;
    p_ent->attr = attr;
    p_ent->p_vol = p_vol;
    if (is_set_time != 0) {
        p_ent->create_time_ms = VFiPFENT_getcurrentDateTimeForEnt(&p_ent->create_date, &p_ent->create_time);
        p_ent->access_date = p_ent->create_date;
        p_ent->modify_time = p_ent->create_time;
        p_ent->modify_date = p_ent->create_date;
    } else {
        VFiPFENT_getcurrentDateTimeForEnt(&p_ent->access_date, &access_time);
    }
    p_ent->small_letter_flag = 0;
    is_create_LFN = VFiPFPATH_parseShortName(p_ent->short_name, p_filename);
    if (p_ent->short_name[0] != 0) {
        if ((is_create_LFN != 0) && ((p_ent->small_letter_flag & 0x18) == 0)) {
            err = VFiPFENT_AdjustSFN(p_dir_ent, p_ent->short_name);
            if (err == 0) {
                p_ent->check_sum = VFiPFENT_CalcCheckSum(p_ent);
                if (VFiPFSTR_GetCodeMode(p_filename) == 1) {
                    VFiPFPATH_transformInUnicode(p_ent->long_name, VFiPFSTR_GetStrPos(p_filename, 1U));
                } else {
                    VFipf_w_strcpy(p_ent->long_name, (pf_u16*)VFiPFSTR_GetStrPos(p_filename, 1U));
                }
                dirname_len = VFiPFSTR_StrNumChar(p_filename, 1U);
                p_ent->num_entry_LFNs = (dirname_len / 13u) + ((dirname_len % 13u) ? 1 : 0);
                p_ent->ordinal = 1;
            }
        } else {
            p_ent->num_entry_LFNs = 0;
            p_ent->long_name[0] = 0;
            p_ent->check_sum = 0;
            p_ent->ordinal = 0;
        }
    } else {
        err = 1;
    }
    return err;
}

pf_s32 VFiPFENT_FillVoidEntryToSectors(PF_VOLUME* p_vol, pf_u32 start_sector, pf_u32 num_sectors, pf_u32 is_make_new_directory, PF_DIR_ENT* p_ent,
                                       PF_DIR_ENT* p_parent_ent) {
    pf_s32 err;
    PF_CACHE_PAGE* p_page;
    pf_u8* p_buf;
    pf_u32 write_sector;
    pf_u32 write_size;
    pf_u32 success_size;
    pf_u32 backup_start_cluster;
    pf_u32 num_cache_buff;

    if (p_vol == PF_NULL) {
        return 0xA;
    }
    if ((is_make_new_directory != 0) && ((p_ent == PF_NULL) || (p_parent_ent == PF_NULL))) {
        return 0xA;
    }
    err = VFiPFCACHE_AllocateDataPage(p_vol, -1U, &p_page);
    if (err == 0) {
        num_cache_buff = p_vol->cache.data_buff_size;
        write_size = num_cache_buff << p_vol->bpb.log2_bytes_per_sector;
        p_buf = p_page->buffer;
        VFipf_memset(p_buf, 0, write_size);
        write_sector = start_sector + num_sectors;
        while (num_sectors != 0) {
            if (num_sectors < num_cache_buff) {
                num_cache_buff = num_sectors;
                write_size = num_sectors << p_vol->bpb.log2_bytes_per_sector;
                write_sector = start_sector;
            } else {
                write_sector -= num_cache_buff;
            }
            if ((num_sectors == num_cache_buff) && (is_make_new_directory != 0)) {
                VFiPFENT_SetDotEntry(p_buf);
                VFiPFENT_StoreEntryNumericFieldsToBuf(p_buf, p_ent);
                backup_start_cluster = p_ent->start_cluster;
                if ((p_parent_ent->entry_sector == -1U) || (p_parent_ent->start_cluster == 1)) {
                    p_ent->start_cluster = 0;
                } else {
                    p_ent->start_cluster = p_parent_ent->start_cluster;
                }
                VFiPFENT_SetDotDotEntry(&p_buf[32]);
                VFiPFENT_StoreEntryNumericFieldsToBuf(&p_buf[32], p_ent);
                p_ent->start_cluster = backup_start_cluster;
            }
            err = VFiPFSEC_WriteDataSector(p_vol, p_buf, write_sector, write_size, &success_size, 1U, 0U);
            if (err != 0) {
                num_sectors = 0;
            } else if (success_size != write_size) {
                num_sectors = 0;
                err = 0x11;
            } else {
                num_sectors -= num_cache_buff;
            }
        }
        VFiPFCACHE_FreeDataPage(p_vol, p_page);
    }

    return err;
}
