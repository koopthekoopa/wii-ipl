#include <private/vf/PrFILE2/fatfs/pf_entry.h>
#include <private/vf/PrFILE2/fatfs/pf_entry_iterator.h>

#include <private/vf/PrFILE2/common/pf_service.h>
#include <private/vf/PrFILE2/fatfs/pf_path.h>
#include <private/vf/PrFILE2/fatfs/pf_sector.h>
#include <private/vf/PrFILE2/fatfs/pf_volume.h>

#include <private/vf/PrFILE2/common/pf_clib.h>

#include <private/vf/PrFILE2/system/pf_system.h>

static void VFiPFENT_storeShortNameToBuf(pf_u8* buf, const PF_DIR_ENT* p_ent) {
    VFiPFPATH_putShortName(buf, p_ent->short_name, p_ent->attr);

    if (*buf == 0xE5) {
        *buf = 5;
    }
}

static pf_u32 VFiPFENT_compareAttr(pf_u8 attr, pf_u8 attr_required, pf_u8 attr_unwanted) {
    pf_bool is_valid;

    is_valid = PF_TRUE;
    if (attr == 0) {
        attr = 0x40;
    }
    if ((attr_required & 0x80) != 0) {
        attr_required &= ~0x80;
        attr_unwanted &= ~0x80;
        if ((attr_required != 0 && attr_required != (attr & attr_required)) || (attr_unwanted != 0 && attr_unwanted == (attr & attr_unwanted))) {
            is_valid = PF_FALSE;
        }
    } else if (attr_required != 0x7F && attr != attr_required && ((attr & attr_required) == 0 || (attr & attr_unwanted) != 0)) {
        is_valid = PF_FALSE;
    }
    return is_valid;
}

static pf_s32 VFiPFENT_compareEntryName(PF_DIR_ENT* p_ent, PF_STR* p_pattern, pf_u8 attr) {
    pf_s32 is_match;

    is_match = PF_TRUE;
    if ((p_ent->num_entry_LFNs != 0) && (p_ent->ordinal == 1) && (p_ent->check_sum == VFiPFENT_CalcCheckSum(p_ent))) {
        if (VFiPFPATH_cmpNameUni(p_ent->long_name, p_pattern) == 0) {
            is_match = PF_FALSE;
        } else {
            is_match = PF_TRUE;
        }
    }
    if (is_match == PF_TRUE) {
        if ((VFipf_vol_set.setting & 0x02) == 0x02 && (attr & 0x08) == 0) {
            if (VFiPFPATH_cmpName(p_ent->short_name, p_pattern, 0) == 0) {
                is_match = PF_FALSE;
            }
        } else if (VFiPFPATH_cmpName(p_ent->short_name, p_pattern, 1) == 0) {
            is_match = PF_FALSE;
        }
    }
    return is_match;
}

static pf_s32 VFiPFENT_getEntry(PF_DIR_ENT* p_ent, PF_ENT_ITER* p_iter, PF_STR* p_pattern, pf_u8 attr_required, pf_u8 attr_unwanted,
                                pf_u32* logical_index) {
    pf_s32 err;
    pf_s32 is_match = PF_TRUE;
    pf_u32 is_valid = PF_TRUE;
    pf_u8 attr;
    pf_s32 lengthName = 0;
    pf_s8 filename[13];

    attr = p_iter->buf[0xB];
    if ((attr & (0x01 | 0x02 | 0x04 | 0x08)) == (0x01 | 0x02 | 0x04 | 0x08)) {
        is_match = PF_TRUE;
    } else {
        is_valid = VFiPFENT_compareAttr(attr, attr_required, attr_unwanted);
        if (is_valid == PF_FALSE) {
            is_match = PF_TRUE;
        } else {
            if ((attr & 8) != 0) {
                p_ent->num_entry_LFNs = 0;
                *p_ent->long_name = 0;
            }
            VFiPFENT_LoadShortNameFromBuf(p_ent, p_iter->buf);
            is_match = VFiPFENT_compareEntryName(p_ent, p_pattern, attr);
            if (is_match == PF_TRUE) {
                (*logical_index)++;
            }
        }
    }
    if (is_match == PF_TRUE) {
        if ((attr & (0x01 | 0x02 | 0x04 | 0x08)) == (0x01 | 0x02 | 0x04 | 0x08)) {
            err = VFiPFENT_LoadLFNEntryFieldsFromBuf(p_ent, p_iter->buf);
            if (err != 0) {
                p_ent->num_entry_LFNs = 0;
                *p_ent->long_name = 0;
            }
        } else {
            p_ent->num_entry_LFNs = 0;
            *p_ent->long_name = 0;
        }
        err = -1;
    } else {
        if (p_ent->num_entry_LFNs == 0 && (p_iter->buf[0xC] & 0x18) != 0) {
            VFiPFPATH_getLongNameformShortName(p_ent->short_name, (pf_s8*)&filename, p_iter->buf[0xC]);
            lengthName = VFiPFPATH_transformInUnicode(p_ent->long_name, (pf_s8*)&filename);

            p_ent->num_entry_LFNs = (lengthName / 13) + ((lengthName % 13) != 0 ? 1 : 0);
            p_ent->check_sum = VFiPFENT_CalcCheckSum(p_ent);
            p_ent->ordinal = 1;
        }
        VFiPFENT_loadEntryNumericFieldsFromBuf(p_ent, p_iter->buf);
        p_ent->entry_sector = p_iter->sector;
        p_ent->entry_offset = p_iter->offset;
        if ((p_ent->attr & 0x10) != 0 && p_ent->start_cluster == 0) {
            p_ent->start_cluster = 1;
        }
        err = 0;
    }
    return err;
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

pf_s32 VFiPFENT_LoadLFNEntryFieldsFromBuf(PF_DIR_ENT* p_ent, const pf_u8* buf) {
    pf_u8 ordinal = buf[0];
    pf_u8 check_sum = buf[13];
    pf_bool is_last;
    pf_u8* p;
    pf_u16* q;
    pf_u16* q_after;

    if ((pf_s32)(ordinal & 0xFFFFFFBF) > 0x14) {
        p_ent->ordinal = 0;
        p_ent->check_sum = 0;
        p_ent->num_entry_LFNs = 0;
        return 33;
    }
    if ((ordinal & 0x40) != 0) {
        ordinal &= ~0x40;
        is_last = PF_TRUE;
        p_ent->num_entry_LFNs = 0;
    } else {
        is_last = PF_FALSE;
        if (p_ent->num_entry_LFNs == 0) {
            return 33;
        }
        if ((ordinal != (p_ent->ordinal - 1)) || (check_sum != p_ent->check_sum)) {
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
    if (is_last) {
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

pf_s32 VFiPFENT_findEntryPos(PF_FFD* p_ffd, PF_DIR_ENT* p_ent, pf_u32 index_search_from, PF_STR* p_pattern, pf_u8 attr_required, pf_u8 attr_unwanted,
                             pf_u32* p_lpos, pf_u32* p_ppos) {
    pf_s32 err;
    PF_ENT_ITER iter;
    pf_u32 logical_index;
    pf_bool is_extsfn = PF_FALSE;

    if (p_ffd == PF_NULL) {
        *p_ppos = *p_lpos = (1000000 - 1);
        return 10;
    }
    if (p_ent == PF_NULL) {
        *p_ppos = *p_lpos = (1000000 - 1);
        return 10;
    }
    if (index_search_from >= 0xF423FU) {
        *p_ppos = *p_lpos = (1000000 - 1);
        return 10;
    }
    if (p_pattern == PF_NULL) {
        *p_ppos = *p_lpos = (1000000 - 1);
        return 10;
    }
    if ((attr_required & attr_unwanted) != 0) {
        *p_ppos = *p_lpos = (1000000 - 1);
        return 10;
    }
    *p_ppos = *p_lpos = 0;
    p_ent->num_entry_LFNs = 0;
    p_ent->ordinal = 0;
    p_ent->check_sum = 0;
    p_ent->long_name[0] = 0;
    logical_index = 0;
    if ((VFipf_vol_set.setting & 0x02) == 0x02) {
        is_extsfn = VFiPFPATH_GetExtShortNameIndex(p_pattern, &index_search_from);
    }
    iter.ffd = *p_ffd;
    if (is_extsfn == PF_TRUE) {
        err = VFiPFENT_ITER_IteratorInitialize(&iter, index_search_from - 1);
        if (err != 0) {
            *p_ppos = *p_lpos = (1000000 - 1);
            return err;
        }
        if (VFiPFENT_getEntry(&*p_ent, &iter, p_pattern, attr_required, attr_unwanted, &logical_index) == 0) {
            *p_ppos = *p_lpos = (1000000 - 1);
            return 3;
        }
        if ((*iter.buf & 0x40) != 0) {
            err = VFiPFENT_ITER_IteratorInitialize(&iter, index_search_from);
            if (err != 0) {
                *p_ppos = *p_lpos = (1000000 - 1);
                return err;
            }
            if (VFiPFENT_getEntry(&*p_ent, &iter, p_pattern, attr_required, attr_unwanted, &logical_index) == 0) {
                p_ent->p_vol = p_ffd->p_vol;
                *p_lpos = logical_index;
                *p_ppos = iter.index;
                return 0;
            }
        }
    } else {
        for (err = VFiPFENT_ITER_IteratorInitialize(&iter, index_search_from); VFiPFENT_ITER_IsAtLogicalEnd(&iter) == 0;
             err = VFiPFENT_ITER_Advance(&iter, 0)) {
            if (err != 0) {
                *p_ppos = *p_lpos = (1000000 - 1);
                return err;
            }
            if (*iter.buf == 0) {
                break;
            }
            if (*iter.buf == 0xE5) {
                p_ent->num_entry_LFNs = 0;
                p_ent->long_name[0] = 0;
                continue;
            }
            if (VFiPFENT_getEntry(&*p_ent, &iter, p_pattern, attr_required, attr_unwanted, &logical_index) == 0) {
                p_ent->p_vol = p_ffd->p_vol;
                *p_lpos = logical_index;
                *p_ppos = iter.index;
                return 0;
            }
        }
    }
    *p_ppos = *p_lpos = (1000000 - 1);
    return 3;
}

pf_s32 VFiPFENT_findEntry(PF_FFD* p_ffd, PF_DIR_ENT* p_ent, pf_u32 index_search_from, PF_STR* p_pattern, pf_u8 attr_required, pf_u8 attr_unwanted) {
    pf_u32 logical_pos;
    pf_u32 physical_pos;

    return VFiPFENT_findEntryPos(p_ffd, p_ent, index_search_from, p_pattern, attr_required, attr_unwanted, &logical_pos, &physical_pos);
}

pf_s32 VFiPFENT_allocateEntryPos(PF_DIR_ENT* p_ent, pf_u8 num_entries, PF_FFD* p_ffd, pf_u32* p_next_chain, PF_STR* p_filename, pf_u32* p_pos) {
    pf_s32 err;
    PF_VOLUME* p_vol;
    PF_ENT_ITER iter;
    PF_DIR_ENT wk_ent;
    pf_u32 wk_sector;
    pf_u16 wk_offset;
    pf_u32 prev_sector;
    pf_u32 next_sector1;
    pf_u32 next_sector2;
    pf_bool is_found;
    pf_u32 sector;
    pf_u32 count_unused_entries;
    pf_u32 physical_index;
    pf_u32 dummy_index;

    if (p_ffd == PF_NULL) {
        return 10;
    }
    if ((PF_VOLUME*)p_ffd->p_vol == PF_NULL) {
        return 10;
    }
    if (num_entries == 0) {
        return 10;
    }
    if (num_entries > 0x15U) {
        return 10;
    }
    if ((VFipf_vol_set.setting & 0x02) == 0x02 && (VFiPFPATH_CheckExtShortNameSignature(p_filename) == 1)) {
        return 1;
    }
    p_vol = p_ffd->p_vol;
    count_unused_entries = 0;
    physical_index = 0;
    wk_sector = -1;
    wk_offset = 0;
    p_next_chain[0] = p_next_chain[1] = -1;
    next_sector1 = next_sector2 = prev_sector = -1;
    is_found = PF_FALSE;

    iter.sector = 0;
    iter.index = 0;
    iter.ffd = *p_ffd;

    for (err = VFiPFENT_ITER_IteratorInitialize((PF_ENT_ITER*)&iter, 0);; err = VFiPFENT_ITER_Advance((PF_ENT_ITER*)&iter, PF_TRUE)) {
        if (err != 0) {
            if (err != 0x10) {
                return err;
            }
            break;
        }
        if (iter.sector == -1) {
            break;
        } else {
            if (is_found == PF_FALSE && count_unused_entries == 0) {
                wk_sector = iter.sector;
                wk_offset = iter.offset;
                prev_sector = iter.sector;
            }
            if (is_found == PF_FALSE) {
                if ((iter.buf[0] == 0) || (iter.buf[0] == 0xE5)) {
                    if (prev_sector != iter.sector) {
                        if (next_sector1 == -1) {
                            next_sector1 = iter.sector;
                        } else {
                            next_sector2 = iter.sector;
                        }
                        prev_sector = iter.sector;
                    }
                    count_unused_entries++;
                } else {
                    count_unused_entries = 0;
                    next_sector1 = -1;
                    next_sector2 = -1;
                }
            }
            if (count_unused_entries >= num_entries) {
                if (is_found == PF_FALSE) {
                    physical_index = iter.index;
                    is_found = PF_TRUE;
                }
                if (iter.buf[0] == 0) {
                    break;
                }
            }

            if ((iter.buf[0] != 0) && (iter.buf[0] != 0xE5) &&
                (VFiPFENT_getEntry(&wk_ent, (PF_ENT_ITER*)&iter, p_filename, 0x7F, 0, &dummy_index) == 0)) {
                *p_ent = wk_ent;
                p_ent->p_vol = p_ffd->p_vol;
                return 8;
            }
            if ((iter.offset + 0x20) == p_vol->bpb.bytes_per_sector) {
                err = VFiPFFAT_GetSectorSpecified(p_ffd, iter.file_sector_index + 1, PF_FALSE, &sector);
                if (err != 0) {
                    return err;
                }
                if (sector != -1 || is_found != PF_TRUE) {
                    continue;
                }
                break;
            }
        }
    }

    if (is_found == PF_FALSE) {
        return 5;
    }
    p_next_chain[0] = next_sector1;
    p_next_chain[1] = next_sector2;
    p_ent->entry_sector = wk_sector;
    p_ent->entry_offset = wk_offset;
    *p_pos = physical_index;
    return 0;
}

pf_s32 VFiPFENT_allocateEntry(PF_DIR_ENT* p_ent, pf_u8 num_entries, PF_FFD* p_ffd, pf_u32* p_next_chain, PF_STR* p_filename) {
    pf_u32 position;
    return VFiPFENT_allocateEntryPos(p_ent, num_entries, p_ffd, p_next_chain, p_filename, &position);
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
            VFiPFFAT_MakeRootDir(p_vol);
            break;
        }
        case FAT_12:
        case FAT_16: {
            err = VFiPFCACHE_AllocateDataPage(p_vol, -1, &p_page);
            if (err != 0) {
                return err;
            }
            VFipf_memset(p_page->p_buf, 0, p_vol->bpb.bytes_per_sector);
            for (sector = p_vol->bpb.first_root_dir_sector; sector < p_vol->bpb.first_data_sector; sector++) {
                err = VFiPFSEC_WriteData(p_vol, p_page->p_buf, sector, 0, p_vol->bpb.bytes_per_sector, &success_size, 0);
                if (err != 0) {
                    VFiPFCACHE_FreeDataPage(p_vol, p_page);
                    return err;
                }
                if (success_size != p_vol->bpb.bytes_per_sector) {
                    VFiPFCACHE_FreeDataPage(p_vol, p_page);
                    return 17;
                }
            }

            VFiPFCACHE_FreeDataPage(p_vol, p_page);
            break;
        }
        default: {
            return 7;
        }
    }
    VFiPFVOL_LoadVolumeLabelFromBuf((pf_u8*)"NO NAME    ", p_vol);
    return 0;
}

pf_s32 VFiPFENT_updateEntry(PF_DIR_ENT* p_ent, pf_u32 flag) {
    PF_VOLUME* p_vol;
    pf_u32 success_size;
    pf_u8 buf[32];
    pf_s32 err;

    if (p_ent == PF_NULL) {
        return 10;
    }
    if ((PF_VOLUME*)p_ent->p_vol == PF_NULL) {
        return 10;
    }
    if (p_ent->entry_sector < (p_ent->p_vol->bpb.first_data_sector - p_ent->p_vol->bpb.num_root_dir_sectors)) {
        return 28;
    }
    if (p_ent->entry_sector >= p_ent->p_vol->bpb.total_sectors) {
        return 16;
    }
    p_vol = p_ent->p_vol;
    if (p_ent->start_cluster == 1) {
        return 14;
    }
    if (flag == 1) {
        p_ent->attr |= (pf_u8)32;
    }
    VFiPFENT_storeShortNameToBuf((pf_u8*)&buf, p_ent);
    VFiPFENT_StoreEntryNumericFieldsToBuf((pf_u8*)&buf, p_ent);
    err = VFiPFSEC_WriteData(p_vol, (pf_u8*)&buf, p_ent->entry_sector, p_ent->entry_offset, 0x20U, &success_size, 0);
    if (err != 0) {
        return err;
    }
    if (success_size != 0x20) {
        return 17;
    }
    return 0;
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
            err = VFiPFSEC_WriteData(p_vol, (pf_u8*)&dir_fb_free, entry_sector, entry_offset, 1, &success_size, 0);
            if (err != 0) {
                return err;
            }
            if (success_size != 1) {
                return 17;
            }
        }
    }
    err = VFiPFSEC_WriteData(p_vol, (pf_u8*)&dir_fb_free, p_ent->entry_sector, p_ent->entry_offset, 1, &success_size, 0);
    if (err != 0) {
        return err;
    }
    if (success_size != 1) {
        return 17;
    }
    err = VFiPFCACHE_FlushDataCacheSpecific(p_vol, PF_NULL);
    if (err != 0) {
        return err;
    }
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
